<?php
$siteRegulars = Config::find_by_id(1);
$lastElement='';
// $phonelinked='';
$whatsapp='';
$tellinked = '';
    $telno = explode("/", $siteRegulars->contact_info);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noopener">' . $lastElement . '</a>';
    foreach ($telno as $tel) {
        
        $tellinked .= '/<a href="tel:+977-' . $tel . '" target="_blank" rel="noopener">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '/';
        }   
}

$ktminked = '';
    $ktmno = explode("/", $siteRegulars->pobox);
    $ktmElement = array_shift($ktmno);
    $ktminked .= '<a href="tel:' . $ktmElement . '" target="_blank" rel="noopener">' . $ktmElement . '</a>';
    foreach ($ktmno as $ktm) {
        
        $ktminked .= '/<a href="tel:+977-' . $ktm . '" target="_blank" rel="noopener">' . $ktm . '</a>';
        if(end($ktmno)!= $ktm){
            $ktminked .= '/';
        }   
}

// $phoneno = explode("/", $siteRegulars->whatsapp);
// $lastElement = array_shift($phoneno);
// $phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank">' . $lastElement. '</a>/';
// foreach ($phoneno as $phone) {
    
//     $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank">' . $phone . '</a>';
//     if(end($phoneno)!= $phone){
//     $phonelinked .= '/';
//     }   
// }

$phonelinked ='';
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$replaceno=  str_replace('-','',$lastElement);
$phonelinked .= '<li><a href="https://wa.me/' . $replaceno . '" target="_blank" rel="noopener"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $lastElement . '</a>
                                    <a href="https://wa.me/'. $replaceno .'" target="_blank" rel="noopener">  (WhatsApp)</a></li>';
                                    $childno='';
foreach ($phoneno as $phone) {
    $childno =  str_replace('-','',$phone);
    $childno =  str_replace(' ','',$childno);
    $phonelinked .= '
    <li><a href="https://wa.me/'.$childno .'" target="_blank" rel="noopener"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $phone . '</a>
                                    <a href="https://wa.me/'.$childno.'" target="_blank" rel="noopener"> (WhatsApp)</a></li>';
    if(end($phoneno)!= $phone){
    $phonelinked .= '';
    }   
}

$whatslinked ='';
$whatsno = explode(",", $siteRegulars->whatsapp_a);
// pr($whatsno);
$lastElement = array_shift($whatsno);
$whatsno=  str_replace('-','',$lastElement);
$whatslinked .= '<li><a href="https://wa.me/' . $whatsno . '"><i class="fa fa-mobile-phone faa-1x whaapp" rel="noopener"></i>' . $lastElement . '</a>
                                    <a href="https://wa.me/' . $whatsno . '" target="_blank" rel="noopener"> (WhatsApp)</a></li>';
                                    $childno='';
                                    
                                    if(is_array($whatsno) && !empty($whatsno)){
                                        foreach ($whatsno as $whats) {
    $cwhatsno .=  str_replace('-','',$whats);
    $whatslinked .= '
    <li><a href="https://wa.me/' . $cwhatsno . '"><i class="fa fa-mobile-phone faa-1x whaapp" ></i>' . $whats . '</a>
                                    <a href="https://wa.me/' .$cwhatsno. '" target="_blank" rel="noopener"> (WhatsApp)</a></li>';
    if(end($whatsno)!= $whats){
    $whatslinked .= '';
    }   
}
}
$footer = '

<footer class="footer-sky">
        
        <!-- /footer-top -->
        <div class="footer-mid">
            <div class="container">
                <div class="row padding-footer-mid">
                    <div class="col-lg-3 col-md-2">
                        <div class="list-content ">
                            <h2 class="footer__menu">Quick Links</h2>
                            '. $jVars['module:footer-menu'] .'
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-5">
                        <div class="list-content ">
                            <h2 class="footer__menu">Hotel Address</h2>
                            <ul class="text-white social_menu_icons">
                              <li><a href="https://maps.app.goo.gl/nCatY7ey9fTUB6ku7" target="_blank" rel="noopener"><i class="fa fa-map-marker"></i>'. $siteRegulars->fiscal_address .'</a></li>
                                <li><a href="mailto:'. $siteRegulars->email_address .'"> <i class="fa fa-envelope" aria-hidden="true"></i> '. $siteRegulars->email_address .'</a></li>
                                <li><i class="fa fa-phone"></i> '. $tellinked .'</li>

                                '.$whatslinked.'
                               <li class="footer-social"> ' . $jVars['module:socilaLinkbtm'] . ' </li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-5 sales_office_padding_md">
                        <div class="list-content social_menu_icons">
                            <h2 class="footer__menu">Kathmandu Office</h2>
                            <ul class="text-white">
                                <li><a href="https://maps.app.goo.gl/XNG5ixxK28j5vEUs9" target="_blank" rel="noopener"><i class="fa fa-map-marker"></i> '. $siteRegulars->mail_address .'</a></li>
                                <li><a href="mailto:'. $siteRegulars->contact_info2 .'"><i class="fa fa-envelope"></i> '. $siteRegulars->contact_info2 .'</a></li>
                                <li><i class="fa fa-phone"></i>'.$ktminked.'</li>
                                '.$phonelinked.'
                            </ul>
                        </div>
                        <!--<div class="list-content social_menu_icons">
                            <h2 class="footer__menu">&nbsp;</h2>
                            <p class="footer-about">
                                We pride ourselves on offering a peaceful relaxation amidst the busy and important religious site ,i.e. Birthplace of Gautam Buddha
                            </p>
                        </div>-->
                    </div>
                    <div class="col-lg-3 col-md-12">
                        <!--<div class="footer-logo list-content text-center">
                            <a href="'.BASE_URL.'home" ><img src="'. IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload .'" width="100%" alt="Image"></a>-->
                        <h2 class="footer__menu">About Us</h2>
                        <p class="footer-about">
                            We pride ourselves on offering a peaceful relaxation amidst the busy and important religious site ,i.e. Birthplace of Gautam Buddha<br>
                            <div class="footer-payments">
                                <i class="fa fa-cc-mastercard"></i>
                                <i class="fa fa-cc-visa"></i>
                            </div>
                        </p>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 no-padding">
                        '. $jVars['site:copyright'] .'
                    </div>

                </div>
            </div>
        </div>
    </footer>



           ';
           

$jVars['module:footer'] = $footer;

if(!empty($siteRegulars->whatsapp_a)){
$whatsapp='

 <div class="whats_app">
    <a href="https://wa.me/'.$siteRegulars->whatsapp_a.'" target="_blank" rel="noopener" class="whatsapp">
        <i class="fa fa-whatsapp fa-3x"></i>
        </a>
 </div>';
}
else{
    $whatsapp='';
}

$jVars['module:footer-whatsapp'] = $whatsapp;
