<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/header.jsp" %>

<div class="d-flex justify-content-center align-items-center vh-100">
    <div class="card p-5 shadow-lg bg-dark text-light" style="width: 400px; border-radius: 15px;">
        <h2 class="text-center mb-4">📝 Register</h2>
        
        <form action="register" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" class="form-control bg-dark text-light border-secondary" id="name" name="name" placeholder="Enter your full name" required>
            </div>
            
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control bg-dark text-light border-secondary" id="email" name="email" placeholder="Enter your email" required>
            </div>
            
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control bg-dark text-light border-secondary" id="password" name="password" placeholder="Create password" required>
            </div>
            
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" class="form-control bg-dark text-light border-secondary" id="confirmPassword" name="confirmPassword" placeholder="Re-enter password" required>
            </div>
            
            <button type="submit" class="btn btn-neon w-100">Register</button>
        </form>

        <div class="text-center mt-3">
            <small>Already have an account? <a href="login.jsp" class="text-info">Login here</a></small>
        </div>
    </div>
</div>

<%@ include file="/include/footer.jsp" %>
