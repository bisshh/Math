<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Substract Matrix - Math Assignment</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<jsp:include page="lib/include/head-top.jsp" /> <!-- /head top -->

</head>
<body>
<script>
    function createMatrix() {
        var row = document.getElementById('row').value;
        var col = document.getElementById('col').value;
        var i , j , m , n;
        if (row == '') {
            alert('Please enter the number of Rows!');
            return false;
        }
        if (col == '') {
            alert('Please enter number of Columns');
            return false;
        }

        var Amatrix = new Array();

        var htmlA = 'Enter the A matrix :';
        htmlA += '<div>';

        for (i = 0; i < row; i++) {
        	Amatrix[i] = new Array();

            htmlA += '<tr>';
            for (j = 0; j < col; j++) {
                htmlA += '<td>';
                htmlA += '<input type="text" name="matrixA[' + i + '][' + j + ']">';
                htmlA += '</td>';
            }
            htmlA += '</tr>';
        }
        htmlA += '</table>';
        document.getElementById('matrixA').innerHTML = htmlA;

        var Bmatrix = new Array();
        var htmlB = 'Enter the B matrix :';
        htmlB += '<table>';
        for (i = 0; i < row; i++) {
        	Bmatrix[i] = new Array();
            htmlB += '<tr>';
            for (j = 0; j < col; j++) {
                htmlB += '<td>';
                htmlB += '<input type="text" name="matrixB[' + i + '][' + j + ']">';
                htmlB += '</td>';
            }
            htmlB += '</tr>';
        }
        htmlB += '</table>';
        document.getElementById('matrixB').innerHTML = htmlB;
    }

    function checkMatrix() {
        var row = document.getElementById('row').value;
        var col = document.getElementById('col').value;

        if (row == '' || col == '') {
            alert('Please Create Matrix First!');
            return false;
        }
        else {
            return true;
        }
    }
</script>

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
                    <p class="navbar-brand">Program to check if given two matrices are identical</p>
                </div>
            </div>
        </nav>
				
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Check if given two matrices are identical</h4>
                            </div>
                            <div class="content">
                                <form class="form-horizontal" name="form1" method="post" onsubmit="return checkMatrix()">
									<div class="form-group">
									    <label class="control-label col-sm-3" for="row">Number of Rows:</label>
									    <div class="col-sm-3">
									      <input name="row" type="number" id="row" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("row") != "")%> <%= request.getParameter("row") %>">
									  	</div>
									    <label class="control-label col-sm-3" for="col">Number of Columns:</label>
									    <div class="col-sm-3">
									      <input name="col" type="number" id="col" step="any" class="form-control border-input" placeholder="<% if(request.getParameter("col") != "")%> <%= request.getParameter("col") %>">
									 	</div>
									</div>
									<div class="col-md-12 form-group text-center">
                                        <button type="button" name="create" class="btn btn-primary btn-fill btn-wd" onclick="createMatrix()">Create Matrix</button>
                                    </div>
                                    <div class="clearfix"></div>
									<hr>
									<div id="matrixA"></div>
            						<div id="matrixB"></div>
            						
									<input type="submit" name="submit" value="submit" class="btn btn-warning btn-fill btn-wd" >
									
									<hr>
									<div class="alert alert-info alert-with-icon" style="padding-left:15px;" data-notify="container">
                                        <span data-notify="message">
											<!-- Output Result -->
											<strong style="margin-bottom: 10px; display: block;">Result:</strong>
											<%
											//variable declaration
											int row, col;
											
											if(request.getParameter("submit") != null)
											{
												row = Integer.valueOf(request.getParameter("row"));
												col = Integer.valueOf(request.getParameter("col"));
												int Amatrix [][] = Integer.valueOf(request.getParameter("matrixA[' + i + '][' + j + ']"));
												int Bmatrix [][] = Integer.valueOf(request.getParameter("matrixB[' + i + '][' + j + ']"));
												int matrixC[][] = new int[2][2];
												int i, j;												
									            for (int m = 0; m < matrixC.length; m++) {
									                for (int n = 0; n < matrixC.length; n++) {
									                    matrixC[m][n] = Amatrix[i][j] - Bmatrix[i][j];
									                	out.print(matrixC[m][n] + " ");		
									    			}
									    			out.println();
									            }
											}
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