<?php

namespace dao;

class UrlDAO{
  protected $db;

  public function __construct($db){
    $this->db = $db;
  }

  private function doesUrlExist($url){
    $file_headers = @get_headers($url);
    return ($file_headers && $file_headers[0] !== 'HTTP/1.1 404 Not Found');
  }

  public function getInfoByURL($url){
    $response = [];
    $response['urlExists'] = $this->doesUrlExist($url);
    $response['info'] = [];

    if($response['urlExists']){
      $urlMap = (new \model\UrlMapModel($this->db))->getByURL($url);

      if($urlMap['id'] == null) {
        $response['minCode'] = -1;
      } else {
        $response['minCode'] = +$urlMap['id'];
        $response['info'] = (new \model\UrlInfoModel($this->db))->getByMinCode($urlMap['id']);
      }
    }else{
      $response['minCode'] = -1;
    }

    return $response;
  }

  public function getInfoByMinCode($minCode){
    $response = [];
    $urlMap = (new \model\UrlMapModel($this->db))->getByMinCode($minCode);

    if($urlMap['id'] == null) {
      $response['minCode'] = -1;
      $response['info'] = [];
      $response['urlExists'] = false;
    } else {
      $response['minCode'] = +$urlMap['id'];
      $response['url'] = $urlMap['url'];
      $response['date'] = $urlMap['date'];
      $response['info'] = (new \model\UrlInfoModel($this->db))->getByMinCode($urlMap['id']);
      $response['urlExists'] = true;
    }

    return $response;
  }

  public function saveURL($url, $date){
    $urlMapper = new \model\UrlMapModel($this->db);
    $urlMap = $urlMapper->getByURL($url);
    if($urlMap != null) return $urlMap['id'];

    $id = $urlMapper->create([
      'url' => $url,
      'date' => $date
    ]);

    return $id;
  }
}

?>
