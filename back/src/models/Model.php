<?php

class Model extends DB\SQL\Mapper{
	public function __construct(DB\SQL $db, $tableName){
		parent::__construct($db, $tableName);
	}
}

?>
