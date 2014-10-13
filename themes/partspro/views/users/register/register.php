<?php

/**
 * @var UserProfile $profile
 * @var User $user
 * @var Controller $this
 */

$this->pageTitle = Yii::t('UsersModule.core','Регистрация');
$this->pageH = Yii::t('UsersModule.core','Регистрация');
$this->breadcrumbs[] = Yii::t('UsersModule.core','Регистрация');
$assetsPath = Yii::app()->theme->baseUrl."/assets/";

?>
<div class='clearfix'>
              
    <div class='col-xs-6'>

      <div class='b_register _border-bottom-dashed _bg-gray block'>
        <?php $form=$this->beginWidget('CActiveForm', array(
			'id'=>'user-register-form',
			'enableAjaxValidation'=>false,
		)); ?>
          <div class="form-group <?=$user->getError('username') ? "has-error" : ""?> <?=(!$user->getError('username') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($user,'username'); ?>
			<?php echo $form->textField($user,'username',array('class' => 'form-control')); ?>
            <?if($user->getError('username')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>

          <div class="form-group <?=$profile->getError('full_name') ? "has-error" : ""?> <?=(!$profile->getError('full_name') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($profile,'full_name'); ?>
			<?php echo $form->textField($profile,'full_name',array('class' => 'form-control')); ?>
            <?if($profile->getError('full_name')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>

          <div class="form-group <?=$profile->getError('phone') ? "has-error" : ""?> <?=(!$profile->getError('phone') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($profile,'phone'); ?>
			<?php echo $form->textField($profile,'phone',array('class' => 'form-control')); ?>
            <?if($profile->getError('phone')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>                  

          <div class="form-group <?=$user->getError('email') ? "has-error" : ""?> <?=(!$user->getError('email') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($user,'email'); ?>
			<?php echo $form->textField($user,'email',array('class' => 'form-control')); ?>
            <?if($user->getError('email')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>

          <div class="form-group <?=$profile->getError('delivery_address') ? "has-error" : ""?> <?=(!$profile->getError('delivery_address') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($profile,'delivery_address'); ?>
			<?php echo $form->textArea($profile,'delivery_address',array('class' => 'form-control')); ?>
            <?if($profile->getError('delivery_address')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>

          <div class="form-group <?=$user->getError('password') ? "has-error" : ""?> <?=(!$user->getError('password') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($user,'password'); ?>
			<?php echo $form->passwordField($user,'password',array('class' => 'form-control')); ?>
            <?if($user->getError('password')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div> 
          
          <div class="form-group <?=$user->getError('password_repeat') ? "has-error" : ""?> <?=(!$user->getError('password_repeat') && Yii::app()->request->isPostRequest ) ? "has-success" : ""?>">
            <?php echo $form->label($user,'password_repeat'); ?>
			<?php echo $form->passwordField($user,'password_repeat',array('class' => 'form-control')); ?>
            <?if($user->getError('password_repeat')):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
                </div>
            <?elseif(Yii::app()->request->isPostRequest):?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_true.png" alt="icon">
                </div>
            <?endif;?>
          </div>              
          
          <div class='form-group text-center'>
            <button type="submit" class="btn btn-black btn-wide"><?=Yii::t('UsersModule.core', 'Регистрация')?></button>  
          </div>
          
        <?php $this->endWidget(); ?>
      </div> 
      <div class='_shadow-ex-short block'></div>

    </div>                               

    <div class='col-xs-6 text-center b_register-icon'>
        <img src="<?=$assetsPath?>images/bg-register.png" alt="register">
    </div>
    
</div>



