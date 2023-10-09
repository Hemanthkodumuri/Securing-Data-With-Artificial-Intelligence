

<%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.commondb.Common_DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrap">


	<ul id="accordion">
            
		<li>
			<h2>san</h2>
			<div class="content">
				
			</div>
		</li>
		<li>
			<h2>sen</h2>
			<div class="content">
				
			</div>
		</li>
		<li>
			<h2>Title Three</h2>
			<div class="content">
				
			</div>
		</li>
		<li>
			<h2>Title Four</h2>
			<div class="content">
				
			</div>
		</li>
	</ul>

</div><!-- wrap -->
    </body>
    <style>
       #wrap{
			margin: 100px auto;
			width: 600px;
		}

		#accordion{
			width: 600px;
			margin: 0px;
			padding: 0px;
			list-style: none;
		}

		#accordion h2{
			font-size: 12pt;
			margin: 0px;
			padding: 10px;
			background: #ccc;
			border-bottom: 1px solid #fff;
		}
		#accordion li div.content{
			display: none;
			padding: 10px;
			background: #f9f9f9;
			border: 1px solid #ddd;
		}

		#accordion li:hover div.content{
			display: inherit;
		}
    </style>    
</html>
