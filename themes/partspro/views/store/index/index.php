<?
$assetsPath = Yii::app()->theme->baseUrl."/assets/";

$model = StoreCategory::model()
			->excludeRoot()
			->withFullPath('cars')
			->find();
$attributes = $model->getEavAttributes();
?>

<div class='container-fluid l_content' >
            
    <div class='row b_services _bg-gray _border-bottom-dashed'>

        <div class='container-fixed'>
    
          <div class='b_heading'>
            <h1 class='i_heading i_heading-yellow'> <?=Yii::t('core','Наши услуги')?></h1>      
          </div>                

          <div class='row'>
            <div class='b_services-inner'>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_car.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href=""><?=Yii::t('core','Продажа авто')?></a>
                </div>
              </div>

              <div class='bl_service-icon active'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_door.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href=""><?=Yii::t('core','Автозапчасти')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_money.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href=""> <?=Yii::t('core','Выкуп авто')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_helmet.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href=""> <?=Yii::t('core','Аргон сварка')?></a>
                </div>
              </div>

              <div class='bl_service-icon'>
                <div class='img'>
                  <img src="<?=$assetsPath?>upload/service_evacuation.png" alt="door">
                </div>
                <div class='i_service-link'>
                  <a href=""> <?=Yii::t('core','Эвакуатор')?></a>
                </div>
              </div>

            </div>
          </div>
          
          

        </div>

    </div>
    <div class='_shadow _margin'></div>

    <div class='container-fixed'>
      <div class="b_tab _bg-gray _border-bottom-dashed">

      <div class='row'>
       
          <ul id="myTab" class="nav nav-tabs" role="tablist">
            <li class="active">
              <a href="#home" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Автозапчасти')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="#profile" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Грузовые авто')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="#profile" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Легковые авто')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
            <li>
              <a href="#profile" role="tab" data-toggle="tab" class='btn'> <?=Yii::t('core','Заказать деталь')?></a>
              <span class='round-caret'>
                <span class="caret"></span>
              </span>
            </li>
          </ul>

          <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade active in" id="home">

              <form name='filter'>

                <div class='row block'>
                  <div class='col-xs-8 center-block'>
                    
                    <div class="input-group-inline">

                      <input type="text" class="form-control">                            
                      <span class="input-group-btn">
                        <button class="btn btn-yellow" type="button"> <?=Yii::t('core','Поиск по каталогу авто')?></button>
                      </span>                          

                    </div>                                

                  </div>
                </div>
                <div class='row block-sm'>
                  
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1" > <?=Yii::t('core','Марка')?>:</label>                              
                      <select name="" class='select-styled form-control'>
                        <option value=""> <?=Yii::t('core','Выберите марку')?></option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>

                    </div>
                  </div>
                  <div class='col-xs-3 col-xs-offset-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1"> <?=Yii::t('core','Тип кузова')?>:</label>
                      <select name="" class='select-styled form-control'>
                        <option value=""> <?=Yii::t('core','Выберите тип кузова')?></option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1"> <?=Yii::t('core','Тип КПП')?>:</label>
                      <select name="" class='select-styled form-control'>
                        <option value=""> <?=Yii::t('core','Выберите тип КПП')?></option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                      
                    </div>
                  </div>  
                </div>
                <div class='row block'>
                   
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1"> <?=Yii::t('core','Цена (тысяч руб.)')?>:</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','От')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','До')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div>                            

                  </div>

                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1"> <?=Yii::t('core','Год выпуска')?>:</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','От')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','До')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1"> <?=Yii::t('core','Состояние')?>:</label>
                      <select name="" class='select-styled form-control'>
                        <option value=""> <?=Yii::t('core','Выберите тип кузова')?></option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                    
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1"> <?=Yii::t('core','Пробег (тысяч км.)')?></label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','От')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          <?=Yii::t('core','До')?>: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                </div>

                <div class='row'>

                  <div class='col-xs-6 center-block text-center'>

                    <div class='b_btn-show'>
                      <button class='btn btn-show'>
                        <span class='label-black-bordered'>18+</span>
                        <?=Yii::t('core','Показать')?>
                      </button>                              
                    </div>                            

                  </div>                          

                </div>
              </form> 

            </div>
              
            <div class="tab-pane fade" id="profile">
               <form name='filter'>

                <div class='row block'>
                  <div class='col-xs-8 center-block'>
                    
                    <div class="input-group-inline">

                      <input type="text" class="form-control">                            
                      <span class="input-group-btn">
                        <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                      </span>                          

                    </div>                                

                  </div>
                </div>
                <div class='row block-sm'>
                  
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1" >Марка:</label>                              
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите марку</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>

                    </div>
                  </div>
                  <div class='col-xs-3 col-xs-offset-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип кузова:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип КПП:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип КПП</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                      
                    </div>
                  </div>  
                </div>
                <div class='row block'>
                   
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div>                            

                  </div>

                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Год выпуска:</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Состояние:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                    
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                </div>

                <div class='row'>

                  <div class='col-xs-6 center-block text-center'>

                    <div class='b_btn-show'>
                      <button class='btn btn-show'>
                        <span class='label-black-bordered'>18+</span>
                        Показать
                      </button>                              
                    </div>                            

                  </div>                          

                </div>
              </form> 
            </div>
            <div class="tab-pane fade" id="dropdown1">
               <form name='filter'>

                <div class='row block'>
                  <div class='col-xs-8 center-block'>
                    
                    <div class="input-group-inline">

                      <input type="text" class="form-control">                            
                      <span class="input-group-btn">
                        <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                      </span>                          

                    </div>                                

                  </div>
                </div>
                <div class='row block-sm'>
                  
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1" >Марка:</label>                              
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите марку</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>

                    </div>
                  </div>
                  <div class='col-xs-3 col-xs-offset-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип кузова:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип КПП:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип КПП</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                      
                    </div>
                  </div>  
                </div>
                <div class='row block'>
                   
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div>                            

                  </div>

                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Год выпуска:</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Состояние:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                    
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                </div>

                <div class='row'>

                  <div class='col-xs-6 center-block text-center'>

                    <div class='b_btn-show'>
                      <button class='btn btn-show'>
                        <span class='label-black-bordered'>18+</span>
                        Показать
                      </button>                              
                    </div>                            

                  </div>                          

                </div>
              </form> 
            </div>
            <div class="tab-pane fade" id="dropdown2">
               <form name='filter'>

                <div class='row block'>
                  <div class='col-xs-8 center-block'>
                    
                    <div class="input-group-inline">

                      <input type="text" class="form-control">                            
                      <span class="input-group-btn">
                        <button class="btn btn-yellow" type="button">Поиск по каталогу авто</button>
                      </span>                          

                    </div>                                

                  </div>
                </div>
                <div class='row block-sm'>
                  
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1" >Марка:</label>                              
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите марку</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>

                    </div>
                  </div>
                  <div class='col-xs-3 col-xs-offset-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип кузова:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Тип КПП:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип КПП</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                      
                    </div>
                  </div>  
                </div>
                <div class='row block'>
                   
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Цена (тысяч руб.):</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div>                            

                  </div>

                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Год выпуска:</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                  <div class='col-xs-3'>
                    <div class="form-group">

                      <label for="exampleInputEmail1">Состояние:</label>
                      <select name="" class='select-styled form-control'>
                        <option value="">Выберите тип кузова</option>
                        <option value="">BMW</option>
                        <option value="">Opel</option>
                        <option value="">Mercedes-Benz</option>
                      </select>
                        
                    </div>
                  </div>
                    
                  <div class='col-xs-3'>

                    <label for="exampleInputEmail1">Пробег (тысяч км.)</label>
                    <div class='container-xs-height'>                                                          

                      <div class='row-xs-height b_filter-range'>                                
                        <div class='col-xs-height b_filter-r-text'>
                          От: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>
                        <div class='col-xs-height b_filter-r-text'>
                          До: 
                        </div>
                        <div class='col-xs-height b_filter-r-input'>
                          <input type="text" class="form-control" id="" placeholder="0">  
                        </div>                                                                                        
                      </div>
                      
                    </div> 

                  </div>

                </div>

                <div class='row'>

                  <div class='col-xs-6 center-block text-center'>

                    <div class='b_btn-show'>
                      <button class='btn btn-show'>
                        <span class='label-black-bordered'>18+</span>
                        Показать
                      </button>                              
                    </div>                            

                  </div>                          

                </div>
              </form> 
            </div>
          </div>                                  

        </div>

      <div class='row'>

          <div class='col-xs-6 col-xs-offset-3'>
            <hr class='divider'>
          </div>

          <div class='col-xs-3'><button class='btn btn-black'> <?=Yii::t('core','Все автомобили')?></button></div>
      </div>

      <div class='row block'>

          <div class='col-xs-6 text-right'>
            <button class='btn btn-left' onclick="$('#carousel-pro').trigger('owl.prev');"></button>  
          </div>
          <div class='col-xs-6'>
            <button class='btn btn-right' onclick="$('#carousel-pro').trigger('owl.next');"></button>  
          </div>
          
      </div>

      <div class='row'>

        <div id="carousel-pro" class="owl-carousel">
        <!-- <carousel> -->  

            <!-- <carousel-item> -->
            <div class="bl-product new">

              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-1.png" alt="product">
              </div>

              <div class='block-sm'>
                <a href="">Фильтр L200</a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2009</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>70 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                220 000 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

              <div class='block'>

                <div class="tooltip bottom _custom" role="tooltip">
                 <div class="tooltip-arrow"></div>
                 <div class="tooltip-inner">
                   Восстановлен. Полностью на ходу.
                 </div>
                </div>

              </div>

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product new">
              
              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-2.png" alt="product">
              </div>

              <div class='block-sm'>
                <a href="">Мотор BMW Z4</a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2008</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>130 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                183 000 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product">
             
              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-3.png" alt="product">
              </div>
              <div class='block-sm'>
                <a href="">Колодки BMW Z4</a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2000</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>113 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                183 000 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product">
              
              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-4.png" alt="product">
              </div>
              <div class='block-sm'>
                <a href="">Выхлопная труба Nissan RSX </a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2000</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>240 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                127 500 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

              <div class='block'>

                <div class="tooltip bottom _custom" role="tooltip">
                 <div class="tooltip-arrow"></div>
                 <div class="tooltip-inner">
                   Восстановлен. Полностью на ходу.
                 </div>
                </div>

              </div>

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product">
              
              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-5.png" alt="product">
              </div>
              <div class='block-sm'>
                <a href="">Тормозные диски</a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2000</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>240 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                <del>126 000 р.</del>
                102 000 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product">
              
               <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-6.png" alt="product">
              </div>
              <div class='block-sm'>
                <a href="">Фара BMW M5</a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2009</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>483 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                102 000 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>                                        

            </div>
            <!-- </carousel-item> -->

            <!-- <carousel-item> -->
            <div class="bl-product">
              
              <div class='block-sm'>
                <img src="<?=$assetsPath?>upload/pro-4.png" alt="product">
              </div>
              <div class='block-sm'>
                <a href="">Выхлопная труба Nissan RSX </a>
              </div>

              <div class='block-sm b_pro-info'>

                <div>
                  <span class='i_info-text'>Год:</span>
                  <span>2000</span>
                </div>
                <div>
                  <span class='i_info-text'>Пробег:</span>
                  <span>240 000 км.</span>
                </div>

              </div>

              <hr class='divider block-sm'>

              <div class='i_pro-price block-sm'>
                127 500 р.
              </div>

              <div class='block-sm'>
                <form name='add-pro'>
                  <input type="text" class="input-square" value="1">
                  <button class='btn btn-black'>В корзину</button>
                </form>
              </div>

              <div class='block'>

                <div class="tooltip bottom _custom" role="tooltip">
                 <div class="tooltip-arrow"></div>
                 <div class="tooltip-inner">
                   Восстановлен. Полностью на ходу.
                 </div>
                </div>

              </div>

            </div>
            <!-- </carousel-item> -->
    
        </div>                
        <!-- </carousel> -->

      </div>

    </div>            
  </div>

  <div class='_shadow _margin'></div>

  <div class='row b_news _bg-gray _border-bottom-dashed'>

        <div class='container-fixed'>
    
          <div class='b_heading'>
            <h1 class='i_heading i_heading-yellow'> <?=Yii::t('core','Машины в разборе')?></h1>
            <h1 class='i_heading i_heading-black'> <?=Yii::t('core','Новости')?></h1>

          </div>  

          <div class='row b_news-inner'>
              
              <div class='col-xs-4'>
                <img src="<?=$assetsPath?>upload/news-1.png" class="img-circle">
                <div class='b_news-text'>
                  <span class='bg-yellow'>20.07.2014</span>
                  <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                </div>
              </div>

              <div class='col-xs-4'>
                <img src="<?=$assetsPath?>upload/news-2.png" class="img-circle">
                <div class='b_news-text'>
                  <span class='bg-yellow'>20.07.2014</span>
                  <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                </div>
              </div>

              <div class='col-xs-4'>
                <img src="<?=$assetsPath?>upload/news-3.png" class="img-circle">
                <div class='b_news-text'>
                  <span class='bg-yellow'>20.07.2014</span>
                  <a href="#">Поступил в разбор Skoda Octavia A4 TOUR 2008 1.8 МКПП 150л.с двс AUM</a>
                </div>
              </div>

          </div>

          <div class='text-center block'> <a href="#" class='btn btn-black'>Все машины</a> </div>

      </div>


  </div>
  <div class='_shadow block-md'></div>

  <div class='container-fixed _border-bottom-dashed'>
    <div class='row b_about-us'>

      <div class='col-xs-12'>
        <h4 class='bold'> <?=Yii::t('core','О компании')?></h4>
      </div>
      <div class='col-xs-10 b_about-us-text'>
        <p>
          Добро пожаловать в интернет-магазин компании «Parts-Pro». Мы предлагаем самый  широкий ассортимент авторазбора  в Екатеринбурге на любые марки автомобилей по адекватным ценам. Покупая и запчасти в нашем Интернет-магазине, вы можете быть уверены в качестве — ведь мы работаем только с крупными и проверенными производителями.
        </p>
        <p>
          Благодаря широкой партнерской сети наш каталог постоянно пополняется иномарками европейского, японского и китайского производства. Если вы нигде не можете найти необходимую деталь — оставьте заявку на индивидуальный подбор, мы найдем авторазборку в самые короткие сроки.
        </p>
      </div>
      <div class='col-xs-2 text-right'>
        <a href="#" class='btn btn-block btn-yellow block-sm' data-toggle="modal" data-target="#order">Оформить <br> заявку</a>
        <img src="<?=$assetsPath?>images/icon-list.png">
      </div>

    </div>            
  </div>

  <div class='_shadow-short block-lg'></div>

  <div class='container-fixed _border-bottom-dashed'>
    <div class='row b_partners'>

      <div class='col-xs-12'>
        <h4 class='bold'> <?=Yii::t('core','Наши партнеры')?></h4>
      </div>
      
      <div class='col-xs-8 center-block'>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-1.png" alt="Partner"></a>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-2.png" alt="Partner"></a>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-3.png" alt="Partner"></a>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-4.png" alt="Partner"></a>
      </div>

      <div class='col-xs-6 center-block'>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-5.png" alt="Partner"></a>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-6.png" alt="Partner"></a>
        <a href="#"><img src="<?=$assetsPath?>upload/partner-7.png" alt="Partner"></a>
      </div>

      <div class='col-xs-'></div>

    </div>
  </div>
  
  <div class='_shadow-short block'></div>

  <div class='container-fixed block'>
    <div class='row'>

      <div class='b_caption'>

        <div class='bl_caption b_caption-service'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Удобный сервис и качественное обслуживание')?>
          </div>
          <div class='i_caption-button'>
            <a href='#' class='btn btn-black'> <?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>

        <div class='bl_caption b_caption-garanty'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Удобный сервис и качественное обслуживание')?>
          </div>
          <div class='i_caption-button'>
            <a href='#' class='btn btn-black'><?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>

        <div class='bl_caption b_caption-sale'>

          <div class='i_caption-image'></div>
          <div class='i_caption-text'>
            <?=Yii::t('core','Удобный сервис и качественное обслуживание')?>
          </div>
          <div class='i_caption-button'>
            <a href='#' class='btn btn-black'><?=Yii::t('core','Узнать больше')?></a>
          </div>

        </div>                

      </div>

    </div>
  </div>

</div>