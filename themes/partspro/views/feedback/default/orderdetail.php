
<div class='col-xs-12'>
  <h4 class='block-lg'><?=Yii::t('FeedbackModule.core','О компании')?></h4>
  <p>
    <?=Yii::t('FeedbackModule.core','about_company')?>
  </p>
</div>                

<div class='col-xs-5 center-block'>
    <?php $form=$this->beginWidget('CActiveForm',array(
        'action'    => Yii::app()->createUrl('feedback/order-detail'),
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
  
    <!-- Display errors  -->
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
        <?php echo CHtml::activeLabel($model,'email', array('required'=>true)); ?>
        <?php echo CHtml::activeTextField($model,'email',array('class' => 'form-control')); ?>
    </div> 

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'carInfo', array('required'=>true)); ?>
      <?php echo CHtml::activeTextField($model,'carInfo',array('class' => 'form-control')); ?>
    </div>                  

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'yearCreate'); ?>
      <?php echo CHtml::activeTextField($model,'yearCreate',array('class' => 'form-control')); ?>
    </div>

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'engine'); ?>
      <?php echo CHtml::activeTextField($model,'engine',array('class' => 'form-control')); ?>
    </div>

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'fuelConsumed'); ?>
      <?php echo CHtml::activeTextField($model,'fuelConsumed',array('class' => 'form-control')); ?>
    </div>

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'vin'); ?>
      <?php echo CHtml::activeTextField($model,'vin',array('class' => 'form-control')); ?>
    </div>                                

    <div class="form-group">
      <?php echo CHtml::activeLabel($model,'partsList', array('required'=>true)); ?>
      <?php echo CHtml::activeTextField($model,'partsList',array('class' => 'form-control')); ?>
    </div>                
    
    <div class='form-group text-center'>
      <button type="submit" class="btn btn-black"> <?=Yii::t('FeedbackModule.core','Отправить')?></button>  
    </div>
    
  <?php $this->endWidget(); ?> 
</div>    