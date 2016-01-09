
<?php
  if (isset($errors)){
    echo $errors;
  }
?>
<div class="container z-depth-3">
    <nav>
      <div class="nav-wrapper red darken-4">
        <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="question_header">
          Evaluasi Kemahiran (Intuisi) Identifikasi Dan Analisis Driving Parameters<i class="material-icons left">warning</i>
        </a>
      </div>
    </nav>  
    <div class="grey lighten-5">
      <div class="row">
        <div class="col s12">
          <p class="flow-text center-align" id="question_text"></p>
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          <form action="<?php echo base_url();?>quiz_regresi/submit" method="POST">
            <table class="striped">
              <thead>
                <tr>
                  <th>Variabel</th>
                  <?php
                    if($tebak_regresi->score == null){
                  ?>
                      <th>Nilai</th>
                  <?php
                    }
                    else{
                  ?>
                      <th>Jawaban</th>
                      <th>Aktual</th>
                      <th>Status</th>
                  <?php
                    }
                  ?>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>DWT (ton)</td>
                  <td><?php echo $tebak_regresi->dwt;?></td>
                </tr>
                <tr>
                  <td>Wst (ton)</td>
                  <?php
                    if($tebak_regresi->score == null){
                  ?>
                      <td>
                        <input type="text" name="wst" placeholder="wst" value="<?php echo $tebak_regresi->wst; ?>"/>
                      </td>
                  <?php
                    }
                    else{
                  ?>
                      <td><?php echo $tebak_regresi->wst;?></td>
                      <td><?php echo $tebak_regresi->act_wst;?></td>
                      <td>
                          <?php
                            $margin = $tebak_regresi->act_wst * $margin_percentage / 100;
                            $diff = $tebak_regresi->act_wst - $tebak_regresi->wst;
                            if(abs($diff) < $margin){
                              echo "Benar";
                            }
                            else echo "Salah";
                          ?>
                      </td>
                  <?php
                    }
                  ?>
                </tr>
                <tr>
                  <td>Engine power at actual draught (kw)</td>
                  <?php
                    if($tebak_regresi->score == null){
                  ?>
                      <td>
                        <input type="text" name="engine_power" placeholder="engine_power" value="<?php echo $tebak_regresi->engine_power; ?>"/>
                      </td>
                  <?php
                    }
                    else{
                  ?>
                      <td><?php echo $tebak_regresi->engine_power;?></td>
                      <td><?php echo $tebak_regresi->act_engine_power;?></td>
                      <td>
                          <?php
                            $margin = $tebak_regresi->act_engine_power * $margin_percentage / 100;
                            $diff = $tebak_regresi->act_engine_power - $tebak_regresi->engine_power;
                            if(abs($diff) < $margin){
                              echo "Benar";
                            }
                            else echo "Salah";
                          ?>
                      </td>
                  <?php
                    }
                  ?>
                </tr>
                <tr>
                  <td>Type of engine choosen</td>
                  <?php
                    if($tebak_regresi->score == null){
                  ?>
                      <td>
                        <select type="text" name="type_of_engine">
                          <?php
                            foreach ($engines as $engine) {
                          ?>
                              <option value="<?php echo $engine;?>" <?php if($engine == $tebak_regresi->type_of_engine) echo "selected = true"?>>
                                <?php echo $engine;?>
                              </option>
                          <?php
                            }
                          ?>
                        </select>
                      </td>
                  <?php
                    }
                    else{
                  ?>
                      <td><?php echo $tebak_regresi->type_of_engine;?></td>
                      <td><?php echo $tebak_regresi->act_type_of_engine;?></td>
                      <td>
                          <?php
                            $margin = $tebak_regresi->act_type_of_engine * $margin_percentage / 100;
                            $diff = $tebak_regresi->act_type_of_engine - $tebak_regresi->type_of_engine;
                            if(abs($diff) < $margin){
                              echo "Benar";
                            }
                            else echo "Salah";
                          ?>
                      </td>
                  <?php
                    }
                  ?>
                </tr>
                <tr>
                  <td>LWT (ton)</td>
                  <?php
                    if($tebak_regresi->score == null){
                  ?>
                      <td>
                        <input type="text" name="lwt" placeholder="lwt" value="<?php echo $tebak_regresi->lwt; ?>"/>
                      </td>
                  <?php
                    }
                    else{
                  ?>
                      <td><?php echo $tebak_regresi->lwt;?></td>
                      <td><?php echo $tebak_regresi->act_lwt;?></td>
                      <td>
                          <?php
                            $margin = $tebak_regresi->act_lwt * $margin_percentage / 100;
                            $diff = $tebak_regresi->act_lwt - $tebak_regresi->lwt;
                            if(abs($diff) < $margin){
                              echo "Benar";
                            }
                            else echo "Salah";
                          ?>
                      </td>
                  <?php
                    }
                  ?>
                </tr>
              </tbody>
            </table>
            <?php
              if($tebak_regresi->score == null){
            ?>
              <p class="center-align">
                <input name="save" type="radio" value="0" checked="true" id="0"/>
                <label for="0">Simpan</label>
              </p>
              <p class="center-align">
                <input name="save" type="radio" value="1" id="1"/>
                <label for="1">Simpan dan Selesai</label>
              </p>
              <div class="input-field center-align" style="margin-bottom:30px">
                <button class="btn waves-effect waves-light red darken-4" type="submit" name="action" id="next_question">Kirim Jawaban
                  <i class="material-icons right">send</i>
                </button>
              </div>
            <?php
              }
              else{
            ?>
              <div class="input-field center-align" style="margin-bottom:30px">
                <a class="btn waves-effect waves-light red darken-4" href="<?php echo base_url()."quiz_cost";?>"> Next</a>
              </div>
            <?php
              }
            ?>
          </form>
        </div>
      </div>
    </div>
  </div>
