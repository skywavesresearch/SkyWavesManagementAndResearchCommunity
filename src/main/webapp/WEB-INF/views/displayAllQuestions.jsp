<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!doctype html>
<html>
 <head>


<link rel="stylesheet" href="${contextPath}/resources/css/jquery.dataTables.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/shCore.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/demo1.css" />

<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" language="javascript" src=${contextPath}/resources/js/jquery.dataTables.js">
	</script>
	<script type="text/javascript" language="javascript" src="${contextPath}/resources/js/shCore.js">
	</script>
	<script type="text/javascript" language="javascript" src=${contextPath}/resources/js/demo.js">
	</script>
	<script type="text/javascript" language="javascript" class="init">
	

$(document).ready(function() {
	$('#questionDisplay').DataTable();
} );


	</script>


</head>
  <body>
<section id="QuestionListSection">
	    <div class="row">
	      <div class="large-12 columns">
	        <h1>${technology} Questions List</h1>
	      </div>
	    </div>
	    <table id="questionDisplay" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Question</th>
                <th>Answer1</th>
                <th>Answer2</th>
                <th>Answer3</th>
                <th>Answer4</th>
                <th>Correct Answer</th>
                <th>Choose In Exam</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Question</th>
                <th>Answer1</th>
                <th>Answer2</th>
                <th>Answer3</th>
                <th>Answer4</th>
                <th>Ans1</th>
                <th>Ans2</th>
                <th>Ans3</th>
                <th>Ans4</th>
                <th>Choose In Exam</th>
            </tr>
        </tfoot>
        <tbody>
	    <c:forEach var="listValue" items="${QuestionsList}">
			    
           			 <tr>	
            			<td>${listValue.question}</td>
			            <td>${listValue.answer1}</td>
			            <td>${listValue.answer2}</td>
			            <td>${listValue.answer3}</td>
			            <td>${listValue.answer4}</td>
			            <td>${listValue.ans1}</td>
			            <td>${listValue.ans2}</td>
			            <td>${listValue.ans3}</td>
			            <td>${listValue.ans4}</td>
			            <th><input type="checkbox" name="chooseInExam" value="3"></th>
			         </tr>
			</c:forEach>  
		</tbody>
		</table>
		
	</section>
	
	 </body>
</html>