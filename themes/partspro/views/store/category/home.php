
<?php
$this->widget('application.modules.store.widgets.filter.SFilterRenderer', array(
	'model'=>$this->model,
	'attributes'=>$this->eavAttributes,
    'view' => 'partsHome',
));
?>