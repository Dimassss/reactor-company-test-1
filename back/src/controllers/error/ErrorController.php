<?php

namespace error;

use Controller;

class ErrorController extends Controller{

  public function onErrorPageHandler(){
    echo \Template::instance()->render('/pages/errors/error.page.htm');
  }
}

?>
