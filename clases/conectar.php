<?php
//Configuracion de la conexion a base de datos
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'serviciosocial_fca_uv');
class Conexion {

        private $connection;    
    
        function __construct(){


        }
        
        public function getConexion(){
                $this->connection = mysql_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD) or die('Oops connection error -> ' . mysql_error());
                mysql_select_db(DB_DATABASE, $this->connection ) or die('Database error -> ' . mysql_error());
                return  $this->connection;
        }
        
        public function consultaSql($sql){
                $result = mysql_query($sql,$this->connection) or die(mysql_error());
                return $result;
        }
		
		public function desconectar($cs){
				
				if(empty($this->connection)){
					mysql_close($cs);
				}else{
					mysql_close($this->connection);	
				}
        		
        }

}
?>
