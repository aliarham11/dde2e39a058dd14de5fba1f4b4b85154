<section id="container">

 
	<div class="container z-depth-3">
	  <nav>
	     <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="interface3-header">
	      	Quiz Tebak Parts<i class="material-icons left">call_missed</i>
	      </a>
	      
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row" id="interface3-title">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="title_text">Silahkan jawab kolom parts sesuai dengan susunan yang tepat</p>
	  		</div>
	  	</div>
	  	<div class="row">
				<div id="interface4-chart" class="col s12">

 			</div>	
		  	 	
	  	</div>
	  	<div class="row">
		  	<form method="post" action="<?php echo base_url(); ?>quiz_parts/submit">
		  			
		  			<?php foreach($parts as $part): ?>	
		  				<input type="hidden" id="part_<?php echo $part->id; ?>" name="answer[<?php echo $part->id ?>]" value="<?php echo $part->answer; ?>">
		  			<?php endforeach; ?>
				 		<p class="center-align">
              <input name="save" type="radio" value="0" checked="true" id="0"/>
              <label for="0">Simpan</label>
            </p>
            <p class="center-align">
              <input name="save" type="radio" value="1" id="1"/>
              <label for="1">Simpan dan Selesai</label>
            </p>

				 		<div class="input-field center-align" style="margin-bottom:30px">
							<button class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="interface4-btn-nav">Selesai
			 					<i class="material-icons right">send</i>
							</button>
					 	</div>
			  	
		  	</form>
	  	</div>
	  </div>
	</div>

</section>
