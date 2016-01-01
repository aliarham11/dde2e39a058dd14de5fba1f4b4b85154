<section id="container">
<div class="row">
	<div class="col s12 grey darken-4">
		<h5 class="white-text">Naval Game</h5>
	</div>
</div> 	
 
	<div class="container z-depth-3">
	  <nav>
	    <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo text-title" id="question_header">
	      	Game Start<i class="material-icons left">swap_vertical_circle</i>
	      </a>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row">
	  		<div class="col s12">
	  			<form id="choose_start">
	  			<?php if(isset($games)): ?>
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
	  		</div>
	  		<div class="row" id="game_options" style="display: none">
	  			<p>
					<?php
					  if (isset($notice)){
					    echo $notice;
					  }
					?>
					</p>
					  <a href="<?php echo base_url();?>quiz_parts">Tebak Parts</a>
					  <a href="<?php echo base_url();?>quiz_regresi">Tebak Regresi</a>
					  <a href="<?php echo base_url();?>quiz_cost">Tebak Cost</a>
	  		</div>
	  	
	  </div>
	</div>

</section>