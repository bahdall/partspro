<?php

/**
 * Small cart.
 * This template is loaded thru ajax request after new product added to cart.
 */
 $assetsPath = Yii::app()->theme->baseUrl."/assets/";
?>
<a href="" class='i_header-button i_cart-button' id="cart-btn-d" data-toggle="dropdown">
    <img src="<?=$assetsPath?>images/icon-cart.png" alt="">
    <span class='label_products round' id='products_qty'><?php echo Yii::app()->cart->countItems() ?></span>  
</a>

<ul class="dropdown-menu b_cart" role="menu" aria-labelledby="cart" >
    <?foreach(Yii::app()->cart->getDataWithModels() as $index => $product):?>
        <?php
            $price = StoreProduct::calculatePrices($product['model'], $product['variant_models'], $product['configurable_id']);
    		// Display image
    		if($product['model']->mainImage)
    			$imgSource = $product['model']->mainImage->getUrl('100x100');
    		else
    			$imgSource = 'http://placehold.it/100x100';
    	?>
        <li class='i_cart-item'> 
            <?=CHtml::image($imgSource, '', array('class'=>'thumbnail'))?>
            <div class='i_cart-text'>
                <h5><?=CHtml::encode($product['model']->name)?></h5>                                        
                <strong><?=StoreProduct::formatPrice(Yii::app()->currency->convert($price))?> <?=Yii::app()->currency->active->symbol?></strong>
            </div>
            <div class='i_cart-control'>
                <input type="text" class='input-square' value='<?=$product['quantity']?>'>
                <?php echo CHtml::link('<img src="'.$assetsPath.'images/icon_close.png" alt="">', array('/orders/cart/remove', 'index'=>$index), array('class'=>'remove')) ?>
            </div>
        </li>
        <li role="presentation" class="divider"></li>
    <?endforeach;?>
    

    <li class='i_cart-item_sum'>
      <div class='pull-right'>
        Итого: <strong class='sum'><span><?php echo StoreProduct::formatPrice(Yii::app()->currency->convert(Yii::app()->cart->getTotalPrice())) ?></span> <?php echo Yii::app()->currency->active->symbol ?></strong>
        <a href="<?php echo Yii::app()->createUrl('/orders/cart/index') ?>" class='btn btn-yellow'>Оформить</a>
      </div>
    </li>
    
    

</ul>
