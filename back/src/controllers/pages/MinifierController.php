<?php

namespace pages;

class MinifierController extends \Controller{
  public function render(){
    echo \Template::instance()->render('/pages/main/minify.page.htm');
  }
}

?>
