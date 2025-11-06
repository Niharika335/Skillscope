package com.skillscope.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;

public class EventServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String city = request.getParameter("city");
        String category = request.getParameter("category");

        // Normalize input
        if (city != null) city = city.trim().toLowerCase();
        if (category != null) category = category.trim().toLowerCase();

      
        String[][] data = {
            {"Tech Fest 2025", "Bangalore", "2025-12-20", "Technology"},
            {"Startup Meetup", "Hyderabad", "2025-11-25", "Business"},
            {"AI & Data Science Summit", "Pune", "2025-12-10", "Technology"},
            {"Design Thinking Workshop", "Mumbai", "2025-12-05", "Design"},
            {"Cybersecurity Conference", "Delhi", "2025-12-18", "Security"},
            {"Blockchain Expo", "Chennai", "2025-12-22", "Technology"},
            {"Green Energy Fair", "Ahmedabad", "2025-12-12", "Environment"},
            {"Digital Marketing Bootcamp", "Kolkata", "2025-12-08", "Marketing"},
            {"Healthcare Tech Expo", "Delhi", "2025-11-30", "Health"},
            {"Hackathon 2025", "Pune", "2025-12-28", "Coding"},
            {"E-Commerce Innovation Forum", "Mumbai", "2025-12-15", "Business"},
            {"Women in Tech Meetup", "Bangalore", "2025-12-07", "Diversity"},
            {"Sustainability Summit", "Chennai", "2025-12-25", "Environment"},
            {"Game Developers Conference", "Hyderabad", "2025-12-03", "Gaming"},
            {"Cloud Computing Seminar", "Delhi", "2025-11-28", "Technology"},
            {"FinTech Innovation Week", "Kolkata", "2025-12-10", "Finance"},
            {"AR/VR Tech Show", "Bangalore", "2025-12-16", "Technology"},
            {"Music & AI Festival", "Pune", "2025-12-18", "Entertainment"},
            {"EduTech Conference", "Chennai", "2025-12-19", "Education"},
            {"Startup Funding Pitch Night", "Hyderabad", "2025-12-21", "Business"}
        };

        JSONArray eventsArray = new JSONArray();

       
        for (String[] e : data) {
            boolean matchesCity = (city == null || city.isEmpty() || e[1].toLowerCase().contains(city));
            boolean matchesCategory = (category == null || category.isEmpty() || e[3].toLowerCase().contains(category));

            if (matchesCity && matchesCategory) {
                JSONObject obj = new JSONObject();
                obj.put("name", e[0]);
                obj.put("location", e[1]);
                obj.put("date", e[2]);
                obj.put("category", e[3]);
                obj.put("url", "#"); // placeholder
                eventsArray.put(obj);
            }
        }

        // ✅ Send filtered (or all) events to JSP
        request.setAttribute("events", eventsArray);
        request.getRequestDispatcher("events.jsp").forward(request, response);
    }
}
