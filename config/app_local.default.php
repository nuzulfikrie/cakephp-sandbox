<?php

return [
	//'debug' => true,

	'Security' => [
		'salt' => '9ebcb009bb3f8ebe43a4addc3fc1c1f310c50520',
	],

	'Datasources' => [
		'default' => [
			'host' => env('DB_HOST', 'localhost'),
			'username' => env('DB_USERNAME', 'root'),
			'database' => env('DB_DATABASE', 'cake_sandbox'),
			'password' => env('DB_PASSWORD', ''),
			'url' => getenv('DB_DSN') ?: null,
		],

		/**
		 * The test connection is used during the test suite.
		 */
		'test' => [
			'host' => 'localhost',
			'username' => 'root',
			'password' => '',
			'database' => 'cake_test',
		],
	],

	'Config' => [
		'adminEmail' => '',
	],

	'Email' => [
		'default' => [
			'from' => '',
		],
	],
	'EmailTransport' => [
		'default' => [
			'host' => '',
			'username' => '',
			'password' => '',
		],
	],

	'FormConfig' => [
		'novalidate' => true,
		'templates' => [
			'dateWidget' => '{{day}}{{month}}{{year}}{{hour}}{{minute}}{{second}}{{meridian}}',
		],
	],

	'Whoops' => [
		'editor' => true,
		'serverBasePath' => '/home/vagrant/Apps/sandbox.local',
		'userBasePath' => '',
	],
];
