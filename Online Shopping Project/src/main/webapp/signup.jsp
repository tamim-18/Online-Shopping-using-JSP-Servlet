<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
    <div id='container'>
        <div class='signup'>
            <form action="SignUpAction.jsp" method="post">
                <input type="text" name="name" placeholder="Enter Name"
                    required> <input type="email" name="email"
                    placeholder="Enter Email" required> <input
                    type="number" name="mobilenumber"
                    placeholder="Enter Mobile Number" required>
                <select name="securityQuestion">
                    <option value="What was your fist car?">What
                        was your first car?</option>
                    <option value="What was your fist pet?">What
                        was your first pet?</option>
                    <option value="What was your fist laptop?">What
                        was your fist laptop?</option>
                    <option value="What was your fist town">What
                        was your fist town?</option>

                </select> <input type="text" name="answer"
                    placeholder="Enter Answer" required> <input
                    type="password" name="password"
                    placeholder="Enter Password" required> <input
                    type="submit" value="signup">
            </form>

            <h2>
                <a href="login.jsp">Login</a>
            </h2>
        </div>
        <div class='whysign'>
            <%
            String msg = request.getParameter("msg");
            if ("valid".equals(msg)) {
            %>
            <h1
                style="animation: moveText 5s linear infinite; font-family: Arial, sans-serif; font-size: 24px; font-weight: bold; color: #ff00ff;">
                Successfully Updated</h1>
            <%
            }
            %>
            <%
            if ("invalid".equals(msg)) {
            %>
            <h1>Something Went Wrong! Try again</h1>
            <%
            }
            %>

            <h2>Online Shopping</h2>
            <p
                style="animation: moveText 5s linear infinite; font-family: 'Helvetica Neue', Arial, sans-serif; font-size: 18px; font-weight: bold; color: #337ab7; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);">
                The Online Shopping System is the application that
                allows the users to shop online without going to the
                shops to buy them.</p>

        </div>
    </div>

</body>
</html>
