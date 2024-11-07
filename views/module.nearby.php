<?php
$nearbydetail = $nearbydetail_modals= $imageList = $nearbybred = '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();
    // pr($recRow);
    if (!empty($recRows)) {

        foreach($recRows as $recRow){

            $imglink = BASE_URL . 'template/web/img/slider/2.jpg';
            if ($recRow->image != "a:0:{}") {
                $imageList = unserialize($recRow->image);
                $imgno = array_rand($imageList);
                $file_path = SITE_ROOT . 'images/nearby/' . $imageList[$imgno];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'nearby/' . $imageList[$imgno];
                }
            }

            $nearbydetail .= '

             <div class="item ">
                    <div class="events-item">
                        <div class="events-img"><img src="'.$imglink .'" class="img-responsive" alt="' . $recRow->title . '"></div>
                        <div class="events-content">
                            <a href="#" title="">
                                <h3 class="sky-h3 near_by">' . $recRow->title . '</h3>
                                <p class="sky-p">Distance: ' . $recRow->distance . '</p>
                                <a href="' . $recRow->Google_embed . '" target="_blank" rel="noopener" class="get_direction">Get Direction </a>
                            </a>
                        </div>
                    </div>
                </div>
            ';

        } 
    }
}
// pr($nearbydetail);


$jVars['module:inner-nearby-detail'] = $nearbydetail;
$jVars['module:inner-nearby-detail-modals'] = $nearbydetail_modals;

?>