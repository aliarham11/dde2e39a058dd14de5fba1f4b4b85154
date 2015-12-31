<html>
<head>
  <title>Play game</title>
</head>
<body>

<p>Chose</p>
<p>
<?php
  if (isset($notice)){
    echo $notice;
  }
?>
</p>
  <a href="<?php echo base_url();?>quiz_parts">Tebak Parts</a>
  <a href="<?php echo base_url();?>quiz_regresi">Tebak Regresi</a>
  <a href="<?php echo base_url();?>quiz_cost">Tebak Cost</a>
</body>
</html>