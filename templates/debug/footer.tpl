<?php
//
// Scry - Simple PHP Photo Album
// Copyright 2004 James Byers <jbyers@users.sf.net>
// http://scry.org
//
// Scry is distributed under a BSD License.  See LICENSE for details.
//
// $Id: footer.tpl,v 1.8 2004/10/02 01:33:40 jbyers Exp $
//
// Note: debug is a specialized template set designed for debugging
//       purposes. This template does not display any images.
//
?>

<p>
Debug variables:

<pre>
<?php

print(htmlentities(implode("\n", $DEBUG_MESSAGES)));

?>
</pre>
