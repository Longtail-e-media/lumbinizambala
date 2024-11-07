<?php
$booking_code = Config::getField('hotel_code', true);


/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';

if (defined('HOME_PAGE')) {
    $acid = Package::get_accommodationId();
    $pkgRec = Package::find_by_id($acid);
    if (!empty($pkgRec)) {
        $subRec = Subpackage::getPackage_limit($acid);

        if (!empty($subRec)) {
            $imglink = '';
            $reshmpkg .= '';

            $reshmpkg .= "";
            foreach ($subRec as $subRow) {

                $features_of_rooms = '';
                if($subRow->class_room_style == 'best_deal'){
                    $features_of_rooms = '<div class="tags discount">Best Deal</div>';
                }
                elseif($subRow->class_room_style == 'featured_room'){
                    $features_of_rooms = '<div class="tags featured">Featured Room</div>';
                }

                $img123 = unserialize($subRow->image);

                if (!empty($subRow->image)) {

                    $imgpath = IMAGE_PATH . 'subpackage/' . $img123[0];
                } else {
                    $imgpath = IMAGE_PATH . 'static/inner-img.jpg';
                }
                $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                if (file_exists($file_path) and !empty($subRow->image)) {
                                $reshmpkg .= '
                            <div class="col-md-4 room-item wow fadeInUp" data-wow-delay=".4s">
                               <div class="inner">
                                   '. $features_of_rooms .'
                                   <img src="' . $imgpath . '" class="img-responsive" alt="' . $subRow->title . '">
                                   <h3>' . $subRow->title . '</h3>
                                   <div class="price_from">Start From <span>'. $subRow->currency .' ' . $subRow->onep_price . '++</span>/night</div>
                                   <div class="spacer-half"></div>
                                   <a href="' . BASE_URL . $subRow->slug . '" class="btn-detail">View Details</a>
                               </div>
                           </div>
                                ';
                            
                }
            }
            $reshmpkg .= '';
        }
    }


}




$jVars['module:home-accommodation'] = $reshmpkg;





/*
* Home sub package list
*/
$newpkg = '';

if (defined('HOME_PAGE')) {
//$slug = !empty($_REQUEST['slug'])? addslashes($_REQUEST['slug']) : '';
//$pkgRec = Package::getPackage();
//if (!empty($pkgRec)) {

    /* foreach($pkgRec as $pkgRow) {
        $imglink = '';*/
    /* if ($pkgRow->banner_image != "a:0:{}") {
         $imageList = unserialize($pkgRow->banner_image);
         $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[0];
         if (file_exists($file_path)) {
             $imglink = IMAGE_PATH . 'package/banner/' . $imageList[0];
         }
     } */
    // if(($pkgRow->type)==0) {
    $newpkg .= '<div class="col-sm-6">
                <div class="mosaic_container">
                     <a href="' . BASE_URL . 'page/about-us">
                    <img src="' . BASE_URL . 'template/web/img/mosaic_1.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Experience Peninsula</span>
                    </a>
                </div>
            </div>';
    //}else{
    $newpkg .= '<div class="col-sm-6">
         
         <div class="col-xs-12">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'services">
                        <img src="' . BASE_URL . 'template/web/img/mosaic_2.jpg" alt="image" class="img-responsive add_bottom_30"><span class="caption_2">Services & Faciities</span>
                        </a>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="mosaic_container">
                        <a href="' . BASE_URL . 'rooms">
                        <img src="' . BASE_URL . 'template/web/img/room.jpg" alt="rooms" class="img-responsive add_bottom_30"><span class="caption_2">
Accommodation</span>
                        </a>
                    </div>
                </div>
                  <div class="col-xs-6">
                     <a href="' . BASE_URL . 'dining">
                    <div class="mosaic_container">
                        <img src="' . BASE_URL . 'template/web/img/dining.jpg" alt="dining" class="img-responsive add_bottom_30"><span class="caption_2">Dining & Bar</span>
                    </div>
                    </a>
                </div>
                
                  </div>
                ';

    //}
    //}
//}
}
$jVars['module:newpkg'] = $newpkg;


/////
$reshplist = $pakagehometype = '';
$cnt = 1;
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(1);
    $pkgRec = Subpackage::getPackage_limits(1, 6);

    if (!empty($pkgRec)) {

        foreach ($pkgRec as $pkgRow) {
            //echo "<pre>";print_r($pkgRow);die();

            //if(!empty($pkgRow->image2)) {


            //echo "<pre>";print_r($reshplist);die();
            if (($cnt % 3) == 2) {
                $reshplist .= ' <div class="container margin_60">
        <div class="row">
            <div class="col-md-5 col-md-offset-1 col-md-push-5">
                  <figure class="room_pic left"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . '" class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
            </div>
            <div class="col-md-4 col-md-offset-1 col-md-pull-6">
                <div class="room_desc_home">
                    <h3>' . $pkgRow->title . '</h3>
                    <p>
                         ' . $pkgRow->detail . ' 
                    </p>
                    <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                // if ($saveRec != null) {
                //     $featureList = $saveRec[47][1];
                //     //echo "<pre>";print_r($featureList);die();

                //     if (!empty($featureList)) {
                //         $icoRec = '';

                //         foreach ($featureList as $fetRow) {

                //             $icoRec = Features::get_by_id($fetRow);
                //             $reshplist .= '<li>
                //             <div class="tooltip_styled tooltip-effect-4">
                //                 <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                //                     <div class="tooltip-content">' . $icoRec->title . '</div>
                //               </div>
                //               </li>';


                //             if ($count++ == 5) break;
                //         }
                //     }
                // }
                $reshplist .= '</ul>
                    <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                </div><!-- End room_desc_home -->
            </div>
        </div><!-- End row -->
    </div>';

            } else {
                $reshplist .= '  <div class="container_styled_1">
        <div class="container margin_60">
            <div class="row">
                <div class="col-md-5 col-md-offset-1">
                    <figure class="room_pic"><a href="' . BASE_URL . '' . $pkgRow->slug . '"><img src="' . IMAGE_PATH . 'subpackage/image/' . $pkgRow->image2 . '" alt="' . $pkgRow->title . ' " class="img-responsive"></a><span class="wow zoomIn"><sup>' . $pkgRow->currency . ' </sup>' . $pkgRow->onep_price . '<small>Per night</small></span></figure>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div class="room_desc_home">
                        <h3>' . $pkgRow->title . '  </h3>
                        <p>
                            ' . $pkgRow->detail . '
                        </p>
                        <ul>';
                $saveRec = unserialize($pkgRow->feature);
                $count = 1;
                // if ($saveRec != null) {
                //     $featureList = $saveRec[47][1];
                //     //echo "<pre>";print_r($featureList);die();

                //     if (!empty($featureList)) {
                //         $icoRec = '';

                //         foreach ($featureList as $fetRow) {

                //             $icoRec = Features::get_by_id($fetRow);
                //             $reshplist .= '<li>
                //             <div class="tooltip_styled tooltip-effect-4">
                //                 <span class="tooltip-item"><i class="' . $icoRec->icon . '"></i></span>
                //                     <div class="tooltip-content">' . $icoRec->title . '</div>
                //               </div>
                //               </li>';


                //             if ($count++ == 5) break;
                //         }
                //     }
                // }
                $reshplist .= '</ul>
                        <a href="' . BASE_URL . '' . $pkgRow->slug . '" class="btn_1_outline">Read more</a>
                    </div><!-- End room_desc_home -->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div>';
            }
            $cnt++;
//}

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $reshplist;
$jVars['module:home-package-type-list'] = $pakagehometype;


$roomlist = $roombread = '';
$highlist = '';
$modalpopup='';
$room_package='';
$high_package='';
if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    
    $pkgRow = Package::find_by_slug($slug);
    if($pkgRow->type==1){
    
    $imglink = BASE_URL . 'template/web/images/bg/room-banner.jpg';
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }
    }

    $roombread .= '
    <style>
    .accommodation_banner{
  background: var(--color-gradient-overlay), url("'.$imglink.'") no-repeat center;
}
    </style>
    <section class="banner-tems text-center accommodation_banner">
        <div class="container">
            <div class="banner-content">
                <h2 class="text-uppercase">' . $pkgRow->title . '</h2>
                <p>' . $pkgRow->sub_title. '</p>
            </div>
        </div>
    </section>

    ';

    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    // pr($pkgRec);
    
    if (!empty($pkgRec)) {
        

        foreach ($pkgRec as $key => $subpkgRow) {
            $imageList = '';
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }


                 if($key%2==0){
            $roomlist .= '

            <div class="wrap-item">
                    <div class="img">
                        <img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="' . $subpkgRow->title . '">
                    </div>
                    <div class="text">
                        <h2 class="h2-rooms text-uppercase">' . $subpkgRow->title . '</h2>
                        <h5 class="h5-room">Start form '. $subpkgRow->currency . $subpkgRow->onep_price .' /Night</h5>
                        <p>' . strip_tags($subpkgRow->detail) . '</p>
                        <ul>
                            <li>Max:  ' . $subpkgRow->occupancy . '</li>
                            <li>Size: ' . $subpkgRow->room_size . '</li>
                            <li>View: ' . $subpkgRow->view . '</li>
                            <li>Bed: ' . $subpkgRow->bed . '</li>
                        </ul>
                        <a href="' . BASE_URL . $subpkgRow->slug . '" class="view-dateails btn btn-room">VIEW DETAILS</a>
                    </div>
                </div>
                
                ';

        }
        else{
             $roomlist .= '
            <div class="wrap-item ">
                    <div class="img">
                        <img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="' . $subpkgRow->title . '">
                    </div>
                    <div class="text-1">
                        <h2 class="h2-rooms">' . $subpkgRow->title . '</h2>
                        <h5 class="h5-room">Start form '. $subpkgRow->currency . $subpkgRow->onep_price .' /Night</h5>
                        <p>' . strip_tags($subpkgRow->detail) . '</p>
                        <ul>
                           <li>Max:  ' . $subpkgRow->occupancy . '</li>
                            <li>Size: ' . $subpkgRow->room_size . '</li>
                            <li>View: ' . $subpkgRow->view . '</li>
                            <li>Bed: ' . $subpkgRow->bed . '</li>
                        </ul>
                        <a href="' . BASE_URL . $subpkgRow->slug . '" class="view-dateails btn btn-room">VIEW DETAILS</a>
                    </div>
                </div>
                  ';
        }
        }
        $room_package = '
                <section class="body-room-6 room__acomdition">
        <div class="container">
            <div class="wrap-room-6">
                       
                                '. $roomlist .'
                               </div>
        </div>
    </section>
                <!-- Room Ends -->';
    }
}
else{
    $imglink = BASE_URL . 'template/web/images/Contact1.webp';
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }
        else{
            $imglink = BASE_URL . 'template/web/images/default.jpg';
        }
    }

    $roombread .= '
    <style>
    .accommodation_banner{
  background: var(--color-gradient-overlay), url("'.$imglink.'") no-repeat center;
}
    </style>
    <section class="banner-tems text-center accommodation_banner">
        <div class="container">
            <div class="banner-content">
                <h2 class="text-uppercase">' . $pkgRow->title . '</h2>
                <p>' . $pkgRow->sub_title. '</p>
            </div>
        </div>
    </section>

    ';
    
    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder ASC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    $dinedetail='';
    $dinedet='';
    // pr($pkgRec);
    
    if (!empty($pkgRec)) {
        
        $count = 1;
        
        
        $max_count = count($subpkgRec);

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = SubPackageImage::getImagelimit_by(100, $subpkgRow->id);
            $subpkg_caro = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):
                    
                    // $active=($count==0)?'active':'';
                    $subpkg_caro .= '
                    <div class="item">
                    <img alt="'.$row->title.'" src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'" class="img-responsive">
                    </div>
                    
                    
                    
                    ';
                    // pr($subpkg_caro);
                                
                   
                    

                endif;

            
            }
            
            $button= '';
            $modal='';
            $imageList = '';
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }
            
          
            if($pkgRow->id==11){
                $button='<a href="contact-us" class="btn">Book Now</a>';
                if(!empty($subpkgRow->below_content)){
                $modal='<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#'. $subpkgRow->slug .'">
                details
              </button>';
                }
                else{
                    $modal='';
                }
            }
            else{
                $button='<a href="#" class="btn">View Menu</a>';
            }
            
            if($subpkgRow->type==11){
                
                $modalpopup .='
        <div class="modal fade" id="'. $subpkgRow->slug .'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">'. $subpkgRow->title .' details</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            ' . $subpkgRow->below_content . '
            </div>
          </div>
        </div>
      </div>';
    //   pr($subpkgRow);
            $roomlist .= '
            <td>'. $subpkgRow->title .'</td>
                                    <td>'. $subpkgRow->seats .'</td>
                                        <td>'. $subpkgRow->theatre_style .'</td>
                                        <td>'. $subpkgRow->round_table .'</td>
                                        <td>'. $subpkgRow->shape .'</td>
                                        <td>'. $subpkgRow->class_room_style .'</td>
                                    </tr>
                
                ';
                
              
// pr($subpkg_caro);
            $room_package = '

              <!-- CONTACT -->
    <section class="section-contact">
        <div class="container">
            <div class="contact">
    <!-- ABOUT -->
    <section class="section-about">
        <div class="container">
            <div class="row">
                <div class="wrap-about">
                    <!-- ITEM -->
                    <div class="about-item">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 no-padding-right">
                            <!-- SLIDER -->
                            <div class="section-slider height-v-about section_event_About">
                                <div id="index12" class="owl-carousel  owl-theme">
                                '.$subpkg_caro.'
                                   
                                </div>
                            </div>
                            <!-- END / SLIDER -->
                        </div>
 <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 no-padding-left">
                            <div class="text">
                                <h2 class="heading">'. $subpkgRow->title .'</h2>
                                <div class="desc">
                                                <p>'. $subpkgRow->detail .'</p>
                                                <a href="#" class="btn btn-danger" data-toggle="modal"
                                                    data-target="#hall_enq" id="btn_spacing_top">Enquire</a>
                                            </div>
                                        </div>
                                    </div>
                       
                           </div>
                                <!-- END / ITEM -->
                            </div>
                        </div>

                        <div class="modal fade" id="hall_enq" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Event Hall Enquiry</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form id="hall_enquries" method="post">
                                            <div class="mb-4">
                                                <input type="text" class="form-control" id="FullName" name="name" placeholder="Full Name">
                                                <input type="hidden" class="form-control" name="hall" value="Hall">
                                            </div>
                                            <div class="mb-4">
                                                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                                            </div>
                                            <div class="mb-4">
                                                <input type="number" class="form-control" id="Contact" name="contact" placeholder="Mobile No.">
                                            </div>
                                            <div class="mb-4">
                                                <input type="text" class="form-control" id="event_name" name="event" placeholder="Event Title">
                                            </div>
                                            <div class="mb-4 d-flex justify-content-between gap-3">
                                                <div class="book_date flex-grow-1">
                                                    <input type="date" class="form-control" id="date" name="date" placeholder="Date">
                                                </div>
                                                <div class="no_pax flex-grow-1">
                                                    <input type="number" class="form-control" name="pax" id="number" placeholder="Pax">
                                                </div>
                                            </div>

                                            <div class="mb-3">
                                                <textarea class="form-control" id="message-text" name="message" placeholder="Message"></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Lf1CysqAAAAAIgmN0_09HdspdNsgi6359cuvp4j"></div>
                                            </div>
                                            <div class="mb-3">
                                                <div id="result_msg37" class="alert alert-success" style="display:none;margin-top:10px;"></div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" id="submit" class="btn btn-hall_enq">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                         <div class="hall_info">
                            
<tbody>

                               '. $subpkgRow->content .'
                     
                        </div>
                        <!--meeting end -->
                    </div>


            </div>
    </section>
    <!-- END / ABOUT -->
            </div>
        </div>
    </section>
                
                <!-- Room Ends -->';

            
        }
        
        
        if($subpkgRow->type==12){
            $dinedetail .='<div class="about-item dining_new">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-10">
                            <div class="text dining_txt">
                                <h2 class="heading text-center">'. $subpkgRow->title .'</h2>
                                <div class="desc">
                                    <p>'.$subpkgRow->content.'</p>

                                </div>
                            </div>
                        </div>
                    </div>';
                    $dinedet .='
                    <div class="restaurant_info our__foodd ">
                <h3>Opening Time and Occupancy</h3>
                <div class="restrunt_autoscroll_md">
                <table class="table text-center fw-light table-bordered table-striped">
                  <tbody>
                    <tr>
                        <th>Occupancy</th>
                        <th>Chef Special</th>
                        <th>Opening Time</th>
                        <th>Cuisine serve</th>
                        <th>Menu</th>

                    </tr>
                    <tr>
                        <td>130 pax</td>
                        <td>Every Friday BBQ / Grilled BBQ</td>
                            <td>07:00 AM - 10:00 PM</td>
                            <td><ul><li>Nepali Cuisine</li> <li>Indian Cuisine</li> <li>Continental Cuisine</li></ul></td>
                            <td><a href ="restaurant-menu.pdf"  target= "_blank" class="btn" id="btn_spacing_top" style="margin-top:1rem;">VIEW MENU</a></td>

                    </tr>
                  </tbody>
                </table>
            </div>
              </div>';
            $roomlist .= ' '.$subpkgRow->content.'
            <div class="our_food">
    <h2>Our Restaurant Glimpses</h2>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-12">
            <div class="section-slider height-v-about">
                <div id="index99" class="owl-carousel  owl-theme">
                    '.$subpkg_caro.'
                </div>
            </div>
        </div>
      </div>
</div>
            ';
          

    //         $room_package = '
           
    // <!-- CONTACT -->
    // <section class="section-contact">
    //     <div class="container">
    //         <div class="contact">
    // <!-- ABOUT -->
    // <section class="section-about">
    //     <div class="container">
    //         <div class="row">
    //             <div class="wrap-about">
    //             ' . $dinedetail . '
    //                     </p>
    //                 </div>
    //             </div>
    //         </div>
    //                         '. $roomlist .'
    //                     </div>
    //                 </div>
                
            
    //         <!-- Room Ends -->';
            $room_package = '
           
            <!-- CONTACT -->
            <section class="section-contact">
                <div class="container">
                    <div class="contact">
            <!-- ABOUT -->
            <section class="section-about">
                <div class="container">
                                    '. $roomlist .'
                                    </div>
    </section>
    <!-- END / ABOUT -->
            </div>
        </div>
    </section>
                    
                    <!-- Room Ends -->';
        }
        
    }
       
    }
    
}
if($pkgRow->id >= 14){

    $room_package = '
    <section class="section-contact">
                <div class="container">
                    <div class="contact">
                <div class="about-item dining_new">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-10">
                            <div class="text dining_txt">' . $pkgRow->content . '
                            
                        </div>
                </div>
                            </div>
                    
                 </div>
        </div>
    </section>
                   
                <!-- Room Ends -->';
}
}


if (defined('HOME_PAGE')) {



    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '1' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    $roompkgRec = package::find_by_id(1);
    // pr($roompkgRec);
    
    
    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = unserialize($subpkgRow->image);
            $imageList = '';
            $imagepath='';
                $imageList = $gallRec[0];


                    $file_path = SITE_ROOT.'images/subpackage/'.$gallRec[0];
                    if(file_exists($file_path) and !empty($imageList)):
                        
                        $imagepath = IMAGE_PATH.'subpackage/'.$gallRec[0];
                        
                        
                    endif;
// pr($imagepath);

            $roomlist .= '

             <div class="item ">
                        <div class="wrap-box">
                            <div class="box-img">
                                <div class="img-item">
                                    <img src="' . $imagepath . '" class="img-responsive" alt="' . $subpkgRow->title . '" title="' . $subpkgRow->title . '">
                                </div>
                                <div class="rooms-content room_links">
                                    <h4 class="sky-h4"> <a href="' . BASE_URL . $subpkgRow->slug . '">' . $subpkgRow->title . '</a></h4>
                                    <p class="price">' . $subpkgRow->currency . ' ' . $subpkgRow->onep_price . ' / Per Night</p>
                                </div>
                            </div>
                            <div class="content room_sector">
                                <p>' . strip_tags($subpkgRow->detail) . '...</p>
                                <a href="' . BASE_URL . $subpkgRow->slug . '" class="read-more">VIEW MORE</a>
                                <div class="bottom-room">
                                    <ul>
                                        <li><img src="'.BASE_URL.'template/web/images/Home-2/v2-icon.png" class="img-responsive" alt="Image">' . $subpkgRow->occupancy . '</li>
                                        <li><img src="'.BASE_URL.'template/web/images/Home-2/v2-icon-1.png" class="img-responsive" alt="Image">' . $subpkgRow->room_size . '</li>
                                        <li><img src="'.BASE_URL.'template/web/images/Home-2/v2-icon-2.png" class="img-responsive" alt="Image">' . $subpkgRow->view . '</li>
                                        <li><img src="'.BASE_URL.'template/web/images/Home-2/v2-icon-3.png" class="img-responsive" alt="Image">' . $subpkgRow->bed . '</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                
                ';

        }
        $room_package = '
        <!-- OUR-ROOMS-->
    <section class="rooms rooms-v2">
        <div class="container">
            <h2 class="title-room">'.$roompkgRec->title.'</h2>
            <div class="outline"></div>
            <p class="rooms-p">'.strip_tags($roompkgRec->content).'</p>
            <div class="wrap-rooms">
                <div id="events" class="owl-carousel owl-theme">
                                '. $roomlist .'
                                 </div>
            </div>
        </div>
        <!-- /container -->
    </section>
    <!-- END / ROOMS -->';
    }



    
    $sql = "SELECT *  FROM tbl_package WHERE status='1' AND (id = '11' OR id = '12') ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    // pr($pkgRec);
    $roompkgRec = package::find_by_id(1);
    // pr($roompkgRec);
    
    
    // pr($pkgRec);
    if (!empty($pkgRec)) {

        foreach ($pkgRec as $key => $subpkgRow) {
            // pr($subpkgRow);
            $gallRec = SubPackageImage::getImagelist_by($subpkgRow->id);
            $imageList = '';
            $imagepath='';
                $imageList = $subpkgRow->header_image;


                    $file_path = SITE_ROOT.'images/package/imgheader/'.$imageList;
                    if(file_exists($file_path) and !empty($imageList)):
                        
                        $imagepath = IMAGE_PATH.'package/imgheader/'.$imageList;
                        
                        
                    endif;
// pr($imagepath);

            $highlist .= '
             <div class="item ">
                    <div class="events-item">
                        <div class="events-img"><img src="' . $imagepath . '" class="img-responsive" alt="' . $subpkgRow->title . '"></div>
                        <div class="events-content">
                                <p class="sky-p">' . $subpkgRow->sub_title . '</p>
                                <h3 class="sky-h3"><a href="' . BASE_URL . $subpkgRow->slug . '">' . $subpkgRow->title . '</a></h3>
                            </a>
                        </div>
                    </div>
                </div> ';

        }
        $high_package = '
      <section class="events events-v3">
        <div class="container">
            <h2 class="events-title">Hotel Highlights</h2>
            <div class="line"></div>
            <div id="events-v3" class="hotel_featured owl-carousel owl-theme">
                                '. $highlist .'
          </div>
        </div>
    </section>
    <!-- END / ROOMS -->';
    }
}





$jVars['module:list-modalpop-up'] = $modalpopup;
$jVars['module:list-package-room'] = $room_package;
$jVars['module:list-high-room'] = $high_package;
$jVars['module:list-package-room-bred'] = $roombread;


/**
 *      Package Record
 */
$resubpkgDetail = $resubpkgbann = $bcont = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $id = !empty($_REQUEST['id']) ? addslashes($_REQUEST['id']) : '';
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $pkgRec = Package::find_by_id($subpkgRec->type);
    //echo "<pre>";print_r($slug);die();
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
    $otherPacs = Subpackage::get_relatedpkg($subpkgRec->type, $subpkgRec->id, 12);


    $pgkRow = Package::find_by_id(3);
    if (!empty($subpkgRec)) {
        //$resubpkgbann.='';
        foreach ($gallRec as $row) {
            $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
            if (file_exists($file_path) and !empty($row->image)):

                $resubpkgbann .= ' <div><img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '" alt="' . $row->title . '"><div class="caption cpation_room">
     <h3>
     <ul>
     <li><a href="' . BASE_URL . 'home">Home</a></li>
     <li><a href="' . BASE_URL . $pkgRec->slug . '">' . $pkgRec->title . '</a></li>
     <li>' . $subpkgRec->title . '</li>
     </ul>
     </h3>
     </div></div>';
            endif;

        }


        $pkgType = Package::field_by_id($subpkgRec->type, 'type');
        /* if(!empty($pkgType)) {
                         */
        $subpkgImg = $subpkgRec->image;

        if ($pkgType == 1) {
            $resubpkgDetail .= '<h1 class="main_title_in">' . $subpkgRec->short_title . '</h1>
          <div class="container add_bottom_60">
          
          <div class="row">
          <div class="col-md-8" id="room_detail_desc">';

            $resubpkgDetail .= ' <div id="single_room_feat">
          <ul>';
            $saveRec = unserialize($subpkgRec->feature);
            $count = 1;
            // if ($saveRec != null) {
            //     $featureList = $saveRec[47][1];
            //     if ($featureList) {


            //         foreach ($featureList as $fetRow) {

            //             $icoRec = Features::get_by_id($fetRow);

            //             if (!empty($icoRec->icon)) {
            //                 $resubpkgDetail .= ' <li><i class="' . $icoRec->icon . '"></i>' . $icoRec->title . '</li>';


            //             } else {
            //                 $resubpkgDetail .= ' <li><img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" style=" width: 25px; height: 25px;margin-right:7px;" alt="' . $icoRec->title . '">' . $icoRec->title . '</li>';
            //             }

            //         }

            //     }
            // }


            $resubpkgDetail .= '
       
       </ul>
       </div>  <div class="row">
       <div class="col-md-3">
       <h3>Description</h3>
       </div>
       <div class="col-md-9">
       
       ' . $subpkgRec->content . '
       
       </div><!-- End col-md-9  -->
       </div><!-- End row  -->

       <div class="row">
       <div class="col-md-3">
       <h3>Occupancy | Tariff</h3>
       </div>
       <div class="col-md-9">
       <table class="table table-striped">
       <tbody>
       <tr>
       <td>Single Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->onep_price . '</td>
       </tr>
       <tr>
       <td>Double Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->twop_price . '</td>
       </tr>
       <tr>
       <td>Extra Bed Charge</td>
       <td> ' . $subpkgRec->currency . ' ' . $subpkgRec->threep_price . '</td>
       </tr>
       </tbody>
       </table>
       </div>
       </div> </div>
       <div class="col-md-4" id="sidebar">
       <div class="theiaStickySidebar">
       <div class="box_style_1">
       <div id="message-booking"></div>
      <form action="" target="_blank" autocomplete="off" id="hotel_booking" data-url="' . BASE_URL . 'result.php">
       
         <input type="hidden" name="hotel_code" value="2AXhJ6">
       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Arrival date</label>
       <input class="startDate1 form-control datepick" type="text" data-field="date" data-startend="start" data-startendelem=".endDate1" readonly placeholder="Arrival" id="checkin" name="hotel_check_in">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Departure date</label>
       <input class="endDate1 form-control datepick" type="text" data-field="date" data-startend="end" data-startendelem=".startDate1" readonly placeholder="Departure" id="checkout" name="hotel_check_out">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       </div><!-- End row -->

       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <input type="submit" value="Book now" class="btn_full" id="submit-booking">
       </div>
       </div>
       </div>
       </form>
       ' . $jVars['module:room-location'] . '
       </div><!-- End box_style -->
       </div><!-- End theiaStickySidebar -->
       </div><!-- End col -->
       
       </div><!-- End row -->
       
       </div><!-- End container -->';
        }


    }
}
$jVars['module:form-controll'] = $bcont;
$jVars['module:sub-package-banner'] = $resubpkgbann;
// $jVars['module:sub-package-detail'] = $resubpkgDetail;








/*
* Sub package 
*/
$resubpkgDetail = '';
$subimg = '';
$imageList = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
     $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
     $booking_code = Config::getField('hotel_code', true);
    if (!empty($subpkgRec)) {
        if ($subpkgRec->type == 1) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            $imglink = '';
            $imglink123 = '';
            if (!empty($subpkgRec->image2)) {
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $subpkgRec->image2;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRec->image2;
                } else {
                    $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                }
            } else {
                $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
            }
            
            $pkgRec = Package::find_by_id($subpkgRec->type);
            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                    $subpkg_carousel .= '
                    <div class="item"><img src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'" alt="'.$row->title.'" ></div>
                              
                                ';
                    

                endif;

            
            }

            $resubpkgDetail .= '

            <style>
            .room__detail_banner_deluxe{
  background: var(--color-gradient-overlay), url("'.$imglink.'") no-repeat center;
}
            </style>
            <section class="banner-tems text-center room__detail_banner_deluxe">
        <div class="container">
            <div class="banner-content">
                <h2 class="text-uppercase">'. $subpkgRec->title .'</h2>
                <p>'. $subpkgRec->short_title .'</p>
            </div>
        </div>
    </section>
    

            
            ';

            // $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($subpkgRec->content));
            // pr($subpkgRec);


            $resubpkgDetail .= '


             <section class="section-product-detail">
        <div class="container">
            <!-- DETAIL -->
            <div class="product-detail margin">
                <div class="row">
                    <div class="col-lg-9">
                        <!-- LAGER IMGAE -->
                        <div class="wrapper">
<div class="owl-carousel room_details">
'.$subpkg_carousel.'
</div>

                        </div>
                        <!-- END / LAGER IMGAE -->
                    </div>

';


            $resubpkgDetail .= '
                                    <div class="col-lg-3">
                        <!-- FORM BOOK -->
                        <div class="product-detail_book">
                            <div class="product-detail_total">
                                <h6>STARTING PRICE</h6>
                                <p class="price">
                                    <span class="amout">'. $subpkgRec->currency . $subpkgRec->onep_price .'</span> /Night
                                </p>
                            </div>
                            <div class="product-detail_form">
                                <form action="'.BASE_URL.'result.php" target="_blank">
                                <div class="sidebar">
                                    <!-- WIDGET CHECK AVAILABILITY -->
                                    <div class="widget widget_check_availability">
                                        
                                        <input type="hidden" name="hotel_code" value="'.$booking_code.'">
                                        <div class="check_availability">
                                            <div class="check_availability-field">
                                                <label>Check in</label>
                                                <div class="input-group date" data-date-format="dd-mm-yyyy" >
                                                    <input class="form-control wrap-box" type="date" id="checkin" name="hotel_check_in" placeholder="Arrival Date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"  aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                            <div class="check_availability-field">
                                                <label>Check Out</label>
                                                <div  class="input-group date" data-date-format="dd-mm-yyyy">
                                                    <input class="form-control wrap-box" id="checkout" name="hotel_check_out" type="date" placeholder="Departure Date">
                                                    <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                       
                                    </div>
                                    <!-- END / WIDGET CHECK AVAILABILITY -->
                                </div>
                                <input type="submit" class="btn btn-room btn-product" value="Book Now">
                                 </form>
                                <!--<button class="btn btn-room btn-product"><a href="result.php?hotel_code=gx5I927" target="blank">Book Now</a></button>-->
                            </div>
                        </div>';
                        if(!empty($subpkgRec->room_service)){
                   $resubpkgDetail .= '      <!-- END / FORM BOOK -->
                         <div class="cancellation_notice">
                            <p><b>Cancellation Policy:</b>'. $subpkgRec->room_service.' </p>
                         </div>';
                        }
                  $resubpkgDetail .= '   </div>
                </div>
            </div>';



            $resubpkgDetail .= '
                           <div class="product-detail_tab">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="product-detail_tab-header">
                            <li class="active"><a href="#overview" data-toggle="tab">OVERVIEW</a></li>
                            <li><a href="#amenities" data-toggle="tab">amenities</a></li>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <div class="product-detail_tab-content tab-content"> ';
          

            $resubpkgDetail .= '

            <!-- OVERVIEW -->
                            <div class="tab-pane fade active in" id="overview">
                                <div class="product-detail_overview">
                                    <p>'.$subpkgRec->content.'</p>
                                    <div class="row">
                                        <div class="col-xs-6 col-md-4">
                                            <h6>ROOM FEATURES</h6>
                                            <ul>
                                                <li>Max: '.$subpkgRec->occupancy.'</li>
                                                <li>Size: '.$subpkgRec->room_size.'</li>
                                                <li>View: '.$subpkgRec->view.'</li>
                                                <li>Bed: '.$subpkgRec->bed.'</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END / OVERVIEW -->


          ';
                                if (!empty($subpkgRec->feature)) {
                                    $ftRec = unserialize($subpkgRec->feature);
                                    if (!empty($ftRec)) {
                                        $resubpkgDetail .= '
                                       <div class="tab-pane fade" id="amenities">
                                <div class="product-detail_amenities">
                                    <div class="row">';
                                    $feature_list ='';
                                    // pr($ftRec);
                                            foreach ($ftRec as $k => $v) {
                                                // $resubpkgDetail .= '<h3 class="room_d_title">' . $v[0][0] . '</h3>';
                                                if (!empty($v[1])) {
                                                    // $sfetname='';
                                                    $resubpkgDetail .= '';
                                                    foreach ($v[1] as $kk => $vv) {
                                                        $sfetname = Features::find_by_id($vv);
                                                        // pr($sfetname);
                                                        if(empty($sfetname->icon)){
                                                        $feature_list .= '
                                                        <div class="col-lg-3 col-md-6 col-xs-6">
                                            <div class="image_icon"><img src="' . BASE_URL . 'images/features/'. $sfetname->image . '"
                                                    alt="' . $sfetname->title . '">
                                                <p>' . $sfetname->title . '</p>
                                            </div>
                                        </div>';
                                    }else{
                                        $feature_list .= '
                                                        <div class="col-lg-3 col-md-6 col-xs-6">
                                            <div class="image_icon"><i class="'. $sfetname->icon . '"></i>
                                                <p>' . $sfetname->title . '</p>
                                            </div>
                                        </div>';
                                    }
                                    // pr($feature_list);
                                                

                                                    //     if(($i%4 == 0) || (end($v[1]) == $vv)){
                                                    //     $resubpkgDetail .= '
                                                    //     <div class="col-md-4">
                                                    //     <div class="mad-room-details vr-type size-2 style-2">
                                                    //             '. $feature_list .'
                                                    //         </div>
                                                    //         </div>
                                                        
                                                    //         ';
                                                    //         $feature_list='';
                                                    // }
                                                }
                                                $resubpkgDetail .= ''. $feature_list .'';
                                            }                             
                                    }
                                     
                                    }
                                    $resubpkgDetail .= '
                                                                </div>

                                    
                                </div>
                            </div>';
                                }

                                $resubpkgDetail .='    </div>
                    </div>
                </div>
            </div>';


           



            
        $otherroom='';
        $rooms = Subpackage::get_relatedsub_by($subpkgRec->type,$subpkgRec->id);
        // pr($subpkgRec->id);
            
				
				if(!empty($rooms)){
                
                    
					foreach($rooms as $room){
                        if (!empty($room->image)) {
                            $img123 = unserialize($room->image);
                            // pr($img123);
                            $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                            
                            if (file_exists($file_path) && !empty($img123[0])) {
                                $imglink123 = IMAGE_PATH . 'subpackage/' . $img123[0];
                            } else {
                                $imglink123 = IMAGE_PATH . 'static/static.jpg';
                            }
                        } else {
                            $imglink123 = IMAGE_PATH . 'static/static.jpg';
                        }

                      
    $otherroom .='
                        <div class="col-sm-6 col-md-3 col-lg-4">
                            <div class="product-detail_item">
                                <div class="img">
                                    <a href="'.BASE_URL.$room->slug.'"><img src="'.$imglink123.'" alt="'.$room->title.'"></a>
                                </div>
                                <div class="text">
                                    <h2><a href="'.BASE_URL.$room->slug.'">'.$room->title.'</a></h2>
                                    <ul>
                                        <li><i class="fa fa-child" aria-hidden="true"></i> Max: '.$room->occupancy.'</li>
                                        <li><i class="fa fa-bed" aria-hidden="true"></i> Bed: '.$room->bed.'</li>
                                        <li><i class="fa fa-eye" aria-hidden="true"></i> View: '.$room->view.'</li>
                                    </ul>
                                    <a href="'.BASE_URL.$room->slug.'" class="btn btn-room">VIEW DETAIL</a>
                                </div>
                            </div>
                        </div>

            
                    
			';
            
        }
        //$otherroom.='';
    $resubpkgDetail .='
    <!-- ANOTHER ACCOMMODATION -->
            <div class="product-detail">
                <h2 class="product-detail_title">Other accommodations</h2>
                <div class="product-detail_content">
                    <div class="row">
                            '. $otherroom .'
                            </div>
                </div>
            </div>
            <!-- END / ANOTHER ACCOMMODATION -->
        </div>
    </section>
                
        ';  
				}




           
        } /********For service inner page ***************/
            else {
                $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
                $imglink = '';
                if (!empty($subpkgRec->image2)) {
                    $file_path = SITE_ROOT . 'images/subpackage/image/' . $subpkgRec->image2;
                    if (file_exists($file_path)) {
                        $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRec->image2;
                    } else {
                        $imglink = IMAGE_PATH . 'static/default.jpg';
                    }
                } else {
                    $imglink = IMAGE_PATH . 'static/default.jpg';
                }
                
                
    
                
                    
                        $resubpkgDetail .= '
                        <!--================ Breadcrumb ================-->
        <div class="mad-breadcrumb with-bg-img with-overlay" data-bg-image-src="' . $imglink . '">
            <div class="container wide">
                <h1 class="mad-page-title">' . $subpkgRec->title . '</h1>
                <nav class="mad-breadcrumb-path">
                    <span><a href="home" class="mad-link">Home</a></span> /
                    <span>' . $subpkgRec->title . '</span>
                </nav>
            </div>
        </div>
        <!--================ End of Breadcrumb ================-->
                                                
                                        ';

                        
                            $resubpkgDetail .= '
                            <div class="mad-content no-pd">
            <div class="container">
                <div class="mad-section">
                    <div class="mad-entities mad-entities-reverse type-4">
                                '. $subpkgRec->content .'
                                </div>
                </div>
            </div>
        </div>';
                            $resubpkgDetail .= $subpkgRec->below_content;
                        

                        $resubpkgDetail .='';


                        
        }




    }
}

$jVars['module:sub-package-detail'] = $resubpkgDetail;



/**********        For What;s nearby from package **************/
$resubpkgDetail = '';
$relPacs = Subpackage::get_relatedpkg(10, 0, 12);

                foreach($relPacs as $relPac){
                   
                        $imglink = '';
                        if (!empty($relPac->image)) {
                            $img123 = unserialize($relPac->image);
                            $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                            if (file_exists($file_path)) {
                                $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
                            } else {
                                $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                            }
                        } else {
                            $imglink = IMAGE_PATH . 'static/default-art-pac-sub.jpg';
                        }
                        $resubpkgDetail .= '

                                            <div class="col-lg-3 col-md-6">
                                                <div class="top-hotels-ii">
                                                    <img src="'. $imglink .'" alt=" '. $relPac->title .'"/>
                                                    '. $relPac->content .'
                                                    <div class="pp-details yellow">
                                                        <span class="pull-left">More Info</span>
                                                        <span class="pp-tour-ar">
                                                                <a href="javascript:void(0)"><i class="fa fa-angle-right pad-0"></i></a>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                        ';

                        

                }

$whats_nearby = '
            <section class="top-hotel">
                <div class="container-xxl px-5">
                    <div class="top-title">
                        <div class="row display-flex">
                            <div class="col-lg-8 mx-auto text-center">
                                <h2>What\'s <span>Nearby</span></h2>
                                <p class="mar-0">
                                    We are located at the heart of Lalitpur. Major shopping outlets, Patan Durbar Square, Hospitals, Banks, UN office, Government offices, etc are
                                    within walking distance.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--Gallery Section-->
                    <div class="row activities-slider">
                        '. $resubpkgDetail .'
                    </div>
                </div>
            </section>';

// pr($whats_nearby);
$jVars['module:whats-nearby'] = $whats_nearby;

                    
                        
                        



