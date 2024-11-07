<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
$tellinked = '';
    $telno = explode("/", $siteRegulars->pobox);
    $lastElement = array_shift($telno);
    $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noopener">' . $lastElement . '</a>';
    foreach ($telno as $tel) {
        
        $tellinked .= '/<a href="tel:+977-' . $tel . '" target="_blank" rel="noopener">' . $tel . '</a>';
        if(end($telno)!= $tel){
        $tellinked .= '/';
        }   
}

$whatslinked ='';
$whatsno = explode(",", $siteRegulars->whatsapp_a);
// pr($whatsno);
$lastElement = array_shift($whatsno);
$whatsno=  str_replace('-','',$lastElement);
$whatslinked .= '<span><a href="https://wa.me/' . $whatsno . '"><i class="fa fa-whatsapp" ></i>' . $lastElement . '</a>
                                    <a href="https://wa.me/' . $whatsno . '" target="_blank" rel="noopener"> (WhatsApp)</a><span>';
                                    $childno='';
                                    
                                    if(is_array($whatsno) && !empty($whatsno)){
                                        foreach ($whatsno as $whats) {
    $cwhatsno .=  str_replace('-','',$whats);
    $whatslinked .= '
    <span><a href="https://wa.me/' . $cwhatsno . '"><i class="fa fa-whatsapp" ></i>' . $whats . '</a>
                                    <a href="https://wa.me/' .$cwhatsno. '" target="_blank" rel="noopener"> (WhatsApp)</a><span>';
    if(end($whatsno)!= $whats){
    $whatslinked .= '';
    }   
}
}
?>
    <!-- header info begin -->
    <div id="header-info">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <ul class="header-contact">
                        <li class="icon_location">
                            <a href="<?= $siteRegulars->contact_info2 ?>" target="_blank"><?= $siteRegulars->fiscal_address ?></a>
                        </li>
                        <li class="icon_phone"><a href="tel:<?= $siteRegulars->contact_info ?>"><?= $siteRegulars->contact_info ?></a></li>
                        <li class="icon_email"><a href="mailto:<?= $siteRegulars->email_address ?>"><?= $siteRegulars->email_address ?></a></li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <div class="h_box">
                        <div class="social-icons-header">
                            <?= $jVars['module:socilaLinktop'] ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header info close -->

    <!-- header begin -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span id="menu-btn"></span>

                    <!-- logo begin -->
                    <div id="logo">
                        <div class="inner">
                            <a href="<?= BASE_URL ?>home"><img src="<?= IMAGE_PATH ?>preference/<?= $siteRegulars->logo_upload ?>" alt="logo"></a>
                        </div>
                    </div>
                    <!-- logo close -->

                    <!-- mainmenu begin -->
                    <nav>
                        <?= $jVars['module:res-menu'] ?>
                    </nav>
                    <!-- mainmenu close -->
                </div>
            </div>
            <!-- Removed one div cause design broke -->
    </header>
    <!-- header close -->
<?php
$header = ob_get_clean();


$header = '
<header class="header-sky">
            <!-- HEADER -->
            <div class="container">
                <!--HEADER-TOP-->
                <div class="header-top">
                    <div class="header-top-left">
                        <span><i class="ion-ios-location-outline"></i>'. $siteRegulars->fiscal_address .'</span>
                    </div>
                    <div class="header-top-right">
                        <span><a href="https://www.facebook.com/HotelSevenStar" target="_blank" rel="noopener"><i class="fa fa-facebook" aria-hidden="true"></i></a></span>&nbsp;&nbsp;|&nbsp;
                        <span><i class="fa fa-phone" aria-hidden="true"></i>'. $tellinked .'</span>&nbsp;&nbsp;|&nbsp;
                        '.$whatslinked.'
                    </div>
                </div>
                <!-- END/HEADER-TOP -->
            </div>
            <!-- MENU-HEADER -->
            <div class="menu-header">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header ">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar "></span>
                                <span class="icon-bar "></span>
                                <span class="icon-bar "></span>
                            </button>
                            <a class="navbar-brand" href="home" title="Hotel swven Star"><img src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" width="150px" alt="logo"></a>
                        </div>
                        <div class="collapse navbar-collapse">
                        '. $jVars['module:res-menu'] .'
                        </div>
                    </div>
                </nav>
            </div>
            <!-- END / MENU-HEADER -->
    
        <!-- END-HEADER -->
    </header>

';
$jVars['module:header'] = $header;