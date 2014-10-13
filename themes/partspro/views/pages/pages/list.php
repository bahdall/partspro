<?php

/**
 * View category pages
 * @var PageCategory $model
 */

// Set meta tags
$this->pageTitle = ($model->meta_title) ? $model->meta_title : $model->name;
$this->pageKeywords = $model->meta_keywords;
$this->pageDescription = $model->meta_description;

$this->breadcrumbs[] = $model->name;
?>
<div class='row block-sm'>
  <div class='col-xs-12 block-xxlg'> 

    <h4><strong><?php echo $model->name ?></strong></h4>

  </div>
</div>

<div class='col-xs-12'>
<?php if (sizeof($pages) > 0): ?>
    <?php foreach ($pages as $page): ?>
        <div class="i_news">
          <img src="<?=$page->getImage('132x132','adaptiveResize')?>">
          <div class="b_news-text">
            <span class="bg-yellow"><?php echo date("d.m.Y",strtotime($page->created)); ?></span><br>
            <h5>
              <?php echo CHtml::link($page->title, array('/pages/pages/view', 'url'=>$page->url),array('class'=>'block-sm')); ?>
            </h5>
            <p><?php echo $page->short_description; ?></p>
          </div>
        </div>
    <?php endforeach ?>
<?php else: ?>
    <?php echo Yii::t('PagesModule.core', 'В категории нет страниц.') ?>
<?php endif ?>
                

<div class="text-center b_pagination">
  <?php $this->widget('CLinkPager', array(
        'pages' => $pagination,
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
    )); ?>

</div>

</div>

