<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="Ritesh Rai Chawla">

    <title>Create and Persist Programs and Help in Preparing Programs Database</title>

    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/responsive.css" rel="stylesheet">
	 <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>
	<c:if test="${success}">
	
	<h5>${success} </h5>
	
	</c:if>
	<c:if test="${failure}">
	
	<h5>${failure} </h5>
	
	</c:if>
	<section id="container">
		<h2>Create and Persist Programs and Help in Preparing Programs Database</h2>
		<form name="programsForm" id="questionForm-form" method="post" action="${contextPath}/persistPrograms">
		<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
		
		<div id="wrapping" class="clearfix">
			<section id="aligned">
			<input type="text" name="programName" id="programName" placeholder="Program Name Same As Class Name" autocomplete="off" tabindex="1" class="txtinput">
			
			<textarea name="program" id="program" placeholder="Write a Program" tabindex="10" class="txtblock"></textarea>
			
			
			
			</section>
		</div>


		<section id="buttons">
			<input type="submit" name="submit" id="submitbtn" class="submitbtn" tabindex="7" value="Persist Program">
			<br style="clear:both;">
		</section>
		
		</form>
	</section>
	
	
	
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
