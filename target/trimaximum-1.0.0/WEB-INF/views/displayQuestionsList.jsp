<section id="quiz-container">
	    <div class="row">
	      <div class="large-12 columns">
	        <h1>${technology} Exam Cram</h1>
	      </div>
	    </div>
	    <c:forEach var="listValue" items="${questList}">
			<div class="slide">
			    <div class="row">
				      <div class="large-12 columns">
				        <h2>${listValue.question}</h2>

				        <div class="row questions">
						
						<div class="small-12">
				            <section title=".squaredTwo">
								<!-- .squaredTwo -->
								<div class="squaredTwo">
								  <input type="checkbox" value="${listValue.id}" id="${listValue.id}#ans1" name="${listValue.id}#ans1" >
								  <label for="${listValue.id}#ans1">${listValue.answer1}</label></input>
								</div>
								<!-- end .squaredTwo -->
							 </section>
				          </div>
  
				           <div class="small-12">
				            <section title=".squaredTwo">
								<!-- .squaredTwo -->
								<div class="squaredTwo">
								  <input type="checkbox" value="${listValue.id}" id="${listValue.id}#ans2" name="${listValue.id}#ans2" />
								  <label for="${listValue.id}#ans2">${listValue.answer2}</label>
								</div>
								<!-- end .squaredTwo -->
							 </section>
				          </div>
  
				           <div class="small-12">
				            <section title=".squaredTwo">
								<!-- .squaredTwo -->
								<div class="squaredTwo">
								  <input type="checkbox" value="${listValue.id}" id="${listValue.id}#ans3" name="${listValue.id}#ans3" />
								  <label for="${listValue.id}#ans3">${listValue.answer3}</label>
								</div>
								<!-- end .squaredTwo -->
							 </section>
				          </div>
  
				        <div class="small-12">
				            <section title=".squaredTwo">
								<!-- .squaredTwo -->
								<div class="squaredTwo">
								  <input type="checkbox" value="${listValue.id}" id="${listValue.id}#ans4" name="${listValue.id}#ans4" />
								  <label for="${listValue.id}#ans4">${listValue.answer4}</label>
								</div>
								<!-- end .squaredTwo -->
							 </section>
				          </div>
  			        </div>
   
				      </div>     
				
				</div>
			</div>
			  </c:forEach>  
			</div>
				
			
				</form>
			</div>
		</div>
	</section>