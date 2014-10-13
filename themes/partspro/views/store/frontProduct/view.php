<?php
/**
 * Product view
 * @var StoreProduct $model
 * @var $this Controller
 */

// Set meta tags
$this->pageTitle = ($model->meta_title) ? $model->meta_title : $model->name;
$this->pageH = $model->name;
$this->pageKeywords = $model->meta_keywords;
$this->pageDescription = $model->meta_description;

// Register main script
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.js', CClientScript::POS_END);
Yii::app()->clientScript->registerScriptFile($this->module->assetsUrl.'/product.view.configurations.js', CClientScript::POS_END);

// Create breadcrumbs
if($model->mainCategory)
{
	$ancestors = $model->mainCategory->excludeRoot()->ancestors()->findAll();

	foreach($ancestors as $c)
		$this->breadcrumbs[$c->name] = $c->getViewUrl();

	// Do not add root category to breadcrumbs
	if ($model->mainCategory->id != 1)
		$this->breadcrumbs[$model->mainCategory->name] = $model->mainCategory->getViewUrl();
}

// Fancybox ext
$this->widget('application.extensions.fancybox.EFancyBox', array(
	'target'=>'a.thumbnail',
));
$assetsPath = Yii::app()->theme->baseUrl."/assets/";
?>
<style>
.i_info-text{
    width: 80px;
}
</style>
<div class='b_product-inner _border-bottom-dashed _bg-gray'>
  <div class='row'>
  
    <div class='col-xs-6'>

      <div class='left block-sm'>
        <?php
			// Main product image
			if($model->mainImage)
				echo CHtml::image($model->mainImage->getUrl('400x305', 'adaptiveResize'),$model->name,array('id'=>'big-img'));
			else
				echo CHtml::image('http://placehold.it/400x305',$model->name,array('id'=>'big-img'));
		?>
      </div>

      <div class='b_img-list-inline block'>
        <?if($model->mainImage):?>
        <div class='i_img-list' data-change-target='#big-img' data-src='<?=$model->mainImage->getUrl('400x305','adaptiveResize')?>'>                    
          <img src="<?=$model->mainImage->getUrl('70x70','adaptiveResize')?>" alt="<?=$model->mainImage->title?>" width='70' height='70'>                      
        </div>
        <?endif;?>
        
        <?        
		// Display additional images
		foreach($model->imagesNoMain as $image):?>
            <div class='i_img-list' data-change-target='#big-img' data-src='<?=$image->getUrl('400x305','adaptiveResize')?>'>                    
              <img src="<?=$image->getUrl('70x70','adaptiveResize')?>" alt="<?=$image->title?>" width='70' height='70'>                      
            </div>
		<?endforeach;?>

      </div>
      
      <div class='block'>

        <div class='block-sm'>
          Поделиться: 
        </div>

        <div class="b_social">
          <a href="" class="i_social">
            <img src="<?=$assetsPath?>images/icon_fb.png" alt="">
          </a>
          <a href="" class="i_social">
            <img src="<?=$assetsPath?>images/icon_twt.png" alt="">
          </a>
          <a href="" class="i_social">
            <img src="<?=$assetsPath?>images/icon_vk.png" alt="">
          </a>
          <a href="" class="i_social">
            <img src="<?=$assetsPath?>images/icon_gg.png" alt="">
          </a>
        </div>

      </div>

      <div>
        <a href="<?=$model->mainCategory->getViewUrl()?>" class='btn btn-black'>Назад к каталогу</a>
      </div>

    </div>  

    <div class='col-xs-3'>
      
      <div class="bl-product">      
            
          <?=$this->renderPartial('_attributes', array('model'=>$model), true)?>          

          <div class='i_pro-price block-sm'>
            <?php
        	if($model->appliedDiscount)
        		echo '<del>'.$model->toCurrentCurrency('originalPrice').' '.Yii::app()->currency->active->symbol.'</del><br />';
        	?>
        	<?php echo $model->priceRange() ?>
          </div>
            
          <div class='block-sm'>
            <?php
        		echo CHtml::form(array('/orders/cart/add'),'post',array('name' => 'add-pro'));
        		echo CHtml::hiddenField('product_id', $model->id);
        		echo CHtml::hiddenField('product_price', $model->price);
        		echo CHtml::hiddenField('use_configurations', $model->use_configurations);
        		echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
        		echo CHtml::hiddenField('configurable_id', 0);
        		echo CHtml::textField('quantity', 1,array('class' => 'input-square'));
        
        		if($model->getIsAvailable())
        		{
        			echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','В корзину'), array('/orders/cart/add'), array(
        				'id'=>'addProduct'.$model->id,
        				'dataType'=>'json',
        				'success'=>'js:function(data, textStatus, jqXHR){processCartResponseFromList(data, textStatus, jqXHR, "'.Yii::app()->createAbsoluteUrl('/store/frontProduct/view', array('url'=>$model->url)).'")}',
        			), array('class'=>'btn btn-black'));
        		}
        		else
        		{
        			echo CHtml::link('Нет в наличии', '#', array(
        				'onclick' => 'showNotifierPopup('.$model->id.'); return false;',
        				'class'   => 'notify_link',
        			));
        		}
        	?>
        	<?php echo CHtml::endForm() ?>
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

    </div>             

    <div class='col-xs-3 _divider-left'>
      <?if($model->relatedProducts):?>  
      <div class='col-xs-12 block'>
          <h4><strong> <?=Yii::t('base','Похожий товар')?></strong></h4>
      </div>

      <div class='b_related'>
      
        <div class='block text-center'>
          <button class='btn btn-up' id='vertical-up'></button>
        </div>

        <!-- <carousel direction='vertical'> -->
        <div id='vertical-carousel'>                    
          <ul>
            <?foreach($model->relatedProducts as $data):?>
            <!-- <carousel-item> -->
            <li>                        
              <div class="bl-product block">

                <div class='block-sm'>
                  <?php
    				if($data->mainImage)
    					$imgSource = $data->mainImage->getUrl('131x100','adaptiveResize');
    				else
    					$imgSource = 'http://placehold.it/131x100';
    				echo CHtml::link(CHtml::image($imgSource), array('frontProduct/view', 'url'=>$data->url));
    				?>
                </div>

                <div class='block-sm'>
                  <?php echo CHtml::link(CHtml::encode($data->name), array('frontProduct/view', 'url'=>$data->url)) ?>
                </div>

                <div class='block-sm b_pro-info'>

                    <div>
                      <?if( $year = $data->getEavAttribute('year_create') ):?>  
                      <span class='i_info-text'> <?=Yii::t('base','Год')?>:</span>
                      <span><?=$year?></span>
                      <?endif;?>
                    </div>
                    <div>
                      <?if( $odometer = $data->getEavAttribute('odometer') ):?>  
                      <span class='i_info-text'> <?=Yii::t('base','Пробег')?>:</span>
                      <span><?=$odometer?> <?=Yii::t('base','тыс.км.')?></span>
                      <?endif;?>
                    </div>
                
                </div>

                <hr class='divider block-sm'>

                <div class='i_pro-price block-sm'>
                    <?php
                	if($data->appliedDiscount)
                		echo '<del>'.$data->toCurrentCurrency('originalPrice').' '.Yii::app()->currency->active->symbol.'</del><br />';
                	?>
                	<?php echo $data->priceRange() ?>
                </div>

                <div class='block-sm'>
                  <?php
                		echo CHtml::form(array('/orders/cart/add'));
                		echo CHtml::hiddenField('product_id', $data->id);
                		echo CHtml::hiddenField('product_price', $data->price);
                		echo CHtml::hiddenField('use_configurations', $data->use_configurations);
                		echo CHtml::hiddenField('currency_rate', Yii::app()->currency->active->rate);
                		echo CHtml::hiddenField('configurable_id', 0);
                		echo CHtml::textField('quantity', 1,array('class' => 'input-square'));
                
                		if($data->getIsAvailable())
                		{
                			echo CHtml::ajaxSubmitButton(Yii::t('StoreModule.core','В корзину'), array('/orders/cart/add'), array(
                				'id'=>'addProduct'.$data->id,
                				'dataType'=>'json',
                				'success'=>'js:function(data, textStatus, jqXHR){processCartResponseFromList(data, textStatus, jqXHR, "'.Yii::app()->createAbsoluteUrl('/store/frontProduct/view', array('url'=>$data->url)).'")}',
                			), array('class'=>'btn btn-black'));
                		}
                		else
                		{
                			echo CHtml::link('Нет в наличии', '#', array(
                				'onclick' => 'showNotifierPopup('.$data->id.'); return false;',
                				'class'   => 'notify_link',
                			));
                		}
                	?>
                	<?php echo CHtml::endForm() ?>
                </div>                      

              </div>                                                   
            </li>
            <!-- </carousel-item> -->  
            <?endforeach;?>

          </ul>
        </div>
        <!-- </carousel> -->
        
        <div class='block text-center'>
          <button class='btn btn-down' id='vertical-down'></button>
        </div>
    </div>    
    <?endif;?>          
  </div>                        

</div>
</div>
