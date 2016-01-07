
<?php
  if (isset($errors)){
    echo $errors;
  }
?>

<section id="container">

  <div class="container z-depth-3">
    <nav>
      <div class="nav-wrapper blue darken-3">
        <div class="row">
          <a href="#!" class="brand-logo col s12" id="question_header" style="font-size: large;">Simulasi estimasi harga kapal baru jenis product oil tanker 5.000 dwt < x < 10.000 dwt <i class="material-icons left">perm_identity</i>
            
          </a>
        </div>
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
                    <?php
                      if ($question->score_cost == null){
                    ?>
                        <td>US$</td>
                    <?php
                      }
                      else{
                    ?>
                        <td>Answer US$</td>
                        <td>Actual US$</td>
                        <td>Correct</td>
                    <?php
                      }
                    ?>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    foreach ($answers as $answer) {
                  ?>
                      <tr>
                        <td><?php echo $answer->name; ?></td>
                        <?php
                          if ($question->score_cost == null){
                            if ($answer->actual != null)
                            {
                        ?>
                            <td>
                              <input type="text" name="estimate[<?php echo $answer->part_id;?>]" value="<?php echo $answer->estimate; ?>"/>
                            </td>
                        <?php
                            }
                          }
                          else{
                        ?>
                            <td><?php echo $answer->estimate;?></td>
                            <td><?php echo $answer->actual;?></td>
                            <td>
                                <?php
                                  $margin = $answer->actual * $margin_percentage / 100;
                                  $diff = $answer->actual - $answer->estimate;
                                  if(abs($diff) < $margin || $answer->actual == null){
                                    echo "Benar";
                                  }
                                  else echo "Salah";
                                ?>
                            </td>
                        <?php
                          }
                        ?>
                      </tr>
                  <?php
                    }
                  ?>
                </tbody>
              </table>
              <?php
                if ($question->score_cost == null)
                {
              ?>
              <p class="center-align">
                <input name="save" type="radio" value="0" checked="true" id="0"/>
                <label for="0">Simpan</label>
              </p>
              <p class="center-align">
                <input name="save" type="radio" value="1" id="1"/>
                <label for="1">Simpan dan Selesai</label>
              </p>
              <?php
                }
              ?>
              <div class="input-field center-align" style="margin-bottom:30px">
                <?php
                  if ($question->score_cost == null)
                  {
                ?>
                    <button class="btn waves-effect waves-light blue darken-3" type="submit" name="action" id="next_question">Kirim Jawaban
                      <i class="material-icons right">send</i>
                    </button>
                <?php
                  }
                  else
                  {
                ?>
                    <a class="btn waves-effect waves-light blue darken-3" href="<?php echo base_url()."games/run";?>"> Next</a>
                <?php
                  }
                ?>
                  </div>
            </form>
          </div>
        </div>

    </div>
  </div>

</section>




