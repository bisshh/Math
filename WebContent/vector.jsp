<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vector - Math Assignment</title>
<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->
</head>
<body>
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
                    <p class="navbar-brand">Vector</p>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-7">
                        <div class="content">
                            <div class="container-fluid">
                            	<div class="row">
                                    <div class="col-sm-4">
                                        <a href="vector_dot_product.jsp">
                                        <div class="card">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="icon-big icon-warning text-center">
                                                            <i class="ti-vector"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-9">
                                                        <div class="numbers">
                                                            <p>dot product of</p>
                                                            two vectors
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer">
                                                    <hr>
                                                    <div class="stats">
                                                        <div class="row">
                                                        	<div class="col-xs-4">
                                                        		<strong>Example:</strong>
                                                        	</div>
                                                        	<div class="col-xs-8">
                                                            	2x + y = 15<br>
                                                        		x + 5y = 5
                                                            </div>
                                                    	</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-4">
                                        <a href="vector_addition.jsp">
                                        <div class="card">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="icon-big icon-warning text-center">
                                                            <i class="ti-vector"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-9">
                                                        <div class="numbers">
                                                            <p>two vectors in x,y,z coordinates</p>
                                                           Addition vector
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer">
                                                    <hr>
                                                    <div class="stats">
                                                    	<div class="row">
                                                        	<div class="col-xs-4">
                                                        		<strong>Example:</strong>
                                                        	</div>
                                                        	<div class="col-xs-8">
                                                            	2x + y + 3z = 10<br>
                                                                5x + 2y + 2z = 5<br>
                                                                x + 5y + z = 0
                                                            </div>
                                                    	</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-4">
                                        <a href="vector_substraction.jsp">
                                        <div class="card">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="icon-big icon-warning text-center">
                                                            <i class="ti-vector"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-9">
                                                        <div class="numbers">
                                                            <p>two vectors in x,y,z coordinates</p>
                                                           Substraction vector
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer">
                                                    <hr>
                                                    <div class="stats">
                                                        <div class="row">
                                                        	<div class="col-xs-4">
                                                        		<strong>Example:</strong>
                                                        	</div>
                                                        	<div class="col-xs-8">
                                                            	f (x) = ax<sup>2</sup> + bx + c
                                                            </div>
                                                    	</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-sm-4">
                                        <a href="vector_multiplication.jsp">
                                        <div class="card">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="icon-big icon-warning text-center">
                                                            <i class="ti-vector"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-9">
                                                        <div class="numbers">
                                                            <p>two vectors in x,y,z coordinates</p>
                                                           Multiplication vector
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer">
                                                    <hr>
                                                    <div class="stats">
                                                        <div class="row">
                                                        	<div class="col-xs-4">
                                                        		<strong>Example:</strong>
                                                        	</div>
                                                        	<div class="col-xs-8">
                                                            	f (x) = ax<sup>2</sup> + bx + c
                                                            </div>
                                                    	</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-4">
                                        <a href="vector_scalar_multiplication.jsp">
                                        <div class="card">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="icon-big icon-warning text-center">
                                                            <i class="ti-vector"></i>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-9">
                                                        <div class="numbers">
                                                            <p>Coefficient of the vector</p>
                                                           Scalar Multiplication vector
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer">
                                                    <hr>
                                                    <div class="stats">
                                                        <div class="row">
                                                        	<div class="col-xs-4">
                                                        		<strong>Example:</strong>
                                                        	</div>
                                                        	<div class="col-xs-8">
                                                            	f (x) = ax<sup>2</sup> + bx + c
                                                            </div>
                                                    	</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                    			</div>
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