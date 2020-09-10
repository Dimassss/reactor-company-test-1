<?php
namespace pages;

class UrlInfoController extends \Controller{
  public function render(){
    echo \Template::instance()->render('/pages/main/url-info.page.htm');
  }
}

?>
