<?php

namespace pages;

class MinifiedURLController extends \Controller{
  public function render(){
    $minCode = $this->f3->get('PARAMS.url');

    $urlMap = (new \model\UrlMapModel($this->db))->getByMinCode(+$minCode);
    if($urlMap['id'] !== null){
      (new \model\UrlInfoModel($this->db))->create(+$minCode);
      header('Location: ' . $urlMap['url']);
      die();
    } else {
      throw new Exception('Current URL doesnt exists');
    }
  }
}

?>
