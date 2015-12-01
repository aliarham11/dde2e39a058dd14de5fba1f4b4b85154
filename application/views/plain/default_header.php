<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Naval Game</title>
    <meta name="description" content="Naval Game">
    <meta name="author" content="Tekpal 2011">
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <!--  <?php
    if (!empty($header_scripts)) {
        foreach ($header_scripts as $url) { ?>
            <script type="text/javascript" src="<?php echo $url; ?>"></script>
        <?php }
    }
    ?>  -->

    <?php 
        $this->ci = &get_instance();
        $this->ci->load->library('Htmllib');
        $this->ci->htmllib->declare_css();
     ?>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>