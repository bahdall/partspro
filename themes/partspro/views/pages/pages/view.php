<?php

/**
 * View page
 * @var Page $model
 */

// Set meta tags
$this->pageTitle       = ($model->meta_title) ? $model->meta_title : $model->title;
$this->pageKeywords    = $model->meta_keywords;
$this->pageDescription = $model->meta_description;


$catTree = new PageCategoryTree();
$catTree = $catTree->buildTree();
foreach($catTree as $cat)
{    
    $this->breadcrumbs[$cat->name] = $cat->getViewUrl();
    if($cat->id == $model->category->id)break;
}
    
$this->breadcrumbs[] = $model->title;

?>
<div class='row block'>

  <div class='col-xs-12'>                   
    <h4><strong><?php echo $model->title; ?></strong></h4>
  </div>

  <div class='col-xs-12 block-xxlg'>            
    <span class="bg-yellow"><?php echo date("d.m.Y",strtotime($model->created)); ?></span>
  </div>

    
  <div class='col-xs-12'>

    <div class="i_news-inner">

      <div class='col-xs-4'>
        <img src="<?=$model->getImage('270x270','adaptiveResize')?>" class='img-responsive round'>
      </div>

      <div class='col-xs-8'>
        <div class="b_news-text">

          <p>
            <?php echo $model->full_description; ?>
          </p>
          
          <a href="<?=$model->category->getViewUrl()?>" class='btn btn-black'>Назад к новостям</a>

        </div>
      </div>

    </div>
                
  </div>                                 

    

  </div>