<?php
ini_set('display_errors', 1);
require_once('/var/www/fa/asp/cake/vendors/simpletest/autorun.php');
require_once('Log.php');

class TestOfLogging extends UnitTestCase {
    function testLog() {
        $this->assertTrue(true);
        $this->assertTrue(false);
    }
}
