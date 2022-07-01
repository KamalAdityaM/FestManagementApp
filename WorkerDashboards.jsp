<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html>
<head>
<title>Worker Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<%
		if (session.getAttribute("wname") != null && session.getAttribute("wname") != "") {
	%>
	<jsp:include page="includes/worker-sidebar.jsp"></jsp:include>
	<jsp:include page="includes/worker-header.jsp"></jsp:include>
	<!-- Content -->
	<div class="content">
		<!-- Animated -->
		<div class="animated fadeIn">
			<!-- Widgets  -->
			<div class="row">

				<div class="col-lg-3">
					<%
						int count = 0;
							Connection con = DatabaseConnection.getConnection();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select count(*) from vehicleTable where status=''");
							while (rs.next()) {
								count = rs.getInt(1);
							}
					%>
					<div class="">
						<div class="">
							<div class="">
								<div class="">
									<i class="pe-7s-car"></i>
								</div>
								<div class="">
									<div class="">
										<div class="">
											<span class="count"> <%=count%>
											</span>
										</div>
                      <div class="">My Schedule</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<%
						int slot_capacity = 0;
							Statement statement = con.createStatement();
							ResultSet resultset = statement.executeQuery("select * from seatCapacity");
							while (resultset.next()) {
								slot_capacity = resultset.getInt(1);
							}
					%>
					<div class="">
						<div class="">
							<div class="">
								<div class="">
									<i class="pe-7s-car"></i>
								</div>
								<div class="">
									<div class="">
										<div class="">
											<span class="count"> <%=slot_capacity%>
											</span>
										</div>
										<div class="">Provide a Service</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Widgets -->
			</div>
			<!-- .animated -->
		</div>
		<!-- /.content -->
		<div class="clearfix">View My Rating</div>
		<!-- Footer -->
		<jsp:include page="includes/footer.jsp"></jsp:include>

		<%
			} else {
				response.sendRedirect("worker-login.jsp");
			}
		%>
	
</body>
</html>