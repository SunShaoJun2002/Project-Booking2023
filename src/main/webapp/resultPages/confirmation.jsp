<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" 
	import="
	SE.pojo.Info,
	SE.pojo.Description,
	SE.pojo.Feature,
	SE.pojo.Room,
	java.util.List,
	java.util.ArrayList,
	java.util.Arrays,
	java.util.Date,
	java.text.SimpleDateFormat,
	java.text.DateFormat
	" 
%>
<!DOCTYPE html>


<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
	document.addEventListener('DOMContentLoaded', function () {
		B.define('privacyCookieConsent', function () {
			var consentGroupIsAllowed = {
				analytical: 'C0002%3A1',
				marketing: 'C0004%3A1'
			};
			var optanonConsentCookieName = 'OptanonConsent';
			var optanonBoxClosedCookieName = 'OptanonAlertBoxClosed';
			var halfOfYearMillis = 180 * 24 * 60 * 60 * 1000;
			function isDefined(value) {
				return value && value !== "undefined";
			}
			function parseConsentToObject(consent) {
				var result = {};
				if (typeof consent === 'string') {
					var parts = consent.split('&');
					parts.forEach(function (part) {
						var keyAndValue = part.split('=');
						result[keyAndValue[0]] = keyAndValue[1];
					});
				}
				return result;
			}
			function isConsentValid(consent, alertBoxClosed) {
				return isDefined(consent) &&
					isDefined(alertBoxClosed) &&
					new Date() - new Date(alertBoxClosed) <= halfOfYearMillis;
			}
			function getCookie(name) {
				name += "=";
				var cookies = document.cookie.split(";");
				for (var i = 0; i < cookies.length; i += 1) {
					var cookie = cookies[i];
					while (cookie.charAt(0) === " ") {
						cookie = cookie.substring(1, cookie.length);
					}
					if (cookie.indexOf(name) === 0) {
						return cookie.substring(name.length, cookie.length);
					}
				}
				return null;
			}
			function doesGeolocationRequireBanner() {
				// In case window.PCM is not defined, fallback to opt-out
				return window.PCM ? window.PCM.isCountryNeedCookieBanner : true;
			}
			function getExplicitConsent() {
				var consent = getCookie(optanonConsentCookieName);
				var alertBoxClosed = getCookie(optanonBoxClosedCookieName);
				if (isConsentValid(consent, alertBoxClosed)) {
					var consentObject = parseConsentToObject(consent);
					return Object
						.keys(consentGroupIsAllowed)
						.map(function (purpose) {
							var result = {};
							result[purpose] = consentObject.groups.indexOf(consentGroupIsAllowed[purpose]) > -1;
							return result;
						})
						.reduce(
							function (result, currentValue) {
								return Object.assign(result, currentValue);
							}, {
							functional: true
						}
						);
				}
			}
			function getImplicitConsent() {
				var consentValue = !doesGeolocationRequireBanner();
				return {
					functional: true,
					analytical: consentValue,
					marketing: consentValue
				};
			}
			function getValue() {
				var consent = getExplicitConsent();
				if (!consent) {
					consent = getImplicitConsent();
				}
				return consent;
			}
			return {
				getValue: getValue
			};
		});
		//c360 javascript tracker first iteration
		//sends a track request to c360 http tracker
		//in order to use it:
		//1. inline the c360Tracker.js in the page you need to use it
		//2. in your js file:
		//
		// var c360Tracker = B.require('c360Tracker');
		// var event = {
		// action_name:"accommodation_checkout_confirmation_viewed",
		// action_version :"0.2.0",
		// content : { "transaction_id" : 123434},
		// user : { "BKNG_user_id": 123434}
		// };
		// c360Tracker.track(event);
		B.define('c360Tracker', function () {
			var enrichedContext = {};
			var configuration = {
				validateInput: false
			};
			var track = function (event) {
				if (event == null) {
					return "event object is null or empty";
				} else {
					//if (enrichedContext.userID != null) {
					// event.user = {BKNG_user_id: enrichedContext.userID};
					//}
					var validationResult = new ValidationResult(true);
					if (configuration.validateInput) {
						validationResult = validateInput(event);
					}
					if (!validationResult.success) {
						return validationResult.message;
					}
					send(event);
				}
			};
			function send(data) {
				data.context = enrichedContext;
				data.tracker = {
					tracker_name: "C360JSTracker",
					tracker_type: "Client",
					tracker_version: "0.1.0"
				};
				return $.ajax({
					url: '/c360/v1/track',
					type: 'POST',
					data: JSON.stringify(data),
				});
			}
			enrich();
			var scheme =
			{
				"type": "object",
				"properties": {
					"action_name": {
						"type": "string",
						"description": "action name (ex. element viewed)",
					},
					"action_version": {
						"type": "string",
						"description": "action version"
					},
					"content": {
						"type": "object",
						"description": "content defined by the registered producer scheme"
					}
				}
			};
			function ValidationResult(success, message) {
				this.success = success;
				this.message = message;
			}
			function validateInput(event) {
				var result = validateObject(event, scheme);
				return result;
			}
			function validateObject(obj, scheme) {
				if (scheme.properties != null) {
					var propsArray = Object.getOwnPropertyNames(scheme.properties);
					for (var i = 0; i < propsArray.length; i++) {
						var propertyName = propsArray[i];
						if (obj[propertyName] == null) {
							return new ValidationResult(false, "property " + propertyName + " is not defined");
						}
						if (scheme.properties[propertyName].type == "object") {
							var validationResult = validateObject(obj[propertyName], scheme.properties[propertyName]);
							if (validationResult.success === false) {
								return validationResult;
							}
						}
					}
				}
				return new ValidationResult(true);
			}
			function enrich() {
				enrichedContext = {
					page: {
						page_referrer: document.referrer,
						page_url: window.location.href,
						page_title: document.title
					},
					local: {
						currency: B.env.b_selected_currency
					},
				};
				//if (B.env.b_user_genius_status != null && B.env.b_user_genius_status.b_user_id != null)
				// enrichedContext.userID = B.env.b_user_genius_status.b_user_id;
			}
			return {
				track: track
			};
		});
	})
</script>
<script type="text/javascript" nonce="JZZpY8EmTdA4yp2"
	src="https://cdn.cookielaw.org/consent/04f32d9e-1729-4d42-82b5-91c2350ff323/OtAutoBlock.js"></script>
<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
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
<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
	window.PCM = {
		isCountryNeedCookieBanner: 1,
		isGpcSignalEnabled: 0,
		loadStartedAt: 1683776099,
		countryCode: 'cn',
		isUserLoggedIn: 0
	}
</script>
<script type="text/javascript" nonce="JZZpY8EmTdA4yp2"
	src="./script/libs/privacy-consent/releases/2.1.40/customer/cookie-banner.min.js"
	data-domain-script="04f32d9e-1729-4d42-82b5-91c2350ff323"></script>
<link href="./script" rel="dns-prefetch" crossorigin>
<link href="./script" rel="dns-prefetch" crossorigin>
<link href="https://shelves.booking.com/" rel="preconnect" crossorigin>
<html lang="zh-cn" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# booking_com: http://ogp.me/ns/fb/booking_com#"
	moznomarginboxes mozdisallowselectionprint
	class="noJS b_chrome b_chrome_112 supports_inline-block supports_flexbox_unprefixed supports_fontface ">

<%
	String booker_name = (String)request.getAttribute("booker_name");
	if(booker_name == null){
		booker_name = "预订人姓名";
	}
	Info hotel_info = (Info)request.getAttribute("hotel_info");
	Feature hotel_feature = (Feature)request.getAttribute("hotel_feature");
	String check_in_date = (String)request.getAttribute("check_in_date");
	if(check_in_date == null){
		check_in_date = "2023-06-14";
	}
	String check_out_date = (String)request.getAttribute("check_out_date");
	if(check_out_date == null){
		check_out_date = "2023-06-15";
	}
	Float totalPrice = (Float)request.getAttribute("totalPrice");
	if(totalPrice == null){
		totalPrice = 0f;
	}
	String business_or_travel = (String)request.getAttribute("business_or_travel");
	if(business_or_travel == null){
		business_or_travel = "t";
	}
	Integer record_id_int = (Integer)request.getAttribute("record_id");
	if(record_id_int == null){
		record_id_int = 0;
	}
	String record_id = record_id_int.toString();
	if(record_id == null){
		record_id = "000001";
	}
	List<Room> roomList = (List<Room>)request.getAttribute("roomList");
	if(roomList == null){
		roomList = new ArrayList<Room>();
		for(int i = 0; i < 2; ++i){
			roomList.add(new Room());
		}
	}
	List<Integer> room_numList = (List<Integer>)request.getAttribute("room_numList");
	if(room_numList == null){
		room_numList = new ArrayList<Integer>(Arrays.asList(1, 1));
	}
	
	DateFormat dft = new SimpleDateFormat("yyyy-MM-dd");
	Date startDay = dft.parse(check_in_date);
	Date endDay = dft.parse(check_out_date);
	Long startTime = startDay.getTime();
	Long endTime = endDay.getTime();
	Long num = endTime - startTime;
	Long daysOfStay = num/24/60/60/1000;
%>

<head profile="http://a9.com/-/spec/opensearch/1.1/">
	<meta name="referrer" content="origin">
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<script nonce="JZZpY8EmTdA4yp2">
			; (function (w) {
				var ts = +new Date();
				w.PageLoadTimer = {};
				w.PageLoadTimer.start = ts;
			}(window));
	</script>
	<script nonce="JZZpY8EmTdA4yp2">
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
	<script nonce="JZZpY8EmTdA4yp2">
		document.querySelector('#main-css-preload').addEventListener('load', function () {
			window.mainCssWasLoaded = 1;
		})
	</script>
	<link rel="stylesheet"
		href="./script/static/css/main_exps_alicloud_a.iq_ltr/4fa309cfd97fac6fa22a66b7e9e726657c4cd8d0.css" />
	<link rel="stylesheet"
		href="./script/static/css/gprof_icons_alicloud_a.iq_ltr/f9a9959fb174be6a1a61e78d982a7444775f1419.css" />
	<link rel="stylesheet"
		href="./script/static/css/mlt_alicloud_a.iq_ltr/85bc8646b0dbe9e70bcf562f7e42acaa155afc7f.css" />
	<link rel="stylesheet" type="text/css"
		href="./script/static/css/book_conf_alicloud_a.iq_ltr/b54a5d102a2b580d4c4778260f62d1ff294add80.css"
		media="screen" />

	<style nonce="JZZpY8EmTdA4yp2">
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
		crossorigin nonce="JZZpY8EmTdA4yp2">
	<link rel="preload" as="script"
		href="./script/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js"
		crossorigin nonce="JZZpY8EmTdA4yp2">
	<link rel="preload" as="script"
		href="./script/static/js/main_cn_alicloud_a/57cc6acb6d903bd8173c27406cf853619327a610.js"
		crossorigin nonce="JZZpY8EmTdA4yp2">
	<link rel="preload" as="script"
		href="./script/static/js/searchbox_alicloud_a/f37d10ad9271707442b5c0b09ae622b711f498d2.js"
		crossorigin nonce="JZZpY8EmTdA4yp2">
	<link rel="preload" as="script"
		href="./script/static/js/error_catcher_bec_alicloud_a/0acd2ada6c74d5dec978a04ea837952bdf050cd2.js"
		crossorigin nonce="JZZpY8EmTdA4yp2">
	<script
		nonce="JZZpY8EmTdA4yp2"> if (window.performance && performance.measure && 'b-stylesheets') { performance.measure('b-stylesheets'); } </script>
	<meta name="robots" content="noindex,follow" />
	<link rel="canonical" href="https://secure.booking.com/confirmation.zh-cn.html" />
	<meta name="booking-verification"
		content="UmFuZG9tSVac9yiJ4he43_TpPn1AvNyrf44FHmrtsqYNKEumrPjnX3I9iLnownLIRAaMOcwCKCNubAZHY_P0Fyvl6FBQtLjKn3of8wXXddiokbyl5Ll44K1aY-ogu5OKT9xg2aQUEk4gnOUsYzrGggZu-zptGYLs75rzvIh7zm1QrmR1j0mmbLtfxgV4pMSU_QP9zQPuNxH577njVaOnbSDoRxFsIfwvhtbnhtuLLeJzg-vREzAp1V2mp_c-xKJMosa0geQGbBILEzfuy3uEtX3lVNF6pzH0LvldVyYfsDpXN5Q91RHazh_zypbQ9aZa9Y-h6XH_m_OX_mNj64-AgbElhMlYihNB7saYczByyGRDV1KPZPmK7RnQNOnDp2i7X-kWCDexc-ofkfOIPvKHNUby9LKK-h9jmACnxiMCgPS8HEmkRQD-Wk9VWxALKPKu" />
	<meta name="twitter:app:id:iphone" content="367003839" />
	<meta name="twitter:app:name:ipad" content="Booking.com Hotel Reservations Worldwide & Hotel Deals" />
	<meta name="twitter:app:id:ipad" content="367003839" />
	<meta name="twitter:app:name:googleplay" content="Booking.com Hotel Reservations" />
	<meta name="twitter:app:id:googleplay" content="com.booking" />
	<meta property="al:ios:app_store_id" content="367003839">
	<meta property="al:ios:app_name" content="Booking.com Hotel Reservations">
	<meta property="al:android:app_name" content="Booking.com Hotel Reservation">
	<meta property="al:android:package" content="com.booking">
	<meta name="p:domain_verify" content="ff7f0b90ebb93e5bf7c7cafe77640ec1" />
	<meta http-equiv="content-language" content="zh-cn" />
	<meta http-equiv="content-script-type" content="text/javascript" />
	<meta http-equiv="content-style-type" content="text/css" />
	<meta http-equiv="window-target" content="_top" />
	<meta property="fb:pages"
		content="131840030178250, 1425349334428496, 117615518393985, 1565844503706287, 517612321758712, 1668799180037291, 265097377176252, 1643712662515912, 303492549842824, 1638321783047271, 809709019119342, 959185470826086, 217466488652137, 641365839348517, 203741606405114">
	<meta property="wb:webmaster" content="48970bbca45d28c2" />
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@bookingcom">
	<meta name="twitter:creator" content="@bookingcom">
	<meta name="twitter:image"
		content="./script/static/img/twitter-image-else/566c7081f1deeaca39957e96365c3908f83b95af.jpg">
	<meta name="twitter:title" content="Booking.com: 酒店、民宿、公寓....超多选择尽在这里">
	<meta name="twitter:description" content="无论是星级酒店还是特色民宿，我们都提供最优惠价格保证！85000多个目的地，家各类住宿任你搜！">
	<meta property="og:type" content="company" />
	<meta property="og:title" content="Booking.com: 酒店、民宿、公寓....超多选择尽在这里" />
	<meta property="og:image"
		content="./script/static/img/fb/5/a3ab2e20da702e5c47ff310b95a1e664fb3c9e6d.jpg" />
	<meta property="og:description" content="无论是星级酒店还是特色民宿，我们都提供最优惠价格保证！85000多个目的地，家各类住宿任你搜！" />
	<meta property="og:locale" content="zh_CN" />
	<meta property="og:url" content="https://secure.booking.com/confirmation.zh-cn.html" />
	<meta property="og:site_name" content="Booking.com" />
	<meta property="fb:app_id" content="145362478954725" />
	
	<link rel="alternate" type="text/html" hreflang="zh-cn" href="https://secure.booking.com/confirmation.zh-cn.html"
		title="简体中文" />
	
	<link rel="icon"
		href="./script/static/img/favicon-new-32/40749a316c45e239a7149b6711ea4c48d10f8d89.ico"
		sizes="any">
	<link rel="icon"
		href="./script/static/img/favicon/9ca83ba2a5a3293ff07452cb24949a5843af4592.svg"
		type="image/svg+xml">
	<link rel="apple-touch-icon"
		href="./script/static/img/apple-touch-icon-blue/5db9fd30d96b1796883ee94be7dddce50b73bb38.png" />
	<link rel="help"
		href="http:&#47;&#47;www.booking.com/faq.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=7853152978100034&&amp;" />
	<link rel="search" type="application/opensearchdescription+xml"
		href="./script/static/opensearch/zh-cn/e44d907bf77c5add70d4a46fce6bff10be3e8d18.xml"
		title="Booking.com在线酒店预订 (起价 secure.booking.com)" />
	<link href="./script/105443419075154950489" rel="publisher" />
	
	<script nonce="JZZpY8EmTdA4yp2">var _gaq = _gaq || [];</script>
	<script nonce="JZZpY8EmTdA4yp2">
		booking.jset = { "m": "UmFuZG9tSVYkc2RlIyh9YYOysLNEu1OGW4gzSO-kBFf6GPAM5MNKgxnD-Chu8SFv-BMAToP6PX6D_0pFpIro-6_eL4gqPvTQWa23KQBKU8bq7Ph8D9mfRIJ2wvtiLIRN9yMEucwff5dHedfpArGtCFiMLOLK5jBdvO8sNu2N4KitUDreRcZPPC0C4WskIC3zgLSktT4ePeFEcPdB4rQx_Srf2glEHJpAQLlWTbHSLRrOYy0XfuG8tU9mPWa8WF8XlDI47rkwlXlv0OFyYieKq4lvgkj9kL-D8G-N2F7nEb0A3lRQappImdgpMwMVo2wXuMj8LW9KeuX1UiEibtVRlw", "r": { "HWAFNRYLJVDXKe": 0, "aWQOcYTBMLaUJUMHHO": 1, "THHSOWGFFYbVaHWNFGFdUeMBKOVT": 1, "fTPIMLPbTfBfAJEAHYGGET": 0, "OAZOXHHHXFZPeZeNJILO": 1, "HWAFYTbeWRTHT": 1, "YdXfdKNKNKZUTPTQTUMKPREFcEBYJO": 1, "dLYHMRFeRLPYKDcdDdONVFbKCBPQCHT": 0, "dLcXJeITPVNeJMBYNaaSRe": 0, "NAFLeOeJYTBOLPTdMZbGXZUBPTVfITUSEDELO": 1, "IZBTdFPfBKSUaXSTBGCdKAPcaKBbBOSYLYT": 0, "GfHMYYBLEdRBQSCEDXFZFFGSQTHaT": 2, "aWQOcYTBABVYUEKCWNBOcaGPaXe": 0, "aXTfHAEDdKNKNKZDYCFceHEVWXcdMIJIcVHXT": 0, "HWAJLGbbeLNJVJPZXAJIWRAQZfXILMUJINFeTXe": 1, "HWAFYTaYbZNHT": 1, "adUAVYCdFNLGfFWFKYOeeIKdFHaO": 1, "HINZJLeUXSaZbdKNKNKPJdBJOTXNORe": 1, "TfNZeFcCFLUYYeFeHC": 1, "HMbXKFbWNWe": 0, "THHSOWPDSDXbWUJIFGKBAFVNaRe": 0, "OMaFbFDaHYfDZaGaVFHTdJcbWae": 1, "NAREFBUONOHHWcZZESCGVKe": 1, "aWQOcYTBABVYUOUEUKKSWBVfXNFfdXUC": 1, "bPJAZNdAYbeDUZSQZXSMSeGEVUSZMSMGGTHHSOC": 1, "HWAFYbIeIPYbeTQcaNYCLC": 1, "ABVYUYNaXTbXUCeeC": 1, "aWQOcYTBbJfEDVacDdQeRHfMFEFGO": 1, "YdXfCDWOOWNECHTeUeaT": 1, "OOGbIFBUVTIbNESEeCQRTKeeHRbdFIKe": 1, "NAFLeOeJNAFLJPECVVDJYMBMJIeFHe": 0, "aXTfHAEDdKNKNKZDYCFceHEVJZdLHNLLDXKe": 0, "aWQOcYTBbJfEDOJZVRPRBLLWIXOERJPecBFO": 0, "GfHMYYBQePeEHbECQdHZVHAFNQJQNbUIC": 2, "aWQOcYTBEKIWRQWcDGHT": 0, "dOXKbDJdNLEXYKANMAefRXe": 0, "HINZJLeUXSaZbdKNKNKPZHSdINFPIWBHT": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdeRe": 0, "HWAFYDEZREeJIRBcVScbBNLPIHfSbfZALMO": 1, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBcOOIBBO": 1, "THHSODPNGZfFbSGUBBHQKOOcO": 1, "YdXfdKNKNKHUFKYOeeTQIPPSfDcdEWe": 0, "HWAFYHIYTdELT": 0, "cCHObEJcQYIMdUcHCXFZRJNGPbVHe": 1, "cCEaLMJNGLEYYcXO": 1, "TZUfdbYfTLBbPTPCDWOOC": 2, "OAZOXHHZJCEUaQYaONXKFKe": 1, "TeCOeJIUWUHcKKSTLGPAcTPSUGADDbddRBQSCEDXFZSCZC": 1, "OLHIAdLeKfWe": 0, "cCHObIULDcFUHZESEETWBZEWaSddKNKNKWe": 2, "YTTHbXeeAeJINUFJUAcWMHTcfaNKe": 0, "HWAFYHIEUXPNMWe": 0, "aXbSbcBUcJaRMSAdRTUOOIBBO": 1, "IZBTdFPfBKSAELSXZDYPQBTaRXUbZFLMZGHCTRdIeDdeFCYVO": 0, "bdPYURWZXJfaNbEYPYKDcdC": 0, "HWAFYLJVWKGdUVYDGDZHbWHccHe": 0, "cCHObMPWAEeIcFARSYWBZEWaSddKNKNKWe": 0, "TDXbdLOLOLOdGUKCMedEKRbdPfIVXBPKASbZDQLBC": 0, "TVBdHUNLOLOLOOTMfefVUdBJOTXNORe": 0, "aXbSbcfFdHMTcZJFOHHAAHdZGaZaTaTaET": 0, "NaMPTBfZGeUMYfCDRbeQfFRPfIVXBPKADXKe": 0, "NAFLeOeJcQEcVOdWNeYZdfdbJae": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe": 0, "eWfaQDSWSGUQHMQOFfOBfC": 0, "YNaXTbXALKFTCWTUTZALSIWe": 2, "bLdLOLOLOTYVOVfLeVUcTAKVTQWUZbeKRJdPC": 0, "HWAFNeOYDERXJXAadTWZHT": 0, "HWAFNeOYDeffBKdFDPBIFMZcO": 0, "HWAFYTacWCcAeCQeJPVNLIGBSQHe": 0, "aGMdEdeVaAFZKVbOMFcZGSRaPSPJJASECdUJDQNBO": 0, "NAFLeOeJYTBeDUfWZJEbOMFcUNbLWZHOaO": 0, "YdXfCDWOODSFKGbUBPKBcGYIEGTUSGGO": 2, "TZNJbaTaTaBIHUHWAURXZXe": 0, "aWQOcYTBNLJPSePVCMIRe": 1, "aaAJYBVaAJDbAPQfQOHT": 0, "TDXbdLOLOLOCcTaJBHKZYQNTREWaEO": 2, "aXTfHAEDdKNKNKZDYcPJXIdAHEZWDTPMXC": 0, "PPXGFRURURYaGYZYbcZTTEATZdSGWC": 0, "HWAFYTbQMbQVAHAZZCGVKe": 0, "PPXGSCZFcYUBXVfSTdaT": 1, "adUAAdFNLJMbQCeLFKMOAEHNPVT": 1, "HINZJLeUXLCddLOLOLOCcAZdJAINRe": 2, "NaMPBEUWPeYeFaaEQMALHFTHO": 1, "fefSCOJZfIZZRAbTXTMNZeUNFPCNBEUXPNMWe": 0, "cCHObdGUKCMedEKRbdPfIVXBPKASYeJcCcCcCC": 0, "aaVBBVYUPBOIHaZFTeCYbeLT": 1, "THHSOFRURURYNYHIYTLRQJRbWdWOGVO": 0, "aWQOcYTBOOIBTBRfefWcYRfLVT": 1, "YdXfdKNKNKZNTfVfdLaAFZKXe": 1, "XdKYEaEVTNeNcJZWNHRbAMSEJCLfZYPXPRQEDaORe": 1, "HBOMaMDYHVVLRfEbHeFUPecLZaae": 1, "PPXGWPHDDHRQPSHSQFUUHGeFZBQIO": 1, "OLBEUNTWaPJDFQWIXIMEKBFO": 0, "aXTfHAEDdKNKNKZDYCJdDBKSdEDeZVXVHXT": 0, "dOXKfQFAeJQFbJIVO": 1, "aWQOcOOIBTAPVFfSUICJdDBKSOGXCHT": 0, "HWAFNRYHXT": 0, "aWQOcYTBOQeNZTWeUKAcET": 1, "HWAFNeOYDXKe": 0, "HINZJLeUXSaZbCDWOODVcNVBUKcTKe": 1, "HWAFYBfPDBdRWMPNSIHSHFTMSAFET": 0, "aWQOcYTBOOIBTMXWHUSCNVAELXT": 0, "TfNZeFcCSTbFKaaO": 1, "fefSKeESCOONdPGKNSCMHVPHVBBVYYT": 1, "aXTfHAEDdKNKNKZDYCFceHEVJXdDRLRFWMXC": 0, "NAFLeOeJOMOLPTdMZbGXZFZYZEYYEO": 0, "NAFLeOeJOMOQeOYFCRFZMbYWMPSYaET": 1, "dLYHMRFeRQFSUCKAeOESSZXDOXWKHC": 1, "aXTfHAEDBOSISIBTBYQfBNeZINQFKFbbeRe": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKVBC": 0, "AEUaYPZZGbdUSUIUBTNTMFFfeTLQLAVALKe": 0, "aXbSbcBUYWYHaRMSAdRTUOOIBBO": 0, "NAREFfLaNXKbBMRVDIHe": 0, "TeCOeJIUWUHcKKSTLGPAcADDbddRBQSCEDXFZSCZC": 1, "aXbSbcBUcJaRMSAdRTUcCcCcCC": 1, "AdRNRWSdUPMcHZZWIeXFGBZFKMBXO": 1, "fEOMeOSTIZJCNQOVTLUBYTPaCQbZBbEWOTYVOBOFO": 1, "HZUaYPMPSXZVYMO": 1, "PPXGFRURURNRNRWSdFZFaBHVPHXe": 0, "HWAFYHIEJKaEHT": 0, "NAFLeOeJAdcbdGTEYOdDWBLHMVC": 2, "NAFLeOeJOMEKCccTRLHe": 0, "aWQOcYRYNPNDJdQJEcTeKHMeTC": 0, "dLYHMRFeRLBBVYUYWbMSJXOTEREHGC": 1, "OAZOXHHHXFZPeZeNFfAXSPIaO": 0, "aXTfHAEDCDWOOSOPQDVXVcbRPSCMeJEXO": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKBFO": 0, "aXbSbcBUYWYHaRMSAdRTUcCcCcCC": 1, "NVFVcfTbdNNJTOFaQEZYVNFJIeaUFRURURHe": 0, "TWBBeJYTBGaWXCFafEJPAXZQIKdFHaO": 0, "aXbSGYWYHbeNPIARTYT": 1, "cCHObVZMYCMPWAEeIcFARSYJXRDVMDTdLOLOLMO": 0, "HWAFNeOYSfXOEIYZEDNMfXLMEO": 1, "aWQOcABVYUbJfEDTYVOVZMYCBBLXORe": 0, "TDXbEBBVYUcQYIMdUcHCXFZJJVaXNJIbBSSObaYO": 2, "BPHOaBZGZVSBYQeQHefKbAXDXKe": 0, "aWQOcYTBNbbXdZNfRLT": 0, "OLHIOMcTRLHe": 0, "HVPZdZGIGPefDGYUFKMBKMSAZfAWSNLRe": 0, "aaAJYBVaAJDbAHIDJNMTKe": 1, "cCHObMPWAEeIcFARSYWBZEWaSdCDWOOC": 1, "HWAFYSGPRXe": 0, "aXTfHAEDdKNKNKZDYCFceHEVFceHEVFKMBKMXC": 0, "NAFLeOeJAEHIOQLeKfWe": 0, "HWAFNeOYFeKOUKdBDCLXMHO": 0, "BPHOaBaWQOcfEFfHBISNFZQaeKe": 1, "NReaHbdKfAHAHUYWbQOSbYGVVC": 1, "aXTfHAEDISIBTBBLXOQWBObbObSVHLeNBLLT": 1, "aWQOcYTBABVYUNXDUDCQPXDaae": 1, "dLYHMRFeRLBBVYUEKAFSOZdTYMIKe": 0, "aXTfHAEDCDWOODCAUEbOMFcWe": 0, "THHSODPNGZfSeUNAFQEGRDDNC": 1, "HBbfBAJPNATDOBO": 0, "dNXOMXWNMGBcFVaXaHYYfPHe": 0, "ISSfYWZWREfWBQBTUfBUPHe": 2, "cCHObMMCFRBZDOLZYbFZVGAZaYYfPHe": 0, "aXTfHAEDCDWOOWbWOOFIEaFdOUZMBOHRXUbZFLMZGHCTRdIGZHT": 1, "dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT": 0, "aXTfHAEDISIBTBBLXOQWIbAaLFSebFGKMGHT": 1, "aXbSbcfFdHMTcZJFOHHAAHdZGaHYYfPHe": 1, "ELSXHWXWEHDDDSeONOXT": 1, "dLYHMRFeRLPYKDcdSOZdTYMIbXDOXDeLZBIQNNC": 0, "HWAFNeOYFQNEJNfXILMSfCSRBRT": 0, "aaAHUNQADGNKJXcGBAAcLPWZJae": 1, "cCHObTULHfAFFQZccWRBcCcCcCC": 0, "HZUbVYOODAKJdTJAUIUNJbZJae": 0, "aXTfHAEDCDWOOSOHOAZfLdPUbdFDCFJJEXO": 0, "HWAFYFGeNBLScEXO": 0, "dNXOMXWNMGBcFVaXaZaTaTaET": 0, "HWAFNRYZDVJTTC": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdVO": 0, "TDXbdeRRYJWcFVbCDVCBOPFHe": 1, "cCHObVZMYCMPWAEeIcFARSYJXRDVMDTEBBVYYT": 0, "OOIBTBBLXOQRTKeeWe": 1, "HWAFYBfPDBEDHIWDbKIdDZBXJSCKBcfae": 1, "eUFJZVacKdZJVVUDORMTfLT": 0, "aWQOcYTBOOIBTVXAQRMFXJKe": 1, "aXTfHAEDCDWOOSOHOVZMYCBcPOeFaXfRXe": 0, "fefSKeESCOONdPGKNSCMHVPHALOLOLMO": 0, "HINZJLeUXSaZbdKNKNKHUFXSBYQOWcfINKe": 2, "TWUQQbHVEZNePeEBVHDWNZGSRaPSZbXEIZBGaWXCFafae": 1, "aXTfHAEDISIBTVZMYCEbWccPcNPMAOebQAC": 0, "aaOCZDSSYZTNReKaKHeFUHDJbZJae": 2, "YdXfMPXYZaTaTaBEUcKBSMFeJHUWEYcZbMKJZKe": 1, "aXTfHAEDISIBTVZMYCBBLXOLATZdSfbCaceeRAcMcWe": 0, "aWQOcYRYNPDHCOLZOFBfWaPNSLERXSBRe": 0, "aaTBNZZJRLESPIDNJDPVBC": 1, "PPXGWPHDDZKZDYTYGWOZXUCeeWXFZEVC": 0, "aXTfOFJZMYeKTcEKTUTZCWYO": 0, "IZBTdFPfBKSAELSXPYUFfDfeYAcOINGUZDMQPYO": 0, "aXTfHAEDCDWOOSOHOdQeRHfAFZfWZffMXC": 0, "aXTfHAEDISIBTMMbYHFBddQC": 0, "AEUaYPZZGbdUSUIUBTNTMFFfeTQUBXFSdKfKdXT": 0, "aXTfHAEDdKNKNKZDYCJNLcMYeAFZfWZffMXC": 0, "ZCaDMSBZeeZTXJdZfAAdRTRIdaEUAFBaDMSCZC": 0, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBccCcCcCC": 0, "OMHBVOIfFHcYBCeUDOHQJCYLT": 1, "HWAJLGbbeLRcVWQIOLJWcRKIVUdVCDdZVC": 0, "PcVJZTOeTFcSBebJTGWDAAQUYdOBeQPQIaGeFZBQCdKNKNKWe": 1, "OMIZEPQBaFBddQJXDbYXaRIYAC": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKMGHe": 0, "aXTfHAEDCDWOOSOHOVZMYCVXVAYVaNEbDHFAUADPRXe": 0, "cCHObMMCFRBZDOLZYbFZVGAZbaTaTaET": 1 }, "f": { "IZALOLOLOCDOHJPBJXBHAPFPMdFO": 1, "ABVYUYNaXTfMPSXZFFfeNJXIHOReeHe": 1, "BIUJLMSYNCedPUXdOMYbSPcC": 1, "HCZANHDdLYBNZfAAEAQMYaNVSDcRZTEUPHdGWe": 1, "OLSHIfDWBZEWaSdVLC": 1, "HCZANHDdLYBEfQYOUZJKYIYZEVSTHe": 1, "fTHYPMPSXHSdNBJIREVC": 2, "dLcXJeITPMObVcKYO": 1, "HWAFYScXQOVPOZJSSZdTYMIKe": 1, "TPOaXGPAJcPJYXQWVeADPTHO": 1, "HWAFYWMdAHdJQVVTHVC": 1, "IZVBBVYUBUGKSGdSYO": 1, "eRQDdOCcaIXMTBEJISDaPdMIbQbAEDJeeKe": 1, "fEOMbQbeHBcNADZWeAXBQTdPIZSUbEWOTYVOBOFO": 1, "aaAJYBARWSECRAOAcEUC": 1, "IZBTdFPfBKSAELSXPBQGMEcSOLWEBJbQae": 1, "VVOcTWYWZSVbaBZUHZJFaNcCBaQDabHaDHT": 1, "YdXfTQNdeAWNTUMKPRbdJNabIKdFHaO": 1, "cCHObIVIADIBNGSdONbCNLOLOLMO": 1, "HWAFNRWMPNSMYPPHZVaUAWTWMRWe": 1, "eWHJdAQTEfEITNPffYSYNBYTET": 1, "ABVYUYNaXTbQGNQJSFVfEQIJceVSRe": 1, "HWAFYTfbacWXT": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBULQEWWe": 1, "PcJDDJZGOXT": 1, "TZYBETfTWefPZXDCJFABKIWe": 1, "eDSdUfPPART": 1, "YdXfTQdeAWNdfXe": 1, "aWQOcYTBbJfEDELHfNEIEYXT": 1, "YTBaXEbQFPIEEBBcFPIWRQYAPHe": 1, "HMbARYfTeBZEWeZMRfYSbSCZC": 1, "HVNKdFZbDdUYKe": 1, "YdAeJXVNYHJfQAMOfNZDbAefQHO": 1, "BIUJLMFPAACJWMdIKdFHaO": 1, "HMeCJHAdKeWUEEOdXNWfNJOET": 1, "dLYHMRFeRQePeEBARCLFNZfKXe": 1, "HWAFYDEZRdJaWYfTRe": 1, "cCHObECVVDDORMTfFbRZFJGO": 1, "HWAFNeOYDadJJYJO": 1, "HWAFNeOYSBVJSEFKXNJdUcOHT": 1, "eDUdGVHMLMJdXMRfUWXFZEVC": 1, "eDSdUfRFEOVYbFZVGAZKe": 1, "HMbVZNOSPDTLLFSHAMCMVXAAHASCZC": 1, "IZbREZVPTLKGBfJebYFHMPHeVBae": 1, "BCIKSTPFeZKUIRSNWXFZEVC": 1, "INLGPMPSXPBccFRSTELFKWIFdCYO": 1, "NAFLeOeJHVNTPeVZAHGaCGbbNZJFJadKbCTEQCZFbNXGDJae": 1, "HMbBQbFFDfaVcPFXbOdUMJaCNHUHe": 1, "aaMLFYEcNfDbAHLSGJO": 1, "YWYHaUWPHDDPCbJODKPIPODWe": 1, "HCZANHDdLYBYScXQOVZUdSUHTRLBJASObEWWe": 1, "IZBTdFPfBKSAELSXPHTaSWVacDTRTfIZKe": 1, "OMTVBENNRYXcCHHRHbENHKKAGVT": 1, "bQbYWXFZEVWKMTUBVXaCNFOOIBTBFO": 2, "TeCOeJNHRSLTFIQNNDZVVLLXT": 1, "HWAFYSGPcVDZBTUbERVNUESGQCdeBVOSWe": 1, "GCLaYCKdFYFcCbNBOPVKFESTEUOOIBBO": 1, "TeCOeJPLKXGKSFZbGXPabSWUHbC": 1, "HWAFYHNTQTNWRfDFO": 1, "fefSCOJZfIZZRAbTYRQHAYWOAVXfZbGSFcNQSZBeRe": 1, "IZEZVPKBZTJVPfOXSdXMDDBARGRT": 1, "OMHMbBLKBRJVBGVPLRQKe": 1, "GCQKEaAJDbPXKDfabSWUHbWPHDDWe": 2, "PcVJZTOeTFVHPPYQKZabbUSUTIZQXbLVWCOOFPdaDHWFZDNLOLOLMO": 1, "NAZSNdKLfOKFXbaCEUMKAaFYNQcfEIRbDXe": 1, "dLYHMRFeRQPcRWTfQORNScTUDdWe": 1, "HWAFYTbVYOIOWAUC": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVaNdCYO": 1, "HCZVFaNPKGUJeaILYJO": 1, "IERBfaNbIUONSFOOIBBO": 1, "HWAFNRTKeeZaWe": 1, "fefSKeEWKMTUBbQGWWPHDDWe": 1, "HVUBYBBVYUfFdHMTafPXPRQEdeXe": 1, "bQGBPZdOWcaTJPabSWUHbWPHDDWe": 2, "NAFLSDBJWbOEfSPMHBaVTbYHbUTKe": 1, "HWAFYWMdEDRYFJYbTSZQMASWe": 1, "YdXfCZNTaYPeYdFHWPbTPFeZKUIRCfPXeC": 1, "OOGbIWSGAQdOBPBOIVNJJSVZGGO": 1, "GfHOUbeKKPHcVScZbeKRJdPC": 1, "HWAFYAOEIEYXT": 1, "MRLLLZcVXGXBONSLT": 1, "ZdZfDHCOLZOTdfdRWSEXAbAJQTQPWZcYPYO": 2, "GCNJFZdOaBZCSZYXMHO": 1, "HCZEKQaRRYddBbNXGDJEcQMdBcAEHYO": 1, "GCNJFZdOaBZCSZYXMPXMRUMVMXT": 1, "NAREDMDRPbfcVDaaVcbRZYZWHccNZRO": 1, "HZUacMUIAZdJAINQZQNBJfBMIZebWNWe": 1, "cCPeYGIZeVTNVQcfFKVbONebEWcDaWe": 1, "ABZJJHVSAaNCWLPVIRPLFGO": 1, "eWHMYTBbdbDNWeIALeUINCIHRJDDXIHERdaKe": 1, "OMaXaePLSIRSHT": 1, "AZfHAEDBOSAKYBJYeEIBPNZWdDJcXe": 1, "YWYHfUDeATPRXUBO": 2, "cCGaYSdEfEITNPfaSdFaLbFJNTeNSfCFADeKe": 3, "GCSXHHVQIZDFJNLcOdHFOUJPNSIJNGEfZXXddOERe": 1, "aWOQKVUKeFbAdcDcdAXRCBQBBHFBddQC": 1, "YdXfdKNKNKPWZJdUQWTCUZZAUGO": 1, "INLGPfECIAaKLHPPYHDESeRQFKYOeUO": 1, "NAREFYTBacTTNAIOFWC": 1, "HWAFYfEeNSBZQXKFKe": 1, "OMNNSCZWBZcZbSTBPMaMdAPVFfC": 1, "IZVGPVUfEDdeZOHeYHe": 1, "OTfdASFZQfBJATNWXdBGHDDESWOGVO": 1, "aXTfHAEDBOSBGPfBKWOVZMYIO": 1, "fTZaTaTaBYNZSBJIREVSGDMSdC": 1, "ABVYUNNDEDdEUEGTUSGGO": 1, "HMeCJHAVXSAWPHDDPNSRDAJLT": 1, "OMNQEDIKELcNQKAENUEcDCacUO": 1, "HMbVXSAWXaUSCZC": 1, "OLBEJVIcVOXT": 1, "ZcSIcceNDSJVGGZYfPXPRLO": 1, "cCHObMKdFEAQdOBfScdDRfBSCDWOOC": 1, "AEaBVcYSYeRT": 1, "OaaKQZZMcTcYNaXTbEdHOUfBOVXXe": 1, "aXbSbcBOXBYWYHbIODIVVO": 1, "IZVGHeCXLJTVFfFeNDYTUET": 1, "OOGbAZAdFcEDJIAdEKQRVJEBYJO": 1, "TZUfdbYfTQULATZdSGWUFRURURHe": 1, "AEAFPKIJSHXdRT": 1, "INFddKNKNKHbdJMWBDLLXcBaOHe": 2, "HWAFNeOYFNbUPANNBUDLC": 1, "cCHObMKdFEVbFZVGAZaePLSISWTPWIfcdVT": 1, "HMbBYYDdWQZQBOFO": 1, "bQbYFcIKSCYbcINHJNbOVVTYABOFO": 1, "UYIVaVbMVYNFPdNYKFFaMEAKe": 1, "AEUaYPZZGbdEKQRVJcQYIMdUTSDPCJWXe": 2, "HWAFNQBJFJUEeRT": 1, "eWfaQFNYKdadNOODCLaAFZKXe": 2, "ODRdHUNZWODDRYGPCJKDKaT": 1, "HWAFYDEZRdJfeVAXNLaUNQJTedPUcYO": 1, "UETTJbZWMZfPAJbWdALLbJeJHINeCeQcJWe": 1, "HWAFYeNcEVC": 1, "IZTYBKFeaSLAZWAcJXZMbSFBO": 1, "OMTVBENNRYXcCHHRHbbLXMHO": 1, "bOcGcCEaLMJeVPDdCATWPHDDWe": 1, "GCSXHHVQIZDFJNLcOdZSAcJHDFXXccBPKe": 1, "cJNSCDOTMOBfSfVSdQfLCcVNJJYDdfae": 1, "HMbVacDNIXQRfAeQNQbWNWe": 1, "YTcNPbNffSLBGVPRe": 1, "ZOBJZGTUWfaYYfPYTbGNEVdZOMO": 1, "XdKYEGFAZeVNLDJFFKMEcEQPDHCOLZCDWOOC": 1, "NAZZIfQAZFLMTeECUJCaTTKIKdFHaO": 1, "MeHGWcWZTDUZXbSYTUSGbVeKWe": 1, "dLcXJeITPMOaMO": 1, "HWAFYBfPDBEDHIWDbKIdDZBXCEC": 1, "fefSKeEFKMBKEOcNSZBeLPHYYfPHe": 1, "PeYJYJbVHRVVCScKFCJBYEXe": 1, "PUTCDCcBUacEfBaUEIQJBeaT": 1, "OOIBTVXOCZBKeJHVPRbQfXJHMPHeXe": 1, "HMbAURAfPMEPSUNCMJbcHCGWVUNZdeLEcaDfecYTET": 1, "HCZVFaNZXCbYPTBVYScXQOVWe": 1, "eDSdUbZRNWBOfWVWNYO": 1, "HWAFYDEZRae": 2, "HWAFYTfDHCOLZIHSHFTdbLcYFPWe": 2, "AEUaYPZZGbBXafdcaNYCLUWCPFDUC": 1, "OaaKLRXFeSICZeQcJJIaLKKVWLKTRFO": 1, "HWLMYCBYabdSOBNSJScFHRe": 1, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 1, "eDSdUfZPUMVBFUZCHQfBSdJRe": 1, "OLBEXfQYLSHFdAUOYO": 1, "OMHBABKHUcKPebBGZUdcCGZMWcbTFNeKe": 1, "cQZUdSUHTRLYANAadIeZNMKdSQbZET": 2, "PPXGSCZWNOTEbWcKZIXXcffWe": 2, "VObdZZaBfCCdDeQfYYT": 1, "INQHUNRAZUffECIAEKKUHAbINOffNcUUZabSXT": 1, "cQDJGPHAZaSdVXSADcTBZLO": 1, "eWHJdAQTEfEITNPffYSYNBdLHe": 1, "HWAFYDEZREPVIRPQJbSYT": 1, "HMbOOTWVdNHWTRTfIZKe": 1, "HWAFYbcZTTdWABTXNPUcCHPLecO": 1, "cQSXZaTaTaBfFdHMcQYIMdUaMEAbSAccTXYaC": 1, "BCVLBLKNYVeeefEXLO": 1, "aXbXDDZNPcRXJdGTTKdWZEYBBVYYT": 1, "YLXASfBPbdFDOeecbXAKe": 1, "ZdZbaBBUcJZKCBHXGFbAGebDCSLSEQFZfC": 2, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZeKKWe": 1, "TDUCDBOSEbWcXAcDTdUEcZIeZMC": 1, "ZdLNKPQFAeDHRQRFHT": 1, "NNSCZWXFGdEaJPGAAQeccdNZDPBSBOFO": 1, "YdAeYdHWNOTMeAZcGcZUbSBLXe": 1, "feaSLAZWAcFCaNOcMXRfBXO": 1, "HMeCJHAVXSADORMTfFTdYVPEQDENDdNC": 1, "aXTfHAEDBOSdQZXDOXWXKYSSdadFQRMeXcIFUWbWOOC": 1, "INLGPZPfECIAEKKUHAbECHTeYT": 1, "adUAVYCdIcPJeaILYDTPcOUZaPXPRLO": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYXT": 1, "aWQOcTEWcfBQDPBFO": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIcCcCcCC": 1, "YdXfMTXEUDdeOYSCaIfWcACVVLZPecOEO": 1, "OOIBTVXMAcZEWMMOOdbEWaHePLSIRLT": 1, "NAFQCJWZUbGSRaPSPZBSMGaFNRdScYAZTRe": 1, "AEAFZdTYMIaYfPHZVUfCRe": 1, "HMbKbHAYIFTdZfLLCcYTET": 1, "IZENYPERAMDBcPOeFYeMOKe": 1, "eWHMBIUJLMDeLOaBYXYTPBAeNZBTBNFecMEO": 1, "HWAJLGbbeLbIeIPYBAFBVFTUZSdcDZVAMO": 1, "ZOMTXEUDERZYGfHMadYJJFAYTZTEYfDeZBUSIRDHT": 1, "AEAFSXZCTPVLWLdTC": 1, "HWAFYYYeHQAXaIRdNC": 1, "BPHOaBAZTbKCBZeVTNVQJKDKGNNPaGVT": 1, "BIUJLMSYTUFXReEIQWHJNGLTLdFYeVAZdYINGaVC": 1, "BIUJLMFPAABdeTcRJUCHVREHGC": 1, "HMeVKJeGMXNZQMeYJNNQeHT": 1, "bQGBVIZdRJVVPePPSHRReKe": 1, "HOdCLVXcNNDdONINSQFSUCKVSVJPVT": 1, "INLBdRAZUffECIAEKKUHAbINOffNcUUZabSXT": 2, "ODREGZUTPTUaDSKBZVKFPaDWADWRe": 1, "OLQQRTWfBNQKSQPCcCbPdBVGWe": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSRe": 1, "cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET": 1, "ODREGZUTPOCaJefFDEVDWSRe": 2, "aXTbSFHMHHVbReIYBRRCaSddQeRHfAFZfWZffIKdFHaO": 1, "VMITcZJLCZBfaNKe": 1, "THHSODILJbbfYFZIJePICaeFYTET": 1, "eDSdUfDXVWJVEFASOEO": 1, "ELSXPeJIPQJQVVdNZTeCFEDYcHVPHAHUHe": 1, "YTBYNJXCcNGEcHZFGLNZZTDCeMJYGIeKe": 1, "NAFLeNLSSIBcbTYUSEKBeJcJUJSVCHAPFHaO": 1, "NVNZWUATYDKPHHT": 1, "HMbCALZBYeRKTTWZcYTET": 1, "HWAFYTfeZLHaO": 1, "OOIBTKMDNdEPQDCWXIVXSKTNC": 1, "HMbXLQAFRGEMEaXGbRbBOFO": 1, "aXbSbcOQPCPRWXdBGZXeNLOLOLMO": 2, "cQPHbcGRccQYIMdUfEJMFbFUIVTESMCC": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUFRURURHe": 1, "INFdCDOTEKBeJGbXHWbXaTFKGZSXT": 1, "HWAFYdeRQdCYO": 1, "OMbMWcMdFRGbQfJNGLdDJIOUIC": 2, "bQEWMdCPYLaALSGQCdBC": 1, "NVNZWUHVSeAcfeJWGaRBQBXRAXZZXIVXSKTNC": 1, "HWAFYTbSIAWTWEUcSbWRWCHJWe": 1, "eDSdUbaaNRfXaIRdNDDC": 1, "BKATYFRURURYVcTQQDAURAfPMfXC": 1, "AdeKbOTdfdRMebfSPHIcNLRIGLT": 1, "HMbBbOUOOJVfJFYNSOHXdRT": 1, "dJLYMNVePbTQRTWZBNZGEaaWPROUIHeBAVZKWe": 1, "OMTVBENNFZFJFRLRGO": 1, "IZVBEHbVFbXUCeeDNQUZARYfYO": 1, "YdXfTQNdeAWNTUMKHSYeGIGWRBQZXRT": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "HWAFYbIeIPNQBDVRGCMRXZXe": 3, "IZVBEJTVFfFeNDYTUET": 1, "HBbfBAJPNPTDCHT": 1, "dLcXJeITPMObDSDHe": 1, "HMeCJHAVXSASeONDTeJNHC": 1, "VVOcNNDdOVZMYCdcQPUZCBKeJfQYLO": 1, "OMYNaXTfFfDeHZTSRFdGCWae": 1, "GfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "HMbEbWcBBeIaZZWIOIeMEfdWVMcOcYTET": 1, "AEJPECVVDWCPBfIHSHFTAcET": 1, "HZUbWNZAABfWcDaebJRXFYO": 1, "aXbSGcSZJODXQEaKdLOLOLMO": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcWCTZQWe": 1, "ODREGHXFZPeZYSHIfDWQIORe": 1, "cCHObVZMYCVKKMadMUPORIPBLAUFRURURHe": 1, "PPXGFRURURNRNPUOUAaDNRTKeeHRbdFIKe": 1, "HWAFNRNeXQCaZXALKFTRFO": 1, "TeCOeJPQRWSEXcBdHSPFRJeZMdQdFJO": 1, "IZALOLOLOCDOHJPVCMILEEBXe": 1, "aXbSGNVXNRbDdJTLaKdLOLOLMO": 1, "aWQOcTMGCBMBAADTeRT": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUC": 1, "aXbSbcOQQVWXdBGZXeNLOLOLMO": 2, "dLYHMRFeRQLOLOLOdQUVRJHVPHVdNHRO": 1, "bdZSAccTXYaWHFXedFIaQYaC": 1, "aWHMVKbTBPAAdKLREcNBdEdFaGCfSCZC": 2, "BPHOaBaWQOcfESUaecfbVCMIQRDEJLHe": 1, "HWAFNLTLAYDNHOeWWGO": 1, "BOebGRZUTVGUVHNPMEUXPNMZKWe": 1, "OOIBTVXINLcMYNaXTbXMOXQXVcKYO": 1, "HWAFNeOYDORMTfFTWWCQSFHVPHVATZdSGWUC": 1, "HWAFYRQfUUeDUfeSXfZdfVCMFDSFSWe": 1, "NAREFBCdEcXUFcNQFBNLJWe": 1, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBDORMTfLT": 1, "HMbVAANFTeSUbENHUHe": 1, "fTZdEYaSdNELZHDeFNZNFTUQODWe": 2, "HWAFNeOYSCaIbNfHZHT": 1, "eEBZFJZeOQPPHFBddQSMaRKXBYCXbBHYBUcRe": 1, "OMTVBENNQASXVVFXdKYEaEVaETeDdHWNRHe": 1, "OaaKQZZMcBfFdHMZQbDNFMYCeVDbPaT": 1, "HMbVacDNVZNMPHVDZTaWe": 1, "eDSdUfNDJEFVWITRfSCMeRT": 1, "cCOTKBcIXEQWFPQLQBBO": 1, "cCHObCBWaEdIPPSfDcAZdJAINLBBVYNCRe": 1, "BCOHNFPBJYIYKcdKRSNcDHRbdFIKe": 1, "HWAFNJbaOLPYKDcdJaHIHT": 1, "eWHMHMbCTYATbJKYIYZEVWLAAOebQAYXT": 1, "eWfCDBOSVIHQcaMEAaRZEGcCSRPLSEdLRSUWe": 1, "HMbVAGaGbZEeeTYSCZC": 1, "fTZaTaTaBAZTbYCTWZHT": 1, "OMIZbRdRMQIfNZFZeaPQWSYC": 1, "bQGBANdSSFHPLPBQGMcNBOFO": 1, "HWAFYWMdXIeIPLSKJNGeEO": 1, "aXbXDDZNPcRXWcDaHFBddQWPHDDWe": 1, "HMbBXafERWbSAPPaebWNWe": 1, "eWHMHMbMFJQPYVQOCaGGTUSGbHXe": 1, "HMbCTYAaZZWIeXUJAFSCZC": 1, "cCEaLMWHFFEaRXe": 1, "PPXGSCZFRURURNRYZWDOCYKdECHTeUVIZdRRT": 2, "VVOcTRYZLWZWORTeCISUZEYYEO": 1, "NAREFHSCLeNIJWHSGQZacIJSBSRe": 1, "OaaKLZfefIMLefBcdCBTFHZRTYC": 1, "OLZfebIYBFRZIAKLBJbQGWSVOZGBaeacWXT": 1, "NVNZYeJMEZCPXPRQdDSdAae": 1, "dLYHMRFeRLPYKDcdFceHEVFIMNSePTBPeGEEC": 1, "HMbVacDNOdRSCXJNBOSMFMZNdCLYNZNZAGWe": 1, "NAFQQADZQUAIIfOdASUTbC": 1, "IZALOLOLOICWRdGOHHABNaSdFaLbFC": 1, "HMbVAbcdJXIIHTPMObWNWe": 1, "AdeKbCcBUBBAeScYbEfcWfYSbC": 2, "NVNZYeJeVYZXDMUBdAURAfPVT": 1, "aXbSFYTBHMHHVbReINLOLOLOINLSdMWSOPdFcEBcGKe": 1, "HWAFYXMHO": 1, "NNZVPXPLKNdQZfFZHDUFYQFMTfcQQCNBaFO": 1, "BOeaYYfPYNYHNPMMNIRHcEFeLHYO": 1, "NAFQCJWZUfNBVCBZSHeWaMSZXeCFNZC": 1, "PcVFHMPaNKXMWBcAeSZcbdfIPFDUDTC": 1, "ELSXPeJIPLeQSAESPMEZaPXPRQdDWYO": 1, "PWBJfbHXSceIfIHfSbfZALOEXKQLNJC": 1, "NVSGHKLOWWbBYOWEaXCfAMO": 1, "HWAFYEEJWcRXZXe": 1, "fefSKeEFKMBKEOcYRISUaPZdMcCcCcCC": 1, "bQGBVIZdRJGINYTFIYaXROZEPYKDcdC": 1, "eDSdUbAPRYDaKFBfTIcKe": 1, "TeCOeJPQPIFdCACfXPRLO": 1, "IZbREZVPTLKGBfSUaecfbVCMIRe": 1, "NVPOFJaNLDEINHSIVRBWe": 1, "YQKSXPTLKGBfSOaKecNfTRe": 1, "BPHAUfXAPEJPECHTeUZUYaTTUC": 1, "YTBUIHOdVLBLBGVPQWIbdPXILMUC": 1, "aXTbSFHMHHVbReIYaaTLbFFceHEVJZdLHNLLWXFZEVC": 1, "NVNZYeJBBMeHGUFQbMDOHQSGaT": 1, "BIUJLMDSWPaDMWXFZEVC": 1, "NAFLfOdASUTbDIdJcCJYOccCVDeKaNeWbXMbdRRT": 1, "aWQOcYTBYROdMfNLHSdDWe": 1, "dLcXJcCcCcCJAJOTHGZDDUZXdUFDcHe": 1, "aaMLFHSWedNTUQODPMPSXWe": 1, "OMEIZEHbaTaTaBdJdHPHFAUADHSdVXSAC": 1, "HWAFYDEZREFYMZTULHfYO": 1, "HWAFYWEbCbcEJKaEcfaNKe": 1, "YLXASfBPbdFDBPVOaDUC": 1, "fefSKeEWKMTUBbQGWFRURURHe": 1, "HMbMYOdBXRBefPGLKcZAHUHe": 1, "HWAFYbIeIPNQBDUMAPNZfAC": 1, "bQGBTFJNGLTLBGVPLDFCWPaDMC": 1, "PPXGFRURURYNNZWdZBSeLT": 1, "ZdLNKZJAEcbFDaPTJEPFWFQHT": 1, "HWAFNRYQLaXTANZPSVWe": 1, "eDUdGVdNMfXLMdAJHRFAIO": 1, "GfHOUbeKKZaaNRfBaFKbdKCFKVAFUJC": 1, "NAFQQAFJZeOQHNDTRYWMDHe": 1, "OOIBTBGPfBKSOZdBZCBKeJELWe": 1, "BPHAUaLEbOMFcZScTSDGISGaXe": 1, "YdXfMOfDHCOLZBaQDfIOafVHLeNBLLT": 1, "HWAFYWdPKeEeWXe": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 1, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "OOIBTCeMJYGIHRbdFIKe": 1, "BCEQAeMZeEOHGZGbDYJOUWe": 1, "OTfdASFBPIabKeKeZQObdSVQZRO": 1, "BCEQAeMZeEOHGZGbDYWCHPJDIFAfPBHT": 1, "BCTPFeZKUIFcJYeMHRNQMWSCCCHJDTbNeHT": 1, "cJaUFIMNSeCXYHMNfUUcJaXJVT": 1, "BHDTJdReLBEHAFPROaSXWTNUTIGdAFUKKWe": 1, "aXbISHcAaZEYbJeDIBLGafAPeHT": 1, "PPXGSCZWPHDDZWDFbC": 2, "OMNNSCZJVdfUFcNFMYCeXe": 1, "NVNZYeJKTYFGFfPfIVXBPKAC": 1, "ABVYUaXAZfLdPcRXUFMNJQOOXeHO": 1, "TPOaXGHFVVLYZDTZULAQdOET": 1, "NAFLeOeJOLcLcDMbZfFccRVT": 1, "bQGBVXGHVPHXe": 1, "cCHObCBWaEdIPPSfDcAZdJAINQLOLOLMWHT": 1, "bLEBBVYUAZYIaWQIXe": 1, "fXGWdUSYZTNReKfaKAOOVT": 1, "TeCOeJPQQBJLUUXVSfCSRBJNNfGPCDGHfYT": 2, "bQGBAWQNAcQaPUPcDORMTfLT": 1, "BIUJLMFPAAMbTBYbBHUSTDLO": 1, "PPXGSCZDSSYZTNReKfdSDeSHRbdFIKe": 1, "HWAFYDEZRdJbENeDBFdMOPXYJUCeae": 1, "HWAFYTbVYOXKFKe": 1, "HMbBXafdZeNTTSbWNWe": 1, "AEAFPIPBcdCCWMTdKfXJZKNFbfBAC": 1, "bZWOdASUTbDbeAPCbAeTSKe": 1, "PPXGSCZFRURURNLVBHVRVKaMUHGeFZBQIO": 1, "AEUaYPZZGbdUJFFSfLXT": 1, "ODRETYeYCNOSHeCXQcaNYCLUSUZLFcFJdRKe": 1, "INLGPZHLEZObTHT": 1, "YdXfdKNKNKPZPdbYNaLScXQOVWe": 1, "TWPAOPeIJDbXHVUdMAOEITKe": 1, "dLcXJeITPMObOVKGaLT": 1, "HMbVacDNVAbcYTET": 1, "TZUfdbYfTLBbPTPdKNKNKWe": 1, "NAFLeOeJAETbIYBWJcdDTHRNeFfXZGC": 1, "NAFQCJWZUfJaAKDffSQRTWZBNHDFXXccBPKe": 1, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRHe": 2, "XdKYEaEVTNeNcJPEcObECELHNBOSOJNET": 3, "aXBNTfUWRFMeJAETfACQCALZUEXODPCcVIZdRRT": 1, "YdXfMOfZHYYfPYGTUIXfNAURAfPVT": 1, "NAFLeOeJOMOLJKFQMbZfWQIXe": 1, "NAFQCJWZUaZeKGEOIBfaNKe": 1, "NAFLSRfdQBTFNRaJNVTUNfFHe": 1, "OOIBTBGPfBKSOHYYIBPNFMYCeVPfC": 1, "PPXGSCZWPHDDZKPSCMBOHIcHOReeYaAFZKXe": 2, "HZUaQRSeBcKHSYeGXT": 1, "BPHMaKBbTYWeLJFaMEAbFJGO": 1, "HWAFYJPASVZKHSYeGXT": 1, "aXTfOFJZMYeKTcABVYUHTQZTQUERBdSMHBaWQOHT": 2, "HMbVAbHT": 1, "HBAdWABTXNPUZaeUFDQYT": 1, "HWAFYEEBVcPDIaSGabRbSFMLaUC": 1, "HMbBONPbaNYVXbdYeNeUZWNWe": 1, "bOcGcCEaLMJeVPDdCATWbWOOC": 1, "GbJAHHEdQbTdFVNaDNLFNZfC": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPDHCOLcO": 1, "OMeRQFCFeaRXUbZFLMZGHCTRdIeMeOXbbFJFC": 1, "AEAFSXZCTPMPMADDbddQHT": 1, "HHYPWMPdKZXDMKBQVIaDDZIBPbWe": 1, "OOIBTBBLXOLWCGEfJcfNWOCeMJYGIWe": 1, "YdXfdKNKNKHUSBAPBRYcFITC": 1, "HMbdDRJNGPbBfDUIEbfWCUfWLEXPBOFO": 1, "HWAFNeOYDUMAPYXMHO": 1, "eEBZFJZeOQPTJAAVceVbYANZTRbAOdZWfCUUC": 2, "ELSXPeJIPLJPMZWLBebbAPLZDdDC": 1, "BCEQAeMZeEOHGZGbDYeNcEVDAMeMaDMC": 1, "HWAFNeOYFWUJNVPNFO": 1, "OaaKLRXFKOOSZDQXKCQMWWEYcZGO": 1, "eDSdUfHVbdWPHDDPACQXYSQOLWCGae": 1, "HMbAURAfPMPfSWBJOTXNAHUHe": 1, "NAREFZGccVYMbNXGDJEXMbPXJOYO": 1, "OaaKLRXFeSICZeQcJJIaLKKXe": 1, "ABVYUYQJJYCBTWPHVNDZEdHOUfJJO": 1, "HWAFYBEYFbYOdPACLO": 1, "HVPZdZGIGPefQPTdLBHJPCePWdJNQBUC": 1, "cCHObOOYKYYaDcOdJeaILYDCDWOOC": 1, "aXbXDDZNPcRXFMMCKBaaSLGYfPHe": 1, "eDSdUbJARGZaaNRaO": 1, "HHYPFOWPHDDZFUdJVEFASOdICFHUeUae": 1, "aXbXDDZNPcRXWcDaHFBddQWbWOOC": 1, "KHYbYKCUUDNYSKDZSdSUWDaWeVZWNeHO": 2, "bQGBVIZdRJVVPePPSHNKXMC": 1, "OOGbIFBUMEfTQJNDYBFKYOeeIKdFHaO": 1, "HWAFYTfbacWCcKbOFHe": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1, "HMbVacDNVZNMPHVC": 1, "HMbVZVCGCcOOIBBO": 1, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcOUTUKUDZHe": 1, "aWHMVKbTBPAAMFMZVAKLZWNWe": 2, "ODREBdZWTQCGVTaWeVHJefOBMXT": 1, "BHDTJdReLGPRbdDXBWBKIeZYUVLcbdYICC": 1, "ABVYUOUdAHLAWXFZEVC": 1, "BIUJLMJVfNafMUfBFGFVIZdRRT": 1, "fXGWCafXJKDKaT": 1, "INFdBOSOTBMBPfRDcTLEXe": 1, "cCHObARLOBADEGaadHKKAGMcCcCcCC": 1, "TPOaXGHFVVLYPJaAKDfZHcOUfFPbQfC": 1, "IZVGHeCXLHbVFbXUCeeDNQUZARYfYO": 1, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "dLcXJeITPMObDSDYPVIRPRe": 1, "HWAFNcLPLWITMSYNJUeAUCFcNcNKe": 1, "BCdGNQbHVEZYeNbNEIIYIEbC": 1, "NAREFcCcCcCDSJRNfaQOAZbfHfXe": 1, "OTfdASFYTSUaRQMeBYaebCNZeOBO": 1, "YdXfdKNKNKHUScWaPCUHMHeIWC": 1, "OOIBTBBLXOLRIYFTUZSTFZTHReIET": 1, "eWfbWNZOdLUObUANTVacDYO": 1, "ZdZaYPZPBQJbLbOMFcZLWZHOfAURAfPVT": 1, "fXGWdUFEZaZLJHPLcSaERMJDDdWe": 1, "OMHMbEdeVZVPKGC": 1, "NAFQQAFJZeOQZREKdZCFXSTHO": 1, "BIUJLMJVfNabBUUCIJDWHWOEXKQLNJC": 1, "fXGWECYJeVYSWeUKXYPMC": 1, "BCdGNRAZYGccEbeTLaAFZKAUdRXMFDFaT": 1, "AEAFSXZCTPKbHGSaEUcYO": 1, "YdXfCDWOOScWJcEWNEJYBMFFO": 1, "AdREFHZUfFfFcYRQaXdRT": 1, "AdZZBJOTXNOQZJFJadMXbIPRaO": 2, "AZNdAYbeDUPIVPZVIDRbLWZHOfXIZTOeTeLT": 1, "dLcXJeITPMObDQKIUC": 1, "bQGBVIZdRJGINYTFIYaXROZEBBVYYT": 2, "HWAFNSGWWWHFQZcVYYNcJC": 1, "OMNNSCZDEDdWSXePEaJPGAAQeHT": 1, "HMbOHNJObDGVRQYIUYTET": 1, "HWAFYEEBAQTJPAcSfCSRBRT": 1, "eDSdUfMPSXZIUONSFTUQODPWAecDKORe": 1, "OMaFbFDaHYbAHcMSPWZJae": 1, "HCZANHDdLYBYXBafISWESVIAFET": 1, "AdSRZBMBTVdVPaESLae": 1, "AZTaHZeDUHYaXFZPeZYUbQWe": 1, "AdPcRXUSdEDeZVZMYCVXXe": 2, "ODRdZWdZRVKaMUHcWXT": 1, "fXGWdJHBHVPHAYRKZZAXZLO": 1, "NAREFcMEbJObYZffQLQBBO": 1, "bQKPWLVRbYTVMeOJaVPbJNWWeHT": 1, "HCLeAeMUbZFVIQHNVCOBYPQBTbedcbOWSUISRe": 1, "IZdHUYWESdMWWHDCSVZXdGVDZSdSUWDbIUOYSIUC": 1, "MRLQeIJDORMTfFOOIBTdLXbWe": 1, "HWAFNRNFSUCDBae": 1, "ABVYUYNaXTfXAPEeNSBedFeWKUVHe": 1, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "OOGbIFBUNHDeHeIeNRSSIBVXLT": 1, "PWBJBMWASUJNVJKMFJQPYXcBdHC": 1, "HMbKAcQJFYDTeCFEDYcaMEAbWNWe": 2, "VOffSLYANAadKBFPTcAATIMZMTWGO": 1, "cCHObECVVDWPHDDPRbdDKVZNMPHVC": 1, "cCcCcCFLFHaZFdGdfTIEBFUINHC": 1, "HBOAIEcADDbdEPQBTKe": 1, "aXTfHAEDBOSOPRSAeUDUKVZFWbWOODPBFO": 1, "BOefWZJEdcAKWQQadeOJATXT": 1, "YTBYNJXCcfTJXNALYPfdTSPWPHDDWe": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "cCHObECVVDDORMTfFEIZEHaZVUbCBMNLVT": 1, "cCHObONdPbABJRXTcXCEFRURURHe": 1, "dDfPJNCFGfGfZbCEWZeEHJddEPXeC": 1, "BCEQVScXQOVPFOJKDKaT": 1, "IZESaZEYZDEbeNBZXTQeFXUFcNQSYSBNaKe": 1, "HMbBPMINPPKGUSCZC": 1, "BHDTJdReQHUYYOLEaMNcHe": 1, "cCHObdRdJSfdQaRNFOSeDCJWMddKNKNKWe": 1, "NVNZWUBIUJLMWGaRBQBAWKAOARGBGQXBKTSdZPOKNCBJZGaDHT": 1, "INLGHUDSJNQQdKBUPfECIAEcOHT": 1, "fefSCODGPIZZRAbOORAZDTRODBNLaPEbBBHT": 1, "OOGbIFBUXOVAZQXaTFKGHWNZKTQIZKe": 1, "HWAFNRYdNHWBOCbbC": 1, "NAFLSDdcfeJRSYEVJDfdFcae": 1, "UYIBGQXBKTSdZPCQCFeONFPZAGaaeRaO": 1, "HMbMdIXdfdTRVKaMUPTLKGBfSCZC": 1, "bLEZfZLFZbZQXSFPbODAKC": 2, "ABVYUaXAZfLdZGIGPZAWe": 1, "HMbCTYAaZZWIeXUJAFC": 1, "GdNIXCPTBcRZdbXdUKLaDWVcJNZGCOeFKebAZOHYO": 1, "TeCOeJPLSPMKPEcBBMWQUeZOPXTbBWBIbQTNC": 1, "OMeRQDSFeaSUefDGYUSPJFSIZIBLaT": 1, "bQbYWXFZEVWKMTUBVXaCNFEUXPNMZQWe": 2, "OOIBTBBLXOLXEOBTUSPJXCHT": 1, "HCZEIBSYPGTPdUFSbeCJEXcCHHQJbHFRT": 1, "HMGLLFCeRbLMTBLLFGO": 2, "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "NAFLSRaRRefdQBTDeXNOAVdNHWTRTfIZKe": 1, "fEOMdLHOAcFNADHcKdZJVVUSCZC": 1, "febdSANFRWdNHIQFRURURHe": 2, "AdZZMQMLSWdRdJceBeWe": 1, "eWfaQRAOAcEUFQLNHRbdFIKe": 2, "INLcSaERMJDJFFKFZEHe": 1, "BPHMAbFWPJfYYNJBCC": 1, "BKATYFRURURYVcTQQDAdBGXIZRe": 1, "OMeRQDSFLFZNAdBAFVNaLaETeDdWe": 1, "OOGbIFBUYRCOMIMEfTQUETQWYQSYHWVNMJO": 1, "PcVFHMPaRReaSdIeZNNAFLWEZfefSWe": 1, "NAREFacBLfPIHYKe": 1, "YdXfdKNKNKPZPVAecNfEHLeNBLFfZWLKVHYO": 1, "NaMPOFZYHUSUHYYfPYafDeDC": 1, "HBOMHJSORBYedLTebfcUO": 2, "YdXfdKNKNKPZZWLKVHNTXaJNAFfQXT": 1, "cLdOKVFJFJcGaNVKMNCSJTeCOMKGWe": 1, "eWHMADDbdEcLcDNTVXVGMVXATRDJbfMRTKe": 1, "YTBIZERWfbYXMPBUDLC": 1, "HWAFYEdJbRYWLbQVAHAbWTKe": 1, "VVOcdLeLWCGTLSdMWSOZEdHOUKe": 1, "bQKPWLVRbYTVMeOJLBWHHT": 1, "eDUdGVdNEKDBGQKWOOZIZKe": 1, "UETTJbZWMZfPAJOBGDIcEbCGHfUNLJWe": 1, "bQbYWXFZEVWKMTUBNADPFEfbCDWOOC": 2, "fXSMLfdJHBOXT": 1, "OMNNFHMPdTDJQHSFGJDZTKMbAae": 2, "NVNZWUHVNdQeRHfILWXNGYPFQFcEYYUNZdeLEHT": 2, "OMIZdFSUCKVBVYYdJTAcHe": 1, "HWAFYYNQBWFfYSbC": 1, "dLYHMRFeRQLOLOLOBBPKIWSSIAZfAC": 1, "HWAFYWMdVZMYCEKKEQfKCUKORe": 1, "NVSGZdFDLOEaXCfAOCeTeBZEWWe": 1, "cCHObXKeZKVFGUVbOMNMTaRbdFIaYYfPHe": 1, "fdJcVSdMWZBNaINKVTKe": 1, "aXbXDDZYfEYdMUcMOOIBBO": 1, "NAFLSDdcfeJJNWWNRJGdAFZfC": 1, "ODRdHUYUBBCWbVBaMEAKe": 1, "febIUONSFHBOAIEcVIZdRRT": 1, "PPXGSCZWaZXbSYbQMUPNZFZeaPRe": 1, "NAREDMRSSZWEGPXPQScGcVYcPJPae": 1, "BIUJLMFQTXWDTSVbXQSIZGPECHTeUNPGJNZWPaDMC": 1, "OTfdASFMNbQMdCNETWeZLO": 1, "aWQOcTEYDCMYWfDdMaRIScdeUKe": 1, "NVNZYeJeVYPXPZSMdbDcMWQYT": 1, "aWQOcfEWaZJAJTONIO": 1, "fXGWOIbLJHPLcSaERMJDC": 1, "HMbECYBZSBVKbXJbebZGRGEMEaXGbRbBOFO": 1, "OMaFEcSOLBVYYdRT": 1, "HMbMdIXdfdTRKdSDeSeZBOFO": 1, "HWAFNeOYDYEaNdNDYTUBXCEWOMTXEUDae": 1, "NAFLeOeJAdUKDbecMLaDBMdeOMWe": 1, "aCTPTPeVATbSMcEbOMFcHZLGCCBUbXDCJFOOIBBO": 1, "HWAFYYNQBWFKe": 1, "OMHMbMPMZbDUXAYHNEbHeFUSeGDPNZRO": 1, "TDXDPZDcVDFXBeVYHeaABTVZMYCdKNKNKWe": 1, "cCHObMKdFEVcYSCKVZNMPHVC": 1, "INFdBOSEOCMHMZOXeHO": 1, "bQbYWXFZEVWKMTUBVXaCNFNADZWNWe": 2, "aWQOcYTBTEYDcYdYFMdcHe": 1, "OTfdASFGWcOCbABHTcTHPGMYKe": 1, "aWQOcYTBOTfdASFbLYUbQHYYfPHe": 1, "HMbVXSAWXaUJIQNBOFO": 1, "eDdHFENHQYffSQRTWZBNZMdLEBXe": 1, "MCIAFKKZaTaTaBcJPQORYPOHMQMSeRe": 1, "BCOOOYOKZeSdVXZMKddbQJFYJO": 1, "aXbSGNVXNRbDdJTLaKEBBVYYT": 1, "MCIAFKKHYYfPNQAJLHFDdUUC": 2, "PcVFHMPaSdIeZNNAFLWEPYKDcdDDSTSEQGO": 1, "YTBYNJXCceEDdEAXNJCVXVVUC": 1, "ZcSIcceNSeONWHJNbPMYRedfPIO": 1, "OVYPUQWIbAaLFSebUMeFLO": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUdPC": 1, "YZPTVOBDREeZKRVDMbTFAecbLZBdLHe": 1, "AEAFZMdLEccGSODKPWcVIZdRRT": 1, "HWAFNFHQVLHT": 1, "YTBUIHOdEaJPGAAQecGKSGOAIEHT": 1, "aXbISHcAaZQAVLBQPeHT": 1, "eDSdUfbbdTYMIaDFcIAC": 1, "NAFQCJWZUbRSdFQbMDefEWHZPEEZfKe": 1, "YCObQGWUJXDBWZPOeVSTEYT": 1, "YdXfMTXEUDdSYFOLbOMFcHRbdFIaZPEEccaT": 1, "NaMPOUbAKeWJafdOLYdTWObYNYUO": 1, "HVUBNNeRBNePeEBVUWVYREHGC": 1, "AdPcRXUDDFXPSAGRHDC": 1, "dLYHMRFeRLLCBLTYSDSAVLQWFKe": 1, "HWAJLGbbeLRcVDeeEFEIXUZOVLBQcDffdVO": 1, "aaOCZFRYNYaKEeUOHSeEHNPVT": 1, "OaaKQZZMcTcaWQOcZbFHZRTYC": 1, "OOGbIFBUdWKZGddfdLYVRT": 1, "fefSCOJZfIZZRAbOOLVBHVaMEAKe": 1, "HMbIZJBANFMPQSTEDFaTbYBXe": 1, "HVUBYBBVYUMMfEFQTXWDTJKDKaT": 1, "IZVGHeCXLJTVFbXUCeeDNQUZARYfYO": 1, "aWQOcGfNGcQYIMdUfFaMLXe": 1, "NAREFBCAURAfPMcQYABKdBSYOVT": 1, "OOIBTKMDNdEPDGYWHRBcSbAGaaHFEIKe": 1, "HVPZdZGIGPefbfDGYUC": 1, "HOdIICNBUPFDUSUICFceHEVFKMBKAPVFfC": 1, "ABVYUYNaXTaXHBYeNTDVXORe": 1, "NAFLfOdASUTbJNNFQHWVDdZRO": 1, "AEUaYPZZGbBQMdBaFRYBJeEdUdZAXDKfKdXT": 1, "ZdZbaBOQJYcSaERMJDDaVHNPVT": 1, "febdSANFRWdNHIQWPHDDWe": 1, "fEOMfdbQdRIYdXFNPIITfDHCOLcO": 1, "HCZANHDdLYBEZOXGFDVCMILfPJaAKDKe": 1, "ELSXPeJIPQJQVVdNZCALPFZHJKDKGZMO": 1, "NAFQCJWZUbGSRaPSZXeCFNZWOEXKQLNJC": 1, "YdXfdKNKNKPZPQPIUFZZZBYKe": 1, "cQZQfDafDQNeSbSPSfdeBVOSeKe": 1, "HCZANHDdLYBNPLbbHVJNSZWbECVVDC": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYIVTIbYO": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 2, "PPXGSCZWPHDDZIYBRSEAKSFPXe": 2, "HMGLLYANAadMKZLIOGdCXOEKe": 1, "cCHObTYWeLJFaMEAbKCBZYfNOQIXWYO": 1, "eRYZBQEKBeWecNfEDYOTDEIbeRT": 1, "bQGBVIZdRJVVPePPSPDHCOLcO": 1, "HMbICWVZEdMODSOeecbXAbWNWe": 1, "TeCOeJPLKXGKSFZbGXHRDOeMO": 1, "IZbREZVPTLKGBfROQFJDDZCbMOVT": 1, "HMbVAGBOXBaXfMPXcRUSCZC": 1, "eWfaYHIeJYKabWTfTLKGBfC": 1, "UETTJbZWMZfPMPSXPSePAVaRKZVVLT": 1, "cQZOdAfbXXddOERe": 1, "HWAFYTfQfQAYaFAUADZGYO": 1, "cQSXZaTaTaBfFdHMcQYIMdUAZNdAYfNKOVCMIRe": 2, "PPXGSCZWNTPFeZKUIJZTOeTWXFZEVC": 1, "bLdLOLOLOINUKVacWXT": 1, "cJUJDRSLQKQScVIQHNMbZfFSfDGYUC": 1, "eDSdUbUOADfSUdfZeeELSEO": 1, "NAFLfOdASUTbJGOGcYO": 1, "aXTbSFHMHHVbReINWXXdVLNUUJNMcTHT": 1, "NVSGZadWIRcYbEfcWbQTZOUdTC": 1, "ODREWQcbdbfMHVTWRGNVBUKcTKe": 1, "febdSANFRWdNHIQJbYROKe": 1, "AdZZBOSBBLXOQFMYCeVSCJXXT": 1, "aXTfHAEDCDWOOFcYBVaXTANZGCdQEKSHMRQSRe": 1, "HWAFYDHIWDbKIdDZBdPUDZSMDIaUDdWe": 1, "HWAFNQTbVSGNVBUKcaZdPLeNLae": 1, "HWAFYWMVbXEQFBYCMYWe": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLPQBTfUIaNZXQYcO": 1, "bQGBbQGWDUNRERQZPPLafDeDC": 1, "TDXDPZWORTeCISUPYJObaTaTaET": 1, "BKbVZWNZJFGbREfHYYfPNFFO": 1, "PcJJSJIRADMPIGUO": 1, "eDTANZCLVXcfSJbQFdMdbDcHDQITFSYYBae": 1, "cCcCcCDPCDCcfNYbOEYRAbYPbbTZWKNYT": 1, "BCVPeUIeLLWbTUTZCWTYKe": 1, "HWAFNWTCUZceNGTOFceHEVDVRGCMC": 2, "aXbISHcAaPdAHFeMbFDaPKIC": 1, "ZcSIcceNWNVaLQSHDJKDKaT": 1, "HWAFNZWAdOZHbZC": 1, "HCZANHDdLYJPCSIdTKeFHKZYDDOLBZTSWe": 1, "aXbSbcOQPCPRWXdBGZXeYBBVYYT": 1, "OOIBTVXINLcMYNaXTbCBPGDDRTYC": 1, "NAQGPLeMBBdUfPWRPJVSYZPTBWe": 1, "eWffQLQBTAURAfPMZaeWWUBBEcSCHRAOAcEUC": 1, "HWAFNeOYJeaILYDMFFUKGZIUONSFTUQODWe": 1, "cCHObVZMYCAFFQZcbNXGDJEbOMNMTbYIPfZET": 1, "AdPcRXUJdDBKSdEDFDedPUcSKe": 2, "YTBbdHbdDEDBcfdFOKTBNHC": 1, "TUSGGWMPAZSEQPDcYWEDPeaHRbdFIbUdYSSae": 1, "NAREFcCcCcCFcFFWECHTeUVIZdRRT": 1, "ZcSIcceNSEYKDYWEIFPGUfSVGPQQCXHe": 1, "aWQOcPOKHRFIFaTJWe": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUVVOHT": 1, "GCSXHHVQIZDFJNLcOdZeYSSETYcbWEfZXXddOERe": 1, "OOIBTVXINLcMZNEdZAGBfTKe": 1, "HWAFNJbaOLJDUWe": 1, "fefSKeEFNGBGQXBKTSdZPMGEJYO": 1, "NAFQdGFEYKcbJVaQWBCYbSVbYSLbKAQGGLT": 1, "aDMRDfUFFEPQBaYbTQFLGHOCUC": 2, "YdXfCDWOODCSVZNbIUONSFbYLT": 1, "bQGBVIZdRJEUXPNMPdGIHYKAaaXe": 1, "eDUEcBIUJLMDPdWZIXXcffHHAcZMC": 1, "ZOCDWOOSfdQaUSHMEHTNHT": 1, "NAFQCJWZUfLeHGZLDeVO": 1, "OMGfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "eDTANZCLVXcGbXHWbXaTFKGHNVLZHT": 1, "cCHObVZMYCAFFQZcNKNMC": 2, "adUAVYCdFNLGZaPQQSRPWdOQRTKeeHRbdFIKe": 1, "NAFQQAFJZeOQZREKdZCJVcTC": 1, "YTBUIHOdAHFJcGEUcIJKXe": 1, "OOIBTBBLXOLDEZRdZbVeUPXKXKFKe": 1, "bQGBfFaMLVSGDOaBANKBYfBQHUHe": 1, "dLYHMRFeRQLOLOLOMLTbYIPfZBVXVLCOJdFMC": 1, "HMbMdIXdfdTFeSICZeQPXUXZePBOFO": 1, "HMbVZMYCOeVKGcERQTfWcYTET": 1, "NVPOFJcfFXPGWATUZSdcFHbcRe": 1, "INLYMdbPDGYUJIVO": 1, "BHDTJdReQHUYYOLEaMYYXO": 1, "IZVBEHbVFfFeNDYTUET": 1, "INLAFPKGUSVGPLLFKWILXcEQSQQHT": 1, "PcVFHMPbJARGPXAPEPYKDcdJKDKGbPCfUaKBGO": 1, "bQGBBOXBbQGWFBaaeHGGINYTFIHe": 1, "BIUJLMFPAABHeUNfGYKaPNZFZeaPLaAFZKXe": 1, "TeCOeJcIXEQRbCACaWNLMBUIPbVaKbNVCMIQZfAC": 1, "adUTWVYMcQPACQEKDBGQKWMO": 1, "BCVPeUIeLLWbAZCdVAeFEcNLGZGcBNeRO": 1, "PcJJZGafIRVVSCZC": 1, "HMbTWVdNHWNOOdeBVOSZWNWe": 1, "VVOcTWYWZSVbaBZUHZJFaNcCXKFKe": 1, "dLcXJeITPMObdTYMIKe": 1, "TWfbaTaTaBOMNVRdJbVaAFZKXe": 1, "YNaXTbXdUFDVXVRIYLT": 1, "cQDJGZaTaTaBIFIZbXDOXDPBFO": 1, "ZdZaYPZPTLKGBfSKBZVKFPbXZEBLcVT": 1, "OMIZERWfbYXMHO": 1, "OOIBTVXAWbYSVGPLQSLfZDQXKNCRO": 1, "ZcSIcceNJVGGZYfPXPRQdQeRHfCRO": 1, "ZCOBeITPBRWe": 1, "BCEQAeMZeEOHGZGbDNFKFbbYPQBTKe": 1, "INQHUYZIEPfLaMbAMHMZMQcCVKLLYaKXOYO": 1, "HWAFYRKGCbGNMQMLPSCTaMO": 2, "BCEQAeMZeEOHGZGbDNZJFRHLLAC": 1, "HWAFYBfPDBdRWMPNSICDdDSdVLT": 1, "HMbOOTWVdNHWTRTfIZbedSHfeRbEfKFWUC": 1, "YdXfTHBfPSYNJcHIfXIVXSKTNC": 1, "BIUJLMJVfNabFXFBcEbJVKfLWe": 1, "YdXfCDWOODSSCaIfWcHOReeHe": 1, "VVOcNNDdONBBLXOQFMYCeVSCJXXT": 1, "eRQWcIXdCcaIXMTBEJcCYeFVIQJGEVaUcJWe": 1, "HWAFYTfDHCOLZEJaKFEIHT": 1, "HWAFNJfJCQfUJeaILYJO": 1, "HWAFYDEZREXOeFaQae": 1, "HWAFNeOYFWUFOWGSQZdWOGVO": 1, "GCQKEaAJDbPXKDfabSWUHbDORMTfLT": 1, "fXGWMQcCVKLLNeMZeEOHGGdOAGROXSZFNYC": 1, "NNSCZWXFGdVacDdMUNPYSbSCZC": 1, "YRdUWRSAGWVCMIQZZFfJKDKe": 1, "BbFDRdJadUECQeWUcVNcbSTHT": 1, "NAFLeOeJOQeOYFCRFZMbYWMPSYaET": 1, "AERXWeDfBAKTRe": 1, "YNaXTaSdNBUYLMcXT": 1, "NAREFEJKaEcZGccARTKeeHRbdFIKe": 1, "OMTVBENYScXQOVZDOLbFZVGAZKe": 1, "ZdZaYPZZGbMQfIOeZFNZRO": 1, "aWQOcYTBACKbCQMQRe": 1, "OQWBObadWIRcOfAcQaZJCNQOVTLdaRO": 1, "NReaHfUEYYPOCXDOET": 1, "HMbKdFTHXSWEYcZbMSVXMPBOSVfFfZdOUcO": 1, "ZdZaYPZZGbAKXVGDPfQeFTcZJLCZBNcC": 1, "dJLGHFBddQFQcEDeNPYZIecO": 1, "BCEQAeMZeEOHGZGbDYdaWeae": 1, "HWAFNUPAWUNVXGRcIJXcJcUO": 1, "febdSANSGDJQaCRbNZBUfJDVSKe": 1, "cCHObXKeNJAbAHdZWdKNKNKWe": 1, "MCIAFKKZaTaTaBcJPGEbfFeTKe": 2, "aXTbSFYTBHMHHVbReINLOLOLOAZfLdPUVIZdRRT": 1, "HZUaQJdDBKFfHBVScYAZdFFLKSBCHDUQWYT": 1, "HMbVAbcKfRPWXKfBKdHUHe": 1, "aWQOcYTBXXQDZBMLaUC": 1, "bdPeBHMaGNYYcdHZcNSNWeDeRTLcffWe": 1, "HWAFYDHIWDfSMHOReeHe": 1, "febdSANWBOfYSYNBMbfRKIMbABOfPGLKcZXe": 1, "OOGbOTdKNKNKPeYTWTUHDFbWHDCSVWe": 1, "eEBPBJFJZeOQPBOBTUWTNUC": 1, "YWYHaGfZOIZIVSEQUEQERZYGGeTC": 2, "EGTUSGbEJHIXT": 1, "HBOAIEcGcEJDXO": 1, "eRYPHbcGRcHWVdCdfaefcVDZBNPbNKe": 1, "ODREZfefTLKGBfFKJBKWUOfAYULMZZCGVKe": 1, "EUXPNMHfLebbMHSWedNDeQfYUXVaKBIecO": 1, "GCLaYCKdFYFcCbNBOPVKFESTEYT": 1, "cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe": 1, "OMNNSCZFcNFMYCeAWIbAaLFSeKe": 1, "bQGBPZdOWcaTJPabSWUHbDORMTfLT": 2, "eDUdGVHbAMUWPaDMWXFZEVC": 1, "eEBZFJZeOQPPHFBddQSMaXdRT": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLcPDYVWZFKbPLT": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLMbQGUIO": 1, "IZVGPVUfEFKYOeeOZbNFbKHDHT": 1, "NVNZWUHVSeAcfeJWGGZTLGePTWHT": 1, "NAFQZMISRSOJaTfMDcGEfdbfZDVRGCMC": 1, "fTZaTaTaBYNZSINSQcaGKRRT": 1, "HWAFYDEZRdZbVeUHFAUVcIO": 1, "bQGBPGJIMADXDcVVPePHYYfPHe": 1, "HWAFNPIFddWPPKFLFLNKe": 1, "cCcCcCRDfUFFEPQBaYaOdbLXaRIYAeLT": 1, "dLcXJeITPMObOVKGaFEJKaEHT": 1, "bQbYWXFZEVWKMTUBVXaCNFNADPFDUC": 2, "NAREFBCCUFFWeARfDRfEOLKe": 1, "YTcEAJDTbAMITKe": 1, "HWAFNUVSZNZZJRZaTKe": 1, "eWITPOKSKBZNVVbcOAIEcNVFCHC": 1, "dLcXJeITPMObDQKIUDVRGCMC": 1, "IZVGPRFfEDdeZOHeYHe": 1, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKFRURURHe": 1, "OOIBTVXINLcMNQKAENJHe": 1, "cCHObVKKMadMUPXPRQVOPdUXFRURURHe": 1, "NAFQOCUcLYANAadVeKZDYBLcOcOIIeSGTIKdFHaO": 1, "PPXGFRURURYTfeMcHBcGcIJKae": 1, "aWQOcdLYHMRFeRLBBVYUZbeKRJTDXbae": 1, "cCEaLMWCJCCLOHVZBYWbMC": 1, "cQZJALOdeEEBFfZLMBUXCEWPHDDWe": 1, "NAFQCJWZUbDOQRTWZBNHDFXXccBPKe": 1, "HMbdGFdKAcQJFfHPSOeKe": 1, "NAFQVUNOdOKBBIUJLMJLBWHcPTceMbVZEHe": 1, "HWAFNRYXMHO": 1, "adUAAdCYcPSBVHSCGVbaORe": 1, "IZbREZVPTLKGBfWKcBcaMEAaYWe": 1, "GCSXHHVQIZDFJNLcOdHeHbBGbbeLBXe": 1, "OMHMbMPMZbFDSFSefWcHSWedNTUQODZSXT": 1, "aXTfHAEDdUFFBSBbWUeMJeNBLFZbFKMBKISIBBO": 1, "eDUdGVdNKEBXJNSVVWaIIKe": 1, "cCHObTULHfAFFQZcVIZdRJOOIBBO": 1, "AdREFdJEeRKTMObIUONSQecLUTBYKe": 1, "aXTfHAEDBOSVZMYCBaFKbECHZfYCNHQJYNBaFKbdOSabcTBHYYfPHe": 1, "HMbCaASBaRJZMFWBOFO": 1, "YTBeWfCDVAUVKfBLWeDZQNUTEYMO": 1, "YQKSXPTLKGBfSOEYfDeZNMLTKe": 1, "eWfaQRAOAcEUFKYOeeIKdFHaO": 1, "OMNNSCZDEDVacDIHSHFBO": 1, "GCSXHHVQIZDFJNLcOdHFOUJPNSIHHZIBHXCbfZVO": 1, "ABVYUaXAZfLdPcRXUJeaILYDCTBVKe": 1, "BCEQAeMZeEOHGZGbDYZICFLcbAUC": 1, "cCcCcCSYAETfZPHcGRNSVZLWZHOfTDCeIXIRUXEHbC": 1, "NDAFUTUeVPeUIeLREHGJBYLXASKe": 1, "HWAFYEdHeSaeZIHSHDaERVceAHHe": 1, "YTBHMbAaBcHOGZWFfRbdPNZFZeaPQQDIVXO": 1, "HZUaQSYeJPOKHCcZQLcO": 1, "aXTbSFYTBHMHHVbReIYBBVYUYNaXfLSKDBMdeVaAFZKXe": 1, "OTfdASFXOVAUVSZYdFfGEXGO": 1, "YTBHMbEKBeWecNfEVSGFGZJESeHT": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBJfBMXT": 1, "HWAFYTbDOLbeTSLdaRO": 1, "NADPFBbSFcFXeUNZWPPLbSIPRLXe": 1, "OMYdVNNRbGADDBDOLEPBPUJcXe": 1, "BCdGNQGPLaAFZKAUdRXMFDFaT": 1, "HMbECHTeUbLBZC": 1, "ccCGCFWRfGASOdMYAMTDTEZVXVdNHWTRTfIZKe": 2, "ZdZaYPZZGbEVdZXKGPEQbNBEBUSMTKe": 2, "HWAFYWMdCCTQOZaDJPae": 1, "HWAFNeOYJXAadNONMOKe": 1, "INLYANAadONebEJJHMVGZUdSUHTRLdYFMdcHe": 1, "NAFQCJWZUbGSRaPSZWeAQPXPRQXKFbGQDaYKe": 1, "dLcXJeITPMObVcKNMfXLMEO": 1, "YdXfBOSTQTHBfPWLIZSVafVAPBWHAcLRfMHSUZGcBHe": 1, "aaMLFXLYSfDcHaZFYWEIFNVBUKcKe": 1, "NVNZYeJBBYZUeQKBBTZVGO": 2, "OOGbCDOTAZAdFcEEHJebAHYfWZJae": 1, "HWAFYDEZREbUObQGNLXTFWOVVWaIfXT": 1, "aXBNTfZHYHQDVCXdUFDeTQQVDaVYEO": 1, "UETTJcJTPCXJLbBBcbFDaNSdfBPKe": 1, "BUHBNHDbUTPOfFRC": 1, "IZVBETWRGfOJbARTKeePUcedJHBVUC": 1, "HMbdcLFCeRbLMTMZUJBaKFBVKQPGO": 1, "eDUdGVdNMHRNQMDXcRPPKECKBHT": 1, "aXTfHAEDISIBTINLbeTLQSQZRO": 1, "HZUaQJdDBKFfHET": 1, "HWAFNeOYWbSaKVFVYBXYZICFLcaIdTC": 1, "GfCDATBfPbDACAJSWdfYeNGJC": 1, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZXNRe": 1, "eWfCDBOSVacDNOFBfDEHJFdLeAWTabSIbLO": 1, "HVUBYHDWNZGSRaPSZeDUHYbVSKHRbdFIKe": 1, "BbFDRdJcAQDIWSBaMYDNNLTSHaT": 1, "aXbSbcOQecDKAJDKVHbVDZaTaTaET": 1, "IaaVGGeaYPZZXeMFJKeKe": 1, "fTZaTaTaBfFdHMAZfeGEEC": 1, "cCcCcCSYeJfaNfPESHbfNFNVBUKcTKe": 1, "eWfbWNZFXFBcEeYTBNZfAC": 1, "aWQOcEFeLHNVVJPALCHT": 1, "HMbVVGBadQAQIZbWNWe": 1, "BCTPeMQIbNXGDJEEFHeMaJPSffUUGXKe": 1, "HWAFNeOYJXAadKfXdfdTSfCSRBRT": 1, "BCEQAeMZeEOHGZGbDYBZeEGGNPbaae": 1, "PWBJZSMFdWOGVedCFeZIJC": 1, "ODREGZNbJAEceEDdEdaWYO": 1, "OATBaYHHHUSFKCTPROET": 1, "HWAFNFRWEZffTLKGBfC": 1, "bQKPWLVRbYTVMeOSMeSNaKe": 1, "feaSLAZWAcFCNBTLEKXJYXT": 1, "HMbBbOUOOJVfJFYNSOPLXT": 2, "HMbOKNIUALcGKMFdHUHe": 1, "NAFLeOeJdLeLTabcNVDWQIVBbFC": 1, "NAFQCJWZUbXeCFNZJRbYWVWHWOEXKQLNJC": 1, "HBOAIEcOGdCMOKe": 1, "BCBaQDbAMUVbCefAfdRe": 1, "HWAFYWQJJSVHFAUVcIO": 1, "IZdFSAPVFfSOVHJaMEATKe": 1, "cCHObVKKMadMUPXPRQBQMdBfDeLdEBJWPHDDWe": 1, "bdPBQGObQPZPUOOIBBO": 1, "eWHJbQEJNCYWEYcZbBOFO": 1, "HWAFNeOYDDFFcNRe": 1, "OMePCefAERXWeDfBAKae": 2, "HMbMYOdAURAfBfSXIOCARSTRTfIZbWNWe": 1, "aWQOcYTBYRYNZQdOFfQdIKGPAMXT": 1, "HWAFYTfVEdFYRZOFHBUBMDOHQC": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUOaaKRe": 1, "HMbIXQRfAeQNQaAMCMVXAAHASCZC": 1, "NAFLfOdASUTbJFSEOUWDKe": 1, "eDSdUbSIPBEOOCROEFO": 1, "cQZJALOdeEEBFfZLMBUXCEFRURURHe": 1, "fefSKeEFcIADWHCDUFYQXUZC": 1, "cJUJDRSLQKLeNcEVC": 1, "aXTfHAEDISIBTBXafdZeYO": 1, "cJUJDRSLQKLdaRO": 1, "aWQOcdLYHMRFeRQLOLOLOdQeRHfOPRALT": 1, "YWYHaGfZOIZUEXODZJODKdCYO": 1, "bOcGYAZERMZVBdWBObdKBQGMZMO": 1, "HWAFYBfPDBEDHIWDbKIdDZBAWTWMRHcWIMZIbYO": 1, "bQGBbQaSINacMSZRObOC": 1, "HWAFNeOYJMDIfXILMSBSRe": 1, "fEOMeRYLfIKdFHfBOFO": 1, "HWAFNWTCUZZOeGDdKFBKIBFBEEEJHO": 1, "bdPBQRSINfAONWeDeRTLcffPFDUC": 1, "HMbKbHGeaQFNHfBQEQJBbeNBOFO": 2, "HWAFYWLJWcWOTPeXe": 1, "eEBZFJZeOQPbbFCeaPLLedRJcaT": 1, "OMTVBENNQASXVVFNVBUKcTaWYZfefYSbC": 1, "PPXGWPHDDZdSdBTWeWGVUO": 1, "fefSKeEFcIADWHCDUFYQXUZWPHDDWe": 1, "AEUaYZKZYYKdBcGcNHC": 1, "HWAFYDEZRdZbVeUZDYeJIRBcVSHT": 1, "IZVBETWRGEAJbARTKeePUcedJHBVUC": 1, "dLcXJeITPMObdTYMIfJaAKDKe": 1, "YTBaXEbQFPIEEBBcFPIWJbHFRT": 1, "fefSKeEFcIADWHCDUFYQXUZFRURURHe": 1, "NAFQCJWZUbXeCFNZSEOJcRAdJKe": 1, "HWAFNeOYSUaecfbEIEYXT": 1, "GCQKEaAJDbJANafabSWUHbDORMTfLT": 1, "HWAFNRTKeeWe": 1, "AdRYZDEfVCfLPJCQfC": 1, "cCHObIPPQFFTaNFbNXGDJEBBVYYT": 1, "aXTfHAEDISIBTEVHWEcTNFEYTWXKYSSdadFQRMeXcVQSRe": 1, "IZVGHHPAJdSeEeCeDC": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFWPHDDWe": 1, "HOdIICNBUPFDUWBZcZbeKRJbJfEJO": 1, "fefSKeEFcIAWJSFOAGWdKNKNKWe": 1, "HWAFYBfPDBdLEaBXe": 1, "BKATYFRURURYVcTQQDAdELHaO": 1, "fefSKeEFKMBKEOcNSZBeLPZaTaTaET": 1, "GfHOUbeKKZafVfLeCaceYO": 1, "bQGBNPBFDHOIVBAQbHGAXJNbMSXe": 1, "aXTfHAEDCDWOOJdDBKSOGXCcZYEIKaJTXRHe": 1, "aaMRYBENYceJJVaCPfYHNPVT": 1, "PUTVdBaUEIQWCHeLIZQTZOUdTWPHDDWe": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUYTET": 1, "AEHAFPRFRURURNFSBMBAWTWEUAZfXAPae": 1, "fXGWBHIBPLRCEHARe": 1, "cCcCcCFRZIAKQUPMcZSATQdEHWXKe": 1, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWJCVXGUaXEHT": 1, "eDSdUfbfKBZTSJeOXbbFFbJFSMZDaFFcae": 1, "YTBeWfCDEaJPGAAQecVKfBLWeDZQNUTEYMO": 1, "ZdZbaTaTaBBUcJPQfQAYfeDIVaKEcNTBPWZJae": 1, "bQGBZabQEPFQFcdFBOOIBBO": 1, "AESVJPMYKXNUJMFcNRfDRKe": 1, "HWAFYRQTaNVbIeIPNJKe": 2, "BCdGNePeEBAPIFddeOIKe": 1, "HWAFYRKGCfeZBNUcO": 1, "UaDEQSTWeIRdTSEOUWDbXLLXNWSLT": 1, "aXTfHAEDdQZXDOXFAHNBGPfBKWbWOOC": 1, "NAFQdGFEYKcbJVaYHSKUAZJAUbcARJcQAGO": 1, "AEAFSXZXdGVDZSdSUWDbCTHO": 1, "INFddKNKNKPZZGbMPcNVBUKcbSXT": 1, "NAFLeOeJdLeLTfVCdGESFDCGVKe": 1, "febdSANFRWEYBXYFPdKNKNKWe": 1, "OOIBTVXMAcZEAHYcTEfWe": 1, "IZbREZVPTLKGBfFcINGLae": 1, "BIUJLMFPAAIISINfKBKBUHAABGOHaT": 2, "IZVBEEEJPMZeFTWePWe": 1, "bLdLOLOLOOTINUFDINFPIWBHT": 1, "HDDZOWNdOZBYTZcYWHXGWe": 1, "NVNZYeJGdAFZfWHSVCHCTeVUbQWe": 1, "AEHAFPRFRURURYZVZWDWEbYbOWBcaKBGO": 1, "HWAFYWEQCLBMC": 1, "eDSdUfAJAZdJAINQWBOfWVWNYO": 1, "AdREFdJdWTCUZceNGTORXZXe": 2, "BCTHeUAFffbdfKQZGMKAaFYNLeRYVT": 1, "bQGWZUYaTTDcTBeNDZSdSUWDbWNWe": 1, "UBKeJOMfFdHMbLYBUJcbTdDIXAeMdMSBFOEIEYXT": 1, "HWAFYdbFJBGfIKe": 1, "eDSdUbKHRJRSMDIWLdTNPBNOcXRBZUPGCFJVHWENRe": 1, "eWfaYHIDJNMTbXUCeeWXFZEVC": 1, "TWPABOSEIDSeWZMfUdOeVKGcEXGJC": 1, "cCHObOOYKYYaDcOdJeaILYDdKNKNKWe": 1, "BCVRAAOHBdQAUFZbSae": 1, "NAREFcCcCcCDSJRNfbXUCeeWXFZEVC": 1, "HWAFYeNMZSPDeHbLae": 1, "bQGBbQGWFBaaeHGZOAcFMBRNHUHe": 1, "bQGBIUeBAHUZeWNZJKbIYUNfSeVSTdTUC": 1, "OOIBTVXINLcMYNaXTfMZKPHOUKe": 1, "AdZZBOSBaQDbXDOXC": 1, "eDXJNSacQSSPXPRQMbHAcLRfdAMTXEUDae": 1, "AdHUYWCGTLSdMWSOZEdHOUKe": 1, "fTHSQFUUZAfRIZTJYSGFZWVRSebQAC": 4, "BHDTJdReLSEETEVJLBWHcbFMOFIaRIZFCeaPRe": 1, "bQGBPZdOWcaTJZSAccTXYaWHC": 1, "HVUBYPYKDcdJdDBKDcIBaMEAbCTHO": 1, "NAFQCJWZUbaaNRfAKfKSceNECYBZSBVNRXMFDFaT": 1, "aWQOcYTBfFdHMePCefAEREHGSXVVQaWe": 1, "NAREDMFXeSCNZWMVC": 1, "BCVLBQFeaSGMWZNAOOMNXC": 1, "BPHAUbOJNOBYBdYQaWe": 1, "PWBJfbHXSceIfeYINVXTUSGbEXKQLNJC": 1, "HWAFYEdPKFTdRNYYdVKMSPBMO": 1, "ePCefAEaMCVKGPQLQBTdCYO": 1, "bdHFBddQWRHZGSNdDSCZC": 1, "OAZOXHHHXFZPeZeNSVMPYWbHRTHT": 1, "NVSGZadWIRcHINeCeQcJZedWIbAaLFSeKe": 1, "HWAFYEPMWIdfYeCIObTae": 1, "UaDaBAdLeVRfXPRQIbNAURAfPVT": 1, "cQYIMdUYWEIFPBNQKAEYTKe": 1, "IZBTdFPfBKSAELSXPCbXbSYbcQcDKZVFRTKe": 1, "eWHMaXbSbccJaRBMRPdHdFeGVIZdRRT": 1, "ZdZaYPZZGbdEHWXfVTNRJJRKe": 1, "XdKYEaEALMHWadVCMILScXQOVWe": 1, "BPHMAZTaHZXbSYbcLFcXAFUTUUO": 1, "aCTPCDCcVIPfLSHeQRfWPbISXWae": 1, "HMbVZVCGCcYTET": 1, "OaaKQZZMcTcZdIAAVVWaIIacMSebdaNCFeLT": 1, "aXTbSFYTBHMHHVbReIYBBVYUfFdHMNQJTeERXWXFZEVC": 1, "ABVYUaXBOFYCeVScXQOVPACLO": 1, "NAREFacTTNAIBaFOXT": 1, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQHO": 1, "BHDTJdReLBBVYUfFdHMaMEAfXafJCfSLT": 1, "HWAFNeOYFWURFCUBQae": 1, "TDXDPZWORTeCISUPYJOaYYfPHe": 1, "aXbSFYTBHMHHVbReIYBBVYUAZfBcdCBTJZdLHNLLC": 1, "eDEMfSJbQJQRXZVUbQHbUMIKe": 1, "HWAFNeOYFLDUaeVbaO": 1, "ZcSIcceNJMFcOeQNUPGUfJKDKaT": 1, "ODREGZSIebcGZcVTPMVScfZWRC": 1, "AdZZBOSINSQFSBUNJEREcbJfEJO": 1, "aXTaYYfPYLXSOeKe": 1, "OMNQEDXYeQMMaXdRT": 1, "AEAFPIPBcdCCWMTdKfXJdPFAYTZTEFJYGO": 1, "aWQOcOLQQPFYcAQFJO": 1, "HWAFNLOLOLOOAJeKZBfaNKe": 1, "HWAFYBfPDBEDHIWDfQPdDSdVLT": 2, "HWAFNeOYRQWcDAVbBHMZYO": 1, "PPXGSCZDDJLHFDIHcFITC": 1, "cQHYYfPYJWcRXQFVYUYWTMcBTTEVC": 1, "UETTJbZWOIXYBYATKBTEIbeRT": 1, "OaaKLXcCHHRHaNALMHWadMbHAcLRaO": 1, "cCHObMKdFEKXFZEVWEYcZbBNTaSdFaLbFFRURURHe": 1, "VObdZZaBTYFGCeCVRJcTfMSPIeKTBHRAEIATXT": 1, "OaaKLecTYSHJAHTWTUZdaIOHT": 1, "PWBJfbHXSceIbZRAbVcXdXDNEXKQLNJC": 1, "IZbREZVPTLKGBfDeHeIeNJVEVC": 1, "GbQUJWPHDDPWVaTOAdLXe": 1, "BHDTJdReQLOLOLOVZMYCVCMILRVVPKLZcO": 3, "cCHObVKKMadMUPXPRQAVWPJSSAZfAC": 1, "HWAFNeOYJIJUcO": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVNET": 1, "aWQOcYTBBKbVHYYfPNQBUDbVT": 1, "aWQOcOOIBTdQeRHfEXNUGUSHMaLMJYJbVWe": 1, "NAFQdGFEYKcbJVaQRSALZPIeANIHfCcMLaC": 1, "aWQOcYTBfBZVNLbMBYGUXe": 1, "NADPFBbSFcFXeUNZSOIOFSbLJbWRC": 1, "eEBZFJZeOQZGfeAQJTZdbfZFXAWDOCTKe": 1, "OOIBTBBLXOLDEZRdZbVeUPXKECHTeYT": 1, "ABVYUaXAZfLdPcRXUJdFCDRTYC": 1, "NAFQdGFEYKcbJVaYHbJcdYWTJUWEVWNCGVKe": 1, "NLJZCEQMULaDAEKKSLcSEO": 1, "BHDTJdReQHUYYOLEaMNSUC": 1, "aXTbSFYTBHMHHVbReIYDEZREAYVaNEbDHFAUADHRbdFIKe": 1, "BCVVWaIIabUNfYaAFZKVcbRZSAcQWe": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1, "adUTWALdFSUCKVbceVPWXdAOVAZdYINGaVC": 1, "ZFNTefbBTJNGLERMPJNNDPSVT": 1, "cCcCcCWPJeVYSLLeLHYO": 1, "OOIBTVXMAcZEJWcWKVSSZRe": 1, "cCHObTULHfAFFQZcVIZdRJcCcCcCC": 1, "cCHObVKKMadMUPXPRQINFPIWBccCcCcCC": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCIXVKZYZAZSGaDfeHT": 1, "HZUaYHUFfHBTbHAcUXe": 1, "NAFQOEfSPMHBcCcCcCDRUWFLcVCBeMBXZeKe": 1, "IZVBETWRGEAJbVZTUPUOeMO": 1, "dLcXJeITPMOfIPJaAKDKe": 1, "OTfdASFAdJYcDHBdJUKeYEGWe": 1, "HWAFNeOYDPPHYKHGHNKe": 1, "NAFLeNIJSeZRBUfFAeFHOReeYbOMFcHYKe": 2, "eWffHbcGRcTeCYbeFbINfHIDJNMTKe": 1, "eWHMbNXGDJdeJBcKZJAUbcARJfaNbLWZHOaO": 1, "HMbVacDNOdRSCXJNBOFO": 1, "HWAFYBfPDBEDHIWDbKIdDZBTfNZeLT": 1, "AdZZBOSdQZEdHOUbIVFGWfdTUC": 1, "IULDEZREFcUcSTaWYEPBCYO": 2, "cCcCcCDPCDCcACOJOMGcZUYaTTC": 1, "HWAFYEETfYPadRWSEUNPLHJdFO": 1, "HWAFNRNHWMSXe": 1, "HWAFNeOYFWUJNVPNSXKFKe": 1, "TfNZeFOBOZFbTVQWaHNBcQYIMdUADDbdae": 1, "dDfPJcbWESSIdFDSPWLBeTfecNfTXC": 2, "YdXfMPXYHYYfPYPNLINBddeAWNIPPQFFECAFC": 1, "NAZZAMUWVcJNZGCOeFKefZdJZZHCdEREHGUC": 1, "NAFQOVLScXQOVZadBeDVeUWe": 1, "HVUBYHDWNPMPSXPJJASECdUWBZEWaSEO": 1, "aWQOcYTBbJfEDdGUKCMeIKdFHaO": 1, "IZbREZVPTLKGBfWJSJcYaQWEYcZGO": 1, "TeCOeJOUeUNfEANCNIQNNFHeBQUdQadeORSLTFMeHGC": 1, "NAFQCJWZUbXeCFNZFEZaHRdMDMSAFET": 1, "ZcSIcceNWSUIQeYBPJTDfSMTVYXO": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLVT": 1, "HWAFNeOYJEIeKBAWTWEYT": 1, "bLEBBVYUBUAZNdMAZdJAINRe": 1, "cCHObdRdJJXCcaWQOcNNOaUALOLOLMO": 1, "eWHMHOWDDXBYHNeEfHcIJDeQcJUXO": 1, "IZVBEJTVFbXUCeeDNQUZARYfYO": 1, "HMbECHTeUVIZdRRT": 1, "BCEQAeMZeEOHGZGbDYDaKLITRe": 1, "eWfbWNPPPTJEPFWFQcdXUC": 1, "IZbREZVPTLKGBfWKcBcaMEAbaTaTaET": 1, "HWAFYNFIYJKOFKe": 1, "BHDTJdReQHUYPUAdQMWXZSPDECBKe": 1, "aDMWRfDSdWUUHfLebbMPAFFLKZLXJOfAdIUFZZcO": 1, "bQGBHaZFTUbERVedSPDLfOFYBBVYYT": 1, "NQEDBcRJFBESWMXCEC": 2, "eDEMfSJbQJQRXZVUbQPBHHUHaO": 1, "PPXGWPHDDHUDUdQRNLQLAVIWe": 1, "INQQMJJHMVGRCfWSFULXcLfIMbIZDFDNCXO": 1, "fERFYeVQIVOMbEC": 1, "OOIBTBUPFfFFTMAOebQAC": 1, "EUXPNMPXKWBFZVLBLafANUYO": 1, "YQecaXYRJLBWHcdXUC": 1, "NVFVcfTbdNNRSCWffPNfAVeKBMOLDEZREBBVYYT": 1, "NAFQCJWZUbGQDaYfXPRQNCFeZIJDNSNC": 1, "BIUJLMJVfNabXDCJSESbcGOIVNRXMFDFaT": 1, "IZVGHeCXLEEJPMZeFTWePWe": 1, "dLYHMRFeRLeMXFZdTYMIbYTTNZObbC": 1, "YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe": 1, "IZVGZeWRBfEDdeZOHeYHe": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdPIdJBZfUNLT": 1, "PUTKdFfUYQNUTEYDVZVCGIcCcCcCC": 1, "NVNZYeJKTYSfOUGfNQELEUZSHeWaMSeKe": 1, "HMbVAGfFaMLOQHUHe": 1, "YdXfMTXEUDdULEFDVTbVSCWQQWe": 1, "AdPcRXUDEDOeWFeTKEcLOIWe": 1, "IZVPVIRPLeUMZNYRBaGRe": 1, "cCEaLMRSLTSJEHbCGVKe": 1, "HHYPeNfEfFOWOVVLRZYLOVae": 1, "BPHAUbWNZXGOXUSHXT": 1, "UYIVaVbMVYNFPdNYKFFaMEAaUC": 1, "NVNZWUVVOcZFKIbLWeZQMZC": 1, "dLcXJeITPMOfIWe": 1, "BPHMAZTaHPeZBNUZMYXDcYEVfdZRO": 1, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 1, "cCHObdRdJJXRDVMDTEHAFPRJdUDEYIbaTaTaET": 1, "eWHMBUTURNKZDPIXNDbQMASPNZFZeaPRe": 1, "EGTUSGbIXRRBeaLdFMO": 1, "OMEIZEHbaTaTaBZbSCOIHSHFTINLRIYLT": 1, "HMbOCaJeaJERObWNWe": 1, "OOIBTBBLXOQcQBcPbZIVFGWfdTJbHT": 1, "PcVFHMPaQHDDZECEQcLPLBGVPLeaHIKAHXe": 1, "HMbEHRKOEIaHVQdOXAaXFZPeZeNSCZC": 1, "cQZNDbDAATPFeZKUISYZPTBZbaTUSGGPTSJOeXKe": 1, "dLYHMRFeRLBBVYUTDXbEATZFPCSOONC": 1, "aXTfHAEDdUFFBSBfWfecNfEDEZRdPcRXUWPHDDWe": 1, "eDSdUfIMLHLSGDBJbNWLEWXAdZRO": 1, "NAREFBCdEcXUFcNQFBNLJHYYfPHe": 1, "OOIBTBaKDDKAQbMeJeMTDUAVO": 1, "aXTbSFYTBHMHHVbReIYBBVYUbFDaZDYaAFZKXe": 1, "NAFLfOdASUTbWXGdAecLUTdWNAIKGPAMIGDZHXRT": 1, "bdPBQRSINfAONWeDeRTLcffWe": 1, "PPXGFRURURNFZFSOHeHQITC": 1, "BCEQAeMZeEOHGZGbDYadFAPYRCEYedMcET": 1, "OMHMbdQPeXIUEBFXBeVYZIUONSQecLUTBYKe": 1, "cCHObKdJfFdHMXCEFRURURHe": 1, "ZOOKTfGCbLFcDUMAPYTcHVPHVFCcVTcVAWaWe": 1, "BHDTJdReLYOLEaMNcfAHHbfKe": 1, "YdXfdKNKNKPAJeGHSWedNDeQfYUedJYVT": 1, "cQPHbcGRcEfFbaBYWEIFYbdbVfHPdMcQYIMdUPTHT": 1, "HVUBYBBVYUADDbdEcLcDNOLVYZET": 2, "OMNNSCZFcYWCGEbIeIPHe": 1, "bQKPWLVRaJebTDHFKUOdZFO": 1, "HCZANHDdLYBYeUINCdWbYdJBTaJBeTC": 1, "HMbdMJRTaXFZPeZeNRGEMEaXGbRbBOFO": 1, "HWAFYTfNOSTUZXDCJFfaNbfFTUZSTHT": 1, "HWAFNeOYSGDMSCaIfXfQYT": 1, "bPFYTBMWOOVZMYCIXQeMEbaO": 2, "HWAFNeCTZGWJSJPaXfIbOYRLCFC": 1, "HMbdfOYFfdXUDPBSBOFO": 1, "eDXJNSacQSSPXPRQMbHAcLRfdACDWOOC": 1, "AEAFPIPDGYWHJXdDRALXMHO": 1, "HWAFYDEZREFYMZTULHfNOKNIUXe": 1, "HWAFYDGGBbdFO": 1, "YdXfCDWOOSCaIfWcUXWAcbEDGXe": 1, "AdZZBOSMPMZCBKeJHWAJLGbbeRe": 1, "NAFQCJWZUfRFGdNECYBZSBVNRXMFDFaT": 1, "IZVBdeHHOVFfFeNDYTUET": 1, "PWBJbeBaSPTaFIfMSJQFBBBcQYAIRKe": 1, "TeCOeJcCOTKBMEWLWXAEPfeZDaGaCGbbHe": 1, "cCPeYGIPeWBKJVcTSdVFYeAcQaHNfLae": 1, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBWPHDDWe": 1, "OMIZdJNQcBBMHO": 1, "BKOAZbbMVaIBWVUZWHSUHePLSISWIPPSfDHT": 1, "BCdGNePeEBAcUYNTQWe": 1, "PcVFHMPaQHDDZJARGPXAPEbPXQUJKDKaT": 1, "aWQOcYTBcJTPEIFDaHRGFffRC": 1, "NQEDMVZALOdEfcFbC": 2, "GCQKEaAJDbJANafabSWUHbWPHDDWe": 2, "HWAFNRYWMVbXEQJaVWMDHe": 1, "IZBTdFPfBKSAELSXHXSHFdVfWIHCAdPeHT": 1, "INFddKNKNKPfECIAEZKebJARGWe": 2, "HUJSESQUPMcPXPRQAURAfPMcCcCcCC": 1, "febdSANFRWEYBXYFPCDWOOC": 1, "YdXfCDWOOWNEaUPfSCMeJECBLeENKe": 2, "HKBAEBBZRFZBBTcO": 1, "INLGHUDENVLeFOfMQcCVKLLHe": 1, "NAZSNMKQKDJIHRXMJGBcNBRUDKe": 1, "HWAFYDEZREEdRWSdeJOUJGPXPRLO": 1, "cCcCcCDPCDCcACOJOMYPNdeBVOSWe": 1, "cCEaLMDdMHfOJZVRPRBLfPdRT": 1, "NAFQZMISRSOJaTfMDcGEfdbfZC": 1, "HWAFYDEZRdZbVeUZDYbIeIdKWFHcKdZJVVWAUC": 1, "TPOaXGPTGTbUEXODPFDC": 1, "IZVaCQLOLOLOECVVDJYMTSJYMTBNFecMEO": 1, "NAFQVUNOdOKBBIUJLMFfVUUADDRHYTKe": 1, "VVOcMKMBYNFPdNYKFFTNOUbYfIYOHSedFLKIO": 1, "AdZZBOSdQPIMLHFAUADWe": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPJaAKDKe": 1, "eWfbUTPIFbNXGDJEHJfNYTFIYREHGWXdIZDFC": 1, "AfPcCWbKMDNdEHXdRT": 1, "ZcSIcceNRXSTQLeZdSPINUdNPIHe": 1, "ODRESHIfDWQIOLTLAPYcFZfHbJGbEHe": 1, "fXGWdUDGNKJXcGBeDdeFCYAOIBZMZC": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdWe": 2, "ZdfbDBXSCFPCWOXaZPfYeHUHOBNHC": 1, "TeCOeJGDYLJZGNBeWe": 1, "ZcSIcceNJNbdKCFKVWXATRe": 1, "OMZCBKeJfFdHMAZTfTLKGBfC": 1, "bLTLSHIfDSfdFSSBHHGGZWNWe": 1, "HWAFYHVRFeRLeNGTOJERXLMLFSWe": 1, "aWQOcYTBbJfEDVacDdQeRHfVCMILaAFZKXe": 1, "OMIZbRdWSYJIAdEKQRVRT": 1, "cCHObVKKMadMUPXPRQVLBQLOLOLMO": 1, "NAFQCJWZUbGSRaPSZWeAQPHbQRfAZbaeKe": 1, "PUTKdFfUYQNUTEYDVZVCGIOOIBBO": 1, "YdXfMOaYYfPNFfQIYWYHKe": 1, "YdXfdKNKNKHUFVTELZWDTPMKSGTFBRe": 1, "PPXGWPHDDZKZdKNJMNbcSXcRe": 1, "IZVGHeCXLHbVFfFeNDYTUET": 1, "aWMeaHfYFHNLVBHVDBEXaWJPGO": 1, "bQGBVIZdRJVVPePPSHYYfPHe": 1, "ODRESfPeSEYHbAeaWNZCTALVT": 1, "NAFLSRaRRefdQBTFNRaJNVTUNfFHe": 1, "eUFJZVacKdZJVVUWPHDDWe": 1, "bLEBBVYUIZdDMcMdPFKFBOPdQVMSdaHMVHSGFO": 1, "HCZOKTfGCaNPHcXdKYEGHNfLae": 1, "IZbREZVPTLKGBfWPBZOC": 1, "TeCOeJPLccGSOROQSaWeVPBQeLT": 1, "NAREFcCcCcCDSRKBNHNdBaaafECHTeUVIZdRRT": 1, "HWAFYPNLINBdICOXHe": 1, "HWAFNRWMPNSMYZXUCeeC": 1, "NQEDAURAfPMVMIHVHYQSUPVTNSHNYO": 1, "TZUfdKNKNKHbCZIVFTZYBbPTHO": 1, "HWAFYAFPIEAZSAZBdWTNC": 1, "OOIBTVXOCZBKeJaDCCDFQFaLdPeGYO": 1, "abPPWaZUAAVfDfNZFZeaPQeFedFKUddVCUC": 2, "YdXfCDWOOSYeJYdXfMOaLERJDTOeaNRe": 1, "OOIBTKMDNdEPDGYWHFfdQQXEScXQOVWe": 1, "TVLLUbELBbFDNCKBUYLAIO": 1, "OMeRQDSSGDMRCaTCIFcNTDCaePMZABQVT": 1, "HWAFNeOYSBHATYJXAadIJNGae": 1, "AdREFZbFAYTZTbeQfYUXCEC": 2, "NAFLeOeJdLeQeOYDESKfXdfdTSBGcfKLAEdNJLTBPTLKGBfC": 1, "HWAFYTbeYSSEdaWYO": 2, "HBbMWcNHDKdeJMET": 1, "ZdZbaBOQFCESXGBUacWCHT": 1, "NAFQVUNOdOKBBIUJLMJGOGHaZFTeeLFXGDNYcKYO": 1, "TeCOeJBIUJLMFQcGDZHXJNVBUKcKe": 1, "dDfPJcbWEYANAadTDCaNUUDeQcJUXO": 1, "NVNZYeJBIUJLMSCZFXLBKYO": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUWPHDDWe": 1, "PcJJZGHMDALKe": 1, "HMbTYWeLJFBBaMEATfedGbUZWNWe": 1, "OTfdASFNKNMUJBYdFZC": 1, "HWAFNeOYSUaecfbVCMILScXQOVWe": 1, "ABVYUaXEbQFPIEEBBcFPIWWeDfBAKae": 1, "PPXGSCZFRURURNHPZAWe": 2, "IZVBETWRGfOJbVZTUPUOeMO": 1, "GfBQDAMeUCXJYSGHAEUZSTTAIaO": 1, "BCEQAeMZeEOHGZGbDNZJFRHJPNOGFO": 1, "bLTQHUNWARfeSAAECNdHJeaILYJO": 1, "OQHUYGNdMGDZHXJbNXGDJae": 1, "UETTJcbTYUSCSXIeIPLFbAadJRe": 1, "YdXfCDWOOFeJHUWEYcZbIKdFHfCTAWDbfKe": 1, "PPXGSCZFCROQFSdVbCLJNGO": 1, "ZOBJZGDYeUaHBXLMSPRSQcfOEbMUO": 1, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWC": 1, "cCcCcCDPCDCcACOJOMXdKYEaEASNHRUUO": 1, "OLGZUTPOOOCaJebTZWKNYT": 1, "bQEAHSGVTdWPBQGMZbeKRJdPWKPNET": 1, "aXbXDDZNPcRXFMMCKBaaSLBBVYYT": 1, "NQEDIKELcNQKAENUEcDCacUO": 1, "aXTfHAEDISIBTBaFKbdKCFKVeSNdJeCRe": 1, "aXbSbcOQQVWXdBGZXeYBBVYYT": 1, "THHSODPNGZfSeUHMDMKdFbQKae": 1, "NAFLfOdASUTbWTHNODZUBGScSUHHVPZC": 1, "aWQOcTEYDBOSdUWXQBOabcNVDSfAUHcVT": 1, "eRYZDYDYOIKdFHfVfFfZdOUcO": 1, "fefSCOJZfIZZRAbOORAZDTRODBNLaPEbBBcOOIBBO": 1, "OAZOXPKSXPPPaacXO": 1, "OMYTBaWQOcbFDaZDNFMYCeXe": 1, "bLERMTGDCDHDbfGYUXdOMYaNfLTRe": 1, "aWQOcHKdXdDPNDJdQJEcTeKHMeTC": 1, "BPHMAZTaHPVAecNfEYYRQfSeHO": 1, "cCcCcCDPCDCcACOJOMGcBKPGdNC": 1, "ZdLNKZadWIRcNHTIHRXMJGET": 1, "HWAFNHUeRFKZbTZWKNecfZIVFZWPaDMC": 1, "aXbSbcYWYHfAJYWYHacCbcMLaC": 1, "bdPBQRSINfabSWUHbSGeFTYceMTXEUDae": 1, "ZHCDCaGbXDWPPNeJfebBGSEbdETfHFBOLO": 1, "bLdHUNcbdQNcRbZEQDPJRWe": 2, "BCMdeLAbIBHXCbfZVO": 1, "HMbICWVZEdOeecbXAbWNWe": 1, "fefSKeEFKMBKEOcYRISUaPZdMOOIBBO": 1, "YTBeWfCDBHeJOUTBSSPNLcSdeae": 1, "NAREDMDRPGOaYdEKeBOZWDJDTKe": 1, "ZVLLBGVPLWCHBRfOHfKXNWXFZEVC": 1, "YdXfCDOTTQVaJNEKSTQIcKe": 1, "VKGcCcCcCFEeNdDYBRXZXe": 1, "HHYPWMPdKPOMHBHVPRbQfXRT": 2, "HCZANHDdLYDEZREUNTWaRJTAcHe": 1, "NAFLfOdASUTbJFJYBaQcWTNUC": 1, "YWYHaRMSAEWQLTLbRWKPC": 1, "INQHUYZIEPfLEZXZEcSaERMJDWXVXeRe": 1, "YdXfdKNKNKPZZWLKVHNEQfKCUKXe": 1, "INLGPZPFBFKcFYdJVIQYfACLO": 2, "OOIBTBJcQEcNNPadLXe": 1, "OMIZdFSXIHERdabCTHO": 1, "IZbREZVPTLKGBfFQTXWDTSVbXQSdafbOCJO": 1, "HMeCJHAIDZVBNZfAAEZWSQZTcO": 1, "ABVYUaXEbQFHePLSIRFaRDPHe": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCTPFeZKUIWcaICNRGLT": 1, "BCEQAeMZeEOHGZGbDNZEFfWSCCCHJDTKe": 1, "YTTHbXeeVbSccbHSGVZKefACLO": 1, "cCHObARLOBADEGaadHKKAGMOOIBBO": 1, "HZUaYHUWeJUBZHXJcaT": 1, "NVNZYeJBBYZUeQKBBTZMcET": 2, "HMbTYWeLJFBBaMEATbWNWe": 1, "UETTJbZWMZfPGOaYdBGQIZMO": 2, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRNRfTUKe": 1, "NAREDMDRSLQKQYENJePBdEeZONZXPKbSJUAFET": 1, "INFdCDVZMYCAZbGcINNDaeKe": 1, "cCHObMKdFEVRVVPKLZZVCMISLDTLZOXJOOIBBO": 1, "bQKPWLVRbYTVMeOJLBWHcbFMOFIKe": 1, "HCZANHDdLYBNWTCUZZOeGDPNeFGIYIYeFMeAFJBEJKaEcfEC": 1, "OOIBTVXMAcZESHBZEVDZIET": 1, "YdXfdKNKNKZTLVcTQQJO": 1, "cCEaLMJXbJZbQLOLOLMO": 1, "eWfIFVNRXMFDFaT": 1, "eWHMHMbMFJQPYdNHWKAfPIdOHcIJDeQcJUXO": 1, "YdXfBYbWDbQMdEWGPOAcET": 1, "eDSdUfIZaPXKMdbDHT": 1, "OMNNSCZSOGXCcZCBKeJbWPXXO": 1, "PcVFHMPbJARGPXAPEPYKDcdJLOdPOHT": 1, "OMeRQDSFXZNdMeOXbbFJFUWcaHEdQbUC": 1, "YdXfMOfZPDHCOLZIDeRRITfTLKGBfC": 1, "bQGBPZdOWcaTJHRDOeOMTXEUDae": 1, "aWQOcPcLHFDdKNKNKZGSRaPSZECEFSWe": 2, "AdZZBOSMPMaWQMAWTWEYT": 1, "ODREGZUTPAaNCWLUSIKFO": 1, "cCHObMKdFEVYQGXUGScOTVaAFZKXe": 1, "eDSdUfOSWEYBZJJfeebZHGSIUC": 1, "bLTLSHIfDSfdFSSBHHGGPFDC": 1, "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "HBAERdOPRaffXJHSWedNDeQfFRWe": 1, "aXTfHAEDdUJFUFcUKMBKVZMYCISIBBO": 1, "cCHObTYWeLJFaMEAaYLfDbaTaTaET": 1, "HWAFYYNcJC": 1, "ABVYUYNaXTfMPSXZFFfeNJXIXCEC": 1, "BPHOMJURJbcIUeBXe": 1, "IZVBETWRGMMfEDdeZOHeYHe": 1, "bQGBTFJNGLTLBGVPLDJZbDYBGVPRe": 1, "PWBJMeHGSMeSNafXPRQMdBcAdQdOET": 1, "NVNZYeJbFMOFIfGOaYdKTHHfIXbBHTNCMC": 1, "bQGBVIZdRJBCJLWRHZGSNCDWOOC": 1, "IZEeDdEOdUNdKAZeYO": 1, "HWAFNZJNSdCYO": 1, "TZUfdbYfTLBbPTPdKNKNKHUC": 1, "eRYPCfPZNJdQSBGeGddAbDPOHET": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "IZdHUNFSUCKVBAWeIALeUINCIHRJDJO": 1, "aXTbSFHMHHVbReINWXXdVLNUUJYO": 1, "dLcXJeITPMOaOMfXLMEO": 1, "eWfaIDJNMTabUHRbdFIKe": 1, "eWfCDBOSVIHQcaMEAbXcTCaIbSXT": 2, "AEAFSXZCTPVVGcHCbXfXe": 1, "HMbKAcQJFYDTeCFEDYcaMEAKe": 2, "aWQOcYTBbdbDNDQVO": 1, "PPXGSCZFRURURNWBOabFIRZZERT": 2, "PPXGSCZFCFcCZVdcSQBKQKe": 1, "OOIBTCATAJRXJOeBLBbPTPAOZEVC": 1, "aXfGEbfFRURURYAFHSdIeZNYO": 4, "cCHObVKKMadMUPXPRQVOPdUXWPHDDWe": 1, "HWAFNQTJPAcSfCSRBRT": 1, "HMbdJOPFNLcGKXCKZWNWe": 1, "fefSKeESfBKQKAVULcMePKXGGFcCcCcCC": 1, "NAFQCJWZUbXeCFNZFQTXWDTSCUbbC": 1, "HWAFYNFIYJKOFaYDJO": 1, "AEUaYPZZTLbeTQHFHDQISPJXcEBC": 1, "ODREGZUTPOOOCaJebTZWKNUMEfTRe": 1, "HWAFYSGZXbTYC": 1, "fEOMfdbQdRIYdXFNPIITaYYfPHe": 1, "aXTbSFYTBHMHHVbReIYGYfPNPcRXJdDBKSaTfRe": 1, "eDSdUfYPQBcYZNMdbDcbOLRe": 1, "BIUJLMFQTXWDTRKecNfdRTKeeZSAGbSBOAIEHT": 1, "eEBZFJZeOQPPHFBddQSMfDYGHbOUC": 1, "HWAFYBfPDBEDHIWDbKIdDZBdSNOYRLCFWAUC": 1, "eRYYUBIUJLMSKBcUVDYMO": 1, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQPBOFO": 1, "AdZZdRdJceOAbWTEQAOFUIEFGWe": 2, "bQGBVIZdRJBCJLWRHZGSNMTXEUDae": 1, "OMHMbEdeAFSVAaT": 1, "ZCaDMSGOHBTDOOMYTBaDMC": 1, "TeIdJEYNZeYO": 1, "aWQOcYTBbJfEDVacDdQeRHfINFPIWBHT": 1, "cQDJGZaTaTaBYNYeVacDYO": 2, "YWYHbLSUMUHeBMNZDJefDcfCeEUbQWe": 1, "HWACcMLaUJMFRTaWNcDfaNKe": 1, "aXBNTaUWPWbdfAUdWVADaVYEO": 1, "NAFQQAFJZeOQPeYTWTUPSCMeRT": 1, "BHDTJdReQLOLOLOOTdZBSeFdBfUPcC": 1, "cCHObXKeNJAbAHdZWCDWOOC": 1, "aXbSGcSZJODXQEaKEBBVYYT": 1, "HMbVAGAZTbWNWe": 1, "IZVWCGTLDEZREATZdSGWUC": 1, "NAREFEJKaEcBUGCQAECHTeUVIZdRRT": 1, "eWfCDBOSMVZALOeERbISfXPRQTDCOOJMFVTXSLfPIFXKeKe": 1, "OLTWRGNVBUKcTaRbdFIKe": 1, "dLYHMRFeRLPYKDcdDdONOefFNeJMBHOeFZOFHe": 1, "aXBNTfUWRFMeJAETfACQTPRXUTVTaRbdFIKe": 1, "HWAFYBfPDBEDHIWDbKIdDZBHRXMJGET": 1, "INLGPZPFBWDECQdHZVaAbHJGOGVTCGVTKe": 1, "AEAFPQXRaeZCLDbUTPOfFRWXFZEVC": 1, "cCGaYSdMbYSfcdReLbFZVGAZaYYfPHe": 1, "aXbXDDZYfEYdMUcMABVYYT": 1, "IZbREZVPTLKGBfROQFJDDZCbVT": 1, "OMeRQWNAdBRUDaXdRT": 1, "HMbVVGeDaZXOTJBETLISOSCZC": 1, "febdSANQWFaYUNZdeLEcPJZQMIKe": 1, "cCcCcCDPCDCcBUHBZNXMRUMVMITAFfKDXNKe": 1, "IZdFSXIHERdaaXWXAHGO": 1, "VVOcNNDdONVacDNdQZEdHOUKe": 1, "OOIBTBUNJEREcZbeKRJOIZCBKeJVIZdRRT": 1, "PcVFHMPaSdIeZNNAFLWEZfeKe": 2, "GCSXHHVQIZDFJNLcOdPDXSHAFfIVNRXMFDFaT": 1, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "HWAFYYYRKGCaRXLMLRSUPRe": 1, "bQbYWXFZEVWKMTUBNADPFEfbMTXEUDae": 2, "ODREBdFCSDWLKTPBXLAHSLdaRO": 1, "HMbCXJLbBBcPfSGXAFUTUeedHUHe": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIOOIBBO": 1, "eDSdUbKHQadTGJNBdIYBZJVcTC": 1, "eWHJdAQTTWYVYIPVZfWe": 1, "bdPTLKGBfFRRCAEXaWJPbCQMWC": 1, "AdZZBOSVacDNdQZEdHOUKe": 1, "eDSdUbKHfGBeTC": 1, "AEUaYPZHSQFUUHSUebQTZOUdTC": 1, "OMNNSCZWDBTJXIIUIVBFAPYbIeIPHe": 1, "ZdZbaBBUcJPQGaWeUNSBYKe": 1, "aWQOcYTBbJfEDdDFQTXWDTDcCHfWe": 1, "eDSdUaSdFaLbFSMWdTXJbFbRILT": 2, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKWPHDDWe": 1, "NAZZIfQAZFLMTeECUSDPAABGXIZLTKe": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUFIMNFcKfbHJLHFJO": 1, "NAREFBCCUFFWeARfDRaRTCKWae": 1, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcVKDSET": 1, "NADPFBbSFcFXeUNZNDbDAATSZIJIRASaYSJeRT": 1, "OMNQEDMdbDceMHVPHXe": 1, "bZWMZfHbGdHSeONWHWPaDMWXFZEVC": 1, "MCIAFKKZaTaTaBBUUaXKe": 1, "fefSKeEFKMBKXIeIPQeJOPRaZOHbDNQLOLOLMO": 1, "bQGBbNXGDJEENLAcQaHNfLTRe": 1, "BCdGYBERBdSIFeDaHXFCVCGIZMO": 1, "bQGBVIZdRJGINYTFIYaXROZdHUNcHe": 1, "NAFLfOdASUTbRSYEVJDTKe": 1, "NAFLeOeJOMOLJKFQVWFQUEJDXO": 1, "dDfPSBAcfLHNVaIDfRJLYfZYaO": 1, "eEBZFJZeOQHbUMIffSQJNZQVfLeYO": 1, "HWAFYTbYCJRLLeNcEVC": 1, "HMGLLBLcMMeHGFceEDJIaYbIUONSQecLUBO": 1, "OOGbIFBUACBYQLJCaGHGabaUJBEfdfTRe": 1, "HMbKdFTHXSWEYcZbMSVXMPBOFO": 1, "cCcCcCFRZIAKLRQaDHOeWWbedQDIVXO": 1, "GCSXHHVQIZDFJNLcOdHKLYZWdKYaFPeNWOEXKQLNJC": 1, "AdPcRXUWLdTWeDfBAKTRe": 1, "AEUaYPZPXdMOfHYKPJUcdWCZAKfKdCHT": 1, "NAFQCJWZUbEXROEccQYIMdUTWfbGQDaYKe": 1, "NAFLfOdASUTbFIMNFedZUDcJPae": 1, "INLYMNPPWGTSJRNYSbFXRC": 1, "OMNQEDOeAFaITUZTZCCQJET": 1, "eDTANZVVMMeHGDWLfEZfJfQfPIdOWe": 1, "ZOOCfXVQEEMMcQeaREPYFMZZCLVXHT": 1, "HHYZeEfEYdMVZALOKTKIObIYUXRAXZcO": 1, "IZBTdFPfBKSAELSXZMdLdRMNURe": 1, "HOdCLVXcNNDdONTYVOdQeRHfEIEYIbJfEJO": 1, "OTfdASFGcEJDKBRUDbYHRYKe": 1, "AdREFHZUfFfFcYRQKe": 1, "aWQOcTEYDMYEPHeOZTZdDC": 1, "BPHAUfXAPEJPECHTeUdeUbTZWKNYT": 1, "NAREDMFAEREcZNAdIBdEPELT": 1, "bQGBbQGWFBaaeHGZOTPceYWDFRSGQCBYKe": 1, "ODRdHUNZWODDRYGPCJKDKGNET": 1, "PPXGSCZWPHDDZaaNRfXaIRdNRQedFNGVT": 1, "NAFQCJWZUbGQDaDFXXccBPKe": 1, "ODRdHUYScXQOVZXPOXHeCLJUTGCdNWQIXe": 1, "adUAVYCdIcPWWWeTabZNHC": 2, "fTJXNCSLFJZZVCBOPQORHe": 1, "aWQOcYTBAZWEHGIfUYQZACYO": 1, "bQGBOEIKZdJWXFZEVC": 1, "ABVYUYNaXTfIMLHDALDZIBOUdAHLAC": 1, "OMYNaXTfPZXEZJQaEfWe": 1, "cCHObIPPQFFNcUWBZEWaSddKNKNKWe": 1, "adUAVYCdFNLBdLEccZHEHFDcHOReeYaAFZKXe": 1, "aWQOcYTBOTfdASFbLYUbQHQHDDWe": 1, "YTceTUDVRGCMJPae": 1, "ZOMTXEUDdQbHVEZYUaNZAZOHNBJOTXNAFBOUTUKUDfAMO": 1, "ZHCDCaGbXDWPPNHUNYARBcGKSaT": 1, "BCTHeUAFfffXMPLVJGKTJVJBBPbBfC": 1, "NAFLeNLYANAadBcfdQANABLcGOaT": 1, "IZVGPRFfEFKYOeeOZbNFbKHDHT": 1, "ZcSIcceNSEYKDYWEIFPGUfJIJUcO": 1, "TfNZeFcCWUNJZPAEGMObFQTXWDTWEYcZGO": 1, "ABVYUNAQGPQZZJRZaKe": 1, "HCZVFaNPBePYXeeBGXGOcbNXGDJae": 1, "BCdGNQbHVEZYeNbNEIIYIEbFRFeQEHT": 1, "TDOOMUcCaaVRRbTXO": 1, "HWAFYEdJbaOLUELMbBNLHZEWYO": 1, "OMIZdFSdWPDGYUC": 2, "YTBaXAZfLdPcRXUFIMNWLdTC": 1, "NAFQVUNOdOKBBIUJLMJGOGNGEcADDbddeMWC": 1, "OVYHSddeOIaONEVdZXbBPBRe": 1, "NAFQQAFJZeOQZXbSYJNeDHFMMWe": 1, "BIUJLMJVfNabMdLERENZDMQPNKTZIKdFHaO": 1, "bQGBXVUcESGQCdEdJMO": 1, "aXTfHAEDBOSMeEfEITNPfaSdBULQEWHQHDDHYYfPHe": 1, "HWAFYDEZRdJfdHdFeNfRDHT": 1, "ODREGZUTPOOOCaJebTZWKNUMEJXO": 1, "BIUJLMJXdDXFJZbUBVfJDFQWIXADOFRbQPRe": 1, "HBISNFZFEUXPNMPKUGO": 1, "HMbBLKBRJVBGVPLRQKe": 1, "YTBYNJXCcTFDERXC": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcRO": 1, "cCHObMKdFEAQdOBfScdDRfBSdKNKNKWe": 1, "cCcCcCFZdOaBMWQUIZDHTIcPWIXC": 1, "OMNNSfCSRBDcNPbfVMDXAWEHVC": 2, "eWHMcCcCcCFKJBKWUbPNadSFbTdNDNSNC": 1, "ObUDZMULAFEJKaEcaMEAfdSRfAAXe": 1, "PcJJdIVcDPePdJXDC": 1, "HWAFYEETfYPadLCcAWTWMRPBMO": 1, "TZYBETfTWeaQHVbOSKGO": 1, "bQGBOEIKZdJWXFZEVJZbDHe": 1, "eDTANZIICNAAREaQRVOZXQEBJGdYO": 1, "PWBJMeHGSMeSNafXPRQVGNfMRCaVeKe": 1, "AfPcCWbCNETAEVcTQQDXKFKe": 1, "OMeRQWNOTOOIeZNBAFVNaLUbQWe": 1, "OMIZbRdWSYRQYAbLMTdBC": 1, "ABVYUNNZVPXPLSdMWGMOIaMEAbKMPAfWe": 1, "NAFLeNQQANABaORbDdRJZGbGYJO": 1, "cCHObIVIADIBNGSdONbCNLOLOLOBFO": 1, "cCHObVZMYCECVVDJYMNHFRURURHe": 1, "ZdZbaBBUVOIPBdGdfUFbWHC": 1, "NAFQQAFJZeOQZdUWBLdFHOReeHe": 1, "BHDTJdReQHUYYOLEaMYWHT": 1, "cCEaLMJeVPDdCAaGGbMWHT": 1, "cCcCcCFZdOaBdSTNJKSCYSeHT": 1, "OMYNaXTacMSHePLSIRSHT": 1 }, "t": { "dLcXJeITPMObdTYMIKe": 1, "IZdFSAPVFfSOVHJaMEATKe": 1, "INFddKNKNKHbdJMWBDLLXcBaOHe": 1, "bLdLOLOLOTYVOVfLeVUcTAKVTQWUZbeKRJdPC": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "AdREFHZUfFfFcYRQKe": 5, "OTfdASFGcEJDKBRUDbYHRYKe": 1, "PUTKdFfUYQNUTEYDVZVCGIcCcCcCC": 1, "cCcCcCDPCDCcBUHBZNXMRUMVMITAFfKDXNKe": 1, "dLYHMRFeRLPYKDcdFceHEVFIMNSePTBPeGEEC": 1, "dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT": 85, "NAREFcMEbJObYZffQLQBBO": 1, "dLYHMRFeRQFSUCKAeOESSZXDOXWKHC": 1, "NVNZYeJBBYZUeQKBBTZVGO": 1, "cCHObXKeNJAbAHdZWdKNKNKWe": 5, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKMGHe": 3, "AdZZBOSBaQDbXDOXC": 1, "BPHAUbWNZXGOXUSHXT": 1, "IZbREZVPTLKGBfFcINGLae": 1, "dLYHMRFeRLPYKDcdSOZdTYMIbXDOXDeLZBIQNNC": 4, "NLJZCEQMULaDAEKKSLcSEO": 9, "HWAFYDEZRae": 3, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "INLAFPKGUSVGPLLFKWILXcEQSQQHT": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 1, "NReaHbdKfAHAHUYWbQOSbYGVVC": 3, "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "THHSODILJbbfYFZIJePICaeFYTET": 1, "AdREFHZUfFfFcYRQaXdRT": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdeRe": 3, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe": 3, "VMITcZJLCZBfaNKe": 11, "AEAFPIPDGYWHJXdDRALXMHO": 15, "YTBUIHOdVLBQRMebfTINfTKe": 11, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 5, "aXTfHAEDBOSdQZXDOXWXKYSSdadFQRMeXcIFUWbWOOC": 1, "OAZOXPKSXPPPaacXO": 5 } };
		var jst = { "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT": 0, "dLYHMRFeRQFSUCKAeOESSZXDOXWKHC": 1, "NAFLeOeJOMOQeOYFCRFZMbYWMPSYaET": 1, "aaTBNZZJRLESPIDNJDPVBC": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKMGHe": 0, "AEAFPIPDGYWHJXdDRALXMHO": 1, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdeRe": 0, "YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe": 0, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "AdREFHZUfFfFcYRQKe": 1 };
		var jsdt = { "AEAFPIPDGYWHJXdDRALXMHO": 1, "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "AdREFHZUfFfFcYRQKe": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1 };
		booking.jst = jst;
		booking.jsdt = jsdt;
		booking.env.b_fragment_url_html = "/fragment.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=7853152978100034&";
		booking.env.b_fragment_url_json = "/fragment.zh-cn.json?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=7853152978100034&";
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
	<script nonce="JZZpY8EmTdA4yp2">
		(function () {
			document.addEventListener('DOMContentLoaded', function (e) {
				window._pxAppId = 'PXikKuL2RM';
				setTimeout(function () {
					var pxs = document.createElement('script');
					pxs.crossOrigin = 'anonymous';
					pxs.nonce = 'JZZpY8EmTdA4yp2';
					pxs.src = './script/libs/perimeterx/px.v7.6.9.min.js';
					document.head.appendChild(pxs);
				}, 750);
			});
		}());
	</script>
	<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
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
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="client" rel="stylesheet"
		href="./script/psb/capla/static/css/bui-react.db3422be.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="src-components-ContactProperty-ContactProperty" rel="stylesheet"
		href="./script/psb/capla/static/css/4.f0bb8518.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="bookingcom-help-center-ui-web-components-FAQDesktop-FAQDesktop"
		rel="stylesheet" href="./script/psb/capla/static/css/408.a60aa477.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="src-components-ImportantInfo-ImportantInfo" rel="stylesheet"
		href="./script/psb/capla/static/css/544.b38d3f40.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="src-components-ReservationSurvey-ReservationSurvey" rel="stylesheet"
		href="./script/psb/capla/static/css/155.8fa4124b.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-payments-experience-web-sdk-components-PaymentInfo-v3-PaymentInfo" rel="stylesheet"
		href="./script/psb/capla/static/css/279.c05224b2.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-payments-experience-web-sdk-components-PendingActionAlert-v1-PendingActionAlert"
		rel="stylesheet" href="./script/psb/capla/static/css/525.5019b009.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-trips-transactions-mfe-components-InstantCheckoutConfirmation-InstantCheckoutConfirmation"
		rel="stylesheet" href="./script/psb/capla/static/css/185.08b7931e.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-trips-transactions-mfe-components-InstantCheckout-InstantCheckout" rel="stylesheet"
		href="./script/psb/capla/static/css/834.cd30a472.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-insurance-fe-room-cancellation-mfe-containers-insurance-banner-ConfirmationInsuranceBanner"
		rel="stylesheet" href="./script/psb/capla/static/css/976.3d5278e3.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="bookingcom-help-center-ui-web-components-HelpCenterEntrypoint"
		rel="stylesheet" href="./script/psb/capla/static/css/333.2773a69d.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="bookingcom-help-center-ui-web-components-PropertyContactOptions"
		rel="stylesheet" href="./script/psb/capla/static/css/760.425c9a07.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2"
		data-chunk="bookingcom-genius-credit-book-and-unlock-mfe-pages-GeniusVipCampaignsLFBanner" rel="stylesheet"
		href="./script/psb/capla/static/css/703.0ddec4e8.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="src-components-ReassuranceV2-ReassuranceV2" rel="stylesheet"
		href="./script/psb/capla/static/css/795.30b8682a.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="src-components-SelfServiceDesktop-SelfServiceDesktop" rel="stylesheet"
		href="./script/psb/capla/static/css/34.9d5709ab.chunk.css">
	<link nonce="JZZpY8EmTdA4yp2" data-chunk="bookingcom-self-service-web-mfe-components-SelfServiceBanner"
		rel="stylesheet" href="./script/psb/capla/static/css/803.89b78a62.chunk.css">
	<title>Booking.com: 确认</title>
	<input type="hidden" name="auth_key" id="crsell_banners_request_key" value="jASQF2C6wwXq4Dcq" />
</head>

<body data-bui-theme="traveller-light" id="b2confirmationPage"
	class="bookings2 b2 confirmation zh lang_is_ltr lang_is_cjk header_reshuffle nobg user_center b-sprite-3 lt ds-traveller-header lx_cwv_font_swap bigblue_std_sm bigblue_std_lg contrast-bg iconfont_is_loading  ">
	<a href="#column_holder" class="a11y-skip-to-content">跳至主要内容</a>
	<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
		window.utag_data = {
			site: 'bookings2',
			stypeid: '1',
			action: 'confirmation',
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
			famem: '1f57cf4aa9c967e0544244302cfac79f298a62883c759948525e1d09f48dc687',
			famfn: '-1',
			fampn: '-1',
			gcem: '1f57cf4aa9c967e0544244302cfac79f298a62883c759948525e1d09f48dc687',
			gcpn: '-1',
			gwcur: '-1',
			gwcuc: '-1',
			rb: '0',
			gst: '1',
			fbqs: '',
			sage: '0',
			alev: '0',
			atid: '208',
			atnm: '住宿加早餐旅馆',
			biz_s: '1',
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
			is_aid_mcc_level_tracked: '0',
			partner_channel_id: '17',
			rprc: '354.4385776',
			rid: '2454684292',
			bn: '2454684292',
			rcxl: '',
			rtprc: '11920',
			rtcur: 'TWD',
			ttv: '354.4385776',
			ttv_uc: '2689.90656096525',
			p1: '21.27',
			base: '10365',
			base_uc: '2339.00',
			travel_reason: 'business',
			commission: '42.53',
			hotel_name: '鸭子的家民宿',
			channel_id: '17',
			partner_id: '488148',
			ai: '397645',
			tsmp: '1683776098',
			adults: '8',
			book_window: '45',
			children: '-1',
			district_name: '-1',
			city_name: '吉安',
			region_name: '-1',
			country_name: '台湾',
			currency: 'CNY',
			date_in: '2023-06-25',
			cul: '0',
			mnns: '88.5008910222185',
			date_out: '2023-06-27',
			dayofwk: '7',
			depth: '-1',
			dest_type: '-1',
			dest_id: '-1',
			dest_cc: 'tw',
			dest_ufi: '-2635345',
			dest_name: '吉安, 台湾',
			hotel_count: '0',
			hotel_id: '4272321',
			hotel_id_list: '4272321',
			hr: '0',
			i1: '4272321',
			i2: '',
			i3: '',
			isfd: '',
			isnl: '',
			label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB',
			language: 'zh-cn',
			logged_in: '0',
			nights: '2',
			cv: '-1',
			ordv: '-1',
			rooms: '2',
			seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
			sid_dyna: '006437635abb568e6b72f09341ecd74afe_1683775800',
			srord: '-1',
			sub: '0',
			ui_a: '1',
			user_location: 'cn',
			cip: '153.3.60.165',
			cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
			pid: '',
			stid: '397645',
			gaclientid: '',
			bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
			tag_cdn: 'tags.tiqcdn.com',
			cspn: 'JZZpY8EmTdA4yp2',
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
			action: 'confirmation',
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
			famem: '1f57cf4aa9c967e0544244302cfac79f298a62883c759948525e1d09f48dc687',
			famfn: '-1',
			fampn: '-1',
			gcem: '1f57cf4aa9c967e0544244302cfac79f298a62883c759948525e1d09f48dc687',
			gcpn: '-1',
			gwcur: '-1',
			gwcuc: '-1',
			rb: '0',
			gst: '1',
			fbqs: '',
			sage: '0',
			alev: '0',
			atid: '208',
			atnm: '住宿加早餐旅馆',
			biz_s: '1',
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
			is_aid_mcc_level_tracked: '0',
			partner_channel_id: '17',
			rprc: '354.4385776',
			rid: '2454684292',
			bn: '2454684292',
			rcxl: '',
			rtprc: '11920',
			rtcur: 'TWD',
			ttv: '354.4385776',
			ttv_uc: '2689.90656096525',
			p1: '21.27',
			base: '10365',
			base_uc: '2339.00',
			travel_reason: 'business',
			commission: '42.53',
			hotel_name: '鸭子的家民宿',
			channel_id: '17',
			partner_id: '488148',
			ai: '397645',
			tsmp: '1683776098',
			adults: '8',
			book_window: '45',
			children: '-1',
			district_name: '-1',
			city_name: '吉安',
			region_name: '-1',
			country_name: '台湾',
			currency: 'CNY',
			date_in: '2023-06-25',
			cul: '0',
			mnns: '88.5008910222185',
			date_out: '2023-06-27',
			dayofwk: '7',
			depth: '-1',
			dest_type: '-1',
			dest_id: '-1',
			dest_cc: 'tw',
			dest_ufi: '-2635345',
			dest_name: '吉安, 台湾',
			hotel_count: '0',
			hotel_id: '4272321',
			hotel_id_list: '4272321',
			hr: '0',
			i1: '4272321',
			i2: '',
			i3: '',
			isfd: '',
			isnl: '',
			label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB',
			language: 'zh-cn',
			logged_in: '0',
			nights: '2',
			cv: '-1',
			ordv: '-1',
			rooms: '2',
			seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
			sid_dyna: '006437635abb568e6b72f09341ecd74afe_1683775800',
			srord: '-1',
			sub: '0',
			ui_a: '1',
			user_location: 'cn',
			cip: '153.3.60.165',
			cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
			pid: '',
			stid: '397645',
			gaclientid: '',
			bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
			tag_cdn: 'tags.tiqcdn.com',
			cspn: 'JZZpY8EmTdA4yp2',
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
				}
				(function (w, d, s, l, i) {
					w[l] = w[l] || []; w[l].push({
						'gtm.start':
							new Date().getTime(), event: 'gtm.js'
					}); var f = d.getElementsByTagName(s)[0],
						j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.nonce = 'JZZpY8EmTdA4yp2'; j.async = true; j.src =
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
	<div data-component="security/csp_exp_tracker" data-exp-hash="dLcXJeITPVNeJMBZbeKRRT" style="display: none;"></div>
	<svg class="bk-icon -streamline-close" height="24" style="display:none;" width="24" viewBox="0 0 24 24"
		role="presentation" aria-hidden="true" focusable="false">
		<path
			d="M13.31 12l6.89-6.89a.93.93 0 1 0-1.31-1.31L12 10.69 5.11 3.8A.93.93 0 0 0 3.8 5.11L10.69 12 3.8 18.89a.93.93 0 0 0 1.31 1.31L12 13.31l6.89 6.89a.93.93 0 1 0 1.31-1.31z" />
	</svg>
	<header class="bui-header bui-header--logo-large bui-u-hidden-print bui-header--rounded-tabs ">
		<nav class="bui-header__bar ">
			<div class="bui-header__main">
				<div class="bui-header__logo" data-et-click="customGoal:YTBUIHOdVLBQRMebfTINfTKe:2">
					<a href="./index.jsp" 
						aria-label="Booking.com &#x7F24;&#x5BA2;&#xFF1A;&#x5728;&#x7EBF;&#x9152;&#x5E97;&#x9884;&#x8BA2;"
						data-et-click="YTBUIHOdVLBLKAMZUC:1 YTBUIHOdVLBLKAMZUC:2">
						<svg class="bk-icon -streamline-booking_logo_dark_bg_mono" height="24" width="144"
							viewBox="0 0 180 30" role="presentation" aria-hidden="true" focusable="false">
							<path
								d="M70.6 2.73999C70.602 2.19808 70.7646 1.66892 71.0673 1.21943C71.3701 0.769947 71.7993 0.420321 72.3007 0.214768C72.8021 0.00921437 73.3532 -0.0430342 73.8843 0.064629C74.4155 0.172292 74.9027 0.435032 75.2845 0.819622C75.6663 1.20421 75.9255 1.69338 76.0293 2.22527C76.133 2.75716 76.0768 3.30788 75.8676 3.80779C75.6584 4.3077 75.3056 4.73434 74.8539 5.03377C74.4022 5.3332 73.8719 5.49197 73.33 5.48999C72.9702 5.48868 72.6141 5.41651 72.2822 5.2776C71.9503 5.13869 71.649 4.93576 71.3955 4.6804C71.1419 4.42504 70.9412 4.12225 70.8047 3.78931C70.6683 3.45637 70.5987 3.09982 70.6 2.73999V2.73999ZM116.5 23.77C117.044 23.772 117.577 23.6124 118.031 23.3114C118.484 23.0104 118.838 22.5816 119.048 22.0793C119.257 21.577 119.313 21.0238 119.208 20.4897C119.103 19.9555 118.842 19.4646 118.458 19.079C118.074 18.6934 117.584 18.4305 117.05 18.3236C116.516 18.2167 115.963 18.2705 115.46 18.4784C114.957 18.6862 114.527 19.0387 114.224 19.4911C113.922 19.9436 113.76 20.4757 113.76 21.02C113.76 21.7476 114.048 22.4456 114.562 22.961C115.075 23.4764 115.772 23.7673 116.5 23.77V23.77ZM25.7 6.72999C24.0129 6.74775 22.3688 7.26426 20.9746 8.21447C19.5805 9.16469 18.4986 10.5061 17.8653 12.0699C17.2319 13.6337 17.0754 15.3499 17.4154 17.0025C17.7554 18.6551 18.5767 20.1701 19.776 21.3569C20.9752 22.5436 22.4988 23.349 24.1548 23.6717C25.8108 23.9944 27.5253 23.8199 29.0824 23.1702C30.6395 22.5205 31.9695 21.4247 32.9051 20.0206C33.8406 18.6166 34.3399 16.9672 34.34 15.28C34.3768 14.1396 34.1778 13.0038 33.7555 11.9438C33.3331 10.8839 32.6965 9.92248 31.8855 9.11989C31.0744 8.3173 30.1064 7.69078 29.0421 7.27955C27.9778 6.86831 26.84 6.68122 25.7 6.72999V6.72999ZM25.7 19.83C23.35 19.83 21.7 17.96 21.7 15.28C21.7 12.6 23.34 10.73 25.7 10.73C28.06 10.73 29.7 12.6 29.7 15.28C29.7 17.96 28.11 19.83 25.7 19.83ZM65.3 15.71C65.1321 15.3716 64.9128 15.0613 64.65 14.79L64.5 14.63L64.66 14.48C64.9116 14.2078 65.1423 13.917 65.35 13.61L69.74 7.05999H64.41L61.1 12.19C60.9586 12.3442 60.782 12.4621 60.5852 12.5334C60.3885 12.6048 60.1774 12.6277 59.97 12.6H59.22V2.90999C59.22 0.979993 58.01 0.709993 56.71 0.709993H54.48V23.58H59.21V16.72H59.65C60.19 16.72 60.56 16.78 60.73 17.08L63.35 21.97C63.5773 22.5089 63.9785 22.9563 64.4895 23.2408C65.0006 23.5253 65.5922 23.6306 66.17 23.54H69.8L67.09 19.07L65.3 15.71ZM88.27 6.68999C87.3747 6.67014 86.4851 6.83782 85.6584 7.18226C84.8318 7.5267 84.0863 8.04028 83.47 8.68999L83.18 8.97999L83.08 8.57999C82.9261 8.08803 82.6021 7.66692 82.166 7.39207C81.7299 7.11723 81.2102 7.0066 80.7 7.07999H78.57V23.57H83.29V15.97C83.275 15.2919 83.373 14.6159 83.58 13.97C83.7979 13.1302 84.2923 12.3883 84.9836 11.8639C85.6748 11.3396 86.5225 11.0634 87.39 11.08C88.85 11.08 89.39 11.85 89.39 13.86V21.05C89.335 21.3921 89.3619 21.7424 89.4686 22.072C89.5753 22.4017 89.7586 22.7013 90.0036 22.9463C90.2487 23.1914 90.5483 23.3747 90.878 23.4814C91.2076 23.5881 91.5579 23.615 91.9 23.56H94.12V13.07C94.15 8.89999 92.12 6.68999 88.27 6.68999V6.68999ZM73.39 7.05999H71.17V23.58H75.87V9.57999C75.9234 9.24041 75.8964 8.89304 75.7913 8.56576C75.6862 8.23848 75.5058 7.94038 75.2647 7.69537C75.0236 7.45037 74.7284 7.26527 74.4028 7.15493C74.0773 7.04459 73.7304 7.01208 73.39 7.05999V7.05999ZM44.16 6.72999C42.4729 6.74775 40.8288 7.26426 39.4346 8.21447C38.0405 9.16469 36.9586 10.5061 36.3253 12.0699C35.6919 13.6337 35.5354 15.3499 35.8754 17.0025C36.2154 18.6551 37.0367 20.1701 38.236 21.3569C39.4352 22.5436 40.9588 23.349 42.6148 23.6717C44.2708 23.9944 45.9853 23.8199 47.5424 23.1702C49.0995 22.5205 50.4295 21.4247 51.3651 20.0206C52.3006 18.6166 52.7999 16.9672 52.8 15.28C52.8368 14.1396 52.6378 13.0038 52.2155 11.9438C51.7931 10.8839 51.1565 9.92248 50.3455 9.11989C49.5344 8.3173 48.5664 7.69078 47.5021 7.27955C46.4378 6.86831 45.3 6.68122 44.16 6.72999V6.72999ZM44.16 19.83C41.81 19.83 40.16 17.96 40.16 15.28C40.16 12.6 41.8 10.73 44.16 10.73C46.52 10.73 48.16 12.6 48.16 15.28C48.16 17.96 46.57 19.83 44.16 19.83ZM144.89 6.72999C143.203 6.74775 141.559 7.26426 140.165 8.21447C138.77 9.16469 137.689 10.5061 137.055 12.0699C136.422 13.6337 136.265 15.3499 136.605 17.0025C136.945 18.6551 137.767 20.1701 138.966 21.3569C140.165 22.5436 141.689 23.349 143.345 23.6717C145.001 23.9944 146.715 23.8199 148.272 23.1702C149.829 22.5205 151.16 21.4247 152.095 20.0206C153.031 18.6166 153.53 16.9672 153.53 15.28C153.567 14.1396 153.368 13.0038 152.945 11.9438C152.523 10.8839 151.887 9.92248 151.075 9.11989C150.264 8.3173 149.296 7.69078 148.232 7.27955C147.168 6.86831 146.03 6.68122 144.89 6.72999V6.72999ZM144.89 19.83C142.54 19.83 140.89 17.96 140.89 15.28C140.89 12.6 142.53 10.73 144.89 10.73C147.25 10.73 148.89 12.6 148.89 15.28C148.89 17.96 147.3 19.83 144.89 19.83ZM109.74 7.01999C109.356 6.98285 108.97 7.05749 108.627 7.23491C108.285 7.41233 108.001 7.68497 107.81 8.01999L107.69 8.26999L107.47 8.07999C106.253 7.08344 104.711 6.57072 103.14 6.63999C98.75 6.63999 95.78 9.94999 95.78 14.87C95.78 19.79 98.85 23.22 103.23 23.22C104.521 23.2791 105.795 22.9061 106.85 22.16L107.21 21.88V22.34C107.21 24.55 105.78 25.77 103.21 25.77C102.131 25.755 101.062 25.5555 100.05 25.18C99.8562 25.0813 99.6419 25.0295 99.4244 25.0287C99.2069 25.0279 98.9923 25.0782 98.7977 25.1754C98.6032 25.2727 98.4342 25.4143 98.3043 25.5887C98.1745 25.7632 98.0874 25.9657 98.05 26.18L97.14 28.46L97.47 28.63C99.2593 29.5195 101.232 29.9783 103.23 29.97C107.23 29.97 111.9 27.91 111.9 22.14V7.01999H109.74ZM104.06 19.11C101.5 19.11 100.58 16.86 100.58 14.76C100.58 13.83 100.81 10.76 103.81 10.76C105.3 10.76 107.3 11.18 107.3 14.86C107.3 18.38 105.54 19.11 104.06 19.11ZM13.09 11.85L12.4 11.47L13 10.97C13.6103 10.4334 14.0951 9.76919 14.42 9.02435C14.7449 8.27951 14.9019 7.47231 14.88 6.65999C14.88 3.05999 12.09 0.739993 7.79 0.739993H2.31C1.69606 0.762953 1.11431 1.02048 0.684566 1.45953C0.254821 1.89857 0.00981021 2.48571 0 3.09999L0 23.5H7.88C12.67 23.5 15.77 20.89 15.77 16.84C15.8104 15.8446 15.583 14.8566 15.1116 13.9789C14.6403 13.1012 13.9421 12.3661 13.09 11.85V11.85ZM4.37 6.07999C4.37 5.01999 4.82 4.51999 5.8 4.45999H7.8C8.16093 4.42761 8.52456 4.47504 8.8651 4.59892C9.20565 4.7228 9.51476 4.9201 9.77052 5.17681C10.0263 5.43353 10.2224 5.74338 10.345 6.08438C10.4676 6.42538 10.5137 6.78919 10.48 7.14999C10.5194 7.51629 10.4791 7.88679 10.3616 8.23598C10.2442 8.58517 10.0524 8.90477 9.79964 9.17277C9.54684 9.44077 9.23898 9.65082 8.89723 9.78844C8.55549 9.92606 8.18798 9.988 7.82 9.96999H4.37V6.07999ZM8.2 19.64H4.37V15.06C4.37 14.06 4.76 13.57 5.59 13.45H8.2C8.99043 13.4949 9.7337 13.8406 10.2774 14.4161C10.8211 14.9916 11.124 15.7533 11.124 16.545C11.124 17.3367 10.8211 18.0984 10.2774 18.6739C9.7337 19.2494 8.99043 19.595 8.2 19.64ZM174.53 6.73999C173.558 6.74366 172.6 6.96575 171.726 7.38984C170.852 7.81393 170.084 8.42915 169.48 9.18999L169.14 9.62999L168.87 9.13999C168.437 8.355 167.787 7.71128 166.998 7.2857C166.209 6.86012 165.314 6.67067 164.42 6.73999C163.604 6.75328 162.798 6.93308 162.054 7.26838C161.309 7.60368 160.641 8.08742 160.09 8.68999L159.65 9.16999L159.48 8.53999C159.323 8.07152 159.008 7.67282 158.587 7.41334C158.167 7.15386 157.669 7.05005 157.18 7.11999H155.18V23.57H159.64V16.31C159.646 15.6629 159.727 15.0187 159.88 14.39C160.31 12.63 161.49 10.74 163.47 10.93C164.69 11.05 165.29 11.99 165.29 13.82V23.57H169.81V16.31C169.791 15.6345 169.875 14.9601 170.06 14.31C170.42 12.64 171.65 10.92 173.56 10.92C174.94 10.92 175.45 11.7 175.45 13.81V21.17C175.45 22.83 176.19 23.57 177.85 23.57H180V13.07C180 8.86999 178.15 6.73999 174.53 6.73999ZM133.69 17.86C132.51 19.095 130.913 19.8471 129.21 19.97C128.593 20.0073 127.974 19.914 127.395 19.6962C126.816 19.4784 126.29 19.141 125.85 18.706C125.41 18.271 125.067 17.7482 124.843 17.1716C124.619 16.5951 124.519 15.9778 124.55 15.36C124.498 14.7504 124.575 14.1365 124.776 13.5588C124.978 12.981 125.299 12.4524 125.719 12.0076C126.14 11.5629 126.649 11.212 127.215 10.978C127.78 10.744 128.388 10.6322 129 10.65C129.84 10.65 130.8 10.95 130.95 11.46V11.55C131.048 11.8986 131.258 12.2056 131.547 12.424C131.835 12.6425 132.188 12.7605 132.55 12.76H135V10.61C135 7.76999 131.39 6.73999 129 6.73999C123.81 6.73999 120 10.37 120 15.35C120 20.33 123.73 23.97 128.86 23.97C130.178 23.9562 131.479 23.6722 132.683 23.1355C133.887 22.5989 134.969 21.821 135.86 20.85L134 17.58L133.69 17.86Z"
								fill="white" />
						</svg>
					</a>
				</div>
			</div>
			<div
				class="bui-group bui-button-group bui-group--inline bui-group--align-end bui-group--vertical-align-middle">
				<div class="bui-group__item">
					<button class="bui-button bui-button--light bui-button--large" data-modal-size="960"
						data-modal-close-aria-label="关闭货币列表" data-modal-aria-label="选择币种"
						data-modal-arrow-navigation="true" data-bui-component="Modal.HeaderAsync,Tooltip"
						data-modal-header-async-type="currencyDesktop" data-tooltip-position="bottom" title="选择你使用的货币"
						type="button">
						<span class="bui-button__text">
							<span aria-hidden="true">
								CNY
							</span>
							<span class="bui-u-sr-only">
								选择你使用的货币.
								你当前选择的货币是人民币
							</span>
						</span>
					</button>
				</div>
				
				<div class="bui-group__item">
					<button class="bui-button bui-button--light bui-button--large" type="button"
						data-bui-component="Popover" data-popover-content-id="header-wechat-qr"
						data-popover-position="bottom" data-popover-no-arrow="true" aria-label="关注Booking.com官方微信号">
						<span class="bui-button__icon">
							<span aria-hidden="true" class="bui-icon bui-icon--large">
								<svg class="bk-icon -streamline-logo_we_chat" height="24" width="24"
									viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
									<path
										d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.701 50.701 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.099 25.099 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z" />
								</svg>
							</span>
						</span>
					</button>
					<div id="header-wechat-qr" class="bui-card bui-u-hidden">
						<div class="bui-card__content">
							<div class="bui-u-text-center">
								关注Booking.com官方微信号
								<br />
								<img width="150px"
									src="./script/static/img/gtw_desktop_header_pb/a2cd047a7a8838750dcb5b407e884ef978f80baf.jpg"
									alt="关注Booking.com官方微信号" />
								<br />
								全球特价酒店应有尽有！
							</div>
						</div>
					</div>
				</div>
				<div class="bui-group__item">
					<a class="bui-button bui-button--light bui-button--large " data-bui-component="Tooltip"
						data-tooltip-position="bottom" title="联系客服"
						data-ga-track="click|Click|Action: confirmation|hc_entrypoint_top_header"
						data-et-click=" customGoal:YTBUIHOdBOcaGPaVHXT:4 customGoal:YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKdeRe:4 ">
						<span class="bui-button__icon">
							<span aria-hidden="true" class="bui-icon bui-icon--large">
								<svg class="bk-icon -streamline-question_mark_circle" height="24" width="24"
									viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
									<path
										d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" />
								</svg>
							</span>
							<span class="bui-u-sr-only">
								获取订单帮助
							</span>
						</span>
					</a>
				</div>
				
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
				<div class="bui-group__item">
					<svg class="bk-icon -streamline-account_create" height="24" style="display:none;" width="24"
						viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false">
						<path
							d="M22.5 17.25a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.5-3v6a.75.75 0 0 0 1.5 0v-6a.75.75 0 0 0-1.5 0zM14.25 18h6a.75.75 0 0 0 0-1.5h-6a.75.75 0 0 0 0 1.5zM1.5 17.25a6.003 6.003 0 0 1 8.356-5.518.75.75 0 0 0 .588-1.38A7.504 7.504 0 0 0 0 17.25a.75.75 0 0 0 1.5 0zm9.375-12.375a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0zm1.5 0a4.875 4.875 0 1 0-9.75 0 4.875 4.875 0 0 0 9.75 0z" />
					</svg>
					<a class="bui-button bui-button--secondary js-header-login-link"
						onclick="checkRecords()"
						data-google-track="Click/Action: confirmation/header_logged_out_link_box"
						data-et-click=" customGoal:YTBUIHOdBOcaGPaVHXT:2 customGoal:cCHObTVXBUPACQVZMYCdKNKNKZQWe:4 customGoal:YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe:3 customGoal:YTTHbXeeVJWcSMQZbIYUbHTXSfVSCKOXKe:4 ">
						<span class="bui-button__text">
							查看历史订单
						</span>
					</a>
				</div>
			</div>
		</nav>
		<nav class="bui-tab bui-header__tab bui-tab--borderless bui-tab--light  bui-tab--rounded ">
			<ul class="bui-tab__nav" data-et-click="  ">
				<li class="bui-tab__item">
					<a aria-current="page" class="bui-tab__link bui-tab__link--selected"
						href="./index.jsp"
						data-et-click="
goal:xpb_accommodation goal:xpb_total_clicks
" data-ga-track="click|Product Expansion|accommodation|booking (index)">
						<span aria-hidden="true" class="bui-icon bui-tab__icon bui-icon--medium">
							<svg class="bk-icon -streamline-bed" height="24" width="24" viewBox="0 0 24 24"
								role="presentation" aria-hidden="true" focusable="false">
								<path
									d="M2.75 12h18.5c.69 0 1.25.56 1.25 1.25V18l.75-.75H.75l.75.75v-4.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 13.25V18c0 .414.336.75.75.75h22.5A.75.75 0 0 0 24 18v-4.75a2.75 2.75 0 0 0-2.75-2.75H2.75zM0 18v3a.75.75 0 0 0 1.5 0v-3A.75.75 0 0 0 0 18zm22.5 0v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm-.75-6.75V4.5a2.25 2.25 0 0 0-2.25-2.25h-15A2.25 2.25 0 0 0 2.25 4.5v6.75a.75.75 0 0 0 1.5 0V4.5a.75.75 0 0 1 .75-.75h15a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 0 1.5 0zm-13.25-3h7a.25.25 0 0 1 .25.25v2.75l.75-.75h-9l.75.75V8.5a.25.25 0 0 1 .25-.25zm0-1.5A1.75 1.75 0 0 0 6.75 8.5v2.75c0 .414.336.75.75.75h9a.75.75 0 0 0 .75-.75V8.5a1.75 1.75 0 0 0-1.75-1.75h-7z" />
							</svg>
						</span><!--
--><span class="bui-tab__text">
							住宿
						</span>
					</a>
				</li>
				
			</ul>
		</nav>
	</header>
	<div id="bodyconstraint" class="   ">
		<div id="bodyconstraint-inner">
			<div id="subheader-wrap" class="" style="">
			</div>
			<div data-block-id="header_survey">
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
			<div class="hide_this_for_print">
				<div id="column_holder" class="
conf_restructured_content
bui_font_small
conf_bui_font
conf_new_checks
 squareCorners 
" style="
margin-top: 0;
">
					<template id="gemOffersModal">
						<style type="text/css">
							#gemOffersModal {
								width: 900px;
								box-sizing: content-box;
							}
						</style>
						<style type="text/css">
							#gemOffersModal .bui-modal__content {
								max-width: 700px;
								padding: 0;
							}

							#gemOffersModal .conf-page-gem-offers__header {
								padding-bottom: 0px;
								background: transparent;
							}

							#gemOffersModal .conf-page-gem-offers_product-list .cross-sell-modal-exposure-point {
								width: 100%;
							}

							.conf-page-gem-offers-text__disable {
								color: #0071c2;
								cursor: pointer;
								margin-left: 8px;
							}

							.conf-page-gem-offers-text__disabled-text {
								color: #008009;
								display: flex;
								align-items: center;
								margin-left: 8px;
							}

							.conf-page-gem-offers-text__disabled-text--hidden {
								display: none;
							}
						</style>
						<header class="bui-modal__header conf-page-gem-offers__header-with-badge">
							<div class="conf-page-gem-offers__badge">
								<div class="conf-page-gem-offers__badge-content">
									<span class="bui-icon bui-icon--small conf-page-gem-offers__badge-icon"><svg
											class="bk-icon -streamline-checkmark_selected" height="128" width="128"
											viewBox="0 0 128 128" role="presentation" aria-hidden="true"
											focusable="false">
											<path
												d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z" />
										</svg></span>
									<span class="conf-page-gem-offers__badge-text">
									您在
									<%
										if(hotel_info == null){
											out.print("地区");
										}else{
											out.print(hotel_info.getRegion());
										}
									%>
									的订单已确认
									</span>
								</div>
							</div>
						</header>
						<div class="bui-modal__body">
							<div class="bui-grid conf-page-gem-offers__grid conf-page-gem-offers_product-list">
								<div class="cross-sell-modal-exposure-point"
									data-et-view="customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:1"
									data-et-click=" customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:2 ">
									<div class="bui-spinner bui-spinner--size-large">
										<div class="bui-spinner__inner"></div>
									</div>
								</div>
							</div>
							<div class="conf-page-gem-offers-text__dismiss-modal">
								<span class="conf-page-gem-offers-text__disable">
									不再显示
								</span>
								<span
									class="conf-page-gem-offers-text__disabled-text conf-page-gem-offers-text__disabled-text--hidden">
									<span class="bui-icon bui-icon--small conf-page-gem-offers__badge-icon"><svg
											class="bk-icon -streamline-checkmark_selected" height="128" width="128"
											viewBox="0 0 128 128" role="presentation" aria-hidden="true"
											focusable="false">
											<path
												d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z" />
										</svg></span>好的，我们将不再为此订单显示这些内容
								</span>
							</div>
						</div>
					</template>
					<div class="reassurance hide_this_for_print">
						<div class="reassurance__cell-text">
							<div class="reassurance__thanks">
								<% out.print(booker_name); %>，感谢您的预订！
							</div>
							<h1 class="reassurance__title">
								您在
								<%
										if(hotel_info == null){
											out.print("地区");
										}else{
											out.print(hotel_info.getRegion());
										}
								%>
								的订单已确认。
							</h1>
							<ul class="reassurance__list">
								<li>
									请前往您的电子邮箱查收预订确认信！
									
								</li>
								<li data-et-view="
">
									入住前可随时
									<a class="custom_track" data-trackname="make changes or cancel booking">
										修改或取消订单</a>
								</li>
								<li data-pb-crsell="gta_checkmarks">
									<a  data-component="gta/modal" data-modal-id="gta-modal"
										data-modal-size="1000" data-modal-close-aria-label="关闭"
										data-et-click=" AEAFPDGYWEYcZbdBRXZXe:7 customGoal:dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT:1 ">
										下载app</a>，立即获取电子版预订确认信！
								</li>
							</ul>
						</div>
						
					</div>
					<div class="pb-ss-banner-container">
						<div data-capla-component="b-post-booking-web-mfe/SelfServiceCentralizedRequestDetailsDesktop"
							data-capla-namespace="b-post-booking-web-mfeOTWYcffd"></div>
					</div>
					<div class="d-pb-generic-banner-container">
					</div>
					<div data-capla-component="b-post-booking-web-mfe/InstantCheckout"
						data-capla-namespace="b-post-booking-web-mfeOTWYcffd"></div>
					<div class="cdr-container" data-et-view="customGoal:AEAFSXZWDRMeVRXJeaILYJO:1">
						<div class="cdr-header">
							<h3 class="bui_font_large"><% out.print(booker_name); %>，行程继续，精彩不停......</h3>
							<p class="bui_font_small">
							欢迎到访
							<%
										if(hotel_info == null){
											out.print("地区");
										}else{
											out.print(hotel_info.getRegion());
										}
							%>
							</p>
							
						</div>
						<!--  
						<div id="cdr-accordion-content" role="region">
							<div role="region" class="bui-carousel bui-carousel--medium bui-u-bleed@small"
								data-bui-component="Carousel">
								<ul class="bui-carousel__inner" data-bui-ref="carousel-container">
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687919.webp?k=eccf1ef09bcc42899712d36fc3972d2c1973cb7fa1d961affd01d4f8e613ff23&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x53F0;&#x5317;" data-tooltip-position="top">
														&#x53F0;&#x5317;
													</h4>
													<span data-bui-component="Tooltip"
														title="&#x516C;&#x5171;&#x4EA4;&#x901A;&#x4FBF;&#x6377;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x516C;&#x5171;&#x4EA4;&#x901A;&#x4FBF;&#x6377;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip" title="&#x591C;&#x5E02;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x591C;&#x5E02;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687822.webp?k=4750fc80f938ae0b7c16d0ac306c30f949c9ad7baba7ab79cfb7940e991849b7&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x82B1;&#x83B2;&#x5E02;" data-tooltip-position="top">
														&#x82B1;&#x83B2;&#x5E02;
													</h4>
													<span data-bui-component="Tooltip" title="&#x81EA;&#x7136;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x81EA;&#x7136;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip" title="&#x98CE;&#x666F;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x98CE;&#x666F;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687844.webp?k=b067e641ffd5aa9e7272615eb5856658792d881a74845ea905b240deaedb9005&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x57A6;&#x4E01;&#x5927;&#x8857;"
														data-tooltip-position="top">
														&#x57A6;&#x4E01;&#x5927;&#x8857;
													</h4>
													<span data-bui-component="Tooltip" title="&#x6D77;&#x6EE9;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x6D77;&#x6EE9;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip" title="&#x6C99;&#x6EE9;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x6C99;&#x6EE9;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687813.webp?k=cca4ce4aa03b8ca616dad118ad5f85e7ba875f2c915526f2c105147eeec12230&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x4E5D;&#x4EFD;" data-tooltip-position="top">
														&#x4E5D;&#x4EFD;
													</h4>
													<span data-bui-component="Tooltip" title="&#x98CE;&#x666F;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x98CE;&#x666F;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip"
														title="&#x8857;&#x5934;&#x5C0F;&#x5403;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x8857;&#x5934;&#x5C0F;&#x5403;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687840.webp?k=468bbe176fbf6b09c1b0778dd14437c614a66c44ecab77429683d39bbc089aa2&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x9AD8;&#x96C4;" data-tooltip-position="top">
														&#x9AD8;&#x96C4;
													</h4>
													<span data-bui-component="Tooltip" title="&#x591C;&#x5E02;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x591C;&#x5E02;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip"
														title="&#x5F53;&#x5730;&#x98DF;&#x54C1;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x5F53;&#x5730;&#x98DF;&#x54C1;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/687910.webp?k=ddda35cd7e422bfe96ee16fa84d4d63fe71e30fb738df85533c33c5a7365497f&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x53F0;&#x4E1C;" data-tooltip-position="top">
														&#x53F0;&#x4E1C;
													</h4>
													<span data-bui-component="Tooltip" title="&#x81EA;&#x7136;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x81EA;&#x7136;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip" title="&#x98CE;&#x666F;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x98CE;&#x666F;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
									<li class="bui-carousel__item cdr-card" data-bui-ref="carousel-item">
										<a data-et-click="customGoal:AEAFSXZWDRMeVRXJeaILYJO:2">
											<div
												class="bui-card bui-card--media bui-card--transparent cdr-card-container">
												<div class="bui-card__image-container">
													<img class="bui-card__image cdr-card-image"
														src="./script/xdata/images/city/square250/691714.webp?k=a656a900f8c1dc6fcddcbe53a8d98b8f198454f4cd22a4044ad5f94702b784b4&o=" />
												</div>
												<div class="bui-card__content">
													<h4 class="bui-card__title" data-bui-component="Tooltip"
														title="&#x4EC1;&#x7231;&#x4E61;" data-tooltip-position="top">
														&#x4EC1;&#x7231;&#x4E61;
													</h4>
													<span data-bui-component="Tooltip"
														title="&#x7A7A;&#x6C14;&#x5E72;&#x51C0;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x7A7A;&#x6C14;&#x5E72;&#x51C0;
															</span>, </span>
													</span>
													<span data-bui-component="Tooltip" title="&#x81EA;&#x7136;"
														data-tooltip-position="top">
														<span class="cdr-bagdes"><span>&#x81EA;&#x7136;
															</span>
														</span>
												</div>
											</div>
										</a>
									</li>
								</ul>
								<div class="bui-carousel__nav">
									<button type="button" class="bui-carousel__button" aria-label="上一个"
										data-bui-ref="carousel-prev">
										<svg class="bk-icon -iconset-navarrow_left bui-carousel__prev" height="32"
											role="presentation" width="32" viewBox="0 0 128 128" role="presentation"
											aria-hidden="true" focusable="false">
											<path
												d="M73.7 96a4 4 0 0 1-2.9-1.2L40 64l30.8-30.8a4 4 0 0 1 5.7 5.6L51.3 64l25.2 25.2a4 4 0 0 1-2.8 6.8z" />
										</svg>
									</button>
									<button type="button" class="bui-carousel__button" aria-label="下一个"
										data-bui-ref="carousel-next">
										<svg class="bk-icon -iconset-navarrow_right bui-carousel__next" height="32"
											role="presentation" width="32" viewBox="0 0 128 128" role="presentation"
											aria-hidden="true" focusable="false">
											<path
												d="M54.3 96a4 4 0 0 1-2.8-6.8L76.7 64 51.5 38.8a4 4 0 0 1 5.7-5.6L88 64 57.2 94.8a4 4 0 0 1-2.9 1.2z" />
										</svg>
									</button>
								</div>
							</div>
						</div>
					
						-->
					</div>
					<div id="b_confirmation_body" class="conf_wide_summary conf_align">
						<h2 id="booking_details" class="b_conf_check_details">
							&#x6838;&#x5BF9;&#x60A8;&#x7684;&#x9884;&#x8BA2;&#x4FE1;&#x606F;
						</h2>
						<div class="clearfix"></div>
						<div class="section  section--soft" id="book_conf_summary">
							<div class="conf-summary exp-pb-conf-cta-summary-links conf-summary-td-association">
								<div class="
conf-summary__main
">
									<table class="pb-conf-overview-table
">
										<tr>
											<th class="
hotel_name larger_hotel_name
 " colspan="2" scope="row">
												<a class="custom_track" data-trackname="Hotel link" target="_blank"
													data-et-click="customGoal:AEAFPDGYWEYcZbdBRXZXe:1">
													<%
													if(hotel_info == null){
														out.print("酒店名称");
													}else{
														out.print(hotel_info.getHotel_name());
													}
													%>
												</a>
												<span class="nowrap pb-conf-rating">
													<span class="c-accommodation-classification-rating">
														<span
															class="c-accommodation-classification-rating__badge c-accommodation-classification-rating__badge--tiles c-accommodation-classification-rating__badge--with-tooltip"
															data-component="accommodation-classification-rating"
															title="&lt;p&gt;&#x7531;Booking.com&#x4E3A;&lt;strong&gt;&#x6C11;&#x5BBF;&#x53CA;&#x516C;&#x5BD3;&#x7C7B;&#x4F4F;&#x5BBF;&lt;/strong&gt;&#x8BC4;&#x5B9A;&#x3002;&#x54C1;&#x8D28;&#x8BC4;&#x5206;&#x6839;&#x636E;&#x4F4F;&#x5BBF;&#x8BBE;&#x65BD;&#x3001;&#x89C4;&#x6A21;&#x5927;&#x5C0F;&#x3001;&#x4F4D;&#x7F6E;&#x53CA;&#x670D;&#x52A1;&#x7B49;&#x56E0;&#x7D20;&#x5224;&#x5B9A;&#x3002;&lt;/p&gt;">
															<span class="bui-rating bui-rating--smaller" role="img"
																aria-label="3 out of 5">
																<span aria-hidden="true"
																	class="bui-icon bui-rating__item bui-icon--medium"
																	role="presentation">
																	<svg xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 112 128" focusable="false"
																		aria-hidden="true" role="img">
																		<path
																			d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
																		</path>
																	</svg>
																</span>
																<span aria-hidden="true"
																	class="bui-icon bui-rating__item bui-icon--medium"
																	role="presentation">
																	<svg xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 112 128" focusable="false"
																		aria-hidden="true" role="img">
																		<path
																			d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
																		</path>
																	</svg>
																</span>
																<span aria-hidden="true"
																	class="bui-icon bui-rating__item bui-icon--medium"
																	role="presentation">
																	<svg xmlns="http://www.w3.org/2000/svg"
																		viewBox="0 0 112 128" focusable="false"
																		aria-hidden="true" role="img">
																		<path
																			d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z">
																		</path>
																	</svg>
																</span>
															</span>
														</span>
													</span>
												</span>
												<span class="label-business-trip " title=""><span
														class="label-business-trip-icon">
														<i class="bicon-bb-logo"></i></span><span
														class="label-business-trip-text">
														<%
															if(business_or_travel == "t"){
																out.print("商务旅行");
															}else{
																out.print("自由行");
															}
														%>
														</span></span>
											</th>
										</tr>
										<tr>
											<th scope="row">订单号</th>
											<!-- ClickTaleExcludeBlock -->
											<td class="ClickTaleSensitive"><% out.print(record_id); %></td>
											<!-- EndClickTaleExcludeBlock <td>XXX</td> -->
										</tr>
										
									</table>
									<table class="reservation_details">
										<tbody>
											<tr class="b_conf_overview">
												<th scope="row">预订资料</th>
												<td>
													<% out.print(daysOfStay); %>晚,
													已选
													<% 
													Integer totalRoom_num = 0;
													for(int i = 0; i < room_numList.size(); ++i) {
														totalRoom_num += room_numList.get(i);
													}
													out.print(totalRoom_num);
													%>
													间
													
												</td>
											</tr>
											<tr class="b_conf_group">
												<th scope="row">预订对象</th>
												<td class="conf_room_occupancy_info">
													<p>
													<% 
													String guest_str = "";
													for(int i = 0; i < roomList.size(); ++i) {
														guest_str += roomList.get(i).getUsable_desc() + ";";
													}
													out.print(guest_str);
													%>
													</p>
												</td>
											</tr>
											<tr class="b_conf_checkin">
												<th scope="row">入住时间</th>
												<td>
												<%
													String[] check_in_date_strs = check_in_date.split("-");
												%>
												<% out.print(check_in_date_strs[0]); %>年<% out.print(check_in_date_strs[1]); %>月<% out.print(check_in_date_strs[2]); %>日
												</td>
											</tr>
											<tr class="b_conf_checkout
">
												<th scope="row">退房时间</th>
												<td>
												<%
													String[] check_out_date_strs = check_out_date.split("-");
												%>
												<% out.print(check_out_date_strs[0]); %>年<% out.print(check_out_date_strs[1]); %>月<% out.print(check_out_date_strs[2]); %>日
													
												</td>
											</tr>
										</tbody>
									</table>
									<div id="priceSection"></div>
									<div class="pb-pricebreakdown--tbl-outerbox-cont">
										<div class="pb-pricebreakdown--tbl-outerbox">
											<table class="pb-pricebreakdown--tbl">
												<tbody>
													<% 
														
														for(int i = 0; i < roomList.size(); ++i) {
															Room room = roomList.get(i);
															String room_name = room.getRoom_name();
															Integer room_num = room_numList.get(i);
															Float single_price = room.getPrice();
															if(single_price == null){
																single_price = 0f;
															}
															Float room_total_price = room_num * single_price;
															String priceStr = String.format("%.2f", room_total_price);
													%>
													<tr>
														<th scope="row">
															<% out.print(room_num); %> x <% out.print(room_name); %>
														</th>
														<td><% out.print(priceStr); %>&#x5143;</td>
													</tr>
													<% } %>
												</tbody>
											</table>
										</div>
										<div class="pb-pricebreakdown--tbl-outerbox filled">
											<table class="pb-pricebreakdown--tbl">
												<tbody>
													<tr>
														<th>
															<div class="room-price">
																价格
															</div>
															
														</th>
														<td data-et-view="eDUIFIZdFLRcNQdWVMcMADDbdEQRe:1">
															<div>
																<span class="room-price"><% out.print(totalPrice); %>元</span>
															</div>
															
														</td>
													</tr>
												</tbody>
											</table>
											<table class="pb-pricebreakdown--tbl">
												<tbody>
												</tbody>
											</table>
										</div>
										<div class="pb-pricebreakdown--tbl-outerbox filled">
											<div class="pb-pricebreakdown--additional-info">
												<h4 class="pb-pricebreakdown--additional-info-header">
													显示的总价即您需要向住宿提供方支付的金额。
												</h4>
												<div class="pb-pricebreakdown--additional-info-text"
													data-et-view="bQbYSCZFceHEVJdYJNdDaXFCVCGXT:1">
													Booking.com不会向客人收取任何预订费、手续费或其他形式服务费。<br>
													您的发卡行可能向您收取境外交易手续费。
												</div>
											</div>
											<div id="pb-price-breakdown--prepayment"></div>
											<div id="pb-price-breakdown--payment" class="pb-pricebreakdown--additional-info
">
												<h4 class="pb-pricebreakdown--additional-info-header">付款信息</h4>
												<div class="pb-pricebreakdown--additional-info-text">
													入住日前7天内，您需要预付订单全额。<br>
													这家住处接受以下形式的付款：
													只接受现金
												</div>
											</div>
											
											<div class="pb-pricebreakdown--additional-info">
												<h4 class="pb-pricebreakdown--additional-info-header">
													其它信息
												</h4>
												<div class="pb-pricebreakdown--additional-info-text">
													<div data-et-view="INQHUNFSVdINOfaKLYRTWe:2"></div>
													温馨提示：额外服务（如加床）不包含在总价内。<br>
													<span
														data-e2e="conf-free-cxl-taxes-fees">若取消订单，住宿提供方仍可能向您收取相关税费。</span><br>
													<span
														data-e2e="conf-noshow-free-cxl-warning">如果您既未事先取消又未按时入住，住宿将有权向您收取全部订单费用。</span><br>
													请记得阅读下方<strong>预订须知</strong>，因为该须知中可能包含未在此说明的重要信息。
												</div>
											</div>
											<div class="pb-pricebreakdown--additional-info hide_for_print">
												<h4 class="pb-pricebreakdown--additional-info-header">
													想了解更多关于付款的信息？
												</h4>
												<div class="pb-pricebreakdown--additional-info-text">
													请访问我们的<a data-component="confirmation/link-to-faq-block"
														data-faq-topic="payment">常见问题及解答</a>，了解付款方式和时间。
												</div>
											</div>
										</div>
										<div class="pb-pricebreakdown--tbl-outerbox filled">
											<span class="wpm-block">
												<div id="rate_guarantee" class="bpg_post_booking hide_for_print">
													<i class="bpg_logo"></i>
													<a  data-bui-component="Popover"
														data-popover-content-id="bpg_desktop_badge"
														data-popover-position="bottom" data-popover-no-arrow
														tabindex="0" class=" open-bpg-in-overlay-instead pp_bpg_tooltip_holder">&#x4EF7;&#x683C;&#x66F4;&#x653E;&#x5FC3;
													</a>
													<div id="bpg_desktop_badge" class="bui-panel bui-u-hidden">
														<div class="pp-bpg-tooltip--header">
															&#x4EF7;&#x683C;&#x66F4;&#x653E;&#x5FC3;
														</div>
														<div class="pp-bpg-tooltip--image"></div>
														<div class="pp-bpg-tooltip--text">

															&#x4F4E;&#x5EC9;&#x7684;&#x4EF7;&#x683C; •

															<span class="&quot;no_booking_fees_fr_tooltip&quot;">
																&#x4E0D;&#x6536;&#x53D6;&#x9884;&#x8BA2;&#x624B;&#x7EED;&#x8D39;</span>
															•
															&#x522B;&#x5904;&#x627E;&#x5230;&#x4E86;&#x66F4;&#x4FBF;&#x5B9C;&#x7684;&#x4EF7;&#x683C;&#xFF1F;&#x5DEE;&#x4EF7;&#x6838;&#x5B9E;&#x540E;&#x5C06;&#x4E88;&#x4EE5;&#x8865;&#x507F;&#xFF01;
														</div>


													</div>
												</div>
											</span>
											<span class="wpm-block-text price-approx">
												别处找到了更便宜的价格？差价核实后将予以补偿！
											</span>
										</div>
									</div>
								</div>
								<div class="conf-summary__aside  ">
									<div data-et-view=" customGoal:AEAFSXZWDRMeVRXJeaILYJO:3 ">
										<div data-capla-component="b-post-booking-web-mfe/SelfServiceDesktop"
											data-capla-namespace="b-post-booking-web-mfeOTWYcffd">
											<div class="c6fa81a947">
												<div class="b318847947">
													<div class="ac78a73c96 a29f4f5c93">预订信息都准确吗？</div>
													<div class="d8eab2cf7f e3e796884e">您随时可以在线查看或更改预订，无需注册!</div>
													<div class="bc7e7befc9">
														<div class="c469ed42cb"><span
																	class="b6dc9a9e69 b46b015725 e25355d3ee"
																	aria-hidden="true"><i
																		class="e9a4647ed6 f884cd7286"></i></span><span>
																	<div class="f9afbb0024 cf9a0fa298">取消您的预订</div>
																</span></div>
														<div class="c469ed42cb"><span
																	class="b6dc9a9e69 b46b015725 e25355d3ee"
																	aria-hidden="true"><i
																		class="e9a4647ed6 f5acc92859"></i></span><span>
																	<div class="f9afbb0024 cf9a0fa298">联系住宿</div>
																</span></div>
													</div>
												</div>
											</div>
										</div>
										<div class="mybooking-block_ss_legacy_part">
											<a class="mybooking-block__link cf custom_track"
												data-trackname="pb_conf_replace_mybooking_widget: Change booking dates"
												data-et-click=" customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:4 customGoal:AEAFSXZWDRMeVRXJeaILYJO:4 AEAFPDGYWEYcZbdBRXZXe:4 ">
												<i class="mybooking-block__ico mybooking-block__ico--change-dates"></i>
												<span class="mybooking-block__link__copy">更改日期</span>
											</a>
											<a class="mybooking-block__item cf custom_track"
												data-trackname="MyBooking widget in booking summary"
												data-et-click=" customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:4 customGoal:AEAFSXZWDRMeVRXJeaILYJO:4 customGoal:bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO:2 customGoal:AEAFPIPDGYWHJXdDRALXMHO:2 customGoal:AEAFPDGYWEYcZbdBRXZXe:5 ">
												<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"
													stroke-width="1.5" height="16" width="16">
													<path
														d="M12,5.251C7.969,5.183,3.8,8,1.179,10.885a1.663,1.663,0,0,0,0,2.226C3.743,15.935,7.9,18.817,12,18.748c4.1.069,8.258-2.813,10.824-5.637a1.663,1.663,0,0,0,0-2.226C20.2,8,16.031,5.183,12,5.251Z"
														fill="#262626" stroke="#000000" stroke-linecap="round"
														stroke-linejoin="round"></path>
													<path
														d="M15.75,12A3.75,3.75,0,1,1,12,8.249,3.749,3.749,0,0,1,15.75,12Z"
														fill="#fff" stroke="#000000" stroke-linecap="round"
														stroke-linejoin="round"></path>
												</svg>
												<span class="mybooking-block__item__copy">
													查看订单
												</span>
											</a>
											<div class="mybooking-block__hint">
												温馨提示：你可以随时修改该订单
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- /#book_conf_summary -->
					</div>
					<div id="b_confirmation_body" class="screen main_column conf_align ">
						<div class="mybooking-block-sticky mybooking-block-sticky--sidebar myres-sticky js-mb-sticky">
							<div data-et-view=" customGoal:AEAFSXZWDRMeVRXJeaILYJO:3 ">
								<div data-capla-component="b-post-booking-web-mfe/SelfServiceDesktop"
									data-capla-namespace="b-post-booking-web-mfeOTWYcffd">
									<div class="c6fa81a947">
										<div class="b318847947">
											<div class="ac78a73c96 a29f4f5c93">预订信息都准确吗？</div>
											<div class="d8eab2cf7f e3e796884e">您随时可以在线查看或更改预订，无需注册!</div>
											<div class="bc7e7befc9">
												<div class="c469ed42cb"><button type="button"
														class="fc63351294 a168c6f285 fe673a990a a25b1d9e47 f45f1f39d8"><span
															class="b6dc9a9e69 b46b015725 e25355d3ee"
															aria-hidden="true"><i
																class="e9a4647ed6 f884cd7286"></i></span><span>
															<div class="f9afbb0024 cf9a0fa298">取消您的预订</div>
														</span></button></div>
												<div class="c469ed42cb"><button type="button"
														class="fc63351294 a168c6f285 fe673a990a a25b1d9e47 f45f1f39d8"><span
															class="b6dc9a9e69 b46b015725 e25355d3ee"
															aria-hidden="true"><i
																class="e9a4647ed6 f5acc92859"></i></span><span>
															<div class="f9afbb0024 cf9a0fa298">联系住宿</div>
														</span></button></div>
											</div>
										</div>
									</div>
								</div>
								<div class="mybooking-block_ss_legacy_part">
									<a class="mybooking-block__link cf custom_track"
										data-trackname="pb_conf_replace_mybooking_widget: Change booking dates"
										href="/myreservations.zh-cn.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;auth_key=jASQF2C6wwXq4Dcq&amp;srpvid=7853152978100034&amp;;label=from_conf_1;pbsource=email_changeDates"
										data-et-click=" customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:4 customGoal:AEAFSXZWDRMeVRXJeaILYJO:4 AEAFPDGYWEYcZbdBRXZXe:4 ">
										<i class="mybooking-block__ico mybooking-block__ico--change-dates"></i>
										<span class="mybooking-block__link__copy">更改日期</span>
									</a>
									<a class="mybooking-block__item cf custom_track"
										href="/myreservations.zh-cn.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;auth_key=jASQF2C6wwXq4Dcq&amp;srpvid=7853152978100034&amp;;label=from_conf_1"
										data-trackname="MyBooking widget in booking summary"
										data-et-click=" customGoal:AEAFSXPHAEDXCGHfUOfEIEYIbNXGDJae:4 customGoal:AEAFSXZWDRMeVRXJeaILYJO:4 customGoal:bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO:2 customGoal:AEAFPIPDGYWHJXdDRALXMHO:2 customGoal:AEAFPDGYWEYcZbdBRXZXe:5 ">
										<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" stroke-width="1.5"
											height="16" width="16">
											<path
												d="M12,5.251C7.969,5.183,3.8,8,1.179,10.885a1.663,1.663,0,0,0,0,2.226C3.743,15.935,7.9,18.817,12,18.748c4.1.069,8.258-2.813,10.824-5.637a1.663,1.663,0,0,0,0-2.226C20.2,8,16.031,5.183,12,5.251Z"
												fill="#262626" stroke="#000000" stroke-linecap="round"
												stroke-linejoin="round"></path>
											<path d="M15.75,12A3.75,3.75,0,1,1,12,8.249,3.749,3.749,0,0,1,15.75,12Z"
												fill="#fff" stroke="#000000" stroke-linecap="round"
												stroke-linejoin="round"></path>
										</svg>
										<span class="mybooking-block__item__copy">
											查看订单
										</span>
									</a>
									
								</div>
							</div>
						</div>
						<div data-component="genius-vip/tracking" data-capla-project-name="post-booking-web"
							data-service-name="mfe" data-tracking-enabled="1">
							<div data-capla-component="b-post-booking-web-mfe/GeniusVipCampaignsLFBanner"
								data-capla-namespace="b-post-booking-web-mfeOTWYcffd"></div>
						</div>
						<h2 class="hide_for_print" id="hotel_room_details">
							住宿详情
						</h2>
						<div class="section book-confirmation-hotel-details ">
							<div class="pb-conf-stars-and-thumb-cell pb-conf-has-facility">
								<table style="width:100%;">
									<tbody>
										<tr>
											<th scope="row">地址</th>
											<td>
												<%
													String hotel_address = "酒店地址";
													String hotel_province = "省份";
													String hotel_region = "地区";
													if(hotel_info != null){
														hotel_address = hotel_info.getAddress();
														hotel_province = hotel_info.getProvince();
														hotel_region = hotel_info.getRegion();
													}
												%>
												<table>
													<tr>
														<td>
														<% out.print(hotel_address); %>
														</td>
														
													</tr>
													<tr>
														<td> 
														<% out.print(hotel_region); %>
														</td>
													</tr>
													<tr>
														<td>
														<% out.print(hotel_province); %>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<%
								for(int i = 0; i < roomList.size(); ++i) {
									Room room = roomList.get(i);
							%>
							<div class="room room--next ">
								<h3 class="pb_conf_room_descr_and_no_img">
									<% out.print("住宿" + (i+1) + ": " + room.getRoom_name()); %>
								</h3>
								
								<table class="conf_align_table" style="clear:left;">
									<tr>
										<th scope="row">
											<h5 class="pb_conf_guest_name_label">
												客人姓名
											</h5>
										</th>
										<td>
											<!-- ClickTaleExcludeBlock -->
											<p>
											<div data-component="confirmation/guest_name_editor"
												class="pb-room__guest-info ">
												<div class="pb-room__guest-info-block js-pb-guest-details__info">
													<span class="js-pb-guest-details__item-name">
														<span class="js-pb-guest-details__name">
															<% out.print(booker_name); %>
														</span>
													</span>
													
													<span class="b_nr_guests js-pb-guest-details__item-num">
													</span>
													
												</div>
												
											</div>
											
											<p>
											</p>
											<!-- EndClickTaleExcludeBlock <p>XXX</p> -->
										</td>
									</tr>
									
									<tr>
										<th scope="row">
											您预订的住宿提供以下设施或服务：
										</th>
										<td>
										<%
											String room_facilities_str = room.getRoom_facilities();
											if(room_facilities_str == null){
												room_facilities_str = "花园景,山景,露台,庭院";
											}
											String[] room_facilities = room_facilities_str.split(",");
											Integer numOfFacilities = room_facilities.length;
											
											for(int j = 0; j < numOfFacilities; ++j) {
										%>
											<div class="pb_facilities--badge" data-name-en="room size"
												data-facility-id="0" data-facility-type="0"><span class="">
												<!--  
												<svg
														class="bk-icon -streamline-room_size" fill="#008009" height="16"
														width="16" viewBox="0 0 24 24" role="presentation"
														aria-hidden="true" focusable="false">
														<path
															d="M3.75 23.25V7.5a.75.75 0 0 0-1.5 0v15.75a.75.75 0 0 0 1.5 0zM.22 21.53l2.25 2.25a.75.75 0 0 0 1.06 0l2.25-2.25a.75.75 0 1 0-1.06-1.06l-2.25 2.25h1.06l-2.25-2.25a.75.75 0 0 0-1.06 1.06zM5.78 9.22L3.53 6.97a.75.75 0 0 0-1.06 0L.22 9.22a.75.75 0 1 0 1.06 1.06l2.25-2.25H2.47l2.25 2.25a.75.75 0 1 0 1.06-1.06zM7.5 3.75h15.75a.75.75 0 0 0 0-1.5H7.5a.75.75 0 0 0 0 1.5zM9.22.22L6.97 2.47a.75.75 0 0 0 0 1.06l2.25 2.25a.75.75 0 1 0 1.06-1.06L8.03 2.47v1.06l2.25-2.25A.75.75 0 1 0 9.22.22zm12.31 5.56l2.25-2.25a.75.75 0 0 0 0-1.06L21.53.22a.75.75 0 1 0-1.06 1.06l2.25 2.25V2.47l-2.25 2.25a.75.75 0 0 0 1.06 1.06zM10.5 13.05v7.2a2.25 2.25 0 0 0 2.25 2.25h6A2.25 2.25 0 0 0 21 20.25v-7.2a.75.75 0 0 0-1.5 0v7.2a.75.75 0 0 1-.75.75h-6a.75.75 0 0 1-.75-.75v-7.2a.75.75 0 0 0-1.5 0zm13.252 2.143l-6.497-5.85a2.25 2.25 0 0 0-3.01 0l-6.497 5.85a.75.75 0 0 0 1.004 1.114l6.497-5.85a.75.75 0 0 1 1.002 0l6.497 5.85a.75.75 0 0 0 1.004-1.114z" />
													</svg>
													-->
													<% out.print(room_facilities[j]); %></span></div>
										<% } %>
											
										</td>
									</tr>
									<tr>
										<th scope="row">最多入住人数</th>
										<td class="conf_room_occupancy_info">
											<p>
												<% out.print(room.getUsable_desc()); %>
											</p>
											<p>订单总价根据预订时选择的入住人数得出。额外添加的客人可能需要支付额外费用，不得超过最多可入住人数。</p>
										</td>
									</tr>
								</table>
								
								<table class="conf_align_table conf_align_table_meals">
									<tr>
										<th>
											<h5>餐食安排</h5>
										</th>
										<td>
											<div class="room__meal-rows">
												<div class="room__meal-row">
													<div class="room__meal-cell">
														<% 
														if(hotel_feature == null){
															out.print("含早餐");
														}else{
															String breakfastStr = hotel_feature.getBreakfast();
															if(breakfastStr.equals("NULL")){
																out.print("无早餐");
															}else{
																out.print(hotel_feature.getBreakfast()); 
															}
														}
														%>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</table>
								<div class="e2e-conf-payment">
									<table class="conf_align_table">
										<tr>
											<th>
												<h5>
													预付款项
												</h5>
											</th>
											<td>
												<ul>
													<li>
														入住日前7天内，您需要预付订单全额。
													</li>
												</ul>
											</td>
										</tr>
									</table>
								</div>
								
								<table class="conf_align_table conf_children_room_policy">
									<tr>
										<th scope="row">
											<h5>
												<span class="policy_name_icon">
													<svg class="bk-icon -streamline-family" height="20" width="20"
														viewBox="0 0 24 24" role="presentation" aria-hidden="true"
														focusable="false">
														<path
															d="M21.75 5.25a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zm-6.182 15.093l.188 1.5A.75.75 0 0 0 18 22.5h3a.75.75 0 0 0 .744-.657l.75-6-.744.657h1.5a.75.75 0 0 0 .75-.75V13.5a4.5 4.5 0 0 0-7.2-3.6.75.75 0 1 0 .9 1.2 3 3 0 0 1 4.8 2.4v2.25l.75-.75h-1.5a.75.75 0 0 0-.744.657l-.75 6L21 21h-3l.744.657-.188-1.5a.75.75 0 0 0-1.488.186zM6.75 5.25a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zM5.444 20.157l-.188 1.5L6 21H3l.744.657-.75-6A.75.75 0 0 0 2.25 15H.75l.75.75V13.5a3 3 0 0 1 4.8-2.4.75.75 0 1 0 .9-1.2A4.5 4.5 0 0 0 0 13.5v2.25c0 .414.336.75.75.75h1.5l-.744-.657.75 6A.75.75 0 0 0 3 22.5h3a.75.75 0 0 0 .744-.657l.188-1.5a.75.75 0 0 0-1.488-.186zM13.5 9a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zM15 9a3 3 0 1 0-6 0 3 3 0 0 0 6 0zm-3 3a4.5 4.5 0 0 0-4.5 4.5v.75c0 .414.336.75.75.75h1.5l-.74-.627.75 4.5a.75.75 0 0 0 .74.627H12a.75.75 0 0 0 0-1.5h-1.5l.74.627-.75-4.5a.75.75 0 0 0-.74-.627h-1.5l.75.75v-.75a3 3 0 0 1 3-3 .75.75 0 0 0 0-1.5zm0 1.5a3 3 0 0 1 3 3v.75l.75-.75h-1.5a.75.75 0 0 0-.74.627l-.75 4.5.74-.627H12a.75.75 0 0 0 0 1.5h1.5a.75.75 0 0 0 .74-.627l.75-4.5-.74.627h1.5a.75.75 0 0 0 .75-.75v-.75A4.5 4.5 0 0 0 12 12a.75.75 0 0 0 0 1.5z" />
													</svg>
												</span>
												<span>儿童及加床政策</span>
											</h5>
										</th>
										<td>
											<div class="c-child-policies bui-f-font-body">
												<div class="c-child-policies__general bui-spacer--large">
													<h3 class="bui-f-font-heading bui-spacer--large">一般儿童政策</h3>
													<p>欢迎任何年龄的儿童入住</p>
													<div data-et-view="INQHUNPIFddfLLFKWIFdCVaSPXe:1"></div>
													<p>在该住宿13岁及以上的儿童将视为成年人。</p>
												</div>
												<h3 class="bui-f-font-heading bui-spacer--large">婴儿床和加床政策</h3>
												<div class="c-child-policies__table">
													<div class="c-child-policies__group js-child-policies-block"
														data-max-age="255">
														<header
															class="c-child-policies__group-header js-child-policies-show"
															data-no-toggle colspan="2">
															12岁以上
														</header>
														<table class="c-child-policies__group-content"
															data-group-id="1">
															<tbody>
																<tr>
																	<td>
																		<div class="c-child-policies__icons">
																			<div>
																				<svg class="bk-icon -streamline-bed_add"
																					height="16" width="16"
																					viewBox="0 0 24 24"
																					role="presentation"
																					aria-hidden="true"
																					focusable="false">
																					<path
																						d="M8.25 12.375H.75l.75.75v-2.25a2.25 2.25 0 0 1 2.25-2.25H18a.75.75 0 0 0 0-1.5H3.75A3.75 3.75 0 0 0 0 10.875v2.25c0 .414.336.75.75.75h7.5a.75.75 0 0 0 0-1.5zm-8.25.75v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm18.75-5.25v-5.25A2.25 2.25 0 0 0 16.5.375h-12a2.25 2.25 0 0 0-2.25 2.25V7.97a.75.75 0 0 0 1.5 0V2.625a.75.75 0 0 1 .75-.75h12a.75.75 0 0 1 .75.75v5.25a.75.75 0 0 0 1.5 0zM8.5 5.625h4a.25.25 0 0 1 .25.25v2l.75-.75h-6l.75.75v-2a.25.25 0 0 1 .25-.25zm0-1.5a1.75 1.75 0 0 0-1.75 1.75v2c0 .414.336.75.75.75h6a.75.75 0 0 0 .75-.75v-2a1.75 1.75 0 0 0-1.75-1.75h-4zm14 12.75a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.5-3v6a.75.75 0 0 0 1.5 0v-6a.75.75 0 0 0-1.5 0zm-2.25 3.75h6a.75.75 0 0 0 0-1.5h-6a.75.75 0 0 0 0 1.5z" />
																				</svg>
																				<span>加床（按需提供）</span>
																			</div>
																		</div>
																	</td>
																	<td>
																		<span>
																			每人每晚100元
																		</span>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="c-child-policies__supplements">
													<p>附加费用不会自动计算在总价中，您需在入住时另行支付。</p>
													<p>
														&#x53EF;&#x5E94;&#x4F4F;&#x5BA2;&#x8981;&#x6C42;&#x63D0;&#x4F9B;2&#x5F20;&#x52A0;&#x5E8A;&#x3002;
													</p>
													<p>婴儿床及加床需视供应情况而定。</p>
												</div>
											</div>
										</td>
									</tr>
								</table>
								<table cellspacing="0" cellpadding="0" border="0" class="price_breakdown
hide_price_value
">
									<tbody>
										<tr class="charge extracharges included rooms">
											<th class="key">
												住宿已选<% room_numList.get(i); %>间
											</th>
											
										</tr>
										
										<tr class="total extracharges ">
											
											<th class="key">总价:</th>
											<td class="value alignright largetotaltext">
												<span class="selectedCur user_currency "
													style="font-weight: normal!important; padding-right: 3px;">
													<span id="s_cost_with_addons" tc="1345.00">
													<% 
													Float room_totalPrice = 0f;
													Float single_roomPrice = room.getPrice();
													if(single_roomPrice == null){
														single_roomPrice = 0f;
													}
													room_totalPrice = room_numList.get(i) * single_roomPrice;
													out.print(room_totalPrice); 
													%>
													元
													</span>
												</span>
												
											</td>
										</tr>
									</tbody>
								</table>
								<div class="rt_resort_credits_info--policy show_for_print">
									<div class="rt_resort_credits_info--explanation">
										度假抵用券可用于该度假酒店内指定的消费项目，具体金额及<a href="#"
											class="rc-policy-open">使用条款</a>请咨询入住的度假酒店。
									</div>
									<div class="rt_resort_credits_info--policy-details">
										政策详情
									</div>
								</div>
							</div>
							<% } %>
							
						</div>
						<div data-et-view="AdREFHZUfFfFcYRQKe:1 AdREFHZUfFfFcYRQKe:4"></div>
						
						
						<h2>查看住宿规定</h2>
						<div class="section">
							<ul>
								<li>不准吸烟</li>
							</ul>
						</div>
						
						<div data-capla-component="b-post-booking-web-mfe/ImportantInfo"
							data-capla-namespace="b-post-booking-web-mfeOTWYcffd">
							<div data-testid="important-info-conf-ddot">
								<div></div>
								<div class="fcab3ed991 f9aca8ce24">重要信息</div>
								<div class="ede35bcee4">
									<div class="eeca70e56c">
										<p><span>为遵从政府针对新冠肺炎（COVID-19）的防疫指导，该住宿在指导实施期间不接待来自特定国家/地区的客人。</span></p>
										<p><span>为遵从政府针对新冠肺炎（COVID-19）的防疫指导，该住宿在指导实施期间可能需要客人提供额外文件，以证明其身份、行程及其他相关信息。</span>
										</p>
										<p><span>为应对新冠肺炎（COVID-19）疫情，该住宿当前正在采取额外的安全与卫生措施。</span></p>
										<p><span>由于新冠肺炎（COVID-19）疫情，该住宿当前的餐饮服务可能有所限制或不再提供。</span></p>
										<p><span>由于新冠肺炎（COVID-19）疫情，室内公共区域必须佩戴口罩。</span></p>
										<p><span>不得因新冠肺炎（COVID-19）隔离目的入住该住宿。</span></p>
										<p><span>请您提前告知
										<%
											if(hotel_info == null){
												out.print("酒店名称");
											}else{
												out.print(hotel_info.getHotel_name());
											}
										%>
												 您的预计抵达时间。您可以在预订时在“特殊要求”栏内注明，也可以直接联系住宿，订单确认信中附有联系方式。</span></p>
										<p><span>客人在办理入住手续时须出示带照片的身份证件和信用卡。请注意：所有特殊要求均视住宿的供应情况而定，也可能收取额外费用。</span></p>
										<p><span></span></p>
										<p><span>您须在入住前通过银行转账方式向住宿付款。住宿会在您预订后与您联系并提供关于银行转账的说明。</span></p>
										<p><span>经营许可证号：<strong>
										<%
											if(hotel_info == null){
												out.print("酒店地址");
											}else{
												out.print(hotel_info.getAddress());
											}
										%>
										</strong></span></p>
									</div>
								</div>
							</div>
						</div>
						
						<div id="propertyContactOptions" class="pbx-conf-component-wrapper">
							<div data-capla-component="b-post-booking-web-mfe/PropertyContactOptions"
								data-capla-namespace="b-post-booking-web-mfeOTWYcffd">
								<div class="a1b3f50dcd e6f05e293e f7c6687c3d">
									<div>
										<div class="fcab3ed991">联系住宿</div>
										<div class="a0c113411d">对于大多数问题，通常咨询住宿最有用</div>
									</div>
									<div>
										<div class="dcf6caf933">
											<div class="fb912f0f00"><span class="b6dc9a9e69 ec1b6253a6"
													aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg"
														viewBox="0 0 24 24">
														<path
															d="M22.5 12v6a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 18V6a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v6zm1.5 0V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v12a2.25 2.25 0 0 0 2.25 2.25h19.5A2.25 2.25 0 0 0 24 18v-6zm-8.822-1.474l3.813 3.525a.75.75 0 1 0 1.018-1.102l-3.813-3.525a.75.75 0 1 0-1.018 1.102zM7.804 9.424L3.99 12.95a.75.75 0 1 0 1.018 1.102l3.813-3.525a.75.75 0 1 0-1.018-1.102zm14.65-5.027l-9.513 6.56a1.656 1.656 0 0 1-1.882 0l-9.513-6.56A.75.75 0 1 0 .694 5.63l9.513 6.56a3.156 3.156 0 0 0 3.586 0l9.513-6.56a.75.75 0 1 0-.852-1.234z">
														</path>
													</svg></span></div>
											<div class="adebf6e621">
												<div class="a1b3f50dcd a1f3ecff04 f7c6687c3d">
													<div class="ac78a73c96">给住宿发邮件</div>
													<div class="a0c113411d">向住宿发消息，他们将尽快回复</div>
													<div class="a0c113411d"><a
															class="fc63351294 a168c6f285 a25b1d9e47"><span>发送邮件</span></a>
													</div>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
						<div class="pbx-conf-component-wrapper">
							<div data-capla-component="b-post-booking-web-mfe/HelpCenterEntrypoint"
								data-capla-namespace="b-post-booking-web-mfeOTWYcffd">
								<div class="a1b3f50dcd e6f05e293e f7c6687c3d">
									<div class="fcab3ed991">需要帮助？</div>
									<div class="d5ba0afb58">
										<div class="e2e06f3330"><span class="b6dc9a9e69 ec1b6253a6"
												aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg"
													viewBox="0 0 24 24">
													<path
														d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z">
													</path>
												</svg></span></div>
										<div class="cc89d47408">
											<div class="a1b3f50dcd a1f3ecff04 f7c6687c3d">
												<div class="a0c113411d">我们在此为您答疑解惑，助您管理订单</div>
												<div class="a0c113411d"><a
														class="fc63351294 a168c6f285 a25b1d9e47"><span>联系客服</span></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="good_trip_signature" class="hide_for_print">
							祝您旅途愉快！<br />
							Booking.com团队
						</div>
						
			
		</div>
	</div>
	</div>
	<div class="footerconstraint footer_no_lang_track a11y_fix_footer_contrast_footerconstraint 
">
		<div class="book-footer-nps-proof a11y_fix_footer_contrast_book-footer-nps-proof">
			<span class="book-footer-nps-proof__text">
				上个月，超过
				<a  data-component="gta/modal" data-modal-id="gta-modal" data-modal-size="1000"
					data-modal-close-aria-label="关闭"
					data-et-click=" AEAFPDGYWEYcZbdBRXZXe:7 customGoal:dLYHMRFeRLPYKDcdDXfdQPUZbeKRRT:1 ">
					一百万</a>名用户说他们愿意向亲朋好友推荐Booking.com。
			</span>
		</div>
		<div class="footerconstraint-inner local_office_no_style_bp">
			<div id="bookFooterInc">
				<div id="footer">
					<div class="local_office_wrapper_bp">
						<div id="footernav" role="navigation">
							<ul class="footer-simple-horizontal-nav">
								<li>
									<a target="_BLANK" rel="nofollow"
										>关于Booking.com</a>
								</li>
								<li>
									<a target="_BLANK" rel="nofollow"
										data-ga-track="click|Click|Action: confirmation|hc_entrypoint_book_footer">
										客服帮助
									</a>
								</li>
								<li>
									<a target="_BLANK" rel="nofollow"
										>条款与条件</a>
								</li>
								<li>
									<a target="_BLANK" rel="nofollow"
										>隐私和Cookie声明</a>
								</li>
							</ul>
						</div>
					</div>
					<div id="area_local_office2_bp">
						<div class="area_local_office_inner_bp local_flavours">
							我们在全球设有198多个办公室，<strong>中国</strong>也是其中之一
						</div>
					</div>
					<div class="no_emk_cs_contact" style="margin-top: 10px;">
						<div class="footerconstraint-inner">
							<div class="cs_contact_footer">
								<div class="cs_contact_footer_icon">
									<i class="cs_contact_footer_phone_icon"></i>
								</div>
								<div class="cs_contact_footer_title">
									<h3 class="cs_contact_footer_title_header">24小时客服助您安心出行</h3>
									<p class="cs_contact_footer_title_subheader">订单有问题？我们来帮您！</p>
								</div>
								<div class="cs_contact_footer_numbers">
									<div class="cs_contact_footer_numbers_section domestic_international_line">
										<p class="number_title">
											中文客服热线</p>
										<p class="number_content">
											<a class="number_content" target="_blank">
												点击了解更多客服帮助
											</a>
										</p>
									</div>
									<div class="cs_contact_footer_numbers_section help_center">
										<p class="number_title">
											常见问题</p>
										<p class="number_content">去<a
												target="_blank" class="number_content">帮助中心</a>看看</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="local_office_wrapper_bp">
						<div class="footercopyright">
							<div class="whitebar">
								<div class="copyright_text">
									版权 &copy; 1996&ndash;2023
									Booking.com. 版权所有.
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<div class="g-hidden">
					<div
						class="js-user-access-menu-lightbox user-access-menu-lightbox--signin user-access-menu-lightbox--no-password-strength">
						<svg class="bk-icon -logos-booking-logo" height="42" style="display:none;" width="252"
							viewBox="0 0 252 42" role="presentation" aria-hidden="true" focusable="false">
							<path
								d="M15.592 22.92C15.591 20.283 13.924 18.652 11.348 18.652H7.738C6.58 18.815 6.055 19.518 6.055 20.877V26.783L11.348 26.79C13.966 26.79 15.591 25.629 15.592 22.92ZM6.055 13.391H10.819C13.496 13.391 14.449 11.689 14.449 9.911C14.449 7.576 13.057 6.181 10.735 6.181H8.025C6.671 6.268 6.055 6.966 6.055 8.428V13.391ZM21.815 23.351C21.815 28.956 17.536 32.87 10.912 32.87H0V4.87C0.02 3.085 1.872 1.285 3.64 1.218H10.777C16.737 1.218 20.587 4.222 20.587 9.202C20.587 12.462 18.959 14.346 17.988 15.183L17.152 15.9L18.109 16.441C20.432 17.751 21.815 20.333 21.815 23.351V23.351ZM148.135 20.675C148.135 15.58 145.385 14.986 143.325 14.986C139.165 14.986 138.845 19.175 138.845 20.459C138.845 23.376 140.105 26.49 143.665 26.49C145.705 26.49 148.135 25.48 148.135 20.675V20.675ZM154.045 9.738L154.025 30.732C154.025 38.739 148.045 41.584 142.505 41.584C139.815 41.584 136.845 40.858 134.555 39.639L134.105 39.4L134.835 37.53L135.345 36.243C135.905 34.855 136.715 34.509 138.095 34.928C139.155 35.312 140.735 35.739 142.475 35.739C146.045 35.739 148.015 34.05 148.015 30.994V30.356L147.505 30.732C146.215 31.72 144.575 32.205 142.505 32.205C136.445 32.205 132.215 27.445 132.215 20.63C132.215 13.811 136.305 9.228 142.385 9.228C145.445 9.228 147.325 10.309 148.375 11.221L148.675 11.482L148.855 11.132C149.325 10.23 150.275 9.738 151.515 9.738H154.045V9.738ZM67.707 21.184C67.707 17.473 65.411 14.877 62.137 14.877C58.877 14.877 56.608 17.473 56.608 21.184C56.608 24.898 58.878 27.496 62.138 27.496C65.464 27.496 67.708 24.958 67.708 21.184H67.707ZM74.088 21.184C74.088 28.054 69.052 33.04 62.138 33.04C55.234 33.04 50.228 28.054 50.228 21.184C50.228 14.318 55.234 9.331 62.138 9.331C69.052 9.331 74.088 14.318 74.088 21.184ZM105.445 32.677V13.281C105.445 10.941 104.335 9.806 102.025 9.806L99.465 9.796L99.485 27.5H99.465L99.485 32.87H105.445V32.677ZM122.505 9.278C119.175 9.278 117.055 10.765 115.865 12.018L115.465 12.423L115.325 11.873C114.975 10.529 113.795 9.788 112.025 9.788H109.165L109.185 32.683H115.225V22.131C115.225 21.099 115.365 20.205 115.635 19.387C116.355 16.914 117.995 15.378 120.525 15.378C122.555 15.378 123.725 16.453 123.725 19.232V29.203C123.725 31.573 125.195 32.683 127.555 32.683H129.785V18.261C129.785 12.475 127.825 9.278 122.505 9.278V9.278ZM91.436 21.777C91.1964 21.3119 90.8928 20.8827 90.534 20.502L90.326 20.281L90.546 20.069C90.862 19.734 91.186 19.338 91.497 18.878L97.584 9.795H90.195L85.622 16.899C85.363 17.28 84.84 17.472 84.058 17.472H82.48V4.045C82.48 1.36 80.642 0 78.84 0H76.414L76.42 32.691H82.48V23.183H83.63C84.375 23.183 84.883 23.269 85.118 23.675L88.729 30.518C89.736 32.375 90.743 32.691 92.635 32.691H97.651L93.915 26.488L91.436 21.777ZM41.648 21.184C41.648 17.473 39.358 14.877 36.079 14.877C32.819 14.877 30.553 17.473 30.553 21.184C30.553 24.898 32.819 27.496 36.079 27.496C39.405 27.496 41.649 24.958 41.649 21.184H41.648ZM48.028 21.184C48.028 28.054 43.002 33.04 36.079 33.04C29.182 33.04 24.177 28.054 24.177 21.184C24.177 14.318 29.182 9.331 36.079 9.331C43.002 9.331 48.027 14.318 48.027 21.184H48.028ZM98.764 3.81C98.764 1.704 100.464 0 102.544 0C104.634 0 106.334 1.704 106.334 3.81C106.334 5.911 104.634 7.617 102.544 7.617C100.464 7.617 98.764 5.911 98.764 3.81Z"
								fill="#003580" />
							<path
								d="M187.08 25.067C187.06 25.088 184.38 27.915 180.87 27.915C177.66 27.915 174.42 25.941 174.42 21.538C174.42 17.73 176.93 15.071 180.53 15.071C181.7 15.071 183.02 15.492 183.23 16.198L183.26 16.318C183.74 17.919 185.19 18.001 185.47 18.001L188.88 18.005V15.021C188.88 11.085 183.89 9.65698 180.53 9.65698C173.35 9.65698 168.14 14.674 168.14 21.584C168.14 28.489 173.29 33.502 180.4 33.502C186.56 33.502 189.91 29.434 189.94 29.391L190.12 29.172L187.43 24.685L187.08 25.067ZM244.43 9.65698C241.73 9.65698 239.25 10.927 237.58 13.05L237.11 13.651L236.74 12.979C235.53 10.776 233.46 9.65698 230.57 9.65698C227.55 9.65698 225.53 11.35 224.58 12.358L223.97 13.024L223.73 12.144C223.39 10.877 222.26 10.178 220.56 10.178H218.06L218.04 32.984H224.01V22.917C224.01 22.036 224.12 21.163 224.34 20.248C224.93 17.816 226.56 15.202 229.3 15.462C230.99 15.626 231.81 16.936 231.81 19.466V32.984H237.44V22.917C237.44 21.813 237.55 20.99 237.79 20.162C238.3 17.842 240.37 15.459 243.02 15.459C244.93 15.459 245.93 16.545 245.93 19.466V29.649C245.93 31.954 247.28 32.984 249.57 32.984H251.99L252 18.424C252 12.607 249.45 9.65698 244.43 9.65698V9.65698ZM203.66 10.043C196.76 10.043 191.35 15.031 191.35 21.898C191.35 28.765 196.76 33.754 203.66 33.754C210.58 33.754 215.61 28.765 215.61 21.898C215.61 15.031 210.58 10.043 203.66 10.043V10.043ZM158.31 29.446C158.31 27.34 160 25.636 162.09 25.636C164.18 25.636 165.88 27.34 165.88 29.446C165.88 31.548 164.18 33.254 162.09 33.254C160 33.254 158.31 31.548 158.31 29.446ZM203.66 28.209C200.4 28.209 198.13 25.611 198.13 21.898C198.13 18.186 200.4 15.59 203.66 15.59C206.93 15.59 209.23 18.186 209.23 21.898C209.23 25.671 206.99 28.209 203.66 28.209Z"
								fill="#0896FF" />
						</svg>
						<svg class="bk-icon -iconset-close" height="128" style="display:none;" width="128"
							viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
							<path
								d="M69.7 64l33.1-33.2a4 4 0 0 0-5.6-5.6L64 58.3 30.8 25.2a4 4 0 1 0-5.6 5.6L58.3 64 25.2 97.2a4 4 0 1 0 5.6 5.6L64 69.7l33.2 33.1a4 4 0 0 0 5.6-5.6z" />
						</svg>
						<div class="iam_account_access">
							<div class="iam_card iam_login_form">
								<div class="iam_login_text iam_login_text--header">
									请登录继续
								</div>
								<a href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;bkng_action=confirmation&amp;state=UqcEW23w0c6R9iK4McntiSElMJXTBHmPngJCGPZ9XyJ5T2ggsHgF3Z4AWJY2eD9ZHHhnJ6Nd4-uL8C09XW28wr8xfUrOQyI81SBBXbWc6X6AKOc7kpjyOL8bf_2wyz0tKXnrpA4BKAuiQUs3wyX3ePKgXUSTMR4mfq6EDmJJ8T5Tc4vGcaR2zEis82CRDgsrLL5UjE9fGXg0NCPFEHI9fMaMwSX7GrW32xZ7BF70HqEvc9WCaAFFMzaQ5Mf19bsXdelgIoabVxh4tz4bycHEmxLChX1QBAieSHPcXIuVWFzQBh2EApnJ5KZ6UDQ_la3dFs_irHtNiBdsohNLvnbwx0JQwU5LWevF4Wc62Z19kl01YuUy6AMjKbriD0YpLnibtkM0E-EqcUMb3-D9L0Ob3khioGZH51Y1ZmUSmOtIpFCWf9F_NhZRm2a-i7TRs8msAlJSCBT15qOwcLMlvSS6HpEhpithaxfvlf8o8HJI3o_CKNpEoG5fZgcqfKNrQyxTTyeI3VhXhTAz6-TVOd4rMvtgoXpmsrhX8937uBcF6YAgVpimNgds6sOtgJWAhuey0mg9KzMWm7aqzwVUknRI6Zzod0zTz2KDcdoQY1HLecXXMfnFEGmfeEoyEvZ08Kvp3_jFHoSXQLKYLaLiYYtYxBGPV3a4Eq0wsMwH9QgZB-oCAi-D-brKmcnWxb2WeZooPNGCsWP8NbUiBQ_TgPIDshEmPXBzbIyt-lY&amp;lang=zh-cn&amp;response_type=code"
									class="iam_login_btn--email bui-button bui-button--large bui-button--wide bui-spacer"
									role="button" data-bui-component="Button">
									<span class="bui-button__text">
										登录你的帐号
									</span>
								</a>
								<div class="iam_login_or">
									<div class="iam_login_or_divider"></div>
									<span class="iam_login_or_text">or use one of these options</span>
								</div>
								<div class="access-panel__social-buttons">
									<a href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;bkng_action=confirmation&amp;state=UqcEW23w0c6R9iK4McntiSElMJXTBHmPngJCGPZ9XyJ5T2ggsHgF3Z4AWJY2eD9ZHHhnJ6Nd4-uL8C09XW28wr8xfUrOQyI81SBBXbWc6X6AKOc7kpjyOL8bf_2wyz0tKXnrpA4BKAuiQUs3wyX3ePKgXUSTMR4mfq6EDmJJ8T5Tc4vGcaR2zEis82CRDgsrLL5UjE9fGXg0NCPFEHI9fMaMwSX7GrW32xZ7BF70HqEvc9WCaAFFMzaQ5Mf19bsXdelgIoabVxh4tz4bycHEmxLChX1QBAieSHPcXIuVWFzQBh2EApnJ5KZ6UDQ_la3dFs_irHtNiBdsohNLvnbwx0JQwU5LWevF4Wc62Z19kl01YuUy6AMjKbriD0YpLnibtkM0E-EqcUMb3-D9L0Ob3khioGZH51Y1ZmUSmOtIpFCWf9F_NhZRm2a-i7TRs8msAlJSCBT15qOwcLMlvSS6HpEhpithaxfvlf8o8HJI3o_CKNpEoG5fZgcqfKNrQyxTTyeI3VhXhTAz6-TVOd4rMvtgoXpmsrhX8937uBcF6YAgVpimNgds6sOtgJWAhuey0mg9KzMWm7aqzwVUknRI6Zzod0zTz2KDcdoQY1HLecXXMfnFEGmfeEoyEvZ08Kvp3_jFHoSXQLKYLaLiYYtYxBGPV3a4Eq0wsMwH9QgZB-oCAi-D-brKmcnWxb2WeZooPNGCsWP8NbUiBQ_TgPIDshEmPXBzbIyt-lY&amp;lang=zh-cn&amp;response_type=code&amp;prompt=wechat"
										data-popup-href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?popup=1&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;bkng_action=confirmation&amp;lang=zh-cn&amp;response_type=code&amp;state=UswDW23w0c6R9iKKR9_RzUAkhOROrSRaAy-ct2tKaff7eq13c5N0pqtenTyZ6vLtJiZkHbZ9DrB8VZ2xkn4Yl1sLgrM9gyhuS7RD4mLDKLRuDIzwDA5ZpUrcDOUPGA80_O9P5IfyoGcCTf7Bzwg8gvZlevllatFLje_qjRp-3GEhIE0YN0OR5G4k3ORePKpoDXmeHI3Ou5s9uC3xhQHhV_uyS9U_7YgFvBETLvKvUvb-sB02dn0CEnBfkMjovxXamf0ymwC99O_vlrNNU2WycxCBzJJMcFfDDnGYFUzs46FOMiqFgW3rDJUZ5FnN3MD4Do8RwsWLMEzRCq7HUUNIv_0mzsWvn2k7RaHkuu7akYoJqNy1mRMEwIaMj9681TXfvkjI153BPYfFAQGfPn4FeZDjwPuK38GGfqB1e3lhJxXjcFnJmxwp6L6xg882RCoOfMk93UlxTS8cV6TtDbnn8K5L3ilV7P9_H5qrgVlin4htfjRxbgfIxgq3XFN2lcHBTgqXlYuFcpRDwatzggqLgke6EB_4QoRoLF9-IE0mTWJa2QkJGoUJJIjer_7mNoh3tErqVkdbw2lRPZlD7XNyNtp-Gktiwaprmsp583ceLg&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;prompt=wechat"
										class="iam_login_form__social-button iam_login_form__social-button-wechat bui-button bui-button--secondary "
										title="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										aria-label="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										data-component="iam/social-button" data-mask="true">
										<div class="iam_login_form__social-button-content">
											<div class="iam_login_form__social-button-image">
												<svg class="bk-icon -social-providers-wechat" height="24" width="24"
													viewBox="0 0 128 128" role="presentation" aria-hidden="true"
													focusable="false">
													<path fill="#3EBD30"
														d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.7 50.7 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.1 25.1 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z" />
												</svg>
											</div>
										</div>
									</a>
									<a href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;bkng_action=confirmation&amp;state=UqcEW23w0c6R9iK4McntiSElMJXTBHmPngJCGPZ9XyJ5T2ggsHgF3Z4AWJY2eD9ZHHhnJ6Nd4-uL8C09XW28wr8xfUrOQyI81SBBXbWc6X6AKOc7kpjyOL8bf_2wyz0tKXnrpA4BKAuiQUs3wyX3ePKgXUSTMR4mfq6EDmJJ8T5Tc4vGcaR2zEis82CRDgsrLL5UjE9fGXg0NCPFEHI9fMaMwSX7GrW32xZ7BF70HqEvc9WCaAFFMzaQ5Mf19bsXdelgIoabVxh4tz4bycHEmxLChX1QBAieSHPcXIuVWFzQBh2EApnJ5KZ6UDQ_la3dFs_irHtNiBdsohNLvnbwx0JQwU5LWevF4Wc62Z19kl01YuUy6AMjKbriD0YpLnibtkM0E-EqcUMb3-D9L0Ob3khioGZH51Y1ZmUSmOtIpFCWf9F_NhZRm2a-i7TRs8msAlJSCBT15qOwcLMlvSS6HpEhpithaxfvlf8o8HJI3o_CKNpEoG5fZgcqfKNrQyxTTyeI3VhXhTAz6-TVOd4rMvtgoXpmsrhX8937uBcF6YAgVpimNgds6sOtgJWAhuey0mg9KzMWm7aqzwVUknRI6Zzod0zTz2KDcdoQY1HLecXXMfnFEGmfeEoyEvZ08Kvp3_jFHoSXQLKYLaLiYYtYxBGPV3a4Eq0wsMwH9QgZB-oCAi-D-brKmcnWxb2WeZooPNGCsWP8NbUiBQ_TgPIDshEmPXBzbIyt-lY&amp;lang=zh-cn&amp;response_type=code&amp;prompt=apple"
										data-popup-href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?popup=1&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;bkng_action=confirmation&amp;lang=zh-cn&amp;response_type=code&amp;state=UswDW23w0c6R9iKKR9_RzUAkhOROrSRaAy-ct2tKaff7eq13c5N0pqtenTyZ6vLtJiZkHbZ9DrB8VZ2xkn4Yl1sLgrM9gyhuS7RD4mLDKLRuDIzwDA5ZpUrcDOUPGA80_O9P5IfyoGcCTf7Bzwg8gvZlevllatFLje_qjRp-3GEhIE0YN0OR5G4k3ORePKpoDXmeHI3Ou5s9uC3xhQHhV_uyS9U_7YgFvBETLvKvUvb-sB02dn0CEnBfkMjovxXamf0ymwC99O_vlrNNU2WycxCBzJJMcFfDDnGYFUzs46FOMiqFgW3rDJUZ5FnN3MD4Do8RwsWLMEzRCq7HUUNIv_0mzsWvn2k7RaHkuu7akYoJqNy1mRMEwIaMj9681TXfvkjI153BPYfFAQGfPn4FeZDjwPuK38GGfqB1e3lhJxXjcFnJmxwp6L6xg882RCoOfMk93UlxTS8cV6TtDbnn8K5L3ilV7P9_H5qrgVlin4htfjRxbgfIxgq3XFN2lcHBTgqXlYuFcpRDwatzggqLgke6EB_4QoRoLF9-IE0mTWJa2QkJGoUJJIjer_7mNoh3tErqVkdbw2lRPZlD7XNyNtp-Gktiwaprmsp583ceLg&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;prompt=apple"
										class="iam_login_form__social-button iam_login_form__social-button-apple bui-button bui-button--secondary "
										title="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										aria-label="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										data-component="iam/social-button" data-mask="true">
										<div class="iam_login_form__social-button-content">
											<div class="iam_login_form__social-button-image">
												<svg class="bk-icon -social-providers-apple" height="24" width="24"
													viewBox="0 0 170 170" role="presentation" aria-hidden="true"
													focusable="false">
													<path
														d="M150.37 130.25c-2.45 5.66-5.35 10.87-8.71 15.66-4.58 6.53-8.33 11.05-11.22 13.56-4.48 4.12-9.28 6.23-14.42 6.35-3.69 0-8.14-1.05-13.32-3.18-5.197-2.12-9.973-3.17-14.34-3.17-4.58 0-9.492 1.05-14.746 3.17-5.262 2.13-9.501 3.24-12.742 3.35-4.929.21-9.842-1.96-14.746-6.52-3.13-2.73-7.045-7.41-11.735-14.04-5.032-7.08-9.169-15.29-12.41-24.65-3.471-10.11-5.211-19.9-5.211-29.378 0-10.857 2.346-20.221 7.045-28.068 3.693-6.303 8.606-11.275 14.755-14.925s12.793-5.51 19.948-5.629c3.915 0 9.049 1.211 15.429 3.591 6.362 2.388 10.447 3.599 12.238 3.599 1.339 0 5.877-1.416 13.57-4.239 7.275-2.618 13.415-3.702 18.445-3.275 13.63 1.1 23.87 6.473 30.68 16.153-12.19 7.386-18.22 17.731-18.1 31.002.11 10.337 3.86 18.939 11.23 25.769 3.34 3.17 7.07 5.62 11.22 7.36-.9 2.61-1.85 5.11-2.86 7.51zM119.11 7.24c0 8.102-2.96 15.667-8.86 22.669-7.12 8.324-15.732 13.134-25.071 12.375a25.222 25.222 0 0 1-.188-3.07c0-7.778 3.386-16.102 9.399-22.908 3.002-3.446 6.82-6.311 11.45-8.597 4.62-2.252 8.99-3.497 13.1-3.71.12 1.083.17 2.166.17 3.24z" />
												</svg>
											</div>
										</div>
									</a>
								</div>
								<div class="iam_login_text iam_login_text--footer">
									还没有帐号？ <a
										href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;dt=1683776099&amp;aid=397645&amp;bkng_action=confirmation&amp;state=UqcEW23w0c6R9iK4McntiSElMJXTBHmPngJCGPZ9XyJ5T2ggsHgF3Z4AWJY2eD9ZHHhnJ6Nd4-uL8C09XW28wr8xfUrOQyI81SBBXbWc6X6AKOc7kpjyOL8bf_2wyz0tKXnrpA4BKAuiQUs3wyX3ePKgXUSTMR4mfq6EDmJJ8T5Tc4vGcaR2zEis82CRDgsrLL5UjE9fGXg0NCPFEHI9fMaMwSX7GrW32xZ7BF70HqEvc9WCaAFFMzaQ5Mf19bsXdelgIoabVxh4tz4bycHEmxLChX1QBAieSHPcXIuVWFzQBh2EApnJ5KZ6UDQ_la3dFs_irHtNiBdsohNLvnbwx0JQwU5LWevF4Wc62Z19kl01YuUy6AMjKbriD0YpLnibtkM0E-EqcUMb3-D9L0Ob3khioGZH51Y1ZmUSmOtIpFCWf9F_NhZRm2a-i7TRs8msAlJSCBT15qOwcLMlvSS6HpEhpithaxfvlf8o8HJI3o_CKNpEoG5fZgcqfKNrQyxTTyeI3VhXhTAz6-TVOd4rMvtgoXpmsrhX8937uBcF6YAgVpimNgds6sOtgJWAhuey0mg9KzMWm7aqzwVUknRI6Zzod0zTz2KDcdoQY1HLecXXMfnFEGmfeEoyEvZ08Kvp3_jFHoSXQLKYLaLiYYtYxBGPV3a4Eq0wsMwH9QgZB-oCAi-D-brKmcnWxb2WeZooPNGCsWP8NbUiBQ_TgPIDshEmPXBzbIyt-lY&amp;lang=zh-cn&amp;response_type=code&prompt=register"
										class="iam_login_link">创建帐号</a>
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
	<div style="display: none;">
		<svg class="bk-icon -fonticon-aclose" height="32" width="36" viewBox="0 0 36 32" role="presentation"
			aria-hidden="true" focusable="false">
			<path
				d="M34 3.2L30.8 0 18 12.8 5.2 0 2 3.2 14.8 16 2 28.8 5.2 32 18 19.2 30.8 32l3.2-3.2L21.2 16 34 3.2z" />
		</svg>
		<svg class="bk-icon -fonticon-downchevron" height="32" width="51" viewBox="0 0 51 32" role="presentation"
			aria-hidden="true" focusable="false">
			<path d="M45.1.2L25.7 19.7 6.3.2 0 6.5l25.7 25.7L51.4 6.5z" />
		</svg>
		<svg class="bk-icon -fonticon-upchevron" height="32" width="51" viewBox="0 0 51 32" role="presentation"
			aria-hidden="true" focusable="false">
			<path d="M6.3 32.2l19.4-19.5 19.4 19.5 6.3-6.3L25.7.2 0 25.9z" />
		</svg>
		<svg class="bk-icon -fonticon-checkempty" height="32" width="32" viewBox="0 0 32 32" role="presentation"
			aria-hidden="true" focusable="false">
			<path
				d="M16 30c7.732 0 14-6.268 14-14S23.732 2 16 2 2 8.268 2 16s6.268 14 14 14zm0 2C7.163 32 0 24.837 0 16S7.163 0 16 0s16 7.163 16 16-7.163 16-16 16z" />
		</svg>
		<svg class="bk-icon -fonticon-checkno2" height="32" width="32" viewBox="0 0 32 32" role="presentation"
			aria-hidden="true" focusable="false">
			<path
				d="M16 30c7.732 0 14-6.268 14-14S23.732 2 16 2 2 8.268 2 16s6.268 14 14 14zm0 2C7.163 32 0 24.837 0 16S7.163 0 16 0s16 7.163 16 16-7.163 16-16 16z" />
			<path
				d="M24.587 11.039L13.825 21.583c-.054.09-.12.182-.208.271l-.504.505c-.278.278-.607.403-.733.276l-5.125-5.366c-.126-.126-.002-.454.276-.732l.504-.505c.279-.279.607-.403.733-.277l3.842 4.022L23.073 9.525a.715.715 0 0 1 1.009 0l.505.505a.715.715 0 0 1 0 1.009z" />
		</svg>
	</div>
	<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
		// <![CDATA[
		/*extern booking */
		booking.ensureNamespaceExists('env');
		booking.env.b_page = '';
// ]]>
	</script>
	<div style="display: none;" id="logo-not-document-write"></div>
	<script type="text/javascript" nonce="JZZpY8EmTdA4yp2">
		setTimeout(function () {
			var img = new Image(1, 1);
			img.src = '/logo?ver=1&sid=f0f82b20b46106bf73b9641ed765ee02&t=' + 1683776095 + 1;
		}, 0);
	</script>
	<noscript>
		<img style="display:none" src="/logo?ver=0&sid=f0f82b20b46106bf73b9641ed765ee02&t=1683776095">
	</noscript>
	<script src="./script/static/js/raf_alicloud_a/45d8698d75530fb1caf4234ae781820e86c68a9a.js"
		crossorigin nonce="JZZpY8EmTdA4yp2"></script>
	</div>
	<span id="req_info"
		style="display:none;">1720070,1735340,1720070|1,1719990,1720200|2,1732200,1728590,1724850,1724850|1,1733470,1728590|1,1719990|1,1728580,1728580|1</span>
</body>

</html>