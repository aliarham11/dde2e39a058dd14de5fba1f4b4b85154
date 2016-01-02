
<?php
  if (isset($errors)){
    echo $errors;
  }
?>
<div class="container z-depth-3">
    <nav>
      <div class="nav-wrapper blue darken-3">
        <a href="#!" class="brand-logo" style="margin-left:10px;font-size: x-large;" id="question_header">
          Quis Regresi<i class="material-icons left">warning</i>
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
                  <th>Nilai</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>DWT (ton)</td>
                  <td><?php echo $tebak_regresi->dwt;?></td>
                </tr>
                <tr>
                  <td>Wst (ton)</td>
                  <td>
                    <input type="text" name="wst" placeholder="wst" value="<?php echo $tebak_regresi->wst; ?>"/>
                  </td>
                </tr>
                <tr>
                  <td>Engine power at actual draught (kw)</td>
                  <td>
                    <input type="text" name="engine_power" placeholder="engine_power" value="<?php echo $tebak_regresi->engine_power; ?>"/>
                  </td>
                </tr>
                <tr>
                  <td>Type of engine choosen</td>
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
                    </td>
                  </select>
                </tr>
                <tr>
                  <td>LWT (ton)</td>
                  <td>
                    <input type="text" name="lwt" placeholder="lwt" value="<?php echo $tebak_regresi->lwt; ?>"/>
                  </td>
                </tr>
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
