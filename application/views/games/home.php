<section id="container">

 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo text-title" id="question_header">
	      	Game Start<i class="material-icons left">swap_vertical_circle</i>
	      </a>
	      <input type="hidden" id="resume" value="<?php echo $is_resume ?>">
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row">
	  		<div class="col s12" id="pregame">
	  			<form id="choose_start">
	  			<?php if(isset($games) && !$games): ?>
	  				<p class="text-title">Kamu punya permainan yang belum terselesaikan : </p>
	  				<?php foreach ($games as $game): ?>
	  					<p>
					 	   <input name="game_id" type="radio" value="<?php echo $game->id; ?>" id="<?php echo $game->id; ?>"/>
					 	   <label for="<?php echo $game->id; ?>"><?php echo $game->created_at;?></label>
							</p>
	  				<?php endforeach ?>
	  			<?php else: ?>
	  				<p>Hello Pemula! Silahkan mulai game baru</p>
  				<?php endif;  ?>
  					<p>
				 	   <input name="game_id" type="radio" value="0" id="0" checked="checked" />
				 	   <label for="0">Mulai Baru</label>
						</p>
	  				<p>
	  					<button class="btn waves-effect waves-light blue darken-3 text-title" type="button" name="action" id="get_games">Go
	   	 					<i class="material-icons right">send</i>
  						</button>
	  				</p>
	  				</form>
	  			</div>
	  		
		  		<div class="col s12" id="game_options" style="display: none">
			  		<p>
							<?php
							  if (isset($notice)){
							    echo $notice;
							  }
							?>
						</p>
						  
		  			<div class="row">
		        <div class="col s4">
		          <div class="card">
		            <div class="card-image" style="height:200px">
		              <img src="<?php base_url() ?>/naval/assets/images/shipparts.png">
		              <span class="card-title blue-text">Tebak Parts</span>
		            </div>
		            <div class="card-content">
		              <p>I am a very simple card. I am good at containing small bits of information.
		              I am convenient because I require little markup to use effectively.</p>
		            </div>
		            <div class="card-action">
		              <a href="<?php echo base_url();?>quiz_parts">Mulai</a>
		            </div>
		          </div>
		        </div>

		        <div class="col s4">
		          <div class="card" >
		            <div class="card-image" style="height:200px">
		              <img src="<?php base_url() ?>/naval/assets/images/regression.png">
		              <span class="card-title blue-text">Tebak Regresi</span>
		            </div>
		            <div class="card-content">
		              <p>I am a very simple card. I am good at containing small bits of information.
		              I am convenient because I require little markup to use effectively.</p>
		            </div>
		            <div class="card-action">
		              <a href="<?php echo base_url();?>quiz_regresi">Mulai</a>
		            </div>
		          </div>
		        </div>

		        <div class="col s4">
		          <div class="card" >
		            <div class="card-image" style="height:200px">
		              <img src="<?php base_url() ?>/naval/assets/images/shipcost.jpg">
		              <span class="card-title blue-text">Tebak Cost</span>
		            </div>
		            <div class="card-content">
		              <p>I am a very simple card. I am good at containing small bits of information.
		              I am convenient because I require little markup to use effectively.</p>
		            </div>
		            <div class="card-action">
		              <a href="<?php echo base_url();?>quiz_cost">Mulai</a>
		            </div>
		          </div>
		        </div>
		      </div>
		  			
		  		</div>
	  		</div>
	  	
	  </div>
	</div>

</section>