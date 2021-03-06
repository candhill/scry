<?php
//
// Scry - Simple PHP Photo Album
// Copyright 2004 James Byers <jbyers@users.sf.net>
// http://scry.org
//
// Scry is distributed under a BSD License.  See LICENSE for details.
//
// $Id: header.tpl,v 1.1 2004/10/01 06:48:55 jbyers Exp $
//
// Note: setup is a specialized template for setup only.  See the
//       default template for a working example.
//

// force all pages to list view
//
if ($VIEW != 'list') {
  header('Location: ' . build_url('list', 0, ''));
  exit();
} // if

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title>Scry: Simple PHP Photo Album</title>
  <link rel="stylesheet" href="<?php print $T['template_url']; ?>/scry.css" />
</head>
<body>

<table align="center" width="85%" border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td>

<div class="header">
  Scry: Simple PHP Photo Album
</div>

    </td>
    <td align="right">

<img src="http://scry.sourceforge.net/images/photos.png">

    </td>
  </tr>

  <tr>
    <td colspan="2">

<div class="body">
