<section id="container">
<div class="row">
	<div class="col s12 grey darken-4">
		<h5 class="white-text">Naval Game</h5>
	</div>
</div> 	
 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="question_header">
	      	Peraturan Permainan<i class="material-icons left">warning</i>
	      </a>
	      <ul class="right hide-on-med-and-down">
	        <li id="timer">05:00</li>
	        <li><a href="#"><i class="material-icons">schedule</i></a></li>
	      </ul>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="question_text"><?php echo $rules; ?></p>
	  		</div>
	  	</div>
	  	<div class="row">
	  		<form class="col s12" id="question_answer">
	  			<input type="hidden" id="question_number" value="1" />
	  			<input type="hidden" id="base_url" value="<?php echo base_url() ?>" />
	  			<div class="input-field input-align-center" id="answer_box">
         			 <input id="answer" type="text" class="validate">
         			 <label for="answer">Jawab</label>
       			 </div>
       			 <div class="input-field center-align" style="margin-bottom:30px">
	       			 <button class="btn waves-effect waves-light blue darken-3" type="button" name="action" id="next_question">Mulai Permainan
	   	 				<i class="material-icons right">send</i>
	  				</button>
       			 </div>
	  		</form>
	  	</div>
	  </div>
	</div>

</section>