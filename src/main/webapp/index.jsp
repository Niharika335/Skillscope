<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>

<div class="container mt-5 text-light">
    <h1 class="mb-4">📊 DashBoard</h1>
    <p class="lead">
        Welcome to <strong>SkillScope</strong> — your personalized skill & event discovery platform.
        Use the SideBar to explore skills, find nearby events, or log in to manage your profile.
    </p>

    <div class="row mt-4">
        <div class="col-md-6">
            <div class="card p-4 bg-dark text-light shadow rounded">
                <h4>🧠 Explore Skills</h4>
                <p>Find trending skills and learn what's in demand.</p>
                <a href="skills.jsp" class="btn btn-neon">Explore</a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card p-4 bg-dark text-light shadow rounded">
                <h4>🎯 Find Events</h4>
                <p>Search for Hackathons, seminars, and other events near you.</p>
               <a href="<%= request.getContextPath() %>/events" class="btn btn-neon">Discover</a>

            </div>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
