<?php

/**
 * Display attributes list
 **/

$this->pageHeader = Yii::t('StoreModule.admin', 'Регионы');

$this->breadcrumbs = array(
	'Home'=>$this->createUrl('/admin'),
	Yii::t('StoreModule.admin', 'Регионы'),
);

$this->topButtons = $this->widget('application.modules.admin.widgets.SAdminTopButtons', array(
	'template'=>array('create'),
	'elements'=>array(
		'create'=>array(
			'link'=>$this->createUrl('create'),
			'title'=>Yii::t('StoreModule.admin', 'Создать регион'),
			'options'=>array(
				'icons'=>array('primary'=>'ui-icon-plus')
			)
		),
	),
));

$this->widget('ext.sgridview.SGridView', array(
	'dataProvider'=>$dataProvider,
	'id'=>'productsListGrid',
	'filter'=>$model,
	'columns'=>array(
		array(
			'class'=>'CCheckBoxColumn',
		),
		array(
			'class'=>'SGridIdColumn',
			'name'=>'id'
		),
		array(
			'name'=>'name',
			'type'=>'raw',
			'value'=>'CHtml::link(CHtml::encode($data->name), array("/store/admin/region/update", "id"=>$data->id))',
		),
		// Buttons
		array(
			'class'=>'CButtonColumn',
			'template'=>'{update}{delete}',
		),
	),
));