<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Welcome BMC Software</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/waitMe.css" />
 <script src="${contextPath}/resources/js/waitMe.js"></script>
<div class="container" id="containerA">
	<section id="container">
		<h2>Choose Technology And Level</h2>
		
		<div id="wrapping" class="clearfix">
			<section id="aligned">
			</section>
			<section id="levelcase">
				<h3>Level:</h3>
					<select id="level" name="level" tabindex="6" class="selmenu">
  						<option value="Fresher">Fresher</option>
  						<option value="Fresher and Experienced">Fresher and Experienced</option>
  						<option value="Experienced">Experienced</option>
  						<option value="Proficient">Proficient</option>
  						<option value="Expert">Expert</option>
					</select>
				</section>
				<section id="technologycase">
				<h3>Technology:</h3>
					<select id="technology" name="technology" tabindex="6" class="selmenu">
  						<option value="Core Java">Core Java</option>
  						<option value="Spring IOC">Spring IOC</option>
  						<option value="Spring MVC">Spring MVC</option>
  						<option value="Hibernate">Hibernate</option>
  						<option value="Core Java Collections">Core Java Collections</option>
						<option value="Core Java Multithreading">Core Java Multithreading</option>
						<option value="Core Java Garbage Collections">Core Java Garbage Collections</option>
						<option value="Core Java OOPS">Core Java OOPS</option>
						<option value="JSP">JSP</option>
						<option value="Servlets">Servlets</option>
						<option value="J2EE">J2EE</option>
						<option value="Core Java Exceptions">Core Java Exceptions</option>
						<option value="Database">Database</option>
					</select>
			</section>
		</div>
	

		<section id="buttons">
			<input type="submit" name="submitbtn" id="submitbtn" class="submitbtn" tabindex="7" value="Get Questions List And Choose!" >
			<br style="clear:both;">
		</section>
		
		</form>
	</section>
	<div id="result">
	
	</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
		var current_effect = 'bounce';
		function run_waitMe(effect){
			$('#container').waitMe({

			//none, rotateplane, stretch, orbit, roundBounce, win8, 
			//win8_linear, ios, facebook, rotation, timer, pulse, 
			//progressBar, bouncePulse or img
			effect: 'bounce',

			//place text under the effect (string).
			text: 'Getting Questions List. Please Wait.',

			//background for container (string).
			bg: 'rgba(255,255,255,0.7)',

			//color for background animation and text (string).
			color: '#000',

			//change width for elem animation (string).
			sizeW: '',

			//change height for elem animation (string).
			sizeH: '',

			// url to image
			source: '',

			// callback
			onClose: function() {}

			});
			}
	$( "#submitbtn" ).click(function() {
 
	  // Stop form from submitting normally
//	  event.preventDefault();
	 // var $form = $(this);
	  var url = "${contextPath}/getQuestionsForLevelAndTechnology";
	  var level = $("#level").val();
	  var technology = $("#technology").val();
	  var _csrf = "${_csrf.token}";
	  $.ajax({
		  type: 'POST',
		  url: url,
		  data: { level: level, technology:technology , _csrf : _csrf },
		  beforeSend:function(){
			  run_waitMe(current_effect);
		  },
		  success:function(data){
		    // successful request; do something with the data
			  $( "#result" ).empty().append( data );
			  $('#container').waitMe("hide");
		  },
		  error:function(){
			  $( "#result" ).empty().append( "error" );
			  $('#container').waitMe("hide");
		  }
		});
	   // term = $form.find( "input[name='s']" ).val(),
	   
	  });
	
	});
	</script>
	

<!-- /container -->

</head>

<body>