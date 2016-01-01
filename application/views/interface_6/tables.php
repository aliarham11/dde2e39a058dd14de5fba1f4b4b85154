<section id="container">
<div class="row">
	<div class="col s12 grey darken-4">
		<h5 class="white-text"><?php echo $title; ?></h5>
	</div>
</div> 	
 
	<div class="container z-depth-3">
	  <nav>
	     <div class="nav-wrapper blue darken-3">
	      <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="interface6-header">
	      	Driving Parameters<i class="material-icons left">call_missed</i>
	      </a>
	      
	    </div>
	  </nav>	
	  <div class="grey lighten-5">
	  	<div class="row" id="interface6-title">
	  		<div class="col s12">
	  			<p class="flow-text center-align" id="title_text">Membuat keputusan estimasi harga kapal baru dapat mengacu dari pengetahuan dasar yang telah dibentuk dan kemahiran melakukan analisis terhadap driving parameters.</p>
	  		</div>
	  	</div>
	  	<div class="row">
	  		<div id="interface6-table1" class="col s10">
	  			<table class="striped" style="text-align:center;margin-left:10%" id="table1">
	  				<thead>
	  					<tr><th colspan="2" class="center-align">HULL PART</th></tr>
	  					<tr>
	  						<td class="center-align">Komponen Biaya</td>
	  						<td class="center-align">Keteraga Biaya / Harga</td>
	  					</tr>

	  				</thead>
	  				<tbody>

							<tr><td>Steel plate and profile(Driving parameter) WST</td>
							<td>-	Nilai didapatkan dengan menggunakan pengetahuan berat baja terpasang (kg) dikali dengan harga pelat per kg. <br /> -	Biaya steel plate and profile keseluruhan sebesar (1 per 0,61) dari nilai pada keterangan di atas.</td>
							</tr>


							<tr><td>Hull outfit, deck machiney and accommodation</td>
							<td>50% dari driving parameter WST</td>
							</tr>

							<tr><td>Piping, valves and fittings</td>
							<td>35% dari driving parameter WST</td>
							</tr>

							<tr><td>Cago tank coating, painting & cathodic rotection</td>
							<td>10% dari driving parameter WST</td>
							</tr>

							<tr><td>Fire fighting, life saving and safety equipment</td>
							<td>10% dari driving parameter WST</td>
							</tr>

							<tr><td>Hull spare part, tool, and inventory</td>
							<td>2,5% dari driving parameter WST</td>
							</tr>
	  				</tbody>
	  			</table>

	  			<table class="striped" id="table2" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">MACHINERY PART</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>

									<tr><td>Propulsion system and accessories <br />(Driving parameter) Power needs</td>
									<td>-	Nilai didapatkan dengan menggunakan pengetahuan KW engine diesel yang terpasang dikali dengan nilai harga per KW yang diketahui.<br />-	Biaya propulsion system and accessories keseluruhan sebesar (1 per 0,79) dari nilai pada keterangan di atas.</td></tr>

									<tr><td>Auxiliary diesel engine and accessories</td>
									<td>33% dari driving parameter Power needs</td></tr>

									<tr><td>Other machinery & outfit in E/R</td>
									<td>37,5% dari driving parameter Power needs</td></tr>

									<tr><td>Pipe, valves, and fitting</td>
									<td>16,7% dari driving parameter Power needs</td></tr>

									<tr><td>Machinery spare part and tool</td>
									<td>4,2% dari driving parameter Power needs</td></tr>

		  				</tbody>

	  				</table>
	  				
	  				<table class="striped table3" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">ELECTRIC PART</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
		  					<tr><td>Electric part</td>
		  					<td>16,9% dari total biaya HULL PART</td></tr>
		  				</tbody>

	  				</table> 

	  				<table class="striped table3" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">CONSTRUCTION COST</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
		  				<tr><td>Constrcution cost (Driving parameter) LWT	</td><td>LWT (kg) x biaya construction cost per kg</td></tr>

		  				</tbody>

	  				</table>

	  				<table class="striped table3" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">INSEPCTION & SUERVEY COST</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
		  				<tr><td>Insepction & Suervey Cost	</td><td>2% dari biaya (hull part+machinery part+electric part)</td></tr>
		  				</tbody>

	  				</table>

	  				<table class="striped table3" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">LAUNCHING & TESTING</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
		  				<tr><td>Launching & Testing</td><td>	2% dari biaya (hull part+machinery part+electric part)</td></tr>
		  				</tbody>

	  				</table> 

	  			  <table class="striped table4" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">INSEPCTION & SUERVEY COST</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
								<tr><td>Design cost</td>
								<td>1% dari direct cost untuk desain sister ship dan <br />2% untuk desain non sister ship</td></tr>

								<tr><td>Insurance cost</td>
								<td>1,8 dari % direct cost</td></tr>

								<tr><td>Miscellaneous cost</td>
								<td>8% dari direct cost</td></tr>
		  				</tbody>

	  				</table>

	  				<table class="striped table4" style="text-align:center;margin-left:10%">
		  			<thead>
		  					<th colspan="2" class="center-align">LAUNCHING & TESTING</th>
		  					<tr>
		  						<td class="center-align">Komponen Biaya</td>
		  						<td class="center-align">Keteraga Biaya / Harga</td>
		  					</tr>
		  				</thead>
		  				<tbody>
		  				<tr><td>MARGIN FOR PROFIT</td><td>	5% dari (direct cost + undirect cost)</td></tr>
		  				</tbody>

	  				</table> 
	  			
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
