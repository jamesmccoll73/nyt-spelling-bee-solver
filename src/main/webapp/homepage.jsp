<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Homepage</title>
		<link rel="stylesheet" href="homepage.css">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Libre+Franklin:ital,wght@1,700&family=Lobster&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
		<link rel="shortcut icon" type="image/png" href="https://image.ibb.co/fOur3b/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	</head>

	<body>
		<nav>
		  <div style="color: black; text-align: center; font-size: 250%; font-weight: bold;">Spelling Bee Solver</div>
		</nav>

		<br>
		<br>
		
		<div class="container-fluid">
		    <div class="row">
		        <div class="col-lg-6">
		            <img src="bee.png" class="img-fluid" style="border-radius: 25px; width: 75%; margin-left: auto; margin-right:auto; height: 300px; display: block;" Responsive image">
		            <br>
		            
		            <form action="solver" method="POST">
			            <input type="text" name="letters" id="letters" style="width:40%;">
			            <label for="letters" style="font-weight: bolder;"> Today's Spelling Bee Letters</label>
			            
			            <input type="text" name="mustUseLetter" id="mustUseLetter" style="width:40%;">
			            <label for="mustUseLetter" style="font-weight: bolder;"> Today's Must Use Letter</label>
		            
		            	<button style="background-color: #0a0a0a; color: white;" class="form-control" type="submit" name="submit" ><i class=" fa fa-search"></i></button>
		            
		            </form>
		        </div>
		        <div class="col-lg-6">
		            <%-- <%  ArrayList<String> solutions = (ArrayList<String>)request.getAttribute("solutions");
						if (solutions != null){
							out.println("<div style='color: black; text-align: center; font-size: 100%; font-weight: bold;'>Today's Words!</div>");
								for(String s: solutions){
									out.println(s);
								}
						}
					%> --%>
		            
		            
		           <%  ArrayList<String> solutions = (ArrayList<String>)request.getAttribute("solutions");
						if (solutions != null){
							out.println("<div style='color: black; text-align: center; font-size: 130%; font-weight: bolder;'>Today's Words!</div>");
							for(int i = 4; i < 11; i++)	{
								String line = "<div style='color: black; text-align: left; font-size: 100%; font-weight: bolder;'>" + i + " letters</div>";
								out.println(line);
								for(String s: solutions){
									if(s.length() == i){
										out.println(s);
									}
 								} 
							}
						}
					%> 
		        </div>
		    </div>
		</div>
		
		
		
		
	</body>


	</html>
