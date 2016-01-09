<section id="container">

 
	<div class="container z-depth-3">
	  <nav>
	     <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="interface3-header">
	      	Evaluasi Pemahaman Dan Identifikasi Komponen Biaya (Cost Breakdown Structure)<i class="material-icons left">call_missed</i>
	      </a>
	      
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row" id="interface3-title">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="title_text">Lengkapilah kotak kosong pada gambar di bawah dengan konten komponen biaya yang telah disampaikan pada interface sebelumnya</p>
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
				 		<?php if($game->score_parts == NULL): ?>
				 		<p class="center-align">
              <input name="save" type="radio" value="0" checked="true" id="0"/>
              <label for="0">Simpan</label>
            </p>
            <p class="center-align">
              <input name="save" type="radio" value="1" id="1"/>
              <label for="1">Simpan dan Selesai</label>
            </p>
          	<?php else: ?>
          		<p class="center-align flow-text">Score : <?php echo $game->score_parts ?></p>
          	<?php endif; ?>

		 		<div class="input-field center-align" style="margin-bottom:30px">
					<?php if($game->score_parts != NULL): ?>
						
						<a href="#modal1" class="btn waves-effect waves-light blue darken-3 modal-trigger" type="button" name="action" id="interface4-btn-modal">Lihat Kunci Jawaban
	 						<i class="material-icons right">vpn_key</i>
						</a>

						<a href="<?php echo base_url(); ?>material_costs"class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="interface4-btn-con">Next
		 					<i class="material-icons right">send</i>
						</a>

					<?php else: ?>
						<button class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="interface4-btn-nav">Selesai
	 						<i class="material-icons right">send</i>
						</button> 
					<?php endif; ?>
			 	</div>
			  	
		  	</form>
	  	</div>
	  </div>
	</div>
<div id="modal1" class="modal">
  <div class="modal-content">
    <h4>Jawaban</h4>
    <div class="row">
	    <div id="interface3-chart" class="col s12">

			</div>
    </div>
  </div>
  <div class="modal-footer">
    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Tutup</a>
  </div>
</div>
</section>
