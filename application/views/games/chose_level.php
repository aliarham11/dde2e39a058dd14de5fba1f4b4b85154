<html>
<head>
  <title>Chose levels</title>
</head>
<body>

<p>Chose game level</p>
<?php
  if (isset($errors)){
    echo $errors;
  }
?>
<form action="<?php echo base_url();?>games/start" method="POST">
  <?php
    foreach ($levels as $level) {
  ?>
      <input type="radio" name="level_id" placeholder="difficulty" value="<?php echo $level->id; ?>"  <?php if (isset($data) && $data["level_id"] == $level->id) echo "checked = true"; ?>/>
      <?php echo $level->difficulty;?>
  <?php
    }
  ?>
  <input type="submit" value="Masuk Ke Permainan"/>
</form>
</body>
</html>