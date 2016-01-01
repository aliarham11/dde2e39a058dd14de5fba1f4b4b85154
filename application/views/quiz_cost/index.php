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

<table>
  <thead>
    <tr>
      <td colspan="2">Diketahui</td>
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
<br/>
<form action="<?php echo base_url();?>quiz_cost/submit" method="POST">
  <table>
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
  <input type="radio" name="save" placeholder="difficulty" value="0" checked="true" />
      Simpan
  <input type="radio" name="save" placeholder="difficulty" value="1" />
      Simpan dan selesai
  <input type="submit" value="Kirim Jawaban"/>
</form>
</body>
</html>