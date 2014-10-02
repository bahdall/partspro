<?echo CHtml::form($this->createUrl('/users/login'),'post', array('role'=>'form'));?>
                              
  <div class="form-group">
    <label for="login">Логин</label>
    <?php echo CHtml::activeTextField($model,'username',array(
            'class' => 'form-control',
            'placeholder' => 'Enter email',
            'id' => 'login',
    )); ?>
  </div>
  
  <div class="form-group">
    <label for="pass">Пароль</label>
    <?php echo CHtml::activePasswordField($model,'password',array(
            'class' => 'form-control',
            'placeholder' => 'Password',
            'id' => 'pass',
    )); ?>
  </div>

  <div class='form-group'>
    <?php echo CHtml::link(Yii::t('UsersModule.core', 'Забыли пароль?'), array('/users/remind'),array('class' => 'text-red')) ?>
  </div>                   

  <div class='form-group'>
      <button type="submit" class="btn btn-yellow"><?php echo Yii::t('UsersModule.core','Вход'); ?></button>
      <?php echo CHtml::link(Yii::t('UsersModule.core', 'Регистрация'), array('register/register'),array('class' => 'btn btn-yellow')) ?>
   </div>
   

<?php echo CHtml::endForm(); ?>