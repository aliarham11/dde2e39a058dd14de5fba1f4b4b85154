<html>
<head>
	<title>Levels</title>
</head>
<body>

<p>Edit Levels.</p>
<?php
	if (isset($errors)){
		echo $errors;
	}
?>
<form action="<?php echo base_url();?>levels/update/<?php echo $data["id"];?>" method="POST">
	<input type="text" name="difficulty" placeholder="difficulty" value="<?php $value = isset($data) ? $data["difficulty"] : ""; echo $value; ?>"/>
	<br/>
	<input type="text" name="margin" placeholder="margin" value="<?php $value = isset($data) ? $data["margin"] : ""; echo $value; ?>"/>
	<br/>
	<input type="submit" value="Update"/>
</form>
</body>
</html>