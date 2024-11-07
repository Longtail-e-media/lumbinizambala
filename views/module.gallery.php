<?php
$reslgall = '';
$resnav = '';

$gallRec = Gallery::getParentgallery(2);
if (defined('HOME_PAGE')) {
if (!empty($gallRec)) {
    // pr($gallRec);
foreach ($gallRec as $key => $gallRow) {
    if($key==0){
    $active='class="active"';
    $activea='in active';
}
else{
    $active='';
    $activea='';
}
    $resnav .='<li '.$active.'><a data-toggle="tab" href="#Hotel-'.$gallRow->id.'">'.$gallRow->title.'</a></li>';
$childRec = GalleryImage::getGalleryImages($gallRow->id);


if (!empty($childRec)) {
$reslgall .= ' <div id="Hotel-'.$gallRow->id.'" class="tab-pane fade '.$activea.'">
                        <div class="product ">
                            <div class="row" id="light_gallery">';
foreach ($childRec as $childRow) {
$file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
if (file_exists($file_path) and !empty($childRow->image)) {
    $reslgall .= '
    <div class="gallery_product col-lg-3 col-md-3 col-sm-6 col-xs-6 ">
                                    <div class="wrap-box">
                                        <div class="box-img">
                                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" class="img-responsive" alt="Product" title="' . $childRow->title . '">
                                        </div>
                                        <div class="gallery-box-main " title>
                                            <div class="gallery-icon">
                                                <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '"  title=""><i class="ion-ios-plus-empty" aria-hidden="true" ></i> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    ';
}
}
$reslgall .= '  </div>
                        </div>
                    </div>';
}
}
}

$res_gallery = '
                <!-- Gallery starts -->
                <section class="content gallery gallery1">
                    <div class="container">
                        <div class="section-title title-white">
                            <h2>Beautiful View of <span>Shangrila Blu</span></h2>
                            <p class="mar-bottom-30">Few collection of our pictures. We are quiet sure that you will find it more beautiful once you physically visit us.</p>
                        </div>
                    </div>
                    <div class="gallery-main gallery-slider">
                        '. $reslgall .'
                    </div>
                </section>
                <!-- Gallery Ends -->';

$jVars['module:galleryHome'] = $reslgall; 
$jVars['module:gallerynav'] = $resnav; 

}

$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;

$gallerybread='';
$siteRegulars = Config::find_by_id(1);
$imglink= $siteRegulars->gallery_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/gallery/' . $siteRegulars->gallery_upload ;
}
else{
    $img='';
}

$gallerybread='
<style>
.gallery_banner{
  background: var(--color-gradient-overlay), url("'.$img.'") no-repeat center;
}
</style>


<section class="banner-tems text-center gallery_banner">
        <div class="container">
            <div class="banner-content">
                <h2>GALLERY</h2>
                <p>Explore, Experience, and Enjoy!</p>
            </div>
        </div>
    </section>';

$jVars['module:gallery-bread'] = $gallerybread;

/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = $thegalnav= $thegalall ='';
$gallRectit = Gallery::getParentgallery();
$gallRecall = GalleryImage::getAllImg();

if($gallRecall){
    $thegalall .='';
    // pr($gallRecall);
    foreach($gallRecall as $gallRecalls){
        $thegalall .='<div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-6 ">
                                    <div class="wrap-box-1">
                                        <div class="box-img">
                                            <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $gallRecalls->image . '" alt="image gallery">
                                                <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $gallRecalls->image . '" class="img-responsive" alt="Seven Star"></a>
                                        </div>
                                    </div>
                                    </div>';
    }
}

if ($gallRectit) {
    $thegal .= '';
    foreach ($gallRectit as $row) {
        $thegalnav .= '
     <li><a data-toggle="tab" href="#rooms-' . $row->id . '">' . $row->title . '</a></li>';
    }
    $thegal .= '';

    // $thegal .= '
    //     <div id="gallery" class="gallery full-gallery de-gallery gallery-3-cols">
    // ';
    foreach ($gallRectit as $row) {
        $thegal .='<div id="rooms-' . $row->id . '" class="tab-pane fade">
        <div class="product ">
            <div class="row">';
        $gallRec = GalleryImage::getGalleryImages($row->id);
        foreach ($gallRec as $row1) {
            // pr($row1);
            

            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 

                <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-6 ">
                                    <div class="wrap-box-1">
                                        <div class="box-img">
                                            <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="image gallery">
                                                <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" class="img-responsive" alt="' . $row1->title . '"></a>
                                        </div>
                                    </div>
                                </div>
                   
                ';
            endif;

           
        }
        $thegal .='  </div>
        </div>
    </div>';
    }
    $thegal .= '';

}

$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-all'] = $thegalall;
$jVars['module:gallery-nav'] = $thegalnav;
