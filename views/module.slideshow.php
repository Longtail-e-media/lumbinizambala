<?php
/* First Slideshow */
$reslide='';

$Records = Slideshow::getSlideshow_by(1);
// var_dump($Records); die();
if($Records) {
    $reslide.='';
        foreach($Records as $RecRow) {
          
            $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
            if(file_exists($file_path) and !empty($RecRow->image)) {
                $reslide.='
                <div class="item">
                <img alt="'.$RecRow->title.'" src="'.IMAGE_PATH.'slideshow/'.$RecRow->image.'" class="img-responsive">
                <div class="carousel-caption">
                    <h1 class="v2">'.strip_tags($RecRow->content).'</h1>
                </div>
            </div>
                
                ';

            }
        }
    $reslide.='';
}

$jVars['module:slideshow']= $reslide;
?>