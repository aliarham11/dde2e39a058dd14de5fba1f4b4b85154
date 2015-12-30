<html>
<head>
	<title>Levels</title>
</head>
<body>

<p>Levels.</p>
<?php
	if (isset($notice)){
		echo $notice;
	}
	if (isset($errors)){
		echo $errors;
	}
?>
<a href="<?php echo base_url()."levels/level_new/"; ?>">New</a>
<table>
	<thead>
		<tr>
			<td>Difficulty</td>
			<td>Margin</td>
			<td>Action</td>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach ($levels as $level) {
				?>
				<tr>
					<td><?php echo $level->difficulty?></td>
					<td><?php echo $level->margin?></td>
					<td>
						<a href="<?php echo base_url()."levels/edit/".$level->id;?>">
							Edit
						</a>
						<a href="<?php echo base_url()."levels/destroy/".$level->id;?>">
							Delete
						</a>
					</td>
				</tr>

				<?php
			}
		?>
	</tbody>
</table>
</body>
</html>