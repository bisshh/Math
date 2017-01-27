<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quadratic Equation - Math Assignment</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->

</head>
<body>
<%
//variable declaration
double x, y, a1, b1, c1, x1, x2, determinate;

determinate = 0;
x1 = 0;
x2 = 0;

if(request.getParameter("submit")!=null)
{
	a1 = Double.parseDouble(request.getParameter("a"));
	b1 = Double.parseDouble(request.getParameter("b"));
	c1 = Double.parseDouble(request.getParameter("c"));
			
	if (a1 == 0)
    {
        out.print("This in not a quadratic equ, Please enter factors.");
    }
	determinate = (b1 * b1) - (4 * a1 * c1);
	if (determinate >= 0 || a1 != 0 && b1 != 0 && c1 != 0)
    {
        x1 = (-b1 + Math.sqrt(determinate)) / 2 / a1;
        x2 = (-b1 - Math.sqrt(determinate)) / 2 / a1;
    }			
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
                    <p class="navbar-brand">Quadratic Equation</p>
                </div>
            </div>
        </nav>
				
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Co-effiecient of equation in terms of a, b, c</h4>
                            </div>
                            <div class="content">
                                <form method="post">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="a" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("a") != "")%> <%= request.getParameter("a") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">x<sup>2</sup> +</span>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <input name="b" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("b") != "")%> <%= request.getParameter("b") %>">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                       		<span class="in-value">x +</span>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input name="c" type="number" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("c") != "")%> <%= request.getParameter("c") %>">
                                            </div>
                                        </div>
                                    </div>
                                    									
                                    <div class="alert alert-info alert-with-icon" style="padding-left:15px;" data-notify="container">
                                        <span data-notify="message">
											<!-- Output Result -->
											<strong style="margin-bottom: 10px; display: block;">Result:</strong>
											<%
												out.println("Determinate = " + determinate);
											%>
											<br>
											<%
												out.println("First value of x = " + x1);
											%>
											<br>
											<%
												out.println("Second value of x = " + x2);
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