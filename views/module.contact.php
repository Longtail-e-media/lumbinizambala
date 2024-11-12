<?php
/*
* Contact form
*/
$rescont = $innerbred = '';
$img='';
if (defined('CONTACT_PAGE')) {


    $siteRegulars = Config::find_by_id(1);

    $tellinked = '';
    $telno = explode("/", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank">' . $lastElement . '</a>/';
    foreach ($telno as $tel) {
        
        $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '/';
        }   
}
$phonelinked ='';
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$replaceno=  str_replace('-','',$lastElement);
$phonelinked .= '<li><a href="https://wa.me/' . $replaceno . '"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $lastElement . '</a>
                                    <a href="https://wa.me/'. $replaceno .'" target="_blank"> (WhatsApp)</a></li>';
                                    $childno='';
foreach ($phoneno as $phone) {
    $childno =  str_replace('-','',$phone);
    $childno =  str_replace(' ','',$childno);
    $phonelinked .= '
    <li><a href="https://wa.me/'.$childno .'"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $phone . '</a>
                                    <a href="https://wa.me/'.$childno.'" target="_blank"> (WhatsApp)</a></li>';
    if(end($phoneno)!= $phone){
    $phonelinked .= '';
    }   
}

$whatslinked ='';
$whatsno = explode(",", $siteRegulars->whatsapp_a);
// pr($whatsno);
$lastElement = array_shift($whatsno);
$whatsno=  str_replace('-','',$lastElement);
$whatslinked .= '<li><a href="https://wa.me/' . $whatsno . '"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $lastElement . '</a>
                                    <a href="https://wa.me/' . $whatsno . '" target="_blank"> (WhatsApp)</a></li>';
                                    $childno='';
                                    
                                    if(is_array($whatsno) && !empty($whatsno)){
                                        foreach ($whatsno as $whats) {
    $cwhatsno .=  str_replace('-','',$whats);
    $whatslinked .= '
    <li><a href="https://wa.me/' . $cwhatsno . '"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $whats . '</a>
                                    <a href="https://wa.me/' .$cwhatsno. '" target="_blank"> (WhatsApp)</a></li>';
    if(end($whatsno)!= $whats){
    $whatslinked .= '';
    }   
}
                                    }


$ktminked = '';
    $ktmno = explode("/", $siteRegulars->pobox);
    $ktmElement = array_shift($ktmno);
    $ktminked .= '<a href="tel:' . $ktmElement . '" target="_blank">' . $ktmElement . '</a>';
    foreach ($ktmno as $ktm) {
        
        $ktminked .= '/<a href="tel:+977-' . $ktm . '" target="_blank">' . $ktm . '</a>';
        if(end($ktmno)!= $ktm){
            $ktminked .= '/';
        }   
}

$imglink= $siteRegulars->contact_upload ;
if(!empty($imglink)){
    $img= IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload ;
}
else{
    $img='';
}
        // pr($siteRegulars);
    $rescont .= '
    <style>
    .banner_contact{
  background: var(--color-gradient-overlay), url("'.$img.'") no-repeat center;
}
    </style>

     <section class="banner-tems text-center banner_contact">
        <div class="container">
            <div class="banner-content">
                <h2>Contact us</h2>
                <p>We are open 24/7</p>
            </div>
        </div>
    </section>

    <!-- CONTACT -->
    <section class="section-contact contactpage-section">
        <div class="container">
            <div class="contact">
                <div class="row">
                    <div class="col-md-6 col-lg-5">
                        <div class="text">
                            <h2>Contact</h2>
            <ul class="contact__information">
                <h4>Lumbini Zambala</h4>
                <li><a href="https://maps.app.goo.gl/nCatY7ey9fTUB6ku7" target="_blank"><i class=" fa solid fa-map"></i>'. $siteRegulars->fiscal_address .'</a></li>
                <li><i class="fa fa-phone"></i> '. $tellinked .'</li>
                <li>'.$whatslinked.'</li>
                <li><a href="mailto:'. $siteRegulars->email_address .'"><i class="fa fa-envelope-o" aria-hidden="true"></i>'. $siteRegulars->email_address .'</a><li>
                <h4 class="mt-4">Kathmandu office</h4>
                <li><a href="https://maps.app.goo.gl/XNG5ixxK28j5vEUs9" target="_blank"><i class=" fa solid fa-map"></i>'. $siteRegulars->mail_address .'</a></li>
                <li><i class="fa fa-phone"></i> '.$ktminked.'</li>
                '.$phonelinked.'
                 <li><a href="mailto:'. $siteRegulars->contact_info2 .'"><i class="fa fa-envelope-o" aria-hidden="true"></i>'. $siteRegulars->contact_info2 .'</a><li>
               
            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-lg-offset-1">
                        <div class="contact-form">
                            <h2 class="contact_us_form">Send us a message</h2>
                            <form action="#" id="frm_contact" method="post">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="text" class="field-text" name="name" placeholder="Name">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="field-text" name="email" placeholder="Email">
                                    </div>
                                    <div class="col-sm-12">
                                        <input type="text" class="field-text" name="subject" placeholder="Subject">
                                    </div>
                                    <div class="col-sm-12">
                                        <textarea cols="30" rows="10" name="message" class="field-textarea" placeholder="Message"></textarea>
                                    </div>
                                    <div class="col-sm-12" style="margin: 10px 0px;">
                                        <div id="g-recaptcha-response" class="g-recaptcha" data-sitekey="6Lf1CysqAAAAAIgmN0_09HdspdNsgi6359cuvp4j"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <button type="submit" name="submit" id="submit" class="btn btn-room">SEND</button>
                                    </div>
                                    <div class="col-sm-12" id="result_msg"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END / CONTACT -->

    <!-- MAP -->
    <div class="section-map">
       <iframe src="'. $siteRegulars->location_map .'" height="470" allowfullscreen></iframe>
    </div>
    <!-- END / MAP -->

   

    ';
}

$jVars['module:contact-us'] = $rescont;
