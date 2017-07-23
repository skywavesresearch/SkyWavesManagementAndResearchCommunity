<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<! DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="Ritesh Rai Chawla">

    <title>Create and Persist Words and Help in Preparing Words List</title>

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
		<h2>Create and Persist Words and Prepare Words List Interface</h2>
		<form name="questionForm" id="questionForm-form" method="post" action="${contextPath}/persistWords">
		<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
		
		<div id="wrapping" class="clearfix">
			<section id="aligned">
			
			<input type="text" name="word" id="word" placeholder="Word" autocomplete="off" tabindex="1" class="txtinput">
			
			<input type="text" name="meaining1" id="meaining1" placeholder="Meaning I" autocomplete="off" tabindex="1" class="txtinput">
			
			<input type="text" name="meaining2" id="meaining2" placeholder="Meaning II" autocomplete="off" tabindex="1" class="txtinput">
			
			<input type="text" name="meaining3" id="meaining3" placeholder="Meaning III" autocomplete="off" tabindex="1" class="txtinput">
			
			
			
			<textarea name="sentenceUsage1" id="sentenceUsage1" placeholder="Sentence Usage I" tabindex="5" class="txtblock"></textarea>
			
			<textarea name="sentenceUsage2" id="sentenceUsage2" placeholder="Sentence Usage II" tabindex="5" class="txtblock"></textarea>
			
			<textarea name="sentenceUsage3" id="sentenceUsage3" placeholder="Sentence Usage III" tabindex="5" class="txtblock"></textarea>
			
			
			
			
			</section>
			<section id="aside" class="clearfix">
				<section id="synonymscase">
				<h3>Synonyms:</h3>
					<input type="text" name="synonym1" id="synonym1" placeholder="Synonym I" autocomplete="off" tabindex="1" class="txtinput">
		
					<input type="text" name="synonym2" id="synonym2" placeholder="Synonym II" autocomplete="off" tabindex="1" class="txtinput">
				
					<input type="text" name="synonym3" id="synonym3" placeholder="Synonym III" autocomplete="off" tabindex="1" class="txtinput">
				
					<input type="text" name="synonym4" id="synonym4" placeholder="Synonym IV" autocomplete="off" tabindex="1" class="txtinput">
				
					
				</section>
				<section id="antonymscase">
				<h3>Antonyms:</h3>
					<input type="text" name="antonym1" id="antonym1" placeholder="Antonym I" autocomplete="off" tabindex="1" class="txtinput">
		
					<input type="text" name="antonym2" id="antonym2" placeholder="Antonym II" autocomplete="off" tabindex="1" class="txtinput">
				
					<input type="text" name="antonym3" id="antonym3" placeholder="Antonym III" autocomplete="off" tabindex="1" class="txtinput">
				
					<input type="text" name="antonym4" id="antonym4" placeholder="Antonym IV" autocomplete="off" tabindex="1" class="txtinput">
					
				</section>
			
				
			</section>
		</div>


		<section id="buttons">
			<input type="reset" name="reset" id="resetbtn" class="resetbtn" value="Reset">
			<input type="submit" name="submit" id="submitbtn" class="submitbtn" tabindex="7" value="Submit this!" >
			<br style="clear:both;">
		</section>
		
		</form>
	</section>
	
	
	
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/jquery.validate.min.js"></script>


<script type="text/javascript">

$(document).ready(function(){
	$("#questionForm-form").validate({
		//specify the validation rules
		rules: {
			word: "required",
			meaining1: "required",
			meaining2: {
		required: true,
		email: true //email is required AND must be in the form of a valid email address
		},
		meaining3: {
		required: true,
		minlength: 6
		}
		},
		 
		//specify validation error messages
		messages: {
		firstname: "First Name field cannot be blank!",
		lastname: "Last Name field cannot be blank!",
		password: {
		required: "Password field cannot be blank!",
		minlength: "Your password must be at least 6 characters long"
		},
		email: "Please enter a valid email address"
		},
		 
		submitHandler: function(form){
		form.submit();
		}
		 
		});

});


</script>

</body>
</html>
