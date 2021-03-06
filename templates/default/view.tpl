<?php
//
// Scry - Simple PHP Photo Album
// Copyright 2004 James Byers <jbyers@users.sf.net>
// http://scry.org
//
// Scry is distributed under a BSD License.  See LICENSE for details.
//
// $Id: view.tpl,v 1.8 2004/10/06 20:00:45 jbyers Exp $
//
?>

<table cellpadding="5" cellspacing="0" width="85%" border="0" align="center">
  <tr>
    <td align="center" id="t_main" width="100%">

      <table align="center" cellpadding="0" cellspacing="0" border="0">

        <tr>
          <td width="100%" colspan="3" align="center">
            <div class="images">
<?php
if (is_array($T['prev'])) {
  print('<a style="text-decoration: none;" href="' . $T['prev']['view_url'] . '">&lt; previous</a>');
} else {
  print("&nbsp;&nbsp;previous");
}
print(' | ');
if (is_array($T['next'])) {
  print('<a style="text-decoration: none;" href="' . $T['next']['view_url'] . '">next &gt;</a>');
} else {
  print("next&nbsp;&nbsp;");
}
?>
	    <br />
<?php
if ($T['current']['is_movie']) { ?>
	    <video preload="auto" width="640" height="480" id="<?php print $T['current']['name']; ?>" src="<?php print $T['current']['raw_url']; ?>" controls></video>
<?php } else { ?>
            <img src="<?php print $T['current']['image_url']; ?>" alt="<?php print $T['current']['name']; ?>" />
<?php } ?>
            <br />
            <?php print $T['current']['name']; ?>
            <br />
<?php
if ($T['current']['is_movie']) { ?>
            <a href="<?php print($T['current']['raw_url']); ?>"><?php print($T['current']['file_size']); ?></a>
<?php } else { ?>
            <a href="<?php print($T['current']['raw_url']); ?>"><?php print($T['current']['image_size'][0] . 'x' . $T['current']['image_size'][1] . ', ' . $T['current']['file_size']); ?></a>
<?php } ?>
            </div>
          </td>
        </tr>

        <tr>
          <td width="30%" align="left" valign="bottom">
            <div class="images">
<?php
if (is_array($T['prev'])) {
  if ($T['prev']['is_movie']) {
    print('<a style="text-decoration: none;" href="' . $T['prev']['view_url'] . '"><img src="' . $T['template_url'] . '/movie.png' . '" alt="previous" /><br />&lt; previous</a>');
  } else {
    print('<a style="text-decoration: none;" href="' . $T['prev']['view_url'] . '"><img src="' . $T['prev']['thumb_url'] . '" alt="previous" /><br />&lt; previous</a>');
  }
} else {
  print("&nbsp;");
}
?>
            </div>
          </td>
          <td width="40%" align="center" valign="bottom">
            <p>
<?php
if (is_array($T['current']['exif_data'])) {
  // there are hundreds of exif tags; this is just a sample based images from a Canon S30
  // see exif.php for more details
  //
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['IFD0']['Model']) . "<br />");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['IFD0']['DateTime']) . "<br />");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['ExposureTime']) . " - ");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['FNumber']) . " - ");
  //print(eregi_replace('[^a-z0-9 /-_]', '', $T['current']['exif_data']['SubIFD']['Flash']) . "<br />");

  //print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['IFD0']['Model']) . "<br />");
  //print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['IFD0']['DateTime']) . "<br />");
  //print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['ExposureTime']) . " - ");
  //print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['FNumber']) . " - ");
  //print(preg_replace('/[^a-z0-9 /-_]/', '', $T['current']['exif_data']['SubIFD']['Flash']) . "<br />");

  print(($T['current']['exif_data']['IFD0']['Model']) . "<br />");
  print(($T['current']['exif_data']['IFD0']['DateTime']) . "<br />");
  print(($T['current']['exif_data']['SubIFD']['ExposureTime']) . " - ");
  print(($T['current']['exif_data']['SubIFD']['FNumber']) . " - ");
  print(($T['current']['exif_data']['SubIFD']['Flash']) . "<br />");
}
?>
            </p>
          </td>
          <td width="30%" align="right" valign="bottom">
            <div class="images">
<?php
if (is_array($T['next'])) {
  if ($T['next']['is_movie']) {
    print('<a style="text-decoration: none;" href="' . $T['next']['view_url'] . '"><img src="' . $T['template_url'] . '/movie.png' . '" alt="next" /><br />next &gt;</a>');
  } else {
    print('<a style="text-decoration: none;" href="' . $T['next']['view_url'] . '"><img src="' . $T['next']['thumb_url'] . '" alt="next" /><br />next &gt;</a>');
  }  
} else {
  print("&nbsp;");
}
?>
            </div>
          </td>
        </tr>
      </table>

    </td>
  </tr>
</table>
