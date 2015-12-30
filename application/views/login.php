<html>
<head>
	<title>Login</title>
</head>
<body>

<p>Login User.</p>
<?php
	if (isset($alert)){
		echo $alert;
	}
?>
<form action="<?php echo base_url();?>base/create_session" method="POST">
	<input type="text" name="username" placeholder="username" value="<?php $value = isset($data) ? $data["username"] : ""; echo $value; ?>"/>
	<br/>
	<input type="password" name="password" placeholder="password" value="<?php $value = isset($data) ? $data["password"] : ""; echo $value; ?>"/>
	<br/>
	<input type="submit" value="Register"/>
</form>

</body>
</html>