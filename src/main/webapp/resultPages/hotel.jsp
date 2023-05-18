<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" 
	import="
	SE.pojo.Info,
	SE.pojo.Description,
	SE.pojo.Feature,
	SE.pojo.Room,
	java.util.List,
	java.util.ArrayList,
	java.util.HashMap,
	java.util.Random
	" 
%>
<!DOCTYPE html>


<script type="text/javascript" nonce="9jmEHBuvHcdLmqi"
	src="https://cdn.cookielaw.org/consent/3ea94870-d4b1-483a-b1d2-faf1d982bb31/OtAutoBlock.js"></script>
<script type="text/javascript" nonce="9jmEHBuvHcdLmqi">
		(function () {
			document.addEventListener('cookie_banner_closed', function (e) {
				if (window.PCM && window.B && window.B.et) {
					window.B.et.goal((window.PCM.Marketing || window.PCM.Analytical) ? 'cookie_consent_accepted_policy_banner' : 'cookie_consent_declined_policy_banner');
				}
			});
			document.addEventListener('click', function (e) {
				if (e.target && e.target.classList.contains('ot-preference-center-footer')) {
					e.preventDefault();
					Optanon && Optanon.ToggleInfoDisplay();
				}
			});
		})();
</script>
<script type="text/javascript" nonce="9jmEHBuvHcdLmqi">
	window.PCM = {
		isCountryNeedCookieBanner: 1,
		isGpcSignalEnabled: 0,
		loadStartedAt: 1683712005,
		countryCode: 'cn',
		isUserLoggedIn: 0
	}
</script>
<script type="text/javascript" nonce="9jmEHBuvHcdLmqi"
	src="./script/libs/privacy-consent/releases/2.1.40/customer/cookie-banner.min.js"
	data-domain-script="3ea94870-d4b1-483a-b1d2-faf1d982bb31"></script>
<link href="./script" rel="dns-prefetch" crossorigin>
<link href="./script" rel="dns-prefetch" crossorigin>
<link href="https://shelves.booking.com/" rel="preconnect" crossorigin>

<html lang="zh-cn" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# booking_com: http://ogp.me/ns/fb/booking_com#"
	xmlns:og="http://opengraphprotocol.org/schema/"
	class="noJS b_chrome b_chrome_112 supports_inline-block supports_flexbox_unprefixed supports_fontface ">

<head profile="http://a9.com/-/spec/opensearch/1.1/">
	<%
		Integer hotel_id = (Integer)request.getAttribute("hotel_id");
		if(hotel_id == null){
			hotel_id = 0;
		}
		Integer img_num = (Integer)request.getAttribute("img_num");
		if(img_num == null){
			img_num = 7;
		}
		Info hotel_info = (Info)request.getAttribute("hotel_info");
		if(hotel_info == null){
			hotel_info = new Info();
			hotel_info.setHotel_name("酒店名称");
			hotel_info.setRating(8.0f);
			hotel_info.setRegion("地区");
			hotel_info.setRooms(new ArrayList<Room>());
			for(int i = 0; i < 3; ++i){
				Room room = new Room();
				room.setRoom_facilities("");
				room.setRoom_more_facilities("");
				room.setRoom_num(5);
				room.setPrice(100f);
				hotel_info.getRooms().add(room);
			}
		}
		Description hotel_des = (Description)request.getAttribute("hotel_des");
		Feature hotel_feature = (Feature)request.getAttribute("hotel_feature");
		
		String check_in_date = (String)request.getAttribute("check_in_date");
		String check_out_date = (String)request.getAttribute("check_out_date");
	%>


	<meta name="referrer" content="origin-when-cross-origin">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<script nonce="9jmEHBuvHcdLmqi">
			; (function (w) {
				var ts = +new Date();
				w.PageLoadTimer = {};
				w.PageLoadTimer.start = ts;
			}(window));
	</script>
	<script nonce="9jmEHBuvHcdLmqi">
		; (function () {
			window.b_early_errors = window.b_early_errors || [];
			window.onerror = function () {
				window.b_early_errors.push(arguments);
			};
		}());
	</script>
	<link rel="stylesheet" id="main-css-preload"
		href="./script/static/css/main_cn_alicloud_a.iq_ltr/7e25c448172fa2405f9aaf4a9ad33bb8786d3846.css"
		data-main-css="1" />
	<script nonce="9jmEHBuvHcdLmqi">
		document.querySelector('#main-css-preload').addEventListener('load', function () {
			window.mainCssWasLoaded = 1;
		})
	</script>
	<link rel="stylesheet"
		href="./script/static/css/main_exps_alicloud_a.iq_ltr/4fa309cfd97fac6fa22a66b7e9e726657c4cd8d0.css" />
	<link rel="stylesheet"
		href="./script/static/css/gprof_icons_alicloud_a.iq_ltr/f9a9959fb174be6a1a61e78d982a7444775f1419.css" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/hotel_base_cn_alicloud_a.iq_ltr/94a875ce93e5e3bcb0a40dedaf6752c024991567.css"
		media="screen" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/hotel_experiments_cn_alicloud_a.iq_ltr/51b548f9813b674dcd5a077da8e645ce5ab82c15.css"
		media="screen" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/hotel_experiments_rtrw_alicloud_a.iq_ltr/e909d58f62955e74d4e28d7d5fa2093da33d82a5.css"
		media="screen" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/leaflet_1_2_0_alicloud_a.iq_ltr/28e3edae7a1787f9287d3b34a63985c13f1c4021.css"
		media="screen" />
	<link rel="_prefetch" data-defer-prefetch
		href="./script/static/css/searchresults_alicloud_a.iq_ltr/c4f62c4b0caa8fe025ad2e291fd6b8a083b78044.css">
	<link rel="_prefetch" data-defer-prefetch
		href="./script/static/css/book_alicloud_a.iq_ltr/91aa248a9b8e5dd3b14a7cf72bb5606cf868ad5a.css">
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/xp-isolated-sb_alicloud_a.iq_ltr/a0576f38353929d79a9d7d1d80e39a34328ac2de.css"
		media="screen, print" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/incentives_alicloud_a.iq_ltr/33eadafb597edc0b651d3538d4ebdc6ca7741b68.css"
		media="screen" />
	<link rel="stylesheet"
		href="./script/static/css/mlt_alicloud_a.iq_ltr/85bc8646b0dbe9e70bcf562f7e42acaa155afc7f.css" />
	<style nonce="9jmEHBuvHcdLmqi">
		#basiclayout,
		.basiclayout {
			margin: 0;
		}

		#special_actions {
			margin: 3px 15px 3px 0;
		}

		.ticker_space {
			margin-top: 3px !important;
		}

		#logo_no_globe_new_logo {
			top: 14px;
		}

		.b_msie_6 #top,
		.b_msie_6 body.header_reshuffle #top {
			height: 61px !important;
		}

		.b_msie_6 #special_actions {
			margin: 3px 15px 3px 0;
			overflow: visible;
		}

		body.header_reshuffle #top {
			min-height: 50px !important;
			height: auto !important;
		}

		.nobg {
			background: #fff url("./script/static/img/nobg_all_blue_iq/b700d9e3067c1186a3364012df4fe1c48ae6da44.png") repeat-x;
			background-position: 0 -50px;
		}
	</style>
	<link rel="stylesheet"
		href="./script/static/css/cjk/969f60bdd3700d13d4b9df8937fcc8745bbfa45b.css" />
	<link rel="preload" as="script"
		href="./script/static/js/core-deps-inlinedet_alicloud_a/6da0bf621035bb8a2f9c756d6a89dda03b2f7864.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/main_cn_alicloud_a/57cc6acb6d903bd8173c27406cf853619327a610.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/searchbox_alicloud_a/f37d10ad9271707442b5c0b09ae622b711f498d2.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/hotel_cn_alicloud_a/641215e271666ed77b2dd2712cd1beaf6966bd58.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/hotel_experiments_rtrw_alicloud_a/bd73e4a33b164b40301cd60fb050aedc78cd63e2.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<link rel="preload" as="script"
		href="./script/static/js/error_catcher_bec_alicloud_a/0acd2ada6c74d5dec978a04ea837952bdf050cd2.js"
		crossorigin nonce="9jmEHBuvHcdLmqi">
	<script
		nonce="9jmEHBuvHcdLmqi"> if (window.performance && performance.measure && 'b-stylesheets') { performance.measure('b-stylesheets'); } </script>
	
	<title>
	<%
		if(hotel_info == null){
			out.print("酒店");
		}else{
			out.print(hotel_info.getHotel_name());
		}
	%>
	– 2023最新房价
	</title>
	
	<meta name="description"
		content="南京东山智选假日酒店位于南京，提供客房，距离Dr.中山陵有不到12公里，距离夫子庙有13公里。这家住宿提供的设施包括餐厅、24小时前台、行李寄存处和免费WiFi。这家酒店距离玄武湖有17公里，距离雨花台有13公里。..." />
	<meta name="keywords" content="南京东山智选假日酒店, 南京东山智选假日酒店预订, 南京东山智选假日酒店优惠价格" />
	<meta name="robots" content="index,follow" />
	<link rel="canonical" href="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html" />
	<link rel="alternate" href="android-app://com.booking/booking/hotel/4685428?affiliate_id=375119" />
	<meta name="booking-verification"
		content="UmFuZG9tSVYh9eSm5OYgS77TnPZTfW2C7Vn4Tt4GUbSTmJeA6QhvKuAPtlclYlxDnpa8SF_GN0C52exHzphxr3sjEhInOMjiM7upedST2lG5ZaX_-W_CXVom8kndZPWuH8LlvWV1i5BqZ_V_hqk_062r7DwZvQlLrtV__u5H38DUflT524WiK2ZN4P56F6U98YoPENX6wGZsIjrPnyfuhI7ySt95pfV6iqTT0WWUxDq6MoL0il8cfRoe_4zR4i3wGmPAe12MCzc1T0aX6JO-uL3ChIaDGUuW1Ju1DIXknJ4oVyxAR78LHY2xBRkhaag5SMV3kQjJCN819w0rxX7ChRD1IyNDCEV7c0UquRaXFshC6z3j5rcVbJ2R7g0-HfI3WSCWoFUI6fEFuMrHhlwrysyRL1fdakveblALUQheNZ5bVA277Iaej2EFqQ1AeFSa1sRY9v88D4kGETh5YWjTT-eO-lW15y9615kqehHb-QRAD7oR1m3_Qf2dKOtztVMlZ1-XF13BICkS_NFcqnU_KH1UB4cjtdZFXnFy8XI26WNrdogt3qmU0HSFbSmdHs-ElKSufgh7JRJP4srdlkENpfSql2FvoN5eZ5IJnXut-eWe71QEoQorDF-LBqDKRWXlWuvRziakhjIl2bX9398z3zX0b_j8pJl9SVd4-7gLsOu1R6E7fUV2AEWxVpGYaUEu" />
	<meta name="twitter:app:id:iphone" content="367003839" />
	<meta name="twitter:app:name:ipad" content="Booking.com Hotel Reservations Worldwide & Hotel Deals" />
	<meta name="twitter:app:id:ipad" content="367003839" />
	<meta name="twitter:app:name:googleplay" content="Booking.com Hotel Reservations" />
	<meta name="twitter:app:id:googleplay" content="com.booking" />
	<meta property="al:ios:app_store_id" content="367003839">
	<meta property="al:ios:app_name" content="Booking.com Hotel Reservations">
	<meta property="al:android:app_name" content="Booking.com Hotel Reservation">
	<meta property="al:android:package" content="com.booking">
	<meta name="twitter:title" content="南京东山智选假日酒店, 南京, 中国" />
	<meta name="twitter:description"
		content="南京东山智选假日酒店位于南京，提供客房，距离Dr.中山陵有不到12公里，距离夫子庙有13公里。这家住宿提供的设施包括餐厅、24小时前台、行李寄存处和免费WiFi。这家酒店距离玄武湖有17公里，距离雨花台有13公里。..." />
	<meta name="twitter:image"
		content="./script/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1" />
	<meta name="twitter:app:url:iphone"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=375119&label=bin859jc-1TCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIC0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIF4AIB" />
	<meta name="twitter:app:url:ipad"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=375119&label=bin859jc-1TCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIC0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIF4AIB" />
	<meta name="twitter:app:url:googleplay"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=375119&label=bin859jc-1TCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIC0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIF4AIB" />
	<meta property="al:ios:url"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=375119&label=bin859jc-1TCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIC0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIF4AIB" />
	<meta property="al:android:url"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=375119&label=bin859jc-1TCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIC0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIF4AIB" />
	<meta name="p:domain_verify" content="ff7f0b90ebb93e5bf7c7cafe77640ec1" />
	<meta http-equiv="content-language" content="zh-cn" />
	<meta http-equiv="content-script-type" content="text/javascript" />
	<meta http-equiv="content-style-type" content="text/css" />
	<meta http-equiv="window-target" content="_top" />
	<meta property="fb:pages"
		content="131840030178250, 1425349334428496, 117615518393985, 1565844503706287, 517612321758712, 1668799180037291, 265097377176252, 1643712662515912, 303492549842824, 1638321783047271, 809709019119342, 959185470826086, 217466488652137, 641365839348517, 203741606405114">
	<meta property="wb:webmaster" content="48970bbca45d28c2" />
	<meta property="og:type" content="website" />
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@bookingcom">
	<meta name="twitter:creator" content="@bookingcom">
	<meta property="og:title" content="&#x2605;&#x2605;&#x2605; 南京东山智选假日酒店, 南京, 中国" />
	<meta property="og:description"
		content="南京东山智选假日酒店位于南京，提供客房，距离Dr.中山陵有不到12公里，距离夫子庙有13公里。这家住宿提供的设施包括餐厅、24小时前台、行李寄存处和免费WiFi。这家酒店距离玄武湖有17公里，距离雨花台有13公里。..." />
	<meta property="og:image"
		content="./script/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1" />
	<meta property="og:image:width" content="1024" />
	<meta property="og:image:height" content="576" />
	<meta property="booking_com:location:latitude" content="" />
	<meta property="booking_com:location:longitude" content="" />
	<meta property="og:locale" content="zh_CN" />
	<meta property="og:url"
		content="./script/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html" />
	<meta property="og:site_name" content="Booking.com" />
	<meta property="fb:app_id" content="145362478954725" />

	<link rel="alternate" type="text/html" hreflang="zh-cn"
		href="" title="简体中文" />
	<link rel="icon"
		href="./script/static/img/favicon-new-32/40749a316c45e239a7149b6711ea4c48d10f8d89.ico"
		sizes="any">
	<link rel="icon"
		href="./script/static/img/favicon/9ca83ba2a5a3293ff07452cb24949a5843af4592.svg"
		type="image/svg+xml">
	<link rel="apple-touch-icon"
		href="./script/static/img/apple-touch-icon-blue/5db9fd30d96b1796883ee94be7dddce50b73bb38.png" />
	<link rel="help"
		href="/faq.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&&amp;" />
	<link rel="search" type="application/opensearchdescription+xml"
		href="./script/static/opensearch/zh-cn/e44d907bf77c5add70d4a46fce6bff10be3e8d18.xml"
		title="Booking.com在线酒店预订" />
	<link href="./script/105443419075154950489" rel="publisher" />
	<script type="application/ld+json" nonce="9jmEHBuvHcdLmqi">
{
   "description" : "南京东山智选假日酒店位于南京，提供客房，距离Dr.中山陵有不到12公里，距离夫子庙有13公里。这家住宿提供的设施包括餐厅、24小时前台、行李寄存处和免费WiFi。这家酒店距离玄武湖有17公里，距离雨花台有13公里。...",
   "image" : "./script/xdata/images/hotel/max500/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1",
   "name" : "南京东山智选假日酒店",
   "address" : {
      "addressCountry" : "中国",
      "addressLocality" : "江宁区天行路19号",
      "streetAddress" : "南京江宁区天行路19号",
      "@type" : "PostalAddress",
      "postalCode" : "211100",
      "addressRegion" : "江苏"
   },
   "priceRange" : "未来几日住宿预订参考价格：每晚每间282元起（价格更放心）",
   "@context" : "http://schema.org",
   "hasMap" : "https://maps.googleapis.com/maps/api/staticmap?size=1600x1200&sensor=false&center=31.9842500,118.8772100&markers=color:blue%7c31.9842500,118.8772100&zoom=15&client=gme-booking&channel=booking-frontend&signature=mQ1EV6xnMQ6dyEb-vgQQdW-Z9MI=",
   "url" : "./script/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html",
   "@type" : "Hotel",
   "aggregateRating" : {
      "@type" : "AggregateRating",
      "bestRating" : 10,
      "ratingValue" : 9.0,
      "reviewCount" : 8
   }
}
</script>

	<script nonce="9jmEHBuvHcdLmqi">
		/*
		*/
		(function avoidingXSSviaLocationHash() {
			var location = window.location,
				hash = location.hash,
				xss = /[<>'"]/;
			if (
				xss.test(decodeURIComponent(hash)) ||
				xss.test(hash)
			) {
				location.hash = '';
			}
		})();
		document.documentElement.className = document.documentElement.className.replace('noJS', '') + ' hasJS';
		var b_experiments = {}, WIDTH, B = window.booking = {
			_onfly: [], // "on the fly" functions, will be executed as soon as external js files were loaded
			devTools: {
				trackedExperiments: []
			},
			user: {
			},
			env: {
				isRetina: window.devicePixelRatio > 1,
				"b_gtt": 'dLYAeZFVJfNTBBFWZBdeFYEQIfVNHZXcbWYaYZXC',
				"b_action": 'hotel',
				"b_secure_domain": 'https://secure.booking.com',
				"b_site_type": 'www',
				"b_site_type_id": '1',
				"b_query_params_with_lang_no_ext": '?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&',
				"b_query_params_with_lang_no_ext_enforce_lang_aid_currency": '?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&;lang=zh-cn;aid=397645;selected_currency=CNY',
				"b_travel_comm_url_with_lang": 'https://community.booking.com/?profile.language=en',
				"b_calendar2": '1',
				"BHDTJdReLGMeEcYPffcVDZBZMO": true,
				"b_max_los_data_for_prefilled_dest": { "default_los": 45, "experiment": "BHDTJdReQHUYYOLEaMYYXO", "is_fullon": 0, "has_extended_los": 1, "extended_los": 90, "max_allowed_los": 90 },
				/*
				*/
				"b_partner_channel_id": '17',
				"b_bookings_owned": '1',
				"b_google_maps_key_params": 'true&indexing=true',
				"b_lang": 'zh',
				"b_checkin_date": '2023-06-02',
				"b_checkout_date": '2023-06-03',
				"b_checkin_checkout_interval": 1,
				"b_checkin_checkout_interval_in_weeks": 0,
				"b_has_valid_dates": 1,
				"b_countrycode": 'cn',
				"b_guest_country": 'cn',
				"b_locale": 'zh-cn',
				"b_lang_for_url": 'zh-cn',
				"b_this_urchin": '/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&all_sr_blocks=468542806_246088447_2_1_0&amp;dest_id=44&amp;dest_type=country&amp;group_adults=1&amp;group_children=0&amp;hapos=1&amp;highlighted_blocks=468542806_246088447_2_1_0&amp;hpos=1&amp;matching_block_id=468542806_246088447_2_1_0&amp;no_rooms=1&amp;req_adults=1&amp;req_children=0&amp;room1=A&amp;sb_price_type=total&amp;sr_order=popularity&amp;sr_pri_blocks=468542806_246088447_2_1_0__32500&amp;srepoch=1683711772&amp;srpvid=57ba444d8f80007e&amp;type=total&amp;ucfs=1&&',
				"b_flag_to_suggest": 'cn',
				"b_companyname": 'Booking.com',
				"b_partner_vertical": 'channel_seo_brand',
				b_date_format: { "date_with_weekday_time_until": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time}之前", "day_of_month_only": "{day_of_month}", "day_short_month_until": "{short_month_name}{day_name}日前（含）", "short_date_without_year_range": "{short_month_name}{day_of_month}日 - {short_month_name_until}{day_of_month_until}日", "date_without_year": "{month_name}{day_of_month}日", "date_with_weekday": "{full_year}年{month_name}{day_of_month}日{weekday}", "date_with_short_weekday_with_year": "{full_year}年{month_name}{day_of_month}日{short_weekday}", "day_short_month_year_time_between": "{full_year}年{short_month_name}{day_of_month}日{time}-{time_until}", "numeric_day_month_year_from": "{full_year}年{month_name_0}{day_name_0}日起", "date_with_short_weekday_without_year": "{month_name}{day_of_month}日{short_weekday}", "ux_day_month_on": "{month_2}{day_2}日", "in_month_with_year": "{full_year}年{month_name_in}", "short_weekday_only": "{short_weekday}", "day_short_month_time": "{short_month_name}{day_of_month}日{time}", "short_date": "{full_year}年{short_month_name}{day_of_month}日", "month_with_year": "{full_year}年{month_name_with_year_only}", "short_month_with_year": "{full_year}年{short_month_name}", "date_with_weekday_with_markers": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}", "numeric_date": "{full_year}/{month}/{day_of_month}", "day_month_year_other": "{full_year}年{month_name}{day_other}日", "date_with_weekday_time_at": "date_with_weekday_time_at", "day_month_year_from": "{full_year}年{month_name}{day_name}日起", "short_date_with_weekday": "{full_year}年{short_month_name}{day_of_month}日{short_weekday}", "short_month_only": "{short_month_name}", "day_month_year_time_before": "{year}年{month_name}{day_name}日{time}前", "day_month_year_between": "{full_year}年{month_name}{day_name}日 - {full_year_until}年{month_name_until}{day_name_until}日（含首尾两日）", "day_short_month_year_time": "{full_year}年{short_month_name}{day_of_month}日{time}", "day_short_month_year_from": "{full_year}年{short_month_name}{day_name}日起", "day_month_until": "{month_name}{day_name}日前（含）", "numeric_date_range_both_years": "{full_year}/{month}/{day_of_month} - {full_year_until}/{month_until}/{day_of_month_until}", "numeric_day_month_year": "{full_year}年{month_name_0}{day_name_0}日", "date_with_weekday_from": "{full_year}年{month_name_from}{day_of_month}日{weekday_from}", "numeric_day_month_year_on": "{full_year}年{month_name_0}{day_name_0}日", "day_short_month_year_until": "{full_year}年{short_month_name}{day_name}日前（含）", "day_short_month_time_between": "{short_month_name}{day_of_month}日{time}-{time_until}", "numeric_day_month_year_time_before": "{full_year}年{month_name_0}{day_name_0}日{time}前", "numeric_day_month_year_until": "{full_year}年{month_name_0}{day_name_0}日前（含）", "date_range_with_short_weekday_short_month": "{short_month_name}{day_of_month}日{short_weekday} - {short_month_name_until}{day_of_month_until}日{short_weekday_until}", "date_with_weekday_to": "{full_year}年{month_name_to}{day_of_month}日{weekday_to}", "from_month_with_year": "{full_year}年{month_name_from}至今", "date_with_weekday_time_from": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time}之后", "numeric_date_range": "{month}/{day_of_month} - {month_until}/{day_of_month_until}", "ux_day_month": "{month_1}{day_1}日", "day_month_year_on": "{full_year}年{month_name}{day_name}日", "day_short_month_between": "{short_month_name}{day_of_month}日 – {short_month_name_until}{day_of_month_until}日\n", "day_month_year": "{full_year}年{month_name}{day_name}日", "date_with_weekday_time_from_until": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time} - {time_until}", "day_short_month_year_between": "{full_year}年{short_month_name}{day_of_month}日 – {full_year_until}年{short_month_name_until}{day_of_month_until}日", "day_month_on": "{month_name}{day_name}日", "day_month_other": "{month_name}{day_other}日", "date_with_year": "{full_year}年{month_name}{day_of_month}日", "numeric_day_month_year_between": "{full_year}年{month_name_0}月{day_name_0}日至{full_year_until}年{month_name_0_until}月{day_name_0_until}日（含首尾两日）", "day_short_month_year": "{full_year}年{short_month_name}{day_name}日", "month_name_only": "{month_name_nom}", "day_month_between": "{month_name}{day_name}日 - {month_name_until}{day_name_until}日（含首尾两日）", "range_from_long_date_time_until_long_date_time": "从{full_year}年{month_name}{day_of_month}日{time}至{full_year_until}年{month_name_until}{day_of_month_until}日{time_until}", "short_date_with_weekday_without_year": "{short_month_name}{day_of_month}日{short_weekday}", "day_month_from": "{month_name}{day_name}日起", "long_date_range_both_years": "{full_year}年{month_name}{day_of_month}日 - {full_year_until}年{month_name_until}{day_of_month_until}日", "day_month": "{month_name}{day_name}日", "short_date_without_year": "{short_month_name}{day_of_month}日", "day_short_month_year_other": "{full_year}年{short_month_name}{day_name_other}日", "day_short_month_year_on": "{full_year}年{short_month_name}{day_name}日", "day_month_year_until": "{full_year}年{month_name}{day_name}日前（含）" },
				b_month_for_formatted_date: { "1": { "name_def_article_lc": "1月", "name_with_year_only": "1月", "short_name_uc": "1月", "genitive_lc": "1月", "name_def_article_uc": "1月", "short_name": "1月", "name_uc": "1月", "short_name_only": "1月", "name": "1月", "name_in": "1月", "to_month_lc": "1月", "name_only": "1月", "genitive_uc": "1月", "month_1": "1月", "in_month_lc": "1月", "name_lc": "1月", "day_to": "1月", "name_other": "1月", "on_day_month": "1", "name_from": "1月", "month_2": "1月", "name_to": "1月" }, "10": { "in_month_lc": "10月", "month_1": "10月", "name_lc": "10月", "genitive_uc": "10月", "on_day_month": "10", "name_other": "10月", "month_2": "10月", "name_to": "10月", "name_from": "10月", "name_def_article_uc": "10月", "genitive_lc": "10月", "name_def_article_lc": "10月", "name_with_year_only": "10月", "short_name_uc": "10月", "to_month_lc": "10月", "short_name_only": "10月", "name_uc": "10月", "name": "10月", "name_in": "10月", "name_only": "10月", "short_name": "10月" }, "11": { "month_1": "11月", "in_month_lc": "11月", "name_lc": "11月", "genitive_uc": "11月", "name_other": "11月", "on_day_month": "11", "name_from": "11月", "name_to": "11月", "month_2": "11月", "genitive_lc": "11月", "name_def_article_uc": "11月", "name_def_article_lc": "11月", "name_with_year_only": "11月", "short_name_uc": "11月", "name_in": "11月", "short_name_only": "11月", "name_uc": "11月", "name": "11月", "to_month_lc": "11月", "name_only": "11月", "short_name": "11月" }, "12": { "name_only": "12月", "name_uc": "12月", "short_name_only": "12月", "name_in": "12月", "name": "12月", "to_month_lc": "12月", "short_name": "12月", "genitive_lc": "12月", "name_def_article_uc": "12月", "short_name_uc": "12月", "name_with_year_only": "12月", "name_def_article_lc": "12月", "name_from": "12月", "name_to": "12月", "month_2": "12月", "name_other": "12月", "on_day_month": "12", "name_lc": "12月", "in_month_lc": "12月", "month_1": "12月", "genitive_uc": "12月" }, "2": { "short_name": "2月", "name_only": "2月", "short_name_only": "2月", "name_in": "2月", "name_uc": "2月", "name": "2月", "to_month_lc": "2月", "short_name_uc": "2月", "name_def_article_lc": "2月", "name_with_year_only": "2月", "genitive_lc": "2月", "name_def_article_uc": "2月", "day_to": "2月", "name_from": "2月", "month_2": "2月", "name_to": "2月", "name_other": "2月", "on_day_month": "2", "genitive_uc": "2月", "name_lc": "2月", "in_month_lc": "2月", "month_1": "2月" }, "3": { "day_to": "3月", "on_day_month": "3", "name_other": "3月", "month_2": "3月", "name_to": "3月", "name_from": "3月", "genitive_uc": "3月", "in_month_lc": "3月", "month_1": "3月", "name_lc": "3月", "short_name": "3月", "to_month_lc": "3月", "short_name_only": "3月", "name_uc": "3月", "name": "3月", "name_in": "3月", "name_only": "3月", "name_with_year_only": "3月", "name_def_article_lc": "3月", "short_name_uc": "3月", "name_def_article_uc": "3月", "genitive_lc": "3月" }, "4": { "genitive_uc": "4月", "month_1": "4月", "in_month_lc": "4月", "name_lc": "4月", "on_day_month": "4", "name_other": "4月", "month_2": "4月", "name_to": "4月", "name_from": "4月", "name_def_article_lc": "4月", "name_with_year_only": "4月", "short_name_uc": "4月", "name_def_article_uc": "4月", "genitive_lc": "4月", "short_name": "4月", "to_month_lc": "4月", "short_name_only": "4月", "name": "4月", "name_uc": "4月", "name_in": "4月", "name_only": "4月" }, "5": { "short_name": "5月", "name_only": "5月", "short_name_only": "5月", "name": "5月", "name_uc": "5月", "name_in": "5月", "to_month_lc": "5月", "short_name_uc": "5月", "name_with_year_only": "5月", "name_def_article_lc": "5月", "genitive_lc": "5月", "name_def_article_uc": "5月", "name_from": "5月", "name_to": "5月", "month_2": "5月", "name_other": "5月", "on_day_month": "5", "genitive_uc": "5月", "name_lc": "5月", "month_1": "5月", "in_month_lc": "5月" }, "6": { "genitive_uc": "6月", "month_1": "6月", "in_month_lc": "6月", "name_lc": "6月", "on_day_month": "6", "name_other": "6月", "name_to": "6月", "month_2": "6月", "name_from": "6月", "name_def_article_lc": "6月", "name_with_year_only": "6月", "short_name_uc": "6月", "name_def_article_uc": "6月", "genitive_lc": "6月", "short_name": "6月", "to_month_lc": "6月", "name_in": "6月", "short_name_only": "6月", "name_uc": "6月", "name": "6月", "name_only": "6月" }, "7": { "short_name_uc": "7月", "name_def_article_lc": "7月", "name_with_year_only": "7月", "name_def_article_uc": "7月", "genitive_lc": "7月", "short_name": "7月", "name_only": "7月", "to_month_lc": "7月", "name_uc": "7月", "short_name_only": "7月", "name_in": "7月", "name": "7月", "genitive_uc": "7月", "name_lc": "7月", "month_1": "7月", "in_month_lc": "7月", "month_2": "7月", "name_to": "7月", "name_from": "7月", "on_day_month": "7", "name_other": "7月" }, "8": { "name_other": "8月", "on_day_month": "8", "name_from": "8月", "name_to": "8月", "month_2": "8月", "genitive_uc": "8月", "month_1": "8月", "in_month_lc": "8月", "name_lc": "8月", "short_name": "8月", "name_in": "8月", "short_name_only": "8月", "name_uc": "8月", "name": "8月", "to_month_lc": "8月", "name_only": "8月", "name_def_article_lc": "8月", "name_with_year_only": "8月", "short_name_uc": "8月", "genitive_lc": "8月", "name_def_article_uc": "8月" }, "9": { "short_name": "9月", "name_only": "9月", "name": "9月", "short_name_only": "9月", "name_uc": "9月", "name_in": "9月", "to_month_lc": "9月", "short_name_uc": "9月", "name_def_article_lc": "9月", "name_with_year_only": "9月", "genitive_lc": "9月", "name_def_article_uc": "9月", "name_from": "9月", "month_2": "9月", "name_to": "9月", "name_other": "9月", "on_day_month": "9", "genitive_uc": "9月", "name_lc": "9月", "month_1": "9月", "in_month_lc": "9月" } },
				b_weekday_formatted_date: { "1": { "name_on": "星期一", "name": "周一", "name_uc": "星期一", "name_from_preposition": "周一", "shortest": "周一", "name_other_uc": "星期一", "name_lc": "星期一", "short": "周一", "short_uc": "周一", "name_to": "星期一", "name_from": "星期一", "name_other": "星期一" }, "2": { "name_from_preposition": "周二", "shortest": "周二", "name_other_uc": "星期二", "name_lc": "星期二", "short": "周二", "short_uc": "周二", "name_to": "星期二", "name_from": "星期二", "name_other": "星期二", "name_on": "星期二", "name_uc": "星期二", "name": "周二" }, "3": { "name_on": "星期三", "name_uc": "星期三", "name": "周三", "shortest": "周三", "name_from_preposition": "周三", "name_lc": "星期三", "name_other_uc": "星期三", "short": "周三", "short_uc": "周三", "name_from": "星期三", "name_to": "星期三", "name_other": "星期三" }, "4": { "name_other": "星期四", "name_from": "星期四", "name_to": "星期四", "short_uc": "周四", "short": "周四", "name_lc": "星期四", "name_other_uc": "星期四", "shortest": "周四", "name_from_preposition": "周四", "name_uc": "星期四", "name": "周四", "name_on": "星期四" }, "5": { "name_other_uc": "星期五", "name_lc": "星期五", "short": "周五", "short_uc": "周五", "name_from_preposition": "周五", "shortest": "周五", "name_to": "星期五", "name_from": "星期五", "name_other": "星期五", "name_on": "星期五", "name_uc": "星期五", "name": "周五" }, "6": { "name_lc": "星期六", "name_other_uc": "星期六", "short": "周六", "short_uc": "周六", "shortest": "周六", "name_from_preposition": "周六", "name_from": "星期六", "name_to": "星期六", "name_other": "星期六", "name_on": "星期六", "name": "周六", "name_uc": "星期六" }, "7": { "shortest": "周日", "name_from_preposition": "周日", "name_lc": "星期日", "name_other_uc": "星期日", "short": "周日", "short_uc": "周日", "name_from": "星期日", "name_to": "星期日", "name_other": "星期日", "name_on": "星期日", "name_uc": "星期日", "name": "周日" }, "8": { "shortest": "shortest", "name_from_preposition": "任意一天", "name_lc": "every day", "name_other_uc": "name_other_uc", "short_uc": "short_uc", "short": "short", "name_from": "name_from", "name_to": "name_to", "name_other": "name_other", "name_on": "name_on", "name_uc": "name_uc", "name": "每日" } },
				b_time_format: { "AM_symbol": { "name": "AM" }, "PM_symbol": { "name": "PM" }, "time": { "name": "{hour_24h_no0}:{minutes}" }, "time_12": { "name": "{hour_24h_no0}:{minutes}" }, "time_24": { "name": "{hour_24h_no0}:{minutes}" } },
				"b_protocol": 'https',
				auth_level: "0",
				b_user_auth_level_is_none: 1,
				b_check_ot_consent: 1,
				bui: {
					color: {
						bui_color_grayscale_dark: "#333333",
						bui_color_grayscale: "#6B6B6B",
						bui_color_grayscale_light: "#BDBDBD",
						bui_color_grayscale_lighter: "#E6E6E6",
						bui_color_grayscale_lightest: "#F5F5F5",
						bui_color_primary_dark: "#00224F",
						bui_color_primary: "#003580",
						bui_color_primary_light: "#BAD4F7",
						bui_color_primary_lighter: "#EBF3FF",
						bui_color_primary_lightest: "#FAFCFF",
						bui_color_complement_dark: "#CD8900",
						bui_color_complement: "#FEBB02",
						bui_color_complement_light: "#FFE08A",
						bui_color_complement_lighter: "#FDF4D8",
						bui_color_complement_lightest: "#FEFBF0",
						bui_color_callout_dark: "#BC5B01",
						bui_color_callout: "#FF8000",
						bui_color_callout_light: "#FFC489",
						bui_color_callout_lighter: "#FFF0E0",
						bui_color_callout_lightest: "#FFF8F0",
						bui_color_destructive_dark: "#A30000",
						bui_color_destructive: "#CC0000",
						bui_color_destructive_light: "#FCB4B4",
						bui_color_destructive_lighter: "#FFEBEB",
						bui_color_destructive_lightest: "#FFF0F0",
						bui_color_constructive_dark: "#006607",
						bui_color_constructive: "#008009",
						bui_color_constructive_light: "#97E59C",
						bui_color_constructive_lighter: "#E7FDE9",
						bui_color_constructive_lightest: "#F1FEF2",
						bui_color_action: "#0071C2",
						bui_color_white: "#FFFFFF",
						bui_color_black: "#000000"
					}
				},
				bb: {
					ibb: "",
					uibb: "",
					ibbta: "",
					itp: "0",
					iuibb: "",
					bme: "0",
					euibb: "",
					tp: "2"
				},
				b_growls_close_fast: 1,
				fe_enable_login_with_phone_number: 1,
				fe_enable_signup_with_phone_number: 1,
				b_hotel_history_count: parseInt('6', 10),
				asyncLoader: {
					async_assistant_entrypoint_css: './script/static/css/assistant_entrypoint_alicloud_a.iq_ltr/611b70b00745fa4412a0101292fb0a1e4c97741e.css',
					async_assistant_entrypoint_js: './script/static/js/assistant_entrypoint_alicloud_a/16a6ac79d0564ea12e63ca1c07de8d75b84bdf91.js',
					async_atlas_places_js: './script/static/js/atlas_places_async_alicloud_a/9a9bcd998016ecc6409aa42c8605f7850a767a34.js',
					async_atlas_v2_cn_js: './script/static/js/async_atlas_v2_cn_alicloud_a/a358d388c8c90d9c0407d3da288742e93c38c2a6.js',
					async_atlas_v2_non_cn_js: './script/static/js/async_atlas_v2_non_cn_alicloud_a/db2ebeae76c7b51a7bc288822baac8ba5a2fba33.js',
					image_gallery_js: './script/static/js/ski_lp_overview_panel_alicloud_a/9d8e7cfd33a37ffb15285d98f6970024f06cf36d.js',
					image_gallery_css: './script/static/css/ski_lp_overview_panel_alicloud_a.iq_ltr/09286ad17357b015e15295d3ef2a7b66987dfecb.css',
					async_lists_js: './script/static/js/async_lists_alicloud_a/07f3a4a47ebd55362a0956eabdd43231659810cb.js',
					async_atlas_css: './script/static/css/async_atlas_hp_alicloud_a.iq_ltr/5a46e83fba8eaff27fd497506742d7a8dfd84b60.css',
					async_hp_atlas_map_js: './script/static/js/async_hp_atlas_map_alicloud_a/d95bdc4f0e52aefb63deb8b11c71da2d1ca1018b.js',
					async_wpm_overlay_css: './script/static/css/async_wpm_overlay_assets_alicloud_a.iq_ltr/abb304bf3600a5cf5f7406a27f042cf1ce2429b1.css',
					async_wpm_overlay_js: './script/static/js/async_wpm_overlay_assets_alicloud_a/c6cb9b63eea61102d4e96fe72b7c8008652fe925.js',
					async_slider_view_js: './script/mobile/js/async_slider_view_alicloud_a/b99d37dd0f12a56f66e827b1f34dbf846a345b1f.js',
					async_slider_view_css: './script/mobile/css/async_slider_view_alicloud_a.iq_ltr/6139b93e39f06ca17bf572c4b68667c465df625d.css',
					async_beach_team_pilot_js: './script/mobile/js/async_beach_team_pilot_alicloud_a/4ad475e13980eaf3a159e590a2c3885e1c6a1723.js',
					async_beach_team_pilot_css: './script/mobile/css/async_beach_team_pilot_alicloud_a.iq_ltr/dbd641da41b1805fdeb39aea4b458cdc241bab53.css',
					async_room_lightbox_js: './script/static/js/async_room_lightbox_alicloud_a/142c284a13adf5014694833c7adc0309a5b1e256.js',
					empty: ''
				},
				b_gallery_slide_onview: 1,
				fe_enable_fps_goal_with_value: 1,
				b_email_validation_regex: /^([\w-\.\+]+@([\w-]+\.)+[\w-]{2,14})?$/,
				b_domain_end: '.booking.com',
				b_original_url: 'https:&#47;&#47;www.booking.com&#47;hotel&#47;cn&#47;holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;dist=0;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&amp;',
				b_this_url: '/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
				b_this_url_without_lang: '/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
				b_switch_language_url: {
					'en-gb': '/hotel/cn/holiday-inn-express-nanjing-dongshan.en-gb.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=en-gb;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'en-us': '/hotel/cn/holiday-inn-express-nanjing-dongshan.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=en-us;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'de': '/hotel/cn/holiday-inn-express-nanjing-dongshan.de.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=de;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'nl': '/hotel/cn/holiday-inn-express-nanjing-dongshan.nl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=nl;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'fr': '/hotel/cn/holiday-inn-express-nanjing-dongshan.fr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=fr;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'es': '/hotel/cn/holiday-inn-express-nanjing-dongshan.es.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=es;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'es-ar': '/hotel/cn/holiday-inn-express-nanjing-dongshan.es-ar.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=es-ar;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'es-mx': '/hotel/cn/holiday-inn-express-nanjing-dongshan.es-mx.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=es-mx;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ca': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ca.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ca;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'it': '/hotel/cn/holiday-inn-express-nanjing-dongshan.it.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=it;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'pt-pt': '/hotel/cn/holiday-inn-express-nanjing-dongshan.pt-pt.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=pt-pt;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'pt-br': '/hotel/cn/holiday-inn-express-nanjing-dongshan.pt-br.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=pt-br;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'no': '/hotel/cn/holiday-inn-express-nanjing-dongshan.no.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=no;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'fi': '/hotel/cn/holiday-inn-express-nanjing-dongshan.fi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=fi;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'sv': '/hotel/cn/holiday-inn-express-nanjing-dongshan.sv.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=sv;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'da': '/hotel/cn/holiday-inn-express-nanjing-dongshan.da.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=da;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'cs': '/hotel/cn/holiday-inn-express-nanjing-dongshan.cs.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=cs;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'hu': '/hotel/cn/holiday-inn-express-nanjing-dongshan.hu.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=hu;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ro': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ro.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ro;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ja': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ja.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ja;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'zh-cn': '/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=zh-cn;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'zh-tw': '/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-tw.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=zh-tw;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'pl': '/hotel/cn/holiday-inn-express-nanjing-dongshan.pl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=pl;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'el': '/hotel/cn/holiday-inn-express-nanjing-dongshan.el.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=el;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ru': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ru.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ru;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'tr': '/hotel/cn/holiday-inn-express-nanjing-dongshan.tr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=tr;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'bg': '/hotel/cn/holiday-inn-express-nanjing-dongshan.bg.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=bg;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ar': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ar.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ar;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ko': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ko.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ko;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'he': '/hotel/cn/holiday-inn-express-nanjing-dongshan.he.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=he;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'lv': '/hotel/cn/holiday-inn-express-nanjing-dongshan.lv.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=lv;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'uk': '/hotel/cn/holiday-inn-express-nanjing-dongshan.uk.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=uk;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'hi': '/hotel/cn/holiday-inn-express-nanjing-dongshan.hi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=hi;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'id': '/hotel/cn/holiday-inn-express-nanjing-dongshan.id.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=id;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'ms': '/hotel/cn/holiday-inn-express-nanjing-dongshan.ms.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=ms;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'th': '/hotel/cn/holiday-inn-express-nanjing-dongshan.th.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=th;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'et': '/hotel/cn/holiday-inn-express-nanjing-dongshan.et.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=et;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'hr': '/hotel/cn/holiday-inn-express-nanjing-dongshan.hr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=hr;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'lt': '/hotel/cn/holiday-inn-express-nanjing-dongshan.lt.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=lt;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'sk': '/hotel/cn/holiday-inn-express-nanjing-dongshan.sk.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=sk;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'sr': '/hotel/cn/holiday-inn-express-nanjing-dongshan.sr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=sr;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'sl': '/hotel/cn/holiday-inn-express-nanjing-dongshan.sl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=sl;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'vi': '/hotel/cn/holiday-inn-express-nanjing-dongshan.vi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=vi;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'tl': '/hotel/cn/holiday-inn-express-nanjing-dongshan.tl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=tl;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
					'is': '/hotel/cn/holiday-inn-express-nanjing-dongshan.is.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;lang=is;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;soz=1;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&'
				},
				b_referrer: 'https:&#47;&#47;www.booking.com&#47;searchresults.zh-cn.html?ss=%E4%B8%AD%E5%9B%BD&amp;ssne=%E4%B8%AD%E5%9B%BD&amp;ssne_untouched=%E4%B8%AD%E5%9B%BD&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&amp;aid=397645&amp;lang=zh-cn&amp;sb=1&amp;src_elem=sb&amp;src=index&amp;dest_id=44&amp;dest_type=country&amp;checkin=2023-06-02&amp;checkout=2023-06-03&amp;group_adults=1&amp;no_rooms=1&amp;group_children=0&amp;sb_travel_purpose=leisure',
				b_acc_type: '204',
				b_req_login: '',
				jst: { 'loading': true },
				b_timestamp: 1683712005,
				scripts_tracking: {
					atlas: { loaded: false, run: false },
					atlas_cst: { loaded: false, run: false },
					bhc: { loaded: false, run: false },
					calendar2: { loaded: false, run: false },
					hotel: { loaded: false, run: false },
					jquery: { loaded: false, run: false },
					main: { loaded: false, run: false }
				},
				enable_scripts_tracking: 1,
				b_ufi: '-1919548',
				"setvar_affiliate_is_bookings2": 1,
				transl_close_x: '关闭',
				transl_checkin_title: '入住日期',
				transl_checkout_title: '退房日期',
				browser_lang: 'zh-cn',
				b_lang_is_cjk: true,
				b_hijri_calendar_available: false,
				b_aid: '397645',
				b_label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB',
				b_sid: 'f0f82b20b46106bf73b9641ed765ee02',
				b_dest_id: '44',
				ip_country: 'cn',
				country_currency: 'CNY',
				b_selected_currency: 'CNY',
				b_selected_currency_is_hotel_currency: "",
				b_selected_language: 'zh-cn',
				b_selected_language_country_flag: 'cn',
				pageview_id: '6f8444c2694701b4',
				aid: '397645',
				b_csrf_token: 'RKBbZAAAAAA=SasT5wnveQ4jpno41g2Ygi-qJt-lVegFzaY60LyUfIYvzDKarLJPZpZi87QgMs0V0VAx79qiX0o059nIxBwA6YoyxF0BNZDN5pkbFiGB7uXIx_-WtUr45HmXnxaZZ3KFJOEIba5-6nNi5HMQRl8suQQxXO0zo0qlTfAXNUZpJnVCNBVT4hmxZ6pN-uVr9-83bvvn3cm8VyKPS1-o',
				b_show_user_accounts_features: 1,
				b_browser: 'chrome',
				b_browser_version: '112',
				et_debug_level: '0',
				icons: '/static/img',
				b_static_images: './script/images/',
				b_currency_url: '/general.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&&amp;tmpl=currency_foldout&amp;cur_currency=CNY&amp;cc1=cn',
				b_currency_change_base_url: '/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0&checkin=2023-06-02&checkout=2023-06-03&dest_id=44&dest_type=country&group_adults=1&group_children=0&hapos=1&highlighted_blocks=468542806_246088447_2_1_0&hpos=1&matching_block_id=468542806_246088447_2_1_0&no_rooms=1&req_adults=1&req_children=0&room1=A&sb_price_type=total&sr_order=popularity&sr_pri_blocks=468542806_246088447_2_1_0__32500&srepoch=1683711772&srpvid=57ba444d8f80007e&type=total&ucfs=1',
				b_languages_url: '/general.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&&amp;tmpl=language_foldout',
				b_weekdays: [
					{
						"b_is_weekend": parseInt(''),
						"b_number": parseInt('1'),
						"name": '星期一',
						"short": '周一',
						"shorter": '周一',
						"shortest": '周一'
					},
					{
						"b_is_weekend": parseInt(''),
						"b_number": parseInt('2'),
						"name": '星期二',
						"short": '周二',
						"shorter": '周二',
						"shortest": '周二'
					},
					{
						"b_is_weekend": parseInt(''),
						"b_number": parseInt('3'),
						"name": '星期三',
						"short": '周三',
						"shorter": '周三',
						"shortest": '周三'
					},
					{
						"b_is_weekend": parseInt(''),
						"b_number": parseInt('4'),
						"name": '星期四',
						"short": '周四',
						"shorter": '周四',
						"shortest": '周四'
					},
					{
						"b_is_weekend": parseInt(''),
						"b_number": parseInt('5'),
						"name": '星期五',
						"short": '周五',
						"shorter": '周五',
						"shortest": '周五'
					},
					{
						"b_is_weekend": parseInt('1'),
						"b_number": parseInt('6'),
						"name": '星期六',
						"short": '周六',
						"shorter": '周六',
						"shortest": '周六'
					},
					{
						"b_is_weekend": parseInt('1'),
						"b_number": parseInt('7'),
						"name": '星期日',
						"short": '周日',
						"shorter": '周日',
						"shortest": '周日'
					},
					{}],
				b_group: [
					{
						"guests": 1,
						"children": 0,
						"ages": [],
					}
				],
				b_group_rooms_wanted: 1,
				b_simple_weekdays: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
				b_simple_weekdays_for_js: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
				b_long_weekdays: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'],
				b_short_months: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
				b_short_months_abbr: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
				b_year_months: {
					'2023-5': { 'name': '2023年5月' },
					'2023-6': { 'name': '2023年6月' },
					'2023-7': { 'name': '2023年7月' },
					'2023-8': { 'name': '2023年8月' },
					'2023-9': { 'name': '2023年9月' },
					'2023-10': { 'name': '2023年10月' },
					'2023-11': { 'name': '2023年11月' },
					'2023-12': { 'name': '2023年12月' },
					'2024-1': { 'name': '2024年1月' },
					'2024-2': { 'name': '2024年2月' },
					'2024-3': { 'name': '2024年3月' },
					'2024-4': { 'name': '2024年4月' },
					'2024-5': { 'name': '2024年5月' },
					'2024-6': { 'name': '2024年6月' },
					'2024-7': { 'name': '2024年7月' },
					'2024-8': { 'name': '2024年8月' }
				},
				b_user_auth_level_is_none: 1,
				b_is_app: 1,
				first_page_of_results: true,
				b_partner_id: '488148',
				b_is_destination_finder_supported: 0,
				b_is_dsf: 0,
				b_pr_param: '',
				/*
				*/
				hotelAction: {
					showReviews: parseInt("8", 10),
					minReviews: parseInt("1", 10),
					hotelName: "holiday-inn-express-nanjing-dongshan",
					pageLang: "zh-cn",
					hotelCountry: "cn"
					, has_business_reviews: true
				},
				feature_profile_split_sb_checkbox: 1,
				inandaround_more: "更多",
				b_signup_iframe_url: 'https://secure.booking.com' + '/login.html?tmpl=profile/signup_after_subscribe' + '&lang=zh-cn',
				b_exclude_lang_firstname: 0,
				user_has_dates: 1,
				view_prices_enter_dates: '请输入日期以查看房价和空房情况。',
				autocomplete_categories: {
					city: '城市',
					region: '区域',
					airport: '机场',
					hotel: '酒店',
					landmark: '地标',
					country: '国家',
					district: '地区',
					theme: '主题'
				},
				autocomplete_skip_suggestions: '搜索更多选项',
				autocomplete_counter_label: '附近的酒店',
				autocomplete: {
					property_nearby: '家附近的酒店',
					properties_nearby: '家附近的酒店',
					hotel: '住宿',
					hotels: '住宿',
					hotels_nearby: '附近的酒店'
				},
				lists: {
					collection: [
						{
							id: "0",
							name: "我的下次出行",
							hotels_count: "0"
						}
					]
				},
				touch_os: false,
				calendar_days_allowed_number: 356,
				b_search_max_months: 16,
				b_run_ge_new_newsletter_login: 1,
				b_password_strength_msg: ['长度不够', '弱', '一般', '良好', '强', '很强'],
				b_passwd_min_length_error: '密码至少需要8个字符',
				b_password_must_be_numeric: '预订密码应为4位数字，请重新输入。',
				b_bkng_nr_must_be_numeric: '预订编号应为9位数字，请重新输入。',
				b_blank_numeric_pin: '请输入您的预订密码。',
				b_blank_bkng_nr: '请输入您的预订编号。',
				password_cant_be_username: '您的密码不能与邮箱地址相同',
				b_show_passwd: '查看密码',
				b_passwd_tooltip: '请以大写字母、特别字符和数字设定密码以增强密码安全性',
				account_error_add_password: '请添加密码',
				password_needs_8: '密码至少需要8个字符',
				error_sign_up_password_email_combo_01: '请检查您的电子邮件地址或密码并重新尝试。',
				social_plugins_footer: 1,
				b_lazy_load_print_css: 1,
				print_css_href: './script/static/css/print/0cc4ce4b7108d42a9f293fc9b654f749d84ba4eb.css',
				'component/dropdown-onload-shower/header_signin_prompt': {
					b_action: "hotel"
				},
				b_hostname_signup: "www.booking.com",
				b_nonsecure_hostname: "./script",
				b_nonsecure_hostname_signup: "./script",
				b_fd_searchresults_url_signup: "",
				translation_customer_service_which_booking_no_specific: '不针对某项预订',
				stored_past_and_upcoming_bookings: [
				],
				global_translation_tags: { "lrm": "\u200e", "zwsp": "\u200b", "one_dot_leader": "\u2024", "line_break": "\u003cbr\u003e", "rlm": "\u200f", "nbsp": "&nbsp;" },
				b_hotel_id: '4685428',
				b_hotel_name: '南京东山智选假日酒店',
				b_hotel_image_url_square60: './script/xdata/images/hotel/square60/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1',
				allRoomPhotos: [
					{
						id: '230588940',
						thumb_url: './script/images/hotel/max200/230/230588940.jpg',
						large_url: './script/images/hotel/max1024x768/230/230588940.jpg'
						, associated_rooms: [
							'468542801'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:16:16'
						, grid: {
							photo_width: 5736,
							photo_height: 3226,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335731',
						thumb_url: './script/images/hotel/max200/230/230335731.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335731.jpg'
						, associated_rooms: [
							'468542801'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:42'
						, grid: {
							photo_width: 4714,
							photo_height: 3122,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230332877',
						thumb_url: './script/images/hotel/max200/230/230332877.jpg',
						large_url: './script/images/hotel/max1024x768/230/230332877.jpg'
						, associated_rooms: [
							'468542802'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:00:35'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335731',
						thumb_url: './script/images/hotel/max200/230/230335731.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335731.jpg'
						, associated_rooms: [
							'468542802'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:42'
						, grid: {
							photo_width: 4714,
							photo_height: 3122,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230590363',
						thumb_url: './script/images/hotel/max200/230/230590363.jpg',
						large_url: './script/images/hotel/max1024x768/230/230590363.jpg'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:24:26'
						, grid: {
							photo_width: 4612,
							photo_height: 3055,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230333191',
						thumb_url: './script/images/hotel/max200/230/230333191.jpg',
						large_url: './script/images/hotel/max1024x768/230/230333191.jpg'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:01:10'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230588940',
						thumb_url: './script/images/hotel/max200/230/230588940.jpg',
						large_url: './script/images/hotel/max1024x768/230/230588940.jpg'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:16:16'
						, grid: {
							photo_width: 5736,
							photo_height: 3226,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335731',
						thumb_url: './script/images/hotel/max200/230/230335731.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335731.jpg'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:42'
						, grid: {
							photo_width: 4714,
							photo_height: 3122,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589806',
						thumb_url: './script/images/hotel/max200/230/230589806.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589806.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:21:58'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230332327',
						thumb_url: './script/images/hotel/max200/230/230332327.jpg',
						large_url: './script/images/hotel/max1024x768/230/230332327.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 20:59:27'
						, grid: {
							photo_width: 6600,
							photo_height: 3713,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230332877',
						thumb_url: './script/images/hotel/max200/230/230332877.jpg',
						large_url: './script/images/hotel/max1024x768/230/230332877.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:00:35'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335290',
						thumb_url: './script/images/hotel/max200/230/230335290.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335290.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:51'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589308',
						thumb_url: './script/images/hotel/max200/230/230589308.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589308.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:50'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230591927',
						thumb_url: './script/images/hotel/max200/230/230591927.jpg',
						large_url: './script/images/hotel/max1024x768/230/230591927.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:33:47'
						, grid: {
							photo_width: 4753,
							photo_height: 3148,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589222',
						thumb_url: './script/images/hotel/max200/230/230589222.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589222.jpg'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:25'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230332327',
						thumb_url: './script/images/hotel/max200/230/230332327.jpg',
						large_url: './script/images/hotel/max1024x768/230/230332327.jpg'
						, associated_rooms: [
							'468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 20:59:27'
						, grid: {
							photo_width: 6600,
							photo_height: 3713,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335290',
						thumb_url: './script/images/hotel/max200/230/230335290.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335290.jpg'
						, associated_rooms: [
							'468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:51'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589308',
						thumb_url: './script/images/hotel/max200/230/230589308.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589308.jpg'
						, associated_rooms: [
							'468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:50'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230591927',
						thumb_url: './script/images/hotel/max200/230/230591927.jpg',
						large_url: './script/images/hotel/max1024x768/230/230591927.jpg'
						, associated_rooms: [
							'468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:33:47'
						, grid: {
							photo_width: 4753,
							photo_height: 3148,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589222',
						thumb_url: './script/images/hotel/max200/230/230589222.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589222.jpg'
						, associated_rooms: [
							'468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:25'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230333400',
						thumb_url: './script/images/hotel/max200/230/230333400.jpg',
						large_url: './script/images/hotel/max1024x768/230/230333400.jpg'
						, associated_rooms: [
							'468542806'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:01:35'
						, grid: {
							photo_width: 3840,
							photo_height: 3447,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230333473',
						thumb_url: './script/images/hotel/max200/230/230333473.jpg',
						large_url: './script/images/hotel/max1024x768/230/230333473.jpg'
						, associated_rooms: [
							'468542806'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:01:43'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230333757',
						thumb_url: './script/images/hotel/max200/230/230333757.jpg',
						large_url: './script/images/hotel/max1024x768/230/230333757.jpg'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:02:18'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '326362513',
						thumb_url: './script/images/hotel/max200/326/326362513.jpg',
						large_url: './script/images/hotel/max1024x768/326/326362513.jpg'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, created: '2021-11-04 20:00:16'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589730',
						thumb_url: './script/images/hotel/max200/230/230589730.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589730.jpg'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:21:31'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230333400',
						thumb_url: './script/images/hotel/max200/230/230333400.jpg',
						large_url: './script/images/hotel/max1024x768/230/230333400.jpg'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:01:35'
						, grid: {
							photo_width: 3840,
							photo_height: 3447,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335709',
						thumb_url: './script/images/hotel/max200/230/230335709.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335709.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:40'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589417',
						thumb_url: './script/images/hotel/max200/230/230589417.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589417.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:19:40'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230589258',
						thumb_url: './script/images/hotel/max200/230/230589258.jpg',
						large_url: './script/images/hotel/max1024x768/230/230589258.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:36'
						, grid: {
							photo_width: 6472,
							photo_height: 3641,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230334861',
						thumb_url: './script/images/hotel/max200/230/230334861.jpg',
						large_url: './script/images/hotel/max1024x768/230/230334861.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:07'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230335215',
						thumb_url: './script/images/hotel/max200/230/230335215.jpg',
						large_url: './script/images/hotel/max1024x768/230/230335215.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:42'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
					{
						id: '230334946',
						thumb_url: './script/images/hotel/max200/230/230334946.jpg',
						large_url: './script/images/hotel/max1024x768/230/230334946.jpg'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:14'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					},
				],
				hotelPhotos: [
					{
						id: '230593664',
						thumb_url: './script/xdata/images/hotel/max200/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:44:36'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589553',
						thumb_url: './script/xdata/images/hotel/max200/230589553.jpg?k=1eda38f4fdd4c7bc74f858122b423d9b6c2fffbb6f81bd6153da128e07d85ef2&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589553.jpg?k=1eda38f4fdd4c7bc74f858122b423d9b6c2fffbb6f81bd6153da128e07d85ef2&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589553.jpg?k=1eda38f4fdd4c7bc74f858122b423d9b6c2fffbb6f81bd6153da128e07d85ef2&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:20:28'
						, grid: {
							photo_width: 6556,
							photo_height: 3687,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230590363',
						thumb_url: './script/xdata/images/hotel/max200/230590363.jpg?k=0b4ae0ab64094559ff39215f839064f50a387235ec3b3587819d8b1315c8ef85&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230590363.jpg?k=0b4ae0ab64094559ff39215f839064f50a387235ec3b3587819d8b1315c8ef85&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230590363.jpg?k=0b4ae0ab64094559ff39215f839064f50a387235ec3b3587819d8b1315c8ef85&o=&hp=1'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542803"
						, created: '2019-11-29 10:24:26'
						, grid: {
							photo_width: 4612,
							photo_height: 3055,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230592608',
						thumb_url: './script/xdata/images/hotel/max200/230592608.jpg?k=184d7a609624feb6f9744a44270ec336e86c87d6af9adaac59a67f16402b67a0&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230592608.jpg?k=184d7a609624feb6f9744a44270ec336e86c87d6af9adaac59a67f16402b67a0&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230592608.jpg?k=184d7a609624feb6f9744a44270ec336e86c87d6af9adaac59a67f16402b67a0&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:39:04'
						, grid: {
							photo_width: 6648,
							photo_height: 3740,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230588914',
						thumb_url: './script/xdata/images/hotel/max200/230588914.jpg?k=424f44f9a1f8af4bf01d0e64d1f209f5fd946a72b1e2b4058f4442a7fbd030d4&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230588914.jpg?k=424f44f9a1f8af4bf01d0e64d1f209f5fd946a72b1e2b4058f4442a7fbd030d4&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230588914.jpg?k=424f44f9a1f8af4bf01d0e64d1f209f5fd946a72b1e2b4058f4442a7fbd030d4&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:15:53'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230334860',
						thumb_url: './script/xdata/images/hotel/max200/230334860.jpg?k=aedad650a0b9046b4821e591980a35a39057307570f4ff25128d196021397658&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230334860.jpg?k=aedad650a0b9046b4821e591980a35a39057307570f4ff25128d196021397658&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230334860.jpg?k=aedad650a0b9046b4821e591980a35a39057307570f4ff25128d196021397658&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:07'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230588310',
						thumb_url: './script/xdata/images/hotel/max200/230588310.jpg?k=3a8474e19e7818e65687d5244830f873a04dd2da06fdeeadb219d76ff88da33b&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230588310.jpg?k=3a8474e19e7818e65687d5244830f873a04dd2da06fdeeadb219d76ff88da33b&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230588310.jpg?k=3a8474e19e7818e65687d5244830f873a04dd2da06fdeeadb219d76ff88da33b&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:11:02'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589383',
						thumb_url: './script/xdata/images/hotel/max200/230589383.jpg?k=64c9cc0864160bb8fe9c37977304e7984e3932daf6aff2ea9f68acdc63c5a8c9&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589383.jpg?k=64c9cc0864160bb8fe9c37977304e7984e3932daf6aff2ea9f68acdc63c5a8c9&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589383.jpg?k=64c9cc0864160bb8fe9c37977304e7984e3932daf6aff2ea9f68acdc63c5a8c9&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:19:24'
						, grid: {
							photo_width: 3840,
							photo_height: 3637,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589556',
						thumb_url: './script/xdata/images/hotel/max200/230589556.jpg?k=e202d02577c68348c4175f9a818067524023633192e45c0b149b98da0b134b20&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589556.jpg?k=e202d02577c68348c4175f9a818067524023633192e45c0b149b98da0b134b20&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589556.jpg?k=e202d02577c68348c4175f9a818067524023633192e45c0b149b98da0b134b20&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:20:28'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230588796',
						thumb_url: './script/xdata/images/hotel/max200/230588796.jpg?k=8be724f388cfaa660426592f711c64ca3443c41e0614262b9434f576c10fb2fe&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230588796.jpg?k=8be724f388cfaa660426592f711c64ca3443c41e0614262b9434f576c10fb2fe&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230588796.jpg?k=8be724f388cfaa660426592f711c64ca3443c41e0614262b9434f576c10fb2fe&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:14:46'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230335680',
						thumb_url: './script/xdata/images/hotel/max200/230335680.jpg?k=fbb041425ab1928cfaf7077b38c3726486d70fc9ea21f923674ab43abd8bcfbb&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230335680.jpg?k=fbb041425ab1928cfaf7077b38c3726486d70fc9ea21f923674ab43abd8bcfbb&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230335680.jpg?k=fbb041425ab1928cfaf7077b38c3726486d70fc9ea21f923674ab43abd8bcfbb&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:37'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332586',
						thumb_url: './script/xdata/images/hotel/max200/230332586.jpg?k=36be77f53942e3b4d22d32cf10d604b1ca75303d00c2fefc5b7c47d5decc4d24&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332586.jpg?k=36be77f53942e3b4d22d32cf10d604b1ca75303d00c2fefc5b7c47d5decc4d24&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332586.jpg?k=36be77f53942e3b4d22d32cf10d604b1ca75303d00c2fefc5b7c47d5decc4d24&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 20:59:57'
						, grid: {
							photo_width: 6688,
							photo_height: 3762,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230335221',
						thumb_url: './script/xdata/images/hotel/max200/230335221.jpg?k=54a416b876d75099007c938eb68183d561e8521de213000593e8b27ab303da27&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230335221.jpg?k=54a416b876d75099007c938eb68183d561e8521de213000593e8b27ab303da27&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230335221.jpg?k=54a416b876d75099007c938eb68183d561e8521de213000593e8b27ab303da27&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:42'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230334955',
						thumb_url: './script/xdata/images/hotel/max200/230334955.jpg?k=72db7f2d9459f10fc0f85bd2e0780bef07fb2d062230f6acef95624a00027952&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230334955.jpg?k=72db7f2d9459f10fc0f85bd2e0780bef07fb2d062230f6acef95624a00027952&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230334955.jpg?k=72db7f2d9459f10fc0f85bd2e0780bef07fb2d062230f6acef95624a00027952&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:15'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332831',
						thumb_url: './script/xdata/images/hotel/max200/230332831.jpg?k=76438811cd49b7e9d129577bc292f28e6502816ca05dbec27bcc757e3e77a927&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332831.jpg?k=76438811cd49b7e9d129577bc292f28e6502816ca05dbec27bcc757e3e77a927&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332831.jpg?k=76438811cd49b7e9d129577bc292f28e6502816ca05dbec27bcc757e3e77a927&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:00:28'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589500',
						thumb_url: './script/xdata/images/hotel/max200/230589500.jpg?k=9f206884aa864492127e525f5139fed7a1966f334cf241d2c48a1d93cc36c508&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589500.jpg?k=9f206884aa864492127e525f5139fed7a1966f334cf241d2c48a1d93cc36c508&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589500.jpg?k=9f206884aa864492127e525f5139fed7a1966f334cf241d2c48a1d93cc36c508&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:20:13'
						, grid: {
							photo_width: 6400,
							photo_height: 3600,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230590464',
						thumb_url: './script/xdata/images/hotel/max200/230590464.jpg?k=54755dffa2eac8204f58d48321ea85106cba39a3a01042a0ae1a3a4ac3b1c39a&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230590464.jpg?k=54755dffa2eac8204f58d48321ea85106cba39a3a01042a0ae1a3a4ac3b1c39a&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230590464.jpg?k=54755dffa2eac8204f58d48321ea85106cba39a3a01042a0ae1a3a4ac3b1c39a&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:24:58'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230331976',
						thumb_url: './script/xdata/images/hotel/max200/230331976.jpg?k=048234fb053d60c11e61b3189e6257bd2aec4b629989bd089aba624d9e3a38e3&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230331976.jpg?k=048234fb053d60c11e61b3189e6257bd2aec4b629989bd089aba624d9e3a38e3&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230331976.jpg?k=048234fb053d60c11e61b3189e6257bd2aec4b629989bd089aba624d9e3a38e3&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 20:58:47'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230333536',
						thumb_url: './script/xdata/images/hotel/max200/230333536.jpg?k=11d1998c800392b89d8598280242d08ae72f6b515ce75175fd3461869943b7d3&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230333536.jpg?k=11d1998c800392b89d8598280242d08ae72f6b515ce75175fd3461869943b7d3&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230333536.jpg?k=11d1998c800392b89d8598280242d08ae72f6b515ce75175fd3461869943b7d3&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:01:51'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230592612',
						thumb_url: './script/xdata/images/hotel/max200/230592612.jpg?k=8ca4375134c4475b5b5942eb610e65284fefb8492f470df805356a7089826f8b&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230592612.jpg?k=8ca4375134c4475b5b5942eb610e65284fefb8492f470df805356a7089826f8b&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230592612.jpg?k=8ca4375134c4475b5b5942eb610e65284fefb8492f470df805356a7089826f8b&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:39:05'
						, grid: {
							photo_width: 6648,
							photo_height: 3740,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230590151',
						thumb_url: './script/xdata/images/hotel/max200/230590151.jpg?k=f445539164e9457a562868ec256d7079a628fa89ba91a9fdf484db9d39bb2df1&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230590151.jpg?k=f445539164e9457a562868ec256d7079a628fa89ba91a9fdf484db9d39bb2df1&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230590151.jpg?k=f445539164e9457a562868ec256d7079a628fa89ba91a9fdf484db9d39bb2df1&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:23:44'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230592505',
						thumb_url: './script/xdata/images/hotel/max200/230592505.jpg?k=7c1291db90b912ba9b14616de97c5be7ea9fafcb59f9cee9c60d642d5c8b99f1&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230592505.jpg?k=7c1291db90b912ba9b14616de97c5be7ea9fafcb59f9cee9c60d642d5c8b99f1&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230592505.jpg?k=7c1291db90b912ba9b14616de97c5be7ea9fafcb59f9cee9c60d642d5c8b99f1&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:38:29'
						, grid: {
							photo_width: 5384,
							photo_height: 3030,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332620',
						thumb_url: './script/xdata/images/hotel/max200/230332620.jpg?k=87c7725ae0e9eb327d8a46dbb41b10bc07bce2dfb39dde6fc266bbdf2a714bf7&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332620.jpg?k=87c7725ae0e9eb327d8a46dbb41b10bc07bce2dfb39dde6fc266bbdf2a714bf7&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332620.jpg?k=87c7725ae0e9eb327d8a46dbb41b10bc07bce2dfb39dde6fc266bbdf2a714bf7&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 21:00:01'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230590657',
						thumb_url: './script/xdata/images/hotel/max200/230590657.jpg?k=609f7eb9ccf8e729e69024133983d579209275f1fd0ff7f152f94a5240e43784&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230590657.jpg?k=609f7eb9ccf8e729e69024133983d579209275f1fd0ff7f152f94a5240e43784&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230590657.jpg?k=609f7eb9ccf8e729e69024133983d579209275f1fd0ff7f152f94a5240e43784&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:25:46'
						, grid: {
							photo_width: 4728,
							photo_height: 3107,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '288879942',
						thumb_url: './script/xdata/images/hotel/max200/288879942.jpg?k=ecc8d8a4e738a7779f5d32ef9bb998d3ac781d3b039fade61fa1eb474435d5c8&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/288879942.jpg?k=ecc8d8a4e738a7779f5d32ef9bb998d3ac781d3b039fade61fa1eb474435d5c8&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/288879942.jpg?k=ecc8d8a4e738a7779f5d32ef9bb998d3ac781d3b039fade61fa1eb474435d5c8&o=&hp=1'
						, orientation: 'landscape'
						, created: '2021-03-03 23:02:14'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '288879940',
						thumb_url: './script/xdata/images/hotel/max200/288879940.jpg?k=48785de45437f38920acad43be8bb5bc16a2e047ee0439f8aadcde538a811795&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/288879940.jpg?k=48785de45437f38920acad43be8bb5bc16a2e047ee0439f8aadcde538a811795&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/288879940.jpg?k=48785de45437f38920acad43be8bb5bc16a2e047ee0439f8aadcde538a811795&o=&hp=1'
						, orientation: 'landscape'
						, created: '2021-03-03 23:02:14'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '288879943',
						thumb_url: './script/xdata/images/hotel/max200/288879943.jpg?k=02a1ec949f227fe9d7846051a47fbbb76425ef803d5ebbb58d2cbf2d1dc06872&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/288879943.jpg?k=02a1ec949f227fe9d7846051a47fbbb76425ef803d5ebbb58d2cbf2d1dc06872&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/288879943.jpg?k=02a1ec949f227fe9d7846051a47fbbb76425ef803d5ebbb58d2cbf2d1dc06872&o=&hp=1'
						, orientation: 'landscape'
						, created: '2021-03-03 23:02:14'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '288879941',
						thumb_url: './script/xdata/images/hotel/max200/288879941.jpg?k=e2e61b3c6730baa58dca118116fc539ab87535c0c6666d71b36c5db2729b400a&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/288879941.jpg?k=e2e61b3c6730baa58dca118116fc539ab87535c0c6666d71b36c5db2729b400a&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/288879941.jpg?k=e2e61b3c6730baa58dca118116fc539ab87535c0c6666d71b36c5db2729b400a&o=&hp=1'
						, orientation: 'landscape'
						, created: '2021-03-03 23:02:14'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230588944',
						thumb_url: './script/xdata/images/hotel/max200/230588944.jpg?k=97bf8f362e5ea4b97ef79abd97105278a721c2b63ac045911af071827e492091&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230588944.jpg?k=97bf8f362e5ea4b97ef79abd97105278a721c2b63ac045911af071827e492091&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230588944.jpg?k=97bf8f362e5ea4b97ef79abd97105278a721c2b63ac045911af071827e492091&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-29 10:16:18'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332375',
						thumb_url: './script/xdata/images/hotel/max200/230332375.jpg?k=2a3d2257eabcdd44c5ec6437889084d297618d349dd9d7e7e60ef0d08b37053c&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332375.jpg?k=2a3d2257eabcdd44c5ec6437889084d297618d349dd9d7e7e60ef0d08b37053c&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332375.jpg?k=2a3d2257eabcdd44c5ec6437889084d297618d349dd9d7e7e60ef0d08b37053c&o=&hp=1'
						, orientation: 'landscape'
						, created: '2019-11-27 20:59:32'
						, grid: {
							photo_width: 3840,
							photo_height: 3274,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230333757',
						thumb_url: './script/xdata/images/hotel/max200/230333757.jpg?k=e195c57e8c7de6a92ad2d7a42fbddfc6fc2b0ad62f07dd8ed0669fd2106579b4&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230333757.jpg?k=e195c57e8c7de6a92ad2d7a42fbddfc6fc2b0ad62f07dd8ed0669fd2106579b4&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230333757.jpg?k=e195c57e8c7de6a92ad2d7a42fbddfc6fc2b0ad62f07dd8ed0669fd2106579b4&o=&hp=1'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, name: "\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542807"
						, created: '2019-11-27 21:02:18'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589806',
						thumb_url: './script/xdata/images/hotel/max200/230589806.jpg?k=3582796536a8d3379f7569ebbf4e99068a19e7c6eec4b93e21892c3f79e0393c&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589806.jpg?k=3582796536a8d3379f7569ebbf4e99068a19e7c6eec4b93e21892c3f79e0393c&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589806.jpg?k=3582796536a8d3379f7569ebbf4e99068a19e7c6eec4b93e21892c3f79e0393c&o=&hp=1'
						, associated_rooms: [
							'468542804'
						]
						, orientation: 'landscape'
						, name: "\u9ad8\u7ea7\u5927\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u9ad8\u7ea7\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542804"
						, created: '2019-11-29 10:21:58'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u9ad8\u7ea7\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332327',
						thumb_url: './script/xdata/images/hotel/max200/230332327.jpg?k=56a2ffdbfcd67b4a5f63b3684e9cc1940213c3962ed9c99a59f4b1f9fdc4db17&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332327.jpg?k=56a2ffdbfcd67b4a5f63b3684e9cc1940213c3962ed9c99a59f4b1f9fdc4db17&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332327.jpg?k=56a2ffdbfcd67b4a5f63b3684e9cc1940213c3962ed9c99a59f4b1f9fdc4db17&o=&hp=1'
						, associated_rooms: [
							'468542804'
							, '468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 20:59:27'
						, grid: {
							photo_width: 6600,
							photo_height: 3713,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230335709',
						thumb_url: './script/xdata/images/hotel/max200/230335709.jpg?k=c63b12e86275d2f7b16fd7d761d50bb902b1773210f7e1db76e4c3a0f494558d&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230335709.jpg?k=c63b12e86275d2f7b16fd7d761d50bb902b1773210f7e1db76e4c3a0f494558d&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230335709.jpg?k=c63b12e86275d2f7b16fd7d761d50bb902b1773210f7e1db76e4c3a0f494558d&o=&hp=1'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u65e0\u70df\u5957\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/span\u003e\n"
						, room_id: "468542808"
						, created: '2019-11-27 21:05:40'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230332877',
						thumb_url: './script/xdata/images/hotel/max200/230332877.jpg?k=7b2684e03e94ca68d8feaceba77fb0074ad943c0eb3736527cf40832b9b79b6d&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230332877.jpg?k=7b2684e03e94ca68d8feaceba77fb0074ad943c0eb3736527cf40832b9b79b6d&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230332877.jpg?k=7b2684e03e94ca68d8feaceba77fb0074ad943c0eb3736527cf40832b9b79b6d&o=&hp=1'
						, associated_rooms: [
							'468542802'
							, '468542804'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:00:35'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230333191',
						thumb_url: './script/xdata/images/hotel/max200/230333191.jpg?k=23ddbc16f718879b49a7061ca54c1ecb6502b2063e91f6864c8c7be8ec0c0e90&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230333191.jpg?k=23ddbc16f718879b49a7061ca54c1ecb6502b2063e91f6864c8c7be8ec0c0e90&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230333191.jpg?k=23ddbc16f718879b49a7061ca54c1ecb6502b2063e91f6864c8c7be8ec0c0e90&o=&hp=1'
						, associated_rooms: [
							'468542803'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542803"
						, created: '2019-11-27 21:01:10'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u5927\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230588940',
						thumb_url: './script/xdata/images/hotel/max200/230588940.jpg?k=187e8ae0e9e0cdc32160c92c441affa512a17f113abd50210d6081295c4f3e93&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230588940.jpg?k=187e8ae0e9e0cdc32160c92c441affa512a17f113abd50210d6081295c4f3e93&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230588940.jpg?k=187e8ae0e9e0cdc32160c92c441affa512a17f113abd50210d6081295c4f3e93&o=&hp=1'
						, associated_rooms: [
							'468542801'
							, '468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:16:16'
						, grid: {
							photo_width: 5736,
							photo_height: 3226,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230335290',
						thumb_url: './script/xdata/images/hotel/max200/230335290.jpg?k=b5b54cf6ad467ea2844fb0bdf50f93ba5a9031ce2c61b82e7b1cdb1b3f510fd4&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230335290.jpg?k=b5b54cf6ad467ea2844fb0bdf50f93ba5a9031ce2c61b82e7b1cdb1b3f510fd4&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230335290.jpg?k=b5b54cf6ad467ea2844fb0bdf50f93ba5a9031ce2c61b82e7b1cdb1b3f510fd4&o=&hp=1'
						, associated_rooms: [
							'468542804'
							, '468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:04:51'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '326362513',
						thumb_url: './script/xdata/images/hotel/max200/326362513.jpg?k=c94156166b8080c13b28bd4ebe918e1d5863583cd09ed95af784480735dd6a96&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/326362513.jpg?k=c94156166b8080c13b28bd4ebe918e1d5863583cd09ed95af784480735dd6a96&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/326362513.jpg?k=c94156166b8080c13b28bd4ebe918e1d5863583cd09ed95af784480735dd6a96&o=&hp=1'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, name: "\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542807"
						, created: '2021-11-04 20:00:16'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589730',
						thumb_url: './script/xdata/images/hotel/max200/230589730.jpg?k=3e87121e43a708f59c5a8d20ff10f32b1773038b97195ff97185ee7f36adff41&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589730.jpg?k=3e87121e43a708f59c5a8d20ff10f32b1773038b97195ff97185ee7f36adff41&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589730.jpg?k=3e87121e43a708f59c5a8d20ff10f32b1773038b97195ff97185ee7f36adff41&o=&hp=1'
						, associated_rooms: [
							'468542807'
						]
						, orientation: 'landscape'
						, name: "\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/span\u003e\n"
						, room_id: "468542807"
						, created: '2019-11-29 10:21:31'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u9ad8\u7ea7\u53cc\u5e8a\u65e0\u70df\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589417',
						thumb_url: './script/xdata/images/hotel/max200/230589417.jpg?k=0f74ac335753228dc6d94d20373f5aab5e4edc05f3d9adf7698a745c7592bdd8&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589417.jpg?k=0f74ac335753228dc6d94d20373f5aab5e4edc05f3d9adf7698a745c7592bdd8&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589417.jpg?k=0f74ac335753228dc6d94d20373f5aab5e4edc05f3d9adf7698a745c7592bdd8&o=&hp=1'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u65e0\u70df\u5957\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/span\u003e\n"
						, room_id: "468542808"
						, created: '2019-11-29 10:19:40'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230335731',
						thumb_url: './script/xdata/images/hotel/max200/230335731.jpg?k=783ca2f72a8e03480b860f24efc176427fb9796fbd3d714ef01df3eafff16b9d&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230335731.jpg?k=783ca2f72a8e03480b860f24efc176427fb9796fbd3d714ef01df3eafff16b9d&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230335731.jpg?k=783ca2f72a8e03480b860f24efc176427fb9796fbd3d714ef01df3eafff16b9d&o=&hp=1'
						, associated_rooms: [
							'468542801'
							, '468542802'
							, '468542803'
						]
						, orientation: 'landscape'
						, created: '2019-11-27 21:05:42'
						, grid: {
							photo_width: 4714,
							photo_height: 3122,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589308',
						thumb_url: './script/xdata/images/hotel/max200/230589308.jpg?k=72b770ac369618784aecdbb009eec00b4a1a7ebe25643b736b5ac1f124cc218e&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589308.jpg?k=72b770ac369618784aecdbb009eec00b4a1a7ebe25643b736b5ac1f124cc218e&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589308.jpg?k=72b770ac369618784aecdbb009eec00b4a1a7ebe25643b736b5ac1f124cc218e&o=&hp=1'
						, associated_rooms: [
							'468542804'
							, '468542805'
						]
						, orientation: 'landscape'
						, created: '2019-11-29 10:18:50'
						, grid: {
							photo_width: 4928,
							photo_height: 3264,
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230589258',
						thumb_url: './script/xdata/images/hotel/max200/230589258.jpg?k=024192af0f88ceae8ee41aa115276721bd25ca33300de9dfa3d76d45362637c6&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230589258.jpg?k=024192af0f88ceae8ee41aa115276721bd25ca33300de9dfa3d76d45362637c6&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230589258.jpg?k=024192af0f88ceae8ee41aa115276721bd25ca33300de9dfa3d76d45362637c6&o=&hp=1'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u65e0\u70df\u5957\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/span\u003e\n"
						, room_id: "468542808"
						, created: '2019-11-29 10:18:36'
						, grid: {
							photo_width: 6472,
							photo_height: 3641,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: '230334861',
						thumb_url: './script/xdata/images/hotel/max200/230334861.jpg?k=d8b976a75cd0fd3986387fc6cbb655b5feb7d8cce10cc1149cb9058c7ee7665a&o=&hp=1',
						large_url: './script/xdata/images/hotel/max1024x768/230334861.jpg?k=d8b976a75cd0fd3986387fc6cbb655b5feb7d8cce10cc1149cb9058c7ee7665a&o=&hp=1'
						, highres_url: './script/xdata/images/hotel/max1280x900/230334861.jpg?k=d8b976a75cd0fd3986387fc6cbb655b5feb7d8cce10cc1149cb9058c7ee7665a&o=&hp=1'
						, associated_rooms: [
							'468542808'
						]
						, orientation: 'landscape'
						, name: "\u6807\u51c6\u65e0\u70df\u5957\u623f"
						, caption_right: "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\u003cspan class=\"gallery-info__fc\"\u003e\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/span\u003e\n\n"
						, caption_left: "\n\u003cspan class=\"gallery-info__rn\"\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/span\u003e\n"
						, room_id: "468542808"
						, created: '2019-11-27 21:04:07'
						, grid: {
							photo_width: 6720,
							photo_height: 3780,
							content: "\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_title js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\u6807\u51c6\u65e0\u70df\u5957\u623f\n\u003c/a\u003e\n\u003c/div\u003e\n\n\n\n\u003cdiv class=\"msg cut-text\"\u003e\n\u003ca\ntabindex=\"-1\"\nclass=\"bui-link bui-link--secondary msg_free_cancelation js-room-clickable\"\nhref=\"#\"\ndata-component=\"prevent-default-helper\"\n\u003e\n\n\n\n\n\n\n&#x7A0D;&#x540E;&#x4ED8;&#x6B3E; - &#x65E0;&#x9700;&#x9884;&#x4ED8;\n\u003c/a\u003e\n\u003c/div\u003e\n\n",
							gridTrack: [
								{
									track: "customGoal:aXBNTfZHQSVTMIcOcfPUMVBFUWe:1",
									on: 'click'
								}
							]
						}
					}
					,
					{
						id: 'cta-230593664',
						thumb_url: './script/xdata/images/hotel/max200/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1',
						thumb_contains: '<i class="bicon bicon-closedlock"></i>',
						thumb_className: 'photo-modal-lock-price',
						large_url: './script/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973&o=&hp=1',
						contains: '.bh-photo-modal-cta-slide-wrapper',
						grid: {
							contains: '.bh-photo-modal-cta-grid-item-wrapper',
							thumb_contains: "\u003csvg class=\"bk-icon -iconset-lock_closed\" fill=\"#FFFFFF\" height=\"80\" width=\"80\" viewBox=\"0 0 128 128\" role=\"presentation\" aria-hidden=\"true\" focusable=\"false\"\u003e\u003cpath d=\"M104 48H92V35a28 28 0 0 0-56 0v13H24a8 8 0 0 0-8 8v56a8 8 0 0 0 8 8h80a8 8 0 0 0 8-8V56a8 8 0 0 0-8-8zM64 96a12 12 0 1 1 12-12 12 12 0 0 1-12 12zM44 48V35a20 20 0 0 1 40 0v13z\"/\u003e\u003c/svg\u003e",
							photo_width: 6720,
							photo_height: 3780,
						},
						className: 'photo-grid-cta-slide',
						verticalAlign: '.bh-photo-modal-cta-slide'
					}
				],
				b_hotelfeaturedreviews_url: '/hotelfeaturedreviews/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&',
				hp_gallery_lazyload: 'ondemand',
				hp_gallery_fade_speed: 2000,
				hp_gallery_autoplay_speed: 3000,
				b_run_hp_gallery_corner_navigation: true,
				b_run_hp_booking_summary: true,
				b_run_hp_gently_select_rooms: 1,
				hp_location_block: true,
				b_run_hp_rt_lightbox_image_gallery_v2: true,
				b_run_droom_hp_rt_lb_new_gallery: true,
				b_run_droom_hp_increase_lb_photo_res: true,
				b_run_hp_fixed_review_height: true,
				run_hp_rt_lightbox: true,
				run_hp_rt_lightbox_no_dates: true,
				b_run_hp_rt_lightbox_image_gallery: true,
				b_user_is_using_one_list_only: '1',
				defaultReviewsLanguage: '',
				fe_reviews_base_params: {
					score: "",
					dist: "1",
					rows: "10",
					offset: "0",
					topics: [],
					lang: [],
					type: ["total"],
					page: "holiday-inn-express-nanjing-dongshan",
					country: "cn",
					rurl: "",
					query: ".zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&",
					sort: "",
				},
				filterReviewsByTopic: 2,
				defaultReviewsTopic: [],
				instalments_minimum_price: '',
				payment_possible_in_instalments: '',
				b_search_config: { "b_children_ages_total": [], "b_children_total": 0, "traveller_segment": "solo", "predicted_traveller_type": "solo", "b_abnormal_params": 0, "b_rooms": [{ "b_room_order": 1, "b_adults": 1, "b_children": 0, "b_children_ages": [] }], "autosplit": 1, "b_is_group_search": 0, "b_nr_rooms_needed": 1, "b_pets_total": null, "b_additional_channels": [1339], "b_adults_total": 1 },
				wholesaler_configuration: {
					search_config_adults: '1',
					search_config_children: '0',
					search_config_rooms: '1',
					accommodation_type_id: '204',
					url: '',
					payment_methods_url: "",
					tpi_av_id: '',
					b_3pi_thirdparty_api_failed: '0',
					b_3pi_show_room_in_rt: '0',
					b_send_first_room_id_to_bp_feature: 1,
					business_bookers: {
						b_is_bbtool_user: '',
						b_user_is_business_booker: '',
						b_inferred_user_is_business_booker: ''
					},
					availability_exp: {
						geo: '0',
					},
					fe_tpi_breakfast_score: '',
					fe_tpi_breakfast_review_nr: '',
					location_score: '8.1',
					tpi_track_ajax_failures: 1,
					tpi_hp_no_photo_squeak_name: 'PPXGDPTPdKNKNKPZHPWeKe',
					"tpi_exps": {
						"showRequestToBookBtn": "PeYdXWbdfEcYRCfPSIeMaLT",
					},
					fe_max_occupants: 1,
					b_is_aspiring_genius: 0,
					b_checkin_checkout_interval: 1,
					b_checkin_checkout_interval_is_1: 1,
					b_show_citizen_vat_message: 0,
					b_tpi_optional_mealplans: "",
				},
				tpi_search_config: { "b_children_ages_total": [], "b_children_total": 0, "traveller_segment": "solo", "predicted_traveller_type": "solo", "b_abnormal_params": 0, "b_rooms": [{ "b_room_order": 1, "b_adults": 1, "b_children": 0, "b_children_ages": [] }], "autosplit": 1, "b_is_group_search": 0, "b_nr_rooms_needed": 1, "b_pets_total": null, "b_additional_channels": [1339], "b_adults_total": 1 },
				site_type: "www",
				days_to_checkin: "23",
				b_terms_and_conditions_url: 'https://booking.com/content/terms.zh-cn.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;srpvid=57ba444d8f80007e',
				b_blocks_per_room_id: [
					{
						b_blocks: [
							{
								b_block_id: '468542806_246088447_2_1_0',
								b_room_id: '468542806',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542801_246088447_2_1_0',
								b_room_id: '468542801',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542803_246088447_2_1_0',
								b_room_id: '468542803',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542807_246088447_2_1_0',
								b_room_id: '468542807',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542804_246088447_2_1_0',
								b_room_id: '468542804',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542805_246088447_2_1_0',
								b_room_id: '468542805',
							},
						],
					},
					{
						b_blocks: [
							{
								b_block_id: '468542808_246088447_2_1_0',
								b_room_id: '468542808',
							},
						],
					},
				],
				b_gallery_has_photo_tags: false,
				b_rooms_available_and_soldout: [{ "b_name": "标准双床无烟房", "b_has_room_inventory": 1, "b_blocks": [{ "b_mealplan_included_name": "breakfast", "b_rate_is_genius": 0, "b_max_persons": 2, "b_stay_prices": [{ "b_stays": 0, "b_price_per_night": "", "b_raw_price": "", "b_price": "", "b_local_price": 0 }, { "b_price_per_night": "325元", "b_stays": 1, "b_raw_price": 325, "b_price": "325元", "b_local_price": 325 }, { "b_local_price": 650, "b_price": "650元", "b_raw_price": 650, "b_stays": 2, "b_price_per_night": "650元" }, { "b_raw_price": 975, "b_stays": 3, "b_price_per_night": "975元", "b_local_price": 975, "b_price": "975元" }, { "b_price": "1,300元", "b_local_price": 1300, "b_stays": 4, "b_price_per_night": "1,300元", "b_raw_price": 1300 }, { "b_stays": 5, "b_price_per_night": "1,625元", "b_raw_price": 1625, "b_price": "1,625元", "b_local_price": 1625 }, { "b_local_price": 1950, "b_price": "1,950元", "b_raw_price": 1950, "b_price_per_night": "1,950元", "b_stays": 6 }], "b_book_now_pay_later": 1, "b_price_breakdown_simplified": { "b_strikethrough_price_amount": 0, "b_reward_credit_amount": 0, "b_excluded_charges_amount": 53.95, "b_vm_products": [], "b_tax_exception": 0, "b_headline_price_amount": 325 }, "b_nr_stays": 6, "b_block_id": "468542806_246088447_2_1_0", "b_price": "325元", "b_raw_price": "325.00", "b_cancellation_type": "free_cancellation" }], "b_id": 468542806, "b_roomtype_id": 8 }, { "b_id": 468542801, "b_roomtype_id": 24, "b_has_room_inventory": 1, "b_blocks": [{ "b_nr_stays": 6, "b_price_breakdown_simplified": { "b_strikethrough_price_amount": 0, "b_tax_exception": 0, "b_vm_products": [], "b_excluded_charges_amount": 53.95, "b_reward_credit_amount": 0, "b_headline_price_amount": 325 }, "b_price": "325元", "b_block_id": "468542801_246088447_2_1_0", "b_cancellation_type": "free_cancellation", "b_raw_price": "325.00", "b_mealplan_included_name": "breakfast", "b_max_persons": 2, "b_rate_is_genius": 0, "b_stay_prices": [{ "b_local_price": 0, "b_price": "", "b_raw_price": "", "b_stays": 0, "b_price_per_night": "" }, { "b_local_price": 325, "b_price": "325元", "b_raw_price": 325, "b_stays": 1, "b_price_per_night": "325元" }, { "b_price": "650元", "b_local_price": 650, "b_stays": 2, "b_price_per_night": "650元", "b_raw_price": 650 }, { "b_stays": 3, "b_price_per_night": "975元", "b_raw_price": 975, "b_price": "975元", "b_local_price": 975 }, { "b_local_price": 1300, "b_price": "1,300元", "b_raw_price": 1300, "b_price_per_night": "1,300元", "b_stays": 4 }, { "b_price": "1,625元", "b_local_price": 1625, "b_price_per_night": "1,625元", "b_stays": 5, "b_raw_price": 1625 }, { "b_raw_price": 1950, "b_price_per_night": "1,950元", "b_stays": 6, "b_local_price": 1950, "b_price": "1,950元" }], "b_book_now_pay_later": 1 }], "b_name": "标准双人或双床间 " }, { "b_name": "标准大床无烟房", "b_blocks": [{ "b_raw_price": "325.00", "b_cancellation_type": "free_cancellation", "b_block_id": "468542803_246088447_2_1_0", "b_price": "325元", "b_nr_stays": 6, "b_price_breakdown_simplified": { "b_tax_exception": 0, "b_vm_products": [], "b_reward_credit_amount": 0, "b_excluded_charges_amount": 53.95, "b_strikethrough_price_amount": 0, "b_headline_price_amount": 325 }, "b_book_now_pay_later": 1, "b_stay_prices": [{ "b_raw_price": "", "b_stays": 0, "b_price_per_night": "", "b_local_price": 0, "b_price": "" }, { "b_local_price": 325, "b_price": "325元", "b_raw_price": 325, "b_stays": 1, "b_price_per_night": "325元" }, { "b_raw_price": 650, "b_stays": 2, "b_price_per_night": "650元", "b_local_price": 650, "b_price": "650元" }, { "b_local_price": 975, "b_price": "975元", "b_raw_price": 975, "b_stays": 3, "b_price_per_night": "975元" }, { "b_stays": 4, "b_price_per_night": "1,300元", "b_raw_price": 1300, "b_price": "1,300元", "b_local_price": 1300 }, { "b_price": "1,625元", "b_local_price": 1625, "b_stays": 5, "b_price_per_night": "1,625元", "b_raw_price": 1625 }, { "b_local_price": 1950, "b_price": "1,950元", "b_raw_price": 1950, "b_stays": 6, "b_price_per_night": "1,950元" }], "b_max_persons": 2, "b_rate_is_genius": 0, "b_mealplan_included_name": "breakfast" }], "b_has_room_inventory": 1, "b_roomtype_id": 9, "b_id": 468542803 }, { "b_id": 468542807, "b_roomtype_id": 8, "b_has_room_inventory": 1, "b_blocks": [{ "b_cancellation_type": "free_cancellation", "b_raw_price": "399.00", "b_price": "399元", "b_block_id": "468542807_246088447_2_1_0", "b_price_breakdown_simplified": { "b_tax_exception": 0, "b_vm_products": [], "b_reward_credit_amount": 0, "b_excluded_charges_amount": 66.234, "b_strikethrough_price_amount": 0, "b_headline_price_amount": 399 }, "b_nr_stays": 6, "b_book_now_pay_later": 1, "b_stay_prices": [{ "b_stays": 0, "b_price_per_night": "", "b_raw_price": "", "b_price": "", "b_local_price": 0 }, { "b_local_price": 399, "b_price": "399元", "b_raw_price": 399, "b_stays": 1, "b_price_per_night": "399元" }, { "b_stays": 2, "b_price_per_night": "798元", "b_raw_price": 798, "b_price": "798元", "b_local_price": 798 }, { "b_price": "1,197元", "b_local_price": 1197, "b_price_per_night": "1,197元", "b_stays": 3, "b_raw_price": 1197 }, { "b_raw_price": 1596, "b_stays": 4, "b_price_per_night": "1,596元", "b_local_price": 1596, "b_price": "1,596元" }, { "b_price_per_night": "1,995元", "b_stays": 5, "b_raw_price": 1995, "b_price": "1,995元", "b_local_price": 1995 }, { "b_stays": 6, "b_price_per_night": "2,394元", "b_raw_price": 2394, "b_price": "2,394元", "b_local_price": 2394 }], "b_rate_is_genius": 0, "b_max_persons": 2, "b_mealplan_included_name": "breakfast" }], "b_name": "高级双床无烟房" }, { "b_name": "高级大床无烟房", "b_has_room_inventory": 1, "b_blocks": [{ "b_mealplan_included_name": "breakfast", "b_max_persons": 2, "b_rate_is_genius": 0, "b_stay_prices": [{ "b_local_price": 0, "b_price": "", "b_raw_price": "", "b_stays": 0, "b_price_per_night": "" }, { "b_raw_price": 399, "b_stays": 1, "b_price_per_night": "399元", "b_local_price": 399, "b_price": "399元" }, { "b_raw_price": 798, "b_price_per_night": "798元", "b_stays": 2, "b_local_price": 798, "b_price": "798元" }, { "b_stays": 3, "b_price_per_night": "1,197元", "b_raw_price": 1197, "b_price": "1,197元", "b_local_price": 1197 }, { "b_local_price": 1596, "b_price": "1,596元", "b_raw_price": 1596, "b_price_per_night": "1,596元", "b_stays": 4 }, { "b_price": "1,995元", "b_local_price": 1995, "b_price_per_night": "1,995元", "b_stays": 5, "b_raw_price": 1995 }, { "b_price_per_night": "2,394元", "b_stays": 6, "b_raw_price": 2394, "b_price": "2,394元", "b_local_price": 2394 }], "b_book_now_pay_later": 1, "b_nr_stays": 6, "b_price_breakdown_simplified": { "b_headline_price_amount": 399, "b_reward_credit_amount": 0, "b_excluded_charges_amount": 66.234, "b_vm_products": [], "b_tax_exception": 0, "b_strikethrough_price_amount": 0 }, "b_block_id": "468542804_246088447_2_1_0", "b_price": "399元", "b_raw_price": "399.00", "b_cancellation_type": "free_cancellation" }], "b_id": 468542804, "b_roomtype_id": 9 }, { "b_has_room_inventory": 1, "b_blocks": [{ "b_mealplan_included_name": "breakfast", "b_rate_is_genius": 0, "b_max_persons": 2, "b_stay_prices": [{ "b_price": "", "b_local_price": 0, "b_stays": 0, "b_price_per_night": "", "b_raw_price": "" }, { "b_price": "429元", "b_local_price": 429, "b_stays": 1, "b_price_per_night": "429元", "b_raw_price": 429 }, { "b_raw_price": 858, "b_stays": 2, "b_price_per_night": "858元", "b_local_price": 858, "b_price": "858元" }, { "b_raw_price": 1287, "b_price_per_night": "1,287元", "b_stays": 3, "b_local_price": 1287, "b_price": "1,287元" }, { "b_price": "1,716元", "b_local_price": 1716, "b_stays": 4, "b_price_per_night": "1,716元", "b_raw_price": 1716 }, { "b_price": "2,145元", "b_local_price": 2145, "b_stays": 5, "b_price_per_night": "2,145元", "b_raw_price": 2145 }, { "b_stays": 6, "b_price_per_night": "2,574元", "b_raw_price": 2574, "b_price": "2,574元", "b_local_price": 2574 }], "b_book_now_pay_later": 1, "b_price_breakdown_simplified": { "b_strikethrough_price_amount": 0, "b_vm_products": [], "b_tax_exception": 0, "b_excluded_charges_amount": 71.214, "b_reward_credit_amount": 0, "b_headline_price_amount": 429 }, "b_nr_stays": 6, "b_block_id": "468542805_246088447_2_1_0", "b_price": "429元", "b_raw_price": "429.00", "b_cancellation_type": "free_cancellation" }], "b_name": "特色大床无烟房", "b_roomtype_id": 9, "b_id": 468542805 }, { "b_id": 468542808, "b_roomtype_id": 5, "b_blocks": [{ "b_book_now_pay_later": 1, "b_stay_prices": [{ "b_raw_price": "", "b_price_per_night": "", "b_stays": 0, "b_local_price": 0, "b_price": "" }, { "b_raw_price": 599, "b_stays": 1, "b_price_per_night": "599元", "b_local_price": 599, "b_price": "599元" }, { "b_local_price": 1198, "b_price": "1,198元", "b_raw_price": 1198, "b_price_per_night": "1,198元", "b_stays": 2 }, { "b_raw_price": 1797, "b_price_per_night": "1,797元", "b_stays": 3, "b_local_price": 1797, "b_price": "1,797元" }, { "b_stays": 4, "b_price_per_night": "2,396元", "b_raw_price": 2396, "b_price": "2,396元", "b_local_price": 2396 }], "b_max_persons": 2, "b_rate_is_genius": 0, "b_mealplan_included_name": "breakfast", "b_cancellation_type": "free_cancellation", "b_raw_price": "599.00", "b_price": "599元", "b_block_id": "468542808_246088447_2_1_0", "b_nr_stays": 4, "b_price_breakdown_simplified": { "b_strikethrough_price_amount": 0, "b_tax_exception": 0, "b_vm_products": [], "b_excluded_charges_amount": 99.434, "b_reward_credit_amount": 0, "b_headline_price_amount": 599 } }], "b_has_room_inventory": 1, "b_name": "标准无烟套房" }],
				b_photo_pid: (488148).toString(),
				b_rackrates_monitoring_running: true,
				b_wishlist_referrer: '',
				b_reg_user_last_used_wishlist: "",
				b_reg_user_wishlist_remaining: 1,
				is_user_center_bar: 1,
				b_site_experiment_user_center_bar: 1,
				b_reg_user_is_genius: "",
				profile_menu: {
					b_user_auth_level: 0,
					b_domain_for_app: "./script",
					b_query_params_with_lang_no_ext: "?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&",
					b_travel_comm_url_with_lang: "https://community.booking.com/?profile.language=en",
					b_action: "hotel",
					b_site_info: { "is_iam_auth_allowed": 1, "is_bookings_owned": 1 },
					b_site_type: "www",
					b_companyname: "Booking.com",
					b_reg_user_full_name: "",
					b_is_genius_branded: "0",
					b_reg_user_is_genius: "",
					b_genius_dashboard_expiry_destfinder_url: "./script/destinationfinderdeals.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&;genius_deals_mode=1;checkin=2023-06-02;checkout=2023-06-03",
					b_reg_user_last_used_wishlist: "",
					b_genius_product_page_url: "./script/genius.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&",
					b_reg_user_five_bookings_challenge: "",
					b_reg_user_detail_name_email_hash: "",
					b_user_is_grap_eligible: "",
					b_grap_remove_raf_checks: 1,
					b_is_bbtool_admin: "",
					b_is_bbtool_user: "",
					fe_bbtool_permission_is_connected_to_bbtool: "",
					fe_this_url_travel_purpose_business: "https://secure.booking.com/company/search.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=business",
					fe_this_url_travel_purpose_leisure: "./script/index.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=leisure",
					fe_reservations_url_travel_purpose_business: "https://secure.booking.com/company/reservations.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=business",
					fe_reservations_url_travel_purpose_leisure: "https://secure.booking.com/myreservations.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=leisure",
					fe_my_settings_url: "https://account.booking.com/oauth2/authorize?aid=397645;client_id=d1cDdLj40ACItEtxJLTo;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fsettings%2Foauth_callback;response_type=code;state=UlZls7zE4Sbr1LXYbKBIA2g6IN3XL0S1cpslaeVJBhceelLShDTX5OW0C7MFnQU_dAKOaoW3WGvtWcOmOadWx6ONsfOwrX2ztETEmEjA7ThYNfXNoFOd4A",
					fe_my_settings_url_travel_purpose_business: "https://secure.booking.com/mysettings.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=business",
					fe_my_settings_url_travel_purpose_leisure: "https://secure.booking.com/mysettings.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&sb_travel_purpose=leisure",
					fe_bbtool_can_see_tool_promos: "1",
					fe_bbtool_can_see_tool_promos: "1",
					fe_bbtool_blackout_user_company: "",
					fe_bbtool_redirect_personal_to_index: 1,
					b_reg_user_company_name: "",
					b_reg_user_company_name_escaped: "",
					b_reg_user_companyjoin_url: "",
					b_bbtool_product_page_url: "./script/business.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&stid=934592",
					b_is_ie7: "",
					b_this_url: "/hotel/cn/holiday-inn-express-nanjing-dongshan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&all_sr_blocks=468542806_246088447_2_1_0;checkin=2023-06-02;checkout=2023-06-03;dest_id=44;dest_type=country;group_adults=1;group_children=0;hapos=1;highlighted_blocks=468542806_246088447_2_1_0;hpos=1;matching_block_id=468542806_246088447_2_1_0;no_rooms=1;req_adults=1;req_children=0;room1=A;sb_price_type=total;sr_order=popularity;sr_pri_blocks=468542806_246088447_2_1_0__32500;srepoch=1683711772;srpvid=57ba444d8f80007e;type=total;ucfs=1&",
					b_lang_for_url: "zh-cn",
					b_secure_hostname: "https://secure.booking.com",
					b_nonsecure_hostname: "./script",
					b_query_params_with_lang: ".zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&",
					b_query_params_with_lang_no_ext: "?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&",
					b_travel_comm_url_with_lang: "https://community.booking.com/?profile.language=en",
					b_query_params_delimiter: "&",
					b_reg_user_detail_dashboard_url: "",
					b_is_reg_user_city_guide_in_lang_available: "0",
					b_aspiring_user_fifth_booking_ufi: "",
					b_reg_user_aspiring_data: "",
					b_dummy_var_for_trailing_comma: false,
					b_ip_country: "cn",
					b_guest_country: "cn",
					b_agent_is_no_robot: 1,
					b_page_name: "hotel",
					b_landingpage_theme_type: "",
					b_brewards_account_details: "",
					b_upcoming_rewards: "",
					b_rewards_reminder_is_on: 1,
					fe_rewards__game_over: "1",
					loyalty_program_rules: "",
					loyalty_program_status: "",
					loyalty_program_bonus_url: "",
					b_brewards_loyalty_program_account_type: "",
					b_user_has_mobile_app: "",
					b_aid: 397645,
					b_label: "bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB",
					fe_user_can_see_company_reservations: null,
					b_oauth_client_id: "vO1Kblk7xX9tUn2cpZLS",
					b_sso_logout_url: "https://account.booking.com/sso/logout/v2",
					b_sso_logout_callback_url: "https://secure.booking.com/login.html?op=oauth_return",
					fe_sso_logout_state: "UtYGbg2tM8DghJG2fcDmaCUx7gHwYkWX31JUo3Yqu_y6pqO9iTyFocd6b9Lqk3avI21H6zy5GghR2BTMldzT0siX6Zc3lKeaKfT58WrLq7CbWltPQT-HZ43rRBVCBEfu6TDiy0bGVRIKmTOXxjwmvES0zkHKYs02tJiAQgCYsDbiIwdsRzjkdMrmIYmrTvlCh0TG_Rvhfpu5ZlTe37OvKUJug1jI0ReJUnGmLMyuZEbuhMgfoYpl5oXY5dcvxx5_dyxEdQ31PEW6nvO1ZEy_LWUqoagPGFGLBim_ho9x_tfDgHlNuBrdM5O72rL9fHW3HyFG0Gxy--bD3bHrfwpzbyX76iJRU8cXoRrD9MilOgsUnM2_8pRrQ1UJfMf2OZiEHyyE_EbMe1vfO3UXeXnHnxm0bCvGFdjhsWX45YVjGMvHszMuk1ugAwGv_OExEmiyQ7AhLy23WuNFksGhruF5lYRIosKhXRyK_AHk63IkpgY7Pv3Xe1WIjoeJCWcNyEXiHsmutJHpqe_aRa70DajuNB59Tk8XnNlWZz_IZA_zHJrBPFxF4OVe4futxea02n9GyceCSynY3r9G1WiaVT5F1LlQst-4CHAUi8-km4N72skwwiiRNPSSJaWSiyuZxGfQFMZG7AV2N_I0Q0-2oAl1HhgXWF97QyMqc7XWxKd4cjJ9-2Rq-DVTZllZ6WPAWyDyJGJ_rM_yDr797QZUTt_O4MsyAbiYavisKWk5TqR34OndDFt5Tn56Al03QQBzuFyOXVGJg3zlhmDB0ivkGOzlnfETBW0X26l6zJxoRFcR5_bRtNrIip2vjUoV9x0oCZkDZF_uBOMzOv_U0fO7KVlnuxWgP0o4S2mLzCKbcWSUjtyo5i4spKQ_klyyU6mBfrdxgM0XneBlgx1BZAG_iqnE4d4uG1jZh5aNPaa3HTcJ3M_YWlqn-GTx7KMJSVAxGdrhvVsNbAwoWVYLMUi-oR_1YhvuGUnaj_boJYSpL6QZjRWTa3bwEdgfUiq6kDWqLThSLScDjSeSi5Rog7ueqEkhDHE5biiCCt4JMYrvrhO5nFtatdYaKKFkAzVKgKh4iyatKi_iG17DelpKDF0ZcTrDfYCt5JfluEn5cXUSP0fpXgo9sCi5jEduQUw",
					fe_blackout_mydashboard: "",
					fe_user_menu_aspiring_genius_link: false
				},
				accounting_config: { "num_decimals": { "TJR": "0", "TMM": "0", "RWF": "0", "TWD": "0", "MZM": "0", "OMR": "3", "VND": "0", "KMF": "0", "KWD": "3", "AFA": "0", "XPF": "0", "GNF": "0", "LYD": "3", "LAK": "0", "HUF": "0", "RUB": "0", "CLP": "0", "XAF": "0", "XOF": "0", "BYR": "0", "DJF": "0", "BHD": "3", "ISK": "0", "UGX": "0", "IQD": "3", "BIF": "0", "IDR": "0", "KRW": "0", "ECS": "0", "JPY": "0", "MGA": "0", "PYG": "0", "COP": "0", "default": "2", "JOD": "3", "VUV": "0", "TND": "3" }, "currency_separator": { "USD": "", "JPY": "", "GBP": "", "default": "&nbsp;", "CNY": "" }, "symbol_position": { "default": "before", "CNY": "after", "RON": "after", "CZK": "after", "PLN": "after" }, "group_separator": { "default": "," }, "decimal_separator": { "default": "." }, "html_symbol": { "ILS": "&#x20AA;", "USD": "US$", "INR": "Rs.", "HKD": "HK$", "PHP": "&#8369;", "XPF": "CFP", "CLP": "CL$", "ARS": "AR$", "EUR": "&#x20AC;", "SGD": "S$", "IDR": "Rp", "JPY": "&#165;", "TRY": "TL", "BRL": "R$", "GBP": "&#163;", "RON": "lei", "CZK": "K&#269;", "PLN": "z&#x0142;", "CNY": "&#20803;" } },
				distance_config: "metric",
				b_hotel_currencycode: "CNY",
				is_listview_page: true,
				b_this_weekend_checkin: "",
				b_this_weekend_checkout: "",
				b_next_weekend_checkin: "",
				b_next_weekend_checkout: "",
				b_official_continent: "",
				b_deals_continents: "",
				b_pay_now_cc_allowed: true,
				b_alt_payment_is_hybrid_available: true,
				b_messenger_url: '',
				b_open_messenger: false,
				b_is_asian_user: '',
				b_days_to_checkin: '',
				b_extra_ajax_headers: {},
				et_debug_level: '0',
				b_pricemode: 1,
				notification_squeaks: {
				},
				wl_squeak: {
					open_wishlist_from_hp: 'ZQafLebbMTSDSC',
					create_wishlist_from_hp: 'bYDXYFdKMDNdEPUUBYT',
				},
				genius_vip_squeaks: {
					gnsSpun_bannerView_hp: 'TDXRPCTOYESVCMIWIOQHFRYNHe',
					gnsSpun_bannerCtaClick_hp: 'TDXRPCTOYESVCMIWIAHIcaWGNPZSOBO',
					gnsSpun_modalView_hp: 'TDXRPCTOYESEIEYXWCcYbaBBYT',
					gnsSpun_modalCtaClick_hp: 'TDXRPCTOYESEIEYXWIYKdVaQBYNZDSC',
					gnsInsCrd_bannerView_hp: 'TDXRPVRBKKJVbFPbVCMIWIOQHFRYNHe',
					gnsInsCrd_bannerCtaClick_hp: 'TDXRPVRBKKJVbFPbVCMIWIAHIcaWGNPZSOBO',
					gnsInsCrd_modalView_hp: 'TDXRPVRBKKJVbFPbEIEYXWCcYbaBBYT',
					gnsInsCrd_modalCtaClick_hp: 'TDXRPVRBKKJVbFPbEIEYXWIYKdVaQBYNZDSC',
					gnsBkun_bannerView_hp: 'TDXRPVReBZAPXPRLaWNBALOOBO',
					gnsBkun_bannerCtaClick_hp: 'TDXRPVReBZAPXPRLaWBXFJVGSBBNPZWe',
					gnsBkun_modalView_hp: 'TDXRPVReBZAZXDOXVaUSIcCDSC',
					gnsBkun_modalCtaClick_hp: 'TDXRPVReBZAZXDOXVaSXbfIAbSOBYNHe',
					gnsInsDisc_bannerView_hp: 'TDXRPVRBKKQUYBFLLREHGVaUSIcCDSC',
					gnsInsDisc_bannerCtaClick_hp: 'TDXRPVRBKKQUYBFLLREHGVaSXbfIAbSOBYNHe',
					gnsOnbe_modalView_hp: 'TDXRPCTDfELZXDOXVaUSIcCDSC',
					gnsOnbe_modalCtaClick_hp: 'TDXRPCTDfELZXDOXVaSXbfIAbSOBYNHe',
				},
				map_open_sr_hp_squeaks: {
					mapOpenInSearchResultsOrHotelPage: 'YdXfTQdcLDWNXFBYT',
				},
				trip_types_squeaks: {
					ski_hp_d_map_no_lift_markers: 'cJfZHQScWDIKPDPREFHT',
					beach_hp_d_map_no_beach_markers: 'YWYHfZHQScWDBaUEVHMbEO',
					beach_hp_d_map_no_beaches_nearby: 'YWYHfZHQScWDBaUEIQJZRZae',
					beach_hp_d_panel_response_error: 'YWYHfZHQWXdBGZBZeQHVODfcVDZET',
					beach_hp_d_async_scripts_failed: 'YWYHfZHQWZTNWffePBGSLYWMVbXEQC',
					ski_hp_d_panel_response_error: 'cJfZHQWXdBGZBZeQHVODfcVDZET',
					dummyvar: false
				},
				insurance_squeaks: {
					mfe_ready: 'fFaMLVBGVPLXNWSLT',
					quote_reference_received: 'fFaMLAeUVKZMRKIOfFRJXZMHbAae',
					insurance_received: 'fFaMLVDERdafXdDEAJLT'
				},
				trackExperiment: function () { },
				"error": {}
			},
			ensureNamespaceExists: function (namespaceString) {
				if (!booking[namespaceString]) {
					booking[namespaceString] = {};
				}
			}, hotel: {}, experiments: {}, startup: {}, experiments_load: {}, startup_load: {}, promotions: {}, timestamp: new Date()
		};
		function Tip() { };
		(function (scope) {
			booking.env.b_sb_autocomplete_predictions_url = '/autocomplete_csrf';
			booking.env.b_sb_autocomplete_predictions_method = 'GET';
			booking.env.b_sb_googleplaces_carrier_url = 'https://carrier.booking.com/google/places/webautocompletesimple';
			booking.env.b_sb_googleplaces_carrier_method = 'POST';
			var params = scope.search_autocomplete_params = {};
			params.v = '1';
			params.lang = 'zh-cn';
			params.sid = 'f0f82b20b46106bf73b9641ed765ee02';
			params.aid = '397645';
			params.pid = '6f8444c2694701b4';
			params.stype = '1';
			params.src = 'hotel';
			params.eb = '4';
			params.e_obj_labels = '1';
			params.context_dest_type = 'city';
			params.context_dest_id = '-1919548';
			params.from_hotel = 1;
			params.e_tclm = 1;
			params.add_themes = '1';
			params.themes_match_start = '1';
			params.include_synonyms = '1';
		}(window.autocomplete_vars || booking.env));
	</script>
	
	
	<script nonce="9jmEHBuvHcdLmqi">var _gaq = _gaq || [];</script>
	<script nonce="9jmEHBuvHcdLmqi">
		booking.jset = { "f": { "ZdZaYPZZGbEVdZXKGPEQbNBEBUSMTKe": 2, "HMbVacDNVZNMPHVDZTaWe": 1, "OMHMbMPMZbFDSFSefWcHSWedNTUQODZSXT": 1, "UETTJbZWMZfPAJbWdALLbJeJHINeCeQcJWe": 1, "BCEQAeMZeEOHGZGbDYeNcEVDAMeMaDMC": 1, "febdSANFRWEYBXYFPdKNKNKWe": 1, "PWBJBMWASUJNVJKMFJQPYXcBdHC": 1, "eEBZFJZeOQPTJAAVceVbYANZTRbAOdZWfCUUC": 2, "HWAFNeOYSUaecfbEIEYXT": 1, "YTBeWfCDBHeJOUTBSSPNLcSdeae": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUFIMNFcKfbHJLHFJO": 1, "PPXGSCZFCFcCZVdcSQBKQKe": 1, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBWPHDDWe": 1, "febdSANFRWEYBXYFPCDWOOC": 1, "ABVYUYQJJYCBTWPHVNDZEdHOUfJJO": 1, "AEUaYPZZGbdEKQRVJcQYIMdUTSDPCJWXe": 2, "eEBZFJZeOQPPHFBddQSMaXdRT": 1, "HBbMWcNHDKdeJMET": 1, "HWAFNRWMPNSMYZXUCeeC": 1, "PWBJMeHGSMeSNafXPRQMdBcAdQdOET": 1, "HBOAIEcADDbdEPQBTKe": 1, "YdXfCDWOOWNEaUPfSCMeJECBLeENKe": 2, "THHSODILJbbfYFZIJePICaeFYTET": 1, "YdXfdKNKNKPZZWLKVHNTXaJNAFfQXT": 1, "bQGBOEIKZdJWXFZEVC": 1, "HWAFNeOYJeaILYDMFFUKGZIUONSFTUQODWe": 1, "INLGPZPFBWDECQdHZVaAbHJGOGVTCGVTKe": 1, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcVKDSET": 1, "cQYIMdUYWEIFPBNQKAEYTKe": 1, "eDSdUfMPSXZIUONSFTUQODPWAecDKORe": 1, "BCTHeUAFffbdfKQZGMKAaFYNLeRYVT": 1, "AdZZBOSMPMaWQMAWTWEYT": 1, "INQHUYZIEPfLaMbAMHMZMQcCVKLLYaKXOYO": 1, "cCHObdRdJSfdQaRNFOSeDCJWMddKNKNKWe": 1, "OMeRQDSFLFZNAdBAFVNaLaETeDdWe": 1, "ZdZbaBOQFCESXGBUacWCHT": 1, "AdPcRXUSdEDeZVZMYCVXXe": 2, "TeCOeJPLccGSOROQSaWeVPBQeLT": 1, "fTHSQFUUZAfRIZTJYSGFZWVRSebQAC": 4, "bLEBBVYUAZYIaWQIXe": 1, "HWAFNeOYDORMTfFTWWCQSFHVPHVATZdSGWUC": 1, "HBOAIEcGcEJDXO": 1, "HVUBNNeRBNePeEBVUWVYREHGC": 1, "BPHOaBaWQOcfESUaecfbVCMIQRDEJLHe": 1, "cCHObECVVDDORMTfFEIZEHaZVUbCBMNLVT": 1, "IZdHUYWESdMWWHDCSVZXdGVDZSdSUWDbIUOYSIUC": 1, "HWAFYNFIYJKOFKe": 1, "IZTYBKFeaSLAZWAcJXZMbSFBO": 1, "dLYHMRFeRQLOLOLOBBPKIWSSIAZfAC": 1, "eWfCDBOSVIHQcaMEAbXcTCaIbSXT": 2, "HWAFYTbeYSSEdaWYO": 2, "eRQDdOCcaIXMTBEJISDaPdMIbQbAEDJeeKe": 1, "HWAFNRYWMVbXEQJaVWMDHe": 1, "TPOaXGPTGTbUEXODPFDC": 1, "PPXGSCZFRURURNHPZAWe": 2, "PPXGSCZWPHDDZKPSCMBOHIcHOReeYaAFZKXe": 2, "dJLGHFBddQFQcEDeNPYZIecO": 1, "NAREFBCdEcXUFcNQFBNLJHYYfPHe": 1, "BHDTJdReQHUYPUAdQMWXZSPDECBKe": 1, "OOIBTVXMAcZEWMMOOdbEWaHePLSIRLT": 1, "NAREFcCcCcCDSRKBNHNdBaaafECHTeUVIZdRRT": 1, "NQEDAURAfPMVMIHVHYQSUPVTNSHNYO": 1, "YdXfCDWOOSCaIfWcUXWAcbEDGXe": 1, "GCNJFZdOaBZCSZYXMPXMRUMVMXT": 1, "OTfdASFGWcOCbABHTcTHPGMYKe": 1, "PcVFHMPaSdIeZNNAFLWEZfeKe": 2, "HWAFNRTKeeZaWe": 1, "bQGBOEIKZdJWXFZEVJZbDHe": 1, "HMbBQbFFDfaVcPFXbOdUMJaCNHUHe": 1, "OMNNSfCSRBDcNPbfVMDXAWEHVC": 2, "NAFQCJWZUbGQDaYfXPRQNCFeZIJDNSNC": 1, "fdJcVSdMWZBNaINKVTKe": 1, "cCHObIVIADIBNGSdONbCNLOLOLOBFO": 1, "ABVYUaXBOFYCeVScXQOVPACLO": 1, "cCHObCBWaEdIPPSfDcAZdJAINLBBVYNCRe": 1, "NAZZIfQAZFLMTeECUSDPAABGXIZLTKe": 1, "bdPBQRSINfAONWeDeRTLcffPFDUC": 1, "HMbVAGBOXBaXfMPXcRUSCZC": 1, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZeKKWe": 1, "aXTfOFJZMYeKTcABVYUHTQZTQUERBdSMHBaWQOHT": 2, "BPHMAZTaHPVAecNfEYYRQfSeHO": 1, "aaOCZFRYNYaKEeUOHSeEHNPVT": 1, "HMbVacDNOdRSCXJNBOFO": 1, "HWAFNFRWEZffTLKGBfC": 1, "OOIBTCATAJRXJOeBLBbPTPAOZEVC": 1, "HMbMdIXdfdTFeSICZeQPXUXZePBOFO": 1, "IZVGPRFfEDdeZOHeYHe": 1, "eWfbWNZOdLUObUANTVacDYO": 1, "cCcCcCSYAETfZPHcGRNSVZLWZHOfTDCeIXIRUXEHbC": 1, "eWfCDBOSMVZALOeERbISfXPRQTDCOOJMFVTXSLfPIFXKeKe": 1, "OATBaYHHHUSFKCTPROET": 1, "YQecaXYRJLBWHcdXUC": 1, "cCHObCBWaEdIPPSfDcAZdJAINQLOLOLMWHT": 1, "HWAFNPIFddWPPKFLFLNKe": 1, "ZcSIcceNRXSTQLeZdSPINUdNPIHe": 1, "bZWMZfHbGdHSeONWHWPaDMWXFZEVC": 1, "TeIdJEYNZeYO": 1, "AfPcCWbKMDNdEHXdRT": 1, "UETTJbZWMZfPGOaYdBGQIZMO": 2, "PPXGFRURURYNNZWdZBSeLT": 1, "dLYHMRFeRQLOLOLOdQUVRJHVPHVdNHRO": 1, "HMbECYBZSBVKbXJbebZGRGEMEaXGbRbBOFO": 1, "EGTUSGbIXRRBeaLdFMO": 1, "HMbBbOUOOJVfJFYNSOPLXT": 2, "fXGWdJHBHVPHAYRKZZAXZLO": 1, "AEUaYPZPXdMOfHYKPJUcdWCZAKfKdCHT": 1, "OaaKQZZMcBfFdHMZQbDNFMYCeVDbPaT": 1, "HWAFYbIeIPNQBDVRGCMRXZXe": 3, "dLYHMRFeRLPYKDcdDdONOefFNeJMBHOeFZOFHe": 1, "cCHObXKeZKVFGUVbOMNMTaRbdFIaYYfPHe": 1, "BCdGNePeEBAcUYNTQWe": 1, "INLYANAadONebEJJHMVGZUdSUHTRLdYFMdcHe": 1, "aWQOcYTBbdbDNDQVO": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUdPC": 1, "HCZVFaNPKGUJeaILYJO": 1, "eDUdGVdNEKDBGQKWOOZIZKe": 1, "cCcCcCFRZIAKQUPMcZSATQdEHWXKe": 1, "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "aXTfHAEDdUJFUFcUKMBKVZMYCISIBBO": 1, "OaaKLXcCHHRHaNALMHWadMbHAcLRaO": 1, "INLGPMPSXPBccFRSTELFKWIFdCYO": 1, "OMeRQDSSGDMRCaTCIFcNTDCaePMZABQVT": 1, "eDSdUbZRNWBOfWVWNYO": 1, "YTBYNJXCcfTJXNALYPfdTSPWPHDDWe": 1, "YTBaXEbQFPIEEBBcFPIWJbHFRT": 1, "AEUaYPZZTLbeTQHFHDQISPJXcEBC": 1, "HWAFYbcZTTdWABTXNPUcCHPLecO": 1, "aXTbSFYTBHMHHVbReIYBBVYUYNaXfLSKDBMdeVaAFZKXe": 1, "ODREGZNbJAEceEDdEdaWYO": 1, "YdXfCDWOOFeJHUWEYcZbIKdFHfCTAWDbfKe": 1, "BIUJLMJVfNabFXFBcEbJVKfLWe": 1, "ODRdHUYScXQOVZXPOXHeCLJUTGCdNWQIXe": 1, "aXTfHAEDCDWOOFcYBVaXTANZGCdQEKSHMRQSRe": 1, "HWAFYWMdEDRYFJYbTSZQMASWe": 1, "NADPFBbSFcFXeUNZNDbDAATSZIJIRASaYSJeRT": 1, "TeCOeJcIXEQRbCACaWNLMBUIPbVaKbNVCMIQZfAC": 1, "OMHBABKHUcKPebBGZUdcCGZMWcbTFNeKe": 1, "TfNZeFcCWUNJZPAEGMObFQTXWDTWEYcZGO": 1, "fTZaTaTaBYNZSINSQcaGKRRT": 1, "bQGBPZdOWcaTJPabSWUHbDORMTfLT": 2, "HWAFNeOYFWUJNVPNFO": 1, "HWAFYDEZRdZbVeUZDYeJIRBcVSHT": 1, "bdPeBHMaGNYYcdHZcNSNWeDeRTLcffWe": 1, "INLAFPKGUSVGPLLFKWILXcEQSQQHT": 1, "NAFLSDdcfeJJNWWNRJGdAFZfC": 1, "NAFQCJWZUbGSRaPSZXeCFNZWOEXKQLNJC": 1, "HMbVAGaGbZEeeTYSCZC": 1, "HWAFNeOYFWUJNVPNSXKFKe": 1, "NAFLfOdASUTbFIMNFedZUDcJPae": 1, "ODREGZUTPTUaDSKBZVKFPaDWADWRe": 1, "NAREDMFXeSCNZWMVC": 1, "bQGBVIZdRJGINYTFIYaXROZdHUNcHe": 1, "febdSANSGDJQaCRbNZBUfJDVSKe": 1, "NAFQCJWZUbEXROEccQYIMdUTWfbGQDaYKe": 1, "NAFLeOeJdLeQeOYDESKfXdfdTSBGcfKLAEdNJLTBPTLKGBfC": 1, "PcVFHMPaQHDDZECEQcLPLBGVPLeaHIKAHXe": 1, "eWHMbNXGDJdeJBcKZJAUbcARJfaNbLWZHOaO": 1, "HWAFNeOYDadJJYJO": 1, "HWAFYDEZRae": 2, "AdZZBOSdQZEdHOUbIVFGWfdTUC": 1, "ZcSIcceNWSUIQeYBPJTDfSMTVYXO": 1, "GbQUJWPHDDPWVaTOAdLXe": 1, "OMNNSCZFcNFMYCeAWIbAaLFSeKe": 1, "IZESaZEYZDEbeNBZXTQeFXUFcNQSYSBNaKe": 1, "ABZJJHVSAaNCWLPVIRPLFGO": 1, "BHDTJdReQHUYYOLEaMNcHe": 1, "OOGbIWSGAQdOBPBOIVNJJSVZGGO": 1, "aXbSbcOQQVWXdBGZXeNLOLOLMO": 2, "NAFLeOeJdLeLTfVCdGESFDCGVKe": 1, "OMNQEDIKELcNQKAENUEcDCacUO": 1, "HMbVVGBadQAQIZbWNWe": 1, "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "HWAFNcLPLWITMSYNJUeAUCFcNcNKe": 1, "HWAFYDHIWDbKIdDZBdPUDZSMDIaUDdWe": 1, "bLEBBVYUBUAZNdMAZdJAINRe": 1, "aXTfHAEDdQZXDOXFAHNBGPfBKWbWOOC": 1, "HMbBONPbaNYVXbdYeNeUZWNWe": 1, "eWITPOKSKBZNVVbcOAIEcNVFCHC": 1, "aWQOcTEYDMYEPHeOZTZdDC": 1, "IZALOLOLOCDOHJPBJXBHAPFPMdFO": 1, "BCTHeUAFfffXMPLVJGKTJVJBBPbBfC": 1, "aXBNTfZHYHQDVCXdUFDeTQQVDaVYEO": 1, "IZVaCQLOLOLOECVVDJYMTSJYMTBNFecMEO": 1, "HMbBXafdZeNTTSbWNWe": 1, "UETTJcbTYUSCSXIeIPLFbAadJRe": 1, "IZbREZVPTLKGBfROQFJDDZCbMOVT": 1, "HWAFNeCTZGWJSJPaXfIbOYRLCFC": 1, "NAFLfOdASUTbJNNFQHWVDdZRO": 1, "cCHObTULHfAFFQZcVIZdRJcCcCcCC": 1, "BIUJLMFPAACJWMdIKdFHaO": 1, "OOGbIFBUNHDeHeIeNRSSIBVXLT": 1, "HBAERdOPRaffXJHSWedNDeQfFRWe": 1, "INLYMNPPWGTSJRNYSbFXRC": 1, "cQHYYfPYJWcRXQFVYUYWTMcBTTEVC": 1, "OTfdASFYTSUaRQMeBYaebCNZeOBO": 1, "OaaKQZZMcTcZdIAAVVWaIIacMSebdaNCFeLT": 1, "NVSGZdFDLOEaXCfAOCeTeBZEWWe": 1, "HWAFYTfbacWCcKbOFHe": 1, "IZVBEHbVFfFeNDYTUET": 1, "eDSdUfPPART": 1, "OOIBTVXMAcZEAHYcTEfWe": 1, "HMbdGFdKAcQJFfHPSOeKe": 1, "YTTHbXeeVbSccbHSGVZKefACLO": 1, "AEAFSXZCTPMPMADDbddQHT": 1, "HWAFYDEZRdJaWYfTRe": 1, "HWAFYAFPIEAZSAZBdWTNC": 1, "AEaBVcYSYeRT": 1, "IZVGPVUfEFKYOeeOZbNFbKHDHT": 1, "HZUacMUIAZdJAINQZQNBJfBMIZebWNWe": 1, "HWAFNHUeRFKZbTZWKNecfZIVFZWPaDMC": 1, "BCEQAeMZeEOHGZGbDYZICFLcbAUC": 1, "aWQOcfEWaZJAJTONIO": 1, "BHDTJdReQLOLOLOVZMYCVCMILRVVPKLZcO": 3, "HVUBYBBVYUADDbdEcLcDNOLVYZET": 2, "bZWOdASUTbDbeAPCbAeTSKe": 1, "HWAFYRKGCbGNMQMLPSCTaMO": 2, "ZOBJZGTUWfaYYfPYTbGNEVdZOMO": 1, "PWBJfbHXSceIbZRAbVcXdXDNEXKQLNJC": 1, "BPHAUaLEbOMFcZScTSDGISGaXe": 1, "NVNZYeJKTYSfOUGfNQELEUZSHeWaMSeKe": 1, "feaSLAZWAcFCNBTLEKXJYXT": 1, "NVPOFJcfFXPGWATUZSdcFHbcRe": 1, "BUHBNHDbUTPOfFRC": 1, "aXbSbcBOXBYWYHbIODIVVO": 1, "HBAdWABTXNPUZaeUFDQYT": 1, "NLJZCEQMULaDAEKKSLcSEO": 1, "INLGPZHLEZObTHT": 1, "HMbMdIXdfdTRKdSDeSeZBOFO": 1, "HWAFYTbYCJRLLeNcEVC": 1, "HWAFYWMVbXEQFBYCMYWe": 1, "BHDTJdReQHUYYOLEaMYWHT": 1, "ODRdHUYUBBCWbVBaMEAKe": 1, "bQGBNPBFDHOIVBAQbHGAXJNbMSXe": 1, "NAFQdGFEYKcbJVaYHbJcdYWTJUWEVWNCGVKe": 1, "HWAFNeOYSCaIbNfHZHT": 1, "PcVJZTOeTFVHPPYQKZabbUSUTIZQXbLVWCOOFPdaDHWFZDNLOLOLMO": 1, "cCHObARLOBADEGaadHKKAGMOOIBBO": 1, "ABVYUYNaXTbQGNQJSFVfEQIJceVSRe": 1, "HWAFYYYRKGCaRXLMLRSUPRe": 1, "PPXGFRURURYTfeMcHBcGcIJKae": 1, "PPXGSCZWPHDDZWDFbC": 2, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQPBOFO": 1, "OMIZdFSXIHERdabCTHO": 1, "cJUJDRSLQKLdaRO": 1, "fefSKeEFcIADWHCDUFYQXUZC": 1, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKWPHDDWe": 1, "dLcXJeITPMObVcKYO": 1, "fERFYeVQIVOMbEC": 1, "PcJJZGHMDALKe": 1, "NAREFBCCUFFWeARfDRaRTCKWae": 1, "cCHObVZMYCAFFQZcNKNMC": 2, "cJUJDRSLQKLeNcEVC": 1, "ZVLLBGVPLWCHBRfOHfKXNWXFZEVC": 1, "OMeRQWNAdBRUDaXdRT": 1, "eDSdUaSdFaLbFSMWdTXJbFbRILT": 2, "bOcGcCEaLMJeVPDdCATWbWOOC": 1, "IZVGHHPAJdSeEeCeDC": 1, "HMbTWVdNHWNOOdeBVOSZWNWe": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSRe": 1, "HMGLLFCeRbLMTBLLFGO": 2, "aaAJYBARWSECRAOAcEUC": 1, "VVOcTWYWZSVbaBZUHZJFaNcCXKFKe": 1, "aXbSbcYWYHfAJYWYHacCbcMLaC": 1, "HMbKAcQJFYDTeCFEDYcaMEAKe": 2, "ODREWQcbdbfMHVTWRGNVBUKcTKe": 1, "eDTANZCLVXcfSJbQFdMdbDcHDQITFSYYBae": 1, "IZVBEEEJPMZeFTWePWe": 1, "YTBUIHOdAHFJcGEUcIJKXe": 1, "HMbVacDNVZNMPHVC": 1, "aWQOcTEYDCMYWfDdMaRIScdeUKe": 1, "IZVGPVUfEDdeZOHeYHe": 1, "NAFLfOdASUTbDIdJcCJYOccCVDeKaNeWbXMbdRRT": 1, "HWAFYEETfYPadLCcAWTWMRPBMO": 1, "HWAFYDGGBbdFO": 1, "dLcXJeITPMOfIWe": 1, "HWAFYBfPDBEDHIWDbKIdDZBXCEC": 1, "IZbREZVPTLKGBfJebYFHMPHeVBae": 1, "PPXGSCZFRURURNWBOabFIRZZERT": 2, "bdZSAccTXYaWHFXedFIaQYaC": 1, "OMTVBENNFZFJFRLRGO": 1, "fXGWMQcCVKLLNeMZeEOHGGdOAGROXSZFNYC": 1, "OMHMbEdeAFSVAaT": 1, "NVPOFJaNLDEINHSIVRBWe": 1, "HMbVacDNIXQRfAeQNQbWNWe": 1, "ZdZaYPZPBQJbLbOMFcZLWZHOfAURAfPVT": 1, "HWAFNRNFSUCDBae": 1, "TfNZeFOBOZFbTVQWaHNBcQYIMdUADDbdae": 1, "ZdZaYPZPTLKGBfSKBZVKFPbXZEBLcVT": 1, "aWQOcYTBOTfdASFbLYUbQHYYfPHe": 1, "HMbVZVCGCcYTET": 1, "ODREGZUTPOOOCaJebTZWKNUMEJXO": 1, "YdXfMOfDHCOLZBaQDfIOafVHLeNBLLT": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1, "HHYPeNfEfFOWOVVLRZYLOVae": 1, "bLTQHUNWARfeSAAECNdHJeaILYJO": 1, "NVSGZadWIRcHINeCeQcJZedWIbAaLFSeKe": 1, "GCSXHHVQIZDFJNLcOdPDXSHAFfIVNRXMFDFaT": 1, "AEUaYPZZGbBXafdcaNYCLUWCPFDUC": 1, "OLBEJVIcVOXT": 1, "bQKPWLVRbYTVMeOSMeSNaKe": 1, "NVSGHKLOWWbBYOWEaXCfAMO": 1, "IZVBBVYUBUGKSGdSYO": 1, "HUJSESQUPMcPXPRQAURAfPMcCcCcCC": 1, "aXTbSFYTBHMHHVbReIYGYfPNPcRXJdDBKSaTfRe": 1, "eDEMfSJbQJQRXZVUbQPBHHUHaO": 1, "eDSdUbKHfGBeTC": 1, "BPHAUbWNZXGOXUSHXT": 1, "bQGBbNXGDJEENLAcQaHNfLTRe": 1, "febdSANFRWdNHIQWPHDDWe": 1, "NAFLfOdASUTbJFJYBaQcWTNUC": 1, "ZdZaYPZZGbAKXVGDPfQeFTcZJLCZBNcC": 1, "cCHObTYWeLJFaMEAbKCBZYfNOQIXWYO": 1, "NAFQCJWZUbGSRaPSZWeAQPXPRQXKFbGQDaYKe": 1, "AEAFZdTYMIaYfPHZVUfCRe": 1, "VVOcNNDdONBBLXOQFMYCeVSCJXXT": 1, "HMbAURAfPMEPSUNCMJbcHCGWVUNZdeLEcaDfecYTET": 1, "HZUaQJdDBKFfHBVScYAZdFFLKSBCHDUQWYT": 1, "HWAFYWdPKeEeWXe": 1, "YTBHMbAaBcHOGZWFfRbdPNZFZeaPQQDIVXO": 1, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZXNRe": 1, "aXbISHcAaZEYbJeDIBLGafAPeHT": 1, "XdKYEaEALMHWadVCMILScXQOVWe": 1, "OOIBTKMDNdEPDGYWHFfdQQXEScXQOVWe": 1, "IZVBETWRGfOJbVZTUPUOeMO": 1, "cCOTKBcIXEQWFPQLQBBO": 1, "NAFQVUNOdOKBBIUJLMJLBWHcPTceMbVZEHe": 1, "BPHOMJURJbcIUeBXe": 1, "adUTWALdFSUCKVbceVPWXdAOVAZdYINGaVC": 1, "NAREFBCdEcXUFcNQFBNLJWe": 1, "HWAFYDEZRdJfdHdFeNfRDHT": 1, "OOGbAZAdFcEDJIAdEKQRVJEBYJO": 1, "TDUCDBOSEbWcXAcDTdUEcZIeZMC": 1, "NAFQdGFEYKcbJVaQWBCYbSVbYSLbKAQGGLT": 1, "HMGLLBLcMMeHGFceEDJIaYbIUONSQecLUBO": 1, "PPXGSCZWNOTEbWcKZIXXcffWe": 2, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWC": 1, "cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe": 1, "ZOOKTfGCbLFcDUMAPYTcHVPHVFCcVTcVAWaWe": 1, "YdXfMTXEUDdULEFDVTbVSCWQQWe": 1, "bQbYWXFZEVWKMTUBVXaCNFNADPFDUC": 2, "GfHOUbeKKPHcVScZbeKRJdPC": 1, "aXTfHAEDISIBTINLbeTLQSQZRO": 1, "YdXfdKNKNKPZZWLKVHNEQfKCUKXe": 1, "INQHUNRAZUffECIAEKKUHAbINOffNcUUZabSXT": 1, "bdPTLKGBfFRRCAEXaWJPbCQMWC": 1, "OOIBTVXMAcZEJWcWKVSSZRe": 1, "NAREFcCcCcCFcFFWECHTeUVIZdRRT": 1, "aXBNTfUWRFMeJAETfACQCALZUEXODPCcVIZdRRT": 1, "BCVPeUIeLLWbTUTZCWTYKe": 1, "ODREGHXFZPeZYSHIfDWQIORe": 1, "YWYHaRMSAEWQLTLbRWKPC": 1, "NAFLfOdASUTbRSYEVJDTKe": 1, "OOIBTVXAWbYSVGPLQSLfZDQXKNCRO": 1, "IZdFSXIHERdaaXWXAHGO": 1, "YCObQGWUJXDBWZPOeVSTEYT": 1, "IULDEZREFcUcSTaWYEPBCYO": 2, "HZUaQRSeBcKHSYeGXT": 1, "HVUBYBBVYUMMfEFQTXWDTJKDKaT": 1, "TWfbaTaTaBOMNVRdJbVaAFZKXe": 1, "aDMWRfDSdWUUHfLebbMPAFFLKZLXJOfAdIUFZZcO": 1, "NNSCZWXFGdVacDdMUNPYSbSCZC": 1, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcOUTUKUDZHe": 1, "HWAFYTbVYOIOWAUC": 1, "cCHObTYWeLJFaMEAaYLfDbaTaTaET": 1, "HMbVAGAZTbWNWe": 1, "eWffQLQBTAURAfPMZaeWWUBBEcSCHRAOAcEUC": 1, "NDAFUTUeVPeUIeLREHGJBYLXASKe": 1, "aXTfHAEDISIBTBaFKbdKCFKVeSNdJeCRe": 1, "NAFLSRaRRefdQBTDeXNOAVdNHWTRTfIZKe": 1, "aXTfHAEDBOSBGPfBKWOVZMYIO": 1, "ZcSIcceNSEYKDYWEIFPGUfJIJUcO": 1, "IZBTdFPfBKSAELSXPCbXbSYbcQcDKZVFRTKe": 1, "eDSdUfIMLHLSGDBJbNWLEWXAdZRO": 1, "aXbXDDZNPcRXWcDaHFBddQWbWOOC": 1, "IZVBETWRGfOJbARTKeePUcedJHBVUC": 1, "HOdCLVXcNNDdONTYVOdQeRHfEIEYIbJfEJO": 1, "cCHObVZMYCECVVDJYMNHFRURURHe": 1, "eEBZFJZeOQPPHFBddQSMaRKXBYCXbBHYBUcRe": 1, "VVOcMKMBYNFPdNYKFFTNOUbYfIYOHSedFLKIO": 1, "NAFLeOeJAETbIYBWJcdDTHRNeFfXZGC": 1, "dLcXJeITPMObVcKNMfXLMEO": 1, "NVNZYeJBBYZUeQKBBTZVGO": 2, "YdXfTQNdeAWNTUMKHSYeGIGWRBQZXRT": 1, "aXTaYYfPYLXSOeKe": 1, "IZVWCGTLDEZREATZdSGWUC": 1, "bLEBBVYUIZdDMcMdPFKFBOPdQVMSdaHMVHSGFO": 1, "NAFQCJWZUfRFGdNECYBZSBVNRXMFDFaT": 1, "HZUaQJdDBKFfHET": 1, "INFdBOSEOCMHMZOXeHO": 1, "fEOMeRYLfIKdFHfBOFO": 1, "eWfCDBOSVacDNOFBfDEHJFdLeAWTabSIbLO": 1, "bQbYWXFZEVWKMTUBVXaCNFNADZWNWe": 2, "KHYbYKCUUDNYSKDZSdSUWDaWeVZWNeHO": 2, "PPXGSCZWPHDDZaaNRfXaIRdNRQedFNGVT": 1, "aXbSFYTBHMHHVbReIYBBVYUAZfBcdCBTJZdLHNLLC": 1, "PWBJfbHXSceIfeYINVXTUSGbEXKQLNJC": 1, "OLGZUTPOOOCaJebTZWKNYT": 1, "aXbISHcAaZQAVLBQPeHT": 1, "NVNZWUBIUJLMWGaRBQBAWKAOARGBGQXBKTSdZPOKNCBJZGaDHT": 1, "YdAeJXVNYHJfQAMOfNZDbAefQHO": 1, "OLTWRGNVBUKcTaRbdFIKe": 1, "bQKPWLVRaJebTDHFKUOdZFO": 1, "GbJAHHEdQbTdFVNaDNLFNZfC": 1, "HMbCXJLbBBcPfSGXAFUTUeedHUHe": 1, "INFdCDVZMYCAZbGcINNDaeKe": 1, "eEBZFJZeOQPPHFBddQSMfDYGHbOUC": 1, "bQGBVIZdRJVVPePPSHRReKe": 1, "cQPHbcGRccQYIMdUfEJMFbFUIVTESMCC": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLVT": 1, "BPHMAbFWPJfYYNJBCC": 1, "TZUfdbYfTQULATZdSGWUFRURURHe": 1, "BKATYFRURURYVcTQQDAURAfPMfXC": 1, "HWAFNJfJCQfUJeaILYJO": 1, "IZVGHeCXLHbVFbXUCeeDNQUZARYfYO": 1, "aWHMVKbTBPAAMFMZVAKLZWNWe": 2, "HKBAEBBZRFZBBTcO": 1, "ELSXPeJIPLJPMZWLBebbAPLZDdDC": 1, "OOGbOTdKNKNKPeYTWTUHDFbWHDCSVWe": 1, "INQQMJJHMVGRCfWSFULXcLfIMbIZDFDNCXO": 1, "bQGBBOXBbQGWFBaaeHGGINYTFIHe": 1, "cCEaLMWHFFEaRXe": 1, "AdSRZBMBTVdVPaESLae": 1, "AESVJPMYKXNUJMFcNRfDRKe": 1, "BPHOaBAZTbKCBZeVTNVQJKDKGNNPaGVT": 1, "HWAFNQBJFJUEeRT": 1, "aWQOcYTBBKbVHYYfPNQBUDbVT": 1, "HMbBbOUOOJVfJFYNSOHXdRT": 1, "adUTWVYMcQPACQEKDBGQKWMO": 1, "cCcCcCFZdOaBMWQUIZDHTIcPWIXC": 1, "BIUJLMSYTUFXReEIQWHJNGLTLdFYeVAZdYINGaVC": 1, "eDSdUbUOADfSUdfZeeELSEO": 1, "cCcCcCDPCDCcACOJOMGcBKPGdNC": 1, "TeCOeJGDYLJZGNBeWe": 1, "OMNNSCZDEDdWSXePEaJPGAAQeHT": 1, "ODREGZUTPOCaJefFDEVDWSRe": 2, "HWAFNeOYSBHATYJXAadIJNGae": 1, "OOIBTVXINLcMZNEdZAGBfTKe": 1, "HWAFNeOYFLDUaeVbaO": 1, "NAFLeOeJOQeOYFCRFZMbYWMPSYaET": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcWCTZQWe": 1, "bLdLOLOLOINUKVacWXT": 1, "aXTfHAEDISIBTBXafdZeYO": 1, "TDOOMUcCaaVRRbTXO": 1, "HMGLLYANAadMKZLIOGdCXOEKe": 1, "HHYZeEfEYdMVZALOKTKIObIYUXRAXZcO": 1, "AEUaYPZZGbdUJFFSfLXT": 1, "AEUaYPZHSQFUUHSUebQTZOUdTC": 1, "OMTVBENYScXQOVZDOLbFZVGAZKe": 1, "HCZANHDdLYJPCSIdTKeFHKZYDDOLBZTSWe": 1, "OOIBTBBLXOQcQBcPbZIVFGWfdTJbHT": 1, "aWQOcPOKHRFIFaTJWe": 1, "HWAFYBfPDBdRWMPNSICDdDSdVLT": 1, "BHDTJdReLGPRbdDXBWBKIeZYUVLcbdYICC": 1, "TPOaXGPAJcPJYXQWVeADPTHO": 1, "cCHObVZMYCVKKMadMUPORIPBLAUFRURURHe": 1, "ZOOCfXVQEEMMcQeaREPYFMZZCLVXHT": 1, "ODREBdFCSDWLKTPBXLAHSLdaRO": 1, "VVOcTRYZLWZWORTeCISUZEYYEO": 1, "dLcXJeITPMObDQKIUC": 1, "HMbVAGfFaMLOQHUHe": 1, "PcVFHMPaNKXMWBcAeSZcbdfIPFDUDTC": 1, "bQGBbQGWFBaaeHGZOTPceYWDFRSGQCBYKe": 1, "fefSKeEFKMBKXIeIPQeJOPRaZOHbDNQLOLOLMO": 1, "ZcSIcceNJVGGZYfPXPRQdQeRHfCRO": 1, "NAFQCJWZUfNBVCBZSHeWaMSZXeCFNZC": 1, "NAFQOEfSPMHBcCcCcCDRUWFLcVCBeMBXZeKe": 1, "HVUBYHDWNZGSRaPSZeDUHYbVSKHRbdFIKe": 1, "aWHMVKbTBPAAdKLREcNBdEdFaGCfSCZC": 2, "HOdIICNBUPFDUSUICFceHEVFKMBKAPVFfC": 1, "YdXfBYbWDbQMdEWGPOAcET": 1, "PeYJYJbVHRVVCScKFCJBYEXe": 1, "TZYBETfTWefPZXDCJFABKIWe": 1, "dDfPJcbWEYANAadTDCaNUUDeQcJUXO": 1, "ODREGZUTPAaNCWLUSIKFO": 1, "NAFLeOeJOLcLcDMbZfFccRVT": 1, "cCcCcCFZdOaBdSTNJKSCYSeHT": 1, "YTBYNJXCcTFDERXC": 1, "HMbTYWeLJFBBaMEATfedGbUZWNWe": 1, "ZCaDMSGOHBTDOOMYTBaDMC": 1, "HWAFYTfDHCOLZIHSHFTdbLcYFPWe": 2, "aaMLFXLYSfDcHaZFYWEIFNVBUKcKe": 1, "AdPcRXUDEDOeWFeTKEcLOIWe": 1, "INQHUYZIEPfLEZXZEcSaERMJDWXVXeRe": 1, "aWQOcOLQQPFYcAQFJO": 1, "aaMLFYEcNfDbAHLSGJO": 1, "YLXASfBPbdFDOeecbXAKe": 1, "HCZANHDdLYBEZOXGFDVCMILfPJaAKDKe": 1, "eWfaYHIeJYKabWTfTLKGBfC": 1, "ePCefAEaMCVKGPQLQBTdCYO": 1, "TPOaXGHFVVLYZDTZULAQdOET": 1, "NADPFBbSFcFXeUNZSOIOFSbLJbWRC": 1, "IaaVGGeaYPZZXeMFJKeKe": 1, "eWfbUTPIFbNXGDJEHJfNYTFIYREHGWXdIZDFC": 1, "OMIZbRdWSYRQYAbLMTdBC": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLPQBTfUIaNZXQYcO": 1, "YWYHaGfZOIZUEXODZJODKdCYO": 1, "HWAFYTfNOSTUZXDCJFfaNbfFTUZSTHT": 1, "eDSdUbJARGZaaNRaO": 1, "MRLQeIJDORMTfFOOIBTdLXbWe": 1, "VKGcCcCcCFEeNdDYBRXZXe": 1, "NAREFYTBacTTNAIOFWC": 1, "OMGfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "cCGaYSdMbYSfcdReLbFZVGAZaYYfPHe": 1, "eDTANZCLVXcGbXHWbXaTFKGHNVLZHT": 1, "aXTfHAEDBOSMeEfEITNPfaSdBULQEWHQHDDHYYfPHe": 1, "ZCaDMJNGLdDJIOUIUSVOZGBaHRGFffRSCZC": 1, "HZUaYHUWeJUBZHXJcaT": 1, "OMIZbRdWSYJIAdEKQRVRT": 1, "OTfdASFBPIabKeKeZQObdSVQZRO": 1, "dLcXJeITPMOaMO": 1, "BPHAUfXAPEJPECHTeUZUYaTTUC": 1, "HCZANHDdLYBYXBafISWESVIAFET": 1, "BIUJLMJVfNabBUUCIJDWHWOEXKQLNJC": 1, "HWACcMLaUJMFRTaWNcDfaNKe": 1, "fefSKeEFcIAWJSFOAGWdKNKNKWe": 1, "HWAFYAOEIEYXT": 1, "aWQOcYTBbJfEDdGUKCMeIKdFHaO": 1, "bQGBVIZdRJGINYTFIYaXROZEBBVYYT": 2, "eWHMHOWDDXBYHNeEfHcIJDeQcJUXO": 1, "OaaKLecTYSHJAHTWTUZdaIOHT": 1, "BCTPFeZKUIFcJYeMHRNQMWSCCCHJDTbNeHT": 1, "IERBfaNbIUONSFOOIBBO": 1, "dJLYMNVePbTQRTWZBNZGEaaWPROUIHeBAVZKWe": 1, "YTBaXAZfLdPcRXUFIMNWLdTC": 1, "aXbXDDZNPcRXFMMCKBaaSLBBVYYT": 1, "HMbOKNIUALcGKMFdHUHe": 1, "ObUDZMULAFEJKaEcaMEAfdSRfAAXe": 1, "AdZZBOSINSQFSBUNJEREcbJfEJO": 1, "NAFLfOdASUTbWTHNODZUBGScSUHHVPZC": 1, "BCVVWaIIabUNfYaAFZKVcbRZSAcQWe": 1, "HWAFNZWAdOZHbZC": 1, "HMbIZJBANFMPQSTEDFaTbYBXe": 1, "ZCOBeITPBRWe": 1, "eDUdGVdNKEBXJNSVVWaIIKe": 1, "cCHObOOYKYYaDcOdJeaILYDdKNKNKWe": 1, "BPHMaKBbTYWeLJFaMEAbFJGO": 1, "HCZANHDdLYBYScXQOVZUdSUHTRLBJASObEWWe": 1, "bdHFBddQWRHZGSNdDSCZC": 1, "GCSXHHVQIZDFJNLcOdHKLYZWdKYaFPeNWOEXKQLNJC": 1, "PPXGFRURURNFZFSOHeHQITC": 1, "PWBJMeHGSMeSNafXPRQVGNfMRCaVeKe": 1, "cJUJDRSLQKQScVIQHNMbZfFSfDGYUC": 1, "NAFQCJWZUaZeKGEOIBfaNKe": 1, "AEAFPQXRaeZCLDbUTPOfFRWXFZEVC": 1, "bQGBVIZdRJGINYTFIYaXROZEPYKDcdC": 1, "MeHGWcWZTDUZXbSYTUSGbVeKWe": 1, "HMbAURAfPMPfSWBJOTXNAHUHe": 1, "YTBIZERWfbYXMPBUDLC": 1, "NVNZYeJbFMOFIfGOaYdKTHHfIXbBHTNCMC": 1, "fefSKeEWKMTUBbQGWFRURURHe": 1, "HBISNFZFEUXPNMPKUGO": 1, "bPFYTBMWOOVZMYCIXQeMEbaO": 2, "NAFQCJWZUbXeCFNZJRbYWVWHWOEXKQLNJC": 1, "cCHObdRdJJXRDVMDTEHAFPRJdUDEYIbaTaTaET": 1, "AdZZBJOTXNOQZJFJadMXbIPRaO": 2, "ZdZaYPZZGbMQfIOeZFNZRO": 1, "OMYNaXTfFfDeHZTSRFdGCWae": 1, "bQGBbQGWFBaaeHGZOAcFMBRNHUHe": 1, "NVSGZadWIRcYbEfcWbQTZOUdTC": 1, "PcJJSJIRADMPIGUO": 1, "eDXJNSacQSSPXPRQMbHAcLRfdAMTXEUDae": 1, "aXBNTfUWRFMeJAETfACQTPRXUTVTaRbdFIKe": 1, "NAFQCJWZUbaaNRfAKfKSceNECYBZSBVNRXMFDFaT": 1, "bQGBPZdOWcaTJHRDOeOMTXEUDae": 1, "cCHObVKKMadMUPXPRQBQMdBfDeLdEBJWPHDDWe": 1, "YdXfCZNTaYPeYdFHWPbTPFeZKUIRCfPXeC": 1, "cQZJALOdeEEBFfZLMBUXCEWPHDDWe": 1, "HWAFYDEZRdZbVeUHFAUVcIO": 1, "bQGBVIZdRJBCJLWRHZGSNMTXEUDae": 1, "HMbARYfTeBZEWeZMRfYSbSCZC": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUC": 1, "YdXfTHBfPSYNJcHIfXIVXSKTNC": 1, "dLcXJeITPMObDSDHe": 1, "eDUdGVHbAMUWPaDMWXFZEVC": 1, "YdXfdKNKNKPZPVAecNfEHLeNBLFfZWLKVHYO": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYXT": 1, "NReaHfUEYYPOCXDOET": 1, "HMbMYOdBXRBefPGLKcZAHUHe": 1, "YdXfCDWOOSYeJYdXfMOaLERJDTOeaNRe": 1, "eDTANZIICNAAREaQRVOZXQEBJGdYO": 1, "BKbVZWNZJFGbREfHYYfPNFFO": 1, "NAREFBCCUFFWeARfDRfEOLKe": 1, "NQEDIKELcNQKAENUEcDCacUO": 1, "PcJDDJZGOXT": 1, "OOGbIFBUYRCOMIMEfTQUETQWYQSYHWVNMJO": 1, "HWAFYHVRFeRLeNGTOJERXLMLFSWe": 1, "IZENYPERAMDBcPOeFYeMOKe": 1, "NAREFcMEbJObYZffQLQBBO": 1, "PPXGSCZFRURURNRYZWDOCYKdECHTeUVIZdRRT": 2, "OaaKQZZMcTcaWQOcZbFHZRTYC": 1, "UaDEQSTWeIRdTSEOUWDbXLLXNWSLT": 1, "HMeCJHAVXSADORMTfFTdYVPEQDENDdNC": 1, "ZdZbaTaTaBBUcJPQfQAYfeDIVaKEcNTBPWZJae": 1, "OMIZdJNQcBBMHO": 1, "YdXfCDWOOScWJcEWNEJYBMFFO": 1, "adUAVYCdFNLGZaPQQSRPWdOQRTKeeHRbdFIKe": 1, "NVNZYeJeVYPXPZSMdbDcMWQYT": 1, "bLdHUNcbdQNcRbZEQDPJRWe": 2, "HWAFYEETfYPadRWSEUNPLHJdFO": 1, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWJCVXGUaXEHT": 1, "NAREFBCAURAfPMcQYABKdBSYOVT": 1, "bQGBbQGWDUNRERQZPPLafDeDC": 1, "ODRETYeYCNOSHeCXQcaNYCLUSUZLFcFJdRKe": 1, "HWAFYYNcJC": 1, "HWLMYCBYabdSOBNSJScFHRe": 1, "cQDJGPHAZaSdVXSADcTBZLO": 1, "PPXGSCZDDJLHFDIHcFITC": 1, "INLGHUDSJNQQdKBUPfECIAEcOHT": 1, "aXbSbcOQPCPRWXdBGZXeYBBVYYT": 1, "ZOMTXEUDdQbHVEZYUaNZAZOHNBJOTXNAFBOUTUKUDfAMO": 1, "UYIBGQXBKTSdZPCQCFeONFPZAGaaeRaO": 1, "eDSdUfDXVWJVEFASOEO": 1, "NAFQCJWZUbRSdFQbMDefEWHZPEEZfKe": 1, "BHDTJdReLYOLEaMNcfAHHbfKe": 1, "ZdfbDBXSCFPCWOXaZPfYeHUHOBNHC": 1, "aXTfHAEDISIBTEVHWEcTNFEYTWXKYSSdadFQRMeXcVQSRe": 1, "aWMeaHfYFHNLVBHVDBEXaWJPGO": 1, "aXTfHAEDBOSdQZXDOXWXKYSSdadFQRMeXcIFUWbWOOC": 1, "BOefWZJEdcAKWQQadeOJATXT": 1, "fefSKeEFKMBKEOcYRISUaPZdMOOIBBO": 1, "AdZZdRdJceOAbWTEQAOFUIEFGWe": 2, "eWHMYTBbdbDNWeIALeUINCIHRJDDXIHERdaKe": 1, "NAREFacBLfPIHYKe": 1, "BbFDRdJcAQDIWSBaMYDNNLTSHaT": 1, "HWAFNRYQLaXTANZPSVWe": 1, "aXbSGNVXNRbDdJTLaKdLOLOLMO": 1, "OMeRQDSFeaSUefDGYUSPJFSIZIBLaT": 1, "HWAFYWMdCCTQOZaDJPae": 1, "HMbVVGeDaZXOTJBETLISOSCZC": 1, "BIUJLMJVfNabMdLERENZDMQPNKTZIKdFHaO": 1, "IZbREZVPTLKGBfFcINGLae": 1, "AdZZBOSBaQDbXDOXC": 1, "HWAFYBEYFbYOdPACLO": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUOaaKRe": 1, "IZEeDdEOdUNdKAZeYO": 1, "eDSdUbSIPBEOOCROEFO": 1, "bQGBAWQNAcQaPUPcDORMTfLT": 1, "YdXfdKNKNKPZPdbYNaLScXQOVWe": 1, "NNZVPXPLKNdQZfFZHDUFYQFMTfcQQCNBaFO": 1, "HMbdJOPFNLcGKXCKZWNWe": 1, "bQGBZabQEPFQFcdFBOOIBBO": 1, "bQGBVIZdRJVVPePPSPDHCOLcO": 1, "aWQOcEFeLHNVVJPALCHT": 1, "ABVYUYNaXTfMPSXZFFfeNJXIHOReeHe": 1, "adUAVYCdIcPWWWeTabZNHC": 2, "HCZANHDdLYBNZfAAEAQMYaNVSDcRZTEUPHdGWe": 1, "ZcSIcceNDSJVGGZYfPXPRLO": 1, "XdKYEGFAZeVNLDJFFKMEcEQPDHCOLZCDWOOC": 1, "OOIBTBGPfBKSOHYYIBPNFMYCeVPfC": 1, "HWAFYTbVYOXKFKe": 1, "bLERMTGDCDHDbfGYUXdOMYaNfLTRe": 1, "AdZZMQMLSWdRdJceBeWe": 1, "eDSdUfYPQBcYZNMdbDcbOLRe": 1, "HMbECHTeUVIZdRRT": 1, "BCEQAeMZeEOHGZGbDYJOUWe": 1, "HWAFNJbaOLPYKDcdJaHIHT": 1, "eDSdUbKHRJRSMDIWLdTNPBNOcXRBZUPGCFJVHWENRe": 1, "OVYHSddeOIaONEVdZXbBPBRe": 1, "cQDJGZaTaTaBIFIZbXDOXDPBFO": 1, "eWHJdAQTEfEITNPffYSYNBdLHe": 1, "HWAFYEPMWIdfYeCIObTae": 1, "NAQGPLeMBBdUfPWRPJVSYZPTBWe": 1, "HVUBYHDWNPMPSXPJJASECdUWBZEWaSEO": 1, "HMbBXafERWbSAPPaebWNWe": 1, "YWYHfUDeATPRXUBO": 2, "PcVFHMPbJARGPXAPEPYKDcdJLOdPOHT": 1, "dLcXJeITPMObdTYMIKe": 1, "BHDTJdReLBBVYUfFdHMaMEAfXafJCfSLT": 1, "HMbOOTWVdNHWTRTfIZbedSHfeRbEfKFWUC": 1, "OMTVBENNRYXcCHHRHbENHKKAGVT": 1, "TDXDPZDcVDFXBeVYHeaABTVZMYCdKNKNKWe": 1, "YRdUWRSAGWVCMIQZZFfJKDKe": 1, "OVYPUQWIbAaLFSebUMeFLO": 1, "YTBbdHbdDEDBcfdFOKTBNHC": 1, "eDdHFENHQYffSQRTWZBNZMdLEBXe": 1, "OAZOXPKSXPPPaacXO": 1, "cQZNDbDAATPFeZKUISYZPTBZbaTUSGGPTSJOeXKe": 1, "IZbREZVPTLKGBfROQFJDDZCbVT": 1, "aXTbSFYTBHMHHVbReIYBBVYUbFDaZDYaAFZKXe": 1, "NAFLeNQQANABaORbDdRJZGbGYJO": 1, "cJaUFIMNSeCXYHMNfUUcJaXJVT": 1, "eWffHbcGRcTeCYbeFbINfHIDJNMTKe": 1, "OOIBTBBLXOLDEZRdZbVeUPXKXKFKe": 1, "eWHMADDbdEcLcDNTVXVGMVXATRDJbfMRTKe": 1, "GfCDATBfPbDACAJSWdfYeNGJC": 1, "ODRdHUNZWODDRYGPCJKDKaT": 1, "HWAFNLOLOLOOAJeKZBfaNKe": 1, "OOIBTBUNJEREcZbeKRJOIZCBKeJVIZdRRT": 1, "INLGHUDENVLeFOfMQcCVKLLHe": 1, "fXGWECYJeVYSWeUKXYPMC": 1, "OOIBTVXOCZBKeJaDCCDFQFaLdPeGYO": 1, "eDSdUfbbdTYMIaDFcIAC": 1, "NAREFEJKaEcZGccARTKeeHRbdFIKe": 1, "ZHCDCaGbXDWPPNeJfebBGSEbdETfHFBOLO": 1, "AZfHAEDBOSAKYBJYeEIBPNZWdDJcXe": 1, "dLcXJeITPMObDSDYPVIRPRe": 1, "HWAFYfEeNSBZQXKFKe": 1, "BIUJLMFPAABdeTcRJUCHVREHGC": 1, "HVUBYBBVYUfFdHMTafPXPRQEdeXe": 1, "BHDTJdReQHUYYOLEaMNSUC": 1, "bQbYWXFZEVWKMTUBNADPFEfbMTXEUDae": 2, "OMaFEcSOLBVYYdRT": 1, "eWHJdAQTEfEITNPffYSYNBYTET": 1, "IZbREZVPTLKGBfFQTXWDTSVbXQSdafbOCJO": 1, "ZcSIcceNJMFcOeQNUPGUfJKDKaT": 1, "HCZVFaNPBePYXeeBGXGOcbNXGDJae": 1, "GfHOUbeKKZafVfLeCaceYO": 1, "AdREFdJEeRKTMObIUONSQecLUTBYKe": 1, "NAFQQAFJZeOQZREKdZCJVcTC": 1, "IZVBEJTVFbXUCeeDNQUZARYfYO": 1, "bQGBPGJIMADXDcVVPePHYYfPHe": 1, "MCIAFKKZaTaTaBBUUaXKe": 1, "GCSXHHVQIZDFJNLcOdZSAcJHDFXXccBPKe": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1, "cQZJALOdeEEBFfZLMBUXCEFRURURHe": 1, "cCEaLMRSLTSJEHbCGVKe": 1, "OLSHIfDWBZEWaSdVLC": 1, "HWAFNFHQVLHT": 1, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRNRfTUKe": 1, "AdREFZbFAYTZTbeQfYUXCEC": 2, "HWAFYWMdAHdJQVVTHVC": 1, "OOIBTVXINLcMYNaXTfMZKPHOUKe": 1, "YdAeYdHWNOTMeAZcGcZUbSBLXe": 1, "aXTfHAEDdUFFBSBbWUeMJeNBLFZbFKMBKISIBBO": 1, "fefSKeEFNGBGQXBKTSdZPMGEJYO": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVaNdCYO": 1, "HDDZOWNdOZBYTZcYWHXGWe": 1, "AEAFZMdLEccGSODKPWcVIZdRRT": 1, "TeCOeJcCOTKBMEWLWXAEPfeZDaGaCGbbHe": 1, "ZcSIcceNSEYKDYWEIFPGUfSVGPQQCXHe": 1, "aWQOcYTBYRYNZQdOFfQdIKGPAMXT": 1, "aXTfHAEDBOSVZMYCBaFKbECHZfYCNHQJYNBaFKbdOSabcTBHYYfPHe": 1, "IZVGHeCXLJTVFbXUCeeDNQUZARYfYO": 1, "NADPFBbSFcFXeUNZWPPLbSIPRLXe": 1, "BCBaQDbAMUVbCefAfdRe": 1, "aaMLFHSWedNTUQODPMPSXWe": 1, "GCSXHHVQIZDFJNLcOdHFOUJPNSIJNGEfZXXddOERe": 1, "ZcSIcceNJNbdKCFKVWXATRe": 1, "BCEQVScXQOVPFOJKDKaT": 1, "HMbVZVCGCcOOIBBO": 1, "IZbREZVPTLKGBfWKcBcaMEAbaTaTaET": 1, "HWAFNWTCUZceNGTOFceHEVDVRGCMC": 2, "fTZaTaTaBfFdHMAZfeGEEC": 1, "fXGWCafXJKDKaT": 1, "TZUfdbYfTLBbPTPdKNKNKHUC": 1, "AdZZBOSVacDNdQZEdHOUKe": 1, "NAFQOVLScXQOVZadBeDVeUWe": 1, "INLGPfECIAaKLHPPYHDESeRQFKYOeUO": 1, "AEAFSXZXdGVDZSdSUWDbCTHO": 1, "OOIBTBJcQEcNNPadLXe": 1, "bQGBVIZdRJBCJLWRHZGSNCDWOOC": 1, "HWAFNLTLAYDNHOeWWGO": 1, "cQZUdSUHTRLYANAadIeZNMKdSQbZET": 2, "ABVYUaXEbQFPIEEBBcFPIWWeDfBAKae": 1, "HWAFYWEbCbcEJKaEcfaNKe": 1, "NQEDBcRJFBESWMXCEC": 2, "HOdCLVXcNNDdONINSQFSUCKVSVJPVT": 1, "NAFQCJWZUbGSRaPSPZBSMGaFNRdScYAZTRe": 1, "cCcCcCFLFHaZFdGdfTIEBFUINHC": 1, "HWAFYTfDHCOLZEJaKFEIHT": 1, "AdZZBOSMPMZCBKeJHWAJLGbbeRe": 1, "IZbREZVPTLKGBfWJSJcYaQWEYcZGO": 1, "BPHAUfXAPEJPECHTeUdeUbTZWKNYT": 1, "HWAFYDHIWDfSMHOReeHe": 1, "BCEQAeMZeEOHGZGbDYadFAPYRCEYedMcET": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUYTET": 1, "HWAJLGbbeLRcVDeeEFEIXUZOVLBQcDffdVO": 1, "ZFNTefbBTJNGLERMPJNNDPSVT": 1, "OQHUYGNdMGDZHXJbNXGDJae": 1, "OOGbIFBUXOVAZQXaTFKGHWNZKTQIZKe": 1, "OLQQRTWfBNQKSQPCcCbPdBVGWe": 1, "HOdIICNBUPFDUWBZcZbeKRJbJfEJO": 1, "OOIBTCeMJYGIHRbdFIKe": 1, "HMbVZMYCOeVKGcERQTfWcYTET": 1, "aXbISHcAaPdAHFeMbFDaPKIC": 1, "OMaXaePLSIRSHT": 1, "eWHJbQEJNCYWEYcZbBOFO": 1, "cCHObTULHfAFFQZcVIZdRJOOIBBO": 1, "cCcCcCFRZIAKLRQaDHOeWWbedQDIVXO": 1, "EGTUSGbEJHIXT": 1, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQHO": 1, "OTfdASFZQfBJATNWXdBGHDDESWOGVO": 1, "NVNZYeJeVYZXDMUBdAURAfPVT": 1, "eWfaYHIDJNMTbXUCeeWXFZEVC": 1, "HWAFNUVSZNZZJRZaTKe": 1, "cQSXZaTaTaBfFdHMcQYIMdUAZNdAYfNKOVCMIRe": 2, "fTJXNCSLFJZZVCBOPQORHe": 1, "VVOcNNDdOVZMYCdcQPUZCBKeJfQYLO": 1, "BCEQAeMZeEOHGZGbDYWCHPJDIFAfPBHT": 1, "OMbMWcMdFRGbQfJNGLdDJIOUIC": 2, "TDXDPZWORTeCISUPYJOaYYfPHe": 1, "bQGBVIZdRJVVPePPSHYYfPHe": 1, "HMbKdFTHXSWEYcZbMSVXMPBOSVfFfZdOUcO": 1, "HWAFNeOYSUaecfbVCMILScXQOVWe": 1, "IZBTdFPfBKSAELSXPHTaSWVacDTRTfIZKe": 1, "PUTKdFfUYQNUTEYDVZVCGIOOIBBO": 1, "cCHObMKdFEAQdOBfScdDRfBSdKNKNKWe": 1, "HWAFYEEJWcRXZXe": 1, "cCHObIVIADIBNGSdONbCNLOLOLMO": 1, "aXTbSFHMHHVbReINWXXdVLNUUJNMcTHT": 1, "OOIBTBUPFfFFTMAOebQAC": 1, "MRLLLZcVXGXBONSLT": 1, "fTZdEYaSdNELZHDeFNZNFTUQODWe": 2, "eEBZFJZeOQHbUMIffSQJNZQVfLeYO": 1, "HMbVAANFTeSUbENHUHe": 1, "bQGBANdSSFHPLPBQGMcNBOFO": 1, "HWAFYDEZREFYMZTULHfYO": 1, "AdRYZDEfVCfLPJCQfC": 1, "HMbdfOYFfdXUDPBSBOFO": 1, "TZYBETfTWeaQHVbOSKGO": 1, "HWAFYDEZRdJfeVAXNLaUNQJTedPUcYO": 1, "febIUONSFHBOAIEcVIZdRRT": 1, "HWAFYDEZRdZbVeUZDYbIeIdKWFHcKdZJVVWAUC": 1, "febdSANWBOfYSYNBMbfRKIMbABOfPGLKcZXe": 1, "eWHMHMbMFJQPYVQOCaGGTUSGbHXe": 1, "HMeVKJeGMXNZQMeYJNNQeHT": 1, "HMbICWVZEdMODSOeecbXAbWNWe": 1, "bQGWZUYaTTDcTBeNDZSdSUWDbWNWe": 1, "INFddKNKNKPfECIAEZKebJARGWe": 2, "INLYMdbPDGYUJIVO": 1, "YdXfdKNKNKPWZJdUQWTCUZZAUGO": 1, "NAFQQAFJZeOQHNDTRYWMDHe": 1, "bdPBQGObQPZPUOOIBBO": 1, "HWAFYPNLINBdICOXHe": 1, "OOGbIFBUACBYQLJCaGHGabaUJBEfdfTRe": 1, "HWAFYScXQOVPOZJSSZdTYMIKe": 1, "AdZZBOSBBLXOQFMYCeVSCJXXT": 1, "ODRdHUNZWODDRYGPCJKDKGNET": 1, "NaMPOUbAKeWJafdOLYdTWObYNYUO": 1, "NAFLeOeJOMOLJKFQMbZfWQIXe": 1, "HMbBLKBRJVBGVPLRQKe": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPJaAKDKe": 1, "OMNQEDMdbDceMHVPHXe": 1, "eEBZFJZeOQPbbFCeaPLLedRJcaT": 1, "cCcCcCDPCDCcACOJOMYPNdeBVOSWe": 1, "eDSdUbAPRYDaKFBfTIcKe": 1, "HWAFYBfPDBEDHIWDbKIdDZBdSNOYRLCFWAUC": 1, "HWAFYTbSIAWTWEUcSbWRWCHJWe": 1, "HWAFYXMHO": 1, "VVOcNNDdONVacDNdQZEdHOUKe": 1, "BCEQAeMZeEOHGZGbDNZJFRHJPNOGFO": 1, "BKOAZbbMVaIBWVUZWHSUHePLSISWIPPSfDHT": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLMbQGUIO": 1, "NAFQdGFEYKcbJVaYHSKUAZJAUbcARJcQAGO": 1, "HWAFYBfPDBEDHIWDbKIdDZBAWTWMRHcWIMZIbYO": 1, "ABVYUaXAZfLdPcRXUJdFCDRTYC": 1, "IZdHUNFSUCKVBAWeIALeUINCIHRJDJO": 1, "HWAFYBfPDBdLEaBXe": 1, "YdXfMOaYYfPNFfQIYWYHKe": 1, "ABVYUYNaXTaXHBYeNTDVXORe": 1, "HWAFYdeRQdCYO": 1, "YdXfdKNKNKPZPQPIUFZZZBYKe": 1, "HWAFYTbDOLbeTSLdaRO": 1, "OTfdASFAdJYcDHBdJUKeYEGWe": 1, "cCEaLMJXbJZbQLOLOLMO": 1, "eWHMBUTURNKZDPIXNDbQMASPNZFZeaPRe": 1, "cCHObIPPQFFNcUWBZEWaSddKNKNKWe": 1, "aXTfHAEDdUFFBSBfWfecNfEDEZRdPcRXUWPHDDWe": 1, "aWQOcYTBfFdHMePCefAEREHGSXVVQaWe": 1, "YTBYNJXCcNGEcHZFGLNZZTDCeMJYGIeKe": 1, "HWAFYeNMZSPDeHbLae": 1, "HWAFYYNQBWFKe": 1, "PPXGWPHDDZKZdKNJMNbcSXcRe": 1, "cCcCcCDPCDCcACOJOMGcZUYaTTC": 1, "OMZCBKeJfFdHMAZTfTLKGBfC": 1, "HZUbWNZAABfWcDaebJRXFYO": 1, "UaDaBAdLeVRfXPRQIbNAURAfPVT": 1, "NNSCZWXFGdEaJPGAAQeccdNZDPBSBOFO": 1, "bQKPWLVRbYTVMeOJLBWHcbFMOFIKe": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIcCcCcCC": 1, "TeCOeJBIUJLMFQcGDZHXJNVBUKcKe": 1, "IZVGZeWRBfEDdeZOHeYHe": 1, "NVNZWUHVSeAcfeJWGaRBQBXRAXZZXIVXSKTNC": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCIXVKZYZAZSGaDfeHT": 1, "OaaKLRXFeSICZeQcJJIaLKKVWLKTRFO": 1, "AdPcRXUJdDBKSdEDFDedPUcSKe": 2, "TZUfdbYfTLBbPTPdKNKNKWe": 1, "cCHObKdJfFdHMXCEFRURURHe": 1, "aWQOcYTBbJfEDdDFQTXWDTDcCHfWe": 1, "NAFLfOdASUTbJGOGcYO": 1, "VVOcdLeLWCGTLSdMWSOZEdHOUKe": 1, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "NAFQVUNOdOKBBIUJLMJGOGHaZFTeeLFXGDNYcKYO": 1, "dDfPJcbWESSIdFDSPWLBeTfecNfTXC": 2, "EUXPNMHfLebbMHSWedNDeQfYUXVaKBIecO": 1, "aWQOcOOIBTdQeRHfEXNUGUSHMaLMJYJbVWe": 1, "HMeCJHAdKeWUEEOdXNWfNJOET": 1, "HWAFNeOYJMDIfXILMSBSRe": 1, "HWAFYTfVEdFYRZOFHBUBMDOHQC": 1, "HWAFNeOYFWURFCUBQae": 1, "eWfIFVNRXMFDFaT": 1, "HMbKdFTHXSWEYcZbMSVXMPBOFO": 1, "eRYZDYDYOIKdFHfVfFfZdOUcO": 1, "HWAFYTfbacWXT": 1, "OMNNSCZSOGXCcZCBKeJbWPXXO": 1, "eDSdUfIZaPXKMdbDHT": 1, "BIUJLMSYNCedPUXdOMYbSPcC": 1, "adUAVYCdIcPJeaILYDTPcOUZaPXPRLO": 1, "YTBeWfCDEaJPGAAQecVKfBLWeDZQNUTEYMO": 1, "TeCOeJNHRSLTFIQNNDZVVLLXT": 1, "eWHMBIUJLMDeLOaBYXYTPBAeNZBTBNFecMEO": 1, "aWQOcYTBTEYDcYdYFMdcHe": 1, "ODREBdZWTQCGVTaWeVHJefOBMXT": 1, "NVNZWUHVSeAcfeJWGGZTLGePTWHT": 1, "fefSKeEFKMBKEOcNSZBeLPHYYfPHe": 1, "HWAFNeOYSGDMSCaIfXfQYT": 1, "YTBUIHOdVLBLBGVPQWIbdPXILMUC": 1, "cCHObIPPQFFTaNFbNXGDJEBBVYYT": 1, "bLTLSHIfDSfdFSSBHHGGPFDC": 1, "ABVYUaXAZfLdZGIGPZAWe": 1, "cQZOdAfbXXddOERe": 1, "NAFLSDBJWbOEfSPMHBaVTbYHbUTKe": 1, "eWHMaXbSbccJaRBMRPdHdFeGVIZdRRT": 1, "bQbYFcIKSCYbcINHJNbOVVTYABOFO": 1, "YdXfBOSTQTHBfPWLIZSVafVAPBWHAcLRfMHSUZGcBHe": 1, "HWAFYTfeZLHaO": 1, "TUSGGWMPAZSEQPDcYWEDPeaHRbdFIbUdYSSae": 1, "HWAFNRWMPNSMYPPHZVaUAWTWMRWe": 1, "HBOAIEcOGdCMOKe": 1, "cCHObECVVDWPHDDPRbdDKVZNMPHVC": 1, "dLYHMRFeRLLCBLTYSDSAVLQWFKe": 1, "GCNJFZdOaBZCSZYXMHO": 1, "abPPWaZUAAVfDfNZFZeaPQeFedFKUddVCUC": 2, "bdPBQRSINfabSWUHbSGeFTYceMTXEUDae": 1, "BPHAUbOJNOBYBdYQaWe": 1, "aXTbSFHMHHVbReINWXXdVLNUUJYO": 1, "HMbKAcQJFYDTeCFEDYcaMEAbWNWe": 2, "bQGBTFJNGLTLBGVPLDJZbDYBGVPRe": 1, "GCQKEaAJDbJANafabSWUHbDORMTfLT": 1, "HCLeAeMUbZFVIQHNVCOBYPQBTbedcbOWSUISRe": 1, "BCdGNRAZYGccEbeTLaAFZKAUdRXMFDFaT": 1, "OMHMbEdeVZVPKGC": 1, "eEBPBJFJZeOQPBOBTUWTNUC": 1, "IZALOLOLOCDOHJPVCMILEEBXe": 1, "IZVGHeCXLJTVFfFeNDYTUET": 1, "aXTfHAEDBOSOPRSAeUDUKVZFWbWOODPBFO": 1, "PPXGWPHDDHUDUdQRNLQLAVIWe": 1, "fTHYPMPSXHSdNBJIREVC": 2, "OMIZdFSdWPDGYUC": 2, "NVNZYeJGdAFZfWHSVCHCTeVUbQWe": 1, "YZPTVOBDREeZKRVDMbTFAecbLZBdLHe": 1, "AEHAFPRFRURURNFSBMBAWTWEUAZfXAPae": 1, "ELSXPeJIPLeQSAESPMEZaPXPRQdDWYO": 1, "HMbICWVZEdOeecbXAbWNWe": 1, "INLcSaERMJDJFFKFZEHe": 1, "PcVFHMPaSdIeZNNAFLWEPYKDcdDDSTSEQGO": 1, "fXGWdUSYZTNReKfaKAOOVT": 1, "IZVGPRFfEFKYOeeOZbNFbKHDHT": 1, "fTZaTaTaBYNZSBJIREVSGDMSdC": 1, "HWAFYEEBAQTJPAcSfCSRBRT": 1, "HMbVXSAWXaUSCZC": 1, "TeCOeJPLSPMKPEcBBMWQUeZOPXTbBWBIbQTNC": 1, "ABVYUaXAZfLdPcRXUJeaILYDCTBVKe": 1, "HWAFYdbFJBGfIKe": 1, "PPXGSCZWNTPFeZKUIJZTOeTWXFZEVC": 1, "dLYHMRFeRQePeEBARCLFNZfKXe": 1, "eWfaIDJNMTabUHRbdFIKe": 1, "OMIZdFSUCKVBVYYdJTAcHe": 1, "AEAFPIPBcdCCWMTdKfXJZKNFbfBAC": 1, "HWAFNeOYJXAadNONMOKe": 1, "OMTVBENNQASXVVFNVBUKcTaWYZfefYSbC": 1, "cCHObVKKMadMUPXPRQVLBQLOLOLMO": 1, "OMNQEDOeAFaITUZTZCCQJET": 1, "YTBYNJXCceEDdEAXNJCVXVVUC": 1, "aaMRYBENYceJJVaCPfYHNPVT": 1, "feaSLAZWAcFCaNOcMXRfBXO": 1, "BCTPeMQIbNXGDJEEFHeMaJPSffUUGXKe": 1, "HWAFYRKGCfeZBNUcO": 1, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBDORMTfLT": 1, "HCZANHDdLYBEfQYOUZJKYIYZEVSTHe": 1, "NVNZYeJBBYZUeQKBBTZMcET": 2, "dLYHMRFeRQLOLOLOMLTbYIPfZBVXVLCOJdFMC": 1, "GCSXHHVQIZDFJNLcOdHeHbBGbbeLBXe": 1, "NAFLeNIJSeZRBUfFAeFHOReeYbOMFcHYKe": 2, "HWAFYEdJbRYWLbQVAHAbWTKe": 1, "ZOMTXEUDERZYGfHMadYJJFAYTZTEYfDeZBUSIRDHT": 1, "OMHMbMPMZbDUXAYHNEbHeFUSeGDPNZRO": 1, "fEOMfdbQdRIYdXFNPIITaYYfPHe": 1, "IZdFSAPVFfSOVHJaMEATKe": 1, "YdXfCDWOODCSVZNbIUONSFbYLT": 1, "aWQOcYTBACKbCQMQRe": 1, "BCdGNePeEBAPIFddeOIKe": 1, "HVUBYPYKDcdJdDBKDcIBaMEAbCTHO": 1, "BHDTJdReQLOLOLOOTdZBSeFdBfUPcC": 1, "YWYHaGfZOIZIVSEQUEQERZYGGeTC": 2, "IZbREZVPTLKGBfSUaecfbVCMIRe": 1, "fXGWdUFEZaZLJHPLcSaERMJDDdWe": 1, "HWAFYeNcEVC": 1, "BIUJLMFPAABHeUNfGYKaPNZFZeaPLaAFZKXe": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCTPFeZKUIWcaICNRGLT": 1, "AEUaYPZZGbBQMdBaFRYBJeEdUdZAXDKfKdXT": 1, "dLYHMRFeRLeMXFZdTYMIbYTTNZObbC": 1, "IZVBETWRGEAJbARTKeePUcedJHBVUC": 1, "NAFQCJWZUfLeHGZLDeVO": 1, "BKATYFRURURYVcTQQDAdELHaO": 1, "ZOBJZGDYeUaHBXLMSPRSQcfOEbMUO": 1, "HMbOCaJeaJERObWNWe": 1, "NAREFHSCLeNIJWHSGQZacIJSBSRe": 1, "OMeRQWNOTOOIeZNBAFVNaLUbQWe": 1, "PWBJbeBaSPTaFIfMSJQFBBBcQYAIRKe": 1, "bQGBHaZFTUbERVedSPDLfOFYBBVYYT": 1, "GCLaYCKdFYFcCbNBOPVKFESTEYT": 1, "OOGbIFBUdWKZGddfdLYVRT": 1, "aXbXDDZNPcRXFMMCKBaaSLGYfPHe": 1, "cCHObMKdFEAQdOBfScdDRfBSCDWOOC": 1, "HCZEIBSYPGTPdUFSbeCJEXcCHHQJbHFRT": 1, "eRYPCfPZNJdQSBGeGddAbDPOHET": 1, "OTfdASFGcEJDKBRUDbYHRYKe": 1, "NAFLSRfdQBTFNRaJNVTUNfFHe": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "aWQOcYTBbJfEDVacDdQeRHfVCMILaAFZKXe": 1, "OMNNSCZDEDVacDIHSHFBO": 1, "NAZSNMKQKDJIHRXMJGBcNBRUDKe": 1, "HWAFNeOYJIJUcO": 1, "IZVPVIRPLeUMZNYRBaGRe": 1, "NAREFEJKaEcBUGCQAECHTeUVIZdRRT": 1, "GCQKEaAJDbPXKDfabSWUHbWPHDDWe": 2, "PUTKdFfUYQNUTEYDVZVCGIcCcCcCC": 1, "AEAFSXZCTPVLWLdTC": 1, "HVNKdFZbDdUYKe": 1, "fefSCOJZfIZZRAbOOLVBHVaMEAKe": 1, "aWQOcYTBfBZVNLbMBYGUXe": 1, "HMbBYYDdWQZQBOFO": 1, "aWQOcYTBYROdMfNLHSdDWe": 1, "INLGPZPfECIAEKKUHAbECHTeYT": 1, "bQEWMdCPYLaALSGQCdBC": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUFRURURHe": 1, "HZUaQSYeJPOKHCcZQLcO": 1, "YNaXTbXdUFDVXVRIYLT": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdWe": 2, "aXbXDDZYfEYdMUcMABVYYT": 1, "cCHObVKKMadMUPXPRQVOPdUXFRURURHe": 1, "GfHOUbeKKZaaNRfBaFKbdKCFKVAFUJC": 1, "bOcGYAZERMZVBdWBObdKBQGMZMO": 1, "TVLLUbELBbFDNCKBUYLAIO": 1, "NAFQdGFEYKcbJVaQRSALZPIeANIHfCcMLaC": 1, "eWHJdAQTTWYVYIPVZfWe": 1, "bQKPWLVRbYTVMeOJLBWHHT": 1, "adUAVYCdFNLBdLEccZHEHFDcHOReeYaAFZKXe": 1, "BPHMAZTaHZXbSYbcLFcXAFUTUUO": 1, "IZEZVPKBZTJVPfOXSdXMDDBARGRT": 1, "OaaKLRXFeSICZeQcJJIaLKKXe": 1, "eDUEcBIUJLMDPdWZIXXcffHHAcZMC": 1, "BCdGNQbHVEZYeNbNEIIYIEbFRFeQEHT": 1, "bQbYWXFZEVWKMTUBNADPFEfbCDWOOC": 2, "GdNIXCPTBcRZdbXdUKLaDWVcJNZGCOeFKebAZOHYO": 1, "MCIAFKKHYYfPNQAJLHFDdUUC": 2, "BPHMAZTaHPeZBNUZMYXDcYEVfdZRO": 1, "VOffSLYANAadKBFPTcAATIMZMTWGO": 1, "aXTbSFHMHHVbReIYaaTLbFFceHEVJZdLHNLLWXFZEVC": 1, "IZBTdFPfBKSAELSXHXSHFdVfWIHCAdPeHT": 1, "cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET": 1, "aXbXDDZNPcRXJdGTTKdWZEYBBVYYT": 1, "ZdZbaBBUVOIPBdGdfUFbWHC": 1, "HWAFYDEZREPVIRPQJbSYT": 1, "ZdLNKZadWIRcNHTIHRXMJGET": 1, "HMbCTYAaZZWIeXUJAFSCZC": 1, "YWYHbLSUMUHeBMNZDJefDcfCeEUbQWe": 1, "AdREFHZUfFfFcYRQKe": 1, "UETTJbZWOIXYBYATKBTEIbeRT": 1, "YTBHMbEKBeWecNfEVSGFGZJESeHT": 1, "HMbVacDNOdRSCXJNBOSMFMZNdCLYNZNZAGWe": 1, "aXTbSFYTBHMHHVbReINLOLOLOAZfLdPUVIZdRRT": 1, "HWAFYDEZRdJbENeDBFdMOPXYJUCeae": 1, "OOIBTVXOCZBKeJHVPRbQfXJHMPHeXe": 1, "HWAFYEdJbaOLUELMbBNLHZEWYO": 1, "ABVYUNNDEDdEUEGTUSGGO": 1, "cQDJGZaTaTaBYNYeVacDYO": 2, "OOIBTBBLXOLWCGEfJcfNWOCeMJYGIWe": 1, "BCEQAeMZeEOHGZGbDNZJFRHLLAC": 1, "fXSMLfdJHBOXT": 1, "HWAFNSGWWWHFQZcVYYNcJC": 1, "eRYZBQEKBeWecNfEDYOTDEIbeRT": 1, "NAFQCJWZUbGQDaDFXXccBPKe": 1, "eRYYUBIUJLMSKBcUVDYMO": 1, "HWAFYBfPDBEDHIWDbKIdDZBTfNZeLT": 1, "HMbECHTeUbLBZC": 1, "ZdZfDHCOLZOTdfdRWSEXAbAJQTQPWZcYPYO": 2, "PPXGSCZFCROQFSdVbCLJNGO": 1, "GfBQDAMeUCXJYSGHAEUZSTTAIaO": 1, "eWHMHMbMFJQPYdNHWKAfPIdOHcIJDeQcJUXO": 1, "NAREDMRSSZWEGPXPQScGcVYcPJPae": 1, "TeCOeJOUeUNfEANCNIQNNFHeBQUdQadeORSLTFMeHGC": 1, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKFRURURHe": 1, "bQGBbQaSINacMSZRObOC": 1, "NAREDMDRPbfcVDaaVcbRZYZWHccNZRO": 1, "bQGBXVUcESGQCdEdJMO": 1, "ODREGZSIebcGZcVTPMVScfZWRC": 1, "cCcCcCDPCDCcfNYbOEYRAbYPbbTZWKNYT": 1, "bLTLSHIfDSfdFSSBHHGGZWNWe": 1, "VVOcTWYWZSVbaBZUHZJFaNcCBaQDabHaDHT": 1, "TPOaXGHFVVLYPJaAKDfZHcOUfFPbQfC": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLcPDYVWZFKbPLT": 1, "eDUdGVHMLMJdXMRfUWXFZEVC": 1, "ZOCDWOOSfdQaUSHMEHTNHT": 1, "INLBdRAZUffECIAEKKUHAbINOffNcUUZabSXT": 2, "OMeRQFCFeaRXUbZFLMZGHCTRdIeMeOXbbFJFC": 1, "HWAFNRTKeeWe": 1, "OMaFbFDaHYbAHcMSPWZJae": 1, "YdXfTQdeAWNdfXe": 1, "OOIBTVXINLcMYNaXTbXMOXQXVcKYO": 1, "HMbVacDNVAbcYTET": 1, "HWAFNeOYDUMAPYXMHO": 1, "cCcCcCRDfUFFEPQBaYaOdbLXaRIYAeLT": 1, "AdPcRXUDDFXPSAGRHDC": 1, "aXbSFYTBHMHHVbReINLOLOLOINLSdMWSOPdFcEBcGKe": 1, "ZdZbaBBUcJZKCBHXGFbAGebDCSLSEQFZfC": 2, "HMbVZNOSPDTLLFSHAMCMVXAAHASCZC": 1, "IZbREZVPTLKGBfWPBZOC": 1, "ODRESfPeSEYHbAeaWNZCTALVT": 1, "MCIAFKKZaTaTaBcJPQORYPOHMQMSeRe": 1, "OaaKLZfefIMLefBcdCBTFHZRTYC": 1, "adUAAdCYcPSBVHSCGVbaORe": 1, "IZVGHeCXLHbVFfFeNDYTUET": 1, "HWAFYSGPcVDZBTUbERVNUESGQCdeBVOSWe": 1, "cCGaYSdEfEITNPfaSdFaLbFJNTeNSfCFADeKe": 3, "HWAFYRQfUUeDUfeSXfZdfVCMFDSFSWe": 1, "IZBTdFPfBKSAELSXZMdLdRMNURe": 1, "cCHObVKKMadMUPXPRQAVWPJSSAZfAC": 1, "YQKSXPTLKGBfSOEYfDeZNMLTKe": 1, "BCVLBQFeaSGMWZNAOOMNXC": 1, "eWHMcCcCcCFKJBKWUbPNadSFbTdNDNSNC": 1, "BHDTJdReQHUYYOLEaMYYXO": 1, "NAZSNdKLfOKFXbaCEUMKAaFYNQcfEIRbDXe": 1, "bQbYWXFZEVWKMTUBVXaCNFOOIBTBFO": 2, "UETTJbZWMZfPMPSXPSePAVaRKZVVLT": 1, "OOIBTVXINLcMNQKAENJHe": 1, "HWAFYWMdVZMYCEKKEQfKCUKORe": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 2, "dLYHMRFeRLPYKDcdFceHEVFIMNSePTBPeGEEC": 1, "cCHObMKdFEVbFZVGAZaePLSISWTPWIfcdVT": 1, "HBOMHJSORBYedLTebfcUO": 2, "eEBZFJZeOQZGfeAQJTZdbfZFXAWDOCTKe": 1, "NAFQCJWZUbXeCFNZFQTXWDTSCUbbC": 1, "HMbCALZBYeRKTTWZcYTET": 1, "fefSKeESfBKQKAVULcMePKXGGFcCcCcCC": 1, "HMbIXQRfAeQNQaAMCMVXAAHASCZC": 1, "NAREDMDRPGOaYdEKeBOZWDJDTKe": 1, "cCHObVZMYCAFFQZcbNXGDJEbOMNMTbYIPfZET": 1, "IZVBEJTVFfFeNDYTUET": 1, "cJNSCDOTMOBfSfVSdQfLCcVNJJYDdfae": 1, "bQGBIUeBAHUZeWNZJKbIYUNfSeVSTdTUC": 1, "dDfPSBAcfLHNVaIDfRJLYfZYaO": 1, "OOGbIFBUMEfTQJNDYBFKYOeeIKdFHaO": 1, "HMbTYWeLJFBBaMEATbWNWe": 1, "ABVYUNNZVPXPLSdMWGMOIaMEAbKMPAfWe": 1, "cCHObECVVDDORMTfFbRZFJGO": 1, "OQWBObadWIRcOfAcQaZJCNQOVTLdaRO": 1, "OTfdASFXOVAUVSZYdFfGEXGO": 1, "YTceTUDVRGCMJPae": 1, "OMIZbRdRMQIfNZFZeaPQWSYC": 1, "aWQOcHKdXdDPNDJdQJEcTeKHMeTC": 1, "BCVLBLKNYVeeefEXLO": 1, "NAFLeOeJAdUKDbecMLaDBMdeOMWe": 1, "bQGBPZdOWcaTJZSAccTXYaWHC": 1, "NAFLeNLSSIBcbTYUSEKBeJcJUJSVCHAPFHaO": 1, "fEOMdLHOAcFNADHcKdZJVVUSCZC": 1, "PPXGSCZWPHDDZIYBRSEAKSFPXe": 2, "BCdGYBERBdSIFeDaHXFCVCGIZMO": 1, "NAREDMDRSLQKQYENJePBdEeZONZXPKbSJUAFET": 1, "BCEQAeMZeEOHGZGbDNFKFbbYPQBTKe": 1, "OMNNSCZFcYWCGEbIeIPHe": 1, "dLYHMRFeRLBBVYUTDXbEATZFPCSOONC": 1, "NAFLeOeJdLeLTabcNVDWQIVBbFC": 1, "bQGBTFJNGLTLBGVPLDFCWPaDMC": 1, "OOIBTBBLXOLXEOBTUSPJXCHT": 1, "NAFLSDdcfeJRSYEVJDfdFcae": 1, "dLcXJeITPMObOVKGaFEJKaEHT": 1, "NAREFacTTNAIBaFOXT": 1, "OOIBTBBLXOLDEZRdZbVeUPXKECHTeYT": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUWPHDDWe": 1, "dLcXJeITPMOfIPJaAKDKe": 1, "HMbdcLFCeRbLMTMZUJBaKFBVKQPGO": 1, "VMITcZJLCZBfaNKe": 1, "aXTbSFHMHHVbReIYBRRCaSddQeRHfAFZfWZffIKdFHaO": 1, "OMHMbBLKBRJVBGVPLRQKe": 1, "GCSXHHVQIZDFJNLcOdHFOUJPNSIHHZIBHXCbfZVO": 1, "YTBaXEbQFPIEEBBcFPIWRQYAPHe": 1, "eDTANZVVMMeHGDWLfEZfJfQfPIdOWe": 1, "HWAFYYNQBWFfYSbC": 1, "aXTbSFYTBHMHHVbReIYDEZREAYVaNEbDHFAUADHRbdFIKe": 1, "HWAFYDEZREFYMZTULHfNOKNIUXe": 1, "YQKSXPTLKGBfSOaKecNfTRe": 1, "dLcXJeITPMObdTYMIfJaAKDKe": 1, "aXfGEbfFRURURYAFHSdIeZNYO": 4, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "HWAFYTfQfQAYaFAUADZGYO": 1, "eDSdUfNDJEFVWITRfSCMeRT": 1, "NaMPOFZYHUSUHYYfPYafDeDC": 1, "eWfaQRAOAcEUFQLNHRbdFIKe": 2, "fXGWdUDGNKJXcGBeDdeFCYAOIBZMZC": 1, "HWAFYWMdXIeIPLSKJNGeEO": 1, "HWAFYWLJWcWOTPeXe": 1, "OOGbCDOTAZAdFcEEHJebAHYfWZJae": 1, "BCVRAAOHBdQAUFZbSae": 1, "YTcNPbNffSLBGVPRe": 1, "HWAFYRQTaNVbIeIPNJKe": 2, "aWQOcYTBbJfEDVacDdQeRHfINFPIWBHT": 1, "NAFQQAFJZeOQZXbSYJNeDHFMMWe": 1, "eDSdUfZPUMVBFUZCHQfBSdJRe": 1, "TeCOeJPQPIFdCACfXPRLO": 1, "HWAFNeOYWbSaKVFVYBXYZICFLcaIdTC": 1, "HCZANHDdLYBYeUINCdWbYdJBTaJBeTC": 1, "aDMRDfUFFEPQBaYbTQFLGHOCUC": 2, "cCHObXKeNJAbAHdZWdKNKNKWe": 1, "aXbXDDZYfEYdMUcMOOIBBO": 1, "HWAFNQTbVSGNVBUKcaZdPLeNLae": 1, "eWfaQRAOAcEUFKYOeeIKdFHaO": 1, "aWQOcTEWcfBQDPBFO": 1, "ZcSIcceNWNVaLQSHDJKDKaT": 1, "UETTJbZWMZfPAJOBGDIcEbCGHfUNLJWe": 1, "cCHObMKdFEVRVVPKLZZVCMISLDTLZOXJOOIBBO": 1, "HWAFNRNHWMSXe": 1, "cCHObVKKMadMUPXPRQINFPIWBccCcCcCC": 1, "PcVFHMPaQHDDZJARGPXAPEbPXQUJKDKaT": 1, "ABVYUaXEbQFHePLSIRFaRDPHe": 1, "cCPeYGIPeWBKJVcTSdVFYeAcQaHNfLae": 1, "XdKYEaEVTNeNcJPEcObECELHNBOSOJNET": 3, "NVNZWUHVNdQeRHfILWXNGYPFQFcEYYUNZdeLEHT": 2, "HWAFNRYdNHWBOCbbC": 1, "HWAFYEdHeSaeZIHSHDaERVceAHHe": 1, "bQGBPZdOWcaTJPabSWUHbWPHDDWe": 2, "OMNQEDXYeQMMaXdRT": 1, "GCSXHHVQIZDFJNLcOdZeYSSETYcbWEfZXXddOERe": 1, "HWAFYWEQCLBMC": 1, "cCHObMKdFEKXFZEVWEYcZbBNTaSdFaLbFFRURURHe": 1, "OOIBTVXMAcZESHBZEVDZIET": 1, "cCHObdRdJJXCcaWQOcNNOaUALOLOLMO": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPDHCOLcO": 1, "GCLaYCKdFYFcCbNBOPVKFESTEUOOIBBO": 1, "HBbfBAJPNPTDCHT": 1, "GfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "eWHMHMbCTYATbJKYIYZEVWLAAOebQAYXT": 1, "NAZZIfQAZFLMTeECUJCaTTKIKdFHaO": 1, "fefSCODGPIZZRAbOORAZDTRODBNLaPEbBBHT": 1, "INLGPZPFBFKcFYdJVIQYfACLO": 2, "ZdZbaBOQJYcSaERMJDDaVHNPVT": 1, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 1, "aCTPTPeVATbSMcEbOMFcHZLGCCBUbXDCJFOOIBBO": 1, "aXbSbcOQPCPRWXdBGZXeNLOLOLMO": 2, "HMbOHNJObDGVRQYIUYTET": 1, "OTfdASFMNbQMdCNETWeZLO": 1, "AdZZBOSdQPIMLHFAUADWe": 1, "NAFLfOdASUTbJFSEOUWDKe": 1, "BIUJLMDSWPaDMWXFZEVC": 1, "HWAFYBfPDBEDHIWDfQPdDSdVLT": 2, "OMYTBaWQOcbFDaZDNFMYCeXe": 1, "bdPBQRSINfAONWeDeRTLcffWe": 1, "eWfCDBOSVIHQcaMEAaRZEGcCSRPLSEdLRSUWe": 1, "OTfdASFNKNMUJBYdFZC": 1, "eWfbWNZFXFBcEeYTBNZfAC": 1, "cCHObONdPbABJRXTcXCEFRURURHe": 1, "bQGBVIZdRJEUXPNMPdGIHYKAaaXe": 1, "fefSKeEFcIADWHCDUFYQXUZFRURURHe": 1, "HHYPFOWPHDDZFUdJVEFASOdICFHUeUae": 1, "dLcXJcCcCcCJAJOTHGZDDUZXdUFDcHe": 1, "NAFQVUNOdOKBBIUJLMFfVUUADDRHYTKe": 1, "bQGBVIZdRJVVPePPSHNKXMC": 1, "cCcCcCSYeJfaNfPESHbfNFNVBUKcTKe": 1, "HHYPWMPdKZXDMKBQVIaDDZIBPbWe": 1, "aCTPCDCcVIPfLSHeQRfWPbISXWae": 1, "AdeKbOTdfdRMebfSPHIcNLRIGLT": 1, "OOIBTVXINLcMYNaXTbCBPGDDRTYC": 1, "AEAFPKIJSHXdRT": 1, "cCEaLMWCJCCLOHVZBYWbMC": 1, "BCVPeUIeLLWbAZCdVAeFEcNLGZGcBNeRO": 1, "YdXfdKNKNKHUSBAPBRYcFITC": 1, "OMePCefAERXWeDfBAKae": 2, "fEOMbQbeHBcNADZWeAXBQTdPIZSUbEWOTYVOBOFO": 1, "AdHUYWCGTLSdMWSOZEdHOUKe": 1, "febdSANFRWdNHIQFRURURHe": 2, "aXbSbcOQecDKAJDKVHbVDZaTaTaET": 1, "HWAFYEEBVcPDIaSGabRbSFMLaUC": 1, "IZVBdeHHOVFfFeNDYTUET": 1, "NAFQQAFJZeOQZREKdZCFXSTHO": 1, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 1, "UBKeJOMfFdHMbLYBUJcbTdDIXAeMdMSBFOEIEYXT": 1, "OMNNSCZWBZcZbSTBPMaMdAPVFfC": 1, "cLdOKVFJFJcGaNVKMNCSJTeCOMKGWe": 1, "OMNNSCZJVdfUFcNFMYCeXe": 1, "PPXGWPHDDZdSdBTWeWGVUO": 1, "HMbCaASBaRJZMFWBOFO": 1, "YdXfTQNdeAWNTUMKPRbdJNabIKdFHaO": 1, "NAZZAMUWVcJNZGCOeFKefZdJZZHCdEREHGUC": 1, "PcVFHMPbJARGPXAPEPYKDcdJKDKGbPCfUaKBGO": 1, "aWQOcYTBXXQDZBMLaUC": 1, "BCEQAeMZeEOHGZGbDYdaWeae": 1, "AZTaHZeDUHYaXFZPeZYUbQWe": 1, "ELSXPeJIPQJQVVdNZCALPFZHJKDKGZMO": 1, "bQGBfFaMLVSGDOaBANKBYfBQHUHe": 1, "NVNZYeJMEZCPXPRQdDSdAae": 1, "OOIBTKMDNdEPQDCWXIVXSKTNC": 1, "cQSXZaTaTaBfFdHMcQYIMdUaMEAbSAccTXYaC": 1, "ZdZaYPZZGbdEHWXfVTNRJJRKe": 1, "aWQOcTEYDBOSdUWXQBOabcNVDSfAUHcVT": 1, "BIUJLMJVfNabXDCJSESbcGOIVNRXMFDFaT": 1, "YLXASfBPbdFDBPVOaDUC": 1, "OMYNaXTfPZXEZJQaEfWe": 1, "cCHObOOYKYYaDcOdJeaILYDCDWOOC": 1, "AEJPECVVDWCPBfIHSHFTAcET": 1, "aXBNTaUWPWbdfAUdWVADaVYEO": 1, "bQEAHSGVTdWPBQGMZbeKRJdPWKPNET": 1, "NAFQCJWZUbGSRaPSZWeAQPHbQRfAZbaeKe": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "cCHObVKKMadMUPXPRQVOPdUXWPHDDWe": 1, "NAFLfOdASUTbWXGdAecLUTdWNAIKGPAMIGDZHXRT": 1, "fXGWBHIBPLRCEHARe": 1, "cCHObXKeNJAbAHdZWCDWOOC": 1, "aXbSGcSZJODXQEaKdLOLOLMO": 1, "AEAFPIPBcdCCWMTdKfXJdPFAYTZTEFJYGO": 1, "aWQOcdLYHMRFeRQLOLOLOdQeRHfOPRALT": 1, "HCZANHDdLYDEZREUNTWaRJTAcHe": 1, "OOIBTKMDNdEPDGYWHRBcSbAGaaHFEIKe": 1, "PWBJZSMFdWOGVedCFeZIJC": 1, "ODREGZUTPOOOCaJebTZWKNUMEfTRe": 1, "aWQOcdLYHMRFeRLBBVYUZbeKRJTDXbae": 1, "AfPcCWbCNETAEVcTQQDXKFKe": 1, "IZVBEHbVFbXUCeeDNQUZARYfYO": 1, "YdXfMOfZHYYfPYGTUIXfNAURAfPVT": 1, "ZdZbaBBUcJPQGaWeUNSBYKe": 1, "NVNZWUVVOcZFKIbLWeZQMZC": 1, "VObdZZaBTYFGCeCVRJcTfMSPIeKTBHRAEIATXT": 1, "eWfbWNPPPTJEPFWFQcdXUC": 1, "NAFQVUNOdOKBBIUJLMJGOGNGEcADDbddeMWC": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdPIdJBZfUNLT": 1, "HWAFYBfPDBEDHIWDbKIdDZBHRXMJGET": 1, "HMbMdIXdfdTRVKaMUPTLKGBfSCZC": 1, "IZVBETWRGMMfEDdeZOHeYHe": 1, "YdXfdKNKNKHUScWaPCUHMHeIWC": 1, "YdXfdKNKNKPAJeGHSWedNDeQfYUedJYVT": 1, "cCEaLMDdMHfOJZVRPRBLfPdRT": 1, "NAFLeOeJOMOLJKFQVWFQUEJDXO": 1, "HWAFNUPAWUNVXGRcIJXcJcUO": 1, "febdSANQWFaYUNZdeLEcPJZQMIKe": 1, "HHYPWMPdKPOMHBHVPRbQfXRT": 2, "HWAFYEdPKFTdRNYYdVKMSPBMO": 1, "HWAFNRNeXQCaZXALKFTRFO": 1, "dLcXJeITPMObDQKIUDVRGCMC": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "YdXfMTXEUDdeOYSCaIfWcACVVLZPecOEO": 1, "YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe": 1, "NAFQCJWZUbDOQRTWZBNHDFXXccBPKe": 1, "BOebGRZUTVGUVHNPMEUXPNMZKWe": 1, "BKATYFRURURYVcTQQDAdBGXIZRe": 1, "NAFQCJWZUbXeCFNZSEOJcRAdJKe": 1, "THHSODPNGZfSeUHMDMKdFbQKae": 1, "AEAFSXZCTPVVGcHCbXfXe": 1, "cQZQfDafDQNeSbSPSfdeBVOSeKe": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBJfBMXT": 1, "INFddKNKNKPZZGbMPcNVBUKcbSXT": 1, "HZUaYHUFfHBTbHAcUXe": 1, "fXGWOIbLJHPLcSaERMJDC": 1, "OMNNSCZWDBTJXIIUIVBFAPYbIeIPHe": 1, "fEOMfdbQdRIYdXFNPIITfDHCOLcO": 1, "OMYNaXTacMSHePLSIRSHT": 1, "NVNZWUATYDKPHHT": 1, "bLdLOLOLOOTINUFDINFPIWBHT": 1, "IZVGHeCXLEEJPMZeFTWePWe": 1, "aWQOcYTBbJfEDELHfNEIEYXT": 1, "TWPABOSEIDSeWZMfUdOeVKGcEXGJC": 1, "HWAFYWQJJSVHFAUVcIO": 1, "HWAFNJbaOLJDUWe": 1, "OMTVBENNQASXVVFXdKYEaEVaETeDdHWNRHe": 1, "HWAFYbIeIPNQBDUMAPNZfAC": 1, "ccCGCFWRfGASOdMYAMTDTEZVXVdNHWTRTfIZKe": 2, "BCdGNQbHVEZYeNbNEIIYIEbC": 1, "HVPZdZGIGPefbfDGYUC": 1, "ZdLNKZJAEcbFDaPTJEPFWFQHT": 1, "HWAFNeOYDDFFcNRe": 1, "YdXfMOfZPDHCOLZIDeRRITfTLKGBfC": 1, "INFdBOSOTBMBPfRDcTLEXe": 1, "cCHObARLOBADEGaadHKKAGMcCcCcCC": 1, "HMeCJHAIDZVBNZfAAEZWSQZTcO": 1, "TDXDPZWORTeCISUPYJObaTaTaET": 1, "EUXPNMPXKWBFZVLBLafANUYO": 1, "aWQOcYTBcJTPEIFDaHRGFffRC": 1, "YdXfdKNKNKHUFVTELZWDTPMKSGTFBRe": 1, "MCIAFKKZaTaTaBcJPGEbfFeTKe": 2, "OaaKLRXFKOOSZDQXKCQMWWEYcZGO": 1, "HMbKbHGeaQFNHfBQEQJBbeNBOFO": 2, "NAFQQAFJZeOQZdUWBLdFHOReeHe": 1, "eDSdUfRFEOVYbFZVGAZKe": 1, "OAZOXHHHXFZPeZeNSVMPYWbHRTHT": 1, "HWAFYHNTQTNWRfDFO": 1, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "HWAFNWTCUZZOeGDdKFBKIBFBEEEJHO": 1, "aXbSGcSZJODXQEaKEBBVYYT": 1, "cQPHbcGRcEfFbaBYWEIFYbdbVfHPdMcQYIMdUPTHT": 1, "HMeCJHAVXSASeONDTeJNHC": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVNET": 1, "ABVYUYNaXTfIMLHDALDZIBOUdAHLAC": 1, "AEAFSXZCTPKbHGSaEUcYO": 1, "dLcXJeITPMOaOMfXLMEO": 1, "OMIZERWfbYXMHO": 1, "YWYHaUWPHDDPCbJODKPIPODWe": 1, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRHe": 2, "ABVYUaXAZfLdPcRXUFMNJQOOXeHO": 1, "ELSXPeJIPQJQVVdNZTeCFEDYcHVPHAHUHe": 1, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "NAREDMFAEREcZNAdIBdEPELT": 1, "BOeaYYfPYNYHNPMMNIRHcEFeLHYO": 1, "eUFJZVacKdZJVVUWPHDDWe": 1, "HWAFYDEZREXOeFaQae": 1, "YdXfMTXEUDdSYFOLbOMFcHRbdFIaZPEEccaT": 1, "AEAFPIPDGYWHJXdDRALXMHO": 1, "NAREFcCcCcCDSJRNfaQOAZbfHfXe": 1, "INFddKNKNKHbdJMWBDLLXcBaOHe": 2, "IZALOLOLOICWRdGOHHABNaSdFaLbFC": 1, "IZbREZVPTLKGBfWKcBcaMEAaYWe": 1, "OOIBTBBLXOLRIYFTUZSTFZTHReIET": 1, "TeCOeJPQQBJLUUXVSfCSRBJNNfGPCDGHfYT": 2, "ABVYUNAQGPQZZJRZaKe": 1, "aWQOcPcLHFDdKNKNKZGSRaPSZECEFSWe": 2, "OMYdVNNRbGADDBDOLEPBPUJcXe": 1, "BCdGNQGPLaAFZKAUdRXMFDFaT": 1, "BbFDRdJadUECQeWUcVNcbSTHT": 1, "TZUfdKNKNKHbCZIVFTZYBbPTHO": 1, "YdXfCDOTTQVaJNEKSTQIcKe": 1, "eDUdGVdNMHRNQMDXcRPPKECKBHT": 1, "PPXGSCZWaZXbSYbQMUPNZFZeaPRe": 1, "OMNNFHMPdTDJQHSFGJDZTKMbAae": 2, "GCQKEaAJDbPXKDfabSWUHbDORMTfLT": 1, "bOcGcCEaLMJeVPDdCATWPHDDWe": 1, "HCZVFaNZXCbYPTBVYScXQOVWe": 1, "HMbVXSAWXaUJIQNBOFO": 1, "PPXGSCZFRURURNLVBHVRVKaMUHGeFZBQIO": 1, "eDSdUfOSWEYBZJJfeebZHGSIUC": 1, "fefSCOJZfIZZRAbOORAZDTRODBNLaPEbBBcOOIBBO": 1, "GCQKEaAJDbJANafabSWUHbWPHDDWe": 2, "HWAFNZJNSdCYO": 1, "ABVYUYNaXTfMPSXZFFfeNJXIXCEC": 1, "fefSCOJZfIZZRAbTYRQHAYWOAVXfZbGSFcNQSZBeRe": 1, "UETTJcJTPCXJLbBBcbFDaNSdfBPKe": 1, "ABVYUYNaXTfXAPEeNSBedFeWKUVHe": 1, "aWQOcYTBOTfdASFbLYUbQHQHDDWe": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIOOIBBO": 1, "BCEQAeMZeEOHGZGbDYDaKLITRe": 1, "NAFLSRaRRefdQBTFNRaJNVTUNfFHe": 1, "PcJJZGafIRVVSCZC": 1, "cCcCcCDPCDCcBUHBZNXMRUMVMITAFfKDXNKe": 1, "PWBJfbHXSceIfIHfSbfZALOEXKQLNJC": 1, "aXbSGNVXNRbDdJTLaKEBBVYYT": 1, "HWAFYSGZXbTYC": 1, "NAREFcCcCcCDSJRNfbXUCeeWXFZEVC": 1, "cCEaLMJeVPDdCAaGGbMWHT": 1, "eDEMfSJbQJQRXZVUbQHbUMIKe": 1, "HMbVAbHT": 1, "HWAFYDEZREbUObQGNLXTFWOVVWaIfXT": 1, "INFdCDOTEKBeJGbXHWbXaTFKGZSXT": 1, "NVNZYeJBBMeHGUFQbMDOHQSGaT": 1, "UYIVaVbMVYNFPdNYKFFaMEAaUC": 1, "HWAFYNFIYJKOFaYDJO": 1, "ODRdZWdZRVKaMUHcWXT": 1, "aXTbSFYTBHMHHVbReIYBBVYUfFdHMNQJTeERXWXFZEVC": 1, "HWAFYJPASVZKHSYeGXT": 1, "BCOHNFPBJYIYKcdKRSNcDHRbdFIKe": 1, "dLYHMRFeRQPcRWTfQORNScTUDdWe": 1, "HWAJLGbbeLbIeIPYBAFBVFTUZSdcDZVAMO": 1, "AdREFdJdWTCUZceNGTORXZXe": 2, "aWQOcTMGCBMBAADTeRT": 1, "NAFQZMISRSOJaTfMDcGEfdbfZDVRGCMC": 1, "NVFVcfTbdNNRSCWffPNfAVeKBMOLDEZREBBVYYT": 1, "OLZfebIYBFRZIAKLBJbQGWSVOZGBaeacWXT": 1, "BIUJLMJVfNafMUfBFGFVIZdRRT": 1, "HMbCTYAaZZWIeXUJAFC": 1, "aWQOcGfNGcQYIMdUfFaMLXe": 1, "PUTVdBaUEIQWCHeLIZQTZOUdTWPHDDWe": 1, "IZVBETWRGEAJbVZTUPUOeMO": 1, "YdXfMPXYHYYfPYPNLINBddeAWNIPPQFFECAFC": 1, "OMeRQDSFXZNdMeOXbbFJFUWcaHEdQbUC": 1, "fTZaTaTaBAZTbYCTWZHT": 1, "YdXfdKNKNKZTLVcTQQJO": 1, "ZdLNKPQFAeDHRQRFHT": 1, "BIUJLMFQTXWDTRKecNfdRTKeeZSAGbSBOAIEHT": 1, "OMTVBENNRYXcCHHRHbbLXMHO": 1, "NVNZYeJKTYFGFfPfIVXBPKAC": 1, "eDSdUfAJAZdJAINQWBOfWVWNYO": 1, "eRQWcIXdCcaIXMTBEJcCYeFVIQJGEVaUcJWe": 1, "BCEQAeMZeEOHGZGbDYBZeEGGNPbaae": 1, "PPXGFRURURNRNPUOUAaDNRTKeeHRbdFIKe": 1, "HMbdMJRTaXFZPeZeNRGEMEaXGbRbBOFO": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYIVTIbYO": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFWPHDDWe": 1, "HWAFNRYXMHO": 1, "fefSKeEFKMBKEOcYRISUaPZdMcCcCcCC": 1, "HMbMYOdAURAfBfSXIOCARSTRTfIZbWNWe": 1, "aXbSbcOQQVWXdBGZXeYBBVYYT": 1, "HCZOKTfGCaNPHcXdKYEGHNfLae": 1, "HCZEKQaRRYddBbNXGDJEcQMdBcAEHYO": 1, "eDSdUbKHQadTGJNBdIYBZJVcTC": 1, "NAFQCJWZUbXeCFNZFEZaHRdMDMSAFET": 1, "HMbBPMINPPKGUSCZC": 1, "HMeCJHAVXSAWPHDDPNSRDAJLT": 1, "NQEDMVZALOdEfcFbC": 2, "PPXGSCZDSSYZTNReKfdSDeSHRbdFIKe": 1, "aXbXDDZNPcRXWcDaHFBddQWPHDDWe": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcRO": 1, "ABVYUOUdAHLAWXFZEVC": 1, "OaaKQZZMcTcYNaXTbEdHOUfBOVXXe": 1, "OMEIZEHbaTaTaBZbSCOIHSHFTINLRIYLT": 1, "UYIVaVbMVYNFPdNYKFFaMEAKe": 1, "AZNdAYbeDUPIVPZVIDRbLWZHOfXIZTOeTeLT": 1, "NAFLeOeJHVNTPeVZAHGaCGbbNZJFJadKbCTEQCZFbNXGDJae": 1, "HWAFNQTJPAcSfCSRBRT": 1, "AdeKbCcBUBBAeScYbEfcWfYSbC": 2, "ZcSIcceNSeONWHJNbPMYRedfPIO": 1, "YTBeWfCDVAUVKfBLWeDZQNUTEYMO": 1, "NAFQCJWZUfJaAKDffSQRTWZBNHDFXXccBPKe": 1, "YdXfCDWOODSSCaIfWcHOReeHe": 1, "aXTfHAEDCDWOOJdDBKSOGXCcZYEIKaJTXRHe": 1, "BHDTJdReLSEETEVJLBWHcbFMOFIaRIZFCeaPRe": 1, "BHDTJdReLBEHAFPROaSXWTNUTIGdAFUKKWe": 1, "ODRESHIfDWQIOLTLAPYcFZfHbJGbEHe": 1, "PcJJdIVcDPePdJXDC": 1, "bQKPWLVRbYTVMeOJaVPbJNWWeHT": 1, "AdREFHZUfFfFcYRQaXdRT": 1, "OOIBTBGPfBKSOZdBZCBKeJELWe": 1, "eDSdUbaaNRfXaIRdNDDC": 1, "BIUJLMJXdDXFJZbUBVfJDFQWIXADOFRbQPRe": 1, "aWOQKVUKeFbAdcDcdAXRCBQBBHFBddQC": 1, "BIUJLMFPAAMbTBYbBHUSTDLO": 1, "cCPeYGIZeVTNVQcfFKVbONebEWcDaWe": 1, "HMbXLQAFRGEMEaXGbRbBOFO": 1, "eDXJNSacQSSPXPRQMbHAcLRfdACDWOOC": 1, "NAFQQADZQUAIIfOdASUTbC": 1, "HWAFNeOYFNbUPANNBUDLC": 1, "bQGBVXGHVPHXe": 1, "eDSdUfbfKBZTSJeOXbbFFbJFSMZDaFFcae": 1, "febdSANFRWdNHIQJbYROKe": 1, "HCZANHDdLYBNWTCUZZOeGDPNeFGIYIYeFMeAFJBEJKaEcfEC": 1, "YNaXTaSdNBUYLMcXT": 1, "HWAFNeOYFWUFOWGSQZdWOGVO": 1, "OMEIZEHbaTaTaBdJdHPHFAUADHSdVXSAC": 1, "YTBUIHOdEaJPGAAQecGKSGOAIEHT": 1, "BIUJLMFPAAIISINfKBKBUHAABGOHaT": 2, "AEHAFPRFRURURYZVZWDWEbYbOWBcaKBGO": 1, "eDUdGVdNMfXLMdAJHRFAIO": 1, "dLcXJeITPMObOVKGaLT": 1, "cCcCcCDPCDCcACOJOMXdKYEaEASNHRUUO": 1, "VObdZZaBfCCdDeQfYYT": 1, "HWAFNeOYDYEaNdNDYTUBXCEWOMTXEUDae": 1, "eWfaQFNYKdadNOODCLaAFZKXe": 2, "fefSKeEWKMTUBbQGWWPHDDWe": 1, "NAFLeNLYANAadBcfdQANABLcGOaT": 1, "AEUaYZKZYYKdBcGcNHC": 1, "NAFQOCUcLYANAadVeKZDYBLcOcOIIeSGTIKdFHaO": 1, "OMHMbdQPeXIUEBFXBeVYZIUONSQecLUTBYKe": 1, "BCOOOYOKZeSdVXZMKddbQJFYJO": 1, "eDSdUfHVbdWPHDDPACQXYSQOLWCGae": 1, "ZHCDCaGbXDWPPNHUNYARBcGKSaT": 1, "AERXWeDfBAKTRe": 1, "eRYPHbcGRcHWVdCdfaefcVDZBNPbNKe": 1, "NAFQZMISRSOJaTfMDcGEfdbfZC": 1, "IZbREZVPTLKGBfDeHeIeNJVEVC": 1, "HMbOOTWVdNHWTRTfIZKe": 1, "IZBTdFPfBKSAELSXPBQGMEcSOLWEBJbQae": 1, "AdPcRXUWLdTWeDfBAKTRe": 1, "NAREFZGccVYMbNXGDJEXMbPXJOYO": 1, "cCcCcCWPJeVYSLLeLHYO": 1, "HVPZdZGIGPefQPTdLBHJPCePWdJNQBUC": 1, "HMbEHRKOEIaHVQdOXAaXFZPeZeNSCZC": 1, "PUTCDCcBUacEfBaUEIQJBeaT": 1, "TWPAOPeIJDbXHVUdMAOEITKe": 1, "HWAFYYYeHQAXaIRdNC": 1, "fefSKeEFKMBKEOcNSZBeLPZaTaTaET": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBULQEWWe": 1, "fefSKeEFcIADWHCDUFYQXUZWPHDDWe": 1, "TeCOeJPQRWSEXcBdHSPFRJeZMdQdFJO": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUVVOHT": 1, "BCIKSTPFeZKUIRSNWXFZEVC": 1, "cCHObMKdFEVcYSCKVZNMPHVC": 1, "NVNZYeJBIUJLMSCZFXLBKYO": 1, "OLBEXfQYLSHFdAUOYO": 1, "HMbdDRJNGPbBfDUIEbfWCUfWLEXPBOFO": 1, "HMbEbWcBBeIaZZWIOIeMEfdWVMcOcYTET": 1, "HWAFNeOYDPPHYKHGHNKe": 1, "dDfPJNCFGfGfZbCEWZeEHJddEPXeC": 1, "bQbYWXFZEVWKMTUBVXaCNFEUXPNMZQWe": 2, "PcVFHMPaRReaSdIeZNNAFLWEZfefSWe": 1, "HWAFYDEZREEdRWSdeJOUJGPXPRLO": 1, "bLEZfZLFZbZQXSFPbODAKC": 2, "YTcEAJDTbAMITKe": 1, "HWAFNeOYJXAadKfXdfdTSfCSRBRT": 1, "HMbVAbcdJXIIHTPMObWNWe": 1, "HWAFNeOYJEIeKBAWTWEYT": 1, "aWQOcYTBAZWEHGIfUYQZACYO": 1, "BIUJLMFQTXWDTSVbXQSIZGPECHTeUNPGJNZWPaDMC": 1, "HMbVAbcKfRPWXKfBKdHUHe": 1, "HWAFNeOYRQWcDAVbBHMZYO": 1, "OOIBTBaKDDKAQbMeJeMTDUAVO": 1, "NAFQQAFJZeOQPeYTWTUPSCMeRT": 1, "cCHObMKdFEVYQGXUGScOTVaAFZKXe": 1, "BCEQAeMZeEOHGZGbDNZEFfWSCCCHJDTKe": 1, "ODREZfefTLKGBfFKJBKWUOfAYULMZZCGVKe": 1, "BCMdeLAbIBHXCbfZVO": 1, "HCZANHDdLYBNPLbbHVJNSZWbECVVDC": 1, "HMbKbHAYIFTdZfLLCcYTET": 1 }, "m": "UmFuZG9tSVYkc2RlIyh9YYECcYNzXiVOg_B3D8R2jIc3ZeX_HyGjAz_ro3dNebTVo-ufR6LYjtg0SEimtumQIl6AMNEw_DwJF09ICAq3dR0cWq-WFz-c-XXyWUCyKle92XSQcnZGB3LJsD-Xq-z-o9PdmvXv26GIgUuiy7vAs15WVHyU0r3oWRnOOIYZpns1xiq_5RIyzzDJbbWP7UlEn9SScIWxG7C6SIEDXCHaAklBApzmIFEcFveA4EGSNxOc7Z-OhLYiTr4LuCm2rtvTjFmCbQbkQPejpdcWAzy1kkO8ToKcUz0fL9z4Pj4F719X3kDQskueaYtshr7IqZ9kyH0SW9PMAanL", "r": { "aaAJYBVaAJDbAPQfQOHT": 0, "YdXfdKNKNKHUFKYOeeTQIPPSfDcdEWe": 0, "HBbfBAJPNATDOBO": 0, "TVBdHUNLOLOLOOTMfefVUdBJOTXNORe": 0, "dLYHMRFeRLBBVYUYWbMSJXOTEREHGC": 1, "HWAFNeOYDeffBKdFDPBIFMZcO": 0, "HINZJLeUXSaZbdKNKNKPJdBJOTXNORe": 1, "aaVBBVYUPBOIHaZFTeCYbeLT": 1, "aWQOcYTBNLJPSePVCMIRe": 1, "dLYHMRFeRLBBVYUEKAFSOZdTYMIKe": 0, "aXTfHAEDBOSISIBTBYQfBNeZINQFKFbbeRe": 1, "aWQOcYTBOOIBTMXWHUSCNVAELXT": 0, "aXTfHAEDCDWOOSOHOVZMYCVXVAYVaNEbDHFAUADPRXe": 0, "aXbSbcBUcJaRMSAdRTUOOIBBO": 1, "OLHIAdLeKfWe": 0, "dLYHMRFeRQFSUCKAeOESSZXDOXWKHC": 1, "HWAFNeOYFQNEJNfXILMSfCSRBRT": 0, "fEOMeOSTIZJCNQOVTLUBYTPaCQbZBbEWOTYVOBOFO": 1, "aWQOcYTBABVYUEKCWNBOcaGPaXe": 0, "aXTfHAEDISIBTBBLXOQWBObbObSVHLeNBLLT": 1, "adUAAdFNLJMbQCeLFKMOAEHNPVT": 1, "ABVYUYNaXTbXUCeeC": 1, "TDXbdLOLOLOCcTaJBHKZYQNTREWaEO": 2, "BKATYDORMTfFIdOccPDXafBQEQSVWe": 0, "HWAFNeOYDXKe": 0, "eUFJZVacKdZJVVUDORMTfLT": 0, "aXTfHAEDCDWOODCAUEbOMFcWe": 0, "XdKYEaEVTNeNcJZWNHRbAMSEJCLfZYPXPRQEDaORe": 1, "HINZJLeUXSaZbdKNKNKHUFXSBYQOWcfINKe": 2, "IZBTdFPfBKSAELSXZDYPQBTaRXUbZFLMZGHCTRdIeDdeFCYVO": 0, "aWQOcOOIBTAPVFfSUICJdDBKSOGXCHT": 0, "THHSOWGFFYbVaHWNFGFdUeMBKOVT": 1, "aXTfHAEDdKNKNKZDYCFceHEVJXdDRLRFWMXC": 0, "HZUaYPMPSXZVYMO": 1, "YNaXTbXALKFTCWTUTZALSIWe": 2, "BKATYWPHDDHfLebbMEKKAcQJFfWe": 0, "TfNZeFcCFQTXWDTRGGYLTRQScZGVKHT": 0, "dLYHMRFeRLPYKDcdDdONVFbKCBPQCHT": 0, "dLcXJeITPVNeJMBYNaaSRe": 0, "OOIBTBBLXOQRTKeeWe": 1, "aXTfHAEDdKNKNKZDYCFceHEVFceHEVFKMBKMXC": 0, "cCHObMPWAEeIcFARSYWBZEWaSdCDWOOC": 1, "aaAJYBVaAJDbAHIDJNMTKe": 1, "YdXfdKNKNKZNTfVfdLaAFZKXe": 1, "NaMPBEUWPeYeFaaEQMALHFTHO": 1, "aWQOcYRYNPNDJdQJEcTeKHMeTC": 0, "aXTfHAEDdKNKNKZDYcPJXIdAHEZWDTPMXC": 0, "aXbSGYWYHbeNPIARTYT": 1, "cCHObMMCFRBZDOLZYbFZVGAZaYYfPHe": 0, "YdXfdKNKNKZUTPTQTUMKPREFcEBYJO": 1, "HWAFNRYLJVDXKe": 0, "aXTfHAEDdKNKNKZDYCFceHEVWXcdMIJIcVHXT": 0, "OLHIOMcTRLHe": 0, "adUAVYCdFNLGfFWFKYOeeIKdFHaO": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKVBC": 0, "TWBBeJYTBGaWXCFafEJPAXZQIKdFHaO": 0, "aXTfHAEDISIBTMMbYHFBddQC": 0, "cCHObIULDcFUHZESEETWBZEWaSddKNKNKWe": 2, "HWAJLGbbeLNJVJPZXAJIWRAQZfXILMUJINFeTXe": 1, "cCEaLMJNGLEYYcXO": 1, "TfNZeFcCSTbFKaaO": 1, "OMHBVOIfFHcYBCeUDOHQJCYLT": 1, "THHSOFRURURYNYHIYTLRQJRbWdWOGVO": 0, "NAREFBUONOHHWcZZESCGVKe": 1, "NAFLeOeJYTBeDUfWZJEbOMFcUNbLWZHOaO": 0, "fTPIMLPbTfBfAJEAHYGGET": 0, "NVFVcfTbdNNJTOFaQEZYVNFJIeaUFRURURHe": 0, "fefSCOJZfIZZRAbTXTMNZeUNFPCNBEUXPNMWe": 0, "cCHObVZMYCMPWAEeIcFARSYJXRDVMDTEBBVYYT": 0, "OLGPNceIWDAOdbIVXVEHXT": 0, "PPXGSCZFcYUBXVfSTdaT": 1, "cCHObTULHfAFFQZccWRBcCcCcCC": 0, "cCHObEJcQYIMdUcHCXFZRJNGPbVHe": 1, "fefSKeESCOONdPGKNSCMHVPHALOLOLMO": 0, "ISSfYWZWREfWBQBTUfBUPHe": 2, "aXTfHAEDdKNKNKZDYCJdDBKSdEDeZVXVHXT": 0, "AEUaYPZZGbdUSUIUBTNTMFFfeTQUBXFSdKfKdXT": 0, "NAFLeOeJcQEcVOdWNeYZdfdbJae": 1, "HZUbVYOODAKJdTJAUIUNJbZJae": 0, "NaMPTBfZGeUMYfCDRbeQfFRPfIVXBPKADXKe": 0, "HWAFYTacWCcAeCQeJPVNLIGBSQHe": 0, "aXTfHAEDdKNKNKZDYCJNLcMYeAFZfWZffMXC": 0, "aXbSbcfFdHMTcZJFOHHAAHdZGaZaTaTaET": 0, "TDXbdLOLOLOdGUKCMedEKRbdPfIVXBPKASbZDQLBC": 0, "aXTfOFJZMYeKTcEKTUTZCWYO": 0, "THHSODPNGZfFbSGUBBHQKOOcO": 1, "dNXOMXWNMGBcFVaXaHYYfPHe": 0, "HWAFYSGPRXe": 0, "PPXGWPHDDZKZDYTYGWOZXUCeeWXFZEVC": 0, "BKATYWPHDDHfLebbMEKKAcQJFYJO": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdVO": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKMGHe": 0, "aXTfHAEDISIBTBBLXOQWIbAaLFSebFGKMGHT": 1, "HWAFYLJVWKGdUVYDGDZHbWHccHe": 0, "aaAHUNQADGNKJXcGBAAcLPWZJae": 1, "aWQOcABVYUbJfEDTYVOVZMYCBBLXORe": 0, "NAFLeOeJNAFLJPECVVDJYMBMJIeFHe": 0, "cCHObVZMYCMPWAEeIcFARSYJXRDVMDTdLOLOLMO": 0, "aXTfHAEDCDWOOSOPQDVXVcbRPSCMeJEXO": 0, "aXTfHAEDCDWOOWbWOOFIEaFdOUZMBOHRXUbZFLMZGHCTRdIGZHT": 1, "OAZOXHHHXFZPeZeNFfAXSPIaO": 0, "TDXbEBBVYUcQYIMdUcHCXFZJJVaXNJIbBSSObaYO": 2, "HWAJLGbbeLRcVWQIOLJWcRKIVUdVCDdZVC": 0, "aXbSbcBUYWYHaRMSAdRTUOOIBBO": 0, "OLGPNceIWDAOdbIVXVEHINET": 0, "HWAFYTbQMbQVAHAZZCGVKe": 0, "aXbSbcBUYWYHaRMSAdRTUcCcCcCC": 1, "TZUfdbYfTLBbPTPCDWOOC": 2, "HWAFYHIEUXPNMWe": 0, "TZNJbaTaTaBIHUHWAURXZXe": 0, "fefSKeESCOONdPGKNSCMHVPHVBBVYYT": 1, "adUAVYCIFBUYWBbQCeLFKMOAEXaDBUcRe": 0, "aWQOcYTBABVYUOUEUKKSWBVfXNFfdXUC": 1, "aXTfHAEDISIBTVZMYCEbWccPcNPMAOebQAC": 0, "aGMdEdeVaAFZKVbOMFcZGSRaPSPJJASECdUJDQNBO": 0, "ZCaDMSBZeeZTXJdZfAAdRTRIdaEUAFBaDMSCZC": 0, "aWQOcYTBEKIWRQWcDGHT": 0, "NAFLeOeJAdcbdGTEYOdDWBLHMVC": 2, "HWAFYDEZREeJIRBcVScbBNLPIHfSbfZALMO": 1, "aWQOcYRYNPDHCOLZOFBfWaPNSLERXSBRe": 0, "aWQOcYTBABVYUNXDUDCQPXDaae": 1, "BPHOaBaWQOcfEFfHBISNFZQaeKe": 1, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBcOOIBBO": 1, "cCHObdGUKCMedEKRbdPfIVXBPKASYeJcCcCcCC": 0, "aXTfHAEDCDWOOSOHOdQeRHfAFZfWZffMXC": 0, "TeCOeJIUWUHcKKSTLGPAcTPSUGADDbddRBQSCEDXFZSCZC": 1, "PPXGFRURURYaGYZYbcZTTEATZdSGWC": 0, "NAFLeOeJOMEKCccTRLHe": 0, "YTTHbXeeAeJINUFJUAcWMHTcfaNKe": 0, "IZBTdFPfBKSUaXSTBGCdKAPcaKBbBOSYLYT": 0, "aXTfHAEDCDWOOSOHOAZfLdPUbdFDCFJJEXO": 0, "dNXOMXWNMGBcFVaXaZaTaTaET": 0, "HWAFNRYZDVJTTC": 0, "ELSXHWXWEHDDDSeONOXT": 1, "HWAFYTaYbZNHT": 1, "eWfaQDSWSGUQHMQOFfOBfC": 0, "YdXfCDWOOWNECHTeUeaT": 1, "GfHMYYBQePeEHbECQdHZVHAFNQJQNbUIC": 2, "HINZJLeUXLCddLOLOLOCcAZdJAINRe": 2, "cCHObMPWAEeIcFARSYWBZEWaSddKNKNKWe": 0, "aaTBNZZJRLESPIDNJDPVBC": 1, "PPXGFRURURNRNRWSdFZFaBHVPHXe": 0, "PPXGWPHDDHRQPSHSQFUUHGeFZBQIO": 1, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBccCcCcCC": 0, "HWAFNeOYSBVJSEFKXNJdUcOHT": 0, "HINZJLeUXSaZbCDWOODVcNVBUKcTKe": 1, "HWAFYTbeWRTHT": 1, "aXTfHAEDCDWOOSOHOVZMYCBcPOeFaXfRXe": 0, "HWAFNeOYSfXOEIYZEDNMfXLMEO": 1, "NAFLeOeJOMOQeOYFCRFZMbYWMPSYaET": 1, "HWAFYHIYTdELT": 0, "bPJAZNdAYbeDUZSQZXSMSeGEVUSZMSMGGTHHSOC": 1, "aXbSbcfFdHMTcZJFOHHAAHdZGaHYYfPHe": 1, "aXTfHAEDISIBTVZMYCBBLXOLATZdSfbCaceeRAcMcWe": 0, "HWAFYbIeIPYbeTQcaNYCLC": 1, "OAZOXHHHXFZPeZeNJILO": 1, "TDXbdeRRYJWcFVbCDVCBOPFHe": 1, "HWAFNeOYFeKOUKdBDCLXMHO": 0, "aWQOcYTBMLaUJUMHHO": 1, "BKATYDORMTfFIdOccPDXKe": 0, "aWQOcYTBOOIBTBRfefWcYRfLVT": 1, "TfNZeFcCFLUYYeFeHC": 1, "dOXKbDJdNLEXYKANMAefRXe": 0, "BPHOaBZGZVSBYQeQHefKbAXDXKe": 0, "BKATYWPHDDHfLebbMEXO": 0, "THHSOWPDSDXbWUJIFGKBAFVNaRe": 0, "HINZJLeUXSaZbdKNKNKPZHSdINFPIWBHT": 1, "HWAFNRYHXT": 0, "aaOCZDSSYZTNReKaKHeFUHDJbZJae": 2, "aWQOcYTBOOIBTVXAQRMFXJKe": 1, "OOGbIFBUVTIbNESEeCQRTKeeHRbdFIKe": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdeRe": 0, "AEUaYPZZGbdUSUIUBTNTMFFfeTLQLAVALKe": 0, "NAREFfLaNXKbBMRVDIHe": 0, "NAFLeOeJYTBOLPTdMZbGXZUBPTVfITUSEDELO": 1, "NAFLeOeJAEHIOQLeKfWe": 0, "OMIZEPQBaFBddQJXDbYXaRIYAC": 0, "AdRNRWSdUPMcHZZWIeXFGBZFKMBXO": 1, "bLdLOLOLOTYVOVfLeVUcTAKVTQWUZbeKRJdPC": 0, "HWAFNeOYDERXJXAadTWZHT": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe": 0, "dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT": 0, "YdXfCDWOODSFKGbUBPKBcGYIEGTUSGGO": 2, "TeCOeJIUWUHcKKSTLGPAcADDbddRBQSCEDXFZSCZC": 1, "YdXfMPXYZaTaTaBEUcKBSMFeJHUWEYcZbMKJZKe": 1, "NReaHbdKfAHAHUYWbQOSbYGVVC": 1, "aXbSbcBUcJaRMSAdRTUcCcCcCC": 1, "GfHMYYBLEdRBQSCEDXFZFFGSQTHaT": 2, "HBOMaMDYHVVLRfEbHeFUPecLZaae": 1, "dLYHMRFeRLPYKDcdSOZdTYMIbXDOXDeLZBIQNNC": 0, "aWQOcYTBOQeNZTWeUKAcET": 1, "HWAFYFGeNBLScEXO": 0, "aWQOcYTBNbbXdZNfRLT": 0, "PcVJZTOeTFcSBebJTGWDAAQUYdOBeQPQIaGeFZBQCdKNKNKWe": 1, "HMbXKFbWNWe": 0, "cCHObMMCFRBZDOLZYbFZVGAZbaTaTaET": 1, "HWAFYHIEJKaEHT": 0, "BKATYDORMTfFIdOccPDXafBQEQJET": 0, "NAFLeOeJOMOLPTdMZbGXZFZYZEYYEO": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKBFO": 0, "TWUQQbHVEZNePeEBVHDWNZGSRaPSZbXEIZBGaWXCFafae": 1, "THHSODPNGZfSeUNAFQEGRDDNC": 1, "aXTfHAEDdKNKNKZDYCFceHEVJZdLHNLLDXKe": 0 }, "t": { "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "BKATYDORMTfFIdOccPDXafBQEQSVWe": 1, "AEUaYPZZGbdUSUIUBTNTMFFfeTLQLAVALKe": 1, "TeCOeJIUWUHcKKSTLGPAcTPSUGADDbddRBQSCEDXFZSCZC": 2, "OAZOXPKSXPPPaacXO": 5, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "NAREFfLaNXKbBMRVDIHe": 1, "NVNZYeJBBYZUeQKBBTZMcET": 1, "NLJZCEQMULaDAEKKSLcSEO": 5, "ISSfYWZWREfWBQBTUfBUPHe": 1, "NAFLeOeJYTBeDUfWZJEbOMFcUNbLWZHOaO": 261, "BHDTJdReQHUYYOLEaMYYXO": 1, "NAREFBUONOHHWcZZESCGVKe": 1, "YQecaXYRJLBWHcdXUC": 1, "THHSODILJbbfYFZIJePICaeFYTET": 1, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 5, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 19, "adUAVYCdFNLGfFWFKYOeeIKdFHaO": 1, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "OTfdASFGWcOCbABHTcTHPGMYKe": 1, "BKATYDORMTfFIdOccPDXKe": 5, "aGMdEdeVaAFZKVbOMFcZGSRaPSPJJASECdUJDQNBO": 1, "THHSOFRURURYNYHIYTLRQJRbWdWOGVO": 21, "YdXfdKNKNKPWZJdUQWTCUZZAUGO": 1, "YWYHfUDeATPRXUBO": 1, "YdXfdKNKNKZUTPTQTUMKPREFcEBYJO": 1, "TVBdHUNLOLOLOOTMfefVUdBJOTXNORe": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "dLcXJeITPMOaMO": 1, "eWfbUTPIFbNXGDJEHJfNYTFIYREHGWXdIZDFC": 1, "THHSODPNGZfSeUNAFQEGRDDNC": 1, "cCcCcCFLFHaZFdGdfTIEBFUINHC": 1, "NAREFcMEbJObYZffQLQBBO": 1, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 1, "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "NAREFYTBacTTNAIOFWC": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1, "adUAVYCdFNLGZaPQQSRPWdOQRTKeeHRbdFIKe": 1, "BPHAUbWNZXGOXUSHXT": 1, "eWfaQFNYKdadNOODCLaAFZKXe": 3, "HMeVKJeGMXNZQMeYJNNQeHT": 1, "eWfaQDSWSGUQHMQOFfOBfC": 1, "TZUfdbYfTLBbPTPdKNKNKHUC": 1, "EUXPNMHfLebbMHSWedNDeQfYUXVaKBIecO": 21, "HZUaQSYeJPOKHCcZQLcO": 3, "INFdBOSOTBMBPfRDcTLEXe": 64, "VMITcZJLCZBfaNKe": 11, "BHDTJdReQHUYYOLEaMNSUC": 1, "AEUaYPZZGbdUSUIUBTNTMFFfeTQUBXFSdKfKdXT": 1, "HWAFYDEZRae": 3, "TeCOeJIUWUHcKKSTLGPAcADDbddRBQSCEDXFZSCZC": 3, "INLGPfECIAaKLHPPYHDESeRQFKYOeUO": 1, "YdXfMPXYZaTaTaBEUcKBSMFeJHUWEYcZbMKJZKe": 65 } };
		var jst = { "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 1, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "aaTBNZZJRLESPIDNJDPVBC": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1, "INLBdRAZUffECIAEKKUHAbINOffNcUUZabSXT": 2, "MCIAFKKZaTaTaBcJPGEbfFeTKe": 2, "eWfaQFNYKdadNOODCLaAFZKXe": 2, "BKATYDORMTfFIdOccPDXafBQEQJET": 0, "aDMWRfDSdWUUHfLebbMPAFFLKZLXJOfAdIUFZZcO": 1, "AEUaYPZZGbdUJFFSfLXT": 1, "OTfdASFAdJYcDHBdJUKeYEGWe": 1, "YdXfdKNKNKZNTfVfdLaAFZKXe": 1, "PPXGFRURURNFZFSOHeHQITC": 1, "TeCOeJIUWUHcKKSTLGPAcADDbddRBQSCEDXFZSCZC": 1, "YdXfMPXYZaTaTaBEUcKBSMFeJHUWEYcZbMKJZKe": 1, "eWfaQDSWSGUQHMQOFfOBfC": 0, "dDfPJeaILYDCMMWZNKdPYOWdDC": 1, "TZUfdKNKNKHbCZIVFTZYBbPTHO": 1, "PPXGSCZWNOTEbWcKZIXXcffWe": 2, "NAFQdGFEYKcbJVaQWBCYbSVbYSLbKAQGGLT": 1, "HINZJLeUXSaZbdKNKNKPZHSdINFPIWBHT": 1, "OMTVBENNFZFJFRLRGO": 1, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "BKATYDORMTfFIdOccPDXafBQEQSVWe": 0, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "TeCOeJIUWUHcKKSTLGPAcTPSUGADDbddRBQSCEDXFZSCZC": 1, "PPXGFRURURYaGYZYbcZTTEATZdSGWC": 0, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "AEUaYPZZGbdUSUIUBTNTMFFfeTLQLAVALKe": 0, "adUAAdCYcPSBVHSCGVbaORe": 1, "TZUfdbYfTLBbPTPdKNKNKWe": 1, "YdXfdKNKNKHUFKYOeeTQIPPSfDcdEWe": 0, "YdXfdKNKNKZUTPTQTUMKPREFcEBYJO": 1, "INLGHUDSJNQQdKBUPfECIAEcOHT": 1, "aXbSbcBUYWYHaRMSAdRTUcCcCcCC": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "BKATYDORMTfFIdOccPDXKe": 0, "adUAVYCIFBUYWBbQCeLFKMOAEXaDBUcRe": 0, "THHSOFRURURYNYHIYTLRQJRbWdWOGVO": 0, "BHDTJdReLGPRbdDXBWBKIeZYUVLcbdYICC": 1, "aXbSbcOQPCPRWXdBGZXeNLOLOLMO": 2 };
		var jsdt = { "aXbSbcOQPCPRWXdBGZXeNLOLOLMO": 2, "NAFQdGFEYKcbJVaQWBCYbSVbYSLbKAQGGLT": 1, "BHDTJdReLGPRbdDXBWBKIeZYUVLcbdYICC": 1, "dDfPJeaILYDCMMWZNKdPYOWdDC": 1, "TZUfdKNKNKHbCZIVFTZYBbPTHO": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "PPXGSCZWNOTEbWcKZIXXcffWe": 2, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "INLGHUDSJNQQdKBUPfECIAEcOHT": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "PPXGFRURURNFZFSOHeHQITC": 1, "adUAAdCYcPSBVHSCGVbaORe": 1, "TZUfdbYfTLBbPTPdKNKNKWe": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "OTfdASFAdJYcDHBdJUKeYEGWe": 1, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "INLBdRAZUffECIAEKKUHAbINOffNcUUZabSXT": 2, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "eWfaQFNYKdadNOODCLaAFZKXe": 2, "MCIAFKKZaTaTaBcJPGEbfFeTKe": 2, "aDMWRfDSdWUUHfLebbMPAFFLKZLXJOfAdIUFZZcO": 1, "AEUaYPZZGbdUJFFSfLXT": 1, "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 1, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "OMTVBENNFZFJFRLRGO": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1 };
		booking.jst = jst;
		booking.jsdt = jsdt;
		booking.env.b_fragment_url_html = "/fragment.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&";
		booking.env.b_fragment_url_json = "/fragment.zh-cn.json?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=57ba444d8f80007e&";
		booking.ensureNamespaceExists('affiliate');
		booking.affiliate.platform = {
			isHybrid: 0,
			isCobrand: 0
		};
		booking.affiliate.settings = {
			showSignUpPrompt: 0
		};
		booking.affiliate.variables = {
			userLoggedIn: 0
		};
		booking.affiliate.params = {
			destinationFinderSignUpPrompt: 0
		};
	</script>
	<script nonce="9jmEHBuvHcdLmqi">
		(function () {
			document.addEventListener('DOMContentLoaded', function (e) {
				window._pxAppId = 'PXikKuL2RM';
				setTimeout(function () {
					var pxs = document.createElement('script');
					pxs.crossOrigin = 'anonymous';
					pxs.nonce = '9jmEHBuvHcdLmqi';
					pxs.src = './script/libs/perimeterx/px.v7.6.9.min.js';
					document.head.appendChild(pxs);
				}, 750);
			});
		}());
	</script>
	<script nonce="9jmEHBuvHcdLmqi">
		(function () {
			var delayMs = 0;
			document.addEventListener('DOMContentLoaded', function (e) {
				setTimeout(function () {
					var script = document.createElement('script');
					script.nonce = '9jmEHBuvHcdLmqi';
					script.src = '/87sduif98q3rijax';
					script.async = true;
					document.head.appendChild(script);
				}, delayMs);
			});
		}());
	</script>
	<script type="text/javascript" nonce="9jmEHBuvHcdLmqi">
		window.cspViolationsCount = 0;
		if ('SecurityPolicyViolationEvent' in window) {
			document.addEventListener("securitypolicyviolation", (e) => {
				if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1) {
					window.cspViolationsCount++;
				} else if (e.disposition === 'enforce') {
					window.cspViolationsCount++;
				}
			});
		}
	</script>
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="client" rel="stylesheet"
		href="./script/psb/capla/static/css/bui-react.2ea88ab2.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="PropertyHealthSafetyDesktopVariant-PropertyHealthSafetyDesktopVariant"
		rel="stylesheet" href="./script/psb/capla/static/css/4942.40607748.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyHighlights-PropertyHighlights" rel="stylesheet"
		href="./script/psb/capla/static/css/759.68faa5a3.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyTypeBadge-PropertyTypeBadge" rel="stylesheet"
		href="./script/psb/capla/static/css/1159.644068bb.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-BHQualityClassificationBanner-BHQualityClassificationBannerDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/8479.88a30160.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyReviewScore-PropertyReviewScoreRight" rel="stylesheet"
		href="./script/psb/capla/static/css/8746.2737cccf.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyReviewGuidelines-PropertyReviewGuidelines"
		rel="stylesheet" href="./script/psb/capla/static/css/397.e55a7beb.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyWriteReview-PropertyWriteReview" rel="stylesheet"
		href="./script/psb/capla/static/css/5367.ba0126de.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyReviewSubscoresPanel-PropertyReviewSubscoresPanel"
		rel="stylesheet" href="./script/psb/capla/static/css/2659.c174459d.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-RoomTable-Desktop-RoomTableBase" rel="stylesheet"
		href="./script/psb/capla/static/css/4454.b3bd2a92.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-GroupRecommendationDesktop-GroupRecommendationDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/9745.6cda2510.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PropertyMostPopularFacilities-PropertyMostPopularFacilitiesDesktop-PropertyMostPopularFacilities"
		rel="stylesheet" href="./script/psb/capla/static/css/5641.84734fe5.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyHeaderNav-Desktop-PropertyHeaderNav" rel="stylesheet"
		href="./script/psb/capla/static/css/9402.09edbcd6.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyHeaderName-PropertyHeaderName" rel="stylesheet"
		href="./script/psb/capla/static/css/9599.414ed45b.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyShare-PropertyShareDesktop-PropertyShareDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/4090.c6cf26df.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyChildPolicies-PropertyChildPolicies" rel="stylesheet"
		href="./script/psb/capla/static/css/8942.8b2b9e70.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-QualityRating-QualityRating" rel="stylesheet"
		href="./script/psb/capla/static/css/6389.e079c644.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PropertySectionCPC-PropertySectionCPCDesktop-PropertySectionCPCDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/7751.6367a217.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-ReliableInformation-ReliableInformation" rel="stylesheet"
		href="./script/psb/capla/static/css/4577.3adeda3a.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PropertyHostProfile-PropertyHostProfileDesktop-PropertyHostProfileDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/3388.0fa1acfa.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PropertyLocationBlock-PropertyLocationBlockDesktop-PropertyLocationBlockDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/9888.8548fce2.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-SustainabilityBanner-SustainabilityBannerDesktop-SustainabilityBannerDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/6839.db5be24d.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-TravelProud-TravelProudBannerDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/1964.4090a35d.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-SustainabilityBadge-SustainabilityBadge" rel="stylesheet"
		href="./script/psb/capla/static/css/4093.c7be1ece.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-TripTypesHotelPage-BeachesCarouselDesktop-BeachesCarouselDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/8919.8575da72.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-TripTypeLabelsInfo-BeachBadgeDesktop-BeachBadgeDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/8294.73af7ab3.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-TripTypeLabelsInfo-SkiToDoorBadgeDesktop-SkiToDoorBadgeDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/6775.d421c9d4.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-TripTypesHotelPage-SkiLiftsNearbyListDesktop-SkiLiftsNearbyListDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/959.2365b0a1.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-UkraineWarningBanner-UkraineWarningBanner" rel="stylesheet"
		href="./script/psb/capla/static/css/7901.b10d5ba2.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyQuestionsAnswers-PropertyQuestionsAnswersDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/1192.d862c183.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="bookingcom-checkout-bp-accommodation-components-PriceMatch-PriceMatch"
		rel="stylesheet" href="./script/psb/capla/static/css/2009.dcffdc0a.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="bookingcom-search-web-searchresults-components-SearchBoxDesktop-SearchBoxDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/6477.dc74bb70.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="bookingcom-web-shell-header-mfe-components-AccommodationHeader-PropertyPageHeader" rel="stylesheet"
		href="./script/psb/capla/static/css/8445.87c6e501.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="bookingcom-web-shell-header-mfe-components-GlobalAlerts" rel="stylesheet"
		href="./script/psb/capla/static/css/3665.db7fb8e8.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="PropertyFacilitiesBlockDesktopFull" rel="stylesheet"
		href="./script/psb/capla/static/css/3330.89b0ef86.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyReviewsRegion-PropertyReviewsRegionBlock"
		rel="stylesheet" href="./script/psb/capla/static/css/8650.aabc41b8.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="components-PropertyRestaurantsBlock-PropertyRestaurantsBlock"
		rel="stylesheet" href="./script/psb/capla/static/css/3231.fb675001.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi" data-chunk="bookingcom-alpaca-patterns-PropertySectionDesktop-PropertySectionDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/7914.1b032e4c.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PromotionalBannerDesktop-PromotionalRegionOneDesktop-PromotionalRegionOneDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/6557.96f533eb.chunk.css">
	<link nonce="9jmEHBuvHcdLmqi"
		data-chunk="components-PropertyInferredLocationScore-PropertyInferredLocationScoreDesktop-PropertyInferredLocationScoreDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/8890.7898e5a5.chunk.css">
</head>

<body data-bui-theme="traveller-light" id="b2hotelPage"
	class="bookings2 b2 hotel zh lang_is_ltr lang_is_cjk header_reshuffle no_bg_img nobg user_center app_user_center sb_gradient_border b-sprite-3 lt ds-traveller-header lx_cwv_font_swap bigblue_std_sm bigblue_std_lg iconfont_is_loading  zh2 loc-searchbox-lighter a11y-facilities-contrast iq-x-bar iq-x-bar-new ">
	<a href="#basiclayout" class="a11y-skip-to-content">跳至主要内容</a>
	<script type="text/javascript" nonce="9jmEHBuvHcdLmqi">
		window.utag_data = {
			site: 'bookings2',
			stypeid: '1',
			action: 'hotel',
			crt: '1',
			fbp: '1',
			exp1: '',
			exp2: '0',
			bem: '0',
			bip: '0',
			exp_rmkt_test: 'global_on',
			exp_google_tag_manager: '1',
			ns: '0',
			nsc: '0',
			famem: '-1',
			famfn: '-1',
			fampn: '-1',
			gcem: '-1',
			gcpn: '-1',
			gwcur: '-1',
			gwcuc: '-1',
			rb: '0',
			gst: '1',
			fbqs: '',
			sage: '237',
			alev: '0',
			atid: '204',
			atnm: '酒店',
			biz_s: '2',
			biz_p: '',
			bo: '1',
			browser: 'chrome',
			browser_ver: '112',
			bstage: '',
			emksho: '1',
			is_subscribed_to_newsletter: '',
			genis: '',
			glev: '',
			n_b: '',
			sid: 'f0f82b20b46106bf73b9641ed765ee02',
			ui: '',
			is_aid_mcc_level_tracked: '',
			partner_channel_id: '17',
			ttv: '42.82',
			ttv_uc: '325.00',
			p1: '3.2115',
			hotel_class: 3,
			hotel_name: '南京东山智选假日酒店',
			channel_id: '17',
			partner_id: '488148',
			ai: '397645',
			tsmp: '1683712005',
			adults: '1',
			book_window: '23',
			children: '-1',
			district_name: '-1',
			city_name: '南京',
			region_name: '江苏',
			country_name: '中国',
			currency: 'CNY',
			date_in: '2023-06-02',
			cul: '0',
			mnns: '0',
			date_out: '2023-06-03',
			dayofwk: '5',
			depth: '2',
			dest_type: 'hotel',
			dest_id: '4685428',
			dest_cc: 'cn',
			dest_ufi: '-1919548',
			dest_name: '南京, 江苏, 中国',
			hotel_count: '0',
			hotel_id: '4685428',
			hotel_id_list: '',
			hr: '0',
			i1: '',
			i2: '',
			i3: '',
			isfd: '',
			isnl: '',
			label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB',
			language: 'zh-cn',
			logged_in: '0',
			nights: '1',
			cv: '-1',
			ordv: '-1',
			rooms: '1',
			seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
			sid_dyna: '006437635abb568e6b72f09341ecd74afe_1683711000',
			srord: '-1',
			sub: '0',
			ui_a: '0',
			user_location: 'cn',
			cip: '153.3.60.235',
			cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
			pid: '',
			stid: '397645',
			gaclientid: '',
			bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
			tag_cdn: 'tags.tiqcdn.com',
			cspn: '9jmEHBuvHcdLmqi',
			rmk_var: '-1',
			rbda: '-1',
			isnv: '0',
			isrtv: '1',
			israv: '0',
			commaud: '-1'
		};
		window.dataLayer = [{
			site: 'bookings2',
			stypeid: '1',
			action: 'hotel',
			crt: '1',
			fbp: '1',
			exp1: '',
			exp2: '0',
			bem: '0',
			bip: '0',
			exp_rmkt_test: 'global_on',
			exp_google_tag_manager: '1',
			ns: '0',
			nsc: '0',
			famem: '-1',
			famfn: '-1',
			fampn: '-1',
			gcem: '-1',
			gcpn: '-1',
			gwcur: '-1',
			gwcuc: '-1',
			rb: '0',
			gst: '1',
			fbqs: '',
			sage: '237',
			alev: '0',
			atid: '204',
			atnm: '酒店',
			biz_s: '2',
			biz_p: '',
			bo: '1',
			browser: 'chrome',
			browser_ver: '112',
			bstage: '',
			emksho: '1',
			is_subscribed_to_newsletter: '',
			genis: '',
			glev: '',
			n_b: '',
			sid: 'f0f82b20b46106bf73b9641ed765ee02',
			ui: '',
			is_aid_mcc_level_tracked: '',
			partner_channel_id: '17',
			ttv: '42.82',
			ttv_uc: '325.00',
			p1: '3.2115',
			hotel_class: 3,
			hotel_name: '南京东山智选假日酒店',
			channel_id: '17',
			partner_id: '488148',
			ai: '397645',
			tsmp: '1683712005',
			adults: '1',
			book_window: '23',
			children: '-1',
			district_name: '-1',
			city_name: '南京',
			region_name: '江苏',
			country_name: '中国',
			currency: 'CNY',
			date_in: '2023-06-02',
			cul: '0',
			mnns: '0',
			date_out: '2023-06-03',
			dayofwk: '5',
			depth: '2',
			dest_type: 'hotel',
			dest_id: '4685428',
			dest_cc: 'cn',
			dest_ufi: '-1919548',
			dest_name: '南京, 江苏, 中国',
			hotel_count: '0',
			hotel_id: '4685428',
			hotel_id_list: '',
			hr: '0',
			i1: '',
			i2: '',
			i3: '',
			isfd: '',
			isnl: '',
			label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB',
			language: 'zh-cn',
			logged_in: '0',
			nights: '1',
			cv: '-1',
			ordv: '-1',
			rooms: '1',
			seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
			sid_dyna: '006437635abb568e6b72f09341ecd74afe_1683711000',
			srord: '-1',
			sub: '0',
			ui_a: '0',
			user_location: 'cn',
			cip: '153.3.60.235',
			cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
			pid: '',
			stid: '397645',
			gaclientid: '',
			bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
			tag_cdn: 'tags.tiqcdn.com',
			cspn: '9jmEHBuvHcdLmqi',
			rmk_var: '-1',
			rbda: '-1',
			isnv: '0',
			isrtv: '1',
			israv: '0',
			commaud: '-1'
		}] || window.dataLayer;
		(function (a, b, c, d) {
			if (window.location.search.indexOf('gitlab_runner') > -1 || document.cookie.indexOf('gitlab_runner') > -1) return;
			var w = window || {};
			function loadTagContainer() {
				if (B && B.et && B.et.stage) {
					B.et.stage('aaTBNZZJRLESPIDNJC', 1);
					B.et.stage('aaTBNZZJRLdQANAFQFaLESPIDNJC', 1);
					B.et.stage('aaTBNZZJRLESPIDNJDPVBC', 1);
					B.et.stage('aaTBNZZJRLESPIDNJDPVBC', 2);
				}
				(function (w, d, s, l, i) {
					w[l] = w[l] || []; w[l].push({
						'gtm.start':
							new Date().getTime(), event: 'gtm.js'
					}); var f = d.getElementsByTagName(s)[0],
						j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.nonce = '9jmEHBuvHcdLmqi'; j.async = true; j.src =
							'https://www.googletagmanager.com/gtm.js?id=GTM-5Q664QZ'; f.parentNode.insertBefore(j, f);
				})(window, document, 'script', 'dataLayer', 'GTM-5Q664QZ');
			};
			if (w.addEventListener) {
				w.addEventListener('load', loadTagContainer, false);
			} else if (w.attachEvent) {
				w.attachEvent('onload', loadTagContainer);
			}
		})();
	</script>
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5Q664QZ" height="0" width="0"
			style="display:none;visibility:hidden"></iframe></noscript>
	<div data-capla-component="b-property-web-property-page/TravellerHeader"
		data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
		<div class="web-shell-header-mfe" data-testid="web-shell-header-mfe">
			<header class=" b4ea8459d6">
				<nav class="c20fd9b542">
					<div class="f9966e6860">
						<div class="a945757098"><span data-testid="header-logo"><a data-testid="header-booking-logo"
									aria-label="Booking.com"
									href="./index.jsp"
									class="fc63351294"><svg xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 180 30">
										<path fill="#fff"
											d="M70.6 2.73999C70.602 2.19808 70.7646 1.66892 71.0673 1.21943C71.3701 0.769947 71.7993 0.420321 72.3007 0.214768C72.8021 0.00921437 73.3532 -0.0430342 73.8843 0.064629C74.4155 0.172292 74.9027 0.435032 75.2845 0.819622C75.6663 1.20421 75.9255 1.69338 76.0293 2.22527C76.133 2.75716 76.0768 3.30788 75.8676 3.80779C75.6584 4.3077 75.3056 4.73434 74.8539 5.03377C74.4022 5.3332 73.8719 5.49197 73.33 5.48999C72.9702 5.48868 72.6141 5.41651 72.2822 5.2776C71.9503 5.13869 71.649 4.93576 71.3955 4.6804C71.1419 4.42504 70.9412 4.12225 70.8047 3.78931C70.6683 3.45637 70.5987 3.09982 70.6 2.73999V2.73999ZM116.5 23.77C117.044 23.772 117.577 23.6124 118.031 23.3114C118.484 23.0104 118.838 22.5816 119.048 22.0793C119.257 21.577 119.313 21.0238 119.208 20.4897C119.103 19.9555 118.842 19.4646 118.458 19.079C118.074 18.6934 117.584 18.4305 117.05 18.3236C116.516 18.2167 115.963 18.2705 115.46 18.4784C114.957 18.6862 114.527 19.0387 114.224 19.4911C113.922 19.9436 113.76 20.4757 113.76 21.02C113.76 21.7476 114.048 22.4456 114.562 22.961C115.075 23.4764 115.772 23.7673 116.5 23.77V23.77ZM25.7 6.72999C24.0129 6.74775 22.3688 7.26426 20.9746 8.21447C19.5805 9.16469 18.4986 10.5061 17.8653 12.0699C17.2319 13.6337 17.0754 15.3499 17.4154 17.0025C17.7554 18.6551 18.5767 20.1701 19.776 21.3569C20.9752 22.5436 22.4988 23.349 24.1548 23.6717C25.8108 23.9944 27.5253 23.8199 29.0824 23.1702C30.6395 22.5205 31.9695 21.4247 32.9051 20.0206C33.8406 18.6166 34.3399 16.9672 34.34 15.28C34.3768 14.1396 34.1778 13.0038 33.7555 11.9438C33.3331 10.8839 32.6965 9.92248 31.8855 9.11989C31.0744 8.3173 30.1064 7.69078 29.0421 7.27955C27.9778 6.86831 26.84 6.68122 25.7 6.72999V6.72999ZM25.7 19.83C23.35 19.83 21.7 17.96 21.7 15.28C21.7 12.6 23.34 10.73 25.7 10.73C28.06 10.73 29.7 12.6 29.7 15.28C29.7 17.96 28.11 19.83 25.7 19.83ZM65.3 15.71C65.1321 15.3716 64.9128 15.0613 64.65 14.79L64.5 14.63L64.66 14.48C64.9116 14.2078 65.1423 13.917 65.35 13.61L69.74 7.05999H64.41L61.1 12.19C60.9586 12.3442 60.782 12.4621 60.5852 12.5334C60.3885 12.6048 60.1774 12.6277 59.97 12.6H59.22V2.90999C59.22 0.979993 58.01 0.709993 56.71 0.709993H54.48V23.58H59.21V16.72H59.65C60.19 16.72 60.56 16.78 60.73 17.08L63.35 21.97C63.5773 22.5089 63.9785 22.9563 64.4895 23.2408C65.0006 23.5253 65.5922 23.6306 66.17 23.54H69.8L67.09 19.07L65.3 15.71ZM88.27 6.68999C87.3747 6.67014 86.4851 6.83782 85.6584 7.18226C84.8318 7.5267 84.0863 8.04028 83.47 8.68999L83.18 8.97999L83.08 8.57999C82.9261 8.08803 82.6021 7.66692 82.166 7.39207C81.7299 7.11723 81.2102 7.0066 80.7 7.07999H78.57V23.57H83.29V15.97C83.275 15.2919 83.373 14.6159 83.58 13.97C83.7979 13.1302 84.2923 12.3883 84.9836 11.8639C85.6748 11.3396 86.5225 11.0634 87.39 11.08C88.85 11.08 89.39 11.85 89.39 13.86V21.05C89.335 21.3921 89.3619 21.7424 89.4686 22.072C89.5753 22.4017 89.7586 22.7013 90.0036 22.9463C90.2487 23.1914 90.5483 23.3747 90.878 23.4814C91.2076 23.5881 91.5579 23.615 91.9 23.56H94.12V13.07C94.15 8.89999 92.12 6.68999 88.27 6.68999V6.68999ZM73.39 7.05999H71.17V23.58H75.87V9.57999C75.9234 9.24041 75.8964 8.89304 75.7913 8.56576C75.6862 8.23848 75.5058 7.94038 75.2647 7.69537C75.0236 7.45037 74.7284 7.26527 74.4028 7.15493C74.0773 7.04459 73.7304 7.01208 73.39 7.05999V7.05999ZM44.16 6.72999C42.4729 6.74775 40.8288 7.26426 39.4346 8.21447C38.0405 9.16469 36.9586 10.5061 36.3253 12.0699C35.6919 13.6337 35.5354 15.3499 35.8754 17.0025C36.2154 18.6551 37.0367 20.1701 38.236 21.3569C39.4352 22.5436 40.9588 23.349 42.6148 23.6717C44.2708 23.9944 45.9853 23.8199 47.5424 23.1702C49.0995 22.5205 50.4295 21.4247 51.3651 20.0206C52.3006 18.6166 52.7999 16.9672 52.8 15.28C52.8368 14.1396 52.6378 13.0038 52.2155 11.9438C51.7931 10.8839 51.1565 9.92248 50.3455 9.11989C49.5344 8.3173 48.5664 7.69078 47.5021 7.27955C46.4378 6.86831 45.3 6.68122 44.16 6.72999V6.72999ZM44.16 19.83C41.81 19.83 40.16 17.96 40.16 15.28C40.16 12.6 41.8 10.73 44.16 10.73C46.52 10.73 48.16 12.6 48.16 15.28C48.16 17.96 46.57 19.83 44.16 19.83ZM144.89 6.72999C143.203 6.74775 141.559 7.26426 140.165 8.21447C138.77 9.16469 137.689 10.5061 137.055 12.0699C136.422 13.6337 136.265 15.3499 136.605 17.0025C136.945 18.6551 137.767 20.1701 138.966 21.3569C140.165 22.5436 141.689 23.349 143.345 23.6717C145.001 23.9944 146.715 23.8199 148.272 23.1702C149.829 22.5205 151.16 21.4247 152.095 20.0206C153.031 18.6166 153.53 16.9672 153.53 15.28C153.567 14.1396 153.368 13.0038 152.945 11.9438C152.523 10.8839 151.887 9.92248 151.075 9.11989C150.264 8.3173 149.296 7.69078 148.232 7.27955C147.168 6.86831 146.03 6.68122 144.89 6.72999V6.72999ZM144.89 19.83C142.54 19.83 140.89 17.96 140.89 15.28C140.89 12.6 142.53 10.73 144.89 10.73C147.25 10.73 148.89 12.6 148.89 15.28C148.89 17.96 147.3 19.83 144.89 19.83ZM109.74 7.01999C109.356 6.98285 108.97 7.05749 108.627 7.23491C108.285 7.41233 108.001 7.68497 107.81 8.01999L107.69 8.26999L107.47 8.07999C106.253 7.08344 104.711 6.57072 103.14 6.63999C98.75 6.63999 95.78 9.94999 95.78 14.87C95.78 19.79 98.85 23.22 103.23 23.22C104.521 23.2791 105.795 22.9061 106.85 22.16L107.21 21.88V22.34C107.21 24.55 105.78 25.77 103.21 25.77C102.131 25.755 101.062 25.5555 100.05 25.18C99.8562 25.0813 99.6419 25.0295 99.4244 25.0287C99.2069 25.0279 98.9923 25.0782 98.7977 25.1754C98.6032 25.2727 98.4342 25.4143 98.3043 25.5887C98.1745 25.7632 98.0874 25.9657 98.05 26.18L97.14 28.46L97.47 28.63C99.2593 29.5195 101.232 29.9783 103.23 29.97C107.23 29.97 111.9 27.91 111.9 22.14V7.01999H109.74ZM104.06 19.11C101.5 19.11 100.58 16.86 100.58 14.76C100.58 13.83 100.81 10.76 103.81 10.76C105.3 10.76 107.3 11.18 107.3 14.86C107.3 18.38 105.54 19.11 104.06 19.11ZM13.09 11.85L12.4 11.47L13 10.97C13.6103 10.4334 14.0951 9.76919 14.42 9.02435C14.7449 8.27951 14.9019 7.47231 14.88 6.65999C14.88 3.05999 12.09 0.739993 7.79 0.739993H2.31C1.69606 0.762953 1.11431 1.02048 0.684566 1.45953C0.254821 1.89857 0.00981021 2.48571 0 3.09999L0 23.5H7.88C12.67 23.5 15.77 20.89 15.77 16.84C15.8104 15.8446 15.583 14.8566 15.1116 13.9789C14.6403 13.1012 13.9421 12.3661 13.09 11.85V11.85ZM4.37 6.07999C4.37 5.01999 4.82 4.51999 5.8 4.45999H7.8C8.16093 4.42761 8.52456 4.47504 8.8651 4.59892C9.20565 4.7228 9.51476 4.9201 9.77052 5.17681C10.0263 5.43353 10.2224 5.74338 10.345 6.08438C10.4676 6.42538 10.5137 6.78919 10.48 7.14999C10.5194 7.51629 10.4791 7.88679 10.3616 8.23598C10.2442 8.58517 10.0524 8.90477 9.79964 9.17277C9.54684 9.44077 9.23898 9.65082 8.89723 9.78844C8.55549 9.92606 8.18798 9.988 7.82 9.96999H4.37V6.07999ZM8.2 19.64H4.37V15.06C4.37 14.06 4.76 13.57 5.59 13.45H8.2C8.99043 13.4949 9.7337 13.8406 10.2774 14.4161C10.8211 14.9916 11.124 15.7533 11.124 16.545C11.124 17.3367 10.8211 18.0984 10.2774 18.6739C9.7337 19.2494 8.99043 19.595 8.2 19.64ZM174.53 6.73999C173.558 6.74366 172.6 6.96575 171.726 7.38984C170.852 7.81393 170.084 8.42915 169.48 9.18999L169.14 9.62999L168.87 9.13999C168.437 8.355 167.787 7.71128 166.998 7.2857C166.209 6.86012 165.314 6.67067 164.42 6.73999C163.604 6.75328 162.798 6.93308 162.054 7.26838C161.309 7.60368 160.641 8.08742 160.09 8.68999L159.65 9.16999L159.48 8.53999C159.323 8.07152 159.008 7.67282 158.587 7.41334C158.167 7.15386 157.669 7.05005 157.18 7.11999H155.18V23.57H159.64V16.31C159.646 15.6629 159.727 15.0187 159.88 14.39C160.31 12.63 161.49 10.74 163.47 10.93C164.69 11.05 165.29 11.99 165.29 13.82V23.57H169.81V16.31C169.791 15.6345 169.875 14.9601 170.06 14.31C170.42 12.64 171.65 10.92 173.56 10.92C174.94 10.92 175.45 11.7 175.45 13.81V21.17C175.45 22.83 176.19 23.57 177.85 23.57H180V13.07C180 8.86999 178.15 6.73999 174.53 6.73999ZM133.69 17.86C132.51 19.095 130.913 19.8471 129.21 19.97C128.593 20.0073 127.974 19.914 127.395 19.6962C126.816 19.4784 126.29 19.141 125.85 18.706C125.41 18.271 125.067 17.7482 124.843 17.1716C124.619 16.5951 124.519 15.9778 124.55 15.36C124.498 14.7504 124.575 14.1365 124.776 13.5588C124.978 12.981 125.299 12.4524 125.719 12.0076C126.14 11.5629 126.649 11.212 127.215 10.978C127.78 10.744 128.388 10.6322 129 10.65C129.84 10.65 130.8 10.95 130.95 11.46V11.55C131.048 11.8986 131.258 12.2056 131.547 12.424C131.835 12.6425 132.188 12.7605 132.55 12.76H135V10.61C135 7.76999 131.39 6.73999 129 6.73999C123.81 6.73999 120 10.37 120 15.35C120 20.33 123.73 23.97 128.86 23.97C130.178 23.9562 131.479 23.6722 132.683 23.1355C133.887 22.5989 134.969 21.821 135.86 20.85L134 17.58L133.69 17.86Z">
										</path>
									</svg></a></span></div>
					</div>
					<div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 c7b46bab72"><span class="cb5ebe3ffb"><button
								aria-expanded="false" data-testid="header-currency-picker-trigger" aria-label="人民币价格"
								type="button"
								class="fc63351294 a822bdf511 e3c025e003 cfb238afa1 c334e6f658 e634344169"><span
									class="e57ffa4eb5">CNY</span></button></span><span class="cb5ebe3ffb"></span><span class="cb5ebe3ffb"><button aria-expanded="false"
								aria-label="关注Booking.com官方微信号" data-testid="header-social-entrypoint"
								data-social-type="wechat" type="button"
								class="fc63351294 a822bdf511 e3c025e003 fa565176a8 cfb238afa1 c334e6f658 e634344169"><span
									class="b9def0936d"><span class="b6dc9a9e69 e6c50852bd" aria-hidden="true"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 128 128">
											<path
												d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.701 50.701 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.099 25.099 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z">
											</path>
										</svg></span></span></button></span><span class="cb5ebe3ffb"><a
								aria-expanded="false" aria-label="客户支持" data-testid="header-help-center"
								href="" class="fc63351294 a822bdf511 e3c025e003 fa565176a8 cfb238afa1 c334e6f658 e634344169"><span
									class="b9def0936d"><span class="b6dc9a9e69 e6c50852bd" aria-hidden="true"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
											<path
												d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z">
											</path>
										</svg></span></span></a></span>
						<script type="text/javascript">
							checkRecords = function() {
								var phone = prompt("输入手机号，查看历史订单");
								if(phone == null){
									return;
								}
								if(phone == ""){
									window.alert("手机号不能为空！");
									return;
								}
								document.getElementById("phone_input").value = phone;
								document.getElementById("checkRecordsForm").submit();
							}
						</script>
						<form id="checkRecordsForm" action="/SoftwareEngineering_war_exploded/checkRecords" method="GET">
							<input type="hidden" name="phone" id="phone_input" value="" />
						</form>		
						<div class="bb0b3e18ca d9b0185ac2">
						<a data-testid="header-sign-in-button" aria-label="登录"
							onclick="checkRecords()" class="fc63351294 a822bdf511 e2b4ffd73d f7db01295e c334e6f658 a9a04704ee js-header-login-link">
							<span class="e57ffa4eb5">查看历史订单</span></a></div>
					</div>
				</nav>
				<nav data-testid="header-xpb" aria-label="你想搜索哪里？"
					aria-owns="accommodations flights cars attractions airport_taxis"
					class="fb995cecb1 f61b048379 f7a80ddfd4">
					<div class="bc13adc8ab b2c0e7d253">
						<ul class="e20caabacb">
							<li class="d7ba686b8a e69171d050"><a id="accommodations" aria-current="page"
									aria-controls="accommodations" tabindex="0"
									href="./index.jsp"
									class="fc63351294 fa030f4cc2 f44d43bbc4 d4e373d880"><span
										class="b6dc9a9e69 ff00c05ba0 e6c50852bd" aria-hidden="true"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
											<path
												d="M2.75 12h18.5c.69 0 1.25.56 1.25 1.25V18l.75-.75H.75l.75.75v-4.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 13.25V18c0 .414.336.75.75.75h22.5A.75.75 0 0 0 24 18v-4.75a2.75 2.75 0 0 0-2.75-2.75H2.75zM0 18v3a.75.75 0 0 0 1.5 0v-3A.75.75 0 0 0 0 18zm22.5 0v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm-.75-6.75V4.5a2.25 2.25 0 0 0-2.25-2.25h-15A2.25 2.25 0 0 0 2.25 4.5v6.75a.75.75 0 0 0 1.5 0V4.5a.75.75 0 0 1 .75-.75h15a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 0 1.5 0zm-13.25-3h7a.25.25 0 0 1 .25.25v2.75l.75-.75h-9l.75.75V8.5a.25.25 0 0 1 .25-.25zm0-1.5A1.75 1.75 0 0 0 6.75 8.5v2.75c0 .414.336.75.75.75h9a.75.75 0 0 0 .75-.75V8.5a1.75 1.75 0 0 0-1.75-1.75h-7z">
											</path>
										</svg></span>
									<div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643"><span
											class="db29ecfbe2">住宿</span></div>
								</a></li>
							
						</ul>
					</div>
				</nav>
			</header>
		</div>
	</div>
	<div id="bodyconstraint" class="  bodyconstraint_increased-min-width  ">
		<div id="bodyconstraint-inner">
			<div id="subheader-wrap" class="" style="">
				<div class="breadcrumb__multi_product_wrapper bui-spacer--medium clearfix">
					<nav id="breadcrumb" class="bui-breadcrumb breadcrumb--multi_product" role="navigation"
						aria-label="当前位置" data-lp-ga-view="breadcrumbs:view">
						<ol class="bui-group bui-group--inline bui-breadcrumb__list" itemscope
							itemtype="https://schema.org/BreadcrumbList">
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"
								data-google-track="Click/Breadcrumb/hotel -> home/1"
								class="bui-breadcrumb__item hp-breadcrumb__item">
								<div class="bui-breadcrumb__text">
									<a itemprop="item"
										href="./index.jsp" class="bui-link bui-link--primary bui_breadcrumb__link" title="Booking.com"
										data-lp-ga-click="breadcrumbs:click">
										首页
									</a>
									<meta itemprop="position" content="1">
									<meta itemprop="name" content="Booking.com">
								</div>
							</li>
							<svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
								role="presentation" width="16" viewBox="0 0 128 128" role="presentation"
								aria-hidden="true" focusable="false">
								<path
									d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
							</svg>
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"
								data-google-track="Click/Breadcrumb/hotel -> country/2"
								class="bui-breadcrumb__item hp-breadcrumb__item">
								<div class="bui-breadcrumb__text">
									<a itemprop="item"
										class="bui-link bui-link--primary bui_breadcrumb__link"
										title="&#x4E2D;&#x56FD;&#x9152;&#x5E97;" data-lp-ga-click="breadcrumbs:click">
										中国
									</a>
									<meta itemprop="position" content="2">
									<meta itemprop="name" content="&#x4E2D;&#x56FD;&#x9152;&#x5E97;">
									<div class="bui-dropdown" data-bui-component="Dropdown">
										<a class="bui-dropdown_link_trigger" data-bui-ref="dropdown-button"
											aria-haspopup="true" data-et-click="  ">
											<span class="bui-button__text">&#x9152;&#x5E97; <svg
													class="bk-icon -iconset-navarrow_down" fill="#BDBDBD" height="14"
													width="14" viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
													<path
														d="M64 88L33.2 57.2a4 4 0 0 1 5.6-5.7L64 76.7l25.2-25.2a4 4 0 0 1 5.6 5.7z" />
												</svg></span>
										</a>
										<div class="bui-dropdown__content" data-bui-ref="dropdown-slot">
											<div class="bui-dropdown-menu" id="dropdown_secondary_menu" role="menu">
												<ul class="bui-dropdown-menu__items">
													<li class="bui-dropdown-menu__item">
														<a class="bui-dropdown-menu__button"
															title="&#x4E2D;&#x56FD;&#x516C;&#x5BD3;"
															data-bui-ref="dropdown-item" role="link" tabindex="1"
															data-lp-ga-click="breadcrumbs:click">
															<span
																class="bui-dropdown-menu__text">&#x516C;&#x5BD3;</span>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</li>
							<svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
								role="presentation" width="16" viewBox="0 0 128 128" role="presentation"
								aria-hidden="true" focusable="false">
								<path
									d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
							</svg>
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"
								data-google-track="Click/Breadcrumb/hotel -> province/3"
								class="bui-breadcrumb__item hp-breadcrumb__item">
								<div class="bui-breadcrumb__text">
									<a itemprop="item"
										class="bui-link bui-link--primary bui_breadcrumb__link"
										title="&#x6C5F;&#x82CF;&#x9152;&#x5E97;" data-lp-ga-click="breadcrumbs:click">
										<%
											if(hotel_info == null){
												out.print("省份");
											}else{
												out.print(hotel_info.getProvince());
											}
										%>
									</a>
									<meta itemprop="position" content="3">
									<meta itemprop="name" content="&#x6C5F;&#x82CF;&#x9152;&#x5E97;">
									<div class="bui-dropdown" data-bui-component="Dropdown">
										<a class="bui-dropdown_link_trigger" data-bui-ref="dropdown-button"
											aria-haspopup="true" data-et-click="  ">
											<span class="bui-button__text">&#x9152;&#x5E97; <svg
													class="bk-icon -iconset-navarrow_down" fill="#BDBDBD" height="14"
													width="14" viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
													<path
														d="M64 88L33.2 57.2a4 4 0 0 1 5.6-5.7L64 76.7l25.2-25.2a4 4 0 0 1 5.6 5.7z" />
												</svg></span>
										</a>
										<div class="bui-dropdown__content" data-bui-ref="dropdown-slot">
											<div class="bui-dropdown-menu" id="dropdown_secondary_menu" role="menu">
												<ul class="bui-dropdown-menu__items">
													<li class="bui-dropdown-menu__item">
														<a 	class="bui-dropdown-menu__button"
															title="&#x6C5F;&#x82CF;&#x516C;&#x5BD3;"
															data-bui-ref="dropdown-item" role="link" tabindex="1"
															data-lp-ga-click="breadcrumbs:click">
															<span
																class="bui-dropdown-menu__text">&#x516C;&#x5BD3;</span>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</li>
							<svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
								role="presentation" width="16" viewBox="0 0 128 128" role="presentation"
								aria-hidden="true" focusable="false">
								<path
									d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
							</svg>
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"
								data-google-track="Click/Breadcrumb/hotel -> city/4"
								class="bui-breadcrumb__item hp-breadcrumb__item">
								<div class="bui-breadcrumb__text">
									<a itemprop="item"
										class="bui-link bui-link--primary bui_breadcrumb__link"
										title="&#x5357;&#x4EAC;&#x9152;&#x5E97;" data-lp-ga-click="breadcrumbs:click">
										<%
											if(hotel_info == null){
												out.print("地区");
											}else{
												out.print(hotel_info.getRegion());
											}
										%>
									</a>
									<meta itemprop="position" content="4">
									<meta itemprop="name" content="&#x5357;&#x4EAC;&#x9152;&#x5E97;">
									<div class="bui-dropdown" data-bui-component="Dropdown">
										<a class="bui-dropdown_link_trigger" data-bui-ref="dropdown-button"
											aria-haspopup="true" data-et-click="  ">
											<span class="bui-button__text">&#x9152;&#x5E97; <svg
													class="bk-icon -iconset-navarrow_down" fill="#BDBDBD" height="14"
													width="14" viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
													<path
														d="M64 88L33.2 57.2a4 4 0 0 1 5.6-5.7L64 76.7l25.2-25.2a4 4 0 0 1 5.6 5.7z" />
												</svg></span>
										</a>
										<div class="bui-dropdown__content" data-bui-ref="dropdown-slot">
											<div class="bui-dropdown-menu" id="dropdown_secondary_menu" role="menu">
												<ul class="bui-dropdown-menu__items">
													<li class="bui-dropdown-menu__item">
														<a 	class="bui-dropdown-menu__button"
															title="&#x5357;&#x4EAC;&#x516C;&#x5BD3;"
															data-bui-ref="dropdown-item" role="link" tabindex="1"
															data-lp-ga-click="breadcrumbs:click">
															<span
																class="bui-dropdown-menu__text">&#x516C;&#x5BD3;</span>
														</a>
													</li>
													<li class="bui-dropdown-menu__item">
														<a 	class="bui-dropdown-menu__button"
															title="&#x5357;&#x4EAC;&#x79DF;&#x8F66;"
															data-bui-ref="dropdown-item" role="link" tabindex="2"
															data-lp-ga-click="breadcrumbs:click">
															<span
																class="bui-dropdown-menu__text">&#x79DF;&#x8F66;</span>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</li>
							<svg class="bk-icon -iconset-navarrow_right bui-breadcrumb__icon" height="16"
								role="presentation" width="16" viewBox="0 0 128 128" role="presentation"
								aria-hidden="true" focusable="false">
								<path
									d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
							</svg>
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"
								data-google-track="Click/Breadcrumb/hotel -> hotel/5"
								class="bui-breadcrumb__item hp-breadcrumb__item">
								<div class="bui-breadcrumb__text">
									<div class="bui_breadcrumb__nolink">
										<h1>
											<a class="bui_breadcrumb__link_masked" itemprop="item"
												href="" data-lp-ga-click="breadcrumbs:click">
												<%
													if(hotel_info == null){
														out.print("酒店");
													}else{
														out.print(hotel_info.getHotel_name());
													}
												%>
												（中国）优惠
											</a>
										</h1>
									</div>
									<meta itemprop="position" content="5">
									<meta itemprop="name"
										content="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97; (&#x9152;&#x5E97;)&#xFF08;&#x4E2D;&#x56FD;&#xFF09;&#x4F18;&#x60E0;">
									<span></span>
								</div>
							</li>
						</ol>
					</nav>
				</div>
			</div>
			<div data-block-id="header_survey">
			</div>
			<div data-capla-component="b-property-web-property-page/GlobalAlerts"
				data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
				<div style="margin:0 0 16px;padding:0 5px">
					<div class="a1b3f50dcd e6f05e293e f7c6687c3d">
						<div data-testid="web-shell-global-alert"
							class="a826ba81c4 c793593141 fa2f36ad22 afd256fc79 d08f526e0d ed11e24d01">
							<div data-testid="global-alert-interactive-title" role="button" tabindex="0"
								class="fc63351294 fc2f2c0da8">
								<div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 d19ba76520 d840541ba4"><span
										data-testid="global-alert-decoration-icon"
										class="b6dc9a9e69 ec1b6253a6 bc1a6fdaa5" aria-hidden="true"><svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
											<path
												d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z">
											</path>
										</svg></span>
									<div class="b1e6dd8416 aacd9d0b0a">
										<div data-testid="global-alert-title" class="f9afbb0024">新冠肺炎（COVID-19）疫情帮助
										</div>
									</div><span data-testid="global-alert-icon-expand" class="b6dc9a9e69 ec1b6253a6"
										aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
											<path
												d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
											</path>
										</svg></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<svg class="bk-icon -genius-new_identity-genius_badge" height="174" style="display:none;" width="434"
				viewBox="0 0 434 174" role="presentation" aria-hidden="true" focusable="false">
				<g>
					<path
						d="M418.964 0H14.6335C6.65829 0 0.193115 6.46518 0.193115 14.4404V158.844C0.193115 166.819 6.65829 173.285 14.6335 173.285H418.964C426.939 173.285 433.404 166.819 433.404 158.844V14.4404C433.404 6.46518 426.939 0 418.964 0Z"
						fill="#004CB8" />
					<path
						d="M375.643 112.057C375.651 112.911 375.418 113.75 374.971 114.478C374.524 115.206 373.881 115.793 373.116 116.173C371.061 117.213 368.774 117.71 366.473 117.617C363.367 117.862 360.262 117.13 357.592 115.523C355.323 114.154 353.571 112.072 352.611 109.602C352.551 109.35 352.431 109.116 352.26 108.921C352.09 108.726 351.874 108.575 351.632 108.483C351.39 108.39 351.129 108.358 350.871 108.39C350.614 108.421 350.368 108.515 350.156 108.664L341.13 112.635C340.869 112.706 340.627 112.837 340.425 113.019C340.223 113.2 340.067 113.426 339.969 113.679C339.87 113.932 339.833 114.205 339.859 114.475C339.885 114.745 339.975 115.005 340.12 115.234C342.038 119.7 345.325 123.441 349.506 125.92C354.638 128.933 360.527 130.412 366.473 130.18C372.448 130.368 378.324 128.621 383.224 125.198C385.473 123.727 387.315 121.711 388.577 119.338C389.839 116.965 390.481 114.312 390.444 111.624C390.444 101.997 383.657 96.1488 370.083 94.079C366.842 93.6288 363.696 92.6533 360.769 91.1909C358.603 90.1801 356.148 88.8082 356.148 87.2198C356.194 86.4783 356.458 85.7669 356.908 85.1757C357.358 84.5845 357.973 84.14 358.676 83.8985C360.848 83.0046 363.187 82.5861 365.535 82.6711C367.779 82.6622 370.001 83.1271 372.054 84.0353C374.107 84.9435 375.945 86.2747 377.448 87.9418C377.63 88.1318 377.849 88.283 378.09 88.3863C378.332 88.4896 378.593 88.5429 378.856 88.5429C379.119 88.5429 379.379 88.4896 379.621 88.3863C379.863 88.283 380.082 88.1318 380.264 87.9418L386.69 82.1657C386.936 82.0362 387.148 81.8492 387.307 81.6204C387.466 81.3917 387.568 81.128 387.603 80.8517C387.639 80.5754 387.607 80.2946 387.511 80.0331C387.415 79.7717 387.257 79.5373 387.051 79.3498C382.053 74.4653 375.569 71.3872 368.625 70.6026C361.681 69.8179 354.673 71.3716 348.712 75.0177C346.74 76.4007 345.146 78.2548 344.074 80.4112C343.002 82.5675 342.487 84.9577 342.574 87.3642C342.567 89.4267 343.001 91.4669 343.848 93.3475C344.695 95.2281 345.935 96.9054 347.484 98.2667C351.292 101.398 355.888 103.422 360.769 104.115C364.771 104.676 368.681 105.769 372.394 107.364C373.334 107.744 374.143 108.391 374.72 109.225C375.297 110.059 375.618 111.043 375.643 112.057Z"
						fill="white" />
					<path
						d="M282.575 107.509C282.412 110.486 282.839 113.467 283.83 116.279C284.821 119.092 286.358 121.681 288.351 123.899C290.419 125.929 292.885 127.51 295.594 128.541C298.303 129.573 301.196 130.032 304.091 129.891C306.536 129.936 308.973 129.595 311.311 128.881C313.006 128.39 314.631 127.686 316.149 126.787C317.577 125.778 318.951 124.693 320.264 123.538L321.636 126.859C321.861 127.389 322.248 127.834 322.74 128.132C323.232 128.43 323.806 128.566 324.38 128.52H333.766C334.021 128.556 334.281 128.532 334.525 128.451C334.769 128.369 334.991 128.232 335.173 128.05C335.355 127.868 335.493 127.646 335.574 127.401C335.656 127.157 335.679 126.897 335.643 126.642V73.7906C335.635 73.5591 335.579 73.3319 335.478 73.1236C335.377 72.9152 335.233 72.7303 335.056 72.5807C334.879 72.4312 334.673 72.3202 334.451 72.255C334.229 72.1898 333.996 72.1718 333.766 72.2021H321.853C321.598 72.166 321.338 72.1897 321.094 72.2712C320.849 72.3528 320.627 72.49 320.445 72.6721C320.263 72.8542 320.126 73.0761 320.044 73.3203C319.963 73.5646 319.939 73.8244 319.975 74.0794V110.18C318.697 112.152 316.942 113.768 314.871 114.879C312.801 115.99 310.484 116.559 308.134 116.534C306.791 116.632 305.442 116.423 304.191 115.922C302.94 115.422 301.82 114.644 300.914 113.646C299.138 111.504 298.235 108.771 298.387 105.993V73.7906C298.387 72.5631 297.665 71.9133 296.365 71.9133H284.596C283.297 71.9133 282.575 72.5631 282.575 73.7906V107.509Z"
						fill="white" />
					<path
						d="M253.983 54.1515C253.968 55.5821 254.25 57.0002 254.809 58.3172C255.368 59.6341 256.193 60.8214 257.232 61.8049C259.299 63.8464 262.088 64.9912 264.993 64.9912C267.899 64.9912 270.688 63.8464 272.755 61.8049C273.786 60.8145 274.606 59.6261 275.166 58.3109C275.726 56.9958 276.015 55.581 276.015 54.1515C276.015 52.722 275.726 51.3073 275.166 49.9921C274.606 48.677 273.786 47.4885 272.755 46.4981C270.688 44.4566 267.899 43.3119 264.993 43.3119C262.088 43.3119 259.299 44.4566 257.232 46.4981C256.193 47.4816 255.368 48.669 254.809 49.9859C254.25 51.3028 253.968 52.7209 253.983 54.1515Z"
						fill="#FEBB02" />
					<path
						d="M247.413 90.7576C247.576 88.0348 247.187 85.307 246.269 82.7384C245.351 80.1699 243.922 77.8137 242.07 75.8118C239.996 73.9613 237.574 72.5422 234.946 71.6373C232.318 70.7324 229.536 70.3597 226.763 70.5411C220.636 70.5809 214.743 72.897 210.229 77.0393L208.64 73.7902C208.475 73.2445 208.126 72.7731 207.652 72.4569C207.177 72.1408 206.608 71.9995 206.041 72.0573H196.366C195.066 72.0573 194.344 72.6349 194.344 73.8624V126.714C194.344 127.942 195.066 128.591 196.366 128.591H208.207C209.507 128.591 210.229 127.942 210.229 126.714V90.6132C211.612 88.8509 213.33 87.3788 215.283 86.2811C217.277 85.0359 219.574 84.3617 221.925 84.3316C228.423 84.3316 231.745 87.7973 231.745 94.8009V126.714C231.745 127.212 231.942 127.69 232.295 128.042C232.647 128.394 233.124 128.591 233.622 128.591H245.68C246.178 128.591 246.655 128.394 247.007 128.042C247.359 127.69 247.557 127.212 247.557 126.714L247.413 90.7576Z"
						fill="white" />
					<path
						d="M187.268 102.527C187.268 103.826 186.691 104.404 185.391 104.404H144.597C145.345 107.742 147.142 110.752 149.723 112.996C152.483 115.254 155.981 116.412 159.543 116.245C161.98 116.337 164.397 115.785 166.552 114.644C168.707 113.503 170.523 111.814 171.817 109.747C172.25 109.025 173.045 108.953 174.055 109.747L184.236 113.935C185.391 114.368 185.68 115.018 185.03 116.029C182.534 120.559 178.83 124.307 174.33 126.857C169.831 129.406 164.711 130.657 159.543 130.469C151.507 130.607 143.735 127.602 137.882 122.094C134.918 119.341 132.584 115.98 131.038 112.242C129.493 108.503 128.774 104.475 128.929 100.433C128.765 96.3962 129.473 92.3715 131.005 88.6333C132.538 84.8952 134.859 81.5317 137.81 78.7724C140.626 76.0576 143.952 73.9264 147.595 72.5015C151.238 71.0765 155.127 70.3858 159.037 70.4692C162.9 70.2694 166.761 70.8864 170.369 72.2798C173.977 73.6732 177.25 75.8117 179.976 78.5558C184.948 84.1113 187.541 91.3968 187.196 98.8446L187.268 102.527ZM167.702 86.6424C165.206 84.7434 162.173 83.682 159.037 83.61C155.941 83.4943 152.894 84.4084 150.373 86.2092C148.049 87.9161 146.288 90.2799 145.319 92.9962H172.539C171.782 90.3459 170.055 88.0777 167.702 86.6424Z"
						fill="white" />
					<path
						d="M122.936 116.823C122.929 117.364 122.802 117.897 122.565 118.384C122.328 118.87 121.986 119.299 121.565 119.638C112.67 126.472 101.733 130.109 90.5177 129.963C78.5996 130.454 66.9709 126.213 58.1662 118.166C49.3615 110.119 44.0949 98.9172 43.5143 87.0032C44.1137 75.0649 49.3736 63.8383 58.1632 55.7373C66.9528 47.6363 78.5702 43.3077 90.5177 43.6821C101.588 43.6164 112.362 47.2503 121.131 54.0069C121.497 54.318 121.729 54.7572 121.781 55.2344C121.822 55.481 121.804 55.7338 121.729 55.9722C121.653 56.2105 121.523 56.4278 121.348 56.6062L112.756 66.4979C112.394 66.838 111.917 67.0274 111.42 67.0274C110.924 67.0274 110.446 66.838 110.084 66.4979C104.621 61.8534 97.6885 59.2953 90.5177 59.2777C83.1063 59.1579 75.9408 61.9357 70.5467 67.0197C65.1526 72.1037 61.9558 79.0923 61.637 86.4978C61.9931 93.8334 65.223 100.734 70.6278 105.706C76.0327 110.679 83.1779 113.323 90.5177 113.068C96.4716 113.09 102.308 111.412 107.341 108.231V96.8227H93.5502C93.3104 96.833 93.071 96.7935 92.8473 96.7065C92.6236 96.6195 92.4204 96.4869 92.2506 96.3173C92.0713 96.151 91.9277 95.9501 91.8284 95.7267C91.7291 95.5033 91.6762 95.2621 91.6729 95.0176V83.4653C91.6949 82.9748 91.9012 82.5107 92.2506 82.1657C92.6133 81.8537 93.072 81.6753 93.5502 81.6603H120.698C121.184 81.6599 121.651 81.8478 122.001 82.1843C122.351 82.5209 122.557 82.9801 122.575 83.4653L122.936 116.823Z"
						fill="white" />
					<path
						d="M264.597 72.2018H258.604C258.106 72.2018 257.629 72.3995 257.276 72.7516C256.924 73.1037 256.727 73.5811 256.727 74.079V127.075C256.727 127.573 256.924 128.051 257.276 128.403C257.629 128.755 258.106 128.952 258.604 128.952H271.384C271.882 128.952 272.359 128.755 272.711 128.403C273.063 128.051 273.261 127.573 273.261 127.075V80.866C273.446 79.686 273.35 78.4789 272.98 77.3432C272.61 76.2075 271.977 75.1753 271.132 74.3307C270.287 73.4861 269.255 72.853 268.119 72.4831C266.984 72.1131 265.777 72.0167 264.597 72.2018Z"
						fill="white" />
				</g>
			</svg>
			<svg class="bk-icon -streamline-square_rating" height="128" style="display:none;" width="112"
				viewBox="0 0 112 128" role="presentation" aria-hidden="true" focusable="false">
				<path
					d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z" />
			</svg>
			<svg class="bk-icon -streamline-circle" height="24" style="display:none;" width="24" viewBox="0 0 24 24"
				role="presentation" aria-hidden="true" focusable="false">
				<path d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z" />
			</svg>
			<svg class="bk-icon -streamline-circle_half" height="128" style="display:none;" width="128"
				viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
				<path
					d="M64 0C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-35.346-28.654-64-64-64zm0 120V8c30.928 0 56 25.072 56 56s-25.072 56-56 56z" />
			</svg>
			<svg class="bk-icon -streamline-star" height="24" style="display:none;" width="24" viewBox="0 0 24 24"
				role="presentation" aria-hidden="true" focusable="false">
				<path
					d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z" />
			</svg>
			<svg class="bk-icon -streamline-star_half" height="128" style="display:none;" width="128"
				viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
				<path
					d="M126.76 45.92a11.75 11.75 0 0 0-10.93-7.6H85.77L74.93 7.58A11.67 11.67 0 0 0 64 0h-.82c-.23 0-.45 0-.68.07-.23.07-.28 0-.42.06l-.72.15L61 .4c-.36.1-.71.21-1.07.34a11.65 11.65 0 0 0-6.83 6.84L42.25 38.31H12.18a11.67 11.67 0 0 0-11.13 8.18A11.39 11.39 0 0 0 .52 50a11.65 11.65 0 0 0 4.19 9l25.71 21.24-10.81 32.41c-2.024 6.113 1.282 12.711 7.39 14.75.4.13.81.23 1.21.32l.31.06c.39.082.783.139 1.18.17h1.59c.388-.017.776-.054 1.16-.11h.06a9.704 9.704 0 0 0 1.18-.26l.31-.08c.383-.114.76-.247 1.13-.4q.55-.24 1.11-.54l.26-.15c.365-.208.719-.435 1.06-.68L64 106.35l26.43 19.38a11.563 11.563 0 0 0 6.88 2.27c.596.001 1.19-.042 1.78-.13 6.367-.967 10.744-6.911 9.778-13.278-.1-.659-.257-1.309-.468-1.942L97.59 80.22l25.8-21.39a11.7 11.7 0 0 0 3.37-12.91zm-8.52 6.79l-26.52 22a6.59 6.59 0 0 0-2 7.11l11.12 33.37a3.66 3.66 0 0 1-2.95 4.81 3.578 3.578 0 0 1-2.72-.68l-27.29-20-.14-.08a6.781 6.781 0 0 0-.76-.47c-.16-.08-.33-.14-.49-.21-.16-.07-.3-.13-.46-.18-.16-.05-.39-.1-.58-.15L64.06 8a3.61 3.61 0 0 1 3.35 2.3l11.15 31.63a6.58 6.58 0 0 0 6.19 4.38h31.07a3.7 3.7 0 0 1 3.44 2.39 3.66 3.66 0 0 1-1.02 4.01z" />
			</svg>
			<div data-et-view="VIPfLCOIONNTDAHbZSdSUWDbaTaTaET:1"></div>
			<div id="hotelTmpl" class="">
				<div role="main" id="basiclayout">
					<div class="hotelchars">
						<div class="page-section">
							<div class="bui-grid bui-grid--size-small">
								<div class="hp--sidebar bui-grid__column bui-grid__column-3" role="complementary">
									<div class="bpg_holder_light_block">
										<div id="rate_guarantee_migration">
											
										</div>
									</div>
									<div data-component="arp-searchbox">
										<div data-capla-component="b-property-web-property-page/SearchBoxDesktop"
											data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
											<form class="baabfd4fca"
												action="/SoftwareEngineering_war_exploded/searchHotel" method="GET"
												target="_blank">
												<div data-testid="searchbox-layout-vertical"
													class="ffa9856b86 c43efd0a38 ed26a8024c a77cfdf411">
													<div class="fca8fcd83b bf46afcecd">
														<div class="c8305f6688">特价搜不停</div>
													</div>
													<div class="fca8fcd83b">
														<div class="f186805e02">
															<div class="d8eab2cf7f e2a710e162">目的地名称：</div>
															<div class="ab090fee6e cc6f7f2b89"
																data-testid="destination-container" role="none">
																<div class="db29ecfbe2 c072c8cf10 b1f9db9109">
																	<div class="a61cce10a1">
																		<div class="d4e829796c">
																			<div class="a713e2a62f"><span
																					class="b6dc9a9e69 ec1b6253a6 f86806591e"
																					aria-hidden="true"><svg
																						viewBox="0 0 128 128"
																						width="1em" height="1em">
																						<path
																							d="M118.8 113.2l-31-31A4 4 0 0 0 85 81a44 44 0 1 0-4 4 4 4 0 0 0 1.2 2.8l31 31a4 4 0 0 0 5.6-5.7zM52 88a36 36 0 1 1 36-36 36 36 0 0 1-36 36z">
																						</path>
																					</svg></span></div>
																		<input name="dest"
																				class="ce45093752" placeholder="目的地？"
																				data-destination="1" autoComplete="off"
																				id="dest" value="北京" />
																			<div class="ade92cdb3b bd7d7270ec"></div>
																		</div>
																	</div>
																</div>
																<div class="a7631de79e"></div>
															</div>
														</div>
													</div>
													<div class="fca8fcd83b">
														<div data-testid="searchbox-checkin-caption"
															class="d8eab2cf7f e2a710e162">入住日期</div>
														<div data-testid="searchbox-checkin-container"
															class="aea57a086d"><span
																	class="b6dc9a9e69 b859aa7e73 e6c50852bd f86806591e"
																	aria-hidden="true"><svg
																		xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 24 24">
																		<path
																			d="M22.502 13.5v8.25a.75.75 0 0 1-.75.75h-19.5a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.752 3h-19.5a2.25 2.25 0 0 0-2.25 2.25v16.5A2.25 2.25 0 0 0 2.252 24h19.5a2.25 2.25 0 0 0 2.25-2.25V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.752a.75.75 0 0 0 0 1.5zM7.502 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zm10.5 0V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0z">
																		</path>
																	</svg></span>
																<div class="b9c5dd7ce2"
																	data-testid="date-display-field-date-in-icon">
																</div>
																
																<input type="date" name="check_in_date" class="form-control" id="check_in_date"
                                               							value="2023-06-15" placeholder="入住日期"/>
																
																<span
																	data-testid="searchbox-form-button-icon"
																	class="b6dc9a9e69 f8931b3e81 e25355d3ee"
																	aria-hidden="true"><svg
																		xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 24 24">
																		<path
																			d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
																		</path>
																	</svg></span>
															</div>
														<div data-testid="searchbox-checkout-caption"
															class="d8eab2cf7f e2a710e162">退房日期</div>
														<div data-testid="searchbox-checkout-container"
															class="aea57a086d"><span
																	class="b6dc9a9e69 b859aa7e73 e6c50852bd f86806591e"
																	aria-hidden="true"><svg
																		xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 24 24">
																		<path
																			d="M22.502 13.5v8.25a.75.75 0 0 1-.75.75h-19.5a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.752 3h-19.5a2.25 2.25 0 0 0-2.25 2.25v16.5A2.25 2.25 0 0 0 2.252 24h19.5a2.25 2.25 0 0 0 2.25-2.25V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.752a.75.75 0 0 0 0 1.5zM7.502 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zm10.5 0V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0z">
																		</path>
																	</svg></span>
																<div class="b9c5dd7ce2"
																	data-testid="date-display-field-date-in-icon">
																</div>
																
																<input type="date" name="check_out_date" class="form-control" id="check_out_date"
                                               							value="2023-06-16" placeholder="退房日期"/>
																
																<span data-testid="searchbox-form-button-icon"
																	class="b6dc9a9e69 f8931b3e81 e25355d3ee"
																	aria-hidden="true"><svg
																		xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 24 24">
																		<path
																			d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
																		</path>
																	</svg></span>
															</div>
														
													</div>
													<div class="fca8fcd83b">
														<div tabindex="-1">
																<input type="number" name="adult_num" class="adult_num" id="adult_num" min="1" max="30" value="2"
							                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
							                                    位成人 ·
							                                    <input type="number" name="child_num" class="child_num" id="child_num" min="0" max="10" value="0"
							                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
							                                    名儿童 ·
							                                    <input type="number" name="room_num" class="room_num" id="room_num" min="1" max="30" value="1"
							                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
							                                    间客房
																
																<span
																	data-testid="searchbox-form-button-icon"
																	class="b6dc9a9e69 f8931b3e81 e25355d3ee"
																	aria-hidden="true"><svg
																		xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 24 24">
																		<path
																			d="M18 9.45c0 .2-.078.39-.22.53l-5 5a1.08 1.08 0 0 1-.78.32 1.1 1.1 0 0 1-.78-.32l-5-5a.75.75 0 0 1 0-1.06.74.74 0 0 1 1.06 0L12 13.64l4.72-4.72a.74.74 0 0 1 1.06 0 .73.73 0 0 1 .22.53zm-5.72 4.47zm-.57 0z">
																		</path>
																	</svg></span></div>
													</div>
													
													<div class="fca8fcd83b">
														<div><button type="submit"
																class="fc63351294 a822bdf511 d4b6b7a9e7 f7db01295e c938084447 f4605622ad c827b27356"><span
																	class="e57ffa4eb5">搜特价</span></button></div>
													</div>
												</div><input type="hidden" name="ssne" value="南京" /><input type="hidden"
													name="ssne_untouched" value="南京" /><input type="hidden"
													name="highlighted_hotels" value="4685428" />
											</form>
										</div>
									</div>
									<div class="hotel-sidebar-map">
									</div>
									</div>
								<div class="k2-hp--gallery-header bui-grid__column bui-grid__column-9">
									<div data-capla-component="b-property-web-property-page/PropertyHeaderNavDesktop"
										data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
										<div class="a6ef32f45e bui-spacer--large" data-testid="header-nav-container">
											<ul class="a569d17850">
												<li class="a0661136c9"><a href="#availability" data-tab-link="true"
														data-scroll="a[name=availability]">信息&amp;价格</a></li>
												
											</ul>
										</div>
									</div>
									<div data-et-view="THHSOFRURURYNYHIYTLRQJRbWdWOGVO:1"></div>
									<div data-et-view="THHSOFRURURYNYHIYTLRQJRbWdWOGVO:3"></div>
									<div data-et-view="THHSOFRURURYNYHIYTLRQJRbWdWOGVO:5"></div>
									<div data-et-view="THHSOFRURURYNYHIbQCeLSCNVAELIYbEfcWKe:1"></div>
									<div data-et-view="THHSOFRURURYNYHIbQCeLSCNVAELIYbEfcWKe:3"></div>
									<div data-et-view="THHSOFRURURYNYHIbQCeLSCNVAELIYbEfcWKe:9"></div>
									<div data-et-view="THHSOFRURURYNYHITZUFPBOcaGPaAHFHDQIC:1"></div>
									<div data-et-view="THHSOFRURURYNYHITZUFPBOcaGPaAHFHDQIC:3"></div>
									<div data-et-view="PPXGSCZWNOTEbWcKZIXXcffWe:2"></div>
									<div id="wrap-hotelpage-top" class="wrap-hotelpage-top" data-et-view="MCIAFKKZaTaTaBBUHBaWJHFYNLHXT:1">
										<form action="https://secure.booking.com/book.html" method="post" id="top-book"
											class="wrap-hotelpage-top__book top-book-form form_wl_fix">
											<input type="hidden" name="aid" value="397645" />
											<input type="hidden" name="label"
												value="bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4ApfO7aIGwAIB0gIkMzQyMWNhOGQtMWNmMi00YmQ5LWE4YWUtNjI2ZGY4OTQ1NDRj2AIE4AIB" />
											<input type="hidden" name="sid" value="f0f82b20b46106bf73b9641ed765ee02" />
											<input type="hidden" name="hostname" value="www.booking.com" />
											<input type="hidden" name="aid" value="397645" />
											<input type="hidden" name="hotel_id" value="4685428" />
											<input type="hidden" name="maxrooms" value="10" />
											<input type="hidden" name="stage" value="0" />
											<input type="hidden" name="interval" value="1" />
											<input type="hidden" name="checkin" value="2023-06-02" />
											<input type="hidden" name="nr_rooms_" value="nr_rooms_4685428" />
											<button class="txp-bui-header-pp bui-button bui-button--primary 
book_now_button_handler
 bui-u-pull-end" id="hp_book_now_button" type="button" data-url="" data-title="
&#x67E5;&#x770B;&#x7A7A;&#x623F;&#x60C5;&#x51B5;&#x548C;&#x623F;&#x4EF7;
" data-et-click="goal:hp_d_reserve_button_top_of_hp_clicked">
												<span class="bui-button__text">
													现在就预订
												</span>
												<span class="b-button__from-text book_now_rt_summary g-hidden"></span>
											</button>
											<button id="wl--" data-bui-component="" data-popover-content-id=""
												data-wl-hotel-saved="0" data-popover-position="bottom end"
												data-popover-trigger="click" data-component="wishlist/entrypoint"
												type="button" data-hotel-id="4685428" data-list-id="" data-key="hp_head"
												data-popover-z-index="modal" data-corner-icon="" data-bui-button="1"
												data-bui-button-type="tertiary" data-bui-button-size=""
												data-wl-icon-size="" data-expand-list="1" data-show-text=""
												data-placement="hp_title" data-position="bottom right"
												data-disable-tooltip="" data-title="" data-single-selection=""
												class="wl-entrypoint bui-button bui-button--tertiary "
												aria-label="添加至你的心愿单 " role="button" aria-live="assertive"
												data-loadingtext="加载中">
												<svg class="bk-icon -iconset-heart_outline" fill="#0071C2" height="16"
													width="16" viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
													<path
														d="M119.5 40.3a29 29 0 0 0-22.8-23.7 33.8 33.8 0 0 0-32.7 13 33.7 33.7 0 0 0-32.7-13A29 29 0 0 0 8.5 40.3c-1.3 7.2-.6 18.8 9.4 33.3A140 140 0 0 0 62 111.5a3.7 3.7 0 0 0 4 0c20.2-12 35-24.8 44.1-38 10-14.4 10.7-26 9.5-33.2zm-55.5 63c-33-20.1-50.8-43-47.7-61.6A20.7 20.7 0 0 1 33 24.3a22.3 22.3 0 0 1 4.5-.4c8.8 0 17.3 5.2 23.2 14.6a4 4 0 0 0 3.4 1.8 4 4 0 0 0 3.4-1.8c6-9.4 14.4-14.6 23.2-14.6a22.3 22.3 0 0 1 4.5.5 20.7 20.7 0 0 1 16.6 17.2c3 18.6-14.8 41.6-47.8 61.7z" />
												</svg>
												<div id="" class="bui-card bui-u-hidden">
													<div class="bui-card__content">
														<span class="list-manager__title">
															已从以下心愿单中删除：
														</span>
														<ul
															class="bui-list bui-list--unordered list-manager__removed-list">
														</ul>
													</div>
												</div>
											</button>
											<div class="property_share_wrapper"
												data-et-view="eWHMYTBADDbdEBVTQWUVIZdRRT:1 eWHMYTBADDbdEBVTQWUVIZdRRT:2">
												<div data-capla-component="b-property-web-property-page/PropertyShareDesktop"
													data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
													<div data-testid="PropertyShare-wrapper">
														<div data-testid="property-share-container"><span
																class="cb5ebe3ffb"><button aria-expanded="false"
																	aria-label="分享此住宿"
																	data-testid="property-share-button" type="button"
																	class="fc63351294 a822bdf511 e3c025e003 f7db01295e c334e6f658 e1b7cfea84"><span
																		class="e57ffa4eb5"><span
																			class="b6dc9a9e69 ec1b6253a6"
																			aria-hidden="true"><svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 24 24">
																				<path
																					d="M8.25 11.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zm12-5.25a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zm-1.5 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm1.5 0a4.5 4.5 0 1 0-9 0 4.5 4.5 0 0 0 9 0zM9.018 10.59l6.508-2.531a.75.75 0 0 0-.544-1.398L8.474 9.192a.75.75 0 1 0 .544 1.398zm-.748 3.009l6.79 3.395a.75.75 0 1 0 .67-1.342l-6.79-3.395a.75.75 0 1 0-.67 1.342z">
																				</path>
																			</svg></span></span></button></span></div>
													</div>
												</div>
											</div>
											<div class="topbook_pricematch">
												<div id="rate_guarantee">
													<div data-capla-component="b-property-web-property-page/PriceMatch/ssr/pp-sidebar"
														data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
														
													</div>
												</div>
											</div>
										</form>
										<div class="hp__hotel-title pp-header">
											<div id="hp_hotel_name">
												<span class="hp__hotel_ratings pp-header__badges">
													<span class="accommodation-type-badge-mfe-wrapper">
														<div data-capla-component="b-property-web-property-page/PropertyTypeBadge"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
															<div><span data-testid="property-type-badge"
																	class="d8eab2cf7f c9fccc9041 b862ccfc7d a7c6818653 a2df27a38f"><span
																		class="e2f34d59b1">酒店</span></span></div>
														</div>
													</span>
													<span class="hp__hotel_ratings__stars nowrap">
														<div data-capla-component="b-property-web-property-page/QualityRating"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
															<span class="cb5ebe3ffb c7b191f510">
																<div class="c276b6d5a5" data-testid="quality-rating"
																	aria-expanded="false"><span
																		data-testid="rating-circles"
																		class="fbb11b26f5 e23c0b1d74" role="img"><span
																			aria-hidden="true"
																			class="b6dc9a9e69 adc357e4f1 fe621d6382"><svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 24 24">
																				<path
																					d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z">
																				</path>
																			</svg></span><span aria-hidden="true"
																			class="b6dc9a9e69 adc357e4f1 fe621d6382"><svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 24 24">
																				<path
																					d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z">
																				</path>
																			</svg></span><span aria-hidden="true"
																			class="b6dc9a9e69 adc357e4f1 fe621d6382"><svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 24 24">
																				<path
																					d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z">
																				</path>
																			</svg></span></span></div>
															</span></div>
													</span>
													<svg aria-hidden="true" class="bk-icon -iconset-thumbs_up_square 
pp-icon-valign--initial" data-bui-component="Tooltip" data-et-mouseenter="" data-tooltip-position="bottom"
														data-tooltip-text="
这家住宿参与了我们的主推合作伙伴项目。主推住宿提供优质的服务和较高的性价比，为客人创造良好的体验。该住宿可能向Booking.com支付的佣金比例稍高。 
" fill="#FEBB02" height="24" rel="300" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true"
														focusable="false">
														<path
															d="M112 8H16a8 8 0 0 0-8 8v96a8 8 0 0 0 8 8h96a8 8 0 0 0 8-8V16a8 8 0 0 0-8-8zM48 96H24V58h24zm56-25a8.7 8.7 0 0 1-2 6 8.9 8.9 0 0 1 1 4 6.9 6.9 0 0 1-5 7c-.5 4-4.8 8-9 8H56V58l10.3-23.3a5.4 5.4 0 0 1 10.1 2.7 10.3 10.3 0 0 1-.6 2.7L72 52h23c4.5 0 9 3.5 9 8a9.2 9.2 0 0 1-2 5.3 7.5 7.5 0 0 1 2 5.7z" />
													</svg>
													<span class="beach-badge-mfe-wrapper">
														<div data-capla-component="b-property-web-property-page/BeachBadgeDesktop"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
														</div>
													</span>
													<span class="ski-badge-mfe-wrapper">
														<div data-capla-component="b-property-web-property-page/SkiToDoorBadgeDesktop"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
														</div>
													</span>
													<span class="sustainability-badge-mfe-wrapper">
														<div data-capla-component="b-property-web-property-page/SustainabilityBadge"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
														</div>
													</span>
												</span>
												<div data-capla-component="b-property-web-property-page/PropertyHeaderName"
													data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
													<div></div>
													<div></div>
													<div></div>
													<h2 class="d2fee87262 pp-header__title">
													<% 
													if(hotel_info == null) {
														out.print("酒店");
													}else{
														out.print(hotel_info.getHotel_name());
													}
													%>
													</h2>
												</div>
											</div>
										</div>
										<a href="#availability" class="fn  zh_adjusted" id="hp_hotel_name_reviews"
											style="display:none">
											<% 
												if(hotel_info == null) {
													out.print("酒店");
												}else{
													out.print(hotel_info.getHotel_name());
												}
											%>
										</a>
										<p class="address address_clean" id="showMap2">
											<span class="
hp_address_subtitle
js-hp_address_subtitle
jq_tooltip
" rel="14" data-source="top_link" data-coords="," data-component="tooltip" data-tooltip-text="
预订后，您可以在预订确认信和您的帐户中找到该住宿的详细信息（包括电话和地址）。
" data-tooltip-animation="false" tabindex="0" data-bbox="118.855990130754,31.9662845834269,118.898429869246,32.0022154165731"
												data-node_tt_id="location_score_tooltip" data-width="350" title="">
											<% 
												if(hotel_info == null) {
													out.print("地址");
												}else{
													out.print(hotel_info.getAddress());
												}
											%>
											</span>
										</p>
										<div class="location_score_tooltip" id="location_score_tooltip">
											预订后，您可以在预订确认信和您的帐户中找到该住宿的详细信息（包括电话和地址）。
										</div>
									</div>
									<div style="clear: both;"></div>
									<div class="hotelchars blockdisplay fbblock pretty_headers hp-consistent-vertical-rhythm"
										data-tab="main" id="blockdisplay1">
										<div id="hotel_main_content"
											class="nha_large_photo_main_content nha_large_photo_extra_height hp_gallery_buttons_redesign hp_gallery_buttons_redesign_var2">
											<div class=" gallery-side-reviews-wrapper js-no-close "
												data-component="gallery-side-reviews">
												<svg class="bk-icon -streamline-arrow_right" height="24"
													style="display:none;" width="24" viewBox="0 0 24 24"
													role="presentation" aria-hidden="true" focusable="false">
													<path
														d="M.75 12.75h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zm12.53 10.28l10.5-10.5a.75.75 0 0 0 0-1.06L13.28.97a.75.75 0 1 0-1.06 1.06l10.5 10.5v-1.06l-10.5 10.5a.75.75 0 1 0 1.06 1.06z" />
												</svg>
												<svg class="bk-icon -streamline-arrow_left" height="24"
													style="display:none;" width="24" viewBox="0 0 24 24"
													role="presentation" aria-hidden="true" focusable="false">
													<path
														d="M23.25 11.25H.75a.75.75 0 0 0 0 1.5h22.5a.75.75 0 0 0 0-1.5zM10.72.97L.22 11.47a.75.75 0 0 0 0 1.06l10.5 10.5a.75.75 0 1 0 1.06-1.06l-10.5-10.5v1.06l10.5-10.5A.75.75 0 0 0 10.72.97z" />
												</svg>
												<div class="clearfix bh-photo-grid bh-photo-grid--space-down fix-score-hover-opacity">
													<div class="hp-gallery-discount-tag">
													</div>
													
													<div aria-hidden="true">
														<a href="#" data-id="230593664"
															data-thumb-url="" class="bh-photo-grid-item bh-photo-grid-photo1 active-image "
															data-preview-image-layout="main"
															data-preview-image-ranking="1"
															style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_0.jpg"); %>);"
															title="&#x9152;&#x5E97;&#x6240;&#x5728;&#x5927;&#x697C;">
															<img src="<% out.print("./imgs/image/" + hotel_id + "_0.jpg"); %>" class="hide"
																alt="&#x9152;&#x5E97;&#x6240;&#x5728;&#x5927;&#x697C;" />
														</a>
													</div>
													
													<div aria-hidden="true">
														<a href="#" data-id="230589553"
															data-thumb-url="" data-preview-image-layout="main"
															data-preview-image-ranking="3"
															class="bh-photo-grid-item bh-photo-grid-side-photo active-image "
															style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_1.jpg"); %>);"
															title="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97;&#x5927;&#x5385;&#x6216;&#x63A5;&#x5F85;&#x533A;">
															<img src="<% out.print("./imgs/image/" + hotel_id + "_1.jpg"); %>" class="hide"
																alt="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97;&#x5927;&#x5385;&#x6216;&#x63A5;&#x5F85;&#x533A;" />
														</a>
													</div>
													<div aria-hidden="true">
														<a href="#" data-id="230590363"
															data-thumb-url="" class="bh-photo-grid-item bh-photo-grid-side-photo active-image"
															data-preview-image-layout="main"
															data-preview-image-ranking="31"
															style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_2.jpg"); %>);"
															title="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97;&#x7684;&#x4E00;&#x95F4;&#x6D74;&#x5BA4;">
															<img src="<% out.print("./imgs/image/" + hotel_id + "_2.jpg"); %>" class="hide"
																alt="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97;&#x7684;&#x4E00;&#x95F4;&#x6D74;&#x5BA4;" />
														</a>
													</div>
													<div class="bh-photo-grid-thumbs-wrapper" aria-hidden="true">
														<div class="bh-photo-grid-thumbs bh-photo-grid-thumbs-s-full">
															<div class="bh-photo-grid-thumb-cell" style="width: 196px;">
																<a href="#" data-id="230592608"
																	class="bh-photo-grid-item bh-photo-grid-thumb"
																	style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_3.jpg"); %>);"
																	data-preview-image-layout="thumbnail"
																	data-preview-image-ranking="19">
																	<img src="<% out.print("./imgs/image/" + hotel_id + "_3.jpg"); %>" class="hide" alt="" />
																</a>
															</div>
															<div class="bh-photo-grid-thumb-cell" style="width: 196px;">
																<a href="#" data-id="230588914"
																	class="bh-photo-grid-item bh-photo-grid-thumb"
																	style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_4.jpg"); %>);"
																	data-preview-image-layout="thumbnail"
																	data-preview-image-ranking="8">
																	<img src="<% out.print("./imgs/image/" + hotel_id + "_4.jpg"); %>" class="hide" alt="" />
																</a>
															</div>
															<div class="bh-photo-grid-thumb-cell" style="width: 196px;">
																<a href="#" data-id="230334860"
																	class="bh-photo-grid-item bh-photo-grid-thumb"
																	style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_5.jpg"); %>);"
																	data-preview-image-layout="thumbnail"
																	data-preview-image-ranking="2">
																	<img src="<% out.print("./imgs/image/" + hotel_id + "_5.jpg"); %>" class="hide"
																		alt="&#x5357;&#x4EAC;&#x4E1C;&#x5C71;&#x667A;&#x9009;&#x5047;&#x65E5;&#x9152;&#x5E97;&#x7684;&#x7535;&#x89C6;&#x548C;/&#x6216;&#x5A31;&#x4E50;&#x4E2D;&#x5FC3;" />
																</a>
															</div>
															<div class="bh-photo-grid-thumb-cell" style="width: 196px;">
																<a href="#"
																	class="bh-photo-grid-item bh-photo-grid-thumb js-bh-photo-grid-item-see-all"
																	style="background-image: url(<% out.print("./imgs/image/" + hotel_id + "_6.jpg"); %>);"
																	title="&#x9152;&#x5E97;&#x7684;&#x7528;&#x9910;&#x533A;"
																	data-preview-image-layout="see_more">
																	<img src="<% out.print("./imgs/image/" + hotel_id + "_6.jpg"); %>" class="hide" alt="" />
																</a>
															</div>													</div>
													</div>
												</div>
												<div class="bh-photo-modal-backdrop"></div>
												<div class=" bh-photo-modal bh-photo-modal--side-panel  bh-photo-modal--rt_overlay  "
													data-component="bh-photo-modal" data-is-rtl="" role="dialog"
													aria-label="南京东山智选假日酒店的相册">
													<div class="bh-photo-modal-header">
														<div class="bh-photo-modal-name-cta">
															<span class="bh-photo-modal-name">
																<%
																if(hotel_info == null){
																	out.print("酒店");
																}else{
																	out.print(hotel_info.getHotel_name());
																}
																
																%>
																<span class="c-accommodation-classification-rating">
																	<span
																		class="c-accommodation-classification-rating__badge c-accommodation-classification-rating__badge--dots c-accommodation-classification-rating__badge--with-tooltip"
																		data-component="accommodation-classification-rating"
																		title="&lt;p&gt;&#x6B64;&#x8BC4;&#x7EA7;&#x662F;&#x6839;&#x636E;&#x8BE5;&#x4F4F;&#x5BBF;&#x7684;&#x623F;&#x4EF7;&#x3001;&#x8BBE;&#x65BD;&#x548C;&#x670D;&#x52A1;&#x7EFC;&#x5408;&#x8BC4;&#x5B9A;&#x800C;&#x51FA;&#xFF0C;&#x4EC5;&#x4F9B;&#x53C2;&#x8003;&#x3002;&lt;/p&gt;">
																		<span class="bui-rating bui-rating--smaller"
																			role="img" aria-label="3 out of 5">
																			<span aria-hidden="true"
																				class="bui-icon bui-rating__item bui-icon--medium"
																				role="presentation">
																				<svg xmlns="http://www.w3.org/2000/svg"
																					viewBox="0 0 114 128"
																					focusable="false" aria-hidden="true"
																					role="img">
																					<path
																						d="M114 64A57 57 0 1157 7a57 57 0 0 1 57 57z">
																					</path>
																				</svg>
																			</span>
																			<span aria-hidden="true"
																				class="bui-icon bui-rating__item bui-icon--medium"
																				role="presentation">
																				<svg xmlns="http://www.w3.org/2000/svg"
																					viewBox="0 0 114 128"
																					focusable="false" aria-hidden="true"
																					role="img">
																					<path
																						d="M114 64A57 57 0 1157 7a57 57 0 0 1 57 57z">
																					</path>
																				</svg>
																			</span>
																			<span aria-hidden="true"
																				class="bui-icon bui-rating__item bui-icon--medium"
																				role="presentation">
																				<svg xmlns="http://www.w3.org/2000/svg"
																					viewBox="0 0 114 128"
																					focusable="false" aria-hidden="true"
																					role="img">
																					<path
																						d="M114 64A57 57 0 1157 7a57 57 0 0 1 57 57z">
																					</path>
																				</svg>
																			</span>
																		</span>
																	</span>
																</span>
															</span>
															<span>
																<button
																	class="bui-button bui-button--primary js-reserve-button"
																	type="button">
																	<span class="bui-button__text">立即预订</span>
																</button>
															</span>
														</div>
														<div
															class="bh-photo-modal-toolbar bh-photo-modal-toolbar--left js-back-to-gallery-wrapper js-no-close">
															<button
																class="bui-button bui-button--light bh-photo-modal-back js-bh-photo-modal-change-layout"
																data-layout="grid" title="相册">
																<span class="bui-button__icon">
																	<svg class="bk-icon -iconset-arrow_left" height="32"
																		width="32" viewBox="0 0 128 128"
																		role="presentation" aria-hidden="true"
																		focusable="false">
																		<path
																			d="M108 60H31.3l29.2-29.2a4 4 0 0 0-5.7-5.6L16 64l38.8 38.8a4 4 0 1 0 5.7-5.6L31.3 68H108a4 4 0 0 0 0-8z" />
																	</svg>
																</span>
																<span class="bui-button__text">
																	相册
																</span>
															</button>
														</div>
														<div class="bh-photo-modal-toolbar js-no-close">
															<button
																class="bui-button bui-button--light bh-photo-modal-close bh-no-user-select"
																role="button" title="关闭">
																<span class="bui-button__text">
																	关闭
																</span>
																<span class="bui-button__icon">
																	<svg class="bk-icon -iconset-close_bold" height="32"
																		width="32" viewBox="0 0 128 128"
																		role="presentation" aria-hidden="true"
																		focusable="false">
																		<path
																			d="M75.3 64l26.4-26.3a8 8 0 0 0-11.4-11.4L64 52.7 37.7 26.3a8 8 0 0 0-11.4 11.4L52.7 64 26.3 90.3a8 8 0 0 0 11.3 11.4L64 75.3l26.3 26.4a8 8 0 0 0 11.4-11.4z" />
																	</svg>
																</span>
															</button>
														</div>
													</div>
													<div class="bh-photo-modal__room-filter-container js-bh-photo-modal__room-filter-container js-bh-photo-modal-layout js-no-close"
														data-layout="grid">
														<div
															class="bh-photo-modal__room-filter bui-group bui-group--inline bui-group--large js-bh-photo-modal__room-filter">
														</div>
													</div>
													<div class="bh-photo-modal-thumbs-grid js-bh-photo-modal-layout js-no-close"
														data-layout="grid">
														<div class="bh-photo-modal-thumbs-grid__main">
															<div class="bh-photo-modal-masonry-grid">
																<div class="bh-photo-modal-masonry-grid-sizer"></div>
															</div>
														</div>
														<div class="bh-photo-modal-thumbs-grid__below"></div>
													</div>
													<div class="js-bh-photo-modal-layout" data-layout="photo-view">
														<div class="bh-photo-modal-image-container"></div>
														<a href="#"
															class="bui-button bui-button--light bh-photo-modal-prev"
															title="上一张照片">
															<span class="bui-button__icon">
																<svg class="bk-icon -iconset-navarrow_left" height="128"
																	width="128" viewBox="0 0 128 128"
																	role="presentation" aria-hidden="true"
																	focusable="false">
																	<path
																		d="M73.7 96a4 4 0 0 1-2.9-1.2L40 64l30.8-30.8a4 4 0 0 1 5.7 5.6L51.3 64l25.2 25.2a4 4 0 0 1-2.8 6.8z" />
																</svg>
															</span>
														</a>
														<a href="#"
															class="bui-button bui-button--light bh-photo-modal-next"
															title="下一张照片">
															<span class="bui-button__icon">
																<svg class="bk-icon -iconset-navarrow_right"
																	height="128" width="128" viewBox="0 0 128 128"
																	role="presentation" aria-hidden="true"
																	focusable="false">
																	<path
																		d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
																</svg>
															</span>
														</a>
														<div class="bh-photo-modal-caption-thumbs">
															<div
																class="bh-photo-modal-caption bh-photo-modal-caption--bigger">
																<span class="bh-photo-modal-caption-inner"></span></div>
															<div class="bh-photo-modal-thumbs-viewport">
																<div class="bh-photo-modal-thumbs-film">
																	<div
																		class="bh-photo-modal-thumbs-container bh-no-user-select">
																	</div>
																</div>
															</div>
														</div>
														<div class="g-hidden bh-photo-modal-cta-slide-wrapper">
															<div class="bh-photo-modal-cta-slide">
																<div class="hp-gallery__slide gallery__last-item js-gallery__last-item js-no-reviews"
																	data-photoid="last_item_cta"
																	data-gallery-insert-at="last">
																	<div
																		class="gallery__last-item__wrapper facilities-slide--conditions">
																		<p
																			class="gallery__last-item__usp tpi_last_image_text_new">
																			<%
																			String hotel_name;
																			Float hotel_rating;
																			Float hotel_price;
																			String hotel_region;
																			if(hotel_info == null){
																				hotel_name = "酒店";
																				hotel_rating = 0.0f;
																				hotel_price = 0.0f;
																				hotel_region = "地区";
																			}else{
																				hotel_name = hotel_info.getHotel_name();
																				hotel_rating = hotel_info.getRating();
																				hotel_price = hotel_info.getRooms().get(0).getPrice();
																				hotel_region = hotel_info.getRegion();
																			}
																			out.print(hotel_name);
																			%>
																			位置极佳（单项评分：
																			<% out.print(hotel_rating); %>
																			），且在您搜索日期内有空房，价格
																			<% out.print(hotel_price); %>
																			元起。
																		</p>
																		<p class="gallery__last-item__usp">
																			优惠不容错过，<button
																				class="gallery__last-item__cta js-gallery__last-item__cta"
																				data-scroll="a[name=availability]"
																				rel="main">立即预订吧</button>
																		</p>
																		<p class="gallery__last-item__usp">
																			所选日期内
																			<% out.print(hotel_region); %>
																			房量紧张：
																			15家类似的酒店在我们网站上暂无空房
																		</p>
																	</div>
																</div>
															</div>
														</div>
														
														<div class="bh-photo-modal-reviews g-hidden"></div>
													</div>
												</div>
												<div class="gallery-side-reviews-wrapper__side">
													<div class="gallery-side-reviews-wrapper__header">
														<div data-capla-component="b-property-web-property-page/PropertyReviewScoreLeft"
															data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
															<div
																class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 d19ba76520 review-score-left d17b3fe5e2">
																<div aria-label="评分9" class="b5cd09854e d10a6220b4">9.0
																</div>
																<div class="b1e6dd8416 aacd9d0b0a b48795b3df">
																	<div aria-label="评价好极了"
																		class="b5cd09854e f0d4d6a2f5 e46e88563a">
																		<!-- -->好极了</div>
																	<div class="d8eab2cf7f c90c0a70d3 db63693c62">8条住客点评
																	</div>
																</div>
															</div>
														</div>
													</div>
													
												</div>
											</div>
										</div>
									</div>

								</div>
								<div
									data-et-view=" eWHMADDbddHUYcLcDNIXNRAFTfNZeLT:4  eWHMADDbddHUYcLcDNIXNRAFTfNZeLT:6  ">
								</div>
								<div class="hp--bh_stripe bui-grid__column-12 js-k2-hp--block">
									<div data-capla-component="b-property-web-property-page/PropertyHighlights"
										data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
										<div data-testid="property-highlights">
											<div></div>
											<div class="db1c39e44a ceb95dad80" role="row">
												<%
													String facility_list_str = "免费无线网络连接,免费停车,空调";
													if(hotel_feature != null){
														facility_list_str = hotel_feature.getFacility_list();
													}
													String[] facility_list = facility_list_str.split(",");
													for(int i = 0; i < facility_list.length; ++i) {
														String pic_path = "";
														if(hotel_feature != null) {
															HashMap<String, String> facilities_pics = hotel_feature.getFacilities_pics();
															if(facilities_pics != null){
																pic_path = facilities_pics.get(facility_list[i]);
															}
														}
												%>
												<div data-testid="PROPERTY_107"
													class="ec680921b4 effc2ba4df ca9e0b0f4a fa32eb5d9a" role="cell">
													<div class="c89be40da5">
														<div class="e35246b6fb"><span
																class="b6dc9a9e69 c05d360c4e d05b9c02a2"
																aria-hidden="true"><svg
																	xmlns="http://www.w3.org/2000/svg"
																	viewBox="0 0 24 24">
																	<path
																		d="<% out.print(pic_path); %>">
																	</path>
																</svg></span></div>
													</div>
													<div class="db29ecfbe2 c21a2f2d97 fe87d598e8"><% out.print(facility_list[i]); %></div>
												</div>
												<% } %>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="page-section hp--desc_highlights js-k2-hp--block">
							<div class="">
								<div class="bui-grid">
									<div class="bui-grid__column bui-grid__column-8 k2-hp--description">
										<div class="hp-description k2-hp_main_desc--collapsed"
											data-et-view="goal:hp_property_description_seen">


											<div id="hotelDescription">
											<font size="4">
											<%
												if(hotel_des == null){
													out.print("酒店描述");
												}else{
													out.print(hotel_des.getDescription());
												}
											%>
											</font>
												
											</div>
												
											</div>
										
									</div>
									<div class="bui-grid__column bui-grid__column-4 k2-hp--highlights">
										<div class="property_hightlights_wrapper">
											
											<div class="property-highlights ph-icon-fill-color">
												<h3 class="bui-f-font-heading">
													住宿特色
												</h3>
												<div class="ph-section">
													<div class="ph-content">
														<h4 class="ph-item-header">好住处！</h4>
													</div>
													<div class="ph-content ">
														<p class="ph-item contextual-reviews-trigger">
															<span class="ph-icon-container" aria-hidden="true">
																<svg class="bk-icon -streamline-geo_pin_heart ph-icon"
																	height="20" width="20" viewBox="0 0 128 128"
																	role="presentation" aria-hidden="true"
																	focusable="false">
																	<path
																		d="M64 128a8 8 0 0 1-6.67-3.58c-4.21-6.35-13.62-21.53-22.15-38.1C25.11 66.76 20 52.52 20 44 20 19.7 39.7 0 64 0s44 19.7 44 44c0 8.52-5.11 22.76-15.18 42.32-8.53 16.57-17.94 31.75-22.15 38.1A8 8 0 0 1 64 128zM64 8C44.118 8 28 24.118 28 44c0 15.36 23.45 57.08 36 76 12.55-18.92 36-60.64 36-76 0-19.882-16.118-36-36-36zm0 60a4 4 0 0 1-2.89-1.23l-18.19-19c-5.616-5.901-5.384-15.238.517-20.853 5.73-5.452 14.739-5.415 20.423.083l.14.14.15-.14c5.639-5.88 14.976-6.074 20.855-.435 5.88 5.638 6.074 14.976.436 20.855-.144.15-.291.296-.441.44l-18.09 18.9A4 4 0 0 1 64 68zM53.42 30.67a7.853 7.853 0 0 0-1.08.08 6.76 6.76 0 0 0-3.69 11.45L64 58.22l15.28-15.95a6.753 6.753 0 0 0-9.48-9.62l-3 3a4 4 0 0 1-5.65 0l-3-3a6.75 6.75 0 0 0-4.73-1.98z" />
																</svg>
															</span>
															<span class="ph-item-copy ">
																<span class="ph-item-copy-top-location">
																<%
																	if(hotel_feature == null) {
																		out.print("位置较好");
																	}else{
																		String featureStr = hotel_feature.getFeature();
																		if(featureStr == null){
																			out.print("");
																		}else{
																			if(!featureStr.equals("NULL")) {
																				out.print(featureStr);
																			}
																		}
																	}
																%>
																</span>
															</span>
														</p>
													</div>
												</div>
												<div class="ph-section">
													<div class="ph-content">
														<h4 class="ph-item-header">早餐信息</h4>
													</div>
													<div class="ph-content ">
														<p class="ph-item contextual-reviews-trigger">
															<span class="ph-item-copy ">
																<span class="ph-item-copy-breakfast-option">
																<%
																	if(hotel_feature == null){
																		out.print("早餐");
																	}else{
																		String breakfastStr = hotel_feature.getBreakfast();
																		if(breakfastStr != null && !breakfastStr.equals("NULL")){
																			out.print(breakfastStr);
																		}
																	}
																%>
																</span>
															</span>
														</p>
													</div>
												</div>
												<div class="">
												</div>
												<div class="ph-section">
													<div tabindex="0" class="ph-content " data-title="">
														<p class="ph-item contextual-reviews-trigger">
															<span class="ph-icon-container" aria-hidden="true">
																<svg class="bk-icon -streamline-parking_sign ph-icon"
																	height="20" width="20" viewBox="0 0 24 24"
																	role="presentation" aria-hidden="true"
																	focusable="false">
																	<path
																		d="M22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12zm-9.75-1.5a1.5 1.5 0 0 1-1.5 1.5H10.5l.75.75v-4.5L10.5 9h2.25a1.5 1.5 0 0 1 1.5 1.5zm1.5 0a3 3 0 0 0-3-3H10.5a.75.75 0 0 0-.75.75v4.5c0 .414.336.75.75.75h2.25a3 3 0 0 0 3-3zm-4.5 6.75v-4.5a.75.75 0 0 0-1.5 0v4.5a.75.75 0 0 0 1.5 0z" />
																</svg>
															</span>
															<span class="ph-item-copy ">
																<span class="ph-item-copy-parking">免费停车场</span>
															</span>
														</p>
													</div>
												</div>
												<div class="ph-footer">
													
													<div class="hp-lists-ph">
														<div class="txp-sidebar-block hp-lists hp-lists--save-wl-below-ph hide"
															data-hotel-id="4685428">
															
														</div>
													</div>
												</div>
											</div>
											<div class="hp--reliable-information">
												<div data-capla-component="b-property-web-property-page/ReliableInformation"
													data-capla-namespace="b-property-web-property-pageEQYZTYLJ"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr class="bui-divider" />
						<div class="page-section js-k2-hp--block k2-hp--rt">
							<div id="hp_availability_style_changes" class="var-1 ">
								<a name="availability"></a>
								<div class="hp-section-header hp-section-header--with-badge ">
									<h2 class="hp-dates-summary__header" id="availability_target"
										name="availability_target">
										空房情况
									</h2>
									<div id="rate_guarantee">
										<div data-capla-component="b-property-web-property-page/PriceMatch/ssr/pp-sidebar"
											data-capla-namespace="b-property-web-property-pageEQYZTYLJ"><span
												class="cb5ebe3ffb"><button data-testid="price-match-trigger"
													aria-expanded="false" type="button"
													class="fc63351294 a822bdf511 e3c025e003 fa565176a8 f7db01295e c334e6f658 e1b7cfea84"><span
														class="b9def0936d dd184ea559"><span
															class="b6dc9a9e69 e25355d3ee" aria-hidden="true"><svg
																xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
																<path
																	d="M.311 2.56v6.257a3.75 3.75 0 0 0 1.098 2.651l11.56 11.562a2.25 2.25 0 0 0 3.182 0l6.88-6.88a2.25 2.25 0 0 0 0-3.181L11.468 1.408A3.75 3.75 0 0 0 8.818.31H2.56a2.25 2.25 0 0 0-2.25 2.25zm1.5 0a.75.75 0 0 1 .75-.75h6.257a2.25 2.25 0 0 1 1.59.659l11.562 11.56a.75.75 0 0 1 0 1.06l-6.88 6.88a.75.75 0 0 1-1.06 0L2.47 10.409a2.25 2.25 0 0 1-.659-1.59V2.56zm5.25 3.75a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.5 0a2.25 2.25 0 1 0-4.5 0 2.25 2.25 0 0 0 4.5 0z">
																</path>
															</svg></span></span><span
														class="e57ffa4eb5">价格更放心</span></button></span></div>
									</div>
								</div>
								<div data-bui-theme="legacy-light" data-et-view="HZUaQSYeJPOKZeKSdJeQDYBC:2">
									<div class="sb-searchbox__outer" data-sb-outer>
										
									</div>
								</div>
								<div style="height:1px; overflow:hidden;"></div>
								<div class="description urt" id="rooms_table" style="margin: 0;">
									<div style="height:1px; overflow:hidden;"></div>
									<div id="errorNoRoomSelected" class="u-hidden">
										<span class="exclamation">&nbsp;!&nbsp;</span>
										<p class="error">
											请选择想要预订的数量
										</p>
									</div>
									<div id="available_rooms">
										<div class="roomArea" id="maxotelRoomArea">
											<div data-capla-component="b-property-web-property-page/ChildrenNotAllowedBanner"
												data-capla-namespace="b-property-web-property-pageEQYZTYLJ"></div>
											<!--  
											<div class="bui-f-font-heading bui-spacer--medium">
												按类筛选：
											</div>
											<div class="bui-spacer--large">
												<div id="hprt-ut-filters"
													data-component="hotel/rooms-table/filters/unit-type">
													<div class="bui-group bui-group--inline bui-group--large"
														role="group">
														<div class="bui-form__group">
															<div class="bui-f-font rt-filter-option__loader">&nbsp;
															</div>
														</div>
													</div>
												</div>
											</div>
											-->
											<!-- #region 预定表单提交  -->
											
											<script type="text/javascript">
												orderRoom = function() {
													var orderRecord = "";
													
													var numOfRoomTypes= <% out.print(hotel_info.getRooms().size()); %>
													var hotel_id = "<% out.print(hotel_id); %>";
													var check_in_date = "<% out.print(check_in_date); %>";
													var check_out_date = "<% out.print(check_out_date); %>";
													var room_num_selects = document.getElementsByName("room_num_select");
													var no_selected = true;
													for(i = 0; i < numOfRoomTypes; ++i) {
														var select = room_num_selects[i];
														console.log(select);
														var index = select.selectedIndex;
														var room_num = select.options[index].value;
														if(room_num != "0"){
															no_selected = false;
															var room_id = select.getAttribute("room-id");
															if(orderRecord == ""){
																orderRecord += hotel_id;
															}else{
																orderRecord += "," + hotel_id;
															}
															orderRecord += "," + room_id;
															orderRecord += "," + room_num;
															orderRecord += "," + check_in_date;
															orderRecord += "," + check_out_date;
														}
													}

													if(no_selected){
														// warning
														window.alert("请至少选择一间房间！");
													}else{
														// submit
														document.getElementById("orderRecord").value=orderRecord;
														document.getElementById("hprt-form").submit();
													}
												}
												
											</script>
											<form id="hprt-form" autocomplete="off"
												action="/SoftwareEngineering_war_exploded/order" method="get">
												
												<input type="hidden" name="orderRecord" id="orderRecord" value=""/>
							
												<div class="select_room_tooltip_alert_container"
													data-component="hotel/new-rooms-table/select-error-tooltip">
													<div class="select_room_tooltip_alert_reminder shadow">
														<p>
															<span class="invisible_spoken">错误：</span>
															请选择想要预订的数量
														</p>
														<span></span>
													</div>
												</div>
												<div class="hprt-container" data-bui-theme="legacy-light">
													<div class="hprt-table-column">
														<svg aria-hidden="true" class="bk-icon -iconset-bed"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M120 96v11.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4v-4H16v3.8a4.1 4.1 0 0 1-3.6 4.2 4 4 0 0 1-4.4-4V96a8 8 0 0 1 8-8h96a8 8 0 0 1 8 8zm-8-16a16 16 0 0 0-16-16H32a16 16 0 0 0-16 16v4h96zM24 36a4 4 0 0 1 4-4h72a4 4 0 0 1 4 4v16l8 8V36a12 12 0 0 0-12-12H28a12 12 0 0 0-12 12v24l8-8z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -iconset-bunk_bed"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M104 87v5H24v-5a8 8 0 0 1 8-8h64a8 8 0 0 1 8 8zm0-40a8 8 0 0 0-8-8H32a8 8 0 0 0-8 8v5h80zm16-19v88a4 4 0 0 1-8 0v-12H16v12a4 4 0 0 1-8 0V12a4 4 0 0 1 8 0v44h96V28a4 4 0 0 1 8 0zM16 96h96V64H16z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -iconset-double_bed"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M120 88v8a4 4 0 0 1-8 0v-8H16v8a4 4 0 0 1-8 0v-8a8 8 0 0 1 8-8h96a8 8 0 0 1 8 8zM20 52a4 4 0 0 1 4-4h80a4 4 0 0 1 4 4v8h8v-8a12 12 0 0 0-12-12H24a12 12 0 0 0-12 12v8h8zm40 20a8 8 0 0 0-8-8H20a8 8 0 0 0-8 8v4h48zm16-8a8 8 0 0 0-8 8v4h48v-4a8 8 0 0 0-8-8z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -iconset-couch"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M120 44v44a8 8 0 0 1-8 8h-8v6a2 2 0 0 1-2 2H90a2 2 0 0 1-2-2v-6H40v6a2 2 0 0 1-2 2H26a2 2 0 0 1-2-2v-6h-8a8 8 0 0 1-8-8V44a4 4 0 0 1 8 0v28h96V44a4 4 0 0 1 8 0zm-60-4a8 8 0 0 0-8-8H32a8 8 0 0 0-8 8v24h36zm44 0a8 8 0 0 0-8-8H76a8 8 0 0 0-8 8v24h36z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-bed"
															height="32" style="display:none;" width="46"
															viewBox="0 0 46 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M46.33 23.013v-.899c0-.83-.674-1.504-1.505-1.504H1.514c-.825 0-1.499.674-1.499 1.504v.899c0 .021-.014.038-.014.06v7.422A1.504 1.504 0 0 0 1.505 32h1.599c.831 0 1.502-.674 1.502-1.505v-3.319h37.121v3.319c0 .831.674 1.505 1.505 1.505h1.598c.831 0 1.505-.674 1.505-1.505v-7.456c0-.009-.005-.016-.005-.026z" />
															<path
																d="M8.147 10.912s-.328-1.01-.328-2.964c0-1.716.328-2.953.328-2.953.186-.893.596-1.339 1.587-1.584 1.406-.347 3.01-.296 4.448-.33 1.45-.029 2.9-.042 4.353-.061.616-.011 1.235.013 1.854.007.433-.004.866-.007 1.299-.013l.342-.006c.888.004 1.776.004 2.663.011.433.006.866.008 1.299.013.619.006 1.238-.019 1.854-.007 1.452.019 2.903.032 4.353.061 1.438.033 3.042-.018 4.448.33.992.246 1.402.692 1.588 1.584 0 0 .328 1.238.328 2.953 0 1.954-.328 2.964-.328 2.964-.117.385-.288.735-.532 1.012 1.456.403 2.799.871 3.979 1.42V2.334A2.327 2.327 0 0 0 39.354.006H16.046c0 .006-.003.01-.003.015L7.028 0a2.326 2.326 0 0 0-2.327 2.328v11.016c1.18-.549 2.522-1.018 3.978-1.42-.244-.277-.415-.627-.532-1.012z" />
															<path
																d="M23.203 11.782c-11.757 0-21.331 3.064-21.898 6.915h43.799c-.57-3.851-10.142-6.915-21.901-6.915z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-bunk"
															height="32" style="display:none;" width="46"
															viewBox="0 0 46 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M0 .993v30.014c0 .54.448.993 1 .993h3c.556 0 1-.445 1-.993V.993C5 .453 4.552 0 4 0H1C.444 0 0 .445 0 .993zm41 0v30.014c0 .54.448.993 1 .993h3c.556 0 1-.445 1-.993V.993C46 .453 45.552 0 45 0h-3c-.556 0-1 .445-1 .993zM41 26v3H5v-3h36zm0-16v3H5v-3h36zM6 24h34s0-6-17-6-17 6-17 6zM6 8h34s0-6-17-6S6 8 6 8z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-couch"
															height="32" style="display:none;" width="56"
															viewBox="0 0 56 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M26.347 18.465V-.049H8.531s-4.97.233-4.97 4.745h4.273v13.769h18.514z" />
															<path
																d="M29.196 18.465V-.049h17.816s4.97.233 4.97 4.745h-4.273v13.769H29.195z" />
															<path
																d="M50.558 7.784s.712-2.136 2.848-2.136 2.848 2.136 2.848 2.136v21.363s0 2.136-3.56 2.136H1.424s-2.136.712-2.136-2.848V7.784S0 5.648 2.136 5.648s2.848 2.136 2.848 2.136V23.45c0 .075-.712 2.136 2.136 2.136h40.589c2.974 0 2.848-2.848 2.848-2.848V7.784z" />
															<path
																d="M26.347 23.841v-3.24H7.833v1.424s.071 1.815 1.815 1.815h16.699z" />
															<path
																d="M29.196 23.841v-3.24H47.71v1.424s-.071 1.815-1.815 1.815H29.196z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-double"
															height="32" style="display:none;" width="96"
															viewBox="0 0 96 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M41.319 18.973H1.077c.695-3.848 12.649-6.76 27.054-6.76 7.957 0 15.1.888 20.018 2.332 4.903-1.442 12.015-2.332 19.954-2.332 14.408 0 26.177 2.929 26.875 6.777H41.316l.003-.016zm54.677 3.55c0-.817-.473-1.501-1.311-1.501H1.512C.68 21.022 0 21.705 0 22.523v.906l-.015.059.007 6.977c0 .832.68 1.501 1.519 1.501h1.964c.838 0 1.516-.669 1.516-1.501l-.008-2.474h85.994v2.474c0 .832.68 1.501 1.518 1.501h2.194c.838 0 1.31-.669 1.31-1.501v-7.022l-.004-.921zM7.945 7.893c0-1.709.33-2.942.33-2.942.188-.891.602-1.337 1.602-1.59 1.419-.342 3.037-.297 4.489-.327 1.464-.03 2.926-.045 4.393-.059.622-.015 1.246.015 1.871 0 .437 0 .874 0 1.311-.015h.345c.895 0 1.791 0 2.687.015.437 0 50.343 0 50.78.015.625 0 1.249-.03 1.871-.015 1.465.03 2.929.03 4.391.059 1.452.045 3.07-.015 4.49.342 1 .238 1.413.683 1.6 1.575 0 0 .332 1.233.332 2.957 0 1.946-.402 3.442-.402 3.442-.117.386-.29.728-.536 1.01 1.468.401 3.329.862 4.52 1.411V2.345A2.338 2.338 0 0 0 89.67.012H6.366c-1.299 0-2.348 1.04-2.348 2.318v11.441c1.191-.55 3.257-1.025 4.726-1.426-.246-.267-.419-.624-.537-1.01 0 0-.26-1.496-.26-3.442z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -iconset-info_sign"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M49.4 85l4.2-17.2c.7-2.7.8-3.8 0-3.8a29 29 0 0 0-8.8 3.8l-1.8-3A48 48 0 0 1 66.7 53c3.7 0 4.3 4.3 2.5 11l-5 18c-.7 3.3-.3 4.3.5 4.3a19 19 0 0 0 8.2-4L75 85c-8.6 8.7-18.2 12-21.8 12s-6.4-2.3-3.8-12zM75 36a9.2 9.2 0 0 1-9.2 9c-4.4 0-7-2.7-6.8-7a9 9 0 0 1 9.1-9c4.6 0 6.9 3.2 6.9 7z" />
															<path
																d="M62 16a48 48 0 1 1-48 48 48 48 0 0 1 48-48m0-8a56 56 0 1 0 56 56A56 56 0 0 0 62 8z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -iconset-checkmark_bold"
															height="128" style="display:none;" width="128"
															viewBox="0 0 128 128" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M52 102a8 8 0 0 1-5.7-2.3l-28-28a8 8 0 0 1 11.4-11.4L52 82.7l46.3-46.4a8 8 0 0 1 11.4 11.4l-52 52A8 8 0 0 1 52 102z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-dont"
															height="32" style="display:none;" width="32"
															viewBox="0 0 32 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M32 15.994C32.018 8.525 26.648 1.882 19.353.325 12.197-1.134 4.666 2.406 1.505 9.13-1.479 15.475.07 23.259 5.313 27.931c5.061 4.511 12.625 5.39 18.542 2.039C28.839 27.147 32 21.728 32 15.994zM11.244 5.767c4.536-2.095 10.005-.92 13.274 2.859 3.226 3.729 3.637 9.266.98 13.431L9.936 6.481c.423-.269.85-.509 1.308-.714.116-.054-.23.103 0 0zm1.547 21.049C5.738 24.677 2.486 16.222 6.466 9.964l15.536 15.548c-2.72 1.718-6.122 2.209-9.211 1.304-.126-.038 3.068.899 0 0z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -sprite-ico_i_rt"
															height="13" style="display:none;" width="13"
															viewBox="0 0 13 13" role="presentation" aria-hidden="true"
															focusable="false">
															<circle fill="#0096FF" cx="6.5" cy="6.5" r="6.5" />
															<path fill="#FFF"
																d="M3.9 4.2c.8-2.2 4.8-2.4 5.4.1.3 1.3-.7 2.2-1.7 3.1-.4.3-.3 1.1-.3 1.1H5.8c-.1 0 0-.8 0-.8.2-1.3 2-1.7 1.8-3.1-.1-.6-.7-.8-1.2-.7-1 .2-.9 1.5-.9 1.5H3.8c-.1-.4 0-.8.1-1.2.1-.3-.1.4 0 0zm3.5 5V11H5.6V9.2h1.8z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -experiments-hourglass"
															height="38" style="display:none;" width="30"
															viewBox="0 0 30 38" role="presentation" aria-hidden="true"
															focusable="false">
															<g fill-rule="evenodd">
																<path fill-rule="nonzero"
																	d="M10.7 20.7c-4.2 1.9-7.3 6.8-7.3 12.7v3.3h22.3v-3.3c0-5.9-3-10.8-7.3-12.7v-2a11 11 0 0 0 7.3-10.3V2.5H3.4v6c0 4.7 3 8.7 7.3 10.2v2zm-1.3-1.1c-4.4-2-7.3-6.3-7.3-11.2V1.3H27v7.1c0 5-3 9.2-7.3 11.2v.3c4.4 2.4 7.3 7.6 7.3 13.5V38H2.1v-4.6c0-5.9 3-11.1 7.3-13.5v-.3z" />
																<path
																	d="M2.5 35.5h24.1a2.5 2.5 0 0 1 2.5 2.5H0c0-1.4 1.1-2.5 2.5-2.5zm0-33h24.1A2.5 2.5 0 0 0 29.1 0H0c0 1.4 1.1 2.5 2.5 2.5zm20.2 7.6a6.7 6.7 0 0 1-6.7 6.4H13A6.7 6.7 0 0 1 6.4 10h16.3zm0 24.1a6.7 6.7 0 0 0-6.7-6.3H13a6.7 6.7 0 0 0-6.7 6.3h16.3z" />
																<rect width="2.6" height="2.1" x="13.3" y="16"
																	rx="1.1" />
																<rect width="2.6" height="2.1" x="13.3" y="19.4"
																	rx="1.1" />
																<rect width="2.6" height="2.1" x="13.3" y="22.8"
																	rx="1.1" />
																<rect width="2.6" height="2.1" x="13.3" y="25.8"
																	rx="1.1" />
															</g>
														</svg>
														<svg aria-hidden="true" class="bk-icon -fonticon-landscape"
															height="32" style="display:none;" width="40"
															viewBox="0 0 40 32" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M0 4c0-1.125.33-2.073.99-2.844S2.431 0 3.334 0h33.333c.903 0 1.684.385 2.344 1.156s.99 1.719.99 2.844v24c0 1.125-.33 2.073-.99 2.844S37.57 32 36.667 32H3.334c-.903 0-1.684-.385-2.344-1.156S0 29.125 0 28V4zm3.076 23.982h35.233L25.497 16.799l-4.804 6.391-11.21-11.183-6.406 15.976zm28.026-12.781c1.101 0 2.044-.391 2.828-1.173s1.176-1.722 1.176-2.821c0-1.098-.392-2.039-1.176-2.821s-1.727-1.173-2.828-1.173c-1.101 0-2.044.391-2.828 1.173s-1.176 1.722-1.176 2.821c0 1.098.392 2.039 1.176 2.821s1.727 1.173 2.828 1.173z" />
														</svg>
														<svg class="bk-icon -streamline-stop" height="24"
															style="display:none;" width="24" viewBox="0 0 24 24"
															role="presentation" aria-hidden="true" focusable="false">
															<path
																d="M22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12zM4.575 20.485l15.91-15.91a.75.75 0 0 0-1.06-1.06l-15.91 15.91a.75.75 0 1 0 1.06 1.06z" />
														</svg>
														<svg class="bk-icon -streamline-checkmark_selected" height="128"
															style="display:none;" width="128" viewBox="0 0 128 128"
															role="presentation" aria-hidden="true" focusable="false">
															<path
																d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z" />
														</svg>
														<svg aria-hidden="true" class="bk-icon -streamline-kettle"
															height="24" style="display:none;" width="24"
															viewBox="0 0 24 24" role="presentation" aria-hidden="true"
															focusable="false">
															<path
																d="M6.9 12.75h14.7a.75.75 0 0 0 0-1.5H6.9a.75.75 0 0 0 0 1.5zm-.764.75H3.621a2.871 2.871 0 0 0-2.03 4.901l3.879 3.88a.75.75 0 0 0 1.06-1.061l-3.879-3.88a1.371 1.371 0 0 1 .97-2.34h2.515a.75.75 0 0 0 0-1.5zm15.614 8.25a.75.75 0 0 1-.75.75H7.5a.75.75 0 0 1-.75-.75v-6a7.5 7.5 0 0 1 15 0v6zm1.5 0v-6a9 9 0 1 0-18 0v6A2.25 2.25 0 0 0 7.5 24H21a2.25 2.25 0 0 0 2.25-2.25zM15 6a.75.75 0 1 1-1.5 0A.75.75 0 0 1 15 6zm1.5 0A2.25 2.25 0 1 0 12 6a2.25 2.25 0 0 0 4.5 0zm5.25 5.005v-3.13C21.85 3.655 18.51.13 14.273 0 9.99.13 6.65 3.654 6.75 7.893v3.112a.75.75 0 0 0 1.5 0v-3.13A6.22 6.22 0 0 1 14.273 1.5c3.367.104 6.057 2.943 5.977 6.357v3.148a.75.75 0 0 0 1.5 0z" />
														</svg>
														<table id="hprt-table" class="hprt-table  hprt-table-cjk "
															data-et-view="goal:rt_onview PBAAcLZKCBPTMUPPeUbZBdGdfUC:3 PBAAcLZKCBPTMUPPeUbZBdGdfUC:4 EKESIJNGdLOLOLOCXSWAbDPfRe:1 EKESIJNGdLOLOLOVGUVLcfFdHVT:1 PPXGSCZWNOTEbWcKZIXXcffWe:3 PPXGSCZWNOTEbWcKZIXXcffWe:4">
															<caption class="invisible_spoken">
																选择预订房型和客房数量
															</caption>
															<thead>
																<tr class="hprt-table-header">
																	<th class="hprt-table-header-cell -first">
																		客房类型
																	</th>
																	<th class="hprt-table-header-cell">
																		客人数
																	</th>
																	<th
																		class="hprt-table-header-cell hprt-table-header-price">
																		今日价格
																	</th>
																	<th
																		class="hprt-table-header-cell hprt-table-header-policies">
																		预订须知</th>
																	<th
																		class="hprt-table-header-cell hprt-table-header-rooms-number">
																		<div
																			class="gently_select_rooms_container hp_info_tt">
																			<div
																				class="gently_select_rooms_reminder shadow">
																				<p>为了节省你的时间，我们默认选择了这家住宿适合1人入住的房型。你可以随时在下方修改房型或客房数量。
																				</p>
																				<span></span>
																			</div>
																		</div>
																		选择客房
																	</th>
																</tr>
															</thead>
															<tbody>
																<%
																	List<Room> rooms = new ArrayList<Room>();
																	if(hotel_info != null){
																		rooms = hotel_info.getRooms();
																	}
																	Integer numOfRooms = rooms.size();
																	for(int i = 0; i < numOfRooms; ++i) {
																		Room room = rooms.get(i);																
																%>
																<tr data-block-id="468542806_246088447_2_1_0"
																	data-hotel-rounded-price="325"
																	class="js-rt-block-row e2e-hprt-table-row hprt-table-cheapest-block hprt-table-cheapest-block-fix js-hprt-table-cheapest-block hprt-table-last-row ">
																	<td class="hprt-table-cell -first hprt-table-cell-roomtype droom_seperator"
																		rowspan="1">
																		<div class="hprt-block" data-et-view="">
																			<div data-et-mouseenter="goal:hp_rt_hovering_room_name"
																				class="hprt-roomtype-block hprt-roomtype-name hp_rt_room_name_icon__container">
																				<a name="RD468542806"
																					class="hprt-roomtype-scroll-target"></a>
																				<a class="hprt-roomtype-link" href="#RD468542806"
																					data-room-id="468542806"
																					id="room_type_id_468542806"
																					data-room-name="" data-et-click="">
																					<span
																						class="hprt-roomtype-icon-link ">
																						<% out.print(room.getRoom_name()); %>
																					</span>
																					<!--  <input type="hidden" name="room_id" value="<% out.print(room.getRoom_id()); %>" />-->
																					
																				</a>
																			</div>
																			<div class="hprt-roomtype-block ">
																			</div>
																			
																			<div class="hprt-roomtype-block">
																				<div class="hprt-facilities-block"
																					data-component="hotel/new-rooms-table/highlighted-facilities">
																					<div class="bui-spacer--medium">
																						<div class="hprt-facilities-facility"
																							data-name-en="privacy"
																							data-facility-id="0"
																							data-facility-type="0">
																						</div>
																						<% 
																							String room_facilities_str = room.getRoom_facilities();
																							String[] room_facilities = room_facilities_str.split(",");
																							Integer numOfFacilities = room_facilities.length;
																							
																							for(int j = 0; j < numOfFacilities; ++j) {
																								
																						%>
																						<div class="hprt-facilities-facility"
																							data-name-en="room size"
																							data-facility-id="0"
																							data-facility-type="0"><span
																								class=" bui-badge bui-badge--outline room_highlight_badge--without_borders">
																								<svg
																									class="bk-icon -streamline-room_size"
																									height="16"
																									width="16"
																									viewBox="0 0 24 24"
																									role="presentation"
																									aria-hidden="true"
																									focusable="false">
																									<path
																										d="M3.75 23.25V7.5a.75.75 0 0 0-1.5 0v15.75a.75.75 0 0 0 1.5 0zM.22 21.53l2.25 2.25a.75.75 0 0 0 1.06 0l2.25-2.25a.75.75 0 1 0-1.06-1.06l-2.25 2.25h1.06l-2.25-2.25a.75.75 0 0 0-1.06 1.06zM5.78 9.22L3.53 6.97a.75.75 0 0 0-1.06 0L.22 9.22a.75.75 0 1 0 1.06 1.06l2.25-2.25H2.47l2.25 2.25a.75.75 0 1 0 1.06-1.06zM7.5 3.75h15.75a.75.75 0 0 0 0-1.5H7.5a.75.75 0 0 0 0 1.5zM9.22.22L6.97 2.47a.75.75 0 0 0 0 1.06l2.25 2.25a.75.75 0 1 0 1.06-1.06L8.03 2.47v1.06l2.25-2.25A.75.75 0 1 0 9.22.22zm12.31 5.56l2.25-2.25a.75.75 0 0 0 0-1.06L21.53.22a.75.75 0 1 0-1.06 1.06l2.25 2.25V2.47l-2.25 2.25a.75.75 0 0 0 1.06 1.06zM10.5 13.05v7.2a2.25 2.25 0 0 0 2.25 2.25h6A2.25 2.25 0 0 0 21 20.25v-7.2a.75.75 0 0 0-1.5 0v7.2a.75.75 0 0 1-.75.75h-6a.75.75 0 0 1-.75-.75v-7.2a.75.75 0 0 0-1.5 0zm13.252 2.143l-6.497-5.85a2.25 2.25 0 0 0-3.01 0l-6.497 5.85a.75.75 0 0 0 1.004 1.114l6.497-5.85a.75.75 0 0 1 1.002 0l6.497 5.85a.75.75 0 0 0 1.004-1.114z" />
																								</svg>
																								<% out.print(room_facilities[j]); %>
																								</span></div>
																						<% } %>
																					</div>
																					<hr
																						class="bui-divider bui-spacer--medium" />
																					<% 
																						String room_more_facilities_str = room.getRoom_more_facilities();
																						if(!room_more_facilities_str.equals("NULL")) {
																					%>
																					<ul class="hprt-facilities-others">
																						<%
																							String[] room_more_facilities = room_more_facilities_str.split(",");
																							Integer numOfMoreFacilities = room_more_facilities.length;
																							
																							for(int j = 0; j < numOfMoreFacilities; ++j) {
																								
																						%>
																						<li>
																							<span
																								class="hprt-facilities-facility"
																								data-name-en="Free Toiletries">
																								<span
																									class=" other_facility_badge--default_color"><svg
																										class="bk-icon -streamline-checkmark"
																										fill="#008009"
																										height="14"
																										width="14"
																										viewBox="0 0 128 128"
																										role="presentation"
																										aria-hidden="true"
																										focusable="false">
																										<path
																											d="M56.33 100a4 4 0 0 1-2.82-1.16L20.68 66.12a4 4 0 1 1 5.64-5.65l29.57 29.46 45.42-60.33a4 4 0 1 1 6.38 4.8l-48.17 64a4 4 0 0 1-2.91 1.6z" />
																									</svg><% out.print(room_more_facilities[j]); %></span>
																							</span>
																						</li>
																						<% } %>
																						
																					</ul>
																					<% } %>
																				</div>
																			</div>
																		</div>
																	</td>
																	<td class=" hprt-table-cell hprt-table-cell-occupancy    droom_seperator">
																		<div class="hprt-block">
																			<div class="c-occupancy-icons hprt-occupancy-occupancy-info "
																				data-et-mouseenter="goal:hp_rt_hovering_occupancy"
																				style="font-size: 13px; color: #000000">
																				<span class="c-occupancy-icons__adults "
																					aria-hidden="true">
																					<i
																						class="bicon bicon-occupancy"></i><i
																						class="bicon bicon-occupancy"></i>
																				</span>
																				<span class="bui-u-sr-only">
																					<% out.print(room.getUsable_desc()); %>
																					<!-- 
																					&#x53EF;&#x5165;&#x4F4F;&#xFF1A;1 -
																					2&#x4F4D;&#x5BA2;&#x4EBA;
																					-->
																				</span>
																			</div>
																		</div>
																	</td>
																	<%
																			Float room_price = room.getPrice();
																			String room_price_str = String.format("%.2f", room_price);
																	%>
																	<td 
																		class="hp-price-left-align hprt-table-cell hprt-table-cell-price   droom_seperator">
																		<div class="hprt-price-block ">
																			<div
																				class="prco-wrapper bui-price-display prco-sr-default-assembly-wrapper ">
																				<div>
																					<div>
																					</div>
																					<div>
																						<div class="bui-price-display__value prco-text-nowrap-helper prco-inline-block-maker-helper prco-f-font-heading "
																							aria-hidden="true"
																							data-et-mouseenter="goal:desktop_room_list_price_column_hover_over_price">
																							<span
																								class="prco-valign-middle-helper">
																								<% out.print(room_price_str); %>元
																							</span>
																						</div>
																						<span class="bui-u-sr-only">
																							价格
																							<% out.print(room_price_str); %>元
																						</span>
																					</div>
																				</div>
																				
																			</div>
																		</div>
																	</td>
																	<td class=" hprt-table-cell hprt-table-cell-conditions  droom_seperator hprt-block-reposition-tooltip--container">
																		<div
																			class="hprt-block hprt-block-reposition-tooltip--conditions ">
																			<ul
																				class="hprt-conditions-bui bui-list bui-list--text bui-list--icon bui-f-font-caption">
																				<% 
																					String breakfast_str = "";
																					if(hotel_feature != null){
																						breakfast_str = hotel_feature.getBreakfast();
																					}
																					if(!breakfast_str.equals("NULL")) {
																				%>
																				<li
																					class="bui-list__item bui-text--color-constructive">
																					<span class="bui-list__icon"
																						role="presentation">
																						<svg class="bk-icon -streamline-food_coffee"
																							fill="#008009" height="16"
																							width="16"
																							viewBox="0 0 24 24"
																							role="presentation"
																							aria-hidden="true"
																							focusable="false">
																							<path
																								d="M3.75 4.5h12a.75.75 0 0 1 .75.75v7.5a6.75 6.75 0 0 1-13.5 0v-7.5a.75.75 0 0 1 .75-.75zm0-1.5A2.25 2.25 0 0 0 1.5 5.25v7.5a8.25 8.25 0 0 0 16.5 0v-7.5A2.25 2.25 0 0 0 15.75 3h-12zm-3 18h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zm16.5-15h1.5a3.763 3.763 0 0 1 3.75 3.752 3.762 3.762 0 0 1-3.752 3.748H17.1a.75.75 0 0 0 0 1.5h1.65A5.263 5.263 0 0 0 24 9.752 5.264 5.264 0 0 0 18.752 4.5H17.25a.75.75 0 0 0 0 1.5z" />
																						</svg>
																					</span>
																					<div class="bui-list__body">
																						<div
																							class="bui-list__description">
																							早餐：<% out.print(breakfast_str); %>
																						</div>
																					</div>
																				</li>
																				<% } %>
																				<li class="bui-list__item bui-text--color-constructive e2e-cancellation"
																					data-testid="cancellation-subtitle">
																					<span class="bui-list__icon"
																						role="presentation">
																						<svg class="bk-icon -streamline-checkmark_fill"
																							fill="#008009" height="16"
																							width="16"
																							viewBox="0 0 128 128"
																							role="presentation"
																							aria-hidden="true"
																							focusable="false">
																							<path
																								d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z" />
																						</svg>
																					</span>
																					<div class="bui-list__body">
																						<div
																							class="bui-list__description">
																							<span
																								class="hprt-item--bold"><span
																									class="hprt-item--emphasised">免费取消</span></span>
																							
																						</div>
																					</div>
																				</li>
																				<li class="bui-list__item bui-text--color-constructive"
																					data-testid="prepayment-subtitle">
																					<span class="bui-list__icon"
																						role="presentation">
																						<svg class="bk-icon -streamline-checkmark_fill"
																							fill="#008009" height="16"
																							width="16"
																							viewBox="0 0 128 128"
																							role="presentation"
																							aria-hidden="true"
																							focusable="false">
																							<path
																								d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z" />
																						</svg>
																					</span>
																					<div class="bui-list__body">
																						<div
																							class="bui-list__description">
																							<span
																								class="hprt-item--bold"><span
																									class="hprt-item--emphasised">无需预付</span></span>
																							– 到店付款
																						</div>
																					</div>
																				</li>
																				
																			</ul>
																			<button
																				class="hprt-conditions-modal_trigger rt_accessible_tooltip"
																				data-policy-long-id="rate_policies_id_468542806_246088447_2_1_0"
																				data-modal-id="policyModal_468542806_246088447_2_1_0"
																				data-bui-component="Modal"
																				data-testid="policy-modal-trigger"
																				data-et-click="goal:hp_rt_conditions_tooltip_viewed customGoal:MCIAFKKZaTaTaBcJPGEbfFeTKe:3 customGoal:MCIAFKKZaTaTaBcJPGEbfFeTfKUbBcfTRe:1"
																				aria-label="餐食和付款政策详情"
																				aria-controls="policyModal_468542806_246088447_2_1_0">
																				<svg class="bk-icon -streamline-question_mark_circle"
																					fill="#0071C2" height="14"
																					width="14" viewBox="0 0 24 24"
																					role="presentation"
																					aria-hidden="true"
																					focusable="false">
																					<path
																						d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" />
																				</svg>
																			</button>
																			<template
																				id="policyModal_468542806_246088447_2_1_0">
																				<header class="bui-modal__header">
																					<br>
																					<p
																						class="bui-modal__paragraph policy-conditions_modal--paragraph">
																						<strong>&#x4E09;&#x9910;:</strong>
																						房价包括早餐。<br />
																						&#x65E9;&#x9910;&#x8BC4;&#x5206;
																						5.0 -
																						&#x57FA;&#x4E8E;1&#x6761;&#x70B9;&#x8BC4;&#x3002;
																					</p>
																					<p
																						class="bui-modal__paragraph policy-conditions_modal--paragraph">
																						<strong>取消预订:</strong>
																						截至入住当日18:00，可免费取消。
																						入住日当天18:00后如取消订单，您需要支付订单全额。
																						如果未如期入住，未入住费用与取消费用相同。
																					</p>
																					<p
																						class="bui-modal__paragraph policy-conditions_modal--paragraph">
																						<strong>预付款项:</strong>
																						无需预付。
																					</p>
																				</header>
																			</template>
																		</div>
																	</td>
																	<td
																		class=" hprt-table-cell hprt-table-room-select ">
																		<div class="hprt-block">
																			<label
																				for="hprt_nos_select_468542806_246088447_2_1_0"><span
																					class="invisible_spoken">选择客房</span></label>
																			<select
																				class="hprt-nos-select js-hprt-nos-select"
																				name="room_num_select"
																				room-id="<% out.print(room.getRoom_id()); %>"
																				data-component="hotel/new-rooms-table/select-rooms"
																				data-room-id="468542806"
																				data-block-id="468542806_246088447_2_1_0"
																				data-is-fflex-selected="0"
																				data-testid="select-room-trigger"
																				id="hprt_nos_select_468542806_246088447_2_1_0"
																				aria-describedby="room_type_id_468542806 rate_price_id_468542806_246088447_2_1_0 rate_policies_id_468542806_246088447_2_1_0">
																				<option value="0">
																					0
																				</option>
																				<% 
																					Integer room_num = room.getRoom_num();
																					for(int j = 0; j < room_num; ++j) {
																						Float totalPrice = (j+1)*room_price;
																						String totalPrice_str = String.format("%.2f", totalPrice);
																				%>
																				<option value="<% out.print(j+1); %>">
																					<% out.print(j+1); %>
																					&nbsp;&nbsp;&nbsp;
																					(<% out.print(totalPrice_str); %>元)
																				</option>
																				<% } %>
																				
																				<!-- 
																				<option value="2">
																					2
																					&nbsp;&nbsp;&nbsp;
																					(650元)
																				</option>
																				<option value="3">
																					3
																					&nbsp;&nbsp;&nbsp;
																					(975元)
																				</option>
																				<option value="4">
																					4
																					&nbsp;
																					&nbsp;&nbsp;&nbsp;
																					(1,300元)
																				</option>
																				<option value="5">
																					5
																					&nbsp;
																					&nbsp;&nbsp;&nbsp;
																					(1,625元)
																				</option>
																				<option value="6">
																					6
																					&nbsp;
																					&nbsp;&nbsp;&nbsp;
																					(1,950元)
																				</option>
																				-->
																			</select>
																		</div>
																	</td>
																</tr>

																<% } %>
																
																</tbody>
														</table>
													</div>
													<div class="hprt-table-cell -last hprt-reservation-summary-col js-hprt-reservation-summary"
														data-component="hotel/new-rooms-table/summary/fade"
														data-testid="reservation-summary">
														<div class="fake-header js-fake-header" aria-hidden="true">
														</div>
														<div class="hprt-block reserve-block-js">
															<div id="value-merchandising-badges-placeholder"></div>
															<div class="hprt-booking-summary-rooms-and-price"
																data-component="hotel/new-rooms-table/summary/rooms">
															</div>
															<div class="prd-taxes-and-fees-under-price on-hpage"></div>
															<div id="earn-credit-placeholder"
																class="c-earn-credits_reservation_column bui-f-font-caption">
															</div>
															<div class="hprt-pob-message_wrap"
																data-component="hotel/new-rooms-table/reservation-column/pob-message">
															</div>
															<div class="hprt-reservation-cta"
																data-component="hotel/new-rooms-table/reservation-cta">
																<button class="txp-bui-main-pp bui-button bui-button--primary hp_rt_input px--fw-cta js-reservation-button" 
																		type="button" data-title="&#x8BF7;&#x5148;&#x9009;&#x62E9;&#x623F;&#x95F4;"
																		onclick="orderRoom()">
																	<span class="bui-button__loader">
																		<div class="bui-spinner bui-spinner--light">
																			<div class="bui-spinner__inner"></div>
																		</div>
																	</span>
																	<span
																		class="bui-button__text js-reservation-button__text">
																		现在就预订
																	</span>
																</button>
															</div>
															<div class="hprt-booking-summary-dont-worry"
																data-component="hotel/new-rooms-table/summary/dont-worry"
																data-always-visible="0">
															</div>
															<div class="hprt-booking-cta-ticker">
																<ul>
																	<li
																		class="hprt-booking-cta-ticker__list-item cta-list-item--immediate-conf">
																		立即确认
																	</li>
																	<li class="hprt-booking-cta-ticker__list-item">
																		不收取预订手续费或信用卡手续费！
																	</li>
																</ul>
															</div>
															<div class="hprt-no-cc-needed">
																<b>无需信用卡！</b>
															</div>
															<div class="hprt-booking-summary-conditions"
																data-component="hotel/new-rooms-table/summary/conditions">
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
										<input type="hidden" name="hp_visits_num" id="hp_visits_num" value="1" />
									</div> <!-- end of #available_rooms -->
								
								
								</div>
							</div>
							<script nonce="9jmEHBuvHcdLmqi">
								; (function () {
									'use strict';
									if (document && document.addEventListener && document.querySelectorAll) {
										var BUTTON_SELECTOR = '.book_now_button_handler';
										var reserveButtons = document.querySelectorAll(BUTTON_SELECTOR);
										reserveButtons = Array.prototype.slice.call(reserveButtons);
										if (reserveButtons && reserveButtons.length) {
											reserveButtons.forEach(function (button) {
												button.addEventListener('click', goToAvailabilityBlock);
											});
											document.addEventListener('DOMContentLoaded', function () {
												reserveButtons.forEach(function (button) {
													button.removeEventListener('click', goToAvailabilityBlock);
												});
											});
										}
									}
									function goToAvailabilityBlock() {
										if (window.history && window.history.replaceState) {
											var uri = window.location.toString();
											if (uri.indexOf("#") > 0) {
												var uriWithoutHash = uri.substring(0, uri.indexOf("#"));
												window.history.replaceState({}, document.title, uriWithoutHash);
											}
										}
										var RT_SELECTOR = '.hp-section-header';
										var roomsTable = document.querySelector(RT_SELECTOR);
										if (roomsTable) {
											window.scrollTo(0, roomsTable.offsetTop);
										}
									}
								})();
							</script>
						</div>
						<div class="page-section k2-hp--banners">
							<div data-et-view="eWHMcCcCcCSKBZeEQLBLcOHT:1 eWHMcCcCcCSKBZeEQLBLcOHT:2 eWHMcCcCcCSKBZeEQLBLcOHT:3 "></div>
							<div class="js-k2-hp--block k2-hp--fine_print_banner page-section--inner-spacing">
							</div>
							<div
								class="js-k2-hp--block page-section--inner-spacing k2-hp--brazil_right_to_cancel_banner">
							</div>
							<div class="js-k2-hp--block page-section--inner-spacing k2-hp--limited_supply_banner">
								<div data-component="onview-animate" data-anim-type="fadeInBottom">
									<div class="fe_banner fe_banner__accessible fe_banner__scale_small fe_banner__w-icon fe_banner__red  "
										data-similar-unavailable="1"> <i class="fe_banner__icon bicon-alarm"
											aria-hidden="true"></i>
										<div class="fe_banner__message">
											<strong>
												所选日期内南京房量紧张：
											</strong>
											15家类似的酒店在我们网站上暂无空房
										</div>
									</div>
								</div>
							</div>
							<div class="hp--sustainability_banner page-section--inner-spacing js-k2-hp--block">
							</div>
							<div class="hp--rt_banners page-section--inner-spacing js-k2-hp--block">
								<div class="bui-alert bui-alert--success bui-u-bleed@small bui-spacer--large hp_nocc_banner"
									role="status">
									<span class="icon--hint bui-alert__icon" role="presentation">
										<svg class="bk-icon -iconset-credit_card_back" fill="#008009" height="24"
											role="presentation" width="24" viewBox="0 0 128 128" role="presentation"
											aria-hidden="true" focusable="false">
											<path
												d="M108 24H20A12 12 0 0 0 8 36v56a12 12 0 0 0 12 12h88a12 12 0 0 0 12-12V36a12 12 0 0 0-12-12zm-88 8h88a4 4 0 0 1 4 4v4H16v-4a4 4 0 0 1 4-4zm88 64H20a4 4 0 0 1-4-4V56h96v36a4 4 0 0 1-4 4zM24 72h48v8H24z" />
										</svg>
									</span>
									<div class="bui-alert__description">
										<p class="bui-alert__text">
											<b>预订无需信用卡。</b>我们将向你发送订单确认邮件。
										</p>
									</div>
								</div>
								<div
									class="fe_banner fe_banner__accessible fe_banner__w-icon fe_banner__w-dismiss fe_banner__green e2e-tip_free_cancellation ">
									<i class="fe_banner__icon bicon-tickfull" aria-hidden="true"></i>
									<h3 class="fe_banner__title"> 温馨提示：灵活出行 </h3>
									<div class="fe_banner__message"> 选择可免费取消的房型出行更灵活哦，在指定期限前修改或取消订单都没问题！ </div> <span
										class="fe_banner__dismiss js-close" role="button" tabindex="1"
										aria-label="关闭横幅"><i class="bicon-btnclose"></i></span>
								</div>
							</div>
							<div class="hp--health_safety page-section--inner-spacing js-k2-hp--block">
								<div class="js-health-safety-banner hp-full-width-hs-banner"
									data-et-view="goal:hp_health_safety_block_seen"
									data-et-click="goal:hp_health_safety_details_opened">
									<div data-capla-component="b-property-web-property-page/PropertyHealthSafetyDesktop"
										data-capla-namespace="b-property-web-property-pageEQYZTYLJ">
										<div>
											
										</div>
									</div>
								</div>
							</div>
							<div class="js-k2-hp--block k2-hp--all_inc_banner page-section--inner-spacing">
							</div>
						</div>

						<div class="page-section js-k2-hp--block k2-hp--featured_reviews">
							<div id="guest-featured_reviews__horizontal-block">
								<div data-et-view="adUAVYCIFBUYWBbQCeLFKMOAEXaDBUcRe:3"></div>
								<div
									class="hp-social_proof reviews-snippet-sidebar hp-social-proof-review_score">
									<div
										data-capla-component="b-property-web-property-page/PropertyReviewsRegionBlock"
										data-capla-namespace="b-property-web-property-pageBXBXGfFK">
										<div data-testid="PropertyReviewsRegionBlock">
											<div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 d19ba76520">
												<div class="b1e6dd8416 aacd9d0b0a">
													<div data-testid="reviews-block-title" class="e1f827110f">住客点评</div>
												</div>
												
											</div>
											<div>
												<div class="b2b990caf1">
													<button data-testid="read-all-actionable" type="button"
														class="fc63351294">
														<div class="daaa8ff09f f62fdb6838">
															<div data-testid="review-score-component"
																class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 d19ba76520">
																<div aria-label="评分8.9" class="b5cd09854e d10a6220b4">
																<% 
		                                                        Float rating = 0.0f;
																if(hotel_info != null){
																	rating = hotel_info.getRating();
																}
		                                                        if(rating == null){
		                                                        	out.print("0.0");
		                                                        }else{
		                                                        	out.print(rating);
		                                                        }
		                                                        %>
																</div>
																<div class="b1e6dd8416 aacd9d0b0a b48795b3df">
																	<span aria-label="评价很棒"
																		class="b5cd09854e f0d4d6a2f5 e46e88563a"> 
																		<%
		                                                            	//Float rating = hotel.getRating();
		                                                            	if(rating == null) {
		                                                            		out.print("未评分");
		                                                            	}else{
			                                                            	if(rating > 8.0){
			                                                            		out.print("很棒");
			                                                            	}else if(6.0 < rating && rating <= 8.0){
			                                                            		out.print("较好");
			                                                            	}else if(4.0 < rating && rating <= 6.0){
			                                                            		out.print("一般");
			                                                            	}else if(2.0 < rating && rating <= 4.0){
			                                                            		out.print("较差");
			                                                            	}else{
			                                                            		out.print("很差");
			                                                            	}
		                                                            	}
		                                                            	%>
																	</span>
																</div>
															</div>
															
														</div>
													</button>
												</div>
											</div>
											<%
												Float[] single_scores = new Float[7];
												Random random = new Random();
												if(hotel_feature == null){
													for(int i = 0; i < 7; ++i){
														single_scores[i] = 5.5f;
													}
												}else{
													String single_scores_str = hotel_feature.getSingle_score();
													if(!single_scores_str.equals("NULL")){
														String[] single_scores_strs = single_scores_str.split(",");
														for(int i = 0; i < 7; ++i){
															if(i >= single_scores_strs.length){
																single_scores[i] = 5.5f + random.nextInt(4);
															}else{
																single_scores[i] = Float.parseFloat(single_scores_strs[i]);
															}
														}
													}else{
														for(int i = 0; i < 7; ++i){
															single_scores[i] = 5.5f + random.nextInt(4);
														}
													}
												}
											%>
											<div class="bui-spacer--larger">
												<div class="bd3b7e01c3">
													<span class="ac78a73c96">单项评分：</span>
												</div>
												<div
													class="a1b3f50dcd bdf0df2d01 bfcff4d0ca b2fe1a41c3 c1b465858f d46673fe81">
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rhi:" class="ee746850b6">
																				<span class="d6d4671780">员工素质<!-- -->
																				</span>
																			</div>
																		</div>
																		<div id=":Rhi:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[0]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rhi: :Rhi:-label"
																	aria-valuetext="9.3" class="b8a783f8fa" role="meter"
																	aria-valuenow="0.93" aria-valuemin="0"
																	aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[0]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rii:" class="ee746850b6">
																				<span class="d6d4671780">设施/服务<!-- -->
																				</span>
																			</div>
																		</div>
																		<div id=":Rii:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[1]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rii: :Rii:-label"
																	aria-valuetext="9.0" class="b8a783f8fa" role="meter"
																	aria-valuenow="0.9" aria-valuemin="0" aria-valuemax="1"
																	aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[1]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rji:" class="ee746850b6">
																				<span class="d6d4671780">清洁程度<!-- -->
																				</span>
																			</div>
																		</div>
																		<div id=":Rji:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[2]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rji: :Rji:-label"
																	aria-valuetext="9.3" class="b8a783f8fa" role="meter"
																	aria-valuenow="0.93" aria-valuemin="0"
																	aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[2]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rki:" class="ee746850b6">
																				<span class="d6d4671780">舒适程度<!-- --> <span
																					class="b6dc9a9e69 fe621d6382 a29c17443f"
																					aria-hidden="true"></span></span>
																			</div>
																		</div>
																		<div id=":Rki:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[3]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rki: :Rki:-label"
																	aria-valuetext="9.4" class="b8a783f8fa ec0effca39"
																	role="meter" aria-valuenow="0.9400000000000001"
																	aria-valuemin="0" aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[3]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rli:" class="ee746850b6">
																				<span class="d6d4671780">性价比<!-- --> <span
																					class="b6dc9a9e69 fe621d6382 a29c17443f"
																					aria-hidden="true">
																							</span></span>
																			</div>
																		</div>
																		<div id=":Rli:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[4]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rli: :Rli:-label"
																	aria-valuetext="9.3" class="b8a783f8fa ec0effca39"
																	role="meter" aria-valuenow="0.93" aria-valuemin="0"
																	aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[4]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rmi:" class="ee746850b6">
																				<span class="d6d4671780">位置<!-- -->
																				</span>
																			</div>
																		</div>
																		<div id=":Rmi:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[5]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rmi: :Rmi:-label"
																	aria-valuetext="8.1" class="b8a783f8fa" role="meter"
																	aria-valuenow="0.8099999999999999" aria-valuemin="0"
																	aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[5]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													<div class="ccff2b4c43 cfc0860887">
														<div data-testid="review-subscore">
															<div class="a1b3f50dcd ef8295f3e6 f7c6687c3d">
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 e187349485 d19ba76520">
																		<div class="b1e6dd8416 aacd9d0b0a">
																			<div id=":Rni:" class="ee746850b6">
																				<span class="d6d4671780">免费WiFi<!-- --> <span
																					class="b6dc9a9e69 fe621d6382 a29c17443f"
																					aria-hidden="true"></span></span>
																			</div>
																		</div>
																		<div id=":Rni:-label" class="ee746850b6 b8eef6afe1"><% out.print(single_scores[6]); %></div>
																	</div>
																</div>
																<div aria-labelledby=":Rni: :Rni:-label"
																	aria-valuetext="10" class="b8a783f8fa ec0effca39"
																	role="meter" aria-valuenow="1" aria-valuemin="0"
																	aria-valuemax="1" aria-live="polite">
																	<span class="c83ec92171" style="width: <% out.print(single_scores[6]*10); %>%"></span>
																</div>
															</div>
														</div>
													</div>
													
												</div>
											</div>
											
											<div>
												<div></div>
												
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div id="left2" class="rlt-left leftsmall">
					</div>
					<div id="right2" class="rlt-right"></div>
					<div class="clear"></div>
				</div>
				<div id="policyselection"></div>
			</div>
		</div>
	</div>
	<div id="calendar"></div>
	<a class="back_to_top border4" id="back_to_top" href="#" style="display: none;" title="返回页面顶部">
		<img class="back_to_top_arrow"
			src="./script/static/img/transparent/85e02501df1560d359a473f544224481a83c9aa7.png"
			alt="" />
	</a>
	</div>
	<div style="display: none;">gogless</div>
	<input type="hidden" id="bp_hp_back_count" name="bp_hp_back_count" value="0">
	</div>
	</div>
	<div class="slinks">
	</div>
	<div id="footer_menu_track"
		class="footerconstraint cnd-onview-anchor footer_no_lang_track a11y_fix_footer_contrast_footerconstraint "
		role="contentinfo">
		
		<div style="clear: both;"></div>
		<div id="booking-footer" class="footer-wrapper">
			

			<div role="region" aria-label="即刻下载Booking.com免费应用程序" class="local_info_bot footerconstraint-inner">
				<div class="local_info_bot_inner">
					
					<div class="footercopyright ">
						<div class="whitebar">
							<div class="copyright_text">
								版权 &copy; 1996&ndash;2023
								Booking.com&trade;. 版权所有.
							</div>
						</div>
					</div>
				</div>
				<div style="clear:both;">&#160;</div>
			</div>
			<div class="footer-logos footerconstraint-inner">
				<div class="footer__priceline">
					<p class="footer__priceline__title"> Booking.com隶属于Booking Holdings Inc.，该集团是深受全球用户好评的在线旅行及周边服务供应商。
					</p>
					
				</div>
			</div>
		</div>
	</div>
	</div>

	</body>

</html>