<section id="container">

	<div class="container z-depth-3">
	  <nav>
	     <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="interface6-header">
	      	Interface 6<i class="material-icons left">call_missed</i>
	      </a>
	      
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row" id="interface6-title">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="title_text"><i>Driving parameters</i> adalah elemen komponen  bagian dari kapal yang memiliki nilai/pengaruh paling dominan dalam cost break down structure harga kapal baru.</p>
	  		</div>
	  	</div>
	  	<div class="row">
	  		<div id="interface6-intro" class="col s12">
	  			<p class="flow-text center-align">
	  				Pada interface 6 ini, user akan mendapatkan informasi seputar driving parameters, pendekatan nilai driving parameters pada kapal product oil tanker 5000-9999 dwt dan tata cara perhitungan untuk melakukan estimasi harga kapal baru
	  			</p>
	  		</div>

	  		<ol id="interface6-content" style="display:none">
				<li>Dwt adalah salah satu parameter yang dapat digunakan untuk menentukan besar nilai wst (berat pelat dan profil baja) yang terpasang di kapal, kemudian dengan mempertimbangkan biaya berat pelat dan profil baja yang terpasang maka biaya total hull part dapat ditentukan dengan tata cara perhitungan yang akan disampaikan di interface 6.3.</li>
				<li>Dwt adalah salah satu parameter yang dapat digunakan untuk menentukan besar nilai engine power used yang digunakan di kapal. Engine power used yang digunakan memiliki pola hubungan biaya dengan propulsion system and accessories . Kemudian dengan mempertimbangkan biaya propulsion system and accessories yang terpasang maka biaya total machinery part dapat ditentukan dengan tata cara perhitungan yang akan disampaikan di interface 6.3.</li>
				<li>Dwt adalah salah satu parameter yang dapat digunakan untuk menentukan besar nilai besar nilai lwt (lightweight) pada kapal. Lwt memiliki pola hubungan biaya dengan construction cost yang akan disampaikan di interface 6.3.</li>
				<li>Salah satu komponen biaya yang memiliki porsentase besar adalah electric part, dengan mempertimbangkan biaya hull part maka biaya electric part dapat ditentukan dengan tata cara perhitungan yang akan disampaikan di interface 6.3.</li>
				<li>Setelah mendapatkan nilai beberapa komponen yang identik dengan pola driving parameters, maka komponen biaya yang lain hingga harga total kapal dapat diidentifikasi. Perhitungan secara komprehensif mengenai estimasi harga kapal baru akan disampaikan pada interface 6.3</li>

	  		</ol>

	  		<div id="interface6-intro2" style="display:none" class="col s12">
	  			<p class="center-align">
	  				<br />
					Formulasi tersebut akan menjadi acuan anda dalam menentukan nilai parameter sebagai pola yang berhubungan dengan komponen biaya pembentuk (cost breakdown structure) harga kapal baru khusus product oil tanker 5000-9999 dwt

	  			</p>
	  		</div>

	  		<div id="interface6-chart" class="col s12">

 			</div>	

 			<div id="interface6-img" class="col s10 scrollable-div" style="display:none;margin-left:10%">
	  	 		<img id="img-data" src="<?php echo base_url(); ?>assets/images/materi/Data_Kapal.jpg">
	  	 	</div>

	  	 	<canvas id="interface6-graph" class="col s12"width="400" height="300" style="display:none"></canvas>
		  	 	
	  	</div>
	  	<div class="row" id="interface6-notes">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="title_text"><i>Driving parameters</i> juga dapat digunakan sebagai acuan untuk menentukan besar nilai/porsentase komponen yang lain.</p>
	  		</div> 	
	  	</div>
	  	<div class="row">
		 <div class="input-field center-align" style="margin-bottom:30px">
   			 	<button class="btn waves-effect waves-light blue darken-3" type="button" name="action" id="interface6-btn-nav">Next
	 				<i class="material-icons right">send</i>
				</button>
			 </div>
	  	</div>
	  	
	  </div>
	</div>

</section>
