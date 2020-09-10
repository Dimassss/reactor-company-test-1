<?php

namespace func;

class UrlDaoController extends \Controller{

  public function minifyUrl(){
    $post = json_decode(json_decode($this->f3->get('POST.json')));
    $url = $post->url;
    $date = $post->date;

    $urlDao = new \dao\UrlDAO($this->db);

    $id = $urlDao->saveURL($url, $date);

    echo json_encode($id);
  }

  public function getUrlInfo(){
    $post = json_decode(json_decode($this->f3->get('POST.json')));
    $url = $post->url;
    $urlDao = new \dao\UrlDAO($this->db);

    $info = $urlDao->getInfoByURL($url);

    echo json_encode($info);
  }
}

?>
