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
if($model->category)
{
    $this->breadcrumbs[$model->category->name] = $model->category->getViewUrl();
}    
$this->breadcrumbs[] = $model->title;

?>
<div class='row block'>

  <div class='col-xs-12'>                   
    <h4><strong><?php echo $model->title; ?></strong></h4>
  </div>
  <?if($model->preview_img):?>  
  <div class='col-xs-12 block-xxlg'>            
    <span class="bg-yellow"><?php echo date("d.m.Y",strtotime($model->created)); ?></span>
  </div>
  <?endif;?>

    
  <div class='col-xs-12'>

    <div class="i_news-inner">
      <?if($model->preview_img):?>  
      <div class='col-xs-4'>
        <img src="<?=$model->getImage('270x270','adaptiveResize')?>" class='img-responsive round'>
      </div>
      <?endif;?>

      <div class='col-xs-<?=$model->preview_img?'8':'12'?>'>
        <div class="b_news-text">

          <p>
            <?php echo $model->full_description; ?>
          </p>
          
          <?if($model->category):?>
          <a href="<?=$model->category->getViewUrl()?>" class='btn btn-black'>Назад к новостям</a>
          <?endif;?>  
        </div>
      </div>

    </div>
                
  </div>                                 

    

  </div>