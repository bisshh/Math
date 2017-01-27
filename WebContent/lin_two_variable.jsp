<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Linear equation with two variables - Math Assignment</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->

</head>
<body>
<%
//variable declaration
double x, y, a1, a2, b1, b2, c1, c2, x1, x2, temp_a1, temp_a2, temp_b1, temp_b2, temp_c1, temp_c2;

x = 0;
y = 0;

if(request.getParameter("submit")!=null)
{
	a1 = Double.parseDouble(request.getParameter("x1"));
	b1 = Double.parseDouble(request.getParameter("y1"));
	a2 = Double.parseDouble(request.getParameter("x2"));
	b2 = Double.parseDouble(request.getParameter("y2"));
	c1 = Double.parseDouble(request.getParameter("result1"));
	c2 = Double.parseDouble(request.getParameter("result2"));
			
	if(Math.abs(a1-a2) > a1)
	{
		temp_a1 = -a2*a1;
		temp_b1 = -a2*b1;
		temp_c1 = -a2*c1;
	}
	else
	{
		temp_a1 = a2*a1;
		temp_b1 = a2*b1;
		temp_c1 = a2*c1;
	}
	
	temp_a2 = (-a1)*a2;
	temp_b2 = (-a1)*b2;
	temp_c2 = (-a1)*c2;
	
	y = (temp_c1 + temp_c2)/(temp_b1 + temp_b2);
	x = (c1 - (b1 * y))/a1;			
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
                    <p class="navbar-brand">Linear Equation with two variables</p>
                </div>
            </div>
        </nav>
				
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Calculate 2 variables</h4>
                            </div>
                            <div class="content">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="x1" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("x1") != "")%> <%= request.getParameter("x1") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">x +</span>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="y1" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("y1") != "")%> <%= request.getParameter("y1") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">y =</span>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input name="result1" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("result1") != "")%> <%= request.getParameter("result1") %>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="x2" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("x2") != "")%> <%= request.getParameter("x2") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">x +</span>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="y2" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("y2") != "")%> <%= request.getParameter("y2") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">y =</span>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input name="result2" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("result2") != "")%> <%= request.getParameter("result2") %>">
                                            </div>
                                        </div>
                                    </div>
									
                                    <div class="alert alert-info alert-with-icon" style="padding-left:15px;" data-notify="container">
                                        <span data-notify="message">
											<!-- Output Result -->
											<strong style="margin-bottom: 10px; display: block;">Result:</strong>
											<%
												out.println("X = " + x);
											%>
											<br>
											<%
												out.println("Y = " + y);
											%>
										</span>
                                    </div>
                                    
                                    <div>
                                        <button type="submit" name="submit" class="btn btn-danger btn-fill btn-wd">Calculate</button>
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