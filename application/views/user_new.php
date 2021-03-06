

<section id="container">
 
	<div class="container narrow z-depth-3">
	  <nav>
	    <div class="nav-wrapper red darken-4">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="question_header">
	      	Register<i class="material-icons left">contacts</i>
	      </a>
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="question_text">Register Akun</p>
	  		</div>
	  	</div>
	  	<div class="row">
	  		<form class="col s12" action="<?php echo base_url();?>users/register" method="POST">
	  			<?php
					if (isset($notice)){
						echo $notice;
					}
					if (isset($errors)){
						echo $errors;
					}
				?>
	  			<input type="hidden" id="base_url" value="<?php echo base_url() ?>" />
	  			<div class="input-field input-align-center">
         			 <input id="username" name="username" type="text" class="validate">
         			 <label for="username">Username</label>
       			 </div>
       			 <div class="input-field input-align-center">
         			 <input id="password" name="password" type="password" class="validate">
         			 <label for="username">Password</label>
       			 </div>
       			 <div class="input-field input-align-center">
         			 <input id="name" name="name" type="text" class="validate">
         			 <label for="username">Nama</label>
       			 </div>
       			 <div class="input-field center-align" style="margin-bottom:30px">
	       			 <button class="btn waves-effect waves-light red darken-4" type="submit" name="action" id="next_question">Daftar
	   	 				<i class="material-icons right">send</i>
	  				</button>
       			 </div>
       			 
	  		</form>
	  		
	  	</div>
	  </div>
	</div>

</section>