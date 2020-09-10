<?php

namespace model;

class UrlMapModel extends \Model{
	/*
	* @id: int
	* url: text
	* date: 'YYYY-MM-DD'
	*/

	public function __construct(\DB\SQL $db){
		parent::__construct($db, 'url_map');
	}

  public function create($model){
		$this->copyfrom($model);
		$this->save();
		return $this->id;
	}

  public function delete($id){
		$this->erase(['id = ?', +$id]);
		(new UrlInfoModel($this->db))->delete($id);
	}

  public function getByMinCode($id){
		$this->load(['id = ?', +$id]);
		return $this->cast();
	}

  public function getByUrl($url){
		$this->load(['url = ?', $url]);
		if($this->id == null) return null;
		return $this->cast();
	}
}

?>
