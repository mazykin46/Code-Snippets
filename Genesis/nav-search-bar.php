<?php 

// Add search form to secondary navigation in genesis.
add_filter( 'wp_nav_menu_items', 'g_search_right_nav', 10, 2 );
function g_search_right_nav( $menu, stdClass $args ){
        if ( 'secondary' != $args->theme_location )
                return $menu;
        
               if( genesis_get_option( 'nav_extras' ) )
                return $menu;
        
        $menu .= sprintf( '<li class="secondary-search">%s</li>', __( genesis_search_form( $echo ) ) );
        return $menu;  
}


?>