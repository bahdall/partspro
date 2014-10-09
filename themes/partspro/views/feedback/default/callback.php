

<?php $form=$this->beginWidget('CActiveForm',array(
        'action'    => Yii::app()->createUrl('feedback/callback'),
)); ?>

    <?if($success):?>
    <p class="bg-success">
        <?=Yii::t('FeedbackModule.core', 'Спасибо. Ваше сообщение отправлено.')?>
    </p>
    <?endif;?>  
  
  <!-- Display errors  -->
  <?php echo $form->errorSummary($model,null,null,array('class' => 'text-danger')); ?>
    
  <div class="form-group">
    <label for="name"><span class='required'>*</span>Имя:</label>
    <?php echo CHtml::activeTextField($model,'name',array('class' => 'form-control','id' => 'name')); ?>
  </div>

  <div class="form-group">
    <label for="tel"><span class='required'>*</span>Телефон:</label>
    <?php echo CHtml::activeTextField($model,'phone',array('class' => 'form-control','id' => 'tel')); ?>
  </div>

  <div class="form-group">
    <label for="mail"><span class='required'>*</span>Электронный адрес:</label>
    <?php echo CHtml::activeTextField($model,'email',array('class' => 'form-control','id' => 'mail')); ?>
  </div>

  <div class="form-group">
    <label for="text"><span class='required'>*</span>Опишите вопрос:</label>
    <?php echo CHtml::activeTextArea($model,'message', array('class' => 'form-control','id' => 'text', 'rows' => '6')); ?>
  </div>

  <div class="form-group b_captcha block">
    <label for="captcha"><span class='required'>*</span>Капча:</label><br />
    <?php $form->widget('CCaptcha', array(
        'captchaAction' => Yii::app()->createUrl('feedback/captcha'),
        'clickableImage'=>true,
        'showRefreshButton'=>false, 
        'imageOptions' => array('width' => '79','height' => '37')
    )) ?>
    <?php echo CHtml::activeTextField($model, 'code',array('class' => 'form-control','id' => 'captcha'))?>
  </div>
  
  <div class='form-group text-center'>
    <button type="submit" class="btn btn-black">Отправить</button>  
  </div>
  
</form>
<?php $this->endWidget(); ?>