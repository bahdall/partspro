<?php

/**
 * Category view
 * @var $this CategoryController
 * @var $model StoreCategory
 * @var $provider CActiveDataProvider
 * @var $categoryAttributes
 */

// Set meta tags
$this->pageTitle = ($this->model->meta_title) ? $this->model->meta_title : $this->model->name;
$this->pageH = $this->model->name;
$this->pageKeywords = $this->model->meta_keywords;
$this->pageDescription = $this->model->meta_description;

// Create breadcrumbs
$ancestors = $this->model->excludeRoot()->ancestors()->findAll();

foreach($ancestors as $c)
	$this->breadcrumbs[$c->name] = $c->getViewUrl();

$this->breadcrumbs[] = $this->model->name;


$limits=array(Yii::app()->request->removeUrlParam('/store/category/view', 'per_page')  => $this->allowedPageLimit[0]);
array_shift($this->allowedPageLimit);
foreach($this->allowedPageLimit as $l)
	$limits[Yii::app()->request->addUrlParam('/store/category/view', array('per_page'=> $l))]=$l;
?>

<!-- catalog_with_sidebar end -->


<div class='b_filter-cont _border-bottom-dashed _bg-gray'>
              <div class='row'>
              
                <div class='col-xs-3 b_filter'>
                    <?php
            			$this->widget('application.modules.store.widgets.filter.SFilterRenderer', array(
            				'model'=>$this->model,
            				'attributes'=>$this->eavAttributes,
                            'view' => 'partsCategory',
            			));
            		?>
                </div>   

                <div class='col-xs-9 b_sort-cont'>
                  <div class='clearfix'>

                    <ul class='list-inline b_sort'>

                      <li>Сортировать по:</li>
                      <li>
                        <?if(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price.desc')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price'))?>">Цена:<span class="caret"></span></a>
                        <?elseif(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price.desc'))?>">Цена:<span class="caret reverse"></span></a>
                        <?else:?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'price'))?>">Цена:<span class="caret"></span><span class="caret reverse"></a>                        
                        <?endif;?>
                      </li>
                      <li>
                        <?if(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year.desc')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year'))?>">Год:<span class="caret"></span></a>
                        <?elseif(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year.desc'))?>">Год:<span class="caret reverse"></span></a>
                        <?else:?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'year'))?>">Год:<span class="caret"></span><span class="caret reverse"></a>                        
                        <?endif;?>                      
                      </li>
                      <li>
                        <?if(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'wear.desc')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'wear'))?>">Износ:<span class="caret"></span></a>
                        <?elseif(Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'wear')) == Yii::app()->request->url):?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'wear.desc'))?>">Износ:<span class="caret reverse"></span></a>
                        <?else:?>
                            <a href="<?=Yii::app()->request->addUrlParam('/store/category/view', array('sort'=>'wear'))?>">Износ:<span class="caret"></span><span class="caret reverse"></a>                        
                        <?endif;?> 
                      </li>

                    </ul>

                    <ul class='list-inline b_quantity'>

                      <li><span>Показывать по:</span></li>
                      <?foreach($limits as $href => $limit):?>
                      <li><a href="<?=$href?>" class='<?=$href == Yii::app()->request->url ? "active" : ""?>'><?=$limit?></a></li>
                      <?endforeach;?>                                   
                    </ul>

                  </div>

                  <hr class='divider'> 

                  <?php
            			$this->widget('zii.widgets.CListView', array(
            				'dataProvider'=>$provider,
            				'ajaxUpdate'=>false,
            				'template'=>'{items}',
            				'itemView'=>$itemView,
            				'sortableAttributes'=>array(
            					'name', 'price'
            				),
                            'htmlOptions' => array('class'=>'clearfix'),
            			));
            		?>

                </div>                

              </div>
              
              <div class='row'>

                <div class='text-center b_pagination'>
                  <?php
                        $pages = $provider->getPagination();
                        $this->widget('CLinkPager', array(
                            'pages' => $pages,
                            'htmlOptions' => array(
                                'class' => 'list-inline',
                            ),
                            'firstPageLabel'    => '',
                            'lastPageLabel'    => '',
                            'footer'    => '',
                            'header'    => '',
                            'prevPageLabel' => '<span href="#" class="btn btn-left"></span>',
                            'nextPageLabel' => '<span href="#" class="btn btn-right"></span>',
                            'selectedPageCssClass'  => 'active',
                        )); 
            		?>
                </div>
                
              </div>

            </div>
            
