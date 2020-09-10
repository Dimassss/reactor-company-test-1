<?php

namespace model;

class UrlInfoModel extends \Model{
	/*
	* @id: int
	* @minCode: int
	* @info: string
	*/
	public function __construct(\DB\SQL $db){
		parent::__construct($db, 'url_info');
	}

	public function create($minCode){
		//saving globals to get more info. This is needed to make more staff on website in the future
		$new_array = $GLOBALS;
		$index = array_search('GLOBALS',array_keys($new_array));

		$this->copyfrom([
			'info' => json_encode(array_splice($new_array, $index, $index-1)),
			'minCode' => +$minCode
		]);
		$this->save();
		return $this->id;
	}

  public function delete($minCode){
		$this->erase(['minCode = ?', +$minCode]);
	}

  public function getByMinCode($minCode){
		$records = $this->find(['minCode = ?', +$minCode]);
		return $this->castArray($records);
	}
}

?>
