<html>
<head>
  <title>Quiz Regresi</title>
</head>
<body>

<p>Quiz Regresi</p>
<?php
  if (isset($errors)){
    echo $errors;
  }
?>
<form action="<?php echo base_url();?>quiz_regresi/submit" method="POST">
  <table>
    <thead>
      <tr>
        <td>Variabel</td>
        <td>Nilai</td>
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
  <input type="radio" name="save" placeholder="difficulty" value="0" checked="true" />
      Simpan
  <input type="radio" name="save" placeholder="difficulty" value="1" />
      Simpan dan selesai
  <input type="submit" value="Kirim Jawaban"/>
</form>
</body>
</html>