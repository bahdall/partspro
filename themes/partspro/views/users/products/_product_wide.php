<?php
/**
 * @var StoreProduct $data
 */
?>

<div class="product_block">
	
	<div class="image">
		<?php
		if($data->mainImage)
			$imgSource = $data->mainImage->getUrl('150x150');
		else
			$imgSource = 'http://placehold.it/150x150';
		echo CHtml::link(CHtml::image($imgSource, $data->mainImageTitle), array('/product/'.$data->url.".html"), array('class'=>'thumbnail'));
		?>
	</div>
    
	<div class="name">
		<?php echo CHtml::link(CHtml::encode($data->name), array('/product/'.$data->url.".html") )?><br />
        <?php
		if($data->appliedDiscount)
			echo '<span style="color:red; "><s>'.$data->toCurrentCurrency('originalPrice').'</s></span>';
		?>
		<?php echo $data->priceRange() ?>
	</div>
	<div style="margin-left: 50px; float: right;" class="actions">
        <a href="<?=Yii::app()->createUrl('users/products/update?id='.$data->id)?>" class="btn btn-default">Редактировать</a>
        <a href="<?=Yii::app()->createUrl('users/products/delete?id='.$data->id)?>" class="btn btn-danger" onclick="if( confirm('Вы уверены?') )return true;else return false;" >Удалить</a>
	</div>
</div>

<style>
.product_block{
    overflow: hidden;
}

.product_block > div{
    float: left;
    padding: 5px;
}

.product_block .image{
    margin: 0 10px;
}

</style>