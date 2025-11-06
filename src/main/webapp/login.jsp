<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card p-4 shadow-lg" style="width: 400px; background-color: #1a1a1a; color: white; border-radius: 15px;">
        <h3 class="text-center text-info mb-4">🔐 Login to SkillScope</h3>

        <form action="login" method="post">
            <div class="mb-3">
                <label for="email" class="form-label text-light">Email address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label text-light">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="btn btn-primary w-100 mt-3">Login</button>

            <div class="text-center mt-3">
                <p class="mb-1">Don’t have an account? 
                    <a href="<%= request.getContextPath() %>/register.jsp" class="text-info text-decoration-none">Register here</a>
                </p>
                <a href="#" class="text-secondary small">Forgot password?</a>
            </div>
        </form>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
