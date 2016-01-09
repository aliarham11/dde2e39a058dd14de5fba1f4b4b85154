<section id="container">
 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper red darken-4">
	      <a href="#!" class="brand-logo text-title" id="question_header">
	      	Welcome, <?php echo $user_name; ?><i class="material-icons left">perm_identity</i>
	      </a>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<form action="<?php echo base_url();?>games/start" method="POST">
	  		<div class="row">
	  			<div class="col s12">
	  				<p class="text-title">Pilih Level Games : </p>
	  				
						  <?php
						    foreach ($levels as $level) {
						  ?>

					  		<p>
							    <input name="level_id" type="radio" value="<?php echo $level->id; ?>" id="<?php echo $level->id; ?>"  <?php if (isset($data) && $data["level_id"] == $level->id) echo "checked = true"; ?>/>
							    <label for="<?php echo $level->id; ?>"><?php echo $level->difficulty;?>
							    <?php if($level->id == 2): ?>
							    	(pilihan level easy adalah selang kepercayaan (margin) ketepatan jawaban ±10%)
						    	<?php elseif($level->id == 3): ?>
						    		(pilihan level normal adalah selang kepercayaan (margin) ketepatan jawaban ±5%)
							    <?php else: ?>
							    	(pilihan level hard adalah selang kepercayaan (margin) ketepatan jawaban ±3%)
						    	<?php endif; ?>
							    </label>
							  </p>

						  <?php
						    }
						  ?>						
	  			</div>
	  		</div>
	  		<div class="row">
		  		<div class="input-field center-align" style="margin-bottom:30px">
	     			 <button class="btn waves-effect waves-light red darken-4" type="submit" name="action" id="next_question">Mulai Permainan
	 	 					<i class="material-icons right">send</i>
						</button>
	 			 	</div>
	  		</div>
	  		</form>
	  	
	  </div>
	</div>

</section>