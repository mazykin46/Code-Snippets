<?php

// Customize search button text
add_filter('genesis_search_button_text', 'custom_search_button_text');
function custom_search_button_text( $text ) {
    if ( is_404() && in_the_loop() ) {
        return esc_attr( 'Search' );
    }
    else {
        return esc_attr( '&#xf179;' );
    }
}

?>