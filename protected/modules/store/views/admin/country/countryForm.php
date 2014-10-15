<?php

return array(
	'id'=>'countryUpdateForm',
	'showErrorSummary'=>true,
	'elements'=>array(
		'content'=>array(
			'type'=>'form',
			'title'=>Yii::t('StoreModule.admin', 'Параметры'),
			'elements'=>array(
				'name'=>array(
					'type'=>'text',
					'hint'=>Yii::t('StoreModule.admin', 'Укажите название страны')
				),
			),
		),
	),
);