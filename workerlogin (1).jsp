<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title> Worker Login Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css">
</head>
<body style="background-image: url(https://sika.scene7.com/is/image/sika/glo-car-parking-garage-floor-03?wid=1280&crop=0%2C114%2C3840%2C2443); background-size: 1275px;">
	<div>
		<div>
			<div >
				<div >
						<h4><a href="index.jsp">Car Parking Solutions</a></h4>
					
				</div>
				<div class="login-form">
					<p>
						<%
							String message = (String) session.getAttribute("message");
							if (message != null) {
								session.removeAttribute("message");
						%>
					
					<h6>
						Invalid credential, try again.
					</h6>
					<%
						}
					%>
					</p>
					<form action="UserLogin" method="post">
						<div class="form-group">
							<label>Worker Name</label> <input class="form-control" type="text" placeholder="Workername" required name="workername">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password" class="form-control" name="password" placeholder="Password" required>
						</div>
						<div>
							<label><a href="forgot-password.jsp">Forgot Password</a></label> 
							<label><a href="worker-register.jsp">Click Here To Register</a></label>
						</div>
						<button type="submit" name="login" class="btn btn-warning">Sign in</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script	src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>