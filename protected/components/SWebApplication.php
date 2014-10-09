<?php

/**
 * Main application class.
 *
 * @package app.components
 *
 * @property SSystemSettings $settings
 * @property SCurrencyManager $currency
 * @property SCart $cart
 * @property SLanguageManager $languageManager
 */
class SWebApplication extends CWebApplication
{

	private $_theme=null;

	/**
	 * @param null $config
	 */
	public function __construct($config=null)
	{
		parent::__construct($config);
	}

	/**
	 * Initialize component
	 */
	public function init()
	{
		$this->setSystemModules();
		parent::init();
	}

	/**
	 * Set enabled system modules to enable url access.
	 */
	protected function setSystemModules()
	{
		// Enable installed modules
		$modules = SystemModules::getEnabled();

		if($modules)
		{
			foreach($modules as $module)
				$this->setModules(array($module->name));
		}
	}

	/**
	 * @return CTheme
	 */
	public function getTheme()
	{
		if($this->_theme===null)
			$this->_theme=$this->getThemeManager()->getTheme(Yii::app()->settings->get('core', 'theme'));
		return $this->_theme;
	}
    
    
    public function isHome($default_controller = 'index', $default_action = 'index', $default_module = 'store')
    {
        $controller = Yii::app()->getController();
        
        return $isHome = (
            ($controller->id === $default_controller) && 
            ($controller->action->id === $default_action) &&
            ($controller->module->id === $default_module)
        ) ? true : false;
    }
}