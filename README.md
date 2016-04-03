# Setting up development environment

- [Get docker installed](https://docs.docker.com/engine/installation/).
- The [Docker toolbox link](https://www.docker.com/products/docker-toolbox) may be helpful.
- You should be able to run `docker ps` after a successful installation. If you have trouble, try reinstalling VirtualBox. 
- If you have trouble getting VirtualBox to assign `docker-machine` an ip, run this command:
```
$ docker-machine rm default
$ docker-machine create --driver virtualbox default
```
- Run this command, and then add to your bash profile: 
```
eval "$(docker-machine env default)"
```
- Run `docker-compose up`

# Installing wordpress

- Run `docker-machine ip` to get the ip of docker / virtual box ip. Go to IP:8000 (the ip address from `docker-machine ip`, followed by port 8000)
- Pick some sane / easy to remember development values, like `test` / `test` for a username and password.

# Customizing theme

- Theme files are in `wp-content/themes/save-science`. You can activate this theme from `IP:wp-admin/themes.php`
- This represents the absolute bare minimum for a working theme:

style.css
```
/*   
Theme Name: Academics for the Future of Science
Description: Starting theme
Author: Test
Version: 1.0
*/
```

index.php
```
<html>
<head><?php wp_head(); ?></head>
<body>
<?php
if ( have_posts() ) {
    while ( have_posts() ) {
        the_post();
        the_title( '<h3>', '</h3>' );
        the_content();
    }
}
wp_footer();
?>
</body>
</html>
```

The assumption is that the site will quickly evolve beyond this bare minimum through development of a custom theme.

# TODO

- A manifest file for plugin dependencies / installations.
- Persistence for development data (i.e. so developers can share data), or a manifest for shared data in development (i.e. site titles, pages to include, etc.)
