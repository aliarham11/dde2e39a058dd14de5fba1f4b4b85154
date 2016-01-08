<section id="container">
 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo text-title" id="question_header">
	      	Game Selesai, <?php echo $user_name; ?>..!!<i class="material-icons left">perm_identity</i>
	      </a>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  		<div class="row">
	  			<div class="col s12">
	  			<p class="flow-text center-align">Berikut adalah grafik total score, filter berdasarkan tingkat kesulian :</p>
	  				<select id="graph-filter" width="100px">
	  					<option value="2">Easy</option>
	  					<option value="3">Medium</option>
	  					<option value="4">Hard</option>
	  				</select>
	  			</div>
	  		</div>
	  		<div class="row">
	  			<div class="col s12">
	  				<canvas id="score-avg-graph"></canvas>						
	  			</div>
	  		</div>
	  		<div class="row">
		  		<div class="input-field center-align" style="margin-bottom:30px">
	     			 <button class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="next_question">EXIT
	 	 					<i class="material-icons right">not_interested</i>
						</button>
	 			 	</div>
	  		</div>
	  	
	  </div>
	</div>

</section>