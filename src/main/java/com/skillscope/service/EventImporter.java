package com.skillscope.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;

import org.json.JSONArray;
import org.json.JSONObject;

import com.skillscope.dao.DBConnection;

public class EventImporter {

    private static final String API_URL = "https://www.eventbriteapi.com/v3/events/search/?q=music&location.address=india&sort_by=date";
    private static final String TOKEN = "UWUVUGTTX6QXHN3G5C7J"; // remove extra space

    public static void main(String[] args) {
        importEventsFromEventbrite();
    }

    public static void importEventsFromEventbrite() {
        try {
            System.out.println("📡 Fetching events from Eventbrite API...");

            // Step 1: Make API Request
            URL url = new URL(API_URL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + TOKEN);

            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            JSONObject json = new JSONObject(response.toString());
            JSONArray events = json.getJSONArray("events");

            System.out.println("✅ Retrieved " + events.length() + " events from Eventbrite");

            // Step 2: Insert into MySQL
            try (Connection db = DBConnection.getConnection()) {
                String sql = "INSERT INTO events (eventbrite_id, title, description, start_time, end_time, url, venue) "
                           + "VALUES (?, ?, ?, ?, ?, ?, ?) "
                           + "ON DUPLICATE KEY UPDATE "
                           + "title = VALUES(title), "
                           + "description = VALUES(description), "
                           + "start_time = VALUES(start_time), "
                           + "end_time = VALUES(end_time), "
                           + "url = VALUES(url), "
                           + "venue = VALUES(venue)";

                PreparedStatement stmt = db.prepareStatement(sql);

                for (int i = 0; i < events.length(); i++) {
                    JSONObject e = events.getJSONObject(i);
                    String eventbriteId = e.getString("id");
                    String title = e.getJSONObject("name").optString("text", "Untitled");
                    String description = e.has("description") ? e.getJSONObject("description").optString("text", "") : "";
                    String startTime = e.getJSONObject("start").getString("local");
                    String endTime = e.getJSONObject("end").getString("local");
                    String eventUrl = e.getString("url");

                    stmt.setString(1, eventbriteId);
                    stmt.setString(2, title);
                    stmt.setString(3, description);
                    stmt.setString(4, startTime);
                    stmt.setString(5, endTime);
                    stmt.setString(6, eventUrl);
                    stmt.setString(7, "Unknown Venue");

                    stmt.addBatch();
                }

                stmt.executeBatch();
                System.out.println("✅ Events inserted/updated in MySQL successfully!");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

