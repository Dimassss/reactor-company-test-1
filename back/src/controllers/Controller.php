<?php

class Controller{

  protected $f3;
  protected $db;
  protected $log;

	public function __construct(){
    $f3 = Base::instance();
    $log = new Log('errors.log');

		$this->f3 = $f3;
    $this->log = $log;

    try{
			$db = new DB\SQL(
					$f3->get('devdb'),
					$f3->get('devdbusername'),
					$f3->get('devdbpassword'),
					array(\PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION)
			);

			$this->db = $db;

      $urlMap = new \model\UrlMapModel($db);
      $urlMap->cleanOldRecords();
		}catch(Exception $e){
      $error_code = ''.md5($e).rand();

      $log->write('');
      $log->write('Error code: ' . $error_code);
			$log->write($e);
		}
	}

}

?>
