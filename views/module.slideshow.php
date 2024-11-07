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
                    <span>Luxury Hotel and resort</span>
                    <h1 class="v2">'.strip_tags($RecRow->content).'</h1>
                    <div class="carousel-caption-book">
                        <div class="carou-caption-whats"><a href=""><i class="fa fa-whatsapp fa-3x"></i></a></div>
                        <div class="carou-caption-booking">
                            <a href="">
                                <h4>Book now</h4>
                                <p>123456789</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
                
                ';

            }
        }
    $reslide.='';
}

$jVars['module:slideshow']= $reslide;
?>