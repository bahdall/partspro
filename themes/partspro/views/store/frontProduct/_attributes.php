<?php

// Display product custom options table.
if($model->getEavAttributes())
{
	$this->widget('application.modules.store.widgets.SAttributesTableRenderer', array(
		'model'=>$model,
		'htmlOptions'=>array(
			'class'=>'block b_pro-info'
		),
	));
}
