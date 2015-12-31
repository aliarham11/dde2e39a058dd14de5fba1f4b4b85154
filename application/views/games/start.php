<html>
<head>
  <title>Start Game</title>
</head>
<body>

<p>Chose game</p>
<?php
  if (isset($errors)){
    echo $errors;
  }
?>
<form action="<?php echo base_url();?>games/run" method="POST">
  <?php
    foreach ($games as $game) {
  ?>
      <input type="radio" name="game_id" placeholder="difficulty" value="<?php echo $game->id; ?>" />
      <?php echo $game->created_at;?>
  <?php
    }
  ?>
  <input type="radio" name="game_id" placeholder="difficulty" value="0" />
      Mulai Baru
  <br/>
  <input type="submit" value="Mulai"/>
</form>
</body>
</html>