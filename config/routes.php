<?php
use Cake\Core\Plugin;
use Cake\Routing\Router;

/**
 * The default class to use for all routes
 *
 * The following route classes are supplied with CakePHP and are appropriate
 * to set as the default:
 *
 * - Route
 * - InflectedRoute
 * - DashedRoute
 *
 * If no call is made to `Router::defaultRouteClass`, the class used is
 * `Route` (`Cake\Routing\Route\Route`)
 *
 * Note that `Route` does not do any inflections on URLs which will result in
 * inconsistently cased URLs when used with `:plugin`, `:controller` and
 * `:action` markers.
 *
 */
Router::defaultRouteClass('InflectedRoute');

Router::scope('/', function ($routes) {
/**
 * Here, we are connecting '/' (base path) to a controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, src/Template/Pages/home.ctp)...
 */
	$routes->connect('/', array('controller' => 'Overview', 'action' => 'index'));

	$routes->connect('/register', array('controller' => 'Account', 'action' => 'register'));
	$routes->connect('/login', array('controller' => 'Account', 'action' => 'login'));
	$routes->connect('/logout', array('controller' => 'Account', 'action' => 'logout'));

	//route to switch locale
	//$routes->connect('/lang/*', array('controller' => 'p28n', 'action' => 'change'));

	$routes->connect('/admin', array('admin' => 'admin', 'controller' => 'Overview', 'action' => 'index'));

	//$routes->connect('/translate', array('plugin' => 'translate', 'controller' => 'translate_groups', 'action' => 'overview'));

/**
 * ...and connect the rest of 'Pages' controller's URLs.
 */
	$routes->connect('/pages/*', ['controller' => 'Pages', 'action' => 'display']);

/**
 * Connect catchall routes for all controllers.
 *
 * Using the argument `InflectedRoute`, the `fallbacks` method is a shortcut for
 *    `$routes->connect('/:controller', ['action' => 'index'], ['routeClass' => 'InflectedRoute']);`
 *    `$routes->connect('/:controller/:action/*', [], ['routeClass' => 'InflectedRoute']);`
 *
 * Any route class can be used with this method, such as:
 * - DashedRoute
 * - InflectedRoute
 * - Route
 * - Or your own route class
 *
 * You can remove these routes once you've connected the
 * routes you want in your application.
 */
	$routes->fallbacks('InflectedRoute');
});

Router::plugin('Sandbox', function ($routes) {
	$routes->fallbacks('InflectedRoute');
});

Router::plugin('Data', function ($routes) {
	$routes->fallbacks('InflectedRoute');
});

/**
 * Load all plugin routes.  See the Plugin documentation on
 * how to customize the loading of plugin routes.
 */
Plugin::routes();