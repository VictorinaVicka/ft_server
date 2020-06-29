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
define( 'DB_NAME', 'serv' );

/** MySQL database username */
define( 'DB_USER', 'tfarenga' );

/** MySQL database password */
define( 'DB_PASSWORD', 'tfarenga' );

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
define('AUTH_KEY',         '$n#VPaIo5|zQ{b:To.}=N]]fs1q-f[1n6A_hSux5|aKCGTT!=)xu).+LF-bWE5[r');
define('SECURE_AUTH_KEY',  'gGBq1!K##MKYoKgw94I1kcIiKk!sAY>PTb-I;`5JKy$0;rx%2{e8>5C;Y,c+hZ55');
define('LOGGED_IN_KEY',    '2-1x64Y^D+;-8qz(ii*b|f]yY<E:<(R!w4%So|~.+3 M,ckj.s(KbH}!$sE=LfZO');
define('NONCE_KEY',        '5W/c_bRq,kfqJ;Ru.mdS }iIt`ZTu@q8HJ( Xzzt:d`$+9wQkwE-:[16*EexrcuS');
define('AUTH_SALT',        'c~&Gob _9q{$v1l{V#`;o=]y_AwRkupmRM) ~iw0,2kJcl06-|4d|B=}vo}0h$]m');
define('SECURE_AUTH_SALT', 'NNC6SL{ftG|W(=RaKJec|tc_f8jQB@#YW`b<T*YpJ10|;rCJ+gSe9!ZM3Lg|mZ(f');
define('LOGGED_IN_SALT',   'wMh.zbb$&NXz1MWwxpqDwyP>`u dgg6hu-~>7ydxxnz|o1/+lRdoIkuRl8?#|)bk');
define('NONCE_SALT',       'MLDy3.ie5xf?; =as.$ wfdR9h0z+%az7~,GN^]^_KQ`wlbw+x_`}Pf]dc`Iv8l%');

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __FILE__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

?>