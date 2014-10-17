<?php

/**
 * @var $this SFilterRenderer
 */

/**
 * Render filters based on the next array:
 * $data[attributeName] = array(
 *	    'title'=>'Filter Title',
 *	    'selectMany'=>true, // Can user select many filter options
 *	    'filters'=>array(array(
 *	        'title'      => 'Title',
 *	        'count'      => 'Products count',
 *	        'queryKey'   => '$_GET param',
 *	        'queryParam' => 'many',
 *	    ))
 *  );
 */
$active = $this->getActiveFilters();
$activeAttributes = $this->getOwner()->activeAttributes;
?>
<h4><strong>Фильтр</strong></h4>
<hr class='divider'>
<?=CHtml::form()?>
<div class='form-group'>
                      
  <label for="price-from"><?=Yii::t('core','Цена (тысяч руб.)')?>:</label>
  <div class='container-xs-height'>                                                          
    
      <div class='row-xs-height b_filter-range'>                                
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','От')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="min_price" class="form-control" value="<?=(isset($_GET['min_price'])) ? (int)$this->getCurrentMinPrice():""?>" id="" placeholder=" ">  
        </div>
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','До')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="max_price" class="form-control" value="<?=(isset($_GET['max_price'])) ? (int)$this->getCurrentMaxPrice():""?>" id="" placeholder=" ">  
        </div>                                                                                        
      </div>
      
    </div>

</div>

<div class="form-group">
    <label for="region"> <?=Yii::t('base','Регион')?>:</label>
    <?=CHtml::dropDownList('region',explode(',',$_GET['region']),CHtml::listData(StoreRegion::model()->findAll(), 'id', 'name'),array(
        'id' => 'region',
        'multiple' => true,
        'class' => 'form-control',
        'data-placeholder' => Yii::t('base','Выберите регион'),
    ))?>
    <?php $this->widget( 'ext.EChosen.EChosen', array(
      'target' => '#region',
    )); ?>
</div>



<?if( !empty($attributes) ):?>
	<?foreach($attributes as $attrData):?>
        <?if($attrData['type'] == StoreAttribute::TYPE_DROPDOWN):?>
            <div class="form-group">
              <label for="<?=$attrData['queryKey']?>"><?=$attrData['title']?>:</label>
              <select id="<?=$attrData['queryKey']?>" name="<?=$attrData['queryKey']?>" class='select-styled form-control'>
                <option value=""></option>
                <?foreach($attrData['filters'] as $filter):?>
                <option value="<?=$filter['queryParam']?>" <?=(in_array($filter['queryParam'],$activeAttributes[$attrData['queryKey']]['values'])) ? "selected='selected'" : ""?> ><?=$filter['title']?></option>        
                <?endforeach;?>
              </select>
            </div>
        <?elseif($attrData['type'] == StoreAttribute::TYPE_NUMBER):?>
            <label for="exampleInputEmail1"> <?=$attrData['title']?>:</label>
            <div class='container-xs-height'>                                                          
        
              <div class='row-xs-height b_filter-range'>                                
                <div class='col-xs-height b_filter-r-text'>
                  <?=Yii::t('core','От')?>: 
                </div>
                <div class='col-xs-height b_filter-r-input'>
                  <input type="text" name="min_<?=$attrData['queryKey']?>" value="<?=isset($activeAttributes[$attrData['queryKey']]['values']['min'][0]) ? $activeAttributes[$attrData['queryKey']]['values']['min'][0] : "" ?>" class="form-control" id="" placeholder="0">  
                </div>
                <div class='col-xs-height b_filter-r-text'>
                  <?=Yii::t('core','До')?>: 
                </div>
                <div class='col-xs-height b_filter-r-input'>
                  <input type="text" name="max_<?=$attrData['queryKey']?>" value="<?=isset($activeAttributes[$attrData['queryKey']]['values']['max'][0]) ? $activeAttributes[$attrData['queryKey']]['values']['max'][0] : "" ?>" class="form-control" id="" placeholder="0">  
                </div>                                                                                        
              </div>
              
            </div> 
        <?endif;?>
	<?endforeach;?>
<?endif;?>


<hr class='divider block'>

<div class='form-group'>
  
  <button type="submit" class='btn btn-black'> <?=Yii::t('base','Применить')?></button>
  <a href="<?=$this->getOwner()->model->viewUrl?>" class='btn btn-black'> <?=Yii::t('base','Сбросить')?></a>

</div>


<?=CHtml::endForm()?>    
    

