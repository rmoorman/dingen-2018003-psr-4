<?php

use Dingen\Dingen;
use PHPUnit\Framework\TestCase;

class DingenTest extends TestCase {
  public function testYay() {
    $this->assertEquals(true, Dingen::yea());
  }
  public function testNay() {
    $this->assertEquals(false, Dingen::nay());
  }
}
