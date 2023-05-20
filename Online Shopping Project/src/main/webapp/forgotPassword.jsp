<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion">
  <option value="What was your fist car?">What was your first car?</option>
  <option value="What was your fist pet?">What was your first pet?</option>
  <option value="What was your fist laptop?">What was your fist laptop?</option>
  <option value="What was your fist town">What was your fist town?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer">
  <input type="password" name="newPassword" placeholder="Enter New Password" required>
  <input type="submit" value="save">
  </form>
  
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <% 
     String msg = request.getParameter("msg");
     if ("done".equals(msg)) { 
  %>
   <h1>Password Changed Successfully!</h1>
  <% } %>
  <% 
     if ("invalid".equals(msg)) {
  %>
    <h1>Something Went Wrong! Try again</h1>
  <% } %>
   
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>