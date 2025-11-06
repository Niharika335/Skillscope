<%@ page import="org.json.JSONArray"%>
<%@ page import="org.json.JSONObject"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nearby Events</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

<div class="container mt-4">
    <h2 class="mb-3">Nearby Events</h2>

    <form method="get" action="getEvents" class="row g-2 mb-4">
        <div class="col-md-4">
            <input type="text" name="city" class="form-control" placeholder="Enter city (e.g., Bangalore)">
        </div>
        <div class="col-md-4">
            <input type="text" name="category" class="form-control" placeholder="Search event type (e.g., Tech)">
        </div>
        <div class="col-md-4">
            <button class="btn btn-primary w-100">Search</button>
        </div>
    </form>

    <%
        JSONArray events = (JSONArray) request.getAttribute("events");
        if (events == null || events.length() == 0) {
    %>
        <div class="alert alert-warning text-dark">⚠️ No events found. Try another search.</div>
    <%
        } else {
    %>

    <div class="row">
        <%  for (int i = 0; i < events.length(); i++) {
                JSONObject e = events.getJSONObject(i);
                String name = "";
                String startTime = "";
                String url = "";

                // ✅ Safe extraction (handle nested JSON)
                if (e.has("name") && e.get("name") instanceof JSONObject) {
                    name = e.getJSONObject("name").optString("text", "Untitled Event");
                } else {
                    name = e.optString("name", "Untitled Event");
                }

                if (e.has("start") && e.get("start") instanceof JSONObject) {
                    startTime = e.getJSONObject("start").optString("local", "N/A");
                } else {
                    startTime = e.optString("start_time", "N/A");
                }

                url = e.optString("url", "#");
        %>
        <div class="col-md-4 mb-3">
            <div class="card p-3 h-100 text-dark">
                <h5><%= name %></h5>
                <p><strong>Date:</strong> <%= startTime %></p>
                <a href="<%= url %>" target="_blank" class="btn btn-success">View Event</a>
            </div>
        </div>
        <% } %>
    </div>

    <% } %>

</div>

</body>
</html>
