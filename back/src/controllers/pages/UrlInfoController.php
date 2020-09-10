<?php
namespace pages;

class UrlInfoController extends \Controller{
  public function render(){
    $this->f3->set('urlInfo', '');
    echo \Template::instance()->render('/pages/main/url-info.page.htm');
  }

  public function renderWithUrl(){
    $minCode = $this->f3->get('PARAMS.url');
    $urlDao = new \dao\UrlDAO($this->db);
    $data = $urlDao->getInfoByMinCode($minCode);

    $this->f3->set('urlInfo', base64_encode(json_encode($data)));

    echo \Template::instance()->render('/pages/main/url-info.page.htm');
  }
}

?>
