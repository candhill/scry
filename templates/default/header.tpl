<?php
//
// Scry - Simple PHP Photo Album
// Copyright 2004 James Byers <jbyers@users.sf.net>
// http://scry.org
//
// Scry is distributed under a BSD License.  See LICENSE for details.
//
// $Id: header.tpl,v 1.5 2004/09/30 01:02:16 jbyers Exp $
//
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title><?php print $CFG_album_name; ?></title>
  <link rel="stylesheet" href="<?php print $CFG_url_template; ?>/scry.css" />
</head>
<body>

<table cellpadding="5" cellspacing="0" width="85%" border="0" align="center">
  <tr>
    <td align="left">
<?php

while(list($k, $p) = @each($T['path'])) { 
  print(" <a href=\"$p[url]\">$p[name]</a> / ");
}

if (@$T['current']['name'] != '') {
  print $T['current']['name'];
}

?>
    </td>
  </tr>
</table>