<section id="container">
 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo text-title" id="question_header">
	      	Welcome, <?php echo $user_name; ?><i class="material-icons left">perm_identity</i>
	      </a>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  		<div class="row">
	  			<div class="col s6">
	  				<p class="text-title">Grafik Rata-rata skor : </p>
	  				<canvas id="score-avg-graph"></canvas>
	  			</div>
	  			<div class="col s6">
	  				<p class="text-title">Pilih Level Games : </p>
	  				<form action="<?php echo base_url();?>games/start" method="POST">
						  <?php
						    foreach ($levels as $level) {
						  ?>

					  		<p>
							    <input name="level_id" type="radio" value="<?php echo $level->id; ?>" id="<?php echo $level->id; ?>"  <?php if (isset($data) && $data["level_id"] == $level->id) echo "checked = true"; ?>/>
							    <label for="<?php echo $level->id; ?>"><?php echo $level->difficulty;?></label>
							  </p>

						  <?php
						    }
						  ?>														
						  <button type="submit" class="btn waves-effect waves-light blue darken-3" >Mulai Permainan
						  	<i class="material-icons right">play_arrow</i>
						  </button>
						</form> 
	  			</div>
	  		</div>
	  	
	  </div>
	</div>

</section>