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
	  				<p class=" center-align" style="font-size:large">
	  					Pada aplikasi ini, Anda akan dihadapkan pada evaluasi berupan simulasi melakukan estimasi harga kapal baru. Jawaban Anda dianggap benar jika berada pada selang ketepatan jawaban ±5% dari kunci jawaban yang ada pada aplikasi.
	  				</p>
	  				<input name="level_id" value="3" id="3" type="hidden" />
						
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