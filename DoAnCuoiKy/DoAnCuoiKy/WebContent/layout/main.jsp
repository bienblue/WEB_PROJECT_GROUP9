<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

header {
	
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

aside {
	float: left;
	width: 16%;
	border: 1px solid lightgrey;
	height:100vh;
	min-height: 500px;
	background-color: rgb(242, 242, 242);
}

section {
	float: left;
	width: 80%;
	/* border: 1px solid lightgrey; */
	padding: 10px; 
	min-height: 573px;
}

@media screen and (max-width: 500px) {
    aside {
    	width: 100%;
    }
    section {
    	width: 100%;
    }
}


</style>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	
	<div class="row">
		<aside>
			<tiles:insertAttribute name="menu" />
		</aside>
		<div><tiles:insertAttribute name="CRUD" /></div>
		<section>
			<tiles:insertAttribute name="body" />
		</section>
	</div>

</body>
</html>