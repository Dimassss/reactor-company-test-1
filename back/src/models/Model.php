<?php

class Model extends DB\SQL\Mapper{
	protected $db;

	public function __construct(DB\SQL $db, $tableName){
		parent::__construct($db, $tableName);
		$this->db;
	}

	protected function castArray($mappersArr){
		$records = [];
		foreach ($mappersArr as $value) {
			$records[] = $value->cast();
		}
		return $records;
	}
}

?>
