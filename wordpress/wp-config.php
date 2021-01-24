<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I|H(7{WYL7ZMzEp2!%_O&nQUh)q+X/LL-=-a;~(oll?uUsr2(?j~tQ*{Dl!n0B</');
define('SECURE_AUTH_KEY',  'txKJZJ;^a;/4<yT9X[-?d/~]M/8$73U{Pkj2%{&CR!}q!A&pnAZS :|G>yYL,jpi');
define('LOGGED_IN_KEY',    'vYw5Sl{I0C:zy7T*uxB1as^|JcW{4C-Gz[D-cMK~hfzI.31~TB2{&5j@-VPd[jUf');
define('NONCE_KEY',        'd5;L&1Ef#N4^``_=[a#.6?1S!bGAQUAH:9%R>I|dw#x=+Zs^|?CxnPQx*:_|rUf{');
define('AUTH_SALT',        '88d--j)gEAO-@_hwf%:&H%aJ:#q2C%%TBv|L01 l<W24*aw]hokhZs%`XQdIEs%Y');
define('SECURE_AUTH_SALT', 'lD?5s|!a7Lh2;vZV|E/6/G!BX3B7|N*-|oxJh+9Oaugu/D*zq17ppA@L+aZ{J[uO');
define('LOGGED_IN_SALT',   'PV6WLmjhXSMvyqSvx&5tR~-jL(uG?Y`xTiLIS&Q(4&H82&9F|K#(FE9-T?%|G?Ri');
define('NONCE_SALT',       '|Pw2&:c5$<y6vu:kc*gtE<3-m3EC.ot+nPx.`Sn,/!]RSNI1o;oy8(cM]lGH2LWc');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', '/tmp/wp-errors.log' );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
