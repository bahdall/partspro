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
    <link rel="stylesheet" href="<?=$assetsPath?>styles/main.css">
    <!-- endbuild -->

    <!-- build:js scripts/vendor/modernizr.js -->
    <script src="<?=$assetsPath?>bower_components/modernizr/modernizr.js"></script>
    <!-- endbuild -->

    <!-- build:js scripts/vendor.js -->
    <!-- bower:js -->
    <script src="<?=$assetsPath?>bower_components/jquery/dist/jquery.js"></script>
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
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/modal.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/transition.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/button.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/popover.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/carousel.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/scrollspy.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/collapse.js"></script>
    <script src="<?=$assetsPath?>bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tab.js"></script>
    <!-- endbuild -->

    <!-- build:js scripts/main.js -->
    <script src="<?=$assetsPath?>scripts/main.js"></script>
    <!-- endbuild -->
    
    
</head>
<body class='p_main'>        
      
        <div class='container-fluid l_header'>
            <div class='row b_header-top _border-bottom-dashed'>

                <div class='container-fixed'>
                  <div class='row'>

                    <ul class='list-inline b_head'>

                      <li class='i_head-item'>

                        <a href="#" class='_link-unstyled'>
                          <img src="<?=$assetsPath?>images/icon-phone.png" alt="">
                          <span class='_underline-dotted'>Обратный звонок</span>
                        </a>

                      </li>

                      <li class='i_head-item_country'>

                        <a href="#" class='_link-unstyled'> 
                          <img src="<?=$assetsPath?>images/icon-map.png" alt="">
                          <span class='_underline-dotted'>Уточнить страну</span>
                        </a>
                        
                      </li>

                      <li class='i_head-item_phone'>
                            +7 (123) <span class='text-yellow'>456-78-90</span>
                      </li>                                    

                      <li class='i_head-item_languages '>
                        <a href="#" class='_underline-dotted'>Рус</a>                          
                        <a href="#" class='active _underline-dotted'>Eng</a>                          
                        <a href="#" class='_underline-dotted'>Kz</a>                          
                      </li>

                      <li class='il_head-item_buttons dropdown'>                          
                          <a href="" class='i_header-button' id="login" data-toggle="dropdown">
                              <img src="<?=$assetsPath?>images/icon-user.png" alt="">
                          </a>

                          <ul class="dropdown-menu" role="menu" aria-labelledby="login">

                            <form role="form" action='/search'>
                              
                              <div class="form-group">
                                <label for="exampleInputEmail1">Логин</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                              </div>

                              <div class="form-group">
                                <label for="exampleInputPassword1">Пароль</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                              </div>

                              <div class='form-group'>
                                <a href="" class='text-red'>Забыли пароль?</a>  
                              </div>                   
                            
                              <div class='form-group'>
                                  <button type="submit" class="btn btn-yellow">Войти</button>
                                  <a href='#' class="btn btn-yellow">Регистрация</a>
                               </div>

                            </form>
                          </ul>

                      </li>

                      <li class='il_head-item_buttons dropdown'> 

                          <a href="" class='i_header-button i_cart-button' id="cart" data-toggle="dropdown">
                            <img src="<?=$assetsPath?>images/icon-cart.png" alt="">
                            <span class='label_products round' id='products_qty'>3</span>  
                          </a>
                        
                           <ul class="dropdown-menu b_cart" role="menu" aria-labelledby="cart" id='shop-cart'>

                                <li class='i_cart-item'> 
                                    <img src="<?=$assetsPath?>upload/cart-1.png" alt="">
                                    <div class='i_cart-text'>
                                        <h5>Выхлопная труба</h5>
                                        <h5>Nissan RSX</h5>                                        
                                        <strong>127 500 р.</strong>
                                    </div>
                                    <div class='i_cart-control'>
                                        <input type="text" class='input-square' value='1'>
                                        <a href="" class=''>
                                          <img src="<?=$assetsPath?>images/icon_close.png" alt="">
                                        </a>
                                    </div>
                                    
                                </li>
                                <li role="presentation" class="divider"></li>
                                <li class='i_cart-item'> 
                                    <img src="<?=$assetsPath?>upload/cart-2.png" alt="">
                                    <div class='i_cart-text'>
                                        <h5>Колодки BMW Z4</h5>                                        
                                        <strong>183 500 р.</strong>
                                    </div>
                                    <div class='i_cart-control'>
                                        <input type="text" class='input-square' value='1'>
                                        <a href="" class=''>
                                          <img src="<?=$assetsPath?>images/icon_close.png" alt="">
                                        </a>
                                    </div>
                                </li>
                                <li role="presentation" class="divider"></li>
                                <li class='i_cart-item'> 
                                    <img src="<?=$assetsPath?>upload/cart-3.png" alt="">
                                   <div class='i_cart-text'>
                                        <h5>Фильтр l200</h5>
                                        <strong>220 000 р.</strong>
                                    </div>
                                    <div class='i_cart-control'>
                                        <input type="text" class='input-square' value='1'>
                                        <a href="" class=''>
                                          <img src="<?=$assetsPath?>images/icon_close.png" alt="">
                                        </a>
                                    </div>
                                </li>

                                <li class='i_cart-item_sum'>
                                  <div class='pull-right'>
                                    Итого: <strong class='sum'><span>520 000</span> р.</strong>
                                    <button class='btn btn-yellow'>Оформить</button>
                                  </div>
                                </li>
                
                          </ul>

                      </li>

                    </ul>

                  </div>
                </div>

            </div>  
            
            <div class='container-fixed'>

              <div class='row b_header-bottom'>
                  
                <div class='b_logo'>
                    <img src="<?=$assetsPath?>upload/logo.png" alt="Logo">
                    <h2>Продажа запасных частей</h2>
                </div>                  
                
                <div class='b_search'>
                  
                  <div class="input-group-inline">

                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-yellow" type="button">Найти</button>
                    </span>

                  </div>

                </div>
              

                <div class='row b_menu'>
                    <?php
                    $this->widget('zii.widgets.CMenu', array(
                    	'items'=>array(
                    		array('label'=>Yii::t('core', 'Помощь'), 'url'=>array('/pages/pages/view', 'url'=>'help')),
                    		array('label'=>Yii::t('core', 'Как сделать заказ'), 'url'=>array('/pages/pages/view', 'url'=>'how-to-create-order')),
                    		array('label'=>Yii::t('core', 'Гарантия'), 'url'=>array('/pages/pages/view', 'url'=>'garantiya')),
                    		array('label'=>Yii::t('core', 'Доставка и оплата'), 'url'=>array('/pages/pages/view', 'url'=>'dostavka-i-oplata')),
                    		array('label'=>Yii::t('core', 'Обратная связь'), 'url'=>array('/feedback/default/index')),
                    	),
                        'htmlOptions' => array('class' => 'list-inline'),
                    ));
                    ?>
                </div> 
                <img src="<?=$assetsPath?>images/engine_bottom.png" alt="" class='engine-top'>                
                <img src="<?=$assetsPath?>images/engine_top.png" alt="" class='engine-bottom'>                
              </div>          
              

            </div>
          

        </div>

        <div class='container-fluid l_content' >
            
            <div class='row b_services _bg-gray _border-bottom-dashed'>

                <div class='container-fixed'>
            
                  <div class='b_heading'>
                    <h1 class='i_heading i_heading-yellow'>Наши услуги</h1>      
                  </div>                

                  <div class='row'>
                    <div class='b_services-inner'>

                      <div class='bl_service-icon'>
                        <div class='img'>
                          <img src="<?=$assetsPath?>upload/service_car.png" alt="door">
                        </div>
                        <div class='i_service-link'>
                          <a href="">Продажа авто</a>
                        </div>
                      </div>

                      <div class='bl_service-icon active'>
                        <div class='img'>
                          <img src="<?=$assetsPath?>upload/service_door.png" alt="door">
                        </div>
                        <div class='i_service-link'>
                          <a href="">Автозапчасти</a>
                        </div>
                      </div>

                      <div class='bl_service-icon'>
                        <div class='img'>
                          <img src="<?=$assetsPath?>upload/service_money.png" alt="door">
                        </div>
                        <div class='i_service-link'>
                          <a href="">Выкуп авто</a>
                        </div>
                      </div>

                      <div class='bl_service-icon'>
                        <div class='img'>
                          <img src="<?=$assetsPath?>upload/service_helmet.png" alt="door">
                        </div>
                        <div class='i_service-link'>
                          <a href="">Аргон сварка</a>
                        </div>
                      </div>

                      <div class='bl_service-icon'>
                        <div class='img'>
                          <img src="<?=$assetsPath?>upload/service_evacuation.png" alt="door">
                        </div>
                        <div class='i_service-link'>
                          <a href="">Эвакуатор</a>
                        </div>
                      </div>

                    </div>
                  </div>
                  
                  

                </div>

            </div>
            <div class='_shadow _margin'></div>

            <div class='container-fixed'>
              <div class="b_tab _bg-gray _border-bottom-dashed">

              <div class='row'>
               
                  <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li class="active">
                      <a href="#home" role="tab" data-toggle="tab" class='btn'>Автозапчасти</a>
                      <span class='round-caret'>
                        <span class="caret"></span>
                      </span>
                    </li>
                    <li>
                      <a href="#profile" role="tab" data-toggle="tab" class='btn'>Грузовые авто</a>
                      <span class='round-caret'>
                        <span class="caret"></span>
                      </span>
                    </li>
                    <li>
                      <a href="#profile" role="tab" data-toggle="tab" class='btn'>Легковые авто</a>
                      <span class='round-caret'>
                        <span class="caret"></span>
                      </span>
                    </li>
                    <li>
                      <a href="#profile" role="tab" data-toggle="tab" class='btn'>Заказать деталь</a>
                      <span class='round-caret'>
                        <span class="caret"></span>
                      </span>
                    </li>
                  </ul>

                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="home">

                      <form name='filter'>

                        <div class='row block'>
                          <div class='col-xs-8 center-block'>
                            
                            <div class="input-group-inline">

                              <input type="text" class="form-control">                            
                              <span class="input-group-btn">
                                <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                              </span>                          

                            </div>                                

                          </div>
                        </div>
                        <div class='row block-sm'>
                          
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1" >Марка:</label>                              
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите марку</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>

                            </div>
                          </div>
                          <div class='col-xs-3 col-xs-offset-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Тип кузова:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1">Тип КПП:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип КПП</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                              
                            </div>
                          </div>  
                        </div>
                        <div class='row block'>
                           
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div>                            

                          </div>

                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Год выпуска:</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                          <div class='col-xs-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Состояние:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                            
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                        </div>

                        <div class='row'>

                          <div class='col-xs-6 center-block text-center'>

                            <div class='b_btn-show'>
                              <button class='btn btn-show'>
                                <span class='label-black-bordered'>18+</span>
                                Показать
                              </button>                              
                            </div>                            

                          </div>                          

                        </div>
                      </form> 

                    </div>
                      
                    <div class="tab-pane fade" id="profile">
                       <form name='filter'>

                        <div class='row block'>
                          <div class='col-xs-8 center-block'>
                            
                            <div class="input-group-inline">

                              <input type="text" class="form-control">                            
                              <span class="input-group-btn">
                                <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                              </span>                          

                            </div>                                

                          </div>
                        </div>
                        <div class='row block-sm'>
                          
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1" >Марка:</label>                              
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите марку</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>

                            </div>
                          </div>
                          <div class='col-xs-3 col-xs-offset-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Тип кузова:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1">Тип КПП:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип КПП</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                              
                            </div>
                          </div>  
                        </div>
                        <div class='row block'>
                           
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div>                            

                          </div>

                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Год выпуска:</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                          <div class='col-xs-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Состояние:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                            
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                        </div>

                        <div class='row'>

                          <div class='col-xs-6 center-block text-center'>

                            <div class='b_btn-show'>
                              <button class='btn btn-show'>
                                <span class='label-black-bordered'>18+</span>
                                Показать
                              </button>                              
                            </div>                            

                          </div>                          

                        </div>
                      </form> 
                    </div>
                    <div class="tab-pane fade" id="dropdown1">
                       <form name='filter'>

                        <div class='row block'>
                          <div class='col-xs-8 center-block'>
                            
                            <div class="input-group-inline">

                              <input type="text" class="form-control">                            
                              <span class="input-group-btn">
                                <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                              </span>                          

                            </div>                                

                          </div>
                        </div>
                        <div class='row block-sm'>
                          
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1" >Марка:</label>                              
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите марку</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>

                            </div>
                          </div>
                          <div class='col-xs-3 col-xs-offset-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Тип кузова:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1">Тип КПП:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип КПП</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                              
                            </div>
                          </div>  
                        </div>
                        <div class='row block'>
                           
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div>                            

                          </div>

                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Год выпуска:</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                          <div class='col-xs-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Состояние:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                            
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                        </div>

                        <div class='row'>

                          <div class='col-xs-6 center-block text-center'>

                            <div class='b_btn-show'>
                              <button class='btn btn-show'>
                                <span class='label-black-bordered'>18+</span>
                                Показать
                              </button>                              
                            </div>                            

                          </div>                          

                        </div>
                      </form> 
                    </div>
                    <div class="tab-pane fade" id="dropdown2">
                       <form name='filter'>

                        <div class='row block'>
                          <div class='col-xs-8 center-block'>
                            
                            <div class="input-group-inline">

                              <input type="text" class="form-control">                            
                              <span class="input-group-btn">
                                <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                              </span>                          

                            </div>                                

                          </div>
                        </div>
                        <div class='row block-sm'>
                          
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1" >Марка:</label>                              
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите марку</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>

                            </div>
                          </div>
                          <div class='col-xs-3 col-xs-offset-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Тип кузова:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                          <div class='col-xs-3'>
                            <div class="form-group">

                              <label for="exampleInputEmail1">Тип КПП:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип КПП</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                              
                            </div>
                          </div>  
                        </div>
                        <div class='row block'>
                           
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div>                            

                          </div>

                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Год выпуска:</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                          <div class='col-xs-3'>
                            <div class="form-group">
  
                              <label for="exampleInputEmail1">Состояние:</label>
                              <select name="" class='select-styled form-control'>
                                <option value="">Выберите тип кузова</option>
                                <option value="">BMW</option>
                                <option value="">Opel</option>
                                <option value="">Mercedes-Benz</option>
                              </select>
                                
                            </div>
                          </div>
                            
                          <div class='col-xs-3'>

                            <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                            <div class='container-xs-height'>                                                          

                              <div class='row-xs-height b_filter-range'>                                
                                <div class='col-xs-height b_filter-r-text'>
                                  От: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>
                                <div class='col-xs-height b_filter-r-text'>
                                  До: 
                                </div>
                                <div class='col-xs-height b_filter-r-input'>
                                  <input type="text" class="form-control" id="" placeholder="0">  
                                </div>                                                                                        
                              </div>
                              
                            </div> 

                          </div>

                        </div>

                        <div class='row'>

                          <div class='col-xs-6 center-block text-center'>

                            <div class='b_btn-show'>
                              <button class='btn btn-show'>
                                <span class='label-black-bordered'>18+</span>
                                Показать
                              </button>                              
                            </div>                            

                          </div>                          

                        </div>
                      </form> 
                    </div>
                  </div>                                  

                </div>

              <div class='row'>

                  <div class='col-xs-6 col-xs-offset-3'>
                    <hr class='divider'>
                  </div>

                  <div class='col-xs-3'><button class='btn btn-black'>Все автомобили</button></div>
              </div>

              <div class='row block'>

                  <div class='col-xs-6 text-right'>
                    <button class='btn btn-left' onclick="$('#carousel-pro').trigger('owl.prev');"></button>  
                  </div>
                  <div class='col-xs-6'>
                    <button class='btn btn-right' onclick="$('#carousel-pro').trigger('owl.next');"></button>  
                  </div>
                  
              </div>

              <div class='row'>

                <div id="carousel-pro" class="owl-carousel">
                <!-- <carousel> -->  

                    <!-- <carousel-item> -->
                    <div class="bl-product new">

                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-1.png" alt="product">
                      </div>

                      <div class='block-sm'>
                        <a href="">Фильтр L200</a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2009</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>70 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        220 000 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                      <div class='block'>

                        <div class="tooltip bottom _custom" role="tooltip">
                         <div class="tooltip-arrow"></div>
                         <div class="tooltip-inner">
                           Восстановлен. Полностью на ходу.
                         </div>
                        </div>

                      </div>

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product new">
                      
                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-2.png" alt="product">
                      </div>

                      <div class='block-sm'>
                        <a href="">Мотор BMW Z4</a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2008</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>130 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        183 000 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product">
                     
                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-3.png" alt="product">
                      </div>
                      <div class='block-sm'>
                        <a href="">Колодки BMW Z4</a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2000</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>113 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        183 000 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product">
                      
                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-4.png" alt="product">
                      </div>
                      <div class='block-sm'>
                        <a href="">Выхлопная труба Nissan RSX </a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2000</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>240 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        127 500 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                      <div class='block'>

                        <div class="tooltip bottom _custom" role="tooltip">
                         <div class="tooltip-arrow"></div>
                         <div class="tooltip-inner">
                           Восстановлен. Полностью на ходу.
                         </div>
                        </div>

                      </div>

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product">
                      
                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-5.png" alt="product">
                      </div>
                      <div class='block-sm'>
                        <a href="">Тормозные диски</a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2000</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>240 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        <del>126 000 р.</del>
                        102 000 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product">
                      
                       <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-6.png" alt="product">
                      </div>
                      <div class='block-sm'>
                        <a href="">Фара BMW M5</a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2009</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>483 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        102 000 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>                                        

                    </div>
                    <!-- </carousel-item> -->

                    <!-- <carousel-item> -->
                    <div class="bl-product">
                      
                      <div class='block-sm'>
                        <img src="<?=$assetsPath?>upload/pro-4.png" alt="product">
                      </div>
                      <div class='block-sm'>
                        <a href="">Выхлопная труба Nissan RSX </a>
                      </div>

                      <div class='block-sm b_pro-info'>

                        <div>
                          <span class='i_info-text'>Год:</span>
                          <span>2000</span>
                        </div>
                        <div>
                          <span class='i_info-text'>Пробег:</span>
                          <span>240 000 км.</span>
                        </div>

                      </div>

                      <hr class='divider block-sm'>

                      <div class='i_pro-price block-sm'>
                        127 500 р.
                      </div>

                      <div class='block-sm'>
                        <form name='add-pro'>
                          <input type="text" class="input-square" value="1">
                          <button class='btn btn-black'>В корзину</button>
                        </form>
                      </div>

                      <div class='block'>

                        <div class="tooltip bottom _custom" role="tooltip">
                         <div class="tooltip-arrow"></div>
                         <div class="tooltip-inner">
                           Восстановлен. Полностью на ходу.
                         </div>
                        </div>

                      </div>

                    </div>
                    <!-- </carousel-item> -->
            
                </div>                
                <!-- </carousel> -->

              </div>

            </div>            
          </div>

          <div class='_shadow _margin'></div>

          <div class='row b_news _bg-gray _border-bottom-dashed'>

                <div class='container-fixed'>
            
                  <div class='b_heading'>
                    <h1 class='i_heading i_heading-yellow'>Машины в разборе</h1>
                    <h1 class='i_heading i_heading-black'>Новости</h1>

                  </div>  

                  <div class='row b_news-inner'>
                      
                      <div class='col-xs-4'>
                        <img src="<?=$assetsPath?>upload/news-1.png" class="img-circle">
                        <div class='b_news-text'>
                          <span class='bg-yellow'>20.07.2014</span>
                          <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                        </div>
                      </div>

                      <div class='col-xs-4'>
                        <img src="<?=$assetsPath?>upload/news-2.png" class="img-circle">
                        <div class='b_news-text'>
                          <span class='bg-yellow'>20.07.2014</span>
                          <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                        </div>
                      </div>

                      <div class='col-xs-4'>
                        <img src="<?=$assetsPath?>upload/news-3.png" class="img-circle">
                        <div class='b_news-text'>
                          <span class='bg-yellow'>20.07.2014</span>
                          <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                        </div>
                      </div>

                  </div>

                  <div class='text-center block'> <a href="#" class='btn btn-black'>Все машины</a> </div>

              </div>


          </div>
          <div class='_shadow block-md'></div>

          <div class='container-fixed _border-bottom-dashed'>
            <div class='row b_about-us'>

              <div class='col-xs-12'>
                <h4 class='bold'>О компании</h4>
              </div>
              <div class='col-xs-10 b_about-us-text'>
                <p>
                  Добро пожаловать в интернет-магазин компании «Parts-Pro». Мы предлагаем самый  широкий ассортимент авторазбора  в Екатеринбурге на любые марки автомобилей по адекватным ценам. Покупая и запчасти в нашем Интернет-магазине, вы можете быть уверены в качестве — ведь мы работаем только с крупными и проверенными производителями.
                </p>
                <p>
                  Благодаря широкой партнерской сети наш каталог постоянно пополняется иномарками европейского, японского и китайского производства. Если вы нигде не можете найти необходимую деталь — оставьте заявку на индивидуальный подбор, мы найдем авторазборку в самые короткие сроки.
                </p>
              </div>
              <div class='col-xs-2 text-right'>
                <a href="#" class='btn btn-block btn-yellow block-sm'>Оформить <br> заявку</a>
                <img src="<?=$assetsPath?>images/icon-list.png">
              </div>

            </div>            
          </div>

          <div class='_shadow-short block-lg'></div>

          <div class='container-fixed _border-bottom-dashed'>
            <div class='row b_partners'>

              <div class='col-xs-12'>
                <h4 class='bold'>Наши партнеры</h4>
              </div>
              
              <div class='col-xs-8 center-block'>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-1.png" alt="Partner"></a>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-2.png" alt="Partner"></a>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-3.png" alt="Partner"></a>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-4.png" alt="Partner"></a>
              </div>

              <div class='col-xs-6 center-block'>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-5.png" alt="Partner"></a>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-6.png" alt="Partner"></a>
                <a href="#"><img src="<?=$assetsPath?>upload/partner-7.png" alt="Partner"></a>
              </div>

              <div class='col-xs-'></div>

            </div>
          </div>
          
          <div class='_shadow-short block'></div>

          <div class='container-fixed block'>
            <div class='row'>

              <div class='b_caption'>

                <div class='bl_caption b_caption-service'>

                  <div class='i_caption-image'></div>
                  <div class='i_caption-text'>
                    Удобный сервис и качественное обслуживание
                  </div>
                  <div class='i_caption-button'>
                    <a href='#' class='btn btn-black'>Узнать больше</a>
                  </div>

                </div>

                <div class='bl_caption b_caption-garanty'>

                  <div class='i_caption-image'></div>
                  <div class='i_caption-text'>
                    Удобный сервис и качественное обслуживание
                  </div>
                  <div class='i_caption-button'>
                    <a href='#' class='btn btn-black'>Узнать больше</a>
                  </div>

                </div>

                <div class='bl_caption b_caption-sale'>

                  <div class='i_caption-image'></div>
                  <div class='i_caption-text'>
                    Удобный сервис и качественное обслуживание
                  </div>
                  <div class='i_caption-button'>
                    <a href='#' class='btn btn-black'>Узнать больше</a>
                  </div>

                </div>                

              </div>

            </div>
          </div>

        </div>

        <div class='container-fluid l_footer _bg-gray'>
          
          <div class='container-fixed'>

            <div class='row b_menu'>
              <ul class='list-inline'>

                <li><a href="#">О компании</a></li>
                <li><a href="#" class='active'>Автозапчасти</a></li>
                <li><a href="#">Все услуги</a></li>
                <li><a href="#">Новости</a></li>
                <li><a href="#">Контакты</a></li>
                <li><a href="#">Вакансии</a></li>

              </ul>
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
                    <p>197022, Санкт-Петербург, <br>
                        улица Аптекарская, дом 12</p>
                </div>

              </div>

              <div class='col-xs-4'>

                <div class='b_deprecated'>
                  Использование материалов <br> сайта без согласия <br> правообладателя запрещено
                  <img src="<?=$assetsPath?>images/icon_deprecated.png" alt="Deprecated">  
                </div>

              </div>

              <div class='col-xs-4'>
                  
                <div class='b_search'>
                  
                  <div class="input-group-inline">

                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-yellow" type="button">Найти</button>
                    </span>
                    <div>Например: Автозапчасти</div>
                  </div>

                </div>

                <div class='b_modals text-right'>
                  <p><a href="">Обратный звонок</a></p>
                  <p><a href="">Уточнить страну</a></p>
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
  

            
</body>
</html>