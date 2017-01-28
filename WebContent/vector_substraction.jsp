<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Substraction of two vectors in x,y,z coordinates - Math Assignment</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->

</head>
<body>
<%
//variable declaration
double ai, aj, ak, bi, bj, bk, vectorX, vectorY, vectorZ;
vectorX = 0;
vectorY = 0;
vectorZ = 0;

if(request.getParameter("submit")!=null)
{
	ai = Double.parseDouble(request.getParameter("x1"));
	aj = Double.parseDouble(request.getParameter("x2"));
	
	bi = Double.parseDouble(request.getParameter("y1"));
	bj = Double.parseDouble(request.getParameter("y2"));
	
	ak = Double.parseDouble(request.getParameter("z1"));
	bk = Double.parseDouble(request.getParameter("z2"));
		
	vectorX = ai + (-bi);
	vectorY = aj + (-bj);
	vectorZ = ak + (-bk);
}
%>

<div class="wrapper">
	<jsp:include page="lib/include/sidebar.jsp" /> <!-- /Sidebar -->

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <p class="navbar-brand">Program to calculate Substraction of two vectors in x, y, z coordinates</p>
                </div>
            </div>
        </nav>
				
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Calculate the substraction of two vectors in x, y, z coordinates</h4>
                            </div>
                            <div class="content">
                                <form class="form-horizontal" method="post">
									<div class="row">
										<div class="col-md-6 text-center">
										    <h4>Vector A</h4>
											<div class="form-group">
											  <label for="x1" class="col-sm-2 control-label">x = </label>
											  <div class="col-sm-10">
											    <input name="x1" type="number" for="x1" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("x1") != "")%> <%= request.getParameter("x1") %>">
											  </div>
											</div>
											<div class="form-group">
											  <label for="y1" class="col-sm-2 control-label">y = </label>
											  <div class="col-sm-10">
											    <input name="y1" type="number" for="y1" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("y1") != "")%> <%= request.getParameter("y1") %>">
											  </div>
											</div>
											<div class="form-group">
											  <label for="z1" class="col-sm-2 control-label">z = </label>
											  <div class="col-sm-10">
											    <input name="z1" type="number" for="z1" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("z1") != "")%> <%= request.getParameter("z1") %>">
											  </div>
											</div>
										</div>
										<div class="col-md-6 text-center">
										    <h4>Vector B</h4>
											<div class="form-group">
											  <label for="x2" class="col-sm-2 control-label">x = </label>
											  <div class="col-sm-10">
											    <input name="x2" type="number" for="x2" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("x2") != "")%> <%= request.getParameter("x2") %>">
											  </div>
											</div>
											<div class="form-group">
											  <label for="y2" class="col-sm-2 control-label">y = </label>
											  <div class="col-sm-10">
											    <input name="y2" type="number" for="y2" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("y2") != "")%> <%= request.getParameter("y2") %>">
											  </div>
											</div>
											<div class="form-group">
											  <label for="z2" class="col-sm-2 control-label">z = </label>
											  <div class="col-sm-10">
											    <input name="z2" type="number" for="z2" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("z2") != "")%> <%= request.getParameter("z2") %>">
											  </div>
											</div>
										</div>
										<div class="col-md-12 text-center">
											<div class="form-group">
												<button type="submit" name="submit" class="btn btn-danger btn-fill btn-wd">Calculate</button>
											</div>
										</div>
									</div>	
									<div class="alert alert-info alert-with-icon" style="padding-left:15px;" data-notify="container">
                                        <span data-notify="message">
											<!-- Output Result -->
											<strong style="margin-bottom: 10px; display: block;">Result:</strong>
											<%
												out.println("Substraction of two vectors = (" + vectorX + ") , (" + vectorY + ") , (" + vectorZ + ")");
											%>
										</span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="assets/img/2var.gif" alt="..."/>
                            </div>
                            <div class="content">
                                <p class="description text-center">
                                    Learn about a class of equations in two variables that's called "linear equations." They are called that way because their graph is a line. These are the most basic and probably most useful equations you will ever know!
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br /><small>Files</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>2GB<br /><small>Used</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>24,6$<br /><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Choose the linear</h4>
                            </div>
                            <div class="content">
                               	<ul class="list-unstyled team-members">
                                    <li class="col-xs-12">
                                        <a href="two_variable.html">Two variables
                                        <br />
                                        <span class="text-muted"><small>Linear equation in two variables.</small></span></a>
                                    </li>
                                    <li class="col-xs-12">
                                        <a href="#">Three variables
                                        <br />
                                        <span class="text-muted"><small>Linear equation in three variables.</small></span></a>
                                    </li>
                                    <li class="col-xs-12">
                                        <a href="#">Quadratic
                                        <br />
                                        <span class="text-muted"><small>Quadratic equations involving real roots</small></span></a>
                                    </li>
                                    <div class="clearfix"></div>
                            	</ul>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="lib/include/footer.jsp" /> <!-- include -->
    </div>
</div>


</body>

<jsp:include page="lib/include/js.jsp" /> <!-- java script -->
</html>