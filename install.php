<?php 

include('./wp-config.php');
include('./wp-admin/includes/upgrade.php');

if(!is_blog_installed()){
  wp_install ( "Academics for the Future of Science", "test", "test@save-science.org", true, '', 'test' );
} else {
  echo "\nWordpress already installed! Skipping wp_install.\n";
}

?>
