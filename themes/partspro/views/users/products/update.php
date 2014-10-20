<?php

/**
 * @var $profile UserProfile
 * @var $user User
 * @var $form CActiveForm
 * @var $changePasswordForm ChangePasswordForm
 */

$this->pageTitle=Yii::t('UsersModule.core', 'Новое объявление');

$this->breadcrumbs[] = Yii::t('UsersModule.core', 'Новое объявление');

?>
<div class='row block'>

  <div class='col-xs-12'>                   
    <h3><strong><?php echo Yii::t('UsersModule.core', 'Новое объявление'); ?></strong></h3>
  </div>
</div>

<div class="row b_tab b_cabinet-tab _bg-gray _border-bottom-dashed">
               
  <ul id="myTab" class="nav nav-tabs" role="tablist">

    <li class="active">
      <a href="#autoparts" role="tab" data-toggle="tab" class="btn">Автозапчасти</a>
      <span class="round-caret">
        <span class="caret"></span>
      </span>
    </li>

    <li>
      <a href="#light" role="tab" data-toggle="tab" class="btn">Для легковых</a>
      <span class="round-caret">
        <span class="caret"></span>
      </span>
    </li>

    <li>
      <a href="#heavy" role="tab" data-toggle="tab" class="btn">Для грузовых</a>
      <span class="round-caret">
        <span class="caret"></span>
      </span>
    </li>

    <li>
      <a href="#for-parse" role="tab" data-toggle="tab" class="btn">Авто на разбор</a>
      <span class="round-caret">
        <span class="caret"></span>
      </span>
    </li>

  </ul>

  <div id="cabinet-tab-content" class="tab-content">

    <div class="tab-pane fade active in" id="autoparts">
      
      <h4><strong>Индивидуальный подбор</strong></h4>
      <p class='block'>Для подбора дисков выберите диаметр диска.</p>

      <? $form = $this->beginWidget('CActiveForm',array(
        'htmlOptions'   => array( 'enctype' => 'multipart/form-data')
      ))?>
        <?=CHtml::activeHiddenField($model,'main_category_id')?>
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>
          
          <div class='col-xs-4'>
              
            <div class="form-group">
              <?=CHtml::activeLabel($model,'name')?>
              <?=CHtml::activeTelField($model,'name',array('class' => 'form-control'));?>                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 1</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">
              <?=CHtml::activeLabel($model,'price')?>
              <?=CHtml::activeTelField($model,'price',array('class' => 'form-control'));?>                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 2</div>

        </div>  
        <!-- </cabinet-row> -->
        
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <?=CHtml::activeLabel($model,'region_id')?>
              <?=CHtml::activeDropDownList($model,'region_id',CHtml::listData(StoreRegion::model()->findAll(), 'id', 'name'),array('class' => 'form-control select-styled'))?>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 3</div>
        </div>  
        <!-- </cabinet-row> -->
        
        <?
        $attributes = $model->type->storeAttributes;
        if(empty($attributes))
		  echo Yii::t('StoreModule.admin', 'Список свойств пустой');
    	else
    	{
    	    $i=0;
            $iteration = 4;
    		foreach($attributes as $a)
    		{
    		    if($a->name == "uroven_sostoyaniya")continue;  
    		    if($i%2==0)echo "<div class='row block-sm b_cabinet-tab-row'>";  
    			// Repopulate data from POST if exists
    			if(isset($_POST['StoreAttribute'][$a->name]))
    				$value = $_POST['StoreAttribute'][$a->name];
    			else
    				$value = $model->getEavAttribute($a->name);
    
        
    			echo CHtml::openTag('div', array('class'=>'col-xs-4'));
    			echo CHtml::label($a->attr_translate->title, $a->name);
    			if($a->type == StoreAttribute::TYPE_DROPDOWN)
                    echo $a->renderField($value,array('class'=>'form-control select-styled'));
                else
                    echo $a->renderField($value,array('class'=>'form-control'));
    			echo CHtml::closeTag('div');
                echo "<div class='col-xs-1 i_cabinet-text'>Шаг ".$iteration++."</div>";
                
                if( (++$i)%2==0)echo "</div>";
    		}
    	}
        
        ?>  
        
        
        
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          
          <?
          Yii::import('ext.jqPrettyPhoto');
          Yii::import('application.modules.store.components.StoreImagesConfig');
            
          // Register view styles
          Yii::app()->getClientScript()->registerCss('infoStyles', "
            	table.imagesList {
            		float: left;
            		width: 45%;
            		min-width:250px;
            		margin-right: 15px;
            		margin-bottom: 15px;
            	}
            ");
            
            // Upload button
            echo CHtml::openTag('div', array('class'=>'col-xs-12'));            
            echo CHtml::label(Yii::t('StoreModule.admin', 'Выберите изображения'), 'files');
            echo "<div class='file-button-header'><label class='file-button'>";
           	 $this->widget('system.web.widgets.CMultiFileUpload', array(
            		'name'=>'StoreProductImages',
            		'model'=>$model,
            		'attribute'=>'files',
            		'accept'=>implode('|', StoreImagesConfig::get('extensions')),
            	));
            echo "</label></div>";
            echo CHtml::closeTag('div');
            ?>
        </div>
        
        
        <div class='row block b_cabinet-tab-row'>           
            
            <?            
            // Images
            if ($model->images)
            {
            	foreach($model->images as $image)
            	{
            		$this->widget('zii.widgets.CDetailView', array(
            			'data'=>$image,
            			'id'=>'ProductImage'.$image->id,
            			'htmlOptions'=>array(
            				'class'=>'detail-view imagesList',
            			),
            			'attributes'=>array(
            				array(
            					'label'=>Yii::t('StoreModule.admin', 'Изображение'),
            					'type'=>'raw',
            					'value'=>CHtml::link(
            						CHtml::image($image->getUrl(false, false,true), CHtml::encode($image->name), array('height'=>'150px',)),
            						$image->getUrl(false, false, true),
            						array('target'=>'_blank', 'class'=>'pretty', 'title'=>CHtml::encode($model->name))
            					),
            				),
            				'id',
            				array(
            					'name'=>'is_main',
            					'type'=>'raw',
            					'value'=>CHtml::radioButton('mainImageId', $image->is_main, array(
            						'value'=>$image->id,
            					)),
            				),
            				array(
            					'name'=>'author',
            					'type'=>'raw',
            					'value'=>($image->author) ? CHtml::encode($image->author->username) : '',
            				),
            				'date_uploaded',
            				array(
            					'label'=>Yii::t('StoreModule.admin', 'Название'),
            					'type'=>'raw',
            					'value'=>CHtml::textField('image_titles['.$image->id.']', $image->title),
            				),
            				array(
            					'label'=>Yii::t('StoreModule.admin', 'Действия'),
            					'type'=>'raw',
            					'value'=>CHtml::ajaxLink(Yii::t('StoreModule.admin', 'Удалить'),$this->createUrl('deleteImage', array('id'=>$image->id)),
            						array(
            							'type'=>'POST',
            							'data'=>array(Yii::app()->request->csrfTokenName => Yii::app()->request->csrfToken),
            							'success'=>"js:$('#ProductImage$image->id').hide().remove()",
            						),
            						array(
            							'id'=>'DeleteImageLink'.$image->id,
            							'confirm'=>Yii::t('StoreModule.admin', 'Вы действительно хотите удалить это изображение?'),
            						)
            					),
            				),
            			),
            		));
            	}
            }
            
            // Fancybox ext
            $this->widget('application.extensions.fancybox.EFancyBox', array(
            	'target'=>'a.pretty',
            	'config'=>array(),
            ));
          ?>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-12'>
            <button class='btn btn-black'>Добавить</button>
          </div>
        </div>  
        <!-- </cabinet-row> -->
        
      <?$this->endWidget()?>

    </div>
      
    <div class="tab-pane fade" id="light">
       
      <h4><strong>Индивидуальный подбор</strong></h4>
      <p class='block'>Для подбора дисков выберите диаметр диска.</p>

      <form name="filter">
        
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Марка авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 1</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Модель авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 2</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Раздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 3</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Подраздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 4</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>
          <div class='col-xs-9'>

            <div class="form-group">

                <label for="text">Подраздел:</label>
                <textarea name="text" id="text" cols="30" rows="10" class='form-control'></textarea>
                  
            </div>  

          </div>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-4'>

            <div class="input-group-inline">
              <input type="file" id='file-upload' style='display:none;'>
              <input type="text" class="form-control">
              <span class="input-group-btn">
                <label for="text"><button class="btn btn-yellow" type="button">Обзор</button></label>
              </span>
            
            </div> 

          </div>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-12'>
            <button class='btn btn-black'>Добавить</button>
          </div>
        </div>  
        <!-- </cabinet-row> -->
        
      </form> 

    </div>

    <div class="tab-pane fade" id="heavy">
       
      <h4><strong>Индивидуальный подбор</strong></h4>
      <p class='block'>Для подбора дисков выберите диаметр диска.</p>

      <form name="filter">
        
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Марка авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 1</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Модель авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 2</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Раздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 3</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Подраздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 4</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>
          <div class='col-xs-9'>

            <div class="form-group">

                <label for="text">Подраздел:</label>
                <textarea name="text" id="text" cols="30" rows="10" class='form-control'></textarea>
                  
            </div>  

          </div>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-4'>

            <div class="input-group-inline">
              <input type="file" id='file-upload' style='display:none;'>
              <input type="text" class="form-control">
              <span class="input-group-btn">
                <label for="text"><button class="btn btn-yellow" type="button">Обзор</button></label>
              </span>
            
            </div> 

          </div>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-12'>
            <button class='btn btn-black'>Добавить</button>
          </div>
        </div>  
        <!-- </cabinet-row> -->
        
      </form> 

    </div>

    <div class="tab-pane fade" id="for-parse">
      
      <h4><strong>Индивидуальный подбор</strong></h4>
      <p class='block'>Для подбора дисков выберите диаметр диска.</p>

      <form name="filter">
        
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Марка авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 1</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Модель авто:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 2</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>

          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Раздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 3</div>
          
          <div class='col-xs-4'>
              
            <div class="form-group">

              <label for="exampleInputEmail1">Подраздел:</label>
              <select name="" class="select-styled form-control">
                <option value="">Выберите тип кузова</option>
                <option value="">BMW</option>
                <option value="">Opel</option>
                <option value="">Mercedes-Benz</option>
              </select>
                
            </div>

          </div>

          <div class='col-xs-1 i_cabinet-text'>Шаг 4</div>

        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block-sm b_cabinet-tab-row'>
          <div class='col-xs-9'>

            <div class="form-group">

                <label for="text">Подраздел:</label>
                <textarea name="text" id="text" cols="30" rows="10" class='form-control'></textarea>
                  
            </div>  

          </div>
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>                      
          <div class='col-xs-4'>
            <input type="file" id='file-upload'>
            <label for="file-upload"><button class="btn btn-yellow" type="button">Обзор</button></label>                         
          </div>                       
        </div>  
        <!-- </cabinet-row> -->
        <!-- <cabinet-row> -->
        <div class='row block b_cabinet-tab-row'>
          <div class='col-xs-12'>
            <button class='btn btn-black'>Добавить</button>
          </div>
        </div>  
        <!-- </cabinet-row> -->
        
      </form> 

    </div>

  </div>                                  

</div>

