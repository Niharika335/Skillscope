<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>

<div class="container mt-5 text-light">
    <h1 class="mb-4">💡 Explore Skills</h1>
    <p class="lead">Discover trending skills that are shaping the future. Search and filter through various domains.</p>

    <!-- Search Bar -->
    <form id="skillSearchForm" class="mb-4">
        <div class="row">
            <div class="col-md-10">
                <input type="text" id="skillSearchInput" class="form-control" placeholder="Search skills (e.g. Java, Data Science)">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-primary w-100">Search</button>
            </div>
        </div>
    </form>

    <!-- Skill Cards -->
    <div id="skillCards" class="row g-4">
        <div class="col-md-4">
            <div class="card bg-dark text-light p-3 shadow">
                <h4>Java Programming</h4>
                <p>Object-oriented language widely used for backend, Android, and enterprise apps.</p>
                <span class="badge bg-info">Intermediate</span>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card bg-dark text-light p-3 shadow">
                <h4>Web Development</h4>
                <p>Learn HTML, CSS, and JS to build responsive websites and web applications.</p>
                <span class="badge bg-success">Beginner</span>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card bg-dark text-light p-3 shadow">
                <h4>Data Science</h4>
                <p>Analyze data and extract insights using Python, SQL, and visualization tools.</p>
                <span class="badge bg-warning">Advanced</span>
            </div>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>

<!-- Optional JS Filter (can connect to app.js later) -->
<script>
document.getElementById("skillSearchForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const query = document.getElementById("skillSearchInput").value.toLowerCase();
    const cards = document.querySelectorAll("#skillCards .card");
    cards.forEach(card => {
        const text = card.innerText.toLowerCase();
        card.parentElement.style.display = text.includes(query) ? "block" : "none";
    });
});
</script>
