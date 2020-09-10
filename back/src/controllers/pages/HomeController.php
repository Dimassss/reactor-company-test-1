<?php

namespace pages;

class HomeController extends \Controller{
  public function render(){
    echo \Template::instance()->render('/pages/main/home.page.htm');
  }
}

?>
