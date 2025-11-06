<!DOCTYPE html>
<html>
<head>
    <title>SkillScope</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/style.css">
    
</head>

<body class="dark-theme">
<button class="menu-toggle"><i class="fa fa-bars"></i></button>


<!-- Sidebar -->
<div class="sidebar">
    <h2 class="logo">SkillScope</h2>
    <a href="<%= request.getContextPath() %>/index.jsp" class="sidebar-link"><i class="fa-solid fa-house"></i> Dashboard</a>
    <a href="<%= request.getContextPath() %>/skills.jsp" class="sidebar-link"><i class="fa-solid fa-graduation-cap"></i> Explore Skills</a>
    <a href="<%= request.getContextPath() %>/events.jsp" class="sidebar-link"><i class="fa-solid fa-location-dot"></i> Nearby Events</a>
    <a href="<%= request.getContextPath() %>/login.jsp" class="sidebar-link"><i class="fa-solid fa-user"></i> Login</a>
    <a href="<%= request.getContextPath() %>/register.jsp" class="sidebar-link"><i class="fa-solid fa-user-plus"></i> Register</a>
    
</div>

<!-- Main Content -->
<div class="main-content">
    <nav class="navbar top-nav">
        <span class="navbar-brand text-light">Welcome to SkillScope</span>
    </nav>

    <div class="container mt-3">
        <form class="d-flex" role="search" id="searchForm">
            <input class="form-control me-2" type="search" placeholder="Search skills, events..." aria-label="Search" id="searchInput">
            <button class="btn btn-outline-light" type="submit">
                <i class="fa fa-search"></i>
            </button>
        </form>
    </div>
