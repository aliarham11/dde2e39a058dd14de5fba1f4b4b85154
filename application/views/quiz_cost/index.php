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
             <input type="text" name="value[<?php echo $answer->part_id;?>]" value="<?php echo $answer->estimate; ?>"/>
             <input type="hidden" name="record_id[<?php echo $answer->part_id;?>]" value="<?php echo $answer->part_id; ?>"/>
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