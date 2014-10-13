<?
$attributes = new StoreAttribute;
$attribute = $attributes->find('name=:mark',array(':mark'=>'mark'));

foreach($attribute->options as $mark)
{
    $marks[$mark->value] = $mark->value;
}
?>

<div class='row block'>

  <div class='col-xs-12'>                   
    <h4><strong><?=Yii::t('FeedbackModule.core','Услуги эвакуатора')?></strong></h4>
  </div>
</div>

<div class='clearfix'>
  
    <div class='col-xs-6'>
      
      <div class='b_order-car _border-bottom-dashed _bg-gray block'>
        <h4 class='block'> <?=Yii::t('FeedbackModule.base','Форма заказа эвакуатора')?></h4>

        <div class='b_register'>
          <?php $form=$this->beginWidget('CActiveForm',array(
                'action'    => Yii::app()->createUrl('feedback/evacuator'),
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
              <?php echo CHtml::activeLabel($model,'place', array('required'=>true)); ?><br />
              <?php echo $form->radioButtonList($model,'place',array(
                'В пределах страны' => 'В пределах страны',
                'За пределами' => 'За пределами',
              ),array('class' => 'form-control')); ?><br />
            </div> 

            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'name', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'name',array('class' => 'form-control')); ?>                        
            </div>                        

            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'phone', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'phone',array('class' => 'form-control')); ?>
            </div>                  

            <div class="form-group">
                <?php echo CHtml::activeLabel($model,'email', array('required'=>true)); ?>
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
              <?php echo CHtml::activeLabel($model,'address', array('required'=>true)); ?>
                <?php echo CHtml::activeTextField($model,'address',array('class' => 'form-control')); ?>
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
       <?=Yii::t('FeedbackModule.base','evacuator_text')?>
    </div>
    
</div>