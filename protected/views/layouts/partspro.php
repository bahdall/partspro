<?php

	Yii::import('application.modules.store.components.SCompareProducts');
    
	Yii::import('application.modules.store.models.wishlist.StoreWishlist');

	$assetsManager = Yii::app()->clientScript;
	$assetsManager->registerCoreScript('jquery');

	// jGrowl notifications
	Yii::import('ext.jgrowl.Jgrowl');
	Jgrowl::register();
    
    $assetsPath = Yii::app()->theme->baseUrl."/assets/";
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo CHtml::encode($this->pageTitle) ?></title>
	<meta charset="UTF-8"/>
	<meta name="description" content="<?php echo CHtml::encode($this->pageDescription) ?>">
	<meta name="keywords" content="<?php echo CHtml::encode($this->pageKeywords) ?>">
	
    
    <!-- Important Owl stylesheet -->
    <link rel="stylesheet" href="<?=$assetsPath?>scripts/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="<?=$assetsPath?>scripts/owl-carousel/owl.theme.css">
    <!-- Custom select stylesheet -->
    <link rel="stylesheet" href="<?=$assetsPath?>bower_components/bootstrap-select/dist/css/bootstrap-select.css">

    <!-- build:css({.tmp,app}) styles/main.css -->
    <link rel="stylesheet" href="/html/app/styles/main.css">
    <!-- endbuild -->

    <!-- build:js scripts/vendor/modernizr.js -->
    <script src="<?=$assetsPath?>bower_components/modernizr/modernizr.js"></script>
    <script src="<?=$assetsPath?>scripts/jquery.carousellite.js"></script>
    <!-- endbuild -->

    <!-- build:js scripts/vendor.js -->
    <!-- bower:js -->
    
    <!-- endbower -->
    <!-- endbuild -->
    
    <!-- Include js plugin -->
    <script src="<?=$assetsPath?>scripts/owl-carousel/owl.carousel.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>

    <!-- build:js scripts/plugins.js -->
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/affix.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/alert.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/dropdown.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tooltip.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/transition.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/button.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/popover.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/carousel.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/scrollspy.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/collapse.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tab.js"></script>
    <!-- endbuild -->
    <script type="text/javascript" src="<?=$assetsPath?>scripts/common.js"></script>
    <!-- build:js scripts/main.js -->
    <script src="/html/app/scripts/main.js"></script>
    <!-- endbuild -->
    
    <!-- Include map region plugin -->
    <script src="https://www.gstatic.com/swiffy/v7.0/runtime.js"></script>
    <script src="<?=$assetsPath?>scripts/map.js"></script>
    
</head>
<body class='p_main'>  
      
        <div class='container-fluid l_header'>
            <div class='row b_header-top _border-bottom-dashed'>

                <div class='container-fixed'>
                  <div class='row'>

                    <ul class='list-inline b_head'>

                      <li class='i_head-item'>

                        <a href="#" class='_link-unstyled' data-toggle="modal" data-target="#feedback">
                          <img src="<?=$assetsPath?>images/icon-phone.png" alt="">
                          <span class='_underline-dotted'><?=Yii::t('core','Обратный звонок')?></span>
                        </a>

                      </li>

                      <li class='i_head-item_country'>

                        <a href="#" class='_link-unstyled' data-toggle="modal" data-target="#region"> 
                          <img src="<?=$assetsPath?>images/icon-map.png" alt="">
                          <span class='_underline-dotted'><?=Yii::t('core','Уточнить страну')?></span>
                        </a>
                        
                      </li>

                      <li class='i_head-item_phone'>
                            +7 (123) <span class='text-yellow'>456-78-90</span>
                      </li>   
                      
                      <?
                      $activeLang = Yii::app()->languageManager->getActive();
                      ?>                                 

                      <li class='i_head-item_languages '>
                        <?foreach( Yii::app()->languageManager->getLanguages() as $langItem):?>
                        <a href="/<?=!$langItem->default ? $langItem->code : ""?>" class='<?=$activeLang->id == $langItem->id ? "active" : ""?> _underline-dotted'><?=$langItem->name?></a>    
                        <?endforeach;?>     
                      </li>

                      <li class='il_head-item_buttons dropdown'>                          
                          <a href="" class='i_header-button' id="login" data-toggle="dropdown">
                              <img src="<?=$assetsPath?>images/icon-user.png" alt="">
                          </a>

                          <ul class="dropdown-menu" <?=!Yii::app()->user->isGuest ? 'style="min-width: 150px"' : ''?> role="menu" aria-labelledby="login">

                            <?php if(Yii::app()->user->isGuest): ?>
                                <?
                                Yii::import('application.modules.users.forms.UserLoginForm');
                                Yii::import('application.modules.users.*');
    		                    $model = new UserLoginForm;   
                                echo $this->renderPartial('//users/login/loginHeader', array(
                        			'model'=>$model,
                        		));
                                ?>
                            <?else:?>
                                <div class="text-right">
                                    <?php echo CHtml::link(Yii::t('core','Личный кабинет'), array('/users/profile/index'), array('class'=>'')) ?><br />
                					<?php echo CHtml::link(Yii::t('core','Мои заказы'), array('/users/profile/orders'), array('class'=>'')) ?><br />
                					<?php echo CHtml::link(Yii::t('core','Выход'), array('/users/login/logout'), array('class'=>'')) ?>
                                </div>
                            <?endif;?>
                          </ul>

                      </li>

                      <li class='il_head-item_buttons dropdown' id='cart'>                           
                        <?php echo $this->renderPartial('//orders/cart/_small_cart');?>
                      </li>

                    </ul>

                  </div>
                </div>

            </div>  
            
            <div class='container-fixed <?=(!Yii::app()->isHome()) ? "_border-bottom-dashed" : ""?>'>

              <div class='row b_header-bottom'>
                  
                <div class='b_logo'>
                    <a href="/"><img src="<?=$assetsPath?>upload/logo.png" alt="Logo"></a>
                    <h2>Продажа запасных частей</h2>
                </div>                  
                
                <div class='b_search'>
                  
                  <div class="input-group-inline">
                    <?php echo CHtml::form($this->createUrl('/store/category/search')) ?>
                    <input type="text" name="q" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-yellow" type="submit">Найти</button>
                    </span>
                    <?=CHtml::endForm()?>
                  </div>

                </div>
              

                <div class='row b_menu'>
                    <?php
                    $this->widget('zii.widgets.CMenu', array(
                        'items'=>array(
                        	array('label'=>Yii::t('core', 'О компании'), 'url'=>array('/pages/pages/view', 'url'=>'about')),
                        	array('label'=>Yii::t('core', 'Автозапчасти'), 'url'=>array('/avto-parts')),
                        	array('label'=>Yii::t('core', 'Все услуги'), 'url'=>array('/pages/pages/view', 'url'=>'services')),
                        	array('label'=>Yii::t('core', 'Новости'), 'url'=>array('/pages/pages/list', 'url'=>'news')),
                        	array('label'=>Yii::t('core', 'Контакты'), 'url'=>array('/pages/pages/view', 'url'=>'contacts')),
                            array('label'=>Yii::t('core', 'Вакансии'), 'url'=>array('/pages/pages/view', 'url'=>'vakansii')),
                        ),
                        'htmlOptions' => array('class' => 'list-inline'),
                    ));
                    ?>
                </div> 
                
                <img src="<?=$assetsPath?>images/engine_bottom.png" alt="" class='engine-top'>  
                <?if(Yii::app()->isHome()):?>              
                <img src="<?=$assetsPath?>images/engine_top.png" alt="" class='engine-bottom'> 
                <?endif;?>               
              </div>          
              

            </div>
          
            <?if(!Yii::app()->isHome()):?>
            <div class="_shadow-short block-md"></div>
            <?endif;?>
        </div>
        
        <div class='container-fluid l_content' >
            <?if( Yii::app()->isHome() ):?>
                <?php echo $content; ?>
            <?else:?>
                <div class="container-fixed">
                    <div class='row'>
                      <?php
            			$this->widget('zii.widgets.CBreadcrumbs', array(
            				'links'=>$this->breadcrumbs,
                            'tagName' => 'ol',
                            'separator' => '',
                            'inactiveLinkTemplate' => '<li class="active">{label}</li>',
                            'activeLinkTemplate' => '<li><a href="{url}">{label}</a></li>',
                            'htmlOptions' => array('class' => 'breadcrumb'),
            			));
                	  ?>
                    </div>
                    <?if($this->pageH):?>
                    <div class='row block-sm'>
                      <div class='col-xs-12'> 
        
                        <h4><strong><?=$this->pageH?></strong></h4>
        
                      </div>
                    </div>
                    <?endif;?>
                    <?php echo $content; ?>
                    <div class="_shadow-short block-xxxlg"></div>
                </div>
            <?endif;?>
        </div>

        <div class='container-fluid l_footer _bg-gray'>
          
          <div class='container-fixed'>

            <div class='row b_menu'>
                <?php
                $this->widget('zii.widgets.CMenu', array(
                    'items'=>array(
                    	array('label'=>Yii::t('core', 'О компании'), 'url'=>array('/pages/pages/view', 'url'=>'about')),
                    	array('label'=>Yii::t('core', 'Автозапчасти'), 'url'=>array('/avto-parts')),
                    	array('label'=>Yii::t('core', 'Все услуги'), 'url'=>array('/pages/pages/view', 'url'=>'services')),
                    	array('label'=>Yii::t('core', 'Новости'), 'url'=>array('/pages/pages/list', 'url'=>'news')),
                    	array('label'=>Yii::t('core', 'Контакты'), 'url'=>array('/pages/pages/view', 'url'=>'contacts')),
                        array('label'=>Yii::t('core', 'Вакансии'), 'url'=>array('/pages/pages/view', 'url'=>'vakansii')),
                    ),
                    'htmlOptions' => array('class' => 'list-inline'),
                ));
                ?>
            </div>
            
            <div class='row'>
              <hr class='divider block'>                          
            </div>

            <div class='row b_footer'>

              <div class='col-xs-4'>

                <div class='b_social'>
                    <a href="" class='i_social'>
                      <img src="<?=$assetsPath?>images/icon_fb.png" alt="">
                    </a>
                    <a href="" class='i_social'>
                      <img src="<?=$assetsPath?>images/icon_twt.png" alt="">
                    </a>
                    <a href="" class='i_social'>
                      <img src="<?=$assetsPath?>images/icon_vk.png" alt="">
                    </a>
                    <a href="" class='i_social'>
                      <img src="<?=$assetsPath?>images/icon_gg.png" alt="">
                    </a>
                </div>  

                <div class='b_address'>
                    <p>+7 (123) 456-78-90</p>
                    <p><a href="mailto:some@mail.ru">example@example.com</a></p>
                    <p> <?=Yii::t('core','address')?></p>
                </div>

              </div>

              <div class='col-xs-4'>

                <div class='b_deprecated'>
                  <?=Yii::t('core','deny_text')?>
                  <img src="<?=$assetsPath?>images/icon_deprecated.png" alt="Deprecated">  
                </div>

              </div>

              <div class='col-xs-4'>
                  
                <div class='b_search'>
                  
                  <div class="input-group-inline">
                    <?php echo CHtml::form($this->createUrl('/store/category/search')) ?>
                    <input type="text" name="q" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-yellow" type="submit"> <?=Yii::t('core','Найти')?></button>
                    </span>
                    <? echo CHtml::endForm() ?>
                    <div> <?=Yii::t('core','Например: Автозапчасти')?></div>
                  </div>

                </div>

                <div class='b_modals text-right'>
                  <p><a href="" data-toggle="modal" data-target="#feedback"> <?=Yii::t('core','Обратный звонок')?></a></p>
                  <p><a href="" data-toggle="modal" data-target="#region"> <?=Yii::t('core','Уточнить страну')?></a></p>
                </div>

              </div>

            </div>

            <div class='row'>
              <hr class='divider'>
            </div>            

            <div class='row b_footer-bottom'>

              <div class='col-xs-4'>
                  <div>2014© Parts-Pro</div>
              </div>

              <div class='col-xs-4 text-center'>
                <img src="<?=$assetsPath?>images/icon_tracker.png" alt="tracker">
              </div>

              <div class='col-xs-4 text-right'>
                <div>Разработка, создание сайта</div>
                <div><a href="http://wps.uz" target='blank'>WPS.uz</a></div>
              </div>

            </div>
  
          </div>          
        </div>
  
    <!-- </modal id='feedback'> -->
    <div class="modal fade" id='feedback'>
      <div class="modal-dialog modal-sm b_feedback">

        <div class="modal-content _bg-gray _border-bottom-dashed">

          <div class="modal-header">
            <a href="javascript:;" class="close" data-dismiss="modal"><img src="<?=$assetsPath?>images/icon_close.png" alt=""></a>
          </div>

          <div class="modal-body">
            <?
                Yii::import('feedback.models.CallbackForm');
                $model = new CallbackForm;
                
                $this->renderPartial('//feedback/default/callback', array(
        			'model'=>$model
        		));
            ?>              

          </div>              

        </div>

      </div>
    </div>
    <!-- </modal> -->
    
    <!-- </modal id='region'> -->
    <div class="modal fade" id='region'>
      <div class="modal-dialog modal-lg">

        <div class="modal-content _border-bottom-dashed b_region-map">

          <div class="modal-header">
            <a href="javascript:;" class="close" data-dismiss="modal"><img src="<?=$assetsPath?>images/icon_close.png" alt=""></a>
          </div>

          <div class="modal-body">
            
            <div id="swiffycontainer" style="width: 930px; height: 690px">
            </div>             

          </div>              

        </div>

      </div>
    </div>
    <!-- </modal> -->

   

    <!-- </modal id='order'> -->
    <div class="modal fade" id='order'>
      <div class="modal-dialog b_order">
    
        <div class="modal-content _bg-gray _border-bottom-dashed">
    
          <div class="modal-header">
            <a href="javascript:;" class="close" data-dismiss="modal"><img src="<?=$assetsPath?>images/icon_close.png" alt=""></a>
          </div>
    
          <div class="modal-body">
          
            <?
                Yii::import('feedback.models.OrderDetailForm');
                Yii::import('application.modules.feedback.FeedbackModule');
                $model = new OrderDetailForm;
                
                $this->renderPartial('//feedback/default/orderdetail', array(
        			'model'=>$model
        		));
            ?>                     
    
          </div>              
    
        </div>
    
      </div>
    </div>
    <!-- </modal> --> 
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/modal.js"></script>        
</body>
</html>