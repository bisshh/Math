<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Area of a triangle when the base and the height of the triangle area given assuming that the triangle is a right angled triangle - Math Assignment</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->

</head>
<body>
<%
//variable declaration
double b, h, area;
area = 0;
if(request.getParameter("submit")!=null)
{
	b = Double.parseDouble(request.getParameter("base"));
	h = Double.parseDouble(request.getParameter("height"));
	
	area = (b * h) / 2;
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
                    <p class="navbar-brand">Program to calculate Area of a triangle when the base and the height of the triangle area given assuming that the triangle is a right angled triangle</p>
                </div>
            </div>
        </nav>
				
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Side of Triangle in terms of base, height and right angle triangle</h4>
                            </div>
                            <div class="content">
                                <form class="form-horizontal" method="post">
									<div class="form-group">
									    <label class="control-label col-sm-4" for="base">Input base of triangle (B) :</label>
									    <div class="col-sm-8">
									      <input name="base" type="number" id="base" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("base") != "")%> <%= request.getParameter("base") %>">
									  </div>
									</div>
									<div class="form-group">
									    <label class="control-label col-sm-4" for="height">Input height of triangle (H) :</label>
									    <div class="col-sm-8">
									      <input name="height" type="number" id="height" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("height") != "")%> <%= request.getParameter("height") %>">
									  </div>
									</div>
									<div class="col-sm-offset-4">
                                        <button type="submit" name="submit" class="btn btn-danger btn-fill btn-wd">Calculate</button>
                                    </div>
									<div class="alert alert-info alert-with-icon" style="padding-left:15px;" data-notify="container">
                                        <span data-notify="message">
											<!-- Output Result -->
											<strong style="margin-bottom: 10px; display: block;">Result:</strong>
											<%
												out.println("Area of Triangle is = " + area);
											%>
										</span>
                                    </div>
                                    <div class="clearfix"></div>
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