<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">





<c:set var="context" value="${pageContext.request.contextPath}" />

<title>videoplayer</title>

 <link href="${context}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
 
        <meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes">
		<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
        <title> </title>
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/animate.css">
        <link rel="stylesheet" type="text/css" href="${context}/resources/css/normalize.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css" />
        <link rel="stylesheet" type="text/css" href="${context}/resources/css/demo.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/menu_elastic.css"> 
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/font-awesome.css"> 

        <link type="text/css" rel="stylesheet" href="${context}/resources/css/override_deativation.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/Home.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/slick.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/slick-theme.css">     
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/strip-modification.css">              
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/colorbox.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/Owl.carousel.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/fav.css">
        <link type="text/css" rel="stylesheet" href="${context}/resources/css/form5-tabs.css">
        <link href="${context}/resources/jquerysctipttop.css" rel="stylesheet" type="text/css">
		
        <script src="${context}/resources/js/snap.svg-min.js.download"></script>
        <script src="${context}/resources/js/jquery.min.js.download"></script>
         
   
     <link type="text/css" rel="stylesheet" href="${context}/resources/css/custom.css">  
     
        <script>
          
            // Wait for window load
           $(window).load(function () {
              
                $(".se-pre-con").fadeOut("slow");
            });
        </script>
  
<link type="text/css" rel="stylesheet" charset="UTF-8" href="${context}/resources/css/translateelement.css">
	<script type="text/javascript" charset="UTF-8" src="${context}/resources/js/main.js.download"></script>
	<script type="text/javascript" charset="UTF-8" src="${context}/resources/js/element_main.js.download"></script>
	
	
	
	
	<style type="text/css">
		.footer {
     height: 5%;
    
    left: 0;
    bottom: 0px;
    width: 100%;
    background-color: black;
    color: white;
    text-align: center;
    font-size: x-large;
}

.header_text{
	font-size:45px;
	margin-right:58px;
}


@media (max-width:480px){
	.header_text{
		font-size:30px;
	}
	.mydwn{
	display:block;
	width:100%;
	height:200px;
}
.mydwn img{
	 width:100%;
	 height:100% !important;
}
}

	</style>
	

</head>


<body style="position: relative; min-height: 100%; top: 0px;">
			<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'ar', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>


<script type="text/javascript" src="${context}/resources/f.txt"></script>
            
        <div class="container-fluid mainModify">
            <div class="menu-wrap">
               <nav class="menu" style=" top: 0px; bottom: 0px;">
				 <div class="icon-list" style="height: 100%; width: 104%; margin-left: -10px;padding-left: 0px;">
                    <a class="de1" href="${context}/indexpage">
                        <i class="fa fa-fw">
                            <img class="img-responsive" src="./resources/images/home.png" alt="">
                        </i><span class="fontStyle">HOME</span>
                    </a>
					 	  </div>
            </nav>

            <div class="morph-shape" id="morph-shape" data-morph-open="M-1,0h101c0,0,0-1,0,395c0,404,0,405,0,405H-1V0z">
                <svg style="display: none;" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 100 800" preserveAspectRatio="none">
                <path style="background: transparent;" d="M-1,0h101c0,0-97.833,153.603-97.833,396.167C2.167,627.579,100,800,100,800H-1V0z"></path>
                <desc>Created with Snap</desc><defs></defs></svg>
            </div>  
 
            </div>
            <div class="content-wrap">
                <!-- Header -->
                <header>
                    <div class="container">
                        <div class="row">
                            <div id="menu-btn" class="col-xs-2">
                                <a id="open-button"><img class="img-responsive" src="${context}/resources/images/menu-icon.png"></a>
                            </div>
                            <div class="col-xs-10">
                                <center>
                                    <div class="mainDLogo">
                                        <center>
										
										 <h  class="header_text"> Super Model	</h>
										 	<!--  <h> http://13.127.243.248/way2sport/content/vi/${imagename}.mp4</h> -->
                                            <!--<img class="img-responsive LogoIMG" src="${context}/resources/mobilart-logo.png">-->
                                        </center>
                                    </div>
                                </center>
                            </div> 
                        </div>
                    </div>
                </header>
                <!-- Slider JS Bootstrap -->
                <div class="container-fluid data-elements">
                    <div class="row"> 
                        <div class="col-xs-12 text-center">
                            <p class="lead">
                                <br><br><br>
								
									
		<%--  <img class="img-responsive" src="http://13.127.243.248/way2games/content/images/${imagename}.jpg" alt="" style=" width:665px;"> --%>							
									
								<!-- 		<video  style="width:400px; max-width:100%; height:auto;" controls=""  src="${context}/resources/images/EventListeners.mp4" type="video/mp4">
								
								</video> -->
								
								
	 <video style="width:100%;height:80%;margin-left:0%;" src="http://13.127.243.248:8082/babes/${imagename}.mp4" controls="" type="video/mp4"></video> 
								
                                                           
                                                               
                                <!--  <video style="width:102%;height:auto;margin-left: -3%;" src="http://13.127.243.248/way2sport/content/vi/MIKEHOPKINSSYRACUSEUNIVERSITYPart5_320x240.mp4" controls="" type="video/mp4"></video>       -->                        
                                                               
                                                                <!--  <img src="${context}/resources/30020.jpg" width="200" height="200">-->
                            </p>
                        </div>
                    </div>
                    					
<style type="css">
.section-list-modified {
    margin: 0px;
    padding: 0px;
    width: 100%;
    display: inline-block;
    list-style: outside none none;
	height: 43px;
}



</style>
                    <div class="row"> 
                        <div class="col-xs-12 text-center menu-list-item">
                            <ul id="navbars" class="section-list">
								 									<li data-dialog="somedialogd" class="event">
								 				<a href="http://13.127.243.248:8082/babes/${imagename}.mp4" download>
                                         <p style="margin-left: 36%;"> Download Now</p>
                                        </a></li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
           <div class="footer">
  	<p>Copyright © Super Model</p>
	</div>
        </div><!-- /container -->
        <!-- JS Applications -->
       
 <script type="text/javascript" id="homepageJs">

    var page = '', contentTemplate = '', sIndex = 3, offSet = 9, isPreviousEventComplete = true, isDataAvailable = true;
    $(window).scroll(function () {
        
        if ($(document).height() - 150 <= $(window).scrollTop() + $(window).height()) {
          
            if (isPreviousEventComplete && isDataAvailable) {
                isPreviousEventComplete = false;
                 
                $("#contentLoader").show();
                var packType = window.location.pathname.split("/")[2];
                $.ajax({
                    type: "POST",
                    dataType: 'json',
                     
					 
                    success: function (result) {
                        
		 
						 
						 
                        var res = '';
						
                        if (res== '') {
							//alert('hi');
                          //  $.each(result.contentdata, function (i, content) {
                             
                                var content_icon = 'img-ico.png', liked = '', like_icon = 'like-heart.png';
                                if (content.isfav != "1") {
                                    liked = 'liked';
                                    like_icon = 'like-heart_fill.png';
                                }
                                //console.log(content);
                                if ((i + 1) % 3 != 1) {
                                    res += '<div class="col-xs-6 over left-col animated slideInLeft">';
                                }
                                else if ((i + 1) % 3 != 2) {
                                    res += '<div class="col-xs-6 right-col over animated slideInRight">';
                                }
                                else {
                                     
                                    res += '<div class="col-xs-12 mid-col over animated slideInUp" >';
                                }
                                if (content.content_type != 'Video') {
                                    content_icon = 'videoIcon.png';
                                    res += '<div class="controlling-col-xs-6-play-vieo"><a class="mydwn" href=" ' + content.content_id + '/' + page + '"><img class="img-responsive" src="" alt=".." /></div>'; 
                                }

                               
                                res += '<div style="width: 100%; position: relative;z-index: 100;" data-contentid="' + content.content_id + '">';
                                if (content.content_type != 'Video') {

                                    res += '<a class="mydwn" href=" ' + content.content_id + '/' + page + '">';
                                }
                                if (content.content_type == 'Image') {

                                    res += '<a class="mydwn" href=" ' + content.content_type + '/' + content.content_id + '/' + content.FILE_ID + '/' + page + '">';
                                }
                                res += '<img class="img-responsive" src="' + content.display_url + '" alt="" /></a>';
                                res += '</div>';
                                res += '<div class="controlling-col-xs-6" data-contentid="' + content.content_id + '" data-content_type="' + content.content_type + '" data-FILE_TYPE_ID="' + content.FILE_TYPE_ID + '" data-FILE_SUB_TYPE_ID="' + content.FILE_SUB_TYPE_ID + '">';
                                res += '<a class="hyperLinks-style" style="background-image: url(\' ' + content_icon + '\');" href="#">';
                                res += '<span class="fontsStyle">' + content.display_name.substring(0, 12) + '</span> </a>';
                                        res += '<a class="download_icon" href=" ' + content.content_type + '/' + content.content_id + '/' + content.FILE_ID + '/' + page + '">';
                                    res += '<img  style="float: right; width: 18px;" src=" " alt=".." /></a>';
                                    res += '<a class="show-dialog-box like_icon ' + liked + '" href="#">';
                                res += '<img style="float: right; width: 19px;" src=" ' + like_icon + '" alt="" /></a>';
                                res += '</div></div>';
                            //});
                          
                        }
                        else {
                            isDataAvailable = false;
                        }
                        $("#contentHome .row").append(res);
                        sIndex = sIndex + offSet;
                        isPreviousEventComplete = true;

                        $("#contentLoader").hide();
                    },
                    error: function (error) {
                        console.log(error);
                        $("#contentLoader").hide();
                    }
                });
            }
        }
    });


    $(function () {

        $("#contentHome").on('click', '.like_icon', function (e) {
            var contentData = $(this).parent();
             
            e.preventDefault();
    
            
				var res= 'To add this video in your favorute list please subscribe';
				$(".pop-up_txt").html(res);
            

            });

        
        /* $("#contentHome").on('click', '.download_icon,.mydwn', function (e) {
            var content_div = $(this).parent();
            console.log($(content_div).data('contentid'));
                    e.preventDefault();
                var redirecturl = cgPageUrl + '&contentid=' + $(content_div).data('contentid');
                window.top.location.href = redirecturl;
                return false;
            }); */
         
        $("#dynamicContent").on('click', '.show-dialog-box', function () {
           
            setFunc();
        });
        var dialogBoxEventer = $(".show-dialog-box");
        var overlay = $(".Dialog-overlay");
        var DialogBox = $(".Dialog-box");
        var Conainer = $(".mainModify");
        var btnEventHandler = $(".okBtn");

        var setFunc = function () {
            overlay.fadeIn();
            DialogBox.css("visibility", "visible");
            Conainer.css("margin", "15px");
            DialogBox.removeClass("animated bounceOutDown");
            DialogBox.addClass("animated bounceInUp");
            return false;
        }
        var removeFunc = function () {
            DialogBox.removeClass("animated bounceInUp");
            DialogBox.addClass("animated bounceOutDown");
            setTimeout(function () {
                overlay.fadeOut();
                Conainer.css("margin", "0px");
            }, 500);

            return false;
        }
      
        btnEventHandler.click(function () {
            removeFunc();
        });




    });

    $("body").on('click', '.call_ccg', function () {
        $.ajax({
            type: "POST",
            dataType: 'text',
             
			url: '#',
            beforeSend: function () {
                $(".loader").fadeIn("slow");
            },
            success: function (result) {
                console.log(result);
                $("#contentHome .row").html(result);
                $("#contentLoader").hide();

            },
            error: function (error) {
                res = 'Something went wrong.';
                console.log(res);
            }
        });
    });
</script>            
            <div class="Dialog-overlay"></div>
            <div class="Dialog-box text-center">
                <div class="pop-up_txt"></div>
                <button class="btn btn-primary Yes okBtn">OK</button>
            </div>
                        
        
    
    <!-- /container -->

    <!-- JS Applications -->
    <script src="${context}/resources/js/bootstrap.min.js.download"></script>
    <script type="text/javascript" src="${context}/resources/js/jquery-ui.js.download"></script>
    <script type="text/javascript" src="${context}/resources/js/jquery.ui.touch-punch.min.js.download"></script>
   
    <script src="${context}/resources/js/classie.js.download"></script>
    <script src="${context}/resources/js/main3.js.download"></script>
	<!--
	
    
    <!-- / -->
    <script>
            var getCl = document.getElementsByClassName("col");
            for (var i = 0; i < getCl.length; i++) {
                getCl[i].offsetWidth;
            }
            function contentPage(page) {
				
				 
                var packType = window.location.pathname.split("/")[2];
                $(".se-pre-con").fadeIn("slow");
                $('#cboxLoadingOverlay, #cboxLoadingGraphic').show();
                $.ajax({
                    type: "GET",
                    //dataType: 'json',
                    url: ' ' + page + '/true/' + packType,
                    success: function (result) {
                        //console.log(result);
                        $(window).unbind('scroll');
                        $("#banner").show();
                        $("#menu_nav").show();
                        $("#menu .col-item").removeClass('active-arrow');
                        $("#menu").find('a[href="javascript:contentPage(\''+page+'\');"]').addClass('active-arrow');
                        //$("#menu").find('a[href~="'+page).addClass('active-arrow');
                        if (page == '') {
                            $("#regional").html(page);
                            $("#regional").addClass('active-arrow');
                            var menu_no = parseInt($("#menu a").index($("#regional")) / 3);
                        }
                        else {
                            console.log(page);
                            $("#" + page).addClass('active-arrow');
                            var menu_no = parseInt($("#menu a").index($("#" + page)) / 3);
                        }
                        $("#menu").trigger('owl.goTo', menu_no);
                        $("#dynamicContent").html(result);
                        $(".se-pre-con").fadeOut("slow");
                    },
                    error: function (error) {
                        console.log(error);
                        $(".se-pre-con").fadeOut("slow");
                    }
                });
            }


             
            function renderPage(page, reason) {
                var data = '';
                if (page == 'deact_cnfm') {
                    reason = typeof reason !== 'undefined' ? reason : 'other';
                    //console.log(reason);
                    data = "{reason: " + reason + "}";
                }
                $(".se-pre-con").fadeIn("slow");
                $.ajax({
                    type: "POST",
                    //dataType: 'json',
                    url: ' ' + page,
                    data: data,
                    success: function (result) {
                         $(window).unbind('scroll');
                         $("#menu .col-item").removeClass('active-arrow');
                        $("#menu").find('a[href="javascript:page(\'' + page + '\');"]').addClass('active-arrow');
                       
                        $("#banner").hide();
                        $("#menu_nav").hide();
                        $("#dynamicContent").html(result);
                        $(".se-pre-con").fadeOut("slow");
                    },
                    error: function (error) {
                        console.log(error);
                        $(".se-pre-con").fadeOut("slow");
                    }
                });
            }
            $(function () {
               

                    $(".mysubscription").show();
                    $(".myaccountPage").hide();



                $(".menu a").on('click', function () {
                    var bodyEl = document.body;
                    classie.remove(bodyEl, 'show-menu');
                });
               
                $(".myLang").on('change', function () {
                    console.log($(this).val());
                    var type = 'contentPage';
                    var page = $(this).val();
                 
                    window.location.hash = "#" + type + "/" + page;
                });

                $(".mySpecial").on('change', function () {
                    console.log($(this).val());
 
                    var type = 'contentPage';
                    var page = unescape(($(this).val())).toLowerCase();
 
                    window.location.hash = "#" + type + "/" + page;
                });

 



                $("#banner").on('click', '.like_icon', function (e) {

                        $(".Dialog-overlay").hide();
                        $(".Dialog-box").hide();
                        removeFunc();
                        window.top.location.href = cgPageUrl;
                        return false;
                });

       

                $(".menu-wrap").on('click', '.subscription', function (e) {
                    e.preventDefault();
                    window.top.location.href = cgPageUrl;
                    return false;
                });


                $("#banner").on('click', '.mydwn', function (e) {
                        e.preventDefault(); 
                        window.top.location.href = cgPageUrl;
                        return false;
                });


                var dialogBoxEventer = $(".show-dialog-box");
                var overlay = $(".Dialog-overlay");
                var DialogBox = $(".Dialog-box");
                var Conainer = $(".mainModify");
                var btnEventHandler = $(".okBtn");

                var setFunc = function () {
                    overlay.fadeIn();
                    DialogBox.css("visibility", "visible");
                    Conainer.css("margin", "15px");
                    DialogBox.removeClass("animated bounceOutDown");
                    DialogBox.addClass("animated bounceInUp");
                    return false;
                }
                var removeFunc = function () {
                    DialogBox.removeClass("animated bounceInUp");
                    DialogBox.addClass("animated bounceOutDown");
                    setTimeout(function () {
                        overlay.fadeOut();
                        Conainer.css("margin", "0px");
                    }, 500);

                    return false;
                }

                dialogBoxEventer.click(function () {
                    setFunc();
                });

                btnEventHandler.click(function () {
                    removeFunc();
                });




            });
            /*------------  to enable back button funcationaliy ------------------*/
            $(window).on('hashchange', function () { 
                var url = window.location.hash; 
                if (url == "") {
                    var page = "trending";
                    contentPage(page);
                }
                else if (url.split('#contentPage/')[1] !== undefined) {
                    var page = url.split('#contentPage/')[1].trim();
                    contentPage(page);
                }
                else if (url.split('#renderPage/')[1] !== undefined) {
                    var page = url.split('#renderPage/')[1].trim();
                    renderPage(page);
                }
            });
            function createHash(type, page) {
				 
				 window.location.href= "http://q.mobilart.in/"+page+".php";
				//alert(home.php');
            }


    </script>
         
    

			<div id="cboxOverlay" style="display: none;"></div>
			<div id="goog-gt-tt" class="skiptranslate" dir="ltr">
				<div style="padding: 8px;">
					<div>
						<div class="logo">
							<img src="${context}/resources/translate_24dp.png" width="20" height="20" alt="Google Translate">
							</div>
						</div>
					</div>
						<div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">Original text</h1></div>
						<div class="middle" style="padding: 8px;">
							<div class="original-text"></div>
						</div>
							<div class="bottom" style="padding: 8px;">
								<div class="activity-links">
									<span class="activity-link">Contribute a better translation</span>
									<span class="activity-link"></span>
								</div>
								<div class="started-activity-container">
									<hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;">
										<div class="activity-root"></div>
								</div>
							</div>
								<div class="status-message" style="display: none;"></div>
							</div>
								<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
									<div id="cboxWrapper">
										<div>
											<div id="cboxTopLeft" style="float: left;"></div>
												<div id="cboxTopCenter" style="float: left;"></div>
													<div id="cboxTopRight" style="float: left;"></div>
												</div>
													<div style="clear: left;">
														<div id="cboxMiddleLeft" style="float: left;"></div>
															<div id="cboxContent" style="float: left;">
																<div id="cboxTitle" style="float: left;">
																</div>
																<div id="cboxCurrent" style="float: left;"></div>
																<button type="button" id="cboxPrevious"></button>
																<button type="button" id="cboxNext"></button>
																<button id="cboxSlideshow"></button>
																<div id="cboxLoadingOverlay" style="float: left;"></div>
																<div id="cboxLoadingGraphic" style="float: left;">
																</div>
															</div>
																<div id="cboxMiddleRight" style="float: left;"></div>
															</div>
																<div style="clear: left;">
																	<div id="cboxBottomLeft" style="float: left;"></div>
																		<div id="cboxBottomCenter" style="float: left;"></div>
																		<div id="cboxBottomRight" style="float: left;"></div>
																</div>
															</div>
																<div style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div>
														</div>
															<div class="goog-te-spinner-pos">
															<div class="goog-te-spinner-animation">
															<svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
															<circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30">
															</circle></svg>
														</div>
												</div>
										<iframe frameborder="0" class="goog-te-menu-frame skiptranslate" title="Language Translate Widget" style="visibility: visible; box-sizing: content-box; width: 137px; height: 56px; display: none;" src="${context}/resources/saved_resource.html">
										</iframe>
</body>




</html>