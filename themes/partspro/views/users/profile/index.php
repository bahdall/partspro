<?php

/**
 * @var $profile UserProfile
 * @var $user User
 * @var $form CActiveForm
 * @var $changePasswordForm ChangePasswordForm
 */
$assetsPath = Yii::app()->theme->baseUrl."/assets/";
$this->pageTitle=Yii::t('UsersModule.core', 'Персональный кабинет');
$this->breadcrumbs[] = Yii::t('UsersModule.core', 'Персональный кабинет');

?>
<div class="row block">

  <div class="col-xs-12">                   
    <h3><strong><?=Yii::t('UsersModule.core', 'Персональный кабинет')?></strong></h3>
  </div>
</div>

<div class='row'>
                
    <div class='col-xs-6'> 

      <div class="b_register _border-bottom-dashed _bg-gray block">
        <?php $form=$this->beginWidget('CActiveForm'); ?>
          
          <div class="form-group <?=$changePasswordForm->getError('current_password') ? 'has-error' : ''?>">
            <?php echo $form->label($changePasswordForm,'current_password'); ?>
		    <?php echo $form->passwordField($changePasswordForm,'current_password',array('class'=>'form-control')) ?>                      
            <?if($changePasswordForm->getError('current_password')):?>
            <div class='notification'>
              <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
            </div>
            <?endif;?>
          </div>

          <div class="form-group <?=$changePasswordForm->getError('new_password') ? 'has-error' : ''?>">
            <?php echo $form->label($changePasswordForm,'new_password'); ?>
		    <?php echo $form->passwordField($changePasswordForm,'new_password',array('class'=>'form-control')) ?>
            <?if($changePasswordForm->getError('new_password')):?>
            <div class='notification'>
              <img src="<?=$assetsPath?>images/icon_false.png" alt="icon">
            </div>
            <?endif;?>                     
          </div>                                  
          
          <div class="form-group text-center">
            <button class="btn btn-black btn-wide" type="submit" data-toggle="modal" data-target="#success">Сменить пароль</button>  
          </div>
          
        <?php $this->endWidget(); ?>
      </div>
      <div class='_shadow-ex-short'></div>

    </div>

    <div class='col-xs-6'>                              

      <div class='b_register-tab _border-bottom-dashed _bg-gray block'>

        <ul id="cabinet-tab" class="nav nav-tabs" role="tablist">
          <li class="active">
            <a href="#data" role="tab" data-toggle="tab" class="btn">Мои данные</a>
            <span class="round-caret">
              <span class="caret"></span>
            </span>
          </li>
            
          <li>
            <a href="#classifieds" role="tab" data-toggle="tab" class="btn">Мои объявления</a>
            <span class="round-caret">
              <span class="caret"></span>
            </span>
          </li>
        </ul>
        
        <div id="cabinet-tab" class="tab-content">

          <div class="tab-pane fade active in" id="data">
            <?php $form=$this->beginWidget('CActiveForm'); ?>
              <div class="form-group has-info">
                <?php echo $form->label($profile,'full_name'); ?>
        		<?php echo $form->textField($profile,'full_name',array('class'=>'form-control')) ?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_engine.png" alt="icon">
                </div>
              </div>


              <div class="form-group has-info">
                <?php echo $form->label($profile,'phone'); ?>
        		<?php echo $form->textField($profile,'phone',array('class'=>'form-control')) ?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_engine.png" alt="icon">
                </div>
              </div>                  

              <div class="form-group has-info">
                <?php echo $form->label($user,'email'); ?>
        		<?php echo $form->textField($user,'email',array('class'=>'form-control')) ?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_engine.png" alt="icon">
                </div>
              </div>

              <div class="form-group has-info">
                <?php echo $form->label($profile,'delivery_address'); ?>
        		<?php echo $form->textArea($profile,'delivery_address',array('class'=>'form-control')) ?>
                <div class='notification'>
                  <img src="<?=$assetsPath?>images/icon_engine.png" alt="icon">
                </div>
              </div>                
              
              <div class='form-group block'>
                <img src="<?=$assetsPath?>images/icon_engine.png" alt="icon" class='pull-left'>
                <span>&nbsp;- Редактируемое поле</span>
              </div>

              <div class='form-group text-center'>
                <button type="submit" class="btn btn-black btn-wide"><?=Yii::t('UsersModule.admin', 'Сохранить')?></button>  
              </div>
              
            <?php $this->endWidget(); ?>

          </div>

        </div>
        
      </div> 
      <div class='_shadow-ex-short block'></div>

    </div>                                               
    
</div>


<?$flashmessage = Yii::app()->user->getFlash('messages');?>
 <!-- </modal id='success'> -->
<div class="modal fade" id='success_modal'>
  <div class="modal-dialog modal-sm">

    <div class="modal-content _border-bottom-dashed _bg-gray">

      <div class="modal-header block">
        <a href="javascript:;" class="close" data-dismiss="modal"><img src="<?=$assetsPath?>images/icon_close.png" alt=""></a>
      </div>

      <div class="modal-body">
        <div class='text-center block'>
          <p class='block-sm'><?=$flashmessage[0]?></p>
          <img src="<?=$assetsPath?>images/icon_ok.png" alt="Ok">
        </div>
      </div>              

    </div>

  </div>
</div>
<!-- </modal> -->

<?if( $flashmessage ):?>
<script>
$(function(){
    $("#success_modal").modal("show");
})
</script>
<?endif;?>
