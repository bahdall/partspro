<?php

/**
 * @var StoreProduct $data
 */
?>



<div class="bl-product col-xs-3">

  <div class='block-sm'>
    <?php
	if($data->mainImage)
		$imgSource = $data->mainImage->getUrl('131x100','adaptiveResize');
	else
		$imgSource = 'http://placehold.it/131x100';
	echo CHtml::image($imgSource, $data->mainImageTitle);
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