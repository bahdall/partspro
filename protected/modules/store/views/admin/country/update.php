
<?php

/**
 * Create/update attribute
 */

	$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
        'form'=>$form,
        'langSwitcher'=>!$model->isNewRecord,
		'deleteAction'=>$this->createUrl('/store/admin/attribute/delete', array('id'=>$model->id))
	));

	
	$this->breadcrumbs = array(
		'Home'=>$this->createUrl('/admin'),
		Yii::t('StoreModule.admin', 'Страны')=>$this->createUrl('index'),
		($model->isNewRecord) ? Yii::t('StoreModule.admin', 'Создание страны') : CHtml::encode($model->name),
	);

	$this->pageHeader = $title;

?>

<div class="form wide padding-all">
    <?=$form->asTabs()?>
</div>