<?php

namespace Sandbox\Test\TestCase\Controller;

use Shim\TestSuite\IntegrationTestCase;

/**
 * App\Controller\BootstrapController Test Case
 *
 * @uses \Sandbox\Controller\MenuController
 */
class MenuControllerTest extends IntegrationTestCase {

	/**
	 * @var array
	 */
	protected $fixtures = [
		'plugin.Sandbox.SandboxCategories',
	];

	/**
	 * @return void
	 */
	public function testIndex() {
		$this->skipIf(true, 'FIXME');

		$this->get(['plugin' => 'Sandbox', 'controller' => 'Menu', 'action' => 'index']);

		$this->assertResponseCode(200);
		$this->assertNoRedirect();
	}

}
