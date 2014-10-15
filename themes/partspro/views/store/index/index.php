<?
$assetsPath = Yii::app()->theme->baseUrl."/assets/";

$model = StoreCategory::model()
			->excludeRoot()
			->withFullPath('cars')
			->find();
$attributes = $model->getEavAttributes();

?>


            
    <div class='row b_services _bg-gray _border-bottom-dashed'>

        <div class='container-fixed'>
    
          <div class='b_heading'>
            <h1 class='i_heading i_heading-yellow'> <?=Yii::t('core','Наши услуги')?></h1>      
          </div>                

          <div class='row'>
            <div class='b_services-inner'>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_car.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href="<?=Yii::app()->createUrl('/cars')?>"><?=Yii::t('core','Продажа авто')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_door.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href="<?=Yii::app()->createUrl('/avto-parts')?>"><?=Yii::t('core','Автозапчасти')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_money.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href="<?=Yii::app()->createUrl('/feedback/ordercar')?>"> <?=Yii::t('core','Выкуп авто')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_helmet.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href="<?=Yii::app()->createUrl('/page/argon')?>"> <?=Yii::t('core','Аргон сварка')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_evacuation.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href="<?=Yii::app()->createUrl('/feedback/evacuator')?>"> <?=Yii::t('core','Эвакуатор')?></a>
                </div>
              </div>

            </div>
          </div>
          
          

        </div>

    </div>
    <div class='_shadow _margin'></div>

    <div class='container-fixed'>
      <div class="b_tab _bg-gray _border-bottom-dashed">
      <img src="<?=$assetsPath?>images/bg-left_search.png" class="bg-icon" alt="Background-icon">  
      <div class='row'>
       
          <ul id="myTab" class="nav nav-tabs" role="tablist">
            <li class="active">
              <a href="#home" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Автозапчасти')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="#profile" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Грузовые авто')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="#dropdown1" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Легковые авто')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="<?=Yii::app()->createUrl('/feedback/order-detail') ?>" class='btn'> <?=Yii::t('core','Заказать деталь')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
          </ul>

          <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade active in" id="home">
                <?php
                	$p = Yii::app()->createController('store/category/home');
                    $_GET['url'] = 'avto-parts';
                    $p[0]->run('home');
                ?> 

            </div>
              
            <div class="tab-pane fade" id="profile">
               <?php
                	$p = Yii::app()->createController('store/category/home');
                    $_GET['url'] = 'lorries';
                    $p[0]->run('home');
                ?>  
            </div>
            <div class="tab-pane fade" id="dropdown1">
               <?php
                	$p = Yii::app()->createController('store/category/home');
                    $_GET['url'] = 'cars';
                    $p[0]->run('home');
                ?>  
            </div>
            
          </div>                                  

        </div>

      <div class='row'>

          <div class='col-xs-6 col-xs-offset-3'>
            <hr class='divider'>
          </div>

          <div class='col-xs-3'><button class='btn btn-black'> <?=Yii::t('core','Все автомобили')?></button></div>
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
            <?foreach($popular as $product):?>
            <?$this->renderPartial('_product', array('data'=>$product));?>
            <?endforeach;?>
            <!-- </carousel-item> -->    
        </div>                
        <!-- </carousel> -->

      </div>

    </div>            
  </div>

  <div class='_shadow _margin'></div>

  <div class="b_tab b_tab-news _bg-gray _border-bottom-dashed">
    <div class='container-fixed'>
      <div class='row b_news_tab'>

        <!--</tab-nav>-->
        <ul id="news-tab" class="nav nav-tabs" role="tablist">

          <!--<tab-nav-item>-->
          <li class="active">
            <a href="#fixcar" role="tab" data-toggle="tab" class="btn"> <?=Yii::t('core','Машины в разборе')?></a>                   
          </li>
          <!--</tab-nav-item>-->

          <!--<tab-nav-item>-->
          <li class="">
            <a href="#news" role="tab" data-toggle="tab" class="btn"> <?=Yii::t('core','Новости')?></a>                    
          </li>
          <!--</tab-nav-item>-->

        </ul>              
        <!--</tab-nav>-->

        <!-- <tab-content> -->
        <div id="news-tabContent" class="tab-content"> 

          <!-- <tab-item> -->            
          <div class="tab-pane fade active in" id="fixcar">

              <div class='row b_news-inner'>
                  <?foreach($fixcars as $car):?>
                  <div class='col-xs-4'>
                    <img src="<?=$car->getImage('149x149','adaptiveResize')?>" class="img-circle">
                    <div class='b_news-text'>
                      <span class='bg-yellow'><?php echo date('d.m.Y',strtotime($car->created)) ?></span>
                      <a href="<?php echo $car->viewUrl ?>" class='block-sm'><?php echo $car->title ?></a>
                    </div>
                  </div>
                  <?endforeach;?>
              </div>

              <div class='text-center block'> <a href="<?=$car->category->viewUrl?>" class='btn btn-black'> <?=Yii::t('core','Все машины')?></a> </div>

          </div>
          <!-- </tab-item> --> 

          <!-- <tab-item> -->            
          <div class="tab-pane fade" id="news">
              
            <div class='row b_news-inner _news-inner-big'>
                  
                  <?foreach($news as $n):?>
                  <div class='col-xs-6'>
                    <img src="<?=$n->getImage('149x149','adaptiveResize')?>" >
                    <div class='b_news-text'>
                      <span class='bg-yellow'><?php echo date('d.m.Y',strtotime($n->created)) ?></span>
                      <a href="<?php echo $n->viewUrl ?>" class='block-sm'><?php echo $n->title ?></a>
                    </div>
                  </div>
                  <?endforeach;?>                        

              </div>

              <div class='text-center block'> <a href="<?=$n->category->viewUrl?>" class='btn btn-black'> <?=Yii::t('core','Все новости')?></a> </div>

          </div>
          <!-- <tab-item> -->  

        </div>
        <!-- </tab-content> -->

      </div>
    </div>
  </div>
  <div class='_shadow block-md'></div>

  <div class='container-fixed _border-bottom-dashed'>
    <img src="<?=$assetsPath?>images/bg-left_engine.png" class="bg-icon" alt="Background-icon">
    <div class='row b_about-us'>

      <div class='col-xs-12'>
        <h4 class='bold'> <?=Yii::t('core','О компании')?></h4>
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
        <a href="#" class='btn btn-block btn-yellow block-sm' data-toggle="modal" data-target="#order">Оформить <br> заявку</a>
        <img src="<?=$assetsPath?>images/icon-list.png">
      </div>

    </div>            
  </div>

  <div class='_shadow-short block-lg'></div>

  <div class='container-fixed _border-bottom-dashed'>
    <img src="<?=$assetsPath?>images/bg-left_users.png" class="bg-icon" alt="Background-icon">
    <div class='row b_partners'>

      <div class='col-xs-12'>
        <h4 class='bold'> <?=Yii::t('core','Наши партнеры')?></h4>
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

  <div class='container-fixed b_captions block'>
    <img src="<?=$assetsPath?>images/bg-left_hand.png" class="bg-icon" alt="Background-icon">
    <div class='row'>

      <div class='b_caption'>

        <div class='bl_caption b_caption-service'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Удобный сервис и качественное обслуживание')?>
          </div>
          <div class='i_caption-button'>
            <a href='<?=Yii::app()->createUrl('/page/about')?>' class='btn btn-black'> <?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>

        <div class='bl_caption b_caption-garanty'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Гарантия и 100% юридической чистоты')?>
          </div>
          <div class='i_caption-button'>
            <a href='<?=Yii::app()->createUrl('/page/about')?>' class='btn btn-black'><?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>

        <div class='bl_caption b_caption-sale'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Скидки и индивидуальный подход к каждому клиенту')?>
          </div>
          <div class='i_caption-button'>
            <a href='<?=Yii::app()->createUrl('/page/about')?>' class='btn btn-black'><?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>                

      </div>

    </div>
  </div>




