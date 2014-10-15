<?
$attributes = new StoreAttribute;
$attribute = $attributes->find('name=:mark',array(':mark'=>'mark'));
$marks = array();
foreach($attribute->options as $mark)
{
    $marks[$mark->value] = $mark->value;
}


$kpp = new StoreAttribute;
$kpp = $kpp->find('name=:name',array(':name'=>'kpp_type'));
$kpp_types = array();
foreach($kpp->options as $value)
{
    $kpp_types[$value->value] = $value->value;
}


$this->breadcrumbs[] = Yii::t('FeedbackModule.core','Выкуп авто');
?>

<div class='row block'>

  <div class='col-xs-12'>                   
    <h4><strong><?=Yii::t('FeedbackModule.core','Выкуп авто')?></strong></h4>
  </div>
</div>

<div class='clearfix'>
  
    <div class='col-xs-6'>
      
      <div class='b_order-car _border-bottom-dashed _bg-gray block'>
        <h4 class='block'> <?=Yii::t('FeedbackModule.core','Форма оценки авто для выкупа')?></h4>

        <div class='b_register'>
          <?php $form=$this->beginWidget('CActiveForm',array(
                'action'    => Yii::app()->createUrl('feedback/ordercar'),
                'htmlOptions' => array(
                    'enctype'   => 'multipart/form-data',
                ),
            ));
            CHtml::$beforeRequiredLabel = "<span class='required'>*</span>";
            CHtml::$afterRequiredLabel = "";
            CHtml::$requiredCss = "";
            ?>
            
            <?if($success):?>
                <p class="bg-success">
                    <?=Yii::t('FeedbackModule.core', 'Спасибо. Ваше сообщение отправлено.')?>
                </p>
            <?endif;?>
            
            <?php echo $form->errorSummary($model,null,null,array('class' => 'text-danger')); ?>
            
            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'name', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'name',array('class' => 'form-control')); ?>                        
            </div>                        

            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'phone', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'phone',array('class' => 'form-control')); ?>
            </div>                  

            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'email', array('required'=>false)); ?>
                <?php echo CHtml::activeTextField($model,'email',array('class' => 'form-control')); ?>
            </div>

            <div class="form-group">
              <?php echo CHtml::activeLabel($model,'carMark', array('required'=>true)); ?>
              <?php echo $form->dropDownList($model,'carMark',$marks,array('class' => 'select-styled form-control')); ?>
            </div>
            

            <div class="form-group">
              <?php echo CHtml::activeLabel($model,'carModel', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'carModel',array('class' => 'form-control')); ?>
            </div>
            
            
            <div class="form-group">
              <?php echo CHtml::activeLabel($model,'carYear', array('required'=>true)); ?>
              <?php echo CHtml::activeTextField($model,'carYear',array('class' => 'form-control')); ?>
            </div>
            
            <div class="form-group has-info">
                <?php echo CHtml::activeLabel($model,'fuelConsumed', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'fuelConsumed',array('class' => 'form-control')); ?>
                <div class='notification'>
                    См<sup>3</sup>
                </div>
            </div>

            <div class="form-group">
              <?php echo CHtml::activeLabel($model,'kpp', array('required'=>true)); ?>
              <?php echo $form->dropDownList($model,'kpp',$kpp_types,array('class' => 'select-styled form-control')); ?>
            </div>
            
            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'moreInfo', array('required'=>false)); ?>
                <?php echo $form->textArea($model,'moreInfo',array('class' => 'form-control')); ?>
            </div>
            
            <div class="form-group block">
              <?php echo CHtml::activeLabel($model,'img', array('required'=>false)); ?>
              <?php echo CHtml::activeFileField($model,'img',array('style' => 'display:none')); ?>
            </div>                                   
            
            <div class='form-group text-center'>
              <button type="submit" class="btn btn-black btn-wide">Отправить заявку</button>  
            </div>
            
          <?php $this->endWidget(); ?> 
        </div>
      </div> 
      <div class='_shadow-ex-short block'></div>

    </div>                               

    <div class='col-xs-6 b_form-text'>
       <?=Yii::t('FeedbackModule.core','ordercar_text')?>
    </div>
    
</div>