
<?php
  if (isset($errors)){
    echo $errors;
  }
?>

<section id="container">
 
  <div class="container z-depth-3">
    <nav>
      <div class="nav-wrapper blue darken-3">
        <a href="#!" class="brand-logo text-title" id="question_header">
          Quis Tebak Cost<i class="material-icons left">perm_identity</i>
        </a>
      </div>
    </nav>  
    <div class="grey lighten-5">
        <div class="row">
          <div class="col s12">
            <table class="striped">
              <thead>
                <tr>
                  <td colspan="2">DIKETAHUI : </td>
                </tr>
              </thead>
              <tbody>
                  <tr>
                    <td>DWT (ton)</td>
                    <td><?php echo $question->dwt; ?></td>
                  </tr>
                  <tr>
                    <td>Harga Pelat (kg)</td>
                    <td><?php echo $question->harga_pelat; ?></td>
                  </tr>
                  <tr>
                    <td>Machinery cost (KW)</td>
                    <td><?php echo $question->machinery_cost; ?></td>
                  </tr>
                  <tr>
                    <td>Construction cost / kg</td>
                    <td><?php echo $question->construction_cost; ?></td>
                  </tr>
                  <tr>
                    <td>Nilai tukar rupiah terhadap / 1US Dollar</td>
                    <td><?php echo $question->tukar_dolar; ?></td>
                  </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="row">
          <div class="col s12">
            <form action="<?php echo base_url();?>quiz_cost/submit" method="POST">
              <table class="highlight">
                <thead>
                  <tr>
                    <td>COST BREAKDOWN</td>
                    <td>US$</td>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    foreach ($answers as $answer) {
                  ?>
                      <tr>
                        <td><?php echo $answer->name; ?></td>
                        <td>
                         <input type="text" name="estimate[<?php echo $answer->part_id;?>]" value="<?php echo $answer->estimate; ?>"/>
                        </td>
                      </tr>
                  <?php
                    }
                  ?>
                </tbody>
              </table>
              <p class="center-align">
                <input name="save" type="radio" value="0" checked="true" id="0"/>
                <label for="0">Simpan</label>
              </p>
              <p class="center-align">
                <input name="save" type="radio" value="1" id="1"/>
                <label for="1">Simpan dan Selesai</label>
              </p>
              <div class="input-field center-align" style="margin-bottom:30px">
                <button class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="next_question">Kirim Jawaban
                  <i class="material-icons right">send</i>
                </button>
              </div>
            </form>  
          </div>
        </div>
      
    </div>
  </div>

</section>




