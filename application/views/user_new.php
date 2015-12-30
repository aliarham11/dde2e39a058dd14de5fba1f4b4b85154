<html>
<head>
	<title>Register</title>
</head>
<body>

<p>Register User.</p>
<?php
	if (isset($notice)){
		echo $notice;
	}
	if (isset($errors)){
		echo $errors;
	}
?>
<form action="<?php echo base_url();?>users/register" method="POST">
	<input type="text" name="username" placeholder="username" value="<?php $value = isset($data) ? $data["username"] : ""; echo $value; ?>"/>
	<br/>
	<input type="password" name="password" placeholder="password" value="<?php $value = isset($data) ? $data["password"] : ""; echo $value; ?>"/>
	<br/>
	<input type="text" name="name" placeholder="name" value="<?php $value = isset($data) ? $data["name"] : ""; echo $value; ?>"/>
	<br/>
	<input type="submit" value="Register"/>
</form>

</body>
</html>