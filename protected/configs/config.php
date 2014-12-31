<?php
	## show errors ###
	#error_reporting(E_ALL);
	#ini_set('display_errors','1');
	### smarty config ####
  define('SITE_ROOT', dirname(dirname(dirname(__FILE__))));
  define('FRONT_TEMPLATE_DIR', SITE_ROOT . '/view/front');
  define('FRONT_CURRENT_THEME', FRONT_TEMPLATE_DIR);
  define('ADMIN_TEMPLATE_DIR', SITE_ROOT . '/view/admin');
  define('ADMIN_CURRENT_THEME', ADMIN_TEMPLATE_DIR);
  define('COMPILE_DIR', SITE_ROOT . '/cache');
  define('PROTECTED_DIR', SITE_ROOT . '/protected/');
  define('COMPONENTS_DIR', PROTECTED_DIR . 'libs/components/');
  define('SMARTY_DIR', PROTECTED_DIR . 'libs/smarty/');
  define('SMARTY_PLUGINS', PROTECTED_DIR . 'libs/smarty_plugins');
  define('ALLOW_CHANGE_THEME', true);
  define('SITE_LANG', 'en');
  
    #### DB config ######
    define('DB_PERSISTENCY', 'true');
    define('DB_SERVER', 'localhost');
    define('DB_USERNAME', 'root');
    define('DB_PASSWORD', '');
    define('DB_DATABASE', 'barin');
    define('PDO_DSN', 'mysql:host=' . DB_SERVER . ';dbname=' . DB_DATABASE);
	
	
	### SMS Config #####
	define('URL_API' , 'http://api.payamak-panel.com');
	define('USERNAME' , '9124077897');
	define('PASSWORD' , '3755');
	define('FROM' , '10007120270229');
	
  function autoload($class) 
  {
   //echo $class;
    if($class == 'Application')
    {
        //echo $class;
        if(file_exists('protected/configs/' . $class . '.php')) 
            {
                
                require 'protected/configs/' . $class . '.php';
            }
       
    }
    else if(file_exists(COMPONENTS_DIR . 'class.' . $class . '.php'))
    {
        require COMPONENTS_DIR .'class.' . $class . '.php' ; 
        
    }
    else if(file_exists('protected/libs/smarty/sysplugins/' . $class . '.php'))
    {
        include 'protected/libs/smarty/sysplugins/' . $class . '.php';
    }
   
    else if(file_exists('protected/models/model.' . $class . '.php')){
        include 'protected/models/model.' . $class . '.php';
		
	}else if(!file_exists('protected/models/model.' . $class . '.php')){
		$class2 = strtolower($class);
   		include 'protected/models/model.' . $class2 . '.php';
		}
        else{
            echo COMPONENTS_DIR . 'class.' . $class . '.php';
        }
    
  }
  spl_autoload_register('autoload');
  require 'protected/message/msg_config.php';
  require 'protected/configs/jdf.php';
?>
