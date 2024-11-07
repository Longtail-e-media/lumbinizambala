<?php 
$resoffr=$socialshare='';
$expired='';
$enquiry='';
$hmrescript='';
$resrandoffr=$hmresoffr=$resinndetail=$offbredd= $offermodal='';
$offrRec = Offers::get_offer_by();

if(defined('OFFERS_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Offers::find_by_slug($slug);
    if(!empty($recRow)) {
        
        if(!empty($recRow->image)) { 
              $imglink =IMAGE_PATH.'offers/'.$recRow->image;
        }
        else {
            $imglink = IMAGE_PATH.'static/inner-img.jpg';
        }
        $socialshare='<div class="share-social">
            <a class="facebook-share" target="blank" href="https://www.facebook.com/sharer/sharer.php?u='.BASE_URL.'offer/'.$recRow->slug.'&p='.$recRow->title.'&p[images][0]='.$imglink.'">
                <i class="fa fa-facebook" aria-hidden="true"></i><span>Share</span></a> 
            <a class="twitter-share" target="blank" href="https://twitter.com/intent/tweet?text='.$recRow->title.' ?url='.BASE_URL.'offer/'.$recRow->slug.'" >
                <i class="fa fa-twitter" aria-hidden="true"></i><span>Share</span></a>
            <a class="gplus-share" target="blank" href="https://plus.google.com/share?url='.BASE_URL.'offer/'.$recRow->slug.'">
                <i class="fa fa-google-plus" aria-hidden="true"></i><span>Share</span></a>
        </div>';
        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));   
        $content = !empty($rescontent[1])?$rescontent[1] : $rescontent[0];
    $currentdate = date("Y-m-d") ;
    // pr($recRow);
    // pr($currentdate);
    if($recRow->offer_date > $currentdate){
        $enquiry='<a href="'.BASE_URL.'book/'.$recRow->slug.'" class="btn btn-primary btn-book" style="color: #fff;background-color: #7b2b2e;border-color: #7b2b2e;">Enquiry</a>';
    }
    else{
        $enquiry='';
    }
          $resinndetail.=$socialshare.'
                        <div class="offer-detail3">
                            <h2>'.$recRow->title.'</h2>
                            '.$content.'
                            '.$enquiry.'
                        </div>';

                $offbredd.='
                <style>
                .stay_banner{
  background: var(--color-gradient-overlay), url("'.$imglink.'") no-repeat center;
}
                </style>

                 <section class="banner-tems text-center stay_banner">
        <div class="container">
            <div class="banner-content">
                <h2 class="text-uppercase">Staycation</h2>
                <p>Stay Local, Explore More</p>
            </div>
        </div>
    </section>
                
          ';
    }
    else {
        redirect_to(BASE_URL);
    }    
}
else{ 
    $siteRegulars = Config::find_by_id(1);
$imglink= $siteRegulars->gallery_upload ;
    
      $offbredd.='        <style>
                .stay_banner{
  background: var(--color-gradient-overlay), url("'.IMAGE_PATH.'preference/offer/'.$siteRegulars->offer_upload .'") no-repeat center;
}
                </style>

                 <section class="banner-tems text-center stay_banner">
        <div class="container">
            <div class="banner-content">
                <h2 class="text-uppercase">Staycation</h2>
                <p>Stay Local, Explore More</p>
            </div>
        </div>
    </section>';
         $offList= Offers::find_all();
         $resinndetail.='
                        ';
         foreach ($offList as $key => $offer) {
   
             $currentdate = date("Y-m-d") ;
             if($offer->start_date <= $currentdate){
            //  pr($offer->offer_date);
            //  pr($currentdate);
             if($offer->offer_date < $currentdate ){
             $expired .='<div class="offer__expire position-absolute"><span>Expired</span></div>';
             }
             else{
                 $expired .='';
             }
            //  pr($expired);
                if($key%2==0){
            $resinndetail.='
            <div class="row" id="'.$offer->slug.'">
                <div class="col-md-6">
                    <img src="'.IMAGE_PATH.'offers/listimage/'.$offer->list_image.'" alt="">
                </div>
                <div class="col-md-6">
                 <div class="stay_cation_txt">
                    <h2>'.$offer->title.'</h2>
                    <p>'.strip_tags($offer->brief).'</p>
                    <button href="javascript:void(0)" class="read-more stay_cation_mt text-uppercase stayCationBtn" data-title="Jungle Safari" data-toggle="modal" data-target="#popout_staycation-'.$offer->id.'">Inquiry</button>
                 </div>
                </div>
            </div>
            ';
        }
        else{
          $resinndetail.='  <div class="row" id="'.$offer->slug.'">
                <div class="col-md-6">
                    <div class="stay_cation_txt">
                        <h2>'.$offer->title.'</h2>
                        <p>'.strip_tags($offer->brief).'</p>
                        <button href="javascript:void(0)" class="read-more stay_cation_mt text-uppercase stayCationBtn" data-title="Cultural Dance" data-toggle="modal" data-target="#popout_staycation'.$offer->id.'">Inquiry</button>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="'.IMAGE_PATH.'offers/listimage/'.$offer->list_image.'" alt="">
                </div>
            </div>
            ';
        }
        $offermodal .='<div class="modal fade" id="popout_staycation-'.$offer->id.'" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title text-center modal-bg-color">Inquire Now</h4>
        </div>
        <div class="modal-body">
            <form action="" id="frm_staycation-'.$offer->id.'" class="form_styling">
                <input type="hidden" name="offername" value="'.$offer->title.'">
                  <div class="mb-3">
                      <input type="name" class="form-control" placeholder="Full Name" name="name">
                    </div>
                    <div class="mb-3">
                      <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="mb-3">
                      <input type="text" class="form-control" placeholder="Phone Number" name="phone">
                    </div>
                <div class="mb-3">
                  <div class="form-floating">
                      <textarea class="form-control" placeholder="Message" name="message" style="height: 100px"></textarea>
                    </div>
                </div>
                <div id="result_msg"></div>
                <button class="btn submit__btn" id="submit-'.$offer->id.'">Submit Now</button>
            </form>
        </div>
      </div>

    </div>
  </div>';

  $hmrescript .='
  <script type="text/javascript">
$(document).ready(function () {
  $(\'#frm_staycation-'.$offer->id.'\').validate({
  errorElement: \'span\',
  errorClass: \'validate-has-error\',
  rules: {
      name: {required: true},
                    phone: {required: true},
                    email: {required: true, email: true},
                    message: {required: true}
  },
  messages: {
       name: {required: "Please enter your Name."},
                    phone: {required: "Please enter Phone Number."},
                    email: {required: "Please enter your Email."},
                    message: {required: "Please enter your Message."}
  },
  submitHandler: function (form) {
  //     var recaptcha = $("#g-recaptcha-response").val();
  // if (recaptcha === "") {
  //     event.preventDefault();
  //     alert("Please check the recaptcha");
  //     return false;
  // }
      var Frmval = $("form#frm_staycation-'.$offer->id.'").serialize();
      $("button#submit-'.$offer->id.'").attr("disabled", "true").text(\'Processing...\');
      $.ajax({
          type: "POST",
          dataType: "JSON",
          url: "enquery_mail.php",
          data: "action=forStay&" + Frmval,
          success: function (data) {
              var msg = eval(data);
              $("button#submit-'.$offer->id.'").removeAttr("disabled").text(\'Submit\');
              $(\'div#result_msg\').html(msg.message).css(\'display\', \'block\').fadeOut(8000);
              $("form#frm_staycation-'.$offer->id.'")[0].reset();
          }
      });
      return false;
  }
})});
</script>
  
';
         $expired='';
         }
         }
         $resinndetail.='';
}


    // Rand offer
    $randRec = Offers::get_offer_rand();
    if(!empty($randRec)) {
        $file_path = SITE_ROOT.'images/offers/'.$randRec->image;
        if(file_exists($file_path) and !empty($randRec->image)) {
            $linkTarget = ($randRec->linktype == 1)? ' target="_blank" ' : ''; 
            $linksrc    = ($randRec->linktype != 1)? BASE_URL.$randRec->linksrc : $randRec->linksrc;
            $linkstart  = ($randRec->linksrc!='')? '<a href="'.$linksrc.'" '.$linkTarget.'>' : '<a href="javascript:void(0);">';
            $linkend    = ($randRec->linksrc!='')? '</a>' : '</a>' ;


            $resrandoffr.='<div class="section panel">
                <div class="item fade">
                    <div class="back" data-image="'.IMAGE_PATH.'offers/'.$randRec->image.'"></div>
                    <div class="panel-button">
                        <div class="button-container">
                            '.$linkstart.$randRec->title.$linkend.'
                            <span>Our Offer <i class="icon ion-ios-arrow-right"></i>
                        </div>
                    </div>
                </div>

            </div>';
        }
    }

if(defined('HOME_PAGE')) {
    if($offrRec) {
        $hmresoffr.='<section class="events events-v4 staycation__wrapers">
        <div class="container">
        <h2 class="events-title">Staycation</h2>
        <div class="line"></div>
        
        <div class="row stay_cation_main">
        <div class="col-md-6">
        <p>Embark on thrilling Jeep Safaris, serene Jungle Walks, and peaceful Canoeing adventures at our Chitwan hotel. Discover wildlife up close and immerse yourself in nature’s beauty.</p>
        </div>
        <div class="col-md-6 stay_cation">
        <a href="stay-cation" class="read-more">Explore More</a>
        </div>
        </div>
        <div id="events-v4" class="owl-carousel owl-theme">';
        
        foreach($offrRec as $key => $offrRow) {
            $file_path = SITE_ROOT.'images/offers/listimage/'.$offrRow->list_image;
            
            // pr($offrRow);
            if(file_exists($file_path) and !empty($offrRow->list_image)) {
                $linkTarget = ($offrRow->linktype == 1)? ' target="_blank" ' : ''; 
                $linksrc    = ($offrRow->linktype != 1)? BASE_URL.$offrRow->linksrc : $offrRow->linksrc;
                $linkstart  = ($offrRow->linksrc!='')? '<a class="button" href="'.$linksrc.'" '.$linkTarget.'>' : '<a class="button" href="javascript:void(0);">';
                $linkend    = ($offrRow->linksrc!='')? '</a>' : '</a>' ;
                if($key==0){
                    $imgclass='first__img';
                    $concclass='jungle__safari';
                    $div='</div>';
                }
                else{
                    $imgclass='staycation__image';
                    $concclass='content-v4';
                    $div='';
                }
                $hmresoffr.='
                <div class="item">
                <div class="events-item">
                <div class="events-img"><img src="'.IMAGE_PATH.'offers/listimage/'.$offrRow->list_image.'" class="img-responsive '.$imgclass.'" alt="Image"></div>
                <div class="events-content '.$concclass.'">
                <a href="stay-cation#'.$offrRow->slug.'" >
                <h3 class="sky-h3 v4">'.$offrRow->title.'</h3>
                </a>
                </div>
                </div>
                '.$div.'';
                
            }
        }
        
        $hmresoffr.=' </div>
        </div>
        </section>';
    }  
}


$jVars['module:homeoffers-list'] = $hmresoffr;
$jVars['module:offers-details'] = $resinndetail;
$jVars['module:offers-modal'] = $offermodal;
$jVars['module:offers-script'] = $hmrescript;
$jVars['module:offer_breadcrum'] = $offbredd;