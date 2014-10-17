<?php

/**
 * @var $profile UserProfile
 * @var $user User
 * @var $form CActiveForm
 * @var $changePasswordForm ChangePasswordForm
 */

$this->pageTitle=Yii::t('UsersModule.core', 'Мои Объявления');

$this->breadcrumbs[] = Yii::t('UsersModule.core', 'Мои Объявления');

?>
<div class='row block'>

  <div class='col-xs-12'>                   
    <h3><strong><?php echo Yii::t('UsersModule.core', 'Мои Объявления'); ?></strong></h3>
  </div>
</div>

<div class='row'>
<div class='col-xs-12'>                              

  <div class='b_register-tab _border-bottom-dashed _bg-gray block'>

    <ul id="cabinet-tab" class="nav nav-tabs" role="tablist">

      <li class="active">
        <a href="#classifieds" role="tab" data-toggle="tab" class="btn">Мои объявления</a>
        <span class="round-caret">
          <span class="caret"></span>
        </span>
      </li>
      <li>
        <a href="<?=Yii::app()->createUrl('profile') ?>" role="tab" data-toggle="tab" class="btn">Мои данные</a>
        <span class="round-caret">
          <span class="caret"></span>
        </span>
      </li>

    </ul>
    
    <div id="classifieds" class="tab-content fade in">    

      <?php $this->widget('zii.widgets.CListView', array(
    		'dataProvider'=>$products,
    		'ajaxUpdate'=>false,
    		'template'=>'{items}',
    		'itemView'=>'_product_wide',
    		'sortableAttributes'=>array(
    			'name', 'price'
    		),
    	));
     ?>

    </div>
    
  </div> 
  <div class='_shadow-ex-short block'></div>

</div>
</div>

