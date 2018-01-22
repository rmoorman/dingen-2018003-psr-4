<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Dingen\Dingen;

class DingenController {
  public function yea() {
    return new Response(var_export(Dingen::yea()));
  }

  public function nay() {
    return new Response(var_export(Dingen::nay()));
  }
}
