

<div class='row block'>
  <div class='col-xs-8 center-block'>
    
    <div class="input-group-inline">                           
      
        <?php echo CHtml::form( Yii::app()->createUrl('/store/category/search')) ?>
        <input type="text" name="q" class="form-control">
        <span class="input-group-btn">
            <button class="btn btn-yellow" type="submit"> <?=Yii::t('core','Поиск по каталогу авто')?></button>
        </span> 
        <?=CHtml::endForm()?>                         

    </div>                                

  </div>
</div>
<?=CHtml::form( Yii::app()->createUrl($this->model->full_path) )?>
<div class='row block-sm'>
  <div class='col-xs-3'>
    <?if( isset($attributes['mark']) ):?>
    <?$attribute = $attributes['mark'];?>
    <div class="form-group">

      <label for="exampleInputEmail1" > <?=$attribute['title']?>:</label>                              
      <select name="<?=$attribute['queryKey']?>" class='select-styled form-control'>
        <option value=""> <?=Yii::t('core','Выберите марку')?></option>
        <?foreach($attribute['filters'] as $filter):?>
        <option value="<?=$filter['queryParam']?>"><?=$filter['title']?></option>        
        <?endforeach;?>
      </select>

    </div>
    <?endif;?>
  </div>
  <div class='col-xs-3 col-xs-offset-3'>    
    <?if( isset($attributes['type_cuzov']) ):?>
    <?$attribute = $attributes['type_cuzov'];?>
    <div class="form-group">

      <label for="<?=$attribute['queryKey']?>" > <?=$attribute['title']?>:</label>                              
      <select id="<?=$attribute['queryKey']?>" name="<?=$attribute['queryKey']?>" class='select-styled form-control'>
        <option value=""> <?=Yii::t('core','Выберите тип кузова')?></option>
        <?foreach($attribute['filters'] as $filter):?>
        <option value="<?=$filter['queryParam']?>"><?=$filter['title']?></option>        
        <?endforeach;?>
      </select>

    </div>
    <?endif;?>
  </div>
  <div class='col-xs-3'>
    <?if( isset($attributes['kpp_type']) ):?>
    <?$attribute = $attributes['kpp_type'];?>
    <div class="form-group">

      <label for="<?=$attribute['queryKey']?>" > <?=$attribute['title']?>:</label>                              
      <select id="<?=$attribute['queryKey']?>" name="<?=$attribute['queryKey']?>" class='select-styled form-control'>
        <option value=""> <?=Yii::t('core','Выберите КПП')?></option>
        <?foreach($attribute['filters'] as $filter):?>
        <option value="<?=$filter['queryParam']?>"><?=$filter['title']?></option>        
        <?endforeach;?>
      </select>

    </div>
    <?endif;?>
  </div>  
</div>
<div class='row block'>
   
  <div class='col-xs-3'>

    <label for="exampleInputEmail1"> <?=Yii::t('core','Цена (тысяч руб.)')?>:</label>
      
    <div class='container-xs-height'>                                                          

      <div class='row-xs-height b_filter-range'>                                
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','От')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="min_price" class="form-control" id="" placeholder=" ">  
        </div>
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','До')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="max_price" class="form-control" id="" placeholder=" ">  
        </div>                                                                                        
      </div>
      
    </div>                        

  </div>

  <div class='col-xs-3'>
    <?if( isset($attributes['year_create']) ):?>
    <?$attribute = $attributes['year_create'];?>
    <label for="exampleInputEmail1"> <?=$attribute['title']?>:</label>
    <div class='container-xs-height'>                                                          

      <div class='row-xs-height b_filter-range'>                                
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','От')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="min_<?=$attribute['queryKey']?>" class="form-control" id="" placeholder="0">  
        </div>
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','До')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="max_<?=$attribute['queryKey']?>" class="form-control" id="" placeholder="0">  
        </div>                                                                                        
      </div>
      
    </div> 
    <?endif;?>
  </div>

  <div class='col-xs-3'>
    <?if( isset($attributes['state']) ):?>
    <?$attribute = $attributes['state'];?>
    <div class="form-group">

      <label for="<?=$attribute['queryKey']?>" > <?=$attribute['title']?>:</label>                              
      <select id="<?=$attribute['queryKey']?>" name="<?=$attribute['queryKey']?>" class='select-styled form-control'>
        <option value=""> <?=Yii::t('core','Выберите состояние')?></option>
        <?foreach($attribute['filters'] as $filter):?>
        <option value="<?=$filter['queryParam']?>"><?=$filter['title']?></option>        
        <?endforeach;?>
      </select>

    </div>
    <?endif;?>
  </div>
    
  <div class='col-xs-3'>
    <?if( isset($attributes['odometer']) ):?>
    <?$attribute = $attributes['odometer'];?>
    <label for="exampleInputEmail1"> <?=$attribute['title']?>:</label>
    <div class='container-xs-height'>                                                          

      <div class='row-xs-height b_filter-range'>                                
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','От')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="min_<?=$attribute['queryKey']?>" class="form-control" id="" placeholder="0">  
        </div>
        <div class='col-xs-height b_filter-r-text'>
          <?=Yii::t('core','До')?>: 
        </div>
        <div class='col-xs-height b_filter-r-input'>
          <input type="text" name="max_<?=$attribute['queryKey']?>" class="form-control" id="" placeholder="0">  
        </div>                                                                                        
      </div>
      
    </div> 
    <?endif;?>
  </div>

</div>

<div class='row'>

  <div class='col-xs-6 center-block text-center'>

    <div class='b_btn-show'>
      <button type="submit" class='btn btn-show'>
        <span class='label-black-bordered'><?=$this->countProducts()?></span>
        <?=Yii::t('core','Показать')?>
      </button>                              
    </div>                            

  </div>                          

</div>
<?=CHtml::endForm()?>