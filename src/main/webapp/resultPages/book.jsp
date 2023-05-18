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

<link href="./script" rel="dns-prefetch"
	crossorigin>
<link href="./script" rel="dns-prefetch"
	crossorigin>
<link href="https://shelves.booking.com/" rel="preconnect" crossorigin>
<html lang="zh-cn"
	prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# booking_com: http://ogp.me/ns/fb/booking_com#"
	class="noJS b_chrome b_chrome_112 supports_inline-block supports_flexbox_unprefixed supports_fontface no-js">

<head profile="http://a9.com/-/spec/opensearch/1.1/">
<meta name="referrer" content="origin">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<script nonce="ybUYWKfiYBp3lUr">
    ; (function (w) {
      var ts = +new Date();
      w.PageLoadTimer = {};
      w.PageLoadTimer.start = ts;
    }(window));
  </script>
<script nonce="ybUYWKfiYBp3lUr">
    ; (function () {
      window.b_early_errors = window.b_early_errors || [];
      window.onerror = function () {
        window.b_early_errors.push(arguments);
      };
    }());
  </script>
<link rel="stylesheet"
	href="./script/static/css/main_book_alicloud_a.iq_ltr/7307716772cbe91edfb8a54e6c3a9e43467d06ee.css"
	data-main-css="1" />
<link rel="stylesheet"
	href="./script/static/css/gprof_icons_alicloud_a.iq_ltr/f9a9959fb174be6a1a61e78d982a7444775f1419.css" />

<link rel="stylesheet" type="text/css"
	href="./script/static/css/book_alicloud_a.iq_ltr/0ac68d2bb2f9a8681ececa40d28604f9ecd3347c.css" />
<link rel="stylesheet" type="text/css"
	href="./script/static/css/incentives_bp_alicloud_a.iq_ltr/0032422f85fa9da536e5fbdc7e440951f3e111e6.css" />

<style nonce="ybUYWKfiYBp3lUr">
#basiclayout, .basiclayout {
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

.b_msie_6 #top, .b_msie_6 body.header_reshuffle #top {
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
	background: #fff
		url("./script/static/img/nobg_all_blue_iq/b700d9e3067c1186a3364012df4fe1c48ae6da44.png")
		repeat-x;
	background-position: 0 -50px;
}
</style>
<link rel="stylesheet"
	href="./script/static/css/cjk/969f60bdd3700d13d4b9df8937fcc8745bbfa45b.css" />
<link rel="preload" as="script"
	href="./script/static/js/core-deps-inlinedet_alicloud_a/6da0bf621035bb8a2f9c756d6a89dda03b2f7864.js"
	crossorigin nonce="ybUYWKfiYBp3lUr">
<link rel="preload" as="script"
	href="./script/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js"
	crossorigin nonce="ybUYWKfiYBp3lUr">
<link rel="preload" as="script"
	href="./script/static/js/main_cn_alicloud_a/5a592a123d4c7bbd3e334e1a8e8526bca30aea75.js"
	crossorigin nonce="ybUYWKfiYBp3lUr">
<link rel="preload" as="script"
	href="./script/static/js/searchbox_alicloud_a/f37d10ad9271707442b5c0b09ae622b711f498d2.js"
	crossorigin nonce="ybUYWKfiYBp3lUr">
<link rel="preload" as="script"
	href="./script/static/js/error_catcher_bec_alicloud_a/0acd2ada6c74d5dec978a04ea837952bdf050cd2.js"
	crossorigin nonce="ybUYWKfiYBp3lUr">
<script nonce="ybUYWKfiYBp3lUr"> if (window.performance && performance.measure && 'b-stylesheets') { performance.measure('b-stylesheets'); } </script>
<meta name="robots" content="noindex,follow" />
<link rel="canonical" href="https://secure.booking.com/book.zh-cn.html" />
<meta name="booking-verification"
	content="UmFuZG9tSVYNXH-SJEOAgGLOhUKbm3Mgewjn0ensAd6Tupx8sj4RVUGuYLsD8A_GeOc5yqWLaAAo6OX6dQnqEXY-t7idoFqRePuxfDcd1kl3gq4RzPIMHezUNpFx8Ttagtprxdc5JKnIDUiW4QemLc_V1ZeH4RNOnoOLNZBgTBhKpmSKIWCGMmTR8lNxaYzRM485bmT_brfkerAgzOcGZ7yybDuOtTPO2-gYThUK0W3Rv1C8OfXVoKFRo_jWGHdyU1dKYou7dBmHUbGn4NrJ98Lkkz7VXNs2RNZwhNrp-mmYEWDoi1SHquimE_q7I4XV8axw739yrUZ5jeSH64zrTo4wYXlyrSk_jHNzbP7ZK3QuZLr98mfD-_OPve_6XrRTeX4-BjpV3NqfoR1yitkeZMrkWyS4wQei-SD_WlPnnuXC54UziPgCjyyq4aXX8cQp" />
<meta name="twitter:app:id:iphone" content="367003839" />
<meta name="twitter:app:name:ipad"
	content="Booking.com Hotel Reservations Worldwide & Hotel Deals" />
<meta name="twitter:app:id:ipad" content="367003839" />
<meta name="twitter:app:name:googleplay"
	content="Booking.com Hotel Reservations" />
<meta name="twitter:app:id:googleplay" content="com.booking" />
<meta property="al:ios:app_store_id" content="367003839">
<meta property="al:ios:app_name"
	content="Booking.com Hotel Reservations">
<meta property="al:android:app_name"
	content="Booking.com Hotel Reservation">
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
<meta name="twitter:description"
	content="无论是星级酒店还是特色民宿，我们都提供最优惠价格保证！85000多个目的地，家各类住宿任你搜！">
<meta property="og:type" content="company" />
<meta property="og:title" content="Booking.com: 酒店、民宿、公寓....超多选择尽在这里" />
<meta property="og:image"
	content="./script/static/img/fb/4/08e28aab377dcdf343bb51d26fa7f022ea325471.jpg" />
<meta property="og:description"
	content="无论是星级酒店还是特色民宿，我们都提供最优惠价格保证！85000多个目的地，家各类住宿任你搜！" />
<meta property="og:locale" content="zh_CN" />
<meta property="og:url"
	content="https://secure.booking.com/book.zh-cn.html" />
<meta property="og:site_name" content="Booking.com" />
<meta property="fb:app_id" content="145362478954725" />

<link rel="alternate" type="text/html" hreflang="zh-cn"
	href="./book.jsp" title="简体中文" />

<link rel="icon"
	href="./script/static/img/favicon-new-32/40749a316c45e239a7149b6711ea4c48d10f8d89.ico"
	sizes="any">
<link rel="icon"
	href="./script/static/img/favicon/9ca83ba2a5a3293ff07452cb24949a5843af4592.svg"
	type="image/svg+xml">
<link rel="apple-touch-icon"
	href="./script/static/img/apple-touch-icon-blue/5db9fd30d96b1796883ee94be7dddce50b73bb38.png" />
<link rel="help"
	href="http:&#47;&#47;www.booking.com/faq.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&&amp;" />
<link rel="search" type="application/opensearchdescription+xml"
	href="./script/static/opensearch/zh-cn/e44d907bf77c5add70d4a46fce6bff10be3e8d18.xml"
	title="Booking.com在线酒店预订 (起价 secure.booking.com)" />
<link href="./script/105443419075154950489"
	rel="publisher" />
<script nonce="ybUYWKfiYBp3lUr">
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
        "b_gtt": 'aFIeNZIfVUSSObaNSCRMJdRIfVNASCRCRMJZeKe',
        "b_action": 'book',
        "b_secure_domain": 'https://secure.booking.com',
        "b_site_type": 'www',
        "b_site_type_id": '1',
        "b_query_params_with_lang_no_ext": '?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&',
        "b_query_params_with_lang_no_ext_enforce_lang_aid_currency": '?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&;lang=zh-cn;aid=397645;selected_currency=CNY',
        "b_travel_comm_url_with_lang": 'https://community.booking.com/?profile.language=en',
        "b_calendar2": '1',
        "BHDTJdReLGMeEcYPffcVDZBZMO": true,
        "b_max_los_data_for_prefilled_dest": { "experiment": "BHDTJdReQHUYYOLEaMYYXO", "has_extended_los": 1, "max_allowed_los": 90, "extended_los": 90, "default_los": 45, "is_fullon": 0 },
        /*
        */
        "b_partner_channel_id": '17',
        "b_bookings_owned": '1',
        "b_google_maps_key_params": '&indexing=true',
        "b_lang": 'zh',
        "b_has_valid_dates": 0,
        "b_countrycode": 'cn',
        "b_guest_country": 'cn',
        "b_locale": 'zh-cn',
        "b_lang_for_url": 'zh-cn',
        "b_this_urchin": '/book.zh-cn.html?label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&hostname=www.booking.com&amp;hotel_id=4685428&amp;installment_count=1&amp;interval=1&amp;nr_rooms_468542801_246088447_2_1_0=2&amp;raf_cm_later=0&amp;room1=A&amp;rt_cheapest_search_price=325&amp;rt_num_blocks=7&amp;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&amp;rt_num_rooms=7&amp;rt_pageview_id=20ce16fbc372006c&amp;rt_pos_final=1.1&amp;rt_pos_selected=1&amp;rt_pos_selected_within_room=1&amp;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&amp;rt_selected_block_position=1&amp;rt_selected_total_price=650&amp;srpvid=e35016eadacb0185&amp;stage=1&&',
        "b_flag_to_suggest": 'cn',
        "b_companyname": 'Booking.com',
        "b_partner_vertical": 'channel_seo_brand',
        b_date_format: { "numeric_date_range_both_years": "{full_year}/{month}/{day_of_month} - {full_year_until}/{month_until}/{day_of_month_until}", "day_month": "{month_name}{day_name}日", "day_short_month_year": "{full_year}年{short_month_name}{day_name}日", "numeric_date_range": "{month}/{day_of_month} - {month_until}/{day_of_month_until}", "day_month_between": "{month_name}{day_name}日 - {month_name_until}{day_name_until}日（含首尾两日）", "day_short_month_year_other": "{full_year}年{short_month_name}{day_name_other}日", "day_month_until": "{month_name}{day_name}日前（含）", "day_short_month_time": "{short_month_name}{day_of_month}日{time}", "day_short_month_year_from": "{full_year}年{short_month_name}{day_name}日起", "numeric_day_month_year_time_before": "{full_year}年{month_name_0}{day_name_0}日{time}前", "day_short_month_year_until": "{full_year}年{short_month_name}{day_name}日前（含）", "long_date_range_both_years": "{full_year}年{month_name}{day_of_month}日 - {full_year_until}年{month_name_until}{day_of_month_until}日", "month_with_year": "{full_year}年{month_name_with_year_only}", "date_with_weekday": "{full_year}年{month_name}{day_of_month}日{weekday}", "day_month_on": "{month_name}{day_name}日", "day_month_year_time_before": "{year}年{month_name}{day_name}日{time}前", "day_month_year_from": "{full_year}年{month_name}{day_name}日起", "day_month_year_on": "{full_year}年{month_name}{day_name}日", "ux_day_month": "{month_1}{day_1}日", "day_short_month_time_between": "{short_month_name}{day_of_month}日{time}-{time_until}", "day_month_year_until": "{full_year}年{month_name}{day_name}日前（含）", "day_short_month_year_between": "{full_year}年{short_month_name}{day_of_month}日 – {full_year_until}年{short_month_name_until}{day_of_month_until}日", "date_range_with_short_weekday_short_month": "{short_month_name}{day_of_month}日{short_weekday} - {short_month_name_until}{day_of_month_until}日{short_weekday_until}", "date_with_year": "{full_year}年{month_name}{day_of_month}日", "date_with_weekday_with_markers": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}", "day_month_year": "{full_year}年{month_name}{day_name}日", "short_date": "{full_year}年{short_month_name}{day_of_month}日", "numeric_day_month_year_between": "{full_year}年{month_name_0}月{day_name_0}日至{full_year_until}年{month_name_0_until}月{day_name_0_until}日（含首尾两日）", "ux_day_month_on": "{month_2}{day_2}日", "day_of_month_only": "{day_of_month}", "date_with_short_weekday_without_year": "{month_name}{day_of_month}日{short_weekday}", "day_month_other": "{month_name}{day_other}日", "date_with_short_weekday_with_year": "{full_year}年{month_name}{day_of_month}日{short_weekday}", "day_short_month_until": "{short_month_name}{day_name}日前（含）", "day_month_from": "{month_name}{day_name}日起", "date_with_weekday_time_from": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time}之后", "day_short_month_between": "{short_month_name}{day_of_month}日 – {short_month_name_until}{day_of_month_until}日\n", "numeric_day_month_year_until": "{full_year}年{month_name_0}{day_name_0}日前（含）", "day_month_year_between": "{full_year}年{month_name}{day_name}日 - {full_year_until}年{month_name_until}{day_name_until}日（含首尾两日）", "date_with_weekday_time_from_until": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time} - {time_until}", "day_month_year_other": "{full_year}年{month_name}{day_other}日", "numeric_date": "{full_year}/{month}/{day_of_month}", "date_with_weekday_to": "{full_year}年{month_name_to}{day_of_month}日{weekday_to}", "day_short_month_year_time_between": "{full_year}年{short_month_name}{day_of_month}日{time}-{time_until}", "short_weekday_only": "{short_weekday}", "in_month_with_year": "{full_year}年{month_name_in}", "short_month_only": "{short_month_name}", "date_with_weekday_time_until": "{full_year}年{begin_marker}{month_name}{day_of_month}日{end_marker}{weekday}{time}之前", "range_from_long_date_time_until_long_date_time": "从{full_year}年{month_name}{day_of_month}日{time}至{full_year_until}年{month_name_until}{day_of_month_until}日{time_until}", "numeric_day_month_year_from": "{full_year}年{month_name_0}{day_name_0}日起", "numeric_day_month_year_on": "{full_year}年{month_name_0}{day_name_0}日", "date_without_year": "{month_name}{day_of_month}日", "short_month_with_year": "{full_year}年{short_month_name}", "date_with_weekday_time_at": "date_with_weekday_time_at", "numeric_day_month_year": "{full_year}年{month_name_0}{day_name_0}日", "day_short_month_year_time": "{full_year}年{short_month_name}{day_of_month}日{time}", "short_date_with_weekday_without_year": "{short_month_name}{day_of_month}日{short_weekday}", "date_with_weekday_from": "{full_year}年{month_name_from}{day_of_month}日{weekday_from}", "day_short_month_year_on": "{full_year}年{short_month_name}{day_name}日", "short_date_with_weekday": "{full_year}年{short_month_name}{day_of_month}日{short_weekday}", "month_name_only": "{month_name_nom}", "from_month_with_year": "{full_year}年{month_name_from}至今", "short_date_without_year_range": "{short_month_name}{day_of_month}日 - {short_month_name_until}{day_of_month_until}日", "short_date_without_year": "{short_month_name}{day_of_month}日" },
        b_month_for_formatted_date: { "1": { "genitive_uc": "1月", "short_name": "1月", "name_other": "1月", "name_with_year_only": "1月", "day_to": "1月", "name_from": "1月", "short_name_only": "1月", "name_def_article_lc": "1月", "name_def_article_uc": "1月", "name_to": "1月", "month_1": "1月", "on_day_month": "1", "to_month_lc": "1月", "name_only": "1月", "short_name_uc": "1月", "month_2": "1月", "in_month_lc": "1月", "name_uc": "1月", "name_in": "1月", "name_lc": "1月", "name": "1月", "genitive_lc": "1月" }, "10": { "genitive_lc": "10月", "name_lc": "10月", "name_def_article_uc": "10月", "name": "10月", "in_month_lc": "10月", "short_name_only": "10月", "name_from": "10月", "name_uc": "10月", "name_in": "10月", "name_def_article_lc": "10月", "short_name_uc": "10月", "name_only": "10月", "month_2": "10月", "name_to": "10月", "genitive_uc": "10月", "on_day_month": "10", "name_other": "10月", "name_with_year_only": "10月", "to_month_lc": "10月", "short_name": "10月", "month_1": "10月" }, "11": { "genitive_lc": "11月", "name": "11月", "name_def_article_uc": "11月", "name_lc": "11月", "name_in": "11月", "name_uc": "11月", "name_def_article_lc": "11月", "name_from": "11月", "short_name_only": "11月", "in_month_lc": "11月", "month_2": "11月", "short_name_uc": "11月", "name_only": "11月", "name_with_year_only": "11月", "to_month_lc": "11月", "on_day_month": "11", "name_other": "11月", "month_1": "11月", "short_name": "11月", "name_to": "11月", "genitive_uc": "11月" }, "12": { "month_2": "12月", "short_name_uc": "12月", "name_only": "12月", "name_other": "12月", "on_day_month": "12", "name_with_year_only": "12月", "to_month_lc": "12月", "short_name": "12月", "month_1": "12月", "name_to": "12月", "genitive_uc": "12月", "genitive_lc": "12月", "name_def_article_uc": "12月", "name_lc": "12月", "name": "12月", "name_uc": "12月", "name_in": "12月", "name_def_article_lc": "12月", "in_month_lc": "12月", "short_name_only": "12月", "name_from": "12月" }, "2": { "name_other": "2月", "name_with_year_only": "2月", "short_name": "2月", "genitive_uc": "2月", "day_to": "2月", "name_def_article_lc": "2月", "name_from": "2月", "short_name_only": "2月", "name_def_article_uc": "2月", "on_day_month": "2", "to_month_lc": "2月", "month_1": "2月", "name_to": "2月", "month_2": "2月", "short_name_uc": "2月", "name_only": "2月", "name_in": "2月", "name_uc": "2月", "in_month_lc": "2月", "genitive_lc": "2月", "name_lc": "2月", "name": "2月" }, "3": { "genitive_uc": "3月", "name_other": "3月", "name_with_year_only": "3月", "short_name": "3月", "day_to": "3月", "name_from": "3月", "short_name_only": "3月", "name_def_article_lc": "3月", "name_def_article_uc": "3月", "name_to": "3月", "on_day_month": "3", "to_month_lc": "3月", "month_1": "3月", "short_name_uc": "3月", "name_only": "3月", "month_2": "3月", "in_month_lc": "3月", "name_in": "3月", "name_uc": "3月", "genitive_lc": "3月", "name_lc": "3月", "name": "3月" }, "4": { "name_with_year_only": "4月", "to_month_lc": "4月", "on_day_month": "4", "name_other": "4月", "month_1": "4月", "short_name": "4月", "genitive_uc": "4月", "name_to": "4月", "month_2": "4月", "short_name_uc": "4月", "name_only": "4月", "name_uc": "4月", "name_in": "4月", "name_def_article_lc": "4月", "short_name_only": "4月", "name_from": "4月", "in_month_lc": "4月", "genitive_lc": "4月", "name": "4月", "name_lc": "4月", "name_def_article_uc": "4月" }, "5": { "name_uc": "5月", "name_in": "5月", "name_def_article_lc": "5月", "in_month_lc": "5月", "name_from": "5月", "short_name_only": "5月", "genitive_lc": "5月", "name_lc": "5月", "name_def_article_uc": "5月", "name": "5月", "name_other": "5月", "on_day_month": "5", "to_month_lc": "5月", "name_with_year_only": "5月", "short_name": "5月", "month_1": "5月", "name_to": "5月", "genitive_uc": "5月", "month_2": "5月", "short_name_uc": "5月", "name_only": "5月" }, "6": { "name_def_article_uc": "6月", "name_lc": "6月", "name": "6月", "genitive_lc": "6月", "name_def_article_lc": "6月", "name_uc": "6月", "name_in": "6月", "in_month_lc": "6月", "short_name_only": "6月", "name_from": "6月", "month_2": "6月", "name_only": "6月", "short_name_uc": "6月", "short_name": "6月", "month_1": "6月", "on_day_month": "6", "name_other": "6月", "name_with_year_only": "6月", "to_month_lc": "6月", "genitive_uc": "6月", "name_to": "6月" }, "7": { "name_with_year_only": "7月", "to_month_lc": "7月", "name_other": "7月", "on_day_month": "7", "month_1": "7月", "short_name": "7月", "name_to": "7月", "genitive_uc": "7月", "month_2": "7月", "short_name_uc": "7月", "name_only": "7月", "name_uc": "7月", "name_in": "7月", "name_def_article_lc": "7月", "short_name_only": "7月", "name_from": "7月", "in_month_lc": "7月", "genitive_lc": "7月", "name": "7月", "name_lc": "7月", "name_def_article_uc": "7月" }, "8": { "name": "8月", "name_def_article_uc": "8月", "name_lc": "8月", "genitive_lc": "8月", "name_def_article_lc": "8月", "name_uc": "8月", "name_in": "8月", "short_name_only": "8月", "name_from": "8月", "in_month_lc": "8月", "month_2": "8月", "name_only": "8月", "short_name_uc": "8月", "month_1": "8月", "short_name": "8月", "to_month_lc": "8月", "name_with_year_only": "8月", "name_other": "8月", "on_day_month": "8", "genitive_uc": "8月", "name_to": "8月" }, "9": { "name": "9月", "name_def_article_uc": "9月", "name_lc": "9月", "genitive_lc": "9月", "name_def_article_lc": "9月", "name_in": "9月", "name_uc": "9月", "short_name_only": "9月", "name_from": "9月", "in_month_lc": "9月", "month_2": "9月", "name_only": "9月", "short_name_uc": "9月", "month_1": "9月", "short_name": "9月", "name_with_year_only": "9月", "to_month_lc": "9月", "on_day_month": "9", "name_other": "9月", "name_to": "9月", "genitive_uc": "9月" } },
        b_weekday_formatted_date: { "1": { "short_uc": "周一", "name_to": "星期一", "name_other": "星期一", "name_other_uc": "星期一", "name_from": "星期一", "name_uc": "星期一", "name_on": "星期一", "short": "周一", "shortest": "周一", "name": "周一", "name_lc": "星期一", "name_from_preposition": "周一" }, "2": { "name": "周二", "name_from_preposition": "周二", "name_lc": "星期二", "name_on": "星期二", "shortest": "周二", "short": "周二", "name_uc": "星期二", "name_from": "星期二", "name_other_uc": "星期二", "name_other": "星期二", "short_uc": "周二", "name_to": "星期二" }, "3": { "name_other": "星期三", "short_uc": "周三", "name_to": "星期三", "name_other_uc": "星期三", "name_uc": "星期三", "name_from": "星期三", "name": "周三", "name_lc": "星期三", "name_from_preposition": "周三", "shortest": "周三", "short": "周三", "name_on": "星期三" }, "4": { "name_uc": "星期四", "name_from": "星期四", "name_lc": "星期四", "name_from_preposition": "周四", "name": "周四", "shortest": "周四", "short": "周四", "name_on": "星期四", "name_other": "星期四", "short_uc": "周四", "name_to": "星期四", "name_other_uc": "星期四" }, "5": { "name_other_uc": "星期五", "short_uc": "周五", "name_to": "星期五", "name_other": "星期五", "shortest": "周五", "short": "周五", "name_on": "星期五", "name": "周五", "name_lc": "星期五", "name_from_preposition": "周五", "name_from": "星期五", "name_uc": "星期五" }, "6": { "name_other_uc": "星期六", "name_to": "星期六", "short_uc": "周六", "name_other": "星期六", "short": "周六", "shortest": "周六", "name_on": "星期六", "name": "周六", "name_lc": "星期六", "name_from_preposition": "周六", "name_from": "星期六", "name_uc": "星期六" }, "7": { "name_to": "星期日", "short_uc": "周日", "name_other": "星期日", "name_other_uc": "星期日", "name_from": "星期日", "name_uc": "星期日", "shortest": "周日", "short": "周日", "name_on": "星期日", "name": "周日", "name_lc": "星期日", "name_from_preposition": "周日" }, "8": { "name_from": "name_from", "name_uc": "name_uc", "shortest": "shortest", "short": "short", "name_on": "name_on", "name": "每日", "name_from_preposition": "任意一天", "name_lc": "every day", "short_uc": "short_uc", "name_to": "name_to", "name_other": "name_other", "name_other_uc": "name_other_uc" } },
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
        b_notify_favicon: './script/static/img/b25logo/favicon-notify/a13a71499ad008547bfc492964c49c3772de7f67.ico',
        fe_enable_login_with_phone_number: 1,
        fe_enable_signup_with_phone_number: 1,
        b_hotel_history_count: parseInt('6', 10),
        asyncLoader: {
          async_assistant_entrypoint_css: './script/static/css/assistant_entrypoint_alicloud_a.iq_ltr/611b70b00745fa4412a0101292fb0a1e4c97741e.css',
          async_assistant_entrypoint_js: './script/static/js/assistant_entrypoint_alicloud_a/16a6ac79d0564ea12e63ca1c07de8d75b84bdf91.js',
          async_atlas_places_js: './script/static/js/atlas_places_async_alicloud_a/9a9bcd998016ecc6409aa42c8605f7850a767a34.js',
          async_atlas_v2_cn_js: './script/static/js/async_atlas_v2_cn_alicloud_a/5f6f1e007c41a437a31a8a2cfcd26dd218a69ec3.js',
          async_atlas_v2_non_cn_js: './script/static/js/async_atlas_v2_non_cn_alicloud_a/60a4855b8772d58942de76740d96ceb98493a1d7.js',
          image_gallery_js: './script/static/js/ski_lp_overview_panel_alicloud_a/9d8e7cfd33a37ffb15285d98f6970024f06cf36d.js',
          image_gallery_css: './script/static/css/ski_lp_overview_panel_alicloud_a.iq_ltr/09286ad17357b015e15295d3ef2a7b66987dfecb.css',
          async_libphonenumberjs_js: './script/mobile/js/libphonenumber-js_alicloud_a/c6d646cc9ee14bdfa088b8b75299a762b98f7263.js',
          async_lists_js: './script/static/js/async_lists_alicloud_a/07f3a4a47ebd55362a0956eabdd43231659810cb.js',
          async_bp_change_dates_css: './script/static/css/async_bp_change_dates_alicloud_a.iq_ltr.css',
          async_bp_change_dates_js: './script/static/js/async_bp_change_dates_alicloud_a.js',
          async_bp_adyen_sdk_js: './script/libs/adyen/adyen-3.13.0.js',
          async_bp_adyen_sdk_css: './script/libs/adyen/adyen-3.13.0.css',
          async_wpm_overlay_css: './script/static/css/async_wpm_overlay_assets_alicloud_a.iq_ltr/abb304bf3600a5cf5f7406a27f042cf1ce2429b1.css',
          async_wpm_overlay_js: './script/static/js/async_wpm_overlay_assets_alicloud_a/c6cb9b63eea61102d4e96fe72b7c8008652fe925.js',
          empty: ''
        },
        fe_enable_fps_goal_with_value: 1,
        b_email_validation_regex: /^([\w-\.\+]+@([\w-]+\.)+[\w-]{2,14})?$/,
        b_domain_end: '.booking.com',
        b_original_url: 'https:&#47;&#47;secure.booking.com&#47;book.html?hotel_id=4685428&amp;aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;room1=A&amp;error_url=%2Fhotel%2Fcn%2Fholiday-inn-express-nanjing-dongshan.zh-cn.html%3Faid%3D397645%26label%3Dbin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB%26sid%3Df0f82b20b46106bf73b9641ed765ee02%26srpvid%3De35016eadacb0185%26%26&amp;hostname=www.booking.com&amp;stage=1&amp;checkin=2023-06-02&amp;interval=1&amp;children_extrabeds=&amp;srpvid=e35016eadacb0185&amp;hp_visits_num=1&amp;rt_pos_selected=1&amp;rt_pos_selected_within_room=1&amp;rt_selected_block_position=1&amp;rt_num_blocks=7&amp;rt_num_rooms=7&amp;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&amp;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&amp;rt_pageview_id=20ce16fbc372006c&amp;rt_pos_final=1.1&amp;rt_selected_total_price=650&amp;rt_cheapest_search_price=325&amp;from_source=hotel&amp;nr_rooms_468542801_246088447_2_1_0=2',
        b_this_url: '/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;srpvid=e35016eadacb0185;stage=1&',
        b_this_url_without_lang: '/book.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;srpvid=e35016eadacb0185;stage=1&',
        b_switch_language_url: {
          'en-gb': '/book.en-gb.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=en-gb;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'en-us': '/book.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=en-us;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'de': '/book.de.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=de;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'nl': '/book.nl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=nl;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'fr': '/book.fr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=fr;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'es': '/book.es.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=es;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'es-ar': '/book.es-ar.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=es-ar;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'es-mx': '/book.es-mx.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=es-mx;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ca': '/book.ca.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ca;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'it': '/book.it.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=it;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'pt-pt': '/book.pt-pt.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=pt-pt;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'pt-br': '/book.pt-br.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=pt-br;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'no': '/book.no.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=no;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'fi': '/book.fi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=fi;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'sv': '/book.sv.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=sv;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'da': '/book.da.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=da;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'cs': '/book.cs.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=cs;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'hu': '/book.hu.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=hu;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ro': '/book.ro.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ro;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ja': '/book.ja.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ja;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'zh-cn': '/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=zh-cn;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'zh-tw': '/book.zh-tw.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=zh-tw;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'pl': '/book.pl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=pl;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'el': '/book.el.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=el;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ru': '/book.ru.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ru;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'tr': '/book.tr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=tr;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'bg': '/book.bg.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=bg;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ar': '/book.ar.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ar;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ko': '/book.ko.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ko;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'he': '/book.he.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=he;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'lv': '/book.lv.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=lv;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'uk': '/book.uk.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=uk;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'hi': '/book.hi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=hi;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'id': '/book.id.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=id;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'ms': '/book.ms.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=ms;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'th': '/book.th.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=th;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'et': '/book.et.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=et;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'hr': '/book.hr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=hr;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'lt': '/book.lt.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=lt;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'sk': '/book.sk.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=sk;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'sr': '/book.sr.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=sr;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'sl': '/book.sl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=sl;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'vi': '/book.vi.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=vi;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'tl': '/book.tl.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=tl;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&',
          'is': '/book.is.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;lang=is;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;soz=1;srpvid=e35016eadacb0185;stage=1&'
        },
        b_referrer: 'https:&#47;&#47;www.booking.com&#47;',
        b_acc_type: '204',
        b_req_login: '',
        jst: { 'loading': true },
        b_timestamp: 1682392691,
        referal_tab: true,
        scripts_tracking: {
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
        b_label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB',
        b_sid: 'f0f82b20b46106bf73b9641ed765ee02',
        ip_country: 'cn',
        country_currency: 'CNY',
        b_selected_currency: 'CNY',
        b_selected_currency_is_hotel_currency: "",
        b_selected_language: 'zh-cn',
        b_selected_language_country_flag: 'cn',
        pageview_id: '243e17393fc90031',
        aid: '397645',
        b_csrf_token: 's35HZAAAAAA=7hfe8RL1LU6vHCFfFj1z2ejNgRvPHsTtjvgKGNpTWdkvdnd3dC-EMssLEIUHNSvW1Rr3fOe3u0NqZ7Bkh-b8eqlaQA5OTF84nqfxYMnLsK1fIklHm6L5a2ikGde1EjIFDB-Z_IOtx5ysLuijwgmmWHsUqcHUr5naOjNlirT8ou-GubdL-qsSwo8SC3JpB2P2f0ccJoM7ypyMOAL7',
        b_show_user_accounts_features: 1,
        b_browser: 'chrome',
        b_browser_version: '112',
        et_debug_level: '0',
        icons: '/static/img',
        b_static_images: './script/images/',
        b_currency_url: '/general.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&&amp;tmpl=currency_foldout&amp;cur_currency=CNY&amp;cc1=cn',
        b_currency_change_base_url: '/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02&checkout=2023-06-03&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=2&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1',
        b_languages_url: '/general.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&&amp;tmpl=language_foldout',
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
        b_simple_weekdays: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
        b_simple_weekdays_for_js: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
        b_long_weekdays: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'],
        b_short_months: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
        b_short_months_abbr: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
        b_year_months: {
          '2023-4': { 'name': '2023年4月' },
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
          '2024-7': { 'name': '2024年7月' }
        },
        b_user_auth_level_is_none: 1,
        first_page_of_results: true,
        b_partner_id: '488148',
        b_is_destination_finder_supported: 0,
        b_is_dsf: 0,
        b_pr_param: '',
        /*
        */
        feature_profile_split_sb_checkbox: 1,
        inandaround_more: "更多",
        b_signup_iframe_url: 'https://secure.booking.com' + '/login.html?tmpl=profile/signup_after_subscribe' + '&lang=zh-cn',
        b_exclude_lang_firstname: 0,
        view_prices_enter_dates: '请输入日期以查看房价和空房情况。',
        b_firstroom_id: '468542801_246088447_2_1_0',
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
        calendar_days_allowed_number: 341,
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
        b_lazy_load_print_css: 1,
        print_css_href: './script/static/css/print/0cc4ce4b7108d42a9f293fc9b654f749d84ba4eb.css',
        'component/dropdown-onload-shower/header_signin_prompt': {
          b_action: "book"
        },
        b_hostname_signup: "secure.booking.com",
        b_nonsecure_hostname: "./script",
        b_nonsecure_hostname_signup: "./script",
        b_fd_searchresults_url_signup: "",
        translation_customer_service_which_booking_no_specific: '不针对某项预订',
        stored_past_and_upcoming_bookings: [
        ],
        global_translation_tags: { "one_dot_leader": "\u2024", "line_break": "\u003cbr\u003e", "rlm": "\u200f", "lrm": "\u200e", "nbsp": "&nbsp;", "zwsp": "\u200b" },
        b_rackrates_monitoring_running: true,
        b_wishlist_referrer: '',
        b_reg_user_last_used_wishlist: "",
        b_reg_user_wishlist_remaining: 1,
        is_user_center_bar: 1,
        b_site_experiment_user_center_bar: 1,
        b_reg_user_is_genius: "",
        "b_can_acc_bp_auth_lightbox": 1,
        profile_menu: {
          b_user_auth_level: 0,
          b_domain_for_app: "./script",
          b_query_params_with_lang_no_ext: "?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&",
          b_travel_comm_url_with_lang: "https://community.booking.com/?profile.language=en",
          b_action: "book",
          b_site_info: { "is_iam_auth_allowed": 1, "is_bookings_owned": 1 },
          b_site_type: "www",
          b_companyname: "Booking.com",
          b_reg_user_full_name: "",
          b_is_genius_branded: "0",
          b_reg_user_is_genius: "",
          b_genius_dashboard_expiry_destfinder_url: "./script/destinationfinderdeals.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&;genius_deals_mode=1;checkin=;checkout=",
          b_reg_user_last_used_wishlist: "",
          b_genius_product_page_url: "./script/genius.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&",
          b_reg_user_five_bookings_challenge: "",
          b_reg_user_detail_name_email_hash: "",
          b_user_is_grap_eligible: "",
          b_grap_remove_raf_checks: 1,
          b_is_bbtool_admin: "",
          b_is_bbtool_user: "",
          fe_bbtool_permission_is_connected_to_bbtool: "",
          fe_this_url_travel_purpose_business: "https://secure.booking.com/company/search.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=business",
          fe_this_url_travel_purpose_leisure: "./script/index.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=leisure",
          fe_reservations_url_travel_purpose_business: "https://secure.booking.com/company/reservations.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=business",
          fe_reservations_url_travel_purpose_leisure: "https://secure.booking.com/myreservations.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=leisure",
          fe_my_settings_url: "https://account.booking.com/oauth2/authorize?aid=397645;client_id=d1cDdLj40ACItEtxJLTo;redirect_uri=https%3A%2F%2Faccount.booking.com%2Fsettings%2Foauth_callback;response_type=code;state=Uljm1KAmdSGCGE8-bk9Fx1RbU-_RnNYpfR0eZ56-U03eh5jvBrgKGoM_Eqqkts4zcwARhTQ3SH7QrylycRKVSSrZs0OOW_gvDmh3L8JTdsSnLWLtyiao_OZ3",
          fe_my_settings_url_travel_purpose_business: "https://secure.booking.com/mysettings.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=business",
          fe_my_settings_url_travel_purpose_leisure: "https://secure.booking.com/mysettings.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&sb_travel_purpose=leisure",
          fe_bbtool_can_see_tool_promos: "",
          fe_bbtool_can_see_tool_promos: "",
          fe_bbtool_blackout_user_company: "",
          fe_bbtool_redirect_personal_to_index: "",
          b_reg_user_company_name: "",
          b_reg_user_company_name_escaped: "",
          b_reg_user_companyjoin_url: "",
          b_bbtool_product_page_url: "./script/business.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&stid=934592",
          b_is_ie7: "",
          b_this_url: "/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;srpvid=e35016eadacb0185;stage=1&",
          b_lang_for_url: "zh-cn",
          b_secure_hostname: "https://secure.booking.com",
          b_nonsecure_hostname: "./script",
          b_query_params_with_lang: ".zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&",
          b_query_params_with_lang_no_ext: "?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&",
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
          b_page_name: "book",
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
          b_label: "bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB",
          fe_user_can_see_company_reservations: null,
          b_oauth_client_id: "vO1Kblk7xX9tUn2cpZLS",
          b_sso_logout_url: "https://account.booking.com/sso/logout/v2",
          b_sso_logout_callback_url: "https://secure.booking.com/login.html?op=oauth_return",
          fe_sso_logout_state: "UowIO7Jo1gOyI3_uMjUmb-0njNwO6sFYX8V3EJiv8UbC_lcJ7T-VzxGSX-abHNIGmEuerm9kRrhFvqUP-gv7Mw6nGKN9cvlRH9m459ZdPAYA5ilEHvTYMIV1SDbnA-MrIKlBH5Y_VgrdwgvKWxM4U7NwBxLVvPm73wnU-kJ4Ubl147KvlkunrDMdqbUMLfLq7RqIfG4B0nGFHxnfOhqm2vklKM8E7c4Lc0MSWMOvQuW6hM2BRXvHyXdG44_72FImvqTOcILcNndQlvTSRvH2Vhzqm3uuesnZ6dAS5MZRPJahzTCkM6Y4Trtu1e8sRbXgQ8c-PHlMrJBTTqmPontJo27ThkldvF_1PbxZ2iyCXDNj9pSkffTuDFVHFaMqUPGYpIfMM5YGPAECEJDK27wcgx7GTguMpOqwLro-mKExC_Y7CPFZwi9IqgKadzqCht6w-04X4aUEZ2tYcT3xVSf7AxaU1KWtX1CqgSQ-6RUdGkS1T6xYjWB844GYhMuIbR2GbTxm9smYG5TYi0a6248Jm3GdMUB4V25PRdePJ9fnYM7EayPTVOGrUSYcvoxnVm3w5tJ4_b66G0bxeN75T9cckmlej8QrDf5cCRz-dxPr9XPMhx_2hn27Rdubuxbc6-RkNl8UfcoAVv-eTeTrE1g15XZ-jm7HIC2bxsVnUPA6RO2ISdo2FDGN9sL4BKawfSUyKnR4F-teeVR2MWOrrvlNA0HTQPqXQsYb9LrWz2ulN8cKfCH8a33KB7FZ65cbFYOBeklh8gRQyBtNuiTUOBfznCS07NJK3U2aRjtN5Qbc6XekeuYQzIBBx-DAV_HqISYpBGFDXJbjLFepJvW7slG0UA4lBDPhgqzHXcOwdY9IObGSrPX3o73abBjRugbKYmfW7naeepVqQu_zn7KFHwJAmIAbY2TycCipUPBqwEjY82s_hhelAfEeEuIJfhYjT3LU0nfBV43oQ-uxZNJdUNmPEuTbghp777EcBlh1O6ujZ59xVFCkb3LLB_3pYXZah1cG_CqyOANHZwtF4oI_ofkOz8fqXTBlvmTrJOq8LhXCQovF9pb1RKqX6W8LOlm4jiz6dGGJFNf1la02GImaCmEhofcGCkEFVmBDOZ0QzFZZ33stzcn9TQEdTmHIL5raAP5pEv2ud4493S9R8YtJvJtKM1KnH58b7e402YjWvEYVsccwKNAHfZz8qJVih2hablxjMBAWyg4NaAlOHoxuzCmXlZeIHM-HWtbL6MrUss-bJHn5e7YBTSkBb55hqyBASgeJ5znvRBSRgMkK05lw1saFY4A_ipOmHODJIfA7zjqw6-xmffp7_ULiqUmu1mTaMOwnHHmf6RJH44olAf7mH_1wgRFGE1NZ5wHI30q9oia1Gw",
          fe_blackout_mydashboard: "",
          fe_user_menu_aspiring_genius_link: false
        },
        accounting_config: { "currency_separator": { "GBP": "", "JPY": "", "CNY": "", "USD": "", "default": "&nbsp;" }, "html_symbol": { "ILS": "&#x20AA;", "IDR": "Rp", "BRL": "R$", "CZK": "K&#269;", "XPF": "CFP", "ARS": "AR$", "TRY": "TL", "GBP": "&#163;", "JPY": "&#165;", "CLP": "CL$", "INR": "Rs.", "CNY": "&#20803;", "SGD": "S$", "PHP": "&#8369;", "EUR": "&#x20AC;", "RON": "lei", "PLN": "z&#x0142;", "USD": "US$", "HKD": "HK$" }, "decimal_separator": { "default": "." }, "symbol_position": { "CNY": "after", "default": "before", "RON": "after", "PLN": "after", "CZK": "after" }, "num_decimals": { "IDR": "0", "XOF": "0", "TND": "3", "TJR": "0", "RUB": "0", "default": "2", "UGX": "0", "BYR": "0", "ECS": "0", "HUF": "0", "MZM": "0", "VND": "0", "XAF": "0", "DJF": "0", "OMR": "3", "LYD": "3", "AFA": "0", "VUV": "0", "XPF": "0", "JOD": "3", "KRW": "0", "MGA": "0", "ISK": "0", "BHD": "3", "IQD": "3", "KMF": "0", "COP": "0", "KWD": "3", "PYG": "0", "TWD": "0", "LAK": "0", "BIF": "0", "TMM": "0", "JPY": "0", "CLP": "0", "RWF": "0", "GNF": "0" }, "group_separator": { "default": "," } },
        distance_config: "metric",
        b_hotel_currencycode: "CNY",
        is_listview_page: true,
        b_this_weekend_checkin: "",
        b_this_weekend_checkout: "",
        b_next_weekend_checkin: "",
        b_next_weekend_checkout: "",
        b_official_continent: "",
        b_deals_continents: "",
        b_book_stage: 2,
        paymentMethods: [{ "name": "MasterCard", "value": "MasterCard", "is_chargeable": 1, "abbr": "mastercard", "payment_method_id": 11, "is_accepted_by_hotel": 1, "cvcDigits": 3, "display_priority": -1, "is_cash_based": 0, "gateway": "", "is_credit": 1, "cc_cvc": 1, "bmp": 0, "cc_type_id": 3, "path": "/experiments/payment_type_icons/mastercard.png" }, { "value": "Visa", "is_chargeable": 1, "name": "Visa", "cvcDigits": 3, "display_priority": -1, "payment_method_id": 10, "abbr": "visa", "is_accepted_by_hotel": 1, "is_credit": 1, "gateway": "", "cc_cvc": 1, "is_cash_based": 0, "path": "/experiments/payment_type_icons/visa.png", "cc_type_id": 2, "bmp": 0 }, { "payment_method_id": 26, "abbr": "unionpaycreditcard", "is_accepted_by_hotel": 1, "display_priority": -1, "name": "UnionPay credit card", "value": "UnionPay credit card", "is_chargeable": 1, "cc_type_id": 44, "bmp": 0, "path": "/experiments/payment_type_icons/unionpaycreditcard.png", "is_cash_based": 0, "is_credit": 1, "gateway": "" }, { "display_priority": -1, "is_accepted_by_hotel": 1, "payment_method_id": 25, "abbr": "jcb", "is_chargeable": 1, "value": "JCB", "name": "JCB", "path": "/experiments/payment_type_icons/jcb.png", "cc_type_id": 7, "bmp": 0, "is_credit": 1, "gateway": "", "is_cash_based": 0 }, { "cc_type_id": 1, "bmp": 0, "path": "/experiments/payment_type_icons/americanexpress.png", "is_cash_based": 0, "cc_cvc": 1, "is_credit": 1, "gateway": "", "is_accepted_by_hotel": 1, "payment_method_id": 12, "abbr": "americanexpress", "display_priority": -1, "cvcDigits": 4, "name": "American Express", "is_chargeable": 1, "value": "American Express" }],
        b_pay_now_cc_allowed: true,
        b_alt_payment_is_hybrid_available: true,
        b_cfr_riskified_beacon_data_available: true,
        b_riskified_cart_token: '4039085908',
        b_cfr_recp_available: true,
        b_cfr_ts_available: true,
        b_cfr_mb_available: true,
        b_cfr_im_available: true,
        b_messenger_url: '',
        b_open_messenger: false,
        b_is_asian_user: '',
        b_days_to_checkin: '',
        b_extra_ajax_headers: {},
        et_debug_level: '0',
        notification_squeaks: {
        },
        wl_squeak: {
          open_wishlist_from_profile: 'ZQafLebbMTSWEEdC',
        },
        genius_vip_squeaks: {
        },
        trip_types_squeaks: {
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
      params.pid = '243e17393fc90031';
      params.stype = '1';
      params.src = 'book';
      params.eb = '4';
      params.e_obj_labels = '1';
      params.e_tclm = 1;
      params.add_themes = '1';
      params.themes_match_start = '1';
      params.include_synonyms = '1';
    }(window.autocomplete_vars || booking.env));
  </script>
<script nonce="ybUYWKfiYBp3lUr">var _gaq = _gaq || [];</script>
<script nonce="ybUYWKfiYBp3lUr">
    booking.jset = { "m": "UmFuZG9tSVYkc2RlIyh9Yf8gbynvNnQE634w9a4lnR1Wn6IGKzvpg0SWYUiU02kx28hjyBufa3yt-TIUG8ioQjbd60dUDkX-BAz7xgO_bttoOfiO0ScEP3agx_QkVaBdO51wzA-1qqUiiB0d9re8kUNgUwVcoGQR0s8Ko2LmfthetO9nqWmStiAXhagnSO779MYWKcLcoA5yvXeWb9r53DCGWsZk3jJRRHP4V0Q7iGHlI9rhHA5Wv1oKK5DsmtFE2x4xF4qZmusxfLeMbWQjyOgaRII5IoXM0NA1dUO_z8U", "t": { "HBISNFZFEUXPNMPKUGO": 83, "BHDTJdReQHUYYOLEaMNSUC": 1, "HWAFYDEZRae": 3, "HBOAIEcOGdCMOKe": 5, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "BHDTJdReQHUYYOLEaMYYXO": 1, "BPHAUbWNZXGOXUSHXT": 1, "NLJZCEQMULaDAEKKSLcSEO": 3, "aXTfOFJZMYeKTcABVYUHTQZTQUERBdSMHBaWQOHT": 1, "NVNZYeJBBYZUeQKBBTZVGO": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 151, "INFdBOSEOCMHMZOXeHO": 1, "BUHBNHDbUTPOfFRC": 1, "YTBUIHOdVLBQRMebfTINfTKe": 11, "dLcXJeITPMOfIWe": 1, "OAZOXPKSXPPPaacXO": 5, "THHSODILJbbfYFZIJePICaeFYTET": 1, "VMITcZJLCZBfaNKe": 11, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1 }, "f": { "bQGBbQaSINacMSZRObOC": 1, "BCdGNePeEBAPIFddeOIKe": 1, "OMNQEDXYeQMMaXdRT": 1, "febdSANFRWEYBXYFPCDWOOC": 1, "NVNZYeJKTYFGFfPfIVXBPKAC": 1, "aXTfHAEDBOSMeEfEITNPfaSdBULQEWHQHDDHYYfPHe": 1, "aCTPCDCcVIPfLSHeQRfWPbISXWae": 1, "feaSLAZWAcFCNBTLEKXJYXT": 1, "ZcSIcceNJMFcOeQNUPGUfJKDKaT": 1, "HMGLLYANAadMKZLIOGdCXOEKe": 1, "PcVFHMPaQHDDZECEQcLPLBGVPLeaHIKAHXe": 1, "HWAFYbIeIPNQBDUMAPNZfAC": 1, "HWAFNeOYDadJJYJO": 1, "dLYHMRFeRLLCBLTYSDSAVLQWFKe": 1, "BCEQAeMZeEOHGZGbDYBZeEGGNPbaae": 1, "PPXGSCZFRURURNRYZWDOCYKdECHTeUVIZdRRT": 2, "OMEIZEHbaTaTaBdJdHPHFAUADHSdVXSAC": 1, "BKATYFRURURYVcTQQDAdBGXIZRe": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVaNdCYO": 1, "NAREFcCcCcCDSJRNfaQOAZbfHfXe": 1, "HCZANHDdLYBYXBafISWESVIAFET": 1, "XdKYEaEVTNeNcJPEcObECELHNBOSOJNET": 3, "AEAFPIPBcdCCWMTdKfXJZKNFbfBAC": 1, "IZENYPERAMDBcPOeFYeMOKe": 1, "bQGBBOXBbQGWFBaaeHGGINYTFIHe": 1, "NVNZYeJBBYZUeQKBBTZVGO": 2, "AEAFPQXRaeZCLDbUTPOfFRWXFZEVC": 1, "NAFQQAFJZeOQZREKdZCFXSTHO": 1, "aDMWRfDSdWUUHfLebbMPAFFLKZLXJOfAdIUFZZcO": 1, "aWQOcHKdXdDPNDJdQJEcTeKHMeTC": 1, "adUAVYCdIcPWWWeTabZNHC": 2, "IZdFSAPVFfSOVHJaMEATKe": 1, "YdXfMTXEUDdeOYSCaIfWcACVVLZPecOEO": 1, "BCVRAAOHBdQAUFZbSae": 1, "MRLQeIJDORMTfFOOIBTdLXbWe": 1, "PPXGSCZFRURURNHPZAWe": 2, "eDSdUbKHfGBeTC": 1, "OTfdASFXOVAUVSZYdFfGEXGO": 1, "IZBTdFPfBKSAELSXZMdLdRMNURe": 1, "HDDZOWNdOZBYTZcYWHXGWe": 1, "cCcCcCFZdOaBdSTNJKSCYSeHT": 1, "aWQOcOOIBTdQeRHfEXNUGUSHMaLMJYJbVWe": 1, "bLTLSHIfDSfdFSSBHHGGPFDC": 1, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQHO": 1, "fefSKeEFcIADWHCDUFYQXUZWPHDDWe": 1, "HWAFYXMHO": 1, "cCHObVZMYCECVVDJYMNHFRURURHe": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYIVTIbYO": 1, "ODRdHUYUBBCWbVBaMEAKe": 1, "bQGBOEIKZdJWXFZEVC": 1, "BCdGNQbHVEZYeNbNEIIYIEbFRFeQEHT": 1, "YdXfCDWOOScWJcEWNEJYBMFFO": 1, "HWAFYRKGCfeZBNUcO": 1, "AZTaHZeDUHYaXFZPeZYUbQWe": 1, "AEAFZMdLEccGSODKPWcVIZdRRT": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFWPHDDWe": 1, "OOIBTVXINLcMYNaXTfMZKPHOUKe": 1, "bQGBZabQEPFQFcdFBOOIBBO": 1, "aXTbSFHMHHVbReIYaaTLbFFceHEVJZdLHNLLWXFZEVC": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcWCTZQWe": 1, "cJUJDRSLQKQScVIQHNMbZfFSfDGYUC": 1, "GdNIXCPTBcRZdbXdUKLaDWVcJNZGCOeFKebAZOHYO": 1, "GfHOUbeKKPHcVScZbeKRJdPC": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUdPC": 1, "HWAFYBEYFbYOdPACLO": 1, "YdXfTHBfPSYNJcHIfXIVXSKTNC": 1, "GCSXHHVQIZDFJNLcOdHFOUJPNSIJNGEfZXXddOERe": 1, "cCHObVZMYCAFFQZcNKNMC": 2, "NVNZYeJbFMOFIfGOaYdKTHHfIXbBHTNCMC": 1, "INLGPZHLEZObTHT": 1, "ABVYUaXEbQFHePLSIRFaRDPHe": 1, "cCHObECVVDDORMTfFbRZFJGO": 1, "adUTWALdFSUCKVbceVPWXdAOVAZdYINGaVC": 1, "HCZANHDdLYBYScXQOVZUdSUHTRLBJASObEWWe": 1, "VVOcMKMBYNFPdNYKFFTNOUbYfIYOHSedFLKIO": 1, "HMbVacDNVZNMPHVC": 1, "eWHMaXbSbccJaRBMRPdHdFeGVIZdRRT": 1, "aWHMVKbTBPAAdKLREcNBdEdFaGCfSCZC": 2, "OOGbIFBUNHDeHeIeNRSSIBVXLT": 1, "BCVPeUIeLLWbAZCdVAeFEcNLGZGcBNeRO": 1, "KHYbYKCUUDNYSKDZSdSUWDaWeVZWNeHO": 2, "cCcCcCFZdOaBMWQUIZDHTIcPWIXC": 1, "HBbMWcNHDKdeJMET": 1, "AERXWeDfBAKTRe": 1, "OaaKLRXFKOOSZDQXKCQMWWEYcZGO": 1, "HWAFNLTLAYDNHOeWWGO": 1, "YTBaXEbQFPIEEBBcFPIWRQYAPHe": 1, "aXBNTaUWPWbdfAUdWVADaVYEO": 1, "bQGBVIZdRJGINYTFIYaXROZEBBVYYT": 2, "AEAFSXZCTPKbHGSaEUcYO": 1, "HMeCJHAdKeWUEEOdXNWfNJOET": 1, "OMIZdFSdWPDGYUC": 2, "NAFLeOeJOQeOYFCRFZMbYWMPSYaET": 1, "HWACcMLaUJMFRTaWNcDfaNKe": 1, "PcVFHMPaSdIeZNNAFLWEZfeKe": 2, "OMGfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "NAFLfOdASUTbFIMNFedZUDcJPae": 1, "eWfbWNPYPKGdUZCC": 1, "HMbKdFTHXSWEYcZbMSVXMPBOFO": 1, "bdPTLKGBfFRRCAEXaWJPbCQMWC": 1, "OaaKQZZMcTcYNaXTbEdHOUfBOVXXe": 1, "aWQOcYTBAZWEHGIfUYQZACYO": 1, "HMbCTYAaZZWIeXUJAFC": 1, "HZUaQJdDBKFfHBVScYAZdFFLKSBCHDUQWYT": 1, "BCdGYBERBdSIFeDaHXFCVCGIZMO": 1, "dLYHMRFeRLPYKDcdDdONOefFNeJMBHOeFZOFHe": 1, "OMaXaePLSIRSHT": 1, "HWAFNRTKeeWe": 1, "ZFNTefbBTJNGLERMPJNNDPSVT": 1, "HZUaYHUWeJUBZHXJcaT": 1, "aWQOcYTBOTfdASFbLYUbQHQHDDWe": 1, "HMbVZMYCOeVKGcERQTfWcYTET": 1, "aaMRYBENYceJJVaCPfYHNPVT": 1, "INQHUYZIEPfLEZXZEcSaERMJDWXVXeRe": 1, "OLBEXfQYLSHFdAUOYO": 1, "IZVPVIRPLeUMZNYRBaGRe": 1, "HVUBNNeRBNePeEBVUWVYREHGC": 1, "HWAFYTfDHCOLZEJaKFEIHT": 1, "HWAFYAFPIEAZSAZBdWTNC": 1, "NAREFacTTNAIBaFOXT": 1, "BUHBNHDbUTPOfFRC": 1, "eWITPOKSKBZNVVbcOAIEcNVFCHC": 1, "ZcSIcceNJVGGZYfPXPRQdQeRHfCRO": 1, "OMNNSfCSRBDcNPbfVMDXAWEHVC": 2, "HMbICWVZEdOeecbXAbWNWe": 1, "bQGBPGJIMADXDcVVPePHYYfPHe": 1, "ZOCDWOOSfdQaUSHMEHTNHT": 1, "eEBZFJZeOQZGfeAQJTZdbfZFXAWDOCTKe": 1, "HWAFNeOYFWUFOWGSQZdWOGVO": 1, "OMeRQWNAdBRUDaXdRT": 1, "BCVLBQFeaSGMWZNAOOMNXC": 1, "YdXfdKNKNKPAJeGHSWedNDeQfYUedJYVT": 1, "HWAFYBfPDBEDHIWDbKIdDZBAWTWMRHcWIMZIbYO": 1, "YWYHaRMSAEWQLTLbRWKPC": 1, "ODRESHIfDWQIOLTLAPYcFZfHbJGbEHe": 1, "BCEQAeMZeEOHGZGbDYJOUWe": 1, "HMbKbHGeaQFNHfBQEQJBbeNBOFO": 2, "cCHObVKKMadMUPXPRQBQMdBfDeLdEBJWPHDDWe": 1, "abPPWaZUAAVfDfNZFZeaPQeFedFKUddVCUC": 2, "ZcSIcceNWSUIQeYBPJTDfSMTVYXO": 1, "NAFQQAFJZeOQPeYTWTUPSCMeRT": 1, "fefSKeEFcIADWHCDUFYQXUZC": 1, "ABVYUYQJJYCBTWPHVNDZEdHOUfJJO": 1, "NQEDBcRJFBESWMXCEC": 2, "BPHOMJURJbcIUeBXe": 1, "HMbMYOdAURAfBfSXIOCARSTRTfIZbWNWe": 1, "HMbVZVCGCcYTET": 1, "aaMLFYEcNfDbAHLSGJO": 1, "NAFQCJWZUfNBVCBZSHeWaMSZXeCFNZC": 1, "MCIAFKKZaTaTaBBUUaXKe": 1, "fefSCOJZfIZZRAbOOLVBHVaMEAKe": 1, "aaOCZFRYNYaKEeUOHSeEHNPVT": 1, "HMbVAbcKfRPWXKfBKdHUHe": 1, "bQGBVIZdRJBCJLWRHZGSNCDWOOC": 1, "cCEaLMRSLTSJEHbCGVKe": 1, "bQKPWLVRbYTVMeOSMeSNaKe": 1, "bLEZfZLFZbZQXSFPbODAKC": 2, "dLYHMRFeRLeMXFZdTYMIbYTTNZObbC": 1, "OLBEJVIcVOXT": 1, "bOcGcCEaLMJeVPDdCATWPHDDWe": 1, "ELSXPeJIPLJPMZWLBebbAPLZDdDC": 1, "NAREDMDRPGOaYdEKeBOZWDJDTKe": 1, "HWAFYDEZRdJfeVAXNLaUNQJTedPUcYO": 1, "PcJDDJZGOXT": 1, "BCEQAeMZeEOHGZGbDNZEFfWSCCCHJDTKe": 1, "eEBZFJZeOQPPHFBddQSMaXdRT": 1, "bOcGYAZERMZVBdWBObdKBQGMZMO": 1, "YTBIZERWfbYXMPBUDLC": 1, "aXbISHcAaZEYbJeDIBLGafAPeHT": 1, "eWfCDBOSVIHQcaMEAaRZEGcCSRPLSEdLRSUWe": 1, "AfPcCWbCNETAEVcTQQDXKFKe": 1, "fEOMeRYLfIKdFHfBOFO": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLVT": 1, "TDXDPZDcVDFXBeVYHeaABTVZMYCdKNKNKWe": 1, "ZOOKTfGCbLFcDUMAPYTcHVPHVFCcVTcVAWaWe": 1, "HMbVacDNVAbcYTET": 1, "eWHJdAQTEfEITNPffYSYNBdLHe": 1, "dDfPSBAcfLHNVaIDfRJLYfZYaO": 1, "PWBJbeBaSPTaFIfMSJQFBBBcQYAIRKe": 1, "NAFQZMISRSOJaTfMDcGEfdbfZC": 1, "bQGBbQGWFBaaeHGZOTPceYWDFRSGQCBYKe": 1, "PPXGSCZFRURURNWBOabFIRZZERT": 2, "eWHMYTBADDbdEBGVPQLYVJVScXVaKBIecO": 1, "HWAFNJbaOLJDUWe": 1, "HWAFNWTCUZceNGTOFceHEVDVRGCMC": 2, "AdZZBOSBBLXOQFMYCeVSCJXXT": 1, "fefSKeEFKMBKXIeIPQeJOPRaZOHbDNQLOLOLMO": 1, "NAQGPLeMBBdUfPWRPJVSYZPTBWe": 1, "eDUdGVdNKEBXJNSVVWaIIKe": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPDHCOLcO": 1, "aWQOcYTBbdbDNDQVO": 1, "MCIAFKKZaTaTaBcJPGEbfFeTKe": 2, "YdXfdKNKNKPWZJdUQWTCUZZAUGO": 1, "YdXfCDWOOFeJHUWEYcZbIKdFHfCTAWDbfKe": 1, "cCcCcCWPJeVYSLLeLHYO": 1, "HWAFYDEZRdZbVeUZDYeJIRBcVSHT": 1, "YdXfdKNKNKZTLVcTQQJO": 1, "bQbYWXFZEVWKMTUBNADPFEfbCDWOOC": 2, "HWAFNeOYSUaecfbEIEYXT": 1, "IZVGHHPAJdSeEeCeDC": 1, "AfPcCWbKMDNdEHXdRT": 1, "INLcSaERMJDJFFKFZEHe": 1, "eDSdUfIMLHLSGDBJbNWLEWXAdZRO": 1, "cQPHbcGRccQYIMdUfEJMFbFUIVTESMCC": 1, "HWAFYDEZRdJaWYfTRe": 1, "HWAFYEPMWIdfYeCIObTae": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLcPDYVWZFKbPLT": 1, "PPXGSCZWaZXbSYbQMUPNZFZeaPRe": 1, "MeHGWcWZTDUZXbSYTUSGbVeKWe": 1, "bQGBPZdOWcaTJZSAccTXYaWHC": 1, "dLcXJeITPMObdTYMIfJaAKDKe": 1, "NAFQCJWZUbGSRaPSZXeCFNZWOEXKQLNJC": 1, "OMIZdFSXIHERdabCTHO": 1, "eDSdUfAJAZdJAINQWBOfWVWNYO": 1, "ODREGZUTPOOOCaJebTZWKNUMEJXO": 1, "HWAFYYNQBWFKe": 1, "eRYPCfPZNJdQSBGeGddAbDPOHET": 1, "IZALOLOLOCDOHJPVCMILEEBXe": 1, "cCEaLMDdMHfOJZVRPRBLfPdRT": 1, "HHYPWMPdKZXDMKBQVIaDDZIBPbWe": 1, "OMEIZEHbaTaTaBZbSCOIHSHFTINLRIYLT": 1, "dDfPJcbWEYANAadTDCaNUUDeQcJUXO": 1, "PUTCDCcBUacEfBaUEIQJBeaT": 1, "AEUaYPZPXdMOfHYKPJUcdWCZAKfKdCHT": 1, "OMTVBENYScXQOVZDOLbFZVGAZKe": 1, "HMbKbHAYIFTdZfLLCcYTET": 1, "OOIBTKMDNdEPQDCWXIVXSKTNC": 1, "YWYHaUWPHDDPCbJODKPIPODWe": 1, "OMTVBENNQASXVVFXdKYEaEVaETeDdHWNRHe": 1, "HBISNFZFEUXPNMPKUGO": 1, "HCZVFaNPBePYXeeBGXGOcbNXGDJae": 1, "IZbREZVPTLKGBfWKcBcaMEAbaTaTaET": 1, "cCHObdRdJJXRDVMDTEHAFPRJdUDEYIbaTaTaET": 1, "YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe": 1, "HMbBbOUOOJVfJFYNSOPLXT": 2, "ABVYUaXAZfLdPcRXUFMNJQOOXeHO": 1, "HMGLLFCeRbLMTBLLFGO": 2, "OMeRQDSSGDMRCaTCIFcNTDCaePMZABQVT": 1, "OOGbCDOTAZAdFcEEHJebAHYfWZJae": 1, "ODREGZNbJAEceEDdEdaWYO": 1, "ABVYUaXBOFYCeVScXQOVPACLO": 1, "cCEaLMJeVPDdCAaGGbMWHT": 1, "ZdZaYPZZGbMQfIOeZFNZRO": 1, "bLEBBVYUBUAZNdMAZdJAINRe": 1, "aWOQKVUKeFbAdcDcdAXRCBQBBHFBddQC": 1, "PWBJfbHXSceIfIHfSbfZALOEXKQLNJC": 1, "GfHOUbeKKPXKNdKVWMDNPIHAdLVC": 1, "cQHYYfPYJWcRXQFVYUYWTMcBTTEVC": 1, "aXTbSFYTBHMHHVbReIYBBVYUbFDaZDYaAFZKXe": 1, "INQHUNRAZUffECIAEKKUHAbINOffNcUUZabSXT": 1, "IERBfaNbIUONSFOOIBBO": 1, "OOIBTVXMAcZEAHYcTEfWe": 1, "HMbVZVCGCcOOIBBO": 1, "YQKSXPTLKGBfSOaKecNfTRe": 1, "AdZZdRdJceOAbWTEQAOFUIEFGWe": 2, "HWAFNWTCUZZOeGDdKFBKIBFBEEEJHO": 1, "HMbCaASBaRJZMFWBOFO": 1, "fTZaTaTaBAZTbYCTWZHT": 1, "IZBTdFPfBKSAELSXPCbXbSYbcQcDKZVFRTKe": 1, "NAREDMFXeSCNZWMVC": 1, "cCPeYGIZeVTNVQcfFKVbONebEWcDaWe": 1, "aXTfHAEDdQZXDOXFAHNBGPfBKWbWOOC": 1, "HWAFYYYeHQAXaIRdNC": 1, "NAFQQAFJZeOQZREKdZCJVcTC": 1, "HMbOKNIUALcGKMFdHUHe": 1, "fEOMfdbQdRIYdXFNPIITfDHCOLcO": 1, "ZdZbaBOQJYcSaERMJDDaVHNPVT": 1, "OOIBTCATAJRXJOeBLBbPTPAOZEVC": 1, "bQGBTFJNGLTLBGVPLDJZbDYBGVPRe": 1, "HWAFNLOLOLOOAJeKZBfaNKe": 1, "IZbREZVPTLKGBfSUaecfbVCMIRe": 1, "BHDTJdReQLOLOLOVZMYCVCMILRVVPKLZcO": 3, "cQYIMdUYWEIFPBNQKAEYTKe": 1, "fEOMfdbQdRIYdXFNPIITaYYfPHe": 1, "OOIBTKMDNdEPDGYWHRBcSbAGaaHFEIKe": 1, "VVOcNNDdOVZMYCdcQPUZCBKeJfQYLO": 1, "BHDTJdReQHUYYOLEaMNcHe": 1, "OMePCefAERXWeDfBAKae": 2, "NVNZWUaMZXRURNeJMBYGaePTWEUYTET": 1, "NAFQVUNOdOKBBIUJLMJLBWHcPTceMbVZEHe": 1, "NAFLfOdASUTbWTHNODZUBGScSUHHVPZC": 1, "eWfIFVNRXMFDFaT": 1, "INLGPfECIAaKLHPPYHDESeRQFKYOeUO": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSRe": 1, "aXbXDDZYfEYdMUcMOOIBBO": 1, "OOIBTVXAWbYSVGPLQSLfZDQXKNCRO": 1, "BIUJLMFPAAIISINfKBKBUHAABGOHaT": 2, "cCHObMKdFEAQdOBfScdDRfBSCDWOOC": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUFIMNFcKfbHJLHFJO": 1, "aXBNTfUWRFMeJAETfACQCALZUEXODPCcVIZdRRT": 1, "PcJJZGHMDALKe": 1, "AEUaYPZZGbBXafdcaNYCLUWCPFDUC": 1, "BCOHNFPBJYIYKcdKRSNcDHRbdFIKe": 1, "dLcXJeITPMObVcKNMfXLMEO": 1, "eDSdUfDXVWJVEFASOEO": 1, "OaaKLXcCHHRHaNALMHWadMbHAcLRaO": 1, "UYIBGQXBKTSdZPCQCFeONFPZAGaaeRaO": 1, "eDUdGVdNEKDBGQKWOOZIZKe": 1, "aXbSbcOQPCPRWXdBGZXeYBBVYYT": 1, "TeCOeJPQQBJLUUXVSfCSRBJNNfGPCDGHfYT": 2, "bLdLOLOLOINUKVacWXT": 1, "BIUJLMFPAACJWMdIKdFHaO": 1, "bLTQHUNWARfeSAAECNdHJeaILYJO": 1, "BIUJLMJVfNabXDCJSESbcGOIVNRXMFDFaT": 1, "BHDTJdReLBBVYUeYeFOCccNEIEYXT": 1, "TeCOeJOUeUNfEANCNIQNNFHeBQUdQadeORSLTFMeHGC": 1, "aWQOcYTBbJfEDVacDdQeRHfINFPIWBHT": 1, "cCHObIPPQFFNcUWBZEWaSddKNKNKWe": 1, "HWAFNJbaOLPYKDcdJaHIHT": 1, "NReaHfUEYYPOCXDOET": 1, "HWAFYTfeZLHaO": 1, "IZVGHeCXLJTVFbXUCeeDNQUZARYfYO": 1, "NAZSNdKLfOKFXbaCEUMKAaFYNQcfEIRbDXe": 1, "fTZdEYaSdNELZHDeFNZNFTUQODWe": 2, "HWAFNHUeRFKZbTZWKNecfZIVFZWPaDMC": 1, "BbFDRdJadUECQeWUcVNcbSTHT": 1, "OOIBTVXINLcMNQKAENJHe": 1, "HVUBYHDWNZGSRaPSZeDUHYbVSKHRbdFIKe": 1, "GCSXHHVQIZDFJNLcOdPDXSHAFfIVNRXMFDFaT": 1, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKFRURURHe": 1, "cCHObdRdJSfdQaRNFOSeDCJWMddKNKNKWe": 1, "OMHMbBLKBRJVBGVPLRQKe": 1, "OMTVBENNRYXcCHHRHbENHKKAGVT": 1, "OMYNaXTacMSHePLSIRSHT": 1, "NAREFYTBacTTNAIOFWC": 1, "PPXGSCZWPHDDZKPSCMBOHIcHOReeYaAFZKXe": 2, "ODRdHUNZWODDRYGPCJKDKaT": 1, "NAFLfOdASUTbJNNFQHWVDdZRO": 1, "bQGWZUYaTTDcTBeNDZSdSUWDbWNWe": 1, "ZdLNKPQFAeDHRQRFHT": 1, "YdXfTQNdeAWNTUMKHSYeGIGWRBQZXRT": 1, "HWAFNeOYDDFFcNRe": 1, "aXTfHAEDCDWOOFcYBVaXTANZGCdQEKSHMRQSRe": 1, "PWBJfbHXSceIfeYINVXTUSGbEXKQLNJC": 1, "NNZVPXPLKNdQZfFZHDUFYQFMTfcQQCNBaFO": 1, "eDSdUaSdFaLbFSMWdTXJbFbRILT": 2, "eDUdGVdNMfXLMdAJHRFAIO": 1, "HMbAURAfPMPfSWBJOTXNAHUHe": 1, "NAFQdGFEYKcbJVaQRSALZPIeANIHfCcMLaC": 1, "fXGWOIbLJHPLcSaERMJDC": 1, "IZVBETWRGEAJbARTKeePUcedJHBVUC": 1, "HCZANHDdLYBEZOXGFDVCMILfPJaAKDKe": 1, "HWAFNRYQLaXTANZPSVWe": 1, "bQGWZUYaTTFQZdfdfcDKZXASPRXLScXQOVZSSAKaWe": 1, "NVNZWUBIUJLMWGaRBQBAWKAOARGBGQXBKTSdZPOKNCBJZGaDHT": 1, "cCcCcCDPCDCcACOJOMGcZUYaTTC": 1, "eWHMHMbMFJQPYVQOCaGGTUSGbHXe": 1, "OMHMbdQPeXIUEBFXBeVYZIUONSQecLUTBYKe": 1, "OMIZbRdWSYRQYAbLMTdBC": 1, "eDSdUbKHQadTGJNBdIYBZJVcTC": 1, "fXGWCafXJKDKaT": 1, "YTBUIHOdVLBLBGVPQWIbdPXILMUC": 1, "cQZQfDafDQNeSbSPSfdeBVOSeKe": 1, "eWfbUTPIFbNXGDJEHJfNYTFIYREHGWXdIZDFC": 1, "BCVVWaIIabUNfYaAFZKVcbRZSAcQWe": 1, "aDMRDfUFFEPQBaYbTQFLGHOCUC": 2, "OQWBObadWIRcOfAcQaZJCNQOVTLdaRO": 1, "aXbISHcAaZQAVLBQPeHT": 1, "cCHObIPPQFFTaNFbNXGDJEBBVYYT": 1, "ZHCDCaGbXDWPPNeJfebBGSEbdETfHFBOLO": 1, "ZOBJZGDYeUaHBXLMSPRSQcfOEbMUO": 1, "aWMeaHfYFHNLVBHVDBEXaWJPGO": 1, "dLcXJeITPMOaOMfXLMEO": 1, "IZdHUNFSUCKVBAWeIALeUINCIHRJDJO": 1, "IZVGPRFfEDdeZOHeYHe": 1, "ODREGZSIebcGZcVTPMVScfZWRC": 1, "BPHMAbFWPJfYYNJBCC": 1, "HMbVacDNIXQRfAeQNQbWNWe": 1, "eDSdUbUOADfSUdfZeeELSEO": 1, "AZNdAYbeDUPIVPZVIDRbLWZHOfXIZTOeTeLT": 1, "NNSCZWXFGdVacDdMUNPYSbSCZC": 1, "AdZZBOSdQZEdHOUbIVFGWfdTUC": 1, "YdXfTQdeAWNdfXe": 1, "HWAFYWdPKeEeWXe": 1, "YLXASfBPbdFDOeecbXAKe": 1, "INQQMJJHMVGRCfWSFULXcLfIMbIZDFDNCXO": 1, "INQHUYZIEPfLaMbAMHMZMQcCVKLLYaKXOYO": 1, "AESVJPMYKXNUJMFcNRfDRKe": 1, "ABVYUYNaXTfIMLHDALDZIBOUdAHLAC": 1, "aXbSbcOQPCPRWXdBGZXeNLOLOLMO": 2, "HMbVAGaGbZEeeTYSCZC": 1, "aWQOcYTBcJTPEIFDaHRGFffRC": 1, "HMbCXJLbBBcPfSGXAFUTUeedHUHe": 1, "HWAFNeOYSBHATYJXAadIJNGae": 1, "NAREDMDRSLQKQYENJePBdEeZONZXPKbSJUAFET": 1, "YdXfCDOTTQVaJNEKSTQIcKe": 1, "eDUdGVHMLMJdXMRfUWXFZEVC": 1, "AEAFPKIJSHXdRT": 1, "HWAFYWMdCCTQOZaDJPae": 1, "aWQOcPcLHFDdKNKNKZGSRaPSZECEFSWe": 2, "aXbSGNVXNRbDdJTLaKEBBVYYT": 1, "HMbCALZBYeRKTTWZcYTET": 1, "OTfdASFAdJYcDHBdJUKeYEGWe": 1, "cCHObIVIADIBNGSdONbCNLOLOLMO": 1, "bQGBPZdOWcaTJPabSWUHbWPHDDWe": 2, "ZdZaYPZZGbdEHWXfVTNRJJRKe": 1, "PcJJSJIRADMPIGUO": 1, "ELSXPeJIPLeQSAESPMEZaPXPRQdDWYO": 1, "eDSdUfNDJEFVWITRfSCMeRT": 1, "ZdZbaBBUVOIPBdGdfUFbWHC": 1, "MRLLLZcVXGXBONSLT": 1, "HCZANHDdLYBYeUINCdWbYdJBTaJBeTC": 1, "IZBTdFPfBKSAELSXHXSHFdVfWIHCAdPeHT": 1, "HWAFYAOEIEYXT": 1, "NAREFEJKaEcBUGCQAECHTeUVIZdRRT": 1, "AdHUYWCGTLSdMWSOZEdHOUKe": 1, "PWBJMeHGSMeSNafXPRQVGNfMRCaVeKe": 1, "YdXfCDWOODSSCaIfWcHOReeHe": 1, "BKbVZWNZJFGbREfHYYfPNFFO": 1, "HWAFNeOYJXAadNONMOKe": 1, "OMYTBaWQOcbFDaZDNFMYCeXe": 1, "OOIBTKMDNdEPDGYWHFfdQQXEScXQOVWe": 1, "eDTANZVVMMeHGDWLfEZfJfQfPIdOWe": 1, "HCZEIBSYPGTPdUFSbeCJEXcCHHQJbHFRT": 1, "fXGWMQcCVKLLNeMZeEOHGGdOAGROXSZFNYC": 1, "cCHObVZMYCVKKMadMUPORIPBLAUFRURURHe": 1, "HWAFYYYRKGCaRXLMLRSUPRe": 1, "ODRETYeYCNOSHeCXQcaNYCLUSUZLFcFJdRKe": 1, "HCZANHDdLYBNWTCUZZOeGDPNeFGIYIYeFMeAFJBEJKaEcfEC": 1, "OMeRQFCFeaRXUbZFLMZGHCTRdIeMeOXbbFJFC": 1, "BIUJLMFPAABHeUNfGYKaPNZFZeaPLaAFZKXe": 1, "aXbSFYTBHMHHVbReIYBBVYUAZfBcdCBTJZdLHNLLC": 1, "HMbEbWcBBeIaZZWIOIeMEfdWVMcOcYTET": 1, "aWQOcYTBXXQDZBMLaUC": 1, "XdKYEGFAZeVNLDJFFKMEcEQPDHCOLZCDWOOC": 1, "fEOMbQbeHBcNADZWeAXBQTdPIZSUbEWOTYVOBOFO": 1, "eRYPHbcGRcHWVdCdfaefcVDZBNPbNKe": 1, "fefSKeEFcIAWJSFOAGWdKNKNKWe": 1, "HWAFYTbDOLbeTSLdaRO": 1, "ZdfbDBXSCFPCWOXaZPfYeHUHOBNHC": 1, "BIUJLMSYTUFXReEIQWHJNGLTLdFYeVAZdYINGaVC": 1, "bQGBbQGWDUNRERQZPPLafDeDC": 1, "YWYHfUDeATPRXUBO": 2, "AEHAFPRFRURURYZVZWDWEbYbOWBcaKBGO": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdWe": 2, "ZdLNKZJAEcbFDaPTJEPFWFQHT": 1, "OOIBTBBLXOLDEZRdZbVeUPXKECHTeYT": 1, "UaDaBAdLeVRfXPRQIbNAURAfPVT": 1, "bQbYWXFZEVWKMTUBVXaCNFEUXPNMZQWe": 2, "OMIZbRdWSYJIAdEKQRVRT": 1, "aXbXDDZNPcRXWcDaHFBddQWPHDDWe": 1, "IZVBBVYUBUGKSGdSYO": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIOOIBBO": 1, "OMaFEcSOLBVYYdRT": 1, "GfCDATBfPbDACAJSWdfYeNGJC": 1, "HMbECYBZSBVKbXJbebZGRGEMEaXGbRbBOFO": 1, "bQGBVIZdRJEUXPNMPdGIHYKAaaXe": 1, "HCZEKQaRRYddBbNXGDJEcQMdBcAEHYO": 1, "NAREFcCcCcCDSRKBNHNdBaaafECHTeUVIZdRRT": 1, "IZbREZVPTLKGBfJebYFHMPHeVBae": 1, "cCHObECVVDWPHDDPRbdDKVZNMPHVC": 1, "PWBJBIUJLMJLBWHcXZYNCAURAfPVT": 1, "HMbdMJRTaXFZPeZeNRGEMEaXGbRbBOFO": 1, "TeCOeJPLccGSOROQSaWeVPBQeLT": 1, "dDfPJNCFGfGfZbCEWZeEHJddEPXeC": 1, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRNRfTUKe": 1, "cJNSCDOTMOBfSfVSdQfLCcVNJJYDdfae": 1, "HBOAIEcGcEJDXO": 1, "UETTJcbTYUSCSXIeIPLFbAadJRe": 1, "bQEAHSGVTdWPBQGMZbeKRJdPWKPNET": 1, "HWAFYEETfYPadRWSEUNPLHJdFO": 1, "HWAFNFCSDWQcaNYCLJBTcZJQcSBLfPJaAKDKe": 1, "eDSdUfHVbdWPHDDPACQXYSQOLWCGae": 1, "PPXGFRURURNRNPUOUAaDNRTKeeHRbdFIKe": 1, "PPXGWPHDDHUDUdQRNLQLAVIWe": 1, "NAFLfOdASUTbJFJYBaQcWTNUC": 1, "bQGBHaZFTUbERVedSPDLfOFYBBVYYT": 1, "bZWOdASUTbDbeAPCbAeTSKe": 1, "BHDTJdReQLOLOLOOTdZBSeFdBfUPcC": 1, "HHYZeEfEYdMVZALOKTKIObIYUXRAXZcO": 1, "HWAFYEETfYPadLCcAWTWMRPBMO": 1, "NAFLSDdcfeJJNWWNRJGdAFZfC": 1, "NAREFBCCUFFWeARfDRaRTCKWae": 1, "IZTYBKFeaSLAZWAcJXZMbSFBO": 1, "ABVYUYNaXTbQGNQJSFVfEQIJceVSRe": 1, "HMbVVGBadQAQIZbWNWe": 1, "YdXfdKNKNKPZPVAecNfEHLeNBLFfZWLKVHYO": 1, "aWQOcTMGCBMBAADTeRT": 1, "febIUONSFHBOAIEcVIZdRRT": 1, "YdXfCDWOOWNEaUPfSCMeJECBLeENKe": 2, "bdPBQGObQPZPUOOIBBO": 1, "dLcXJeITPMOaMO": 1, "HWAFNeOYDORMTfFTWWCQSFHVPHVATZdSGWUC": 1, "HWAFNUPAWUNVXGRcIJXcJcUO": 1, "NAFQCJWZUbXeCFNZFEZaHRdMDMSAFET": 1, "HMbMdIXdfdTFeSICZeQPXUXZePBOFO": 1, "HWAFYWMVbXEQFBYCMYWe": 1, "NAFLfOdASUTbRSYEVJDTKe": 1, "HMbdfOYFfdXUDPBSBOFO": 1, "OTfdASFYTSUaRQMeBYaebCNZeOBO": 1, "HBOAIEcOGdCMOKe": 1, "NVNZYeJBBYZUeQKBBTZMcET": 2, "bQGBPZdOWcaTJHRDOeOMTXEUDae": 1, "eWHMBUTURNKZDPIXNDbQMASPNZFZeaPRe": 1, "AdeKbCcBUBBAeScYbEfcWfYSbC": 2, "YLXASfBPbdFDBPVOaDUC": 1, "AdREFdJdWTCUZceNGTORXZXe": 2, "HMbKAcQJFYDTeCFEDYcaMEAbWNWe": 2, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcOUTUKUDZHe": 1, "bQGBVIZdRJGINYTFIYaXROZEPYKDcdC": 1, "HWAFYEdHeSaeZIHSHDaERVceAHHe": 1, "IZALOLOLOCDOHJPBJXBHAPFPMdFO": 1, "NAFLfOdASUTbJFSEOUWDKe": 1, "AdREFHZUfFfFcYRQKe": 1, "HWAFNeOYJEIeKBAWTWEYT": 1, "cQZJALOdeEEBFfZLMBUXCEWPHDDWe": 1, "HWAFNFRWEZffTLKGBfC": 1, "aaMLFHSWedNTUQODPMPSXWe": 1, "bLEBBVYUAZYIaWQIXe": 1, "aXTfHAEDdUFFBSBfWfecNfEDEZRdPcRXUWPHDDWe": 1, "cCHObMKdFEVYQGXUGScOTVaAFZKXe": 1, "UETTJbZWMZfPAJbWdALLbJeJHINeCeQcJWe": 1, "aXTfHAEDBOSdQZXDOXWXKYSSdadFQRMeXcIFUWbWOOC": 1, "VVOcTWYWZSVbaBZUHZJFaNcCXKFKe": 1, "fEOMdLHOAcFNADHcKdZJVVUSCZC": 1, "MCIAFKKZaTaTaBcJPQORYPOHMQMSeRe": 1, "eWfbWNPPPTJEPFWFQcdXUC": 1, "aXbSFYTBHMHHVbReINLOLOLOINLSdMWSOPdFcEBcGKe": 1, "bQGBOEIKZdJWXFZEVJZbDHe": 1, "NAFQCJWZUbDOQRTWZBNHDFXXccBPKe": 1, "ODRdZWdZRVKaMUHcWXT": 1, "OOIBTVXOCZBKeJHVPRbQfXJHMPHeXe": 1, "HWAFNeOYSGDMSCaIfXfQYT": 1, "HWAFYNFIYJKOFKe": 1, "NAFQCJWZUbRSdFQbMDefEWHZPEEZfKe": 1, "AEAFPIPBcdCCWMTdKfXJdPFAYTZTEFJYGO": 1, "INLGPZPFBWDECQdHZVaAbHJGOGVTCGVTKe": 1, "BHDTJdReLBBVYUfFdHMaMEAfXafJCfSLT": 1, "TWPABOSEIDSeWZMfUdOeVKGcEXGJC": 1, "aXbXDDZNPcRXFMMCKBaaSLGYfPHe": 1, "aWQOcYTBbJfEDELHfNEIEYXT": 1, "OMIZERWfbYXMHO": 1, "BIUJLMFPAABdeTcRJUCHVREHGC": 1, "OMYNaXTfFfDeHZTSRFdGCWae": 1, "cCHObARLOBADEGaadHKKAGMcCcCcCC": 1, "fXSMLfdJHBOXT": 1, "AdeKbOTdfdRMebfSPHIcNLRIGLT": 1, "cCHObMKdFEVRVVPKLZZVCMISLDTLZOXJOOIBBO": 1, "OOGbOTdKNKNKPeYTWTUHDFbWHDCSVWe": 1, "INLBdRAZUffECIAEKKUHAbINOffNcUUZabSXT": 2, "HWAFYWEQCLBMC": 1, "NAFLfOdASUTbWXGdAecLUTdWNAIKGPAMIGDZHXRT": 1, "PPXGSCZFCROQFSdVbCLJNGO": 1, "HWAFNPIFddWPPKFLFLNKe": 1, "HMbXLQAFRGEMEaXGbRbBOFO": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUWPHDDWe": 1, "PeYJYJbVHRVVCScKFCJBYEXe": 1, "adUAVYCdFNLGZaPQQSRPWdOQRTKeeHRbdFIKe": 1, "NAFQCJWZUbGQDaDFXXccBPKe": 1, "NAFLSRbWNPdQBTDeXNOAVdNHWTRTfIZKe": 1, "MCIAFKKHYYfPNQAJLHFDdUUC": 2, "NVPOFJcfFXPGWATUZSdcFHbcRe": 1, "dLcXJeITPMOfIWe": 1, "eDEMfSJbQJQRXZVUbQHbUMIKe": 1, "THHSODILJbbfYFZIJePICaeFYTET": 1, "YdXfMOfDHCOLZBaQDfIOafVHLeNBLLT": 1, "IZVBETWRGMMfEDdeZOHeYHe": 1, "BCEQAeMZeEOHGZGbDYWCHPJDIFAfPBHT": 1, "HWAFNeOYFWUJNVPNSXKFKe": 1, "NVSGZdFDLOEaXCfAOCeTeBZEWWe": 1, "HMbBQbFFDfaVcPFXbOdUMJaCNHUHe": 1, "eDSdUbKHRJRSMDIWLdTNPBNOcXRBZUPGCFJVHWENRe": 1, "OOIBTVXINLcMYNaXTbXMOXQXVcKYO": 1, "OMZCBKeJfFdHMAZTfTLKGBfC": 1, "cCcCcCFRZIAKQUPMcZSATQdEHWXKe": 1, "NAFLeOeJOLcLcDMbZfFccRVT": 1, "BCTPeMQIbNXGDJEEFHeMaJPSffUUGXKe": 1, "BCdGNRAZYGccEbeTLaAFZKAUdRXMFDFaT": 1, "OAZOXPKSXPPPaacXO": 1, "BHDTJdReQHUYPUAdQMWXZSPDECBKe": 1, "BCEQAeMZeEOHGZGbDNFKFbbYPQBTKe": 1, "AEJPECVVDWCPBfIHSHFTAcET": 1, "aXTfHAEDBOSVZMYCBaFKbECHZfYCNHQJYNBaFKbdOSabcTBHYYfPHe": 1, "OTfdASFZQfBJATNWXdBGHDDESWOGVO": 1, "HMbdDJXcMKAaFYNLWLdNHWTRTfIZfQPBOFO": 1, "YdXfMOaYYfPNFfQIYWYHKe": 1, "BIUJLMJVfNabBUUCIJDWHWOEXKQLNJC": 1, "bQGBXVUcESGQCdEdJMO": 1, "HWAFYEdJbRYWLbQVAHAbWTKe": 1, "TeCOeJcCOTKBMEWLWXAEPfeZDaGaCGbbHe": 1, "GCNJFZdOaBZCSZYXMHO": 1, "ODREGZUTPOOOCaJebTZWKNUMEfTRe": 1, "eWHMHOWDDXBYHNeEfHcIJDeQcJUXO": 1, "aXTbSFYTBHMHHVbReIYDEZREAYVaNEbDHFAUADHRbdFIKe": 1, "TDOOMUcCaaVRRbTXO": 1, "NAFQQADZQUAIIfOdASUTbC": 1, "YTTHbXeeVeCFZAcbRbROfLMVNZTMPIMbIZDFDORMTfLT": 1, "bQbYWXFZEVWKMTUBNADPFEfbMTXEUDae": 2, "dLcXJeITPMObDSDHe": 1, "fefSKeEWKMTUBbQGWFRURURHe": 1, "HOdCLVXcNNDdONTYVOdQeRHfEIEYIbJfEJO": 1, "HUJSESQUPMcPXPRQAURAfPMcCcCcCC": 1, "OLGZUTPOOOCaJebTZWKNYT": 1, "PPXGSCZDSSYZTNReKfdSDeSHRbdFIKe": 1, "ZcSIcceNWNVaLQSHDJKDKaT": 1, "HMbVacDNVZNMPHVDZTaWe": 1, "NVNZWUHVSeAcfeJWGaRBQBXRAXZZXIVXSKTNC": 1, "HWAFNQBJFJUEeRT": 1, "BCOOOYOKZeSdVXZMKddbQJFYJO": 1, "TZUfdbYfTQULATZdSGWUFRURURHe": 1, "IZbREZVPTLKGBfFcINGLae": 1, "OMNNSCZDEDVacDIHSHFBO": 1, "OOIBTBJcQEcNNPadLXe": 1, "cCcCcCDPCDCcBUHBZNXMRUMVMITAFfKDXNKe": 1, "cQDJGZaTaTaBYNYeVacDYO": 2, "NVNZWUATYDKPHHT": 1, "PPXGFRURURNFZFSOHeHQITC": 1, "ZdZaYPZPTLKGBfSKBZVKFPbXZEBLcVT": 1, "ODREWQcbdbfMHVTWRGNVBUKcTKe": 1, "bQGBANdSSFHPLPBQGMcNBOFO": 1, "eDSdUbJARGZaaNRaO": 1, "HMbVXSAWXaUSCZC": 1, "YdXfMOfZPDHCOLZIDeRRITfTLKGBfC": 1, "YTcNPbNffSLBGVPRe": 1, "ABVYUYNaXTfMPSXZFFfeNJXIHOReeHe": 1, "febdSANWBOfYSYNBMbfRKIMbABOfPGLKcZXe": 1, "BPHMAZTaHZXbSYbcLFcXAFUTUUO": 1, "HMbVZNOSPDTLLFSHAMCMVXAAHASCZC": 1, "bQGBfFaMLVSGDOaBANKBYfBQHUHe": 1, "NLJZCEQMULaDAEKKSLcSEO": 1, "bQGBbQGWFBaaeHGZOAcFMBRNHUHe": 1, "PPXGSCZWPHDDZaaNRfXaIRdNRQedFNGVT": 1, "eWfaYHIeJYKabWTfTLKGBfC": 1, "fXGWdUDGNKJXcGBeDdeFCYAOIBZMZC": 1, "HWAFYeNcEVC": 1, "cCHObMKdFEKXFZEVWEYcZbBNTaSdFaLbFFRURURHe": 1, "bQGBNPBFDHOIVBAQbHGAXJNbMSXe": 1, "aWQOcYTBYRYNZQdOFfQdIKGPAMXT": 1, "PcVFHMPaNKXMWBcAeSZcbdfIPFDUDTC": 1, "aWQOcYTBbJfEDdGUKCMeIKdFHaO": 1, "PPXGSCZDDJLHFDIHcFITC": 1, "fXGWBHIBPLRCEHARe": 1, "ABVYUOUdAHLAWXFZEVC": 1, "febdSANFRWdNHIQJbYROKe": 1, "eDSdUfZPUMVBFUZCHQfBSdJRe": 1, "eDTANZCLVXcGbXHWbXaTFKGHNVLZHT": 1, "BPHAUbWNZXGOXUSHXT": 1, "NVNZWUVVOcZFKIbLWeZQMZC": 1, "IZbREZVPTLKGBfWJSJcYaQWEYcZGO": 1, "INFddKNKNKPZZGbMPcNVBUKcbSXT": 1, "PcVJZTOeTFVHPPYQKZabbUSUTIZQXbLVWCOOFPdaDHWFZDNLOLOLMO": 1, "fTHYPMPSXHSdNBJIREVC": 2, "bQGBVIZdRJVVPePPSHRReKe": 1, "HWAFYEEBVcPDIaSGabRbSFMLaUC": 1, "aXfGEbfFRURURYAFHSdIeZNYO": 4, "INLGPMPSXPBccFRSTELFKWIFdCYO": 1, "NAFLeOeJOMOLZWDTPPFMLaDORTNJPBDdPIdJBZfUNLT": 1, "ePCefAEaMCVKGPQLQBTdCYO": 1, "HKBAEBBZRFZBBTcO": 1, "eDEMfSJbQJQRXZVUbQPBHHUHaO": 1, "eDSdUfIZaPXKMdbDHT": 1, "aWHMVKbTBPAAMFMZVAKLZWNWe": 2, "OMeRQDSFeaSUefDGYUSPJFSIZIBLaT": 1, "PWBJBMWASUJNVJKMFJQPYXcBdHC": 1, "HMbTWVdNHWNOOdeBVOSZWNWe": 1, "HMbVAbHT": 1, "TDXDPZWORTeCISUPYJObaTaTaET": 1, "HWAFYTfQfQAYaFAUADZGYO": 1, "eDTANZCLVXcfSJbQFdMdbDcHDQITFSYYBae": 1, "cCcCcCDPCDCcfNYbOEYRAbYPbbTZWKNYT": 1, "UETTJbZWOIXYBYATKBTEIbeRT": 1, "aXTbSFHMHHVbReIYBRRCaSddQeRHfAFZfWZffIKdFHaO": 1, "YNaXTaSdNBUYLMcXT": 1, "INFddKNKNKPfECIAEZKebJARGWe": 2, "cCEaLMWCJCCLOHVZBYWbMC": 1, "HMbBXafERWbSAPPaebWNWe": 1, "BPHMAZTaHPeZBNUZMYXDcYEVfdZRO": 1, "aWQOcYTBBKbVHYYfPNQBUDbVT": 1, "AEHAFPRFRURURNFSBMBAWTWEUAZfXAPae": 1, "NVNZYeJMEZCPXPRQdDSdAae": 1, "fTZaTaTaBYNZSBJIREVSGDMSdC": 1, "eEBZFJZeOQHbUMIffSQJNZQVfLeYO": 1, "cCHObdRdJJXCcaWQOcNNOaUALOLOLMO": 1, "NAFLeOeJdLeLTabcNVDWQIVBbFC": 1, "HVUBYBBVYUfFdHMTafPXPRQEdeXe": 1, "YTBaXEbQFPIEEBBcFPIWJbHFRT": 1, "IZVGZeWRBfEDdeZOHeYHe": 1, "OLSHIfDWBZEWaSdVLC": 1, "HMbIXQRfAeQNQaAMCMVXAAHASCZC": 1, "INLYANAadONebEJJHMVGZUdSUHTRLdYFMdcHe": 1, "eWHMYTBbdbDNWeIALeUINCIHRJDDXIHERdaKe": 1, "bQGBAWQNAcQaPUPcDORMTfLT": 1, "ZdZbaBOQFCESXGBUacWCHT": 1, "BCEQAeMZeEOHGZGbDYeNcEVDAMeMaDMC": 1, "cCcCcCFRZIAKLRQaDHOeWWbedQDIVXO": 1, "HBOAIEcADDbdEPQBTKe": 1, "IZVaCQLOLOLOECVVDJYMTSJYMTBNFecMEO": 1, "febdSANFRWdNHIQFRURURHe": 2, "ABVYUaXAZfLdZGIGPZAWe": 1, "TeCOeJcIXEQRbCACaWNLMBUIPbVaKbNVCMIQZfAC": 1, "NQEDIKELcNQKAENUEcDCacUO": 1, "TWPAOPeIJDbXHVUdMAOEITKe": 1, "ZdZbaBBUcJZKCBHXGFbAGebDCSLSEQFZfC": 2, "HWAFYRQTaNVbIeIPNJKe": 2, "NVSGZadWIRcYbEfcWbQTZOUdTC": 1, "BCEQAeMZeEOHGZGbDYDaKLITRe": 1, "HWAFYWEbCbcEJKaEcfaNKe": 1, "AdPcRXUJdDBKSdEDFDedPUcSKe": 2, "IZVGHeCXLEEJPMZeFTWePWe": 1, "aXTbSFYTBHMHHVbReIYGYfPNPcRXJdDBKSaTfRe": 1, "HWAFYfEeNSBZQXKFKe": 1, "OOIBTBaKDDKAQbMeJeMTDUAVO": 1, "BCVLBLKNYVeeefEXLO": 1, "BIUJLMFPAAMbTBYbBHUSTDLO": 1, "VOffSLYANAadKBFPTcAATIMZMTWGO": 1, "BPHMaKBbTYWeLJFaMEAbFJGO": 1, "AEUaYPZZTLbeTQHFHDQISPJXcEBC": 1, "BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe": 1, "YTcEAJDTbAMITKe": 1, "ObUDZMULAFEJKaEcaMEAfdSRfAAXe": 1, "INLGHUDSJNQQdKBUPfECIAEcOHT": 1, "GCSXHHVQIZDFJNLcOdHFOUJPNSIHHZIBHXCbfZVO": 1, "aXbXDDZYfEYdMUcMABVYYT": 1, "aWQOcYTBbJfEDVacDdQeRHfVCMILaAFZKXe": 1, "cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe": 1, "NQEDAURAfPMVMIHVHYQSUPVTNSHNYO": 1, "BCIKSTPFeZKUIRSNWXFZEVC": 1, "cCOTKBcIXEQWFPQLQBBO": 1, "NVSGZadWIRcHINeCeQcJZedWIbAaLFSeKe": 1, "febdSANSGDJQaCRbNZBUfJDVSKe": 1, "eWHJbQEJNCYWEYcZbBOFO": 1, "ABZJJHVSAaNCWLPVIRPLFGO": 1, "IZVGPVUfEDdeZOHeYHe": 1, "VKGcCcCcCFEeNdDYBRXZXe": 1, "fefSKeEFNGBGQXBKTSdZPMGEJYO": 1, "HWAFYSGPcVDZBTUbERVNUESGQCdeBVOSWe": 1, "GCSXHHVQIZDFJNLcOdZeYSSETYcbWEfZXXddOERe": 1, "HHYPWMPdKPOMHBHVPRbQfXRT": 2, "HWAFYDEZRdZbVeUZDYbIeIdKWFHcKdZJVVWAUC": 1, "NAREDMDRPbfcVDaaVcbRZYZWHccNZRO": 1, "aWQOcTEYDBOSdUWXQBOabcNVDSfAUHcVT": 1, "OATBaYHHHUSFKCTPROET": 1, "OOIBTBGPfBKSOHYYIBPNFMYCeVPfC": 1, "OMHMbMPMZbDUXAYHNEbHeFUSeGDPNZRO": 1, "HMeCJHAVXSAWPHDDPNSRDAJLT": 1, "OOIBTCeMJYGIHRbdFIKe": 1, "ZcSIcceNSEYKDYWEIFPGUfSVGPQQCXHe": 1, "OOGbAZAdFcEDJIAdEKQRVJEBYJO": 1, "NAREFcCcCcCFcFFWECHTeUVIZdRRT": 1, "YdXfdKNKNKPZPQPIUFZZZBYKe": 1, "cCHObOOYKYYaDcOdJeaILYDdKNKNKWe": 1, "HWAFYTbVYOXKFKe": 1, "dLcXJeITPMObOVKGaLT": 1, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWJCVXGUaXEHT": 1, "ABVYUYNaXTfMPSXZFFfeNJXIXCEC": 1, "BIUJLMJVfNabMdLERENZDMQPNKTZIKdFHaO": 1, "ODREGZUTPAaNCWLUSIKFO": 1, "BCdGNQGPLaAFZKAUdRXMFDFaT": 1, "ZCOBeITPBRWe": 1, "aXTbSFYTBHMHHVbReIYBBVYUYNaXfLSKDBMdeVaAFZKXe": 1, "OMNQEDOeAFaITUZTZCCQJET": 1, "HZUaQJdDBKFfHET": 1, "HMbdJOPFNLcGKXCKZWNWe": 1, "HWAFNRWMPNSMYZXUCeeC": 1, "eDSdUfMPSXZIUONSFTUQODPWAecDKORe": 1, "HWAFYTfDHCOLZIHSHFTdbLcYFPWe": 2, "HVPZdZGIGPefQPTdLBHJPCePWdJNQBUC": 1, "eWfaQFNYKdadNOODCLaAFZKXe": 2, "AdZZBOSBaQDbXDOXC": 1, "HMbVAGAZTbWNWe": 1, "HWAFYDEZRdJbENeDBFdMOPXYJUCeae": 1, "TZYBETfTWeaQHVbOSKGO": 1, "HHYPeNfEfFOWOVVLRZYLOVae": 1, "HWAFYDEZRdJfdHdFeNfRDHT": 1, "OVYHSddeOIaONEVdZXbBPBRe": 1, "HWAFNJfJCQfUJeaILYJO": 1, "INLGHUDENVLeFOfMQcCVKLLHe": 1, "BHDTJdReLYOLEaMNcfAHHbfKe": 1, "aXbSbcBOXBYWYHbIODIVVO": 1, "OOIBTBUNJEREcZbeKRJOIZCBKeJVIZdRRT": 1, "BCEQAeMZeEOHGZGbDNZJFRHJPNOGFO": 1, "AEUaYZKZYYKdBcGcNHC": 1, "ZCaDMSGOHBTDOOMYTBaDMC": 1, "eDTANZIICNAAREaQRVOZXQEBJGdYO": 1, "INFdCDOTEKBeJGbXHWbXaTFKGZSXT": 1, "aWQOcGfNGcQYIMdUfFaMLXe": 1, "AdREFHZUfFfFcYRQaXdRT": 1, "eWHMbNXGDJdeJBcKZJAUbcARJfaNbLWZHOaO": 1, "NAFLfOdASUTbDIdJcCJYOccCVDeKaNeWbXMbdRRT": 1, "dLYHMRFeRQcDaIPaMNfQCcbNXGDJae": 1, "dLYHMRFeRQLOLOLOBBPKIWSSIAZfAC": 1, "OTfdASFGWcOCbABHTcTHPGMYKe": 1, "OOIBTVXINLcMZNEdZAGBfTKe": 1, "HWAFYYNQBWFfYSbC": 1, "HCZOKTfGCaNPHcXdKYEGHNfLae": 1, "AdPcRXUSdEDeZVZMYCVXXe": 2, "PUTKdFfUYQNUTEYDVZVCGIOOIBBO": 1, "HWAFNeOYRQWcDAVbBHMZYO": 1, "aWQOcdLYHMRFeRLBBVYUZbeKRJTDXbae": 1, "EUXPNMPXKWBFZVLBLafANUYO": 1, "OOIBTVXINLcMYNaXTbCBPGDDRTYC": 1, "INFdCDVZMYCAZbGcINNDaeKe": 1, "cJUJDRSLQKLdaRO": 1, "PPXGSCZFRURURNLVBHVRVKaMUHGeFZBQIO": 1, "cCEaLMJXbJZbQLOLOLMO": 1, "BHDTJdReLGPRbdDXBWBKIeZYUVLcbdYICC": 1, "YTBbdHbdDEDBcfdFOKTBNHC": 1, "aXTfHAEDISIBTINLbeTLQSQZRO": 1, "NAFLeNLYANAadBcfdQANABLcGOaT": 1, "eDUdGVdNVOPEaTMcEBVeQETC": 1, "cCHObTULHfAFFQZcVIZdRJOOIBBO": 1, "cCHObTYWeLJFaMEAaYLfDbaTaTaET": 1, "NAREFEJKaEcZGccARTKeeHRbdFIKe": 1, "HWAFYbIeIPNQBDVRGCMRXZXe": 3, "cCcCcCDPCDCcACOJOMXdKYEaEASNHRUUO": 1, "cQZJALOdeEEBFfZLMYWbMRAOAcEUFRURURHe": 1, "YdXfTQNdeAWNTUMKPRbdJNabIKdFHaO": 1, "BCEQAeMZeEOHGZGbDYdaWeae": 1, "HMbECHTeUbLBZC": 1, "NAREFZGccVYMbNXGDJEXMbPXJOYO": 1, "PcJJZGafIRVVSCZC": 1, "OMHBABKHUcKPebBGZUdcCGZMWcbTFNeKe": 1, "eRYZDYDYOIKdFHfVfFfZdOUcO": 1, "NAFQCJWZUbaaNRfAKfKSceNECYBZSBVNRXMFDFaT": 1, "YdXfdKNKNKPZZWLKVHNEQfKCUKXe": 1, "HZUaYHUFfHBTbHAcUXe": 1, "HWAFNRNFSUCDBae": 1, "GfBQDAMeUCXJYSGHAEUZSTTAIaO": 1, "IaaVGGeaYPZZXeMFJKeKe": 1, "OMTVBENNQASXVVFNVBUKcTaWYZfefYSbC": 1, "TAeObJNGLTLRENZDMQPNdcCJJaaSLPQBTfUIaNZXQYcO": 1, "OMNQEDIKELcNQKAENUEcDCacUO": 1, "NAFLeOeJHVNTPeVZAHGaCGbbNZJFJadKbCTEQCZFbNXGDJae": 1, "IZVWCGTLDEZREATZdSGWUC": 1, "HWAFNRYdNHWBOCbbC": 1, "cCHObCBWaEdIPPSfDcAZdJAINLBBVYNCRe": 1, "bQKPWLVRbYTVMeOJaVPbJNWWeHT": 1, "BPHAUaLEbOMFcZScTSDGISGaXe": 1, "HWAFNeOYJMDIfXILMSBSRe": 1, "bdPBQRSINfAONWeDeRTLcffPFDUC": 1, "fTZaTaTaBYNZSINSQcaGKRRT": 1, "eEBZFJZeOQPPHFBddQSMfDYGHbOUC": 1, "HMbOCaJeaJERObWNWe": 1, "HWAJLGbbeLbIeIPYBAFBVFTUZSdcDZVAMO": 1, "GCQKEaAJDbPXKDfabSWUHbWPHDDWe": 2, "TeIdJEYNZeYO": 1, "aWQOcPOKHRFIFaTJWe": 1, "HWAFNeOYDUMAPYXMHO": 1, "GCQKEaAJDbPXKDfabSWUHbDORMTfLT": 1, "cCHObMKdFEVbFZVGAZaePLSISWTPWIfcdVT": 1, "TPOaXGHFVVLYPJaAKDfZHcOUfFPbQfC": 1, "bdPeBHMaGNYYcdHZcNSNWeDeRTLcffWe": 1, "IZVGPVUfEFKYOeeOZbNFbKHDHT": 1, "ABVYUYNaXTaXHBYeNTDVXORe": 1, "fTZaTaTaBfFdHMAZfeGEEC": 1, "UETTJcJTPCXJLbBBcbFDaNSdfBPKe": 1, "HWAFNeOYFWUJNVPNFO": 1, "dLcXJeITPMObDQKIUDVRGCMC": 1, "AEAFSXZCTPVVGcHCbXfXe": 1, "VVOcNNDdONBBLXOQFMYCeVSCJXXT": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "HWAFYBfPDBEDHIWDbKIdDZBdSNOYRLCFWAUC": 1, "cCHObVKKMadMUPXPRQINFPIWBccCcCcCC": 1, "HWAFNFHQVLHT": 1, "aWQOcYTBfBZVNLbMBYGUXe": 1, "ZcSIcceNJNbdKCFKVWXATRe": 1, "HWAFYRKGCbGNMQMLPSCTaMO": 2, "eWfbWNZOdLUObUANTVacDYO": 1, "IZbREZVPTLKGBfWPBZOC": 1, "HMbVAGBOXBaXfMPXcRUSCZC": 1, "NAFQOVLScXQOVZadBeDVeUWe": 1, "AEAFSXZCTPVLWLdTC": 1, "aWQOcYTBOTfdASFbLYUbQHYYfPHe": 1, "eDSdUfYPQBcYZNMdbDcbOLRe": 1, "OMIZdJNQcBBMHO": 1, "HWAFYWQJJSVHFAUVcIO": 1, "YTBUIHOdEaJPGAAQecGKSGOAIEHT": 1, "fefSKeESfBKQKAVULcMePKXGGFcCcCcCC": 1, "NVNZYeJKTYSfOUGfNQELEUZSHeWaMSeKe": 1, "OMeRQDSFLFZNAdBAFVNaLaETeDdWe": 1, "OQHUYGNdMGDZHXJbNXGDJae": 1, "GCSXHHVQIZDFJNLcOdHeHbBGbbeLBXe": 1, "eDUdGVdNMHRNQMDXcRPPKECKBHT": 1, "NAFQCJWZUbGSRaPSPZBSMGaFNRdScYAZTRe": 1, "HWAFYJPASVZKHSYeGXT": 1, "ZOOCfXVQEEMMcQeaREPYFMZZCLVXHT": 1, "AZfHAEDBOSAKYBJYeEIBPNZWdDJcXe": 1, "bQbYFcIKSCYbcINHJNbOVVTYABOFO": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBULQEWWe": 1, "XdKYEaEALMHWadVCMILScXQOVWe": 1, "ZdZaYPZZGbEVdZXKGPEQbNBEBUSMTKe": 2, "NQEDMVZALOdEfcFbC": 2, "eWfCDBOSVacDNOFBfDEHJFdLeAWTabSIbLO": 1, "UYIVaVbMVYNFPdNYKFFaMEAKe": 1, "NAFQCJWZUbEXROEccQYIMdUTWfbGQDaYKe": 1, "aXbSbcOQQVWXdBGZXeNLOLOLMO": 2, "ZOBJZGTUWfaYYfPYTbGNEVdZOMO": 1, "BCEQAeMZeEOHGZGbDYZICFLcbAUC": 1, "AEUaYPZZGbdEKQRVJcQYIMdUTSDPCJWXe": 2, "bQGBVIZdRJVVPePPSHYYfPHe": 1, "YTBaXAZfLdPcRXUFIMNWLdTC": 1, "NAFQCJWZUbGQDaYfXPRQNCFeZIJDNSNC": 1, "PcVFHMPbJARGPXAPEPYKDcdJKDKGbPCfUaKBGO": 1, "IZVBEJTVFbXUCeeDNQUZARYfYO": 1, "GCLaYCKdFYFcCbNBOPVKFESTEYT": 1, "aXbSbcYWYHfAJYWYHacCbcMLaC": 1, "HWAFYHVRFeRLeNGTOJERXLMLFSWe": 1, "eDSdUfOSWEYBZJJfeebZHGSIUC": 1, "VMITcZJLCZBfaNKe": 1, "BCTPFeZKUIFcJYeMHRNQMWSCCCHJDTbNeHT": 1, "aXbSbcOQecDKAJDKVHbVDZaTaTaET": 1, "NAFQCJWZUbXeCFNZFQTXWDTSCUbbC": 1, "bQGBPZdOWcaTJPabSWUHbDORMTfLT": 2, "aWQOcOLQQPFYcAQFJO": 1, "PcVFHMPaRReaSdIeZNNAFLWEZfefSWe": 1, "OMNNSCZSOGXCcZCBKeJbWPXXO": 1, "bdPBQRSINfabSWUHbSGeFTYceMTXEUDae": 1, "IZbREZVPTLKGBfDeHeIeNJVEVC": 1, "IZVBETWRGEAJbVZTUPUOeMO": 1, "NAREDMJaAQLOebQAESPBDOLWBOfKYIIBcVKDSET": 1, "eWfbWNPPZGNdaHMO": 1, "IZdHUYWESdMWWHDCSVZXdGVDZSdSUWDbIUOYSIUC": 1, "OOIBTBUPFfFFTMAOebQAC": 1, "INLGPZPfECIAEKKUHAbECHTeYT": 1, "HMbTYWeLJFBBaMEATbWNWe": 1, "ZcSIcceNRXSTQLeZdSPINUdNPIHe": 1, "OMTVBENNFZFJFRLRGO": 1, "HMbIZJBANFMPQSTEDFaTbYBXe": 1, "YTBeWfCDEaJPGAAQecVKfBLWeDZQNUTEYMO": 1, "ODRdHUYScXQOVZXPOXHeCLJUTGCdNWQIXe": 1, "BIUJLMJXdDXFJZbUBVfJDFQWIXADOFRbQPRe": 1, "bLEBBVYUIZdDMcMdPFKFBOPdQVMSdaHMVHSGFO": 1, "IZVBETWRGfOJbARTKeePUcedJHBVUC": 1, "cJaUFIMNSeCXYHMNfUUcJaXJVT": 1, "NVNZWUHVNdQeRHfILWXNGYPFQFcEYYUNZdeLEHT": 2, "HMbKdFTHXSWEYcZbMSVXMPBOSVfFfZdOUcO": 1, "AdZZBJOTXNOQZJFJadMXbIPRaO": 2, "NAFQOEfSPMHBcCcCcCDRUWFLcVCBeMBXZeKe": 1, "dLcXJeITPMObDSDYPVIRPRe": 1, "fXGWdJHBHVPHAYRKZZAXZLO": 1, "aWQOcYTBYROdMfNLHSdDWe": 1, "HWAFYDEZREbUObQGNLXTFWOVVWaIfXT": 1, "HWAFYTfNOSTUZXDCJFfaNbfFTUZSTHT": 1, "YdXfdKNKNKHUScWaPCUHMHeIWC": 1, "HWAFYDEZREXOeFaQae": 1, "VVOcdLeLWCGTLSdMWSOZEdHOUKe": 1, "TfNZeFcCWUNJZPAEGMObFQTXWDTWEYcZGO": 1, "BKOAZbbMVaIBWVUZWHSUHePLSISWIPPSfDHT": 1, "bQEWMdCPYLaALSGQCdBC": 1, "HMbMdIXdfdTRKdSDeSeZBOFO": 1, "OOIBTBBLXOLDEZRdZbVeUPXKXKFKe": 1, "NVNZWUaMZXRURNeJMBYGaePTWEUVVOHT": 1, "cCHObTYWeLJFaMEAbKCBZYfNOQIXWYO": 1, "YdXfBOSTQTHBfPWLIZSVafVAPBWHAcLRfMHSUZGcBHe": 1, "cCHObECVVDDORMTfFEIZEHaZVUbCBMNLVT": 1, "VObdZZaBfCCdDeQfYYT": 1, "HMbdGFdKAcQJFfHPSOeKe": 1, "cCHObVKKMadMUPXPRQVOPdUXWPHDDWe": 1, "HWAFNQTJPAcSfCSRBRT": 1, "AEaBVcYSYeRT": 1, "fERFYeVQIVOMbEC": 1, "NAREFBCCUFFWeARfDRfEOLKe": 1, "BPHAUfXAPEJPECHTeUZUYaTTUC": 1, "OTfdASFBPIabKeKeZQObdSVQZRO": 1, "YQKSXPTLKGBfSOEYfDeZNMLTKe": 1, "NAFQOCUcLYANAadVeKZDYBLcOcOIIeSGTIKdFHaO": 1, "BIUJLMWSUIQHeSAdCMdIXdfdTJTRHe": 2, "ELSXPeJIPQJQVVdNZTeCFEDYcHVPHAHUHe": 1, "BCTHeUAFfffXMPLVJGKTJVJBBPbBfC": 1, "HBbfBAJPNPTDCHT": 1, "bQGBIUeBAHUZeWNZJKbIYUNfSeVSTdTUC": 1, "NADPFBbSFcFXeUNZSOIOFSbLJbWRC": 1, "YdXfdKNKNKPZPdbYNaLScXQOVWe": 1, "OaaKQZZMcBfFdHMZQbDNFMYCeVDbPaT": 1, "AdPcRXUDEDOeWFeTKEcLOIWe": 1, "YdXfCDWOOSYeJYdXfMOaLERJDTOeaNRe": 1, "NVNZWUHVSeAcfeJWGGZTLGePTWHT": 1, "fXGWdUSYZTNReKfaKAOOVT": 1, "NAFQdGFEYKcbJVaYHSKUAZJAUbcARJcQAGO": 1, "AdZZBOSMPMaWQMAWTWEYT": 1, "OMHMbEdeAFSVAaT": 1, "aXBNTfUWRFMeJAETfACQTPRXUTVTaRbdFIKe": 1, "OaaKLRXFeSICZeQcJJIaLKKXe": 1, "cQZOdAfbXXddOERe": 1, "aXTfHAEDISIBTEVHWEcTNFEYTWXKYSSdadFQRMeXcVQSRe": 1, "HZUaQSYeJPOKHCcZQLcO": 1, "IZEZVPKBZTJVPfOXSdXMDDBARGRT": 1, "bQbYWXFZEVWKMTUBVXaCNFNADZWNWe": 2, "aWQOcYTBbJfEDdDFQTXWDTDcCHfWe": 1, "cCHObVZMYCAFFQZcbNXGDJEbOMNMTbYIPfZET": 1, "ABVYUNNZVPXPLSdMWGMOIaMEAbKMPAfWe": 1, "aXTfHAEDdUJFUFcUKMBKVZMYCISIBBO": 1, "VVOcTWYWZSVbaBZUHZJFaNcCBaQDabHaDHT": 1, "INLYMdbPDGYUJIVO": 1, "dLcXJeITPMObOVKGaFEJKaEHT": 1, "HCZVFaNZXCbYPTBVYScXQOVWe": 1, "YdXfdKNKNKHUSBAPBRYcFITC": 1, "BIUJLMFQTXWDTRKecNfdRTKeeZSAGbSBOAIEHT": 1, "eDUdGVHbAMUWPaDMWXFZEVC": 1, "GfHOUbeKKZafVfLeCaceYO": 1, "eRQWcIXdCcaIXMTBEJcCYeFVIQJGEVaUcJWe": 1, "TfNZeFOBOZFbTVQWaHNBcQYIMdUADDbdae": 1, "OOGbIWSGAQdOBPBOIVNJJSVZGGO": 1, "IULDEZREFcUcSTaWYEPBCYO": 2, "AdZZMQMLSWdRdJceBeWe": 1, "dJLYMNVePbTQRTWZBNZGEaaWPROUIHeBAVZKWe": 1, "HMbOHNJObDGVRQYIUYTET": 1, "eWfaIDJNMTabUHRbdFIKe": 1, "ZOMTXEUDdQbHVEZYUaNZAZOHNBJOTXNAFBOUTUKUDfAMO": 1, "NAFLSDBJWbOEfSPMHBaVTbYHbUTKe": 1, "HWAFYEEJWcRXZXe": 1, "ZcSIcceNSEYKDYWEIFPGUfJIJUcO": 1, "cCHObONdPbABJRXTcXCEFRURURHe": 1, "NAFLSRfdQBTFNRaJNVTUNfFHe": 1, "IZVGHeCXLJTVFfFeNDYTUET": 1, "VObdZZaBTYFGCeCVRJcTfMSPIeKTBHRAEIATXT": 1, "AdREFdJEeRKTMObIUONSQecLUTBYKe": 1, "OOIBTVXMAcZESHBZEVDZIET": 1, "bLdHUNcbdQNcRbZEQDPJRWe": 2, "HWAFYHNTQTNWRfDFO": 1, "HVUBYBBVYUADDbdEcLcDNOLVYZET": 2, "ZdZbaTaTaBBUcJPQfQAYfeDIVaKEcNTBPWZJae": 1, "NVSGHKLOWWbBYOWEaXCfAMO": 1, "TeCOeJPLSPMKPEcBBMWQUeZOPXTbBWBIbQTNC": 1, "GCQKEaAJDbJANafabSWUHbDORMTfLT": 1, "cCcCcCDPCDCcACOJOMYPNdeBVOSWe": 1, "HMbMdIXdfdTRVKaMUPTLKGBfSCZC": 1, "febdSANFRWdNHIQWPHDDWe": 1, "HMbBbOUOOJVfJFYNSOHXdRT": 1, "HWAFYSGZXbTYC": 1, "EGTUSGbIXRRBeaLdFMO": 1, "dLcXJeITPMObdTYMIKe": 1, "ODRESfPeSEYHbAeaWNZCTALVT": 1, "cCHObKdJfFdHMXCEFRURURHe": 1, "HVUBYBBVYUMMfEFQTXWDTJKDKaT": 1, "aXbXDDZNPcRXJdGTTKdWZEYBBVYYT": 1, "eWfaYHIDJNMTbXUCeeWXFZEVC": 1, "GfHOUbeKKZaaNRfBaFKbdKCFKVAFUJC": 1, "adUTWVYMcQPACQEKDBGQKWMO": 1, "NADPFBbSFcFXeUNZWPPLbSIPRLXe": 1, "eUFJZVacKdZJVVUWPHDDWe": 1, "dLcXJeITPMOfIPJaAKDKe": 1, "HHYPFOWPHDDZFUdJVEFASOdICFHUeUae": 1, "HWAFNeOYDPPHYKHGHNKe": 1, "NAREDMFAEREcZNAdIBdEPELT": 1, "HCZANHDdLYBNPLbbHVJNSZWbECVVDC": 1, "TPOaXGPAJcPJYXQWVeADPTHO": 1, "INFdBOSEOCMHMZOXeHO": 1, "TZYBETfTWefPZXDCJFABKIWe": 1, "NAFLeNIJSeZRBUfFAeFHOReeYbOMFcHYKe": 2, "OOIBTBBLXOLXEOBTUSPJXCHT": 1, "cQSXZaTaTaBfFdHMcQYIMdUaMEAbSAccTXYaC": 1, "BHDTJdReLBEHAFPROaSXWTNUTIGdAFUKKWe": 1, "cCcCcCSYeJfaNfPESHbfNFNVBUKcTKe": 1, "GbQUJWPHDDPWVaTOAdLXe": 1, "HMbVacDNOdRSCXJNBOFO": 1, "HZUbWNZAABfWcDaebJRXFYO": 1, "NAFLeNQQANABaORbDdRJZGbGYJO": 1, "OMeRQWNOTOOIeZNBAFVNaLUbQWe": 1, "NAREFBCdEcXUFcNQFBNLJWe": 1, "PPXGFRURURYTfeMcHBcGcIJKae": 1, "YTBHMbAaBcHOGZWFfRbdPNZFZeaPQQDIVXO": 1, "HWAFNeOYFLDUaeVbaO": 1, "ODREBdZWTQCGVTaWeVHJefOBMXT": 1, "aWQOcTEYDMYEPHeOZTZdDC": 1, "HVUBYHDWNPMPSXPJJASECdUWBZEWaSEO": 1, "NAFQCJWZUfRFGdNECYBZSBVNRXMFDFaT": 1, "OMNNSCZFcYWCGEbIeIPHe": 1, "eWfbWNZFXFBcEeYTBNZfAC": 1, "aWQOcdLYHMRFeRQLOLOLOdQeRHfOPRALT": 1, "NAREDMRSSZWEGPXPQScGcVYcPJPae": 1, "AEUaYPZZGbdUJFFSfLXT": 1, "NAFLeOeJOMOLJKFQMbZfWQIXe": 1, "OMIZdFSUCKVBVYYdJTAcHe": 1, "bdZSAccTXYaWHFXedFIaQYaC": 1, "bQGBTFJNGLTLBGVPLDFCWPaDMC": 1, "ZVLLBGVPLWCHBRfOHfKXNWXFZEVC": 1, "cCHObMKdFEAQdOBfScdDRfBSdKNKNKWe": 1, "dLYHMRFeRQPcRWTfQORNScTUDdWe": 1, "TDUCDBOSEbWcXAcDTdUEcZIeZMC": 1, "HWAFYDHIWDbKIdDZBdPUDZSMDIaUDdWe": 1, "aXbXDDZNPcRXFMMCKBaaSLBBVYYT": 1, "IZALOLOLOICWRdGOHHABNaSdFaLbFC": 1, "bLdLOLOLOOTINUFDINFPIWBHT": 1, "YWYHbLSUMUHeBMNZDJefDcfCeEUbQWe": 1, "HWAFYDEZREFYMZTULHfYO": 1, "HMeCJHAVXSASeONDTeJNHC": 1, "NAFQdGFEYKcbJVaQWBCYbSVbYSLbKAQGGLT": 1, "HOdCLVXcNNDdONINSQFSUCKVSVJPVT": 1, "eDSdUfbfKBZTSJeOXbbFFbJFSMZDaFFcae": 1, "bQGBVIZdRJVVPePPSHNKXMC": 1, "bOcGcCEaLMJeVPDdCATWbWOOC": 1, "NVFVcfTbdNNRSCWffPNfAVeKBMOLDEZREBBVYYT": 1, "UETTJbZWMZfPAJOBGDIcEbCGHfUNLJWe": 1, "BPHAUfXAPEJPECHTeUdeUbTZWKNYT": 1, "NVPOFJaNLDEINHSIVRBWe": 1, "aWQOcYTBfFdHMePCefAEREHGSXVVQaWe": 1, "HINNTHLLYMXLYSfDcHINZJLeUXSaZbINfKBKGYbHT": 1, "aWQOcfEWaZJAJTONIO": 1, "ZdZaYPZZGbAKXVGDPfQeFTcZJLCZBNcC": 1, "TZUfdbYfTLBbPTPdKNKNKWe": 1, "cCGaYSdMbYSfcdReLbFZVGAZaYYfPHe": 1, "NVNZWUBIUJLMWGaRBQBXRAXZZOAGROXSZFNYDRUWC": 1, "YdAeYdHWNOTMeAZcGcZUbSBLXe": 1, "cCHObMKdFEVcYSCKVZNMPHVC": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1, "dLYHMRFeRLPYKDcdFceHEVFIMNSePTBPeGEEC": 1, "ODREBdFCSDWLKTPBXLAHSLdaRO": 1, "adUAVYCdFNLBdLEccZHEHFDcHOReeYaAFZKXe": 1, "AdREFZbFAYTZTbeQfYUXCEC": 2, "HMeVKJeGMXNZQMeYJNNQeHT": 1, "HWAFNeOYDYEaNdNDYTUBXCEWOMTXEUDae": 1, "NVNZYeJBBMeHGUFQbMDOHQSGaT": 1, "HWAFYBfPDBEDHIWDfQPdDSdVLT": 2, "cQZNDbDAATPFeZKUISYZPTBZbaTUSGGPTSJOeXKe": 1, "HWAFYWMdAHdJQVVTHVC": 1, "HWAFYEEBAQTJPAcSfCSRBRT": 1, "TUSGGWMPAZSEQPDcYWEDPeaHRbdFIbUdYSSae": 1, "cCGaYSdEfEITNPfaSdFaLbFJNTeNSfCFADeKe": 3, "IZVBEHbVFbXUCeeDNQUZARYfYO": 1, "ODRdHUNZWODDRYGPCJKDKGNET": 1, "eDSdUbAPRYDaKFBfTIcKe": 1, "eWHJdAQTEfEITNPffYSYNBYTET": 1, "NAFQCJWZUfJaAKDffSQRTWZBNHDFXXccBPKe": 1, "PcVFHMPaSdIeZNNAFLWEPYKDcdDDSTSEQGO": 1, "YTTHbXeeVbSccbHSGVZKefACLO": 1, "PcVFHMPbJARGPXAPEPYKDcdJLOdPOHT": 1, "BOebGRZUTVGUVHNPMEUXPNMZKWe": 1, "YdXfMOfZHYYfPYGTUIXfNAURAfPVT": 1, "HMGLLBLcMMeHGFceEDJIaYbIUONSQecLUBO": 1, "OOIBTBBLXOQcQBcPbZIVFGWfdTJbHT": 1, "NAZZAMUWVcJNZGCOeFKefZdJZZHCdEREHGUC": 1, "eWffQLQBTAURAfPMZaeWWUBBEcSCHRAOAcEUC": 1, "cQSXZaTaTaBfFdHMcQYIMdUAZNdAYfNKOVCMIRe": 2, "OTfdASFMNbQMdCNETWeZLO": 1, "ccCGCFWRfGASOdMYAMTDTEZVXVdNHWTRTfIZKe": 2, "bLTLSHIfDSfdFSSBHHGGZWNWe": 1, "NAFLSDdcfeJRSYEVJDfdFcae": 1, "HCZANHDdLYJPCSIdTKeFHKZYDDOLBZTSWe": 1, "YdXfCDWOODCSVZNbIUONSFbYLT": 1, "OMeRQDSFXZNdMeOXbbFJFUWcaHEdQbUC": 1, "TVLLUbELBbFDNCKBUYLAIO": 1, "ODREGZUTPTUaDSKBZVKFPaDWADWRe": 1, "cQDJGZaTaTaBIFIZbXDOXDPBFO": 1, "HWAFYDHIWDfSMHOReeHe": 1, "OMNNSCZDEDdWSXePEaJPGAAQeHT": 1, "fXGWECYJeVYSWeUKXYPMC": 1, "aXTfHAEDBOSBGPfBKWOVZMYIO": 1, "OMNNSCZFcNFMYCeAWIbAaLFSeKe": 1, "TeCOeJBIUJLMFQcGDZHXJNVBUKcKe": 1, "HMbVAGfFaMLOQHUHe": 1, "PUTKdFfUYQNUTEYDVZVCGIcCcCcCC": 1, "HWAFNeOYJXAadKfXdfdTSfCSRBRT": 1, "EUXPNMHfLebbMHSWedNDeQfYUXVaKBIecO": 1, "PPXGSCZWNTPFeZKUIJZTOeTWXFZEVC": 1, "cCHObOOYKYYaDcOdJeaILYDCDWOOC": 1, "UBKeJOMfFdHMbLYBUJcbTdDIXAeMdMSBFOEIEYXT": 1, "HMbAURAfPMEPSUNCMJbcHCGWVUNZdeLEcaDfecYTET": 1, "YdXfMTXEUDdSYFOLbOMFcHRbdFIaZPEEccaT": 1, "GCNJFZdOaBZCSZYXMPXMRUMVMXT": 1, "eDSdUfPPART": 1, "AEUaYPZHSQFUUHSUebQTZOUdTC": 1, "OMNNSCZWBZcZbSTBPMaMdAPVFfC": 1, "BHDTJdReQHUYYOLEaMYWHT": 1, "eWfaQRAOAcEUFKYOeeIKdFHaO": 1, "PUTVdBaUEIQWCHeLIZQTZOUdTWPHDDWe": 1, "cCcCcCSYAETfZPHcGRNSVZLWZHOfTDCeIXIRUXEHbC": 1, "eRYZBQEKBeWecNfEDYOTDEIbeRT": 1, "bdHFBddQWRHZGSNdDSCZC": 1, "HWAFNRWMPNSMYPPHZVaUAWTWMRWe": 1, "HWAFYBfPDBdLEaBXe": 1, "fXGWdUFEZaZLJHPLcSaERMJDDdWe": 1, "NAFQCJWZUaZeKGEOIBfaNKe": 1, "AdRYZDEfVCfLPJCQfC": 1, "HWAFYEdJbaOLUELMbBNLHZEWYO": 1, "AdZZBOSINSQFSBUNJEREcbJfEJO": 1, "OOIBTBBLXOLRIYFTUZSTFZTHReIET": 1, "IZESaZEYZDEbeNBZXTQeFXUFcNQSYSBNaKe": 1, "NVNZYeJBIUJLMSCZFXLBKYO": 1, "HMbARYfTeBZEWeZMRfYSbSCZC": 1, "NAFQQAFJZeOQZXbSYJNeDHFMMWe": 1, "cCHObCBWaEdIPPSfDcAZdJAINQLOLOLMWHT": 1, "aWQOcYTBbJfEDVacDdQeRHfAOZEVNET": 1, "eWfCDBOSMVZALOeERbISfXPRQTDCOOJMFVTXSLfPIFXKeKe": 1, "NaMPOFZYHUSUHYYfPYafDeDC": 1, "HWAFNeOYWbSaKVFVYBXYZICFLcaIdTC": 1, "HMbICWVZEdMODSOeecbXAbWNWe": 1, "AdPcRXUDDFXPSAGRHDC": 1, "aXTbSFYTBHMHHVbReIYBBVYUfFdHMNQJTeERXWXFZEVC": 1, "BPHAUbOJNOBYBdYQaWe": 1, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBWPHDDWe": 1, "BCEQVScXQOVPFOJKDKaT": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 2, "fefSCODGPIZZRAbOORAZDTRODBNLaPEbBBHT": 1, "HWAFNeOYFNbUPANNBUDLC": 1, "YTBUIHOdAHFJcGEUcIJKXe": 1, "HBAdWABTXNPUZaeUFDQYT": 1, "NAREFcCcCcCDSJRNfbXUCeeWXFZEVC": 1, "UETTJbZWMZfPGOaYdBGQIZMO": 2, "PPXGSCZWPHDDZIYBRSEAKSFPXe": 2, "eDSdUfbbdTYMIaDFcIAC": 1, "OLZfebIYBFRZIAKLBJbQGWSVOZGBaeacWXT": 1, "HWAFYTbSIAWTWEUcSbWRWCHJWe": 1, "OMNQEDMdbDceMHVPHXe": 1, "bQKPWLVRbYTVMeOJLBWHcbFMOFIKe": 1, "HZUaQRSeBcKHSYeGXT": 1, "febdSANFRWEYBXYFPdKNKNKWe": 1, "bQGBVIZdRJVVPePPSPDHCOLcO": 1, "HMbECHTeUVIZdRRT": 1, "aXbISHcAaPdAHFeMbFDaPKIC": 1, "OMYdVNNRbGADDBDOLEPBPUJcXe": 1, "fefSKeEWKMTUBbQGWWPHDDWe": 1, "OVYPUQWIbAaLFSebUMeFLO": 1, "NAFLeNLSSIBcbTYUSEKBeJcJUJSVCHAPFHaO": 1, "HWLMYCBYabdSOBNSJScFHRe": 1, "eEBZFJZeOQPTJAAVceVbYANZTRbAOdZWfCUUC": 2, "IZbREZVPTLKGBfFQTXWDTSVbXQSdafbOCJO": 1, "YTBeWfCDVAUVKfBLWeDZQNUTEYMO": 1, "HMbVXSAWXaUJIQNBOFO": 1, "HWAFYTbVYOIOWAUC": 1, "bQGBVIZdRJGINYTFIYaXROZdHUNcHe": 1, "YdXfdKNKNKPZZWLKVHNTXaJNAFfQXT": 1, "dLcXJeITPMObVcKYO": 1, "aXTfOFJZMYeKTcABVYUHTQZTQUERBdSMHBaWQOHT": 2, "NVNZWUaMZXRURNeJMBYGaePTWEUOaaKRe": 1, "HMbBLKBRJVBGVPLRQKe": 1, "YTBeWfCDBHeJOUTBSSPNLcSdeae": 1, "NAFLSRaRRefdQBTFNRaJNVTUNfFHe": 1, "cCHObARLOBADEGaadHKKAGMOOIBBO": 1, "AEAFSXZXdGVDZSdSUWDbCTHO": 1, "VVOcNNDdONVacDNdQZEdHOUKe": 1, "HWAFYPNLINBdICOXHe": 1, "HWAFYBfPDBEDHIWDbKIdDZBHRXMJGET": 1, "HWAFYRQfUUeDUfeSXfZdfVCMFDSFSWe": 1, "HWAFNeOYSUaecfbVCMILScXQOVWe": 1, "YTceTUDVRGCMJPae": 1, "YdXfMTXEUDdHcXJEBSRVfBJZVcRO": 1, "UETTJbZWMZfPMPSXPSePAVaRKZVVLT": 1, "VVOcTRYZLWZWORTeCISUZEYYEO": 1, "HMbOOTWVdNHWTRTfIZbedSHfeRbEfKFWUC": 1, "HMbEHRKOEIaHVQdOXAaXFZPeZeNSCZC": 1, "HWAFYBfPDBEDHIWDbKIdDZBTfNZeLT": 1, "ZOMTXEUDERZYGfHMadYJJFAYTZTEYfDeZBUSIRDHT": 1, "HWAFNRTKeeZaWe": 1, "aXTfHAEDISIBTBXafdZeYO": 1, "YRdUWRSAGWVCMIQZZFfJKDKe": 1, "cCEaLMWHFFEaRXe": 1, "HMbdDRJNGPbBfDUIEbfWCUfWLEXPBOFO": 1, "IZbREZVPTLKGBfROQFJDDZCbMOVT": 1, "IZVBdeHHOVFfFeNDYTUET": 1, "OMIZbRdRMQIfNZFZeaPQWSYC": 1, "HWAFNRNHWMSXe": 1, "IZEeDdEOdUNdKAZeYO": 1, "HMbVAANFTeSUbENHUHe": 1, "OOIBTVXMAcZEWMMOOdbEWaHePLSIRLT": 1, "BIUJLMSYNCedPUXdOMYbSPcC": 1, "cCHObTULHfAFFQZcVIZdRJcCcCcCC": 1, "BKATYFRURURYVcTQQDAURAfPMfXC": 1, "eRQDdOCcaIXMTBEJISDaPdMIbQbAEDJeeKe": 1, "HMbBPMINPPKGUSCZC": 1, "eWfaQRAOAcEUDCLGCIKdFHaO": 1, "TWfbaTaTaBOMNVRdJbVaAFZKXe": 1, "OLQQRTWfBNQKSQPCcCbPdBVGWe": 1, "dLYHMRFeRLBBVYUTDXbEATZFPCSOONC": 1, "YQecaXYRJLBWHcdXUC": 1, "YdXfCZNTaYPeYdFHWPbTPFeZKUIRCfPXeC": 1, "HWAFYEdPKFTdRNYYdVKMSPBMO": 1, "ZHCDCaGbXDWPPNHUNYARBcGKSaT": 1, "aXTfHAEDdUFFBSBbWUeMJeNBLFZbFKMBKISIBBO": 1, "HWAFYTbeYSSEdaWYO": 2, "HVUBYPYKDcdJdDBKDcIBaMEAbCTHO": 1, "PPXGFRURURYNYUNZTeZFYRCENFeaYLTRRe": 1, "YCObQGWUJXDBWZPOeVSTEYT": 1, "IZVGPRFfEFKYOeeOZbNFbKHDHT": 1, "BCEQAeMZeEOHGZGbDNZJFRHLLAC": 1, "HWAFNeOYJIJUcO": 1, "ABVYUNAQGPQZZJRZaKe": 1, "OMNNSCZJVdfUFcNFMYCeXe": 1, "TeCOeJNHRSLTFIQNNDZVVLLXT": 1, "bQKPWLVRbYTVMeOJLBWHHT": 1, "BCBaQDbAMUVbCefAfdRe": 1, "cCHObEfEITNPfbeQMITaSdFaLbFDXFZMIcCcCcCC": 1, "eDSdUfRFEOVYbFZVGAZKe": 1, "BPHOaBaWQOcfESUaecfbVCMIQRDEJLHe": 1, "cCPeYGIPeWBKJVcTSdVFYeAcQaHNfLae": 1, "YTBeWfCDIXLSGbDaFSRfABNIPRaO": 1, "HVPZdZGIGPefbfDGYUC": 1, "ABVYUaXEbQFPIEEBBcFPIWWeDfBAKae": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCIXVKZYZAZSGaDfeHT": 1, "HWAFNZWAdOZHbZC": 1, "HWAFYNFIYJKOFaYDJO": 1, "aWQOcYTBTEYDcYdYFMdcHe": 1, "PcVFHMPaQHDDZJARGPXAPEbPXQUJKDKaT": 1, "OOGbIFBUXOVAZQXaTFKGHWNZKTQIZKe": 1, "cLdOKVFJFJcGaNVKMNCSJTeCOMKGWe": 1, "dJLGHFBddQFQcEDeNPYZIecO": 1, "bQbYWXFZEVWKMTUBVXaCNFOOIBTBFO": 2, "IZVGHeCXLHbVFfFeNDYTUET": 1, "cQPHbcGRcEfFbaBYWEIFYbdbVfHPdMcQYIMdUPTHT": 1, "OOGbIFBUMEfTQJNDYBFKYOeeIKdFHaO": 1, "GbJAHHEdQbTdFVNaDNLFNZfC": 1, "HOdIICNBUPFDUSUICFceHEVFKMBKAPVFfC": 1, "eWfaQRAOAcEUFQLNHRbdFIKe": 2, "ZcSIcceNDSJVGGZYfPXPRLO": 1, "aaMLFXLYSfDcHaZFYWEIFNVBUKcKe": 1, "BCEQAeMZeEOHGZGbDYadFAPYRCEYedMcET": 1, "HWAFNSGWWWHFQZcVYYNcJC": 1, "BCdGNePeEBAcUYNTQWe": 1, "BHDTJdReQHUYYOLEaMNSUC": 1, "OOIBTVXOCZBKeJaDCCDFQFaLdPeGYO": 1, "PPXGWPHDDZKZdKNJMNbcSXcRe": 1, "BIUJLMJVfNafMUfBFGFVIZdRRT": 1, "NAFLfOdASUTbJGOGcYO": 1, "PPXGSCZFCFcCZVdcSQBKQKe": 1, "HWAFYTfbacWXT": 1, "IZbREZVPTLKGBfROQFJDDZCbVT": 1, "ODREGZUTPOCaJefFDEVDWSRe": 2, "TeCOeJGDYLJZGNBeWe": 1, "ODREZfefTLKGBfFKJBKWUOfAYULMZZCGVKe": 1, "eWHJdAQTTWYVYIPVZfWe": 1, "NNSCZWXFGdEaJPGAAQeccdNZDPBSBOFO": 1, "NAFQQAFJZeOQHNDTRYWMDHe": 1, "YdXfBYbWDbQMdEWGPOAcET": 1, "NADPFBbSFcFXeUNZWPPLRENZFfBJfBMXT": 1, "OaaKLZfefIMLefBcdCBTFHZRTYC": 1, "cCHObVKKMadMUPXPRQAVWPJSSAZfAC": 1, "BIUJLMDSWPaDMWXFZEVC": 1, "AdPcRXUWLdTWeDfBAKTRe": 1, "HBOMHJSORBYedLTebfcUO": 2, "YTBYNJXCcNGEcHZFGLNZZTDCeMJYGIeKe": 1, "GCQKEaAJDbJANafabSWUHbWPHDDWe": 2, "BOeaYYfPYNYHNPMMNIRHcEFeLHYO": 1, "cQZUdSUHTRLYANAadIeZNMKdSQbZET": 2, "OMbMWcMdFRGbQfJNGLdDJIOUIC": 2, "bLERMTGDCDHDbfGYUXdOMYaNfLTRe": 1, "OTfdASFNKNMUJBYdFZC": 1, "IZVBETWRGfOJbVZTUPUOeMO": 1, "ZdZfDHCOLZOTdfdRWSEXAbAJQTQPWZcYPYO": 2, "HWAFYWLJWcWOTPeXe": 1, "PPXGFRURURYNNZWdZBSeLT": 1, "HWAFYBfPDBdRWMPNSICDdDSdVLT": 1, "cCcCcCRDfUFFEPQBaYaOdbLXaRIYAeLT": 1, "AdZZBOSdQPIMLHFAUADWe": 1, "AdZZBOSVacDNdQZEdHOUKe": 1, "TeCOeJPQPIFdCACfXPRLO": 1, "cQZJALOdeEEBFfZLMBUXCEFRURURHe": 1, "dLcXJeITPMObDQKIUC": 1, "ODREGHXFZPeZYSHIfDWQIORe": 1, "HMbBYYDdWQZQBOFO": 1, "HWAFYTbYCJRLLeNcEVC": 1, "GCSXHHVQIZDFJNLcOdZSAcJHDFXXccBPKe": 1, "HWAFYYNcJC": 1, "OOIBTVXMAcZEJWcWKVSSZRe": 1, "dDfPJcbWESSIdFDSPWLBeTfecNfTXC": 2, "TeCOeJPQRWSEXcBdHSPFRJeZMdQdFJO": 1, "NAFQCJWZUbXeCFNZSEOJcRAdJKe": 1, "eWffHbcGRcTeCYbeFbINfHIDJNMTKe": 1, "HWAFYTfVEdFYRZOFHBUBMDOHQC": 1, "fefSCOJZfIZZRAbOORAZDTRODBNLaPEbBBcOOIBBO": 1, "HCZVFaNPKGUJeaILYJO": 1, "NAFLSRaRRefdQBTDeXNOAVdNHWTRTfIZKe": 1, "NAREFacBLfPIHYKe": 1, "HMbVAbcdJXIIHTPMObWNWe": 1, "HMeCJHAVXSADORMTfFTdYVPEQDENDdNC": 1, "NAFQZMISRSOJaTfMDcGEfdbfZDVRGCMC": 1, "aXTfHAEDBOSOPRSAeUDUKVZFWbWOODPBFO": 1, "ABVYUaXAZfLdPcRXUJdFCDRTYC": 1, "bQKPWLVRaJebTDHFKUOdZFO": 1, "INFdBOSOTBMBPfRDcTLEXe": 1, "OOIBTBBLXOLWCGEfJcfNWOCeMJYGIWe": 1, "eDUEcBIUJLMDPdWZIXXcffHHAcZMC": 1, "HWAFNUVSZNZZJRZaTKe": 1, "aXTbSFHMHHVbReINWXXdVLNUUJYO": 1, "BCdGNQbHVEZYeNbNEIIYIEbC": 1, "OMNNSCZWDBTJXIIUIVBFAPYbIeIPHe": 1, "OaaKQZZMcTcaWQOcZbFHZRTYC": 1, "IZVGHeCXLHbVFbXUCeeDNQUZARYfYO": 1, "bQGBVXGHVPHXe": 1, "febdSANQWFaYUNZdeLEcPJZQMIKe": 1, "dLYHMRFeRQePeEBARCLFNZfKXe": 1, "YNaXTbXdUFDVXVRIYLT": 1, "bQGBbNXGDJEENLAcQaHNfLTRe": 1, "YTBHMbEKBeWecNfEVSGFGZJESeHT": 1, "YTBYNJXCcTFDERXC": 1, "HWAFYWMdXIeIPLSKJNGeEO": 1, "eEBZDEQdASUTbWeDZQNUaNSVRaUC": 1, "aXBNTfZHYHQDVCXdUFDeTQQVDaVYEO": 1, "OMHMbMPMZbFDSFSefWcHSWedNTUQODZSXT": 1, "OMNNFHMPdTDJQHSFGJDZTKMbAae": 2, "ZcSIcceNSeONWHJNbPMYRedfPIO": 1, "OOGbIFBUdWKZGddfdLYVRT": 1, "TDXDPZWORTeCISUPYJOaYYfPHe": 1, "BPHMAZTaHPVAecNfEYYRQfSeHO": 1, "YdXfdKNKNKHUFVTELZWDTPMKSGTFBRe": 1, "ZdZaYPZPBQJbLbOMFcZLWZHOfAURAfPVT": 1, "THHSODPNGZfSeUHMDMKdFbQKae": 1, "cCHObXKeZKVFGUVbOMNMTaRbdFIaYYfPHe": 1, "PWBJfbHXSceIbZRAbVcXdXDNEXKQLNJC": 1, "cQDJGPHAZaSdVXSADcTBZLO": 1, "NAREFBCdEcXUFcNQFBNLJHYYfPHe": 1, "cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET": 1, "aXTaYYfPYLXSOeKe": 1, "YTBYNJXCcfTJXNALYPfdTSPWPHDDWe": 1, "TPOaXGPTGTbUEXODPFDC": 1, "cCHObIVIADIBNGSdONbCNLOLOLOBFO": 1, "HMbMYOdBXRBefPGLKcZAHUHe": 1, "NADPFBbSFcFXeUNZNDbDAATSZIJIRASaYSJeRT": 1, "bdPBQRSINfAONWeDeRTLcffWe": 1, "aXTbSFHMHHVbReINWXXdVLNUUJNMcTHT": 1, "HWAFYDHIWDfSMBBMPIOWEbYfLMbQGUIO": 1, "eEBZFJZeOQPPHFBddQSMaRKXBYCXbBHYBUcRe": 1, "OOIBTBGPfBKSOZdBZCBKeJELWe": 1, "HCZANHDdLYDEZREUNTWaRJTAcHe": 1, "HWAFNeOYSCaIbNfHZHT": 1, "NVNZYeJGdAFZfWHSVCHCTeVUbQWe": 1, "eDSdUbZRNWBOfWVWNYO": 1, "ABVYUYNaXTfXAPEeNSBedFeWKUVHe": 1, "ELSXPeJIPQJQVVdNZCALPFZHJKDKGZMO": 1, "HWAFNcLPLWITMSYNJUeAUCFcNcNKe": 1, "NAFQCJWZUbGSRaPSZWeAQPXPRQXKFbGQDaYKe": 1, "AEAFSXZCTPMPMADDbddQHT": 1, "NAZSNMKQKDJIHRXMJGBcNBRUDKe": 1, "IZVBEEEJPMZeFTWePWe": 1, "HCZANHDdLYBEfQYOUZJKYIYZEVSTHe": 1, "OMYNaXTfPZXEZJQaEfWe": 1, "fefSKeEFcIADWHCDUFYQXUZFRURURHe": 1, "HCZANHDdLYBNZfAAEAQMYaNVSDcRZTEUPHdGWe": 1, "YdAeJXVNYHJfQAMOfNZDbAefQHO": 1, "eDSdUbaaNRfXaIRdNDDC": 1, "eDSdUbSIPBEOOCROEFO": 1, "NDAFUTUeVPeUIeLREHGJBYLXASKe": 1, "HMeCJHAIDZVBNZfAAEZWSQZTcO": 1, "dLYHMRFeRQLOLOLOMLTbYIPfZBVXVLCOJdFMC": 1, "aXbXDDZNPcRXWcDaHFBddQWbWOOC": 1, "NAFLeOeJdLeQeOYDESKfXdfdTSBGcfKLAEdNJLTBPTLKGBfC": 1, "AEUaYPZZGbBQMdBaFRYBJeEdUdZAXDKfKdXT": 1, "NAFLeOeJAETbIYBWJcdDTHRNeFfXZGC": 1, "NAFLeOeJdLeLTfVCdGESFDCGVKe": 1, "eEBPBJFJZeOQPBOBTUWTNUC": 1, "HWAFNQTbVSGNVBUKcaZdPLeNLae": 1, "BOefWZJEdcAKWQQadeOJATXT": 1, "NAFLeOeJOMOLJKFQVWFQUEJDXO": 1, "OaaKQZZMcTcZdIAAVVWaIIacMSebdaNCFeLT": 1, "HWAFYeNMZSPDeHbLae": 1, "eDdHFENHQYffSQRTWZBNZMdLEBXe": 1, "NAFQQAFJZeOQZdUWBLdFHOReeHe": 1, "BHDTJdReQHUYYOLEaMYYXO": 1, "NAREFcMEbJObYZffQLQBBO": 1, "BIUJLMFQTXWDTSVbXQSIZGPECHTeUNPGJNZWPaDMC": 1, "HVNKdFZbDdUYKe": 1, "aXTfHAEDCDWOOJdDBKSOGXCcZYEIKaJTXRHe": 1, "GCLaYCKdFYFcCbNBOPVKFESTEUOOIBBO": 1, "HWAFNeOYJeaILYDMFFUKGZIUONSFTUQODWe": 1, "bLdLOLOLOdQeRHfCeYQCFeBAEXcBdHDMQPYO": 1, "INFddKNKNKHbdJMWBDLLXcBaOHe": 2, "YTBYNJXCceEDdEAXNJCVXVVUC": 1, "HWAFNRYWMVbXEQJaVWMDHe": 1, "NAREFHSCLeNIJWHSGQZacIJSBSRe": 1, "OaaKLecTYSHJAHTWTUZdaIOHT": 1, "INLYMNPPWGTSJRNYSbFXRC": 1, "OMHMbEdeVZVPKGC": 1, "HWAFYBfPDBEDHIWDbKIdDZBXCEC": 1, "HMbOOTWVdNHWTRTfIZKe": 1, "AEAFZdTYMIaYfPHZVUfCRe": 1, "bQbYWXFZEVWKMTUBVXaCNFNADPFDUC": 2, "eWHMBIUJLMDeLOaBYXYTPBAeNZBTBNFecMEO": 1, "bQGBVIZdRJBCJLWRHZGSNMTXEUDae": 1, "NAZZIfQAZFLMTeECUSDPAABGXIZLTKe": 1, "OaaKLRXFeSICZeQcJJIaLKKVWLKTRFO": 1, "eEBZFJZeOQPTJAAdbGIeFfMcCTPFeZKUIWcaICNRGLT": 1, "PPXGWPHDDZdSdBTWeWGVUO": 1, "GCSXHHVQIZDFJNLcOdHKLYZWdKYaFPeNWOEXKQLNJC": 1, "YdXfMTXEUDdULEFDVTbVSCWQQWe": 1, "eRYYUBIUJLMSKBcUVDYMO": 1, "PPXGSCZWNOTEbWcKZIXXcffWe": 2, "UYIVaVbMVYNFPdNYKFFaMEAaUC": 1, "cCHObVKKMadMUPXPRQVOPdUXFRURURHe": 1, "YdXfCDWOOSCaIfWcUXWAcbEDGXe": 1, "HMbKAcQJFYDTeCFEDYcaMEAKe": 2, "IZbREZVPTLKGBfWKcBcaMEAaYWe": 1, "HWAFYDEZREFYMZTULHfNOKNIUXe": 1, "ABVYUNNDEDdEUEGTUSGGO": 1, "INLAFPKGUSVGPLLFKWILXcEQSQQHT": 1, "HWAFYbcZTTdWABTXNPUcCHPLecO": 1, "HMbTYWeLJFBBaMEATfedGbUZWNWe": 1, "HMbBXafdZeNTTSbWNWe": 1, "TWULDEZREHDWNZTLZBeMcQYIMdUAZdJAINRe": 1, "aXbSGNVXNRbDdJTLaKdLOLOLMO": 1, "PcJJdIVcDPePdJXDC": 1, "NAZZIfQAZFLMTeECUJCaTTKIKdFHaO": 1, "eEBZFJZeOQPbbFCeaPLLedRJcaT": 1, "HWAFYDEZREPVIRPQJbSYT": 1, "IZBTdFPfBKSAELSXPHTaSWVacDTRTfIZKe": 1, "EGTUSGbEJHIXT": 1, "NAFQdGFEYKcbJVaYHbJcdYWTJUWEVWNCGVKe": 1, "NVNZYeJeVYZXDMUBdAURAfPVT": 1, "NVNZYeJeVYPXPZSMdbDcMWQYT": 1, "IZVBEJTVFfFeNDYTUET": 1, "dLcXJcCcCcCJAJOTHGZDDUZXdUFDcHe": 1, "OMTVBENNRYXcCHHRHbbLXMHO": 1, "aXTbSFYTBHMHHVbReINLOLOLOAZfLdPUVIZdRRT": 1, "OOGbIFBUYRCOMIMEfTQUETQWYQSYHWVNMJO": 1, "NaMPOUbAKeWJafdOLYdTWObYNYUO": 1, "HOdIICNBUPFDUWBZcZbeKRJbJfEJO": 1, "HWAFYdbFJBGfIKe": 1, "INFdBOSTPeVcDHBYAZERMC": 1, "NAFQCJWZUbGSRaPSZWeAQPHbQRfAZbaeKe": 1, "HMbVVGeDaZXOTJBETLISOSCZC": 1, "ZdLNKZadWIRcNHTIHRXMJGET": 1, "cCHObVKKMadMUPXPRQVLBQLOLOLMO": 1, "HWAFYDEZRdZbVeUHFAUVcIO": 1, "cCcCcCDPCDCcACOJOMGcBKPGdNC": 1, "PPXGSCZWPHDDZWDFbC": 2, "HZUacMUIAZdJAINQZQNBJfBMIZebWNWe": 1, "eWHMHMbCTYATbJKYIYZEVWLAAOebQAYXT": 1, "aWQOcTEYDCMYWfDdMaRIScdeUKe": 1, "HWAFYDEZRae": 2, "cJUJDRSLQKLeNcEVC": 1, "ZdZbaBBUcJPQGaWeUNSBYKe": 1, "fTJXNCSLFJZZVCBOPQORHe": 1, "IZdFSXIHERdaaXWXAHGO": 1, "HWAFYWMdEDRYFJYbTSZQMASWe": 1, "BbFDRdJcAQDIWSBaMYDNNLTSHaT": 1, "adUAVYCdIcPJeaILYDTPcOUZaPXPRLO": 1, "PWBJMeHGSMeSNafXPRQMdBcAdQdOET": 1, "HWAFNeOYFWURFCUBQae": 1, "feaSLAZWAcFCaNOcMXRfBXO": 1, "HWAFNRNeXQCaZXALKFTRFO": 1, "BCMdeLAbIBHXCbfZVO": 1, "IZVBEHbVFfFeNDYTUET": 1, "IZBTdFPfBKSAELSXPBQGMEcSOLWEBJbQae": 1, "AdZZBOSMPMZCBKeJHWAJLGbbeRe": 1, "eWfCDBOSVIHQcaMEAbXcTCaIbSXT": 2, "HWAFYDGGBbdFO": 1, "aWQOcTEWcfBQDPBFO": 1, "aCTPTPeVATbSMcEbOMFcHZLGCCBUbXDCJFOOIBBO": 1, "NAREFBCAURAfPMcQYABKdBSYOVT": 1, "INQHUNPIFddfLLFKWIFdCVaSPXe": 1, "NVFVcfTbdNNSYHXTOJDNFIaUJdDBKWPHDDWe": 1, "HMbCTYAaZZWIeXUJAFSCZC": 1, "HWAFYdeRQdCYO": 1, "fdJcVSdMWZBNaINKVTKe": 1, "dLYHMRFeRQLOLOLOdQUVRJHVPHVdNHRO": 1, "ABVYUaXAZfLdPcRXUJeaILYDCTBVKe": 1, "fTHSQFUUZAfRIZTJYSGFZWVRSebQAC": 4, "HMbBONPbaNYVXbdYeNeUZWNWe": 1, "NAFQCJWZUbXeCFNZJRbYWVWHWOEXKQLNJC": 1, "aWQOcEFeLHNVVJPALCHT": 1, "HWAFYWMdVZMYCEKKEQfKCUKORe": 1, "HCLeAeMUbZFVIQHNVCOBYPQBTbedcbOWSUISRe": 1, "INLGPZPFBFKcFYdJVIQYfACLO": 2, "OLTWRGNVBUKcTaRbdFIKe": 1, "AdSRZBMBTVdVPaESLae": 1, "YWYHaGfZOIZUEXODZJODKdCYO": 1, "OTfdASFGcEJDKBRUDbYHRYKe": 1, "HWAJLGbbeLRcVDeeEFEIXUZOVLBQcDffdVO": 1, "HMbdcLFCeRbLMTMZUJBaKFBVKQPGO": 1, "BIUJLMJVfNabFXFBcEbJVKfLWe": 1, "YWYHaGfZOIZIVSEQUEQERZYGGeTC": 2, "OOGbIFBUACBYQLJCaGHGabaUJBEfdfTRe": 1, "TPOaXGHFVVLYZDTZULAQdOET": 1, "YZPTVOBDREeZKRVDMbTFAecbLZBdLHe": 1 }, "r": { "YdXfdKNKNKZUTPTQTUMKPREFcEBYJO": 1, "cCHObMMCFRBZDOLZYbFZVGAZbaTaTaET": 1, "eWHMHMbMFJQPYdNHWKAfPIdOHcIJDeQcJUXO": 0, "OMHBVOIfFHcYBCeUDOHQJCYLT": 1, "AEUaYPZZGbdUSUIUBTNTMFFfeTLQLAVALKe": 1, "aWQOcYTBACKbCQMQRe": 1, "HWAFNeOYWURSOSGeFTYceAURAfPVT": 1, "aXTfHAEDISIBTBBLXOQWBObbObSVHLeNBLLT": 1, "OOIBTBBLXOQRTKeeWe": 1, "HWAFNRYXMHO": 0, "aXTfHAEDISIBTBBLXOQWIbAaLFSebFGKMGHT": 1, "YdXfMPXYZaTaTaBEUcKBSMFeJHUWEYcZbMKJZKe": 1, "PPXGFRURURNRNRWSdFZFaBHVPHXe": 0, "fEOMTfNZeFEAFHBUBMNYWPHDDWe": 1, "THHSOFRURURYNYHIYTLRQJRbWdWOGVO": 0, "HWAFYLJVWKGdUVYDGDZHbWHccHe": 0, "eWHMcCcCcCSKBZeEQLBLcOHT": 1, "eWHMcCcCcCJeaILYDBQeEePQUfaNaSTQLHIbHT": 1, "aWQOcYTBABVYUOUEUKKSWBVfXNFfdXUC": 1, "eDXJNSacQSSPXPRQMbHAcLRfdAMTXEUDae": 0, "HWAFYHIEJKaEHT": 0, "OLGPNceIWDAOdbIVXVEHINET": 0, "cCHObdRdJSfdQaRNFOSeDCJWMdCDWOOC": 1, "NVFVcfTbdNNSYHXTOSVGPLREHGWNVZMYCCDWOOC": 0, "HWAFYHIYTdELT": 0, "HWAFYScXQOVPOZJSSZdTYMIKe": 0, "TfNZeFcCSTbFKaaO": 1, "HWAFYTacWCcAeCQeJPVNLIGBSQHe": 0, "bPFYTBMWOOVZMYCIXQeMEbaO": 0, "ZCaDMSBZeeZTXJdZfAAdRTRIdaEUAFBaDMSCZC": 0, "HWAFNeOYSfXOEIYZEDNMfXLMEO": 1, "TZUfdbYfTLBbPTPCDWOOC": 2, "aXTfHAEDdKNKNKZDYCFceHEVJZdLHNLLDXKe": 0, "YdXfdKNKNKHUFKYOeeTQIPPSfDcdEWe": 0, "EKESIJNGEBBVYUMKTIGSOJDKe": 0, "aWQOcYTBOOIBTMXWHUSCNVAELXT": 0, "OMaFbFDaHYbAHcMSPWZJae": 1, "aXbSbcOQQVWXdBGZXeYBBVYYT": 1, "aXTfHAEDCDWOODCAUEbOMFcWe": 0, "cCHObMPWAEeIcFARSYWBZEWaSdCDWOOC": 1, "HWAFYDEZREEdRWSdeJOUJGPXPRLO": 0, "aXTfOFJZMYeKTcABVYUfFdHMPVWCGTQJQJET": 0, "NAFLeOeJabUZFQbMWKZETTeMcCcCcCC": 1, "HWAFNRYZDVJTTC": 0, "TZUfBOSEDRYGMZaHIJZNJKe": 1, "aXbSbcBUYWYHaRMSAdRTUOOIBBO": 0, "TWBBeJYTBGaWXCFafEJPAXZQIKdFHaO": 0, "adUAAdFNLJMbQCeLFKMOAEHNPVT": 1, "aXbSbcfFdHMTcZJFOHHAAHdZGaHYYfPHe": 1, "fefSCOJZfIZZRAbTYRQHAYWOAVXfZbGSFcNQSZBeRe": 0, "cCHObMPWAEeIcFARSYWBZEWaSddKNKNKWe": 0, "PPXGWPHDDHRQPSHSQFUUHGeFZBQIO": 1, "HINZJLeUXSaZbCDWOODVcNVBUKcTKe": 3, "NAFLeOeJAdcbdGTEYOdDWBLHMVC": 2, "EKESIJNGdLOLOLOVGUVLcfFdHVT": 0, "YdXfCDWOODSFKGbUBPKBcGYIEGTUSGGO": 2, "THHSODPNGZfFbSGUBBHQKOOcO": 0, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZXNRe": 1, "cCHObIULDcFUHZESEETWBZEWaSddKNKNKWe": 2, "HWAFNQBDeDDcQcCcEO": 0, "aXTfHAEDCDWOOSOHOAZfLdPUbdFDCFJJEXO": 0, "eWfaYZBUXFLMUDDPWcVIZdRRT": 0, "ZCaDMJNGLdDJIOUIUSVOZGBaHRGFffRSCZC": 1, "NReaHbdKfAHAHUYWbQOSbYGVVC": 1, "aXTfHAEDCDWOOSOHOVZMYCBcPOeFaXfRXe": 0, "NAFLeOeJOMOLPTdMZbGXZFZYZEYYEO": 0, "NAFLeOeJNAFLJPECVVDJYMBMJIeFHe": 0, "HWAFNeOYDeffBKdFDPBIFMZcO": 0, "aaTBNZZJRLESPIDNJDPVBC": 1, "aXTfHAEDISIBTVZMYCBBLXOLATZdSfbCaceeRAcMcWe": 0, "YdXfMPXYHYYfPYPNLINBddeAWNIPPQFFECAFC": 1, "HWAFYbIeIPYbeTQcaNYCLC": 1, "ELSXHWXWEHDDDSeONOXT": 1, "TWUQQbHVEZNePeEBVHDWNZGSRaPSZbXEIZBGaWXCFafae": 1, "eDXJNSacQSSPXPRQMbHAcLRfdACDWOOC": 0, "OMIZESPdUQWTCUZZMOBfC": 0, "NAFLeOeJOMEKCccTRLHe": 0, "PPXGSCZFcYUBXVfSTdaT": 0, "aXTfHAEDCDWOOWbWOOFIEaFdOUZMBOHRXUbZFLMZGHCTRdIGZHT": 1, "fEOMTDOOMNVLWPGGHWLUTMfXLMESGZeKKWe": 0, "aXbSGcSZJODXQEaKEBBVYYT": 0, "TZUfdKNKNKHbCZIVFTZYBbPTHO": 2, "aWQOcYRYNPNDJdQJEcTeKHMeTC": 0, "GfHMYYBLEdRBQSCEDXFZFFGSQTHaT": 2, "AEAFPDGYJIABYSBDNXKFKe": 0, "fefSKeEFKMBKEOcYRISUaPZdMcCcCcCC": 0, "THHSODPNGZfSeUNAFQEGRDDNC": 1, "OOGbIFBUVTIbNESEeCQRTKeeHRbdFIKe": 1, "aXbSbcBUYWYHaRMSAdRTUcCcCcCC": 1, "BKeWIEcbQGWFeSICZYUfJSBcfae": 1, "NAFLeOeJcQEcVOdWNeYZdfdbJae": 1, "BPHOaBZGZVSBYQeQHefKbAXDXKe": 0, "ABVYUYNaXTbXUCeeC": 0, "cCHObXKeNJAbAHdZWdKNKNKWe": 1, "AEUaYPZZGbdUSUIUBTNTMFFfeTQUBXFSdKfKdXT": 0, "IZBTdFPfBKSUaXSTBGCdKAPcaKBbBOSYLYT": 0, "aXTfHAEDdKNKNKZDYCJdDBKSdEDeZVXVHXT": 0, "BPHOaBAZTbKCBZeVTNVQJKDKGNNPaGVT": 0, "NaMPBEUWPeYeFaaEQMALHFTHO": 1, "aXTfHAEDBOSIXIRcJIePYfbaSQFUUPMPSXZDQXKYO": 1, "bPJAZNdAYbeDUZSQZXSMSeGEVUSZMSMGGTHHSOC": 1, "HINZJLeUXLCddLOLOLOCcAZdJAINRe": 2, "eWfaQDSWSGUQHMQOFfOBfC": 1, "ODRdeOYJLBWHcfXSUHLQYfNWOBOFO": 1, "HWAFNeOYDXKe": 0, "aaAJYBARWSECRAOAcEUC": 0, "PcVFHMPbJARGPXAPEPYKDcdWPBcELWdZXZdNUNEIEBGZfUPUBUaT": 3, "aXTfHAEDdKNKNKZDYCJNLcMYeAFZfWZffMXC": 0, "NVFVcfTbdNNJTOFaQEZYVNFJIeaUFRURURHe": 0, "eWHMADDbdEcLcDNTVXVGMVXATRDJbfMRTKe": 0, "AdRNRWSdUPMcHZZWIeXFGBZFKMBXO": 1, "HWAFYHIEUXPNMWe": 0, "cCHObXKeNJAbAHdZWCDWOOC": 0, "THHSOWPDSDXbWUJIFGKBAFVNaRe": 0, "BOeaGSSFBKROQSfPAdGUIRfVNPaXbBDORMTfLT": 0, "aXbSbcOLHbVDPYSbWPHDDWe": 2, "fefSKeEFKMBKEOcYRISUaPZdMOOIBBO": 0, "aWQOcYTBNbbXdZNfRLT": 0, "eWHMcCcCcCFKJBKWUbPNadSFbTdNDNSNC": 1, "PPXGWPHDDZKZDYTYGWOZXUCeeWXFZEVC": 0, "cCGaYSddOEGcHNAdUDUCRPQFAeJQWPHDDWe": 0, "adUAAdCYcPSBVHSCGVbaORe": 0, "HWAFNRNQRMFXJaXdRT": 0, "HINZJLeUXSaZbdKNKNKPZHSdINFPIWBHT": 1, "OAZOXHHHXFZPeZeNJILO": 1, "aXTfHAEDISIBTBaFKbdKCFKVeSNdJeCRe": 1, "aWQOcYTBABVYUEKCWNBOcaGPaXe": 0, "aXbSGcSZJODXQEaKdLOLOLMO": 1, "fEOMTfNZeFEAFHBUBMNYFRURURHe": 0, "NAFLeOeJOMOQeOYFCRFZMbYWMPSYaET": 1, "HWAFYTaYbZNHT": 1, "OLHIOMcTRLHe": 0, "TeCOeJIUWUHcKKSTLGPAcADDbddRBQSCEDXFZSCZC": 1, "aXTfHAEDdKNKNKZDYCFceHEVWXcdMIJIcVHXT": 0, "BPHOaBaWQOcfEFfHBISNFZQaeKe": 1, "AEUaYPZZGbIJSWMfefVZHWTNUSfCSRBRT": 1, "dLYHMRFeRLBBVYUYWbMSJXOTEREHGC": 1, "HWAFYTfYYYOIFaYREHGWCPQHO": 0, "NAFLeOeJabUZFQbMWKZETTeMOOIBBO": 0, "aXTfHAEDdKNKNKZDYcPJXIdAHEZWDTPMXC": 0, "aXbSbcfFdHMTcZJFOHHAAHdZGaZaTaTaET": 0, "OAZOXHHHXFZPeZeNSVMPYWbHRTHT": 1, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBccCcCcCC": 0, "aWQOcYTBOLGYfPNUPdQAWUNVRJcaIaT": 0, "THHSOWGFFYbVaHWNFGFdUeMBKOVT": 1, "BKATYFRURURYVcTQQDAdELHaO": 0, "NAFLeOeJAdUKDbecMLaDBMdeOMWe": 0, "fefSKeEFKMBKEOcNSZBeLPZaTaTaET": 0, "HINZJLeUXSaZbdKNKNKPJdBJOTXNORe": 1, "HWAFNZJNSdCYO": 1, "aXbSbcOLHbVDPYSbFRURURHe": 1, "EKESIJNGEBBVYUaQYffLDEZRae": 0, "aWQOcYTBABVYUTEYDVacDMdbDcHVPHXe": 1, "cCHObMMCFRBZDOLZYbFZVGAZaYYfPHe": 0, "GfHMYYBQePeEHbECQdHZVHAFNQJQNbUIC": 2, "aXTfHAEDCDWOOSOHOVZMYCVXVAYVaNEbDHFAUADPRXe": 0, "HMbVacDNOdRSCXJNBOSMFMZNdCLYNZNZAGWe": 1, "HWAFYFGeNBLScEXO": 0, "TVBdHUNLOLOLOOTMfefVUdBJOTXNORe": 1, "eWHMYTBADDbdEBVTQWUVIZdRRT": 1, "HWAFNRYHXT": 0, "NAFLeOeJOMeXPQeNCGVfSCMeDDae": 1, "BPHOaBTWdbIHbUbDOQcUYNdCLHXT": 0, "eWHMZNONdPbIPHeAcaNYCLFRURURHe": 1, "aXTfHAEDCDWOOSOHOdQeRHfAFZfWZffMXC": 0, "aXTfHAEDISIBTMMbYHFBddQC": 0, "HWAFNeOYSBVJSEFKXNJdUcOHT": 0, "EKESIJNGdLOLOLOCXSWAbDPfRe": 0, "aWQOcYTBTEYDcYdYFMEWHT": 0, "YNaXTbXALKFTCWTUTZALSIWe": 2, "aWQOcYTBOQeNZTWeUKAcET": 1, "TfNZeFcCFLUYYeFeHC": 1, "YdXfCDWOOWNECHTeUeaT": 1, "aXTfHAEDCDWOOSOPQDVXVcbRPSCMeJEXO": 0, "fefSKeEFKMBKEOcNSZBeLPHYYfPHe": 1, "aXTfHAEDISIBTVZMYCEbWccPcNPMAOebQAC": 0, "cCcCcCFLFHaZFdGdfTIEBFUINHC": 1, "aXTfHAEDdKNKNKZDYCFceHEVFceHEVFKMBKMXC": 0, "HWAFNRYLJVDXKe": 0, "aXTfHAEDdKNKNKZDYCFceHEVJXdDRLRFWMXC": 0, "HBAERdOPRaffXJHSWedNDeQfFRWe": 0, "eWfaQDSFcFPIWWXVXeLaBVAVKCYO": 0, "ZCaDMFRZIAKQcQBcHCcGPYFMYdUTBOFO": 1, "HWAFYDEZREeJIRBcVScbBNLPIHfSbfZALMO": 1, "cCHObMPWAEeIcFARSYWEYZLPNINFPIWBcOOIBBO": 1, "HWAFYTfbacWCcKbOFHe": 1, "cCHObIULDcFUHZESEETWBZEWaSdCDWOOC": 0, "TZUfdbYfTLBbPTPdKNKNKHUC": 1, "NAFLeOeJAEHIOQLeKfWe": 0, "NVFVcfTbdNNWSCCONFXUJFdJYQMALHYYfPHe": 0, "PPXGFRURURYaGYZYbcZTTEATZdSGWC": 0, "HWAFNeOYDYEaNdNFNeSfDHCOLcO": 0, "aXTfOFJZMYeKTcABVYUfFdHMaWQMaMEAaXTeEJTALRe": 1, "HZUaYPMPSXZVYMO": 0, "AEAFPIPDGYWHJXdDRALXMHO": 1, "HWAFYSGPRXe": 0, "OLHIAdLeKfWe": 0, "aXbSGYWYHbeNPIARTYT": 1 } };
    var jst = { "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "YTBUIHOdVLBQRMebfTINfTKe": 1, "INFdBOSEOCMHMZOXeHO": 1, "NAFLeOeJOMOQeOYFCRFZMbYWMPSYaET": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 2, "YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe": 1, "aaTBNZZJRLESPIDNJDPVBC": 1 };
    var jsdt = { "YTBUIHOdVLBQRMebfTINfTKe": 1, "BHDTJdReLGMeEcYPffcVDZBZMO": 1, "cCcCcCDPCDEOIWWTNUSIZIBLGTVYXO": 2, "YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe": 1, "INFdBOSEOCMHMZOXeHO": 1 };
    booking.jst = jst;
    booking.jsdt = jsdt;
    booking.env.b_fragment_url_html = "/fragment.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&";
    booking.env.b_fragment_url_json = "/fragment.zh-cn.json?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&";
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
<script nonce="ybUYWKfiYBp3lUr">
    (function () {
      document.addEventListener('DOMContentLoaded', function (e) {
        window._pxAppId = 'PXikKuL2RM';
        setTimeout(function () {
          var pxs = document.createElement('script');
          pxs.crossOrigin = 'anonymous';
          pxs.nonce = 'ybUYWKfiYBp3lUr';
          pxs.src = './script/libs/perimeterx/px.v7.6.9.min.js';
          document.head.appendChild(pxs);
        }, 750);
      });
    }());
  </script>
<script type="text/javascript" nonce="ybUYWKfiYBp3lUr">
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
<link nonce="ybUYWKfiYBp3lUr" data-chunk="client" rel="stylesheet"
	href="./script/psb/capla/static/css/bui-react.a5bf308a.css">
<link nonce="ybUYWKfiYBp3lUr"
	data-chunk="components-PropertyDetails-PropertyDetails"
	rel="stylesheet"
	href="./script/psb/capla/static/css/936.14513350.chunk.css">
<title>Booking.com：个人信息</title>
</head>

<!-- JSP Begin -->
<%
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

<body data-bui-theme="traveller-light" id="b2bookPage"
	class="bookings2 b2 book zh lang_is_ltr lang_is_cjk header_reshuffle user_center b-sprite-3 lt refine_tooltip ds-traveller-header lx_cwv_font_swap bp-bui-refresh bigblue_std_sm bigblue_std_lg iconfont_is_loading  ">
	<a href="#content" class="a11y-skip-to-content">跳至主要内容</a>
	<!--  
	<script type="text/javascript" nonce="ybUYWKfiYBp3lUr">
    window.utag_data = {
      site: 'bookings2',
      stypeid: '1',
      action: 'book',
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
      sage: '0',
      alev: '0',
      atid: '204',
      atnm: '',
      biz_s: '2',
      biz_p: '',
      bo: '1',
      browser: 'chrome',
      browser_ver: '112',
      bstage: '2',
      emksho: '1',
      is_subscribed_to_newsletter: '',
      genis: '',
      glev: '',
      n_b: '',
      sid: 'f0f82b20b46106bf73b9641ed765ee02',
      ui: '',
      is_aid_mcc_level_tracked: '',
      partner_channel_id: '17',
      ttv: '85.97',
      ttv_uc: '650.00',
      p1: '6.44775',
      base: '650.00',
      base_uc: '650.00',
      hotel_name: 'Holiday Inn Express Nanjing Dongshan, an IHG Hotel',
      channel_id: '17',
      partner_id: '488148',
      ai: '397645',
      tsmp: '1682392696',
      adults: '1',
      book_window: '38',
      children: '-1',
      district_name: '-1',
      city_name: '南京',
      region_name: '-1',
      country_name: '中国',
      currency: 'CNY',
      date_in: '2023-06-02',
      cul: '0',
      mnns: '0',
      date_out: '2023-06-03',
      dayofwk: '5',
      depth: '3',
      dest_type: '-1',
      dest_id: '-1',
      dest_cc: 'cn',
      dest_ufi: '-1919548',
      dest_name: '南京, 中国',
      hotel_count: '0',
      hotel_id: '4685428',
      hotel_id_list: '4685428',
      hr: '0',
      i1: '4685428',
      i2: '',
      i3: '',
      isfd: '',
      isnl: '',
      label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB',
      language: 'zh-cn',
      logged_in: '0',
      nights: '1',
      cv: '-1',
      ordv: '6.01784092',
      rooms: '2',
      seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
      sid_dyna: '006437635abb568e6b72f09341ecd74afe_1682391600',
      srord: '-1',
      sub: '0',
      ui_a: '0',
      user_location: 'cn',
      cip: '153.3.60.143',
      cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
      pid: '',
      stid: '397645',
      gaclientid: '',
      bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
      tag_cdn: 'tags.tiqcdn.com',
      cspn: 'ybUYWKfiYBp3lUr',
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
      action: 'book',
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
      sage: '0',
      alev: '0',
      atid: '204',
      atnm: '',
      biz_s: '2',
      biz_p: '',
      bo: '1',
      browser: 'chrome',
      browser_ver: '112',
      bstage: '2',
      emksho: '1',
      is_subscribed_to_newsletter: '',
      genis: '',
      glev: '',
      n_b: '',
      sid: 'f0f82b20b46106bf73b9641ed765ee02',
      ui: '',
      is_aid_mcc_level_tracked: '',
      partner_channel_id: '17',
      ttv: '85.97',
      ttv_uc: '650.00',
      p1: '6.44775',
      base: '650.00',
      base_uc: '650.00',
      hotel_name: 'Holiday Inn Express Nanjing Dongshan, an IHG Hotel',
      channel_id: '17',
      partner_id: '488148',
      ai: '397645',
      tsmp: '1682392696',
      adults: '1',
      book_window: '38',
      children: '-1',
      district_name: '-1',
      city_name: '南京',
      region_name: '-1',
      country_name: '中国',
      currency: 'CNY',
      date_in: '2023-06-02',
      cul: '0',
      mnns: '0',
      date_out: '2023-06-03',
      dayofwk: '5',
      depth: '3',
      dest_type: '-1',
      dest_id: '-1',
      dest_cc: 'cn',
      dest_ufi: '-1919548',
      dest_name: '南京, 中国',
      hotel_count: '0',
      hotel_id: '4685428',
      hotel_id_list: '4685428',
      hr: '0',
      i1: '4685428',
      i2: '',
      i3: '',
      isfd: '',
      isnl: '',
      label: 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB',
      language: 'zh-cn',
      logged_in: '0',
      nights: '1',
      cv: '-1',
      ordv: '6.01784092',
      rooms: '2',
      seed: 'uZ5VOwgD7b0y5zZKGUBDlQ',
      sid_dyna: '006437635abb568e6b72f09341ecd74afe_1682391600',
      srord: '-1',
      sub: '0',
      ui_a: '0',
      user_location: 'cn',
      cip: '153.3.60.143',
      cua: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36',
      pid: '',
      stid: '397645',
      gaclientid: '',
      bkng_cookie_identifier: 'UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5',
      tag_cdn: 'tags.tiqcdn.com',
      cspn: 'ybUYWKfiYBp3lUr',
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
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.nonce = 'ybUYWKfiYBp3lUr'; j.async = true; j.src =
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
	-->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5Q664QZ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<svg class="bk-icon -streamline-close" height="24"
		style="display: none;" width="24" viewBox="0 0 24 24"
		role="presentation" aria-hidden="true" focusable="false">
    <path
			d="M13.31 12l6.89-6.89a.93.93 0 1 0-1.31-1.31L12 10.69 5.11 3.8A.93.93 0 0 0 3.8 5.11L10.69 12 3.8 18.89a.93.93 0 0 0 1.31 1.31L12 13.31l6.89 6.89a.93.93 0 1 0 1.31-1.31z" />
  </svg>
	<header
		class="bui-header bui-header--logo-large bui-u-hidden-print bui-header--rounded-tabs ">
		<nav class="bui-header__bar ">
			<div class="bui-header__main">
				<div class="bui-header__logo"
					data-et-click="customGoal:YTBUIHOdVLBQRMebfTINfTKe:2">
					<a href="./index.jsp"
						ria-label="Booking.com &#x7F24;&#x5BA2;&#xFF1A;&#x5728;&#x7EBF;&#x9152;&#x5E97;&#x9884;&#x8BA2;"
						data-et-click="YTBUIHOdVLBLKAMZUC:1YTBUIHOdVLBLKAMZUC:2"> <svg
							class="bk-icon -streamline-booking_logo_dark_bg_mono" height="24"
							width="144" viewBox="0 0 180 30" role="presentation"
							aria-hidden="true" focusable="false">
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
					
					<span class="bui-button__text"> <span aria-hidden="true">
							CNY </span> <span class="bui-u-sr-only"> 选择你使用的货币. 你当前选择的货币是人民币 </span>
					</span>

				</div>
				<div class="bui-group__item">
					
					<span class="bui-button__text">
						<div class="bui-avatar bui-avatar--small" aria-hidden="true">
							<img class="bui-avatar__image" src="./img/china_flag.png" alt="" />
						</div> <span class="bui-u-sr-only"> 选择语言. 你当前选择的语言是简体中文 </span>
					</span>

					
				</div>
				<div class="bui-group__item">
					<button class="bui-button bui-button--light bui-button--large"
						type="button" data-bui-component="Popover"
						data-popover-content-id="header-wechat-qr"
						data-popover-position="bottom" data-popover-no-arrow="true"
						aria-label="关注Booking.com官方微信号">
						<span class="bui-button__icon"> <span aria-hidden="true"
							class="bui-icon bui-icon--large"> <svg
									class="bk-icon -streamline-logo_we_chat" height="24" width="24"
									viewBox="0 0 128 128" role="presentation" aria-hidden="true"
									focusable="false">
                  <path
										d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.701 50.701 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.099 25.099 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z" />
                </svg>
						</span>
						</span>
					</button>
					<div id="header-wechat-qr" class="bui-card bui-u-hidden">
						<div class="bui-card__content">
							<div class="bui-u-text-center">
								关注Booking.com官方微信号 <br /> <img width="150px"
									src="./script/static/img/gtw_desktop_header_bp/3afe1c404c3f955cac8522b6479525f0dcdfc8d2.jpg"
									alt="关注Booking.com官方微信号" /> <br /> 全球特价酒店应有尽有！
							</div>
						</div>
					</div>
				</div>
				<div class="bui-group__item">
					<a class="bui-button bui-button--light bui-button--large "
						data-bui-component="Tooltip" data-tooltip-position="bottom"
						title="联系客服" href=""
						data-ga-track="click|Click|Action: book|hc_entrypoint_top_header"
						data-et-click=" customGoal:YTBUIHOdBOcaGPaVHXT:4 customGoal:YTTHbXeeVJWcWPaDMWOMHTcNSDEWCAWdPZKe:3 ">
						<span class="bui-button__icon"> <span aria-hidden="true"
							class="bui-icon bui-icon--large"> <svg
									class="bk-icon -streamline-question_mark_circle" height="24"
									width="24" viewBox="0 0 24 24" role="presentation"
									aria-hidden="true" focusable="false">
                  <path
										d="M9.75 9a2.25 2.25 0 1 1 3 2.122 2.25 2.25 0 0 0-1.5 2.122v1.006a.75.75 0 0 0 1.5 0v-1.006c0-.318.2-.602.5-.708A3.75 3.75 0 1 0 8.25 9a.75.75 0 1 0 1.5 0zM12 16.5a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" />
                </svg>
						</span> <span class="bui-u-sr-only"> 获取订单帮助 </span>
					</span>
					</a>
				</div>
				<div class="bui-group__item">
					<svg class="bk-icon -streamline-property_add" height="24"
						style="display: none;" width="24" viewBox="0 0 24 24"
						role="presentation" aria-hidden="true" focusable="false">
            			<path d="M8.25 19h-3a.75.75 0 0 1-.75-.75v-7.5a.75.75 0 0 0-1.5 0v7.5a2.25 2.25 0 0 0 2.25 2.25h3a.75.75 0 0 0 0-1.5zM1.234 9.823l8.782-7.43a.75.75 0 0 1 .969 0l7.279 6.159a.75.75 0 1 0 .968-1.146l-7.279-6.159a2.25 2.25 0 0 0-2.906 0L.265 8.678a.75.75 0 1 0 .968 1.146zM15.75 2.5h3L18 1.75v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-.75-.75h-3a.75.75 0 0 0 0 1.5zm6.75 14.25a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.5-3v6a.75.75 0 0 0 1.5 0v-6a.75.75 0 0 0-1.5 0zm-2.25 3.75h6a.75.75 0 0 0 0-1.5h-6a.75.75 0 0 0 0 1.5z" />
          			</svg>
					
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
							<input type="hidden" name="phone_input" id="phone_input" value="" />
						</form>		
				<div class="bui-group__item">
					<svg class="bk-icon -streamline-account_create" height="24"
						style="display: none;" width="24" viewBox="0 0 24 24"
						role="presentation" aria-hidden="true" focusable="false">
            <path
							d="M22.5 17.25a5.25 5.25 0 1 1-10.5 0 5.25 5.25 0 0 1 10.5 0zm1.5 0a6.75 6.75 0 1 0-13.5 0 6.75 6.75 0 0 0 13.5 0zm-7.5-3v6a.75.75 0 0 0 1.5 0v-6a.75.75 0 0 0-1.5 0zM14.25 18h6a.75.75 0 0 0 0-1.5h-6a.75.75 0 0 0 0 1.5zM1.5 17.25a6.003 6.003 0 0 1 8.356-5.518.75.75 0 0 0 .588-1.38A7.504 7.504 0 0 0 0 17.25a.75.75 0 0 0 1.5 0zm9.375-12.375a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0zm1.5 0a4.875 4.875 0 1 0-9.75 0 4.875 4.875 0 0 0 9.75 0z" />
          </svg>
					<a class="bui-button bui-button--secondary js-header-login-link"
						onclick="checkRecords()"
						data-google-track="Click/Action: book/header_logged_out_link_box"
						data-et-click=" customGoal:YTBUIHOdBOcaGPaVHXT:2 customGoal:cCHObTVXBUPACQVZMYCdKNKNKZQWe:4 ">
						<span class="bui-button__text">查看历史订单</span>
					</a>
				</div>
			</div>
		</nav>
	</header>
	<div id="bodyconstraint" class="   ">
		<div id="bodyconstraint-inner">
			<div id="subheader-wrap" class="" style=""></div>
			<div data-block-id="header_survey"></div>
			<svg class="bk-icon -genius-new_identity-genius_badge" height="174"
				style="display: none;" width="434" viewBox="0 0 434 174"
				role="presentation" aria-hidden="true" focusable="false">
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
			<svg class="bk-icon -streamline-square_rating" height="128"
				style="display: none;" width="112" viewBox="0 0 112 128"
				role="presentation" aria-hidden="true" focusable="false">
        <path
					d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z" />
      </svg>
			<svg class="bk-icon -streamline-circle" height="24"
				style="display: none;" width="24" viewBox="0 0 24 24"
				role="presentation" aria-hidden="true" focusable="false">
        <path
					d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z" />
      </svg>
			<svg class="bk-icon -streamline-circle_half" height="128"
				style="display: none;" width="128" viewBox="0 0 128 128"
				role="presentation" aria-hidden="true" focusable="false">
        <path
					d="M64 0C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-35.346-28.654-64-64-64zm0 120V8c30.928 0 56 25.072 56 56s-25.072 56-56 56z" />
      </svg>
			<svg class="bk-icon -streamline-star" height="24"
				style="display: none;" width="24" viewBox="0 0 24 24"
				role="presentation" aria-hidden="true" focusable="false">
        <path
					d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z" />
      </svg>
			<svg class="bk-icon -streamline-star_half" height="128"
				style="display: none;" width="128" viewBox="0 0 128 128"
				role="presentation" aria-hidden="true" focusable="false">
        <path
					d="M126.76 45.92a11.75 11.75 0 0 0-10.93-7.6H85.77L74.93 7.58A11.67 11.67 0 0 0 64 0h-.82c-.23 0-.45 0-.68.07-.23.07-.28 0-.42.06l-.72.15L61 .4c-.36.1-.71.21-1.07.34a11.65 11.65 0 0 0-6.83 6.84L42.25 38.31H12.18a11.67 11.67 0 0 0-11.13 8.18A11.39 11.39 0 0 0 .52 50a11.65 11.65 0 0 0 4.19 9l25.71 21.24-10.81 32.41c-2.024 6.113 1.282 12.711 7.39 14.75.4.13.81.23 1.21.32l.31.06c.39.082.783.139 1.18.17h1.59c.388-.017.776-.054 1.16-.11h.06a9.704 9.704 0 0 0 1.18-.26l.31-.08c.383-.114.76-.247 1.13-.4q.55-.24 1.11-.54l.26-.15c.365-.208.719-.435 1.06-.68L64 106.35l26.43 19.38a11.563 11.563 0 0 0 6.88 2.27c.596.001 1.19-.042 1.78-.13 6.367-.967 10.744-6.911 9.778-13.278-.1-.659-.257-1.309-.468-1.942L97.59 80.22l25.8-21.39a11.7 11.7 0 0 0 3.37-12.91zm-8.52 6.79l-26.52 22a6.59 6.59 0 0 0-2 7.11l11.12 33.37a3.66 3.66 0 0 1-2.95 4.81 3.578 3.578 0 0 1-2.72-.68l-27.29-20-.14-.08a6.781 6.781 0 0 0-.76-.47c-.16-.08-.33-.14-.49-.21-.16-.07-.3-.13-.46-.18-.16-.05-.39-.1-.58-.15L64.06 8a3.61 3.61 0 0 1 3.35 2.3l11.15 31.63a6.58 6.58 0 0 0 6.19 4.38h31.07a3.7 3.7 0 0 1 3.44 2.39 3.66 3.66 0 0 1-1.02 4.01z" />
      </svg>
			<script type="text/data" id="bp_json_data_general_flags"
				class="bp_json_data_chunk">
{
"__null__": null
,
"no_cvc_hotel": false
,
"no_cc_hotel": true
,
"cvc_required": true
,
"noCC": true
}
</script>
			<script type="text/data" id="bp_json_data_general_static"
				class="bp_json_data_chunk">
{
"__null__": null
,
"errorsCount": 0
,
"roomsCount": 2
,
"inputFieldClass": "bp_input_text"
,
"is_payment_property" : 1
,
"checkin" : "2023-06-02"
,
"checkinTimeFrom": "15:00"
,
"checkinTimeUntil": ""
,
"has24hrFrontdesk": 1
,
"checkout" : "2023-06-03"
,
"checkinEtaHour" : -1
,
"stage": 2
,
"payment_methods": [{"is_chargeable":"1","value":"MasterCard","name":"MasterCard","display_priority":-1,"cvcDigits":3,"name_trans":"MasterCard","is_accepted_by_hotel":1,"abbr":"mastercard","payment_method_id":"11","cc_cvc":1,"gateway":"","is_credit":1,"is_cash_based":0,"path":"/experiments/payment_type_icons/mastercard.png","bmp":0,"cc_type_id":"3"},{"value":"Visa","is_chargeable":1,"name":"Visa","name_trans":"Visa","cvcDigits":3,"display_priority":-1,"payment_method_id":"10","abbr":"visa","is_accepted_by_hotel":1,"is_credit":1,"gateway":"","cc_cvc":1,"is_cash_based":0,"path":"/experiments/payment_type_icons/visa.png","cc_type_id":"2","bmp":0},{"name_trans":"UnionPay credit card","display_priority":-1,"abbr":"unionpaycreditcard","payment_method_id":"26","is_accepted_by_hotel":1,"value":"UnionPay credit card","is_chargeable":1,"name":"UnionPay credit card","path":"/experiments/payment_type_icons/unionpaycreditcard.png","bmp":0,"cc_type_id":"44","gateway":"","is_credit":1,"is_cash_based":0},{"value":"JCB","is_chargeable":1,"name":"JCB","name_trans":"JCB","display_priority":-1,"abbr":"jcb","payment_method_id":"25","is_accepted_by_hotel":1,"gateway":"","is_credit":1,"is_cash_based":0,"path":"/experiments/payment_type_icons/jcb.png","bmp":0,"cc_type_id":"7"},{"name":"American Express","value":"American Express","is_chargeable":1,"abbr":"americanexpress","payment_method_id":"12","is_accepted_by_hotel":1,"cvcDigits":4,"name_trans":"American Express","display_priority":-1,"is_cash_based":0,"gateway":"","is_credit":1,"cc_cvc":1,"bmp":0,"cc_type_id":"1","path":"/experiments/payment_type_icons/americanexpress.png"}]
,
"interval": 1
,
"etaIntervalSize" : 1
}
</script>
			<script type="text/data" id="bp_json_data_guest_pii_fields"
				class="bp_json_data_chunk">
{
"__null__": null
}
</script>
			<script type="text/data"
				id="bp_json_data_cc_abbreviations_to_value_map"
				class="bp_json_data_chunk">
{
"__null__": null
,
"ccAbbreviationsToValueMap" : {
"__null__" : null
, "mastercard" : "MasterCard"
, "visa" : "Visa"
, "unionpaycreditcard" : "UnionPay credit card"
, "jcb" : "JCB"
, "americanexpress" : "American Express"
}
}
</script>
			<script type="text/data" id="bp_json_data_bs2"
				class="bp_json_data_chunk">
{
"__null__": null
,
"customerFirstName": ""
,
"customerLastName": ""
,
"email": ""
,
"emailConfirm": ""
,
"invalidEmailError": "\u8bf7\u586b\u5199\u6709\u6548\u7684\u7535\u90ae\u5730\u5740"
,
"domainSuggestionError": "\u60a8\u60f3\u8f93\u5165\u7684\u662f\u003cins class=\"bp_email_area_suggested_email bp_pseudo_link\"\u003e[[email]]\u003c/ins\u003e\u5417\uff1f"
,
"rooms": [
{
"id": 1
,
"maxPersons" : 2
,
"removeRoomConfirmMessage": "\u60a8\u5373\u5c06\u4ece\u60a8\u7684\u9884\u8ba2\u4e2d\u79fb\u9664\u4e0b\u5217\u9009\u9879\uff1a\u6807\u51c6\u53cc\u4eba\u6216\u53cc\u5e8a\u95f4 \\n\\n\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u786e\u8ba4\u79fb\u9664\u3002"
}
 , 
{
"id": 2
,
"maxPersons" : 2
,
"removeRoomConfirmMessage": "\u60a8\u5373\u5c06\u4ece\u60a8\u7684\u9884\u8ba2\u4e2d\u79fb\u9664\u4e0b\u5217\u9009\u9879\uff1a\u6807\u51c6\u53cc\u4eba\u6216\u53cc\u5e8a\u95f4 \\n\\n\u70b9\u51fb\u201c\u786e\u5b9a\u201d\u786e\u8ba4\u79fb\u9664\u3002"
}
]
,
"travelPurpose": "leisure"
,
"retainLeavingUsersAvailable": true
}
</script>
			<script type="text/data" id="bp_json_data_bs3"
				class="bp_json_data_chunk">
{
"__null__": null
}
</script>
			<script type="text/data" id="bp_json_data_initial_state"
				class="bp_json_data_chunk">
{
"__null__": null
,
"storeInitialState" : {
"main_form" : {
"firstname": "",
"lastname": "",
"email": "",
"email_confirm": "",
"phone": "",
"bp_travel_purpose": "leisure",
"bp_address_type": "personal",
"vat_number": "",
"company_name": ""
},
"personal_address": {
"address1": "",
"city": "",
"zip": "",
"cc1": "cn"
},
"business_address": {
"address1": "",
"city": "",
"zip": "",
"cc1": ""
},
"payment_method": {
"name": "creditcard",
"details": ""
},
"payment_timing": {
"type": "later"
},
"payment_cc_details": {
"cc_card_id": "",
"cc_number": ""
, "is_amex_cvc_required": ""
, "cc_type": "__null__"
, "cc_name" : ""
, "cc_cvc" : ""
, "cc_month" : ""
, "cc_year" : ""
}
,
"rooms" : [
{
"id" : "468542801_246088447_2_1_0",
"sequencial_id" : 1,
"max_persons" : 2
,"selected_persons" : "1"
},
{
"id" : "468542801_246088447_2_1_0",
"sequencial_id" : 2,
"max_persons" : 2
,"selected_persons" : "1"
}
],
"rooms_guests_total" : 2
}
}
</script>
			<div
				class="bui-container booking-process__container js-booking-process__container js-booking-process__container--stage-2 e2e-stage-container"
				data-stage="2">
				<div class="bui-grid">
					<div class="bui-grid__column bui-spacer--large">
						<div
							class="bui-card bui-card--fill bui-card--transparent bp-card--navigation-progress">
							<div class="bui-card__content">
								<div class="bp-navigation-progress">
									<ol class="bui-nav-progress bui-nav-progress--horizontal">
										<li class="bui-nav-progress__item "><span
											class="bui-nav-progress__indicator" aria-hidden="true">
												<svg
													class="bk-icon -streamline-checkmark_fill bui-nav-progress__icon"
													fill="currentColor" height="24" width="24"
													viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
                          <path
														d="M56.33 102a6 6 0 0 1-4.24-1.75L19.27 67.54A6.014 6.014 0 1 1 27.74 59l27.94 27.88 44-58.49a6 6 0 1 1 9.58 7.22l-48.17 64a5.998 5.998 0 0 1-4.34 2.39z" />
                        </svg>
										</span> <strong class="bui-nav-progress__title" aria-current="false">
												已选住宿 </strong> <span class="bui-nav-progress__step"
											aria-hidden="true"> 第1步（共3步） </span></li>
										<li role="presentation" class="bui-nav-progress__divider"></li>
										<li
											class="bui-nav-progress__item bui-nav-progress__item--active">
											<span class="bui-nav-progress__indicator" aria-hidden="true">
												2 </span> <strong class="bui-nav-progress__title"
											aria-current="step"> 个人信息 </strong> <span
											class="bui-nav-progress__step" aria-hidden="true">
												第2步（共3步） </span>
										</li>
										<li role="presentation" class="bui-nav-progress__divider"></li>
										<li
											class="bui-nav-progress__item bui-nav-progress__item--disabled">
											<span class="bui-nav-progress__indicator" aria-hidden="true">
												3 </span> <strong class="bui-nav-progress__title"
											aria-current="false"> 最后一步 </strong> <span
											class="bui-nav-progress__step" aria-hidden="true">
												第3步（共3步） </span>
										</li>
									</ol>
									<div class="bui-nav-progress__step-details">
										<div class="bui-nav-progress__step-title">个人信息</div>
										<div class="bui-nav-progress__step-number" aria-hidden="true">
											第2步（共3步）</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="bui-grid">
					<aside class="bui-grid__column bui-grid__column-4@medium">
						<div class="bui-group bui-group--large">
							<section
								class="bui-card bp-card--booking-summary bui-u-bleed@small">
								<div class="bui-card__content">
									<header class="bui-card__header bui-spacer--large ">
										<h2 class="bui-card__title">订单详情</h2>
									</header>
									<div class="bui-group bui-group--large">
										<div class="bui-group bui-group--large">
											<div class="bui-group__item">
												<div
													class="bui-date-range bui-date-range--large bp-date-range">
													<div class="bui-date-range__item">
														<div id="bp-checkin-date__label" class="bui-date__label">入住时间</div>
														<time class="bui-date bui-date--large"
															aria-describedby="bp-checkin-date__label">
															<span class="bui-date__title">
															<%
																String[] check_in_date_strs = check_in_date.split("-");
															%>
															<% out.print(check_in_date_strs[0]); %>年<% out.print(check_in_date_strs[1]); %>月<% out.print(check_in_date_strs[2]); %>日
															</span> 
														</time>
													</div>
													<div class="bui-date-range__item">
														<div id="bp-checkout-date__label" class="bui-date__label">退房时间</div>
														<time class="bui-date bui-date--large"
															aria-describedby="bp-checkout-date__label">
															<span class="bui-date__title">
															<%
																String[] check_out_date_strs = check_out_date.split("-");
															%>
															<% out.print(check_out_date_strs[0]); %>年<% out.print(check_out_date_strs[1]); %>月<% out.print(check_out_date_strs[2]); %>日
															</span> 
														</time>
													</div>
												</div>
											</div>
											<div class="bui-group__item bui-group bui-group--small">
												<div class="bui-group__item bui-f-font-emphasized">入住总天数：</div>
												<div class="bui-group__item bui-f-font-strong"><% out.print(daysOfStay); %>晚</div>
											</div>
										</div>
										<hr class="bui-divider">
										<div class="bui-group bui-group--large">
											<div class="bui-group__item">
												<div class="bui-group bui-group--small">
													<div class="bui-f-font-strong">已选择：</div>
													<ul class="bui-list bui-list--text bp-list--compact">
													<%
														for(int i = 0; i < roomList.size(); ++i) {
															Room room = roomList.get(i);
															String room_name = room.getRoom_name();
															Integer room_num = room_numList.get(i);
													%>
														<li class="bui-list__item">
															<div><% out.print(room_num); %> x <% out.print(room_name); %></div>
														</li>
													<% } %>
													</ul>
												</div>
											</div>
											
										</div>
									</div>
								</div>
							</section>
							<div class="bui-group bui-group--large"
								data-hotel-currency-code="CNY" data-user-currency-code="CNY"
								data-is-us-breakdown="false" data-component="bp/price-details">
								<div class="bui-card-group">
									<section
										class="bui-card bp-card--price-details js-price-details e2e-price-details  bui-u-bleed@small ">
										<div class="bui-card__content">
											<header class="bui-card__header bui-spacer--large ">
												<h2 class="bui-card__title">价格汇总</h2>
											</header>
											<div
												class="bui-card__text bp-price-details__total bp-price-details__total--discount-breakdown bp-price-details__total--discount-breakdown-with-bg ">
												<div class="bui-group bui-group--large">
													<div class="bui-group__item">
														<div class="bui-group bui-group--medium">
															<div class="bui-group__item">
																<div
																	class="bp-price-details__total-line bp-price-details__total-line--user js-price-details__total-line--user e2e-price-details__total-line--user bp-price-details__total-line--v-align-end">
																	<div class="bp-price-details__charge-type">
																		<div class="bp-price-details__total-price">价格</div>
																	</div>
																	<div class="bui-u-text-right">
																		<div
																			class="bp-price-details__total-price e2e-price-details__total-charge--user"
																			data-price="650" data-currency-code="CNY"
																			data-pd-total-usercurrency>
																			<span data-component="core/animate-price" class=""
																				data-value="650" data-currency="CNY"
																				data-precision=""
																				data-animate-price-group-name="bp_user_total_price"
																				data-animation-speed="0.7"> <% out.print(totalPrice); %>元 </span>
																		</div>
																	</div>
																</div>
																
															</div>
														</div>
													</div>
												</div>
											</div>
											<div
												data-component="bp/price-summary/discount-breakdown-details"
												class="bui-card__text bp-price-details__taxes-and-benefits-block js-bp-price-details__taxes-and-benefits-block ">
												<header class="bui-card__header bui-spacer--large">
													<h2 class="bui-card__title">价格信息</h2>
												</header>
												<div class="bui-group bui-group--large">
													<div class="bui-group__item">
														<div
															class="bui-group bui-group--inline bui-group--large bui-group--wrap-nowrap">
															<div class="bui-group__item">
																<svg class="bk-icon -streamline-accounting_bills"
																	height="20" width="20" viewBox="0 0 24 24"
																	role="presentation" aria-hidden="true"
																	focusable="false">
                                  <path
																		d="M4.125 8.25a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5 1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5zm12.75 5.25a.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5 1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5zm2.625-3V15a.75.75 0 0 1-.75.75H2.25A.75.75 0 0 1 1.5 15V6a.75.75 0 0 1 .75-.75h16.5a.75.75 0 0 1 .75.75v4.5zm1.5 0V6a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 6v9a2.25 2.25 0 0 0 2.25 2.25h16.5A2.25 2.25 0 0 0 21 15v-4.5zm-8.25 0a2.25 2.25 0 1 1-4.5 0 2.25 2.25 0 0 1 4.5 0zm1.5 0a3.75 3.75 0 1 0-7.5 0 3.75 3.75 0 0 0 7.5 0zM22.5 9v9a.75.75 0 0 1-.75.75H5.25a.75.75 0 0 0 0 1.5h16.5A2.25 2.25 0 0 0 24 18V9a.75.75 0 0 0-1.5 0z" />
                                </svg>
															</div>
															<div class="bui-group__item bui-group__item--grow">
																<div class="bui-group">
																	<div class="bui-group__item">已选择的房间费用</div>
																	<div
																		class="bui-group__item bp-price-details__taxes-and-benefits-block-details">
																		<div class="bui-group bui-group--small">
																			<%
																				for(int i = 0; i < roomList.size(); ++i) {
																					Room room = roomList.get(i);
																			%>
																			<div class="bui-group__item">
																				<div
																					class="bui-group bui-group--inline bui-group--small bui-group--wrap-nowrap">
																					<div class="bui-group__item bui-group__item--grow bui-f-color-grayscale">
																						<% out.print(room_numList.get(i)); %>
																						 x 
																						<% out.print(room.getRoom_name()); %>
																					</div>
																					<div class="bui-group__item bui-f-color-grayscale">
																						<% 
																						Float room_price = room.getPrice();
																						if(room_price == null){
																							room_price = 0f;
																						}
																						Float total_room_price = room_numList.get(i) * room_price;
																						String price_str = String.format("%.2f", total_room_price);
																						out.print(price_str); 
																						%>
																						&#x5143;
																					</div>
																				</div>
																			</div>
																			<% } %>
																			<!--  
																			<div class="bui-group__item">
																				<div
																					class="bui-group bui-group--inline bui-group--small bui-group--wrap-nowrap">
																					<%
																						for(int i = 0; i < roomList.size(); ++i) {
																							Room room = roomList.get(i);
																					%>
																					<div class="bui-group__item bui-group__item--grow bui-f-color-grayscale">
																						10%&#x4F4F;&#x5BBF;&#x65B9;&#x670D;&#x52A1;&#x8D39;
																					</div>
																					<% } %>
																					<div class="bui-group__item bui-f-color-grayscale">
																						68.90&#x5143;
																					</div>
																				</div>
																			</div>
																			-->
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													
													
												</div>
											</div>
										</div>
									</section>
								</div>
							</div>
							<!--  
							<section
								class="bui-card bp-card--cancellation-schedule bui-u-bleed@small">
								<div class="bui-card__content">
									<header class="bui-card__header">
										<h2 class="bui-card__title">取消费用是多少？</h2>
									</header>
									<div class="bui-card__text">
										<ul
											class="bp-schedule js-bp-schedule--cancellation e2e-cancellation-schedule">
											<li
												class="bp-schedule__milestone bp-schedule__milestone--reinforcement">
												<div class="bp-schedule__milestone-name">
													6月2日下午5:59前可以免费取消</div>
											</li>
											<li class="bp-schedule__milestone">
												<div class="bp-schedule__milestone-name">6月2日下午6:00起</div>
												<div class="bp-schedule__milestone-value">
													<span data-component="core/animate-price" class=""
														data-value="650.00" data-currency="CNY" data-precision="0"
														data-animate-price-group-name="bp_payment_cancellation_cost_2"
														data-animation-speed="0.7"> 650元 </span>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</section>
							-->
							
						</div>
					</aside>
					<main id="content"
						class="bui-grid__column bui-grid__column-8@medium booking-process__content">
						<div id="validation-errors"
							data-component="bp/top-validation-errors"
							class="bui-group bp-validation-errors__container js-bp-validation-errors__container"></div>
						<div class="bp-mfe-container--property-details">
							<div
								data-capla-component="b-checkout-bp-accommodation/PropertyDetails/v1"
								data-capla-namespace="b-checkout-bp-accommodationBXEQFGJJ">
								<div>
									<div
										class="a826ba81c4 fe821aea6c fa2f36ad22 afd256fc79 d08f526e0d ed11e24d01 ef9845d4b3 b3f8bf4d3c bui-spacer--large">
										<div class="a1b3f50dcd bdf0df2d01 f7c6687c3d a198893f50">
											<div class="">
												<div
													class="a1b3f50dcd bdf0df2d01 b2fe1a41c3 a198893f50 d19ba76520">
													<div class="">
														<div class="ecfb1f5933 bd327c62e7">
														<%
															String hotel_img_src = "./img/0_0.jpg";
															if(hotel_info != null){
																hotel_img_src = "./imgs/image/" + hotel_info.getId() + "_0.jpg";
															}
														%>
															<img
																src="<% out.print(hotel_img_src); %>"
																class="f24789ba0e" alt="" width="160" height="160" />
														</div>
													</div>
													<div class="b1e6dd8416 aacd9d0b0a">
														<div class="a1b3f50dcd a1f3ecff04 f7c6687c3d">
															<div class="a1b3f50dcd b9353fc4bd e7726e00dd">
																<div class="">
																	<h1 class="fcab3ed991">
																	<% 
																	if(hotel_info == null){
																		out.print("酒店名称");
																	}else{
																		out.print(hotel_info.getHotel_name()); 
																	}
																	%>
																	</h1>
																</div>
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
																		<div
																			data-testid="property-details__metadata--property-type"
																			class="">
																			<div>
																				<div
																					class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
																					<div class="d8eab2cf7f">酒店</div>
																					<div class="fbb11b26f5" role="img">
																						<span aria-hidden="true"
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
                                              </svg></span>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div
																			data-testid="property-details__metadata--preferred-property"
																			class="">
																			<span class="cb5ebe3ffb"><span
																				aria-expanded="false"
																				class="b6dc9a9e69 ee74cdff9b ec1b6253a6 fe3639fe67"
																				aria-hidden="true"><svg
																						xmlns="http://www.w3.org/2000/svg"
																						viewBox="0 0 128 128">
                                            <path fill="#FEBB02"
																							d="M112 8H16a8 8 0 0 0-8 8v96a8 8 0 0 0 8 8h96a8 8 0 0 0 8-8V16a8 8 0 0 0-8-8zM48 96H24V58h24zm56-25a8.697 8.697 0 0 1-2 6 8.903 8.903 0 0 1 1 4 6.9 6.9 0 0 1-5 7c-.5 4-4.8 8-9 8H56V58l10.3-23.3a5.4 5.4 0 0 1 10.1 2.7c-.078.923-.28 1.831-.6 2.7L72 52h23c4.5 0 9 3.5 9 8a9.2 9.2 0 0 1-2 5.3 7.5 7.5 0 0 1 2 5.7z">
                                            </path>
                                          </svg></span></span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="a1b3f50dcd a1f3ecff04 f7c6687c3d">
																<div class="a1b3f50dcd b9353fc4bd f7c6687c3d">
																	<span class="cb5ebe3ffb"><button
																			aria-expanded="false" type="button"
																			class="fc63351294 c15b1ae496">
																			<div class="db29ecfbe2">
																			<%
																				if(hotel_info == null){
																					out.print("酒店地址");
																				}else{
																					out.print(hotel_info.getAddress());
																				}
																			%>
																			</div>
																		</button></span>
																	<%
																		String hotel_feature_str = "酒店位置超棒";
																		if(hotel_feature != null){
																			hotel_feature_str = hotel_feature.getFeature();
																		}
																		if(hotel_feature_str != "NULL") {
																	%>
																	<div class="d8eab2cf7f cf9ebde7b2">
																		<% out.print(hotel_feature_str); %>
																	</div>
																	<% } %>
																</div>
																<div class="">
																	<div
																		class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 d19ba76520 beeede3d5b">
																		<%
																			Float rating = 8.0f;
																			if(hotel_info != null) {
																				rating = hotel_info.getRating();
																			}
																		%>
																		<div aria-label="评分8.6" class="d8eab2cf7f d10a6220b4">
																		<% out.print(rating); %>
																		</div>
																		<div class="b1e6dd8416 aacd9d0b0a b48795b3df">
																			<span aria-label="评价很棒"
																				class="d8eab2cf7f f0d4d6a2f5 e46e88563a">
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
																<div class="">
																	<ul class="bbf2424dd9"
																		data-testid="property-details__facilities">
																		<%
																			String facilities_str = "室内泳池,禁烟客房,客房服务,健身中心";
																			if(hotel_feature != null){
																				facilities_str = hotel_feature.getFacility_list();
																			}
																			String[] facilities = facilities_str.split(",");
																			
																			for(int i = 0; i < facilities.length; ++i) {
																		%>
																		<li class="c29c7eee12"><span>
																				<div data-testid="property-facility-badge-icon"
																					class="d8eab2cf7f f0d4d6a2f5 ff07fc41e3 label b1a7dcb8b0">
																					<span data-testid="icon-with-text-icon"
																						class="b6dc9a9e69 e492382468 e25355d3ee"
																						aria-hidden="true">
																						<svg
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
																									</svg>
																									</span>
																					<span class="a51f4b5adb">
																					<% out.print(facilities[i]); %>
																					</span>
																				</div>
																		</span></li>
																		<% } %>
																	</ul>
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
						</div>
						<div
							class="bui-card bui-spacer--large bp-card--white bui-u-bleed@small e2e-bp-reinforcements">
							<div class="bui-card__content">
								<header class="bui-card__header">
									<h2 class="bui-card__title bui-text--variant-headline_3">温馨提示：</h2>
								</header>
								<div class="bui-card__text">
									<div class="bui-group bui-group--medium">
										<div class="bui-group__item bui-inline-container">
											<div class="bui-inline-container__start">
												<span class="bui-icon bui-icon--medium" role="presentation">
													<svg class="bk-icon -streamline-credit_card_crossed"
														fill="#008009" height="16" role="presentation" width="16"
														viewBox="0 0 128 128" role="presentation"
														aria-hidden="true" focusable="false">
                            <path
															d="M88.72 108a4 4 0 0 1-4 4H12c-6.627 0-12-5.373-12-12V28a4 4 0 0 1 8 0v12h12.11a4 4 0 0 1 0 8H8v52a4 4 0 0 0 4 4h72.72a4 4 0 0 1 4 4zM116 16H43.1a4 4 0 0 0 0 8H116a4 4 0 0 1 4 4v12H66.86a4 4 0 0 0 0 8H120v52a4 4 0 0 0 8 0V28c0-6.627-5.373-12-12-12zM44.3 64H28a4 4 0 0 0 0 8h16.3a4 4 0 0 0 0-8zM24 84a4 4 0 0 0 4 4h29.88a4 4 0 0 0 0-8H28a4 4 0 0 0-4 4zM6.83 1.17a4.002 4.002 0 1 0-5.66 5.66l120 120a4.002 4.002 0 1 0 5.66-5.66z" />
                          </svg>
												</span>
											</div>
											<div class="bui-inline-container__main">
												<p class="bui-text--variant-body_2">无需信用卡！</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<svg class="bk-icon -logos-booking-logo" height="42"
							style="display: none;" width="252" viewBox="0 0 252 42"
							role="presentation" aria-hidden="true" focusable="false">
              <path
								d="M15.592 22.92C15.591 20.283 13.924 18.652 11.348 18.652H7.738C6.58 18.815 6.055 19.518 6.055 20.877V26.783L11.348 26.79C13.966 26.79 15.591 25.629 15.592 22.92ZM6.055 13.391H10.819C13.496 13.391 14.449 11.689 14.449 9.911C14.449 7.576 13.057 6.181 10.735 6.181H8.025C6.671 6.268 6.055 6.966 6.055 8.428V13.391ZM21.815 23.351C21.815 28.956 17.536 32.87 10.912 32.87H0V4.87C0.02 3.085 1.872 1.285 3.64 1.218H10.777C16.737 1.218 20.587 4.222 20.587 9.202C20.587 12.462 18.959 14.346 17.988 15.183L17.152 15.9L18.109 16.441C20.432 17.751 21.815 20.333 21.815 23.351V23.351ZM148.135 20.675C148.135 15.58 145.385 14.986 143.325 14.986C139.165 14.986 138.845 19.175 138.845 20.459C138.845 23.376 140.105 26.49 143.665 26.49C145.705 26.49 148.135 25.48 148.135 20.675V20.675ZM154.045 9.738L154.025 30.732C154.025 38.739 148.045 41.584 142.505 41.584C139.815 41.584 136.845 40.858 134.555 39.639L134.105 39.4L134.835 37.53L135.345 36.243C135.905 34.855 136.715 34.509 138.095 34.928C139.155 35.312 140.735 35.739 142.475 35.739C146.045 35.739 148.015 34.05 148.015 30.994V30.356L147.505 30.732C146.215 31.72 144.575 32.205 142.505 32.205C136.445 32.205 132.215 27.445 132.215 20.63C132.215 13.811 136.305 9.228 142.385 9.228C145.445 9.228 147.325 10.309 148.375 11.221L148.675 11.482L148.855 11.132C149.325 10.23 150.275 9.738 151.515 9.738H154.045V9.738ZM67.707 21.184C67.707 17.473 65.411 14.877 62.137 14.877C58.877 14.877 56.608 17.473 56.608 21.184C56.608 24.898 58.878 27.496 62.138 27.496C65.464 27.496 67.708 24.958 67.708 21.184H67.707ZM74.088 21.184C74.088 28.054 69.052 33.04 62.138 33.04C55.234 33.04 50.228 28.054 50.228 21.184C50.228 14.318 55.234 9.331 62.138 9.331C69.052 9.331 74.088 14.318 74.088 21.184ZM105.445 32.677V13.281C105.445 10.941 104.335 9.806 102.025 9.806L99.465 9.796L99.485 27.5H99.465L99.485 32.87H105.445V32.677ZM122.505 9.278C119.175 9.278 117.055 10.765 115.865 12.018L115.465 12.423L115.325 11.873C114.975 10.529 113.795 9.788 112.025 9.788H109.165L109.185 32.683H115.225V22.131C115.225 21.099 115.365 20.205 115.635 19.387C116.355 16.914 117.995 15.378 120.525 15.378C122.555 15.378 123.725 16.453 123.725 19.232V29.203C123.725 31.573 125.195 32.683 127.555 32.683H129.785V18.261C129.785 12.475 127.825 9.278 122.505 9.278V9.278ZM91.436 21.777C91.1964 21.3119 90.8928 20.8827 90.534 20.502L90.326 20.281L90.546 20.069C90.862 19.734 91.186 19.338 91.497 18.878L97.584 9.795H90.195L85.622 16.899C85.363 17.28 84.84 17.472 84.058 17.472H82.48V4.045C82.48 1.36 80.642 0 78.84 0H76.414L76.42 32.691H82.48V23.183H83.63C84.375 23.183 84.883 23.269 85.118 23.675L88.729 30.518C89.736 32.375 90.743 32.691 92.635 32.691H97.651L93.915 26.488L91.436 21.777ZM41.648 21.184C41.648 17.473 39.358 14.877 36.079 14.877C32.819 14.877 30.553 17.473 30.553 21.184C30.553 24.898 32.819 27.496 36.079 27.496C39.405 27.496 41.649 24.958 41.649 21.184H41.648ZM48.028 21.184C48.028 28.054 43.002 33.04 36.079 33.04C29.182 33.04 24.177 28.054 24.177 21.184C24.177 14.318 29.182 9.331 36.079 9.331C43.002 9.331 48.027 14.318 48.027 21.184H48.028ZM98.764 3.81C98.764 1.704 100.464 0 102.544 0C104.634 0 106.334 1.704 106.334 3.81C106.334 5.911 104.634 7.617 102.544 7.617C100.464 7.617 98.764 5.911 98.764 3.81Z"
								fill="#003580" />
              <path
								d="M187.08 25.067C187.06 25.088 184.38 27.915 180.87 27.915C177.66 27.915 174.42 25.941 174.42 21.538C174.42 17.73 176.93 15.071 180.53 15.071C181.7 15.071 183.02 15.492 183.23 16.198L183.26 16.318C183.74 17.919 185.19 18.001 185.47 18.001L188.88 18.005V15.021C188.88 11.085 183.89 9.65698 180.53 9.65698C173.35 9.65698 168.14 14.674 168.14 21.584C168.14 28.489 173.29 33.502 180.4 33.502C186.56 33.502 189.91 29.434 189.94 29.391L190.12 29.172L187.43 24.685L187.08 25.067ZM244.43 9.65698C241.73 9.65698 239.25 10.927 237.58 13.05L237.11 13.651L236.74 12.979C235.53 10.776 233.46 9.65698 230.57 9.65698C227.55 9.65698 225.53 11.35 224.58 12.358L223.97 13.024L223.73 12.144C223.39 10.877 222.26 10.178 220.56 10.178H218.06L218.04 32.984H224.01V22.917C224.01 22.036 224.12 21.163 224.34 20.248C224.93 17.816 226.56 15.202 229.3 15.462C230.99 15.626 231.81 16.936 231.81 19.466V32.984H237.44V22.917C237.44 21.813 237.55 20.99 237.79 20.162C238.3 17.842 240.37 15.459 243.02 15.459C244.93 15.459 245.93 16.545 245.93 19.466V29.649C245.93 31.954 247.28 32.984 249.57 32.984H251.99L252 18.424C252 12.607 249.45 9.65698 244.43 9.65698V9.65698ZM203.66 10.043C196.76 10.043 191.35 15.031 191.35 21.898C191.35 28.765 196.76 33.754 203.66 33.754C210.58 33.754 215.61 28.765 215.61 21.898C215.61 15.031 210.58 10.043 203.66 10.043V10.043ZM158.31 29.446C158.31 27.34 160 25.636 162.09 25.636C164.18 25.636 165.88 27.34 165.88 29.446C165.88 31.548 164.18 33.254 162.09 33.254C160 33.254 158.31 31.548 158.31 29.446ZM203.66 28.209C200.4 28.209 198.13 25.611 198.13 21.898C198.13 18.186 200.4 15.59 203.66 15.59C206.93 15.59 209.23 18.186 209.23 21.898C209.23 25.671 206.99 28.209 203.66 28.209Z"
								fill="#0896FF" />
            </svg>
						<svg class="bk-icon -iconset-close" height="128"
							style="display: none;" width="128" viewBox="0 0 128 128"
							role="presentation" aria-hidden="true" focusable="false">
              <path
								d="M69.7 64l33.1-33.2a4 4 0 0 0-5.6-5.6L64 58.3 30.8 25.2a4 4 0 1 0-5.6 5.6L58.3 64 25.2 97.2a4 4 0 1 0 5.6 5.6L64 69.7l33.2 33.1a4 4 0 0 0 5.6-5.6z" />
            </svg>
						
						<!-- 提交预订表单 -->
						<script type="text/javascript">
							orderConfirm = function(){
								var business_box = document.getElementById("bp_travel_purpose_business");
								var leasure_box = document.getElementById("bp_travel_purpose_leasure");
								var business_or_travel = document.getElementById("business_or_travel");
								if(business_box.checked){
									business_or_travel.value = "t";
								}else if(leasure_box.checked){
									business_or_travel.value = "f";
								}
								
								var lastname_input = document.getElementById("lastname");
								var firstname_input = document.getElementById("firstname");
								if(lastname_input.value == "" || firstname_input.value == ""){
									window.alert("请输入完整姓名！");
									return;
								}
								var booker_name = firstname_input.value + " " + lastname_input.value;
								document.getElementById("booker_name").value = booker_name;
								
								var notstayer_false_box = document.getElementById("notstayer_false");
								var notstayer_true_box = document.getElementById("notstayer_true");
								var is_traveller = document.getElementById("is_traveller");
								if(notstayer_false_box.checked){
									is_traveller.value = "t";
								}else if(notstayer_true_box.checked){
									is_traveller.value = "f";
								}
								
								var south_box = document.getElementById("same_area_rooms");
								var south = document.getElementById("south");
								if(south_box.checked){
									south.value = "t";
								}else{
									south.value = "f";
								}
								
								var require_receipt_box = document.getElementById("send_sms_confirmation_to_this_number");
								var require_receipt = document.getElementById("require_receipt");
								if(require_receipt_box.checked){
									require_receipt.value = "t";
								}else{
									require_receipt.value = "f";
								}
								
								var emailStr = document.getElementsByName("email")[0].value;
								if(emailStr == ""){
									window.alert("请输入电子邮箱地址！");
									return;
								}
								if(!emailStr.match(/^\w+@\w+\.\w+$/i)){
									window.alert("电子邮箱格式错误！");
									return;
								}
								
								if(document.getElementsByName("nation")[0].value == "") {
									window.alert("请输入国家！");
									return;
								}
								if(document.getElementsByName("city")[0].value == "") {
									window.alert("请输入城市！");
									return;
								}
								if(document.getElementsByName("address")[0].value == "") {
									window.alert("请输入地址！");
									return;
								}
								var phoneStr = document.getElementsByName("phone")[0].value;
								if(phoneStr == "") {
									window.alert("请输入手机号码！");
									return;
								}
								
								document.getElementById("bookForm").submit();
							}
						</script>
						<form id="bookForm" class="book-form" name="bookForm"
							action="/SoftwareEngineering_war_exploded/finalOrder" method="post" data-is-exclusive="0" data-is-hybrid="1"
							data-has-schedule="0" data-stage="2"
							data-component="bp/main-form " novalidate>
							<input type="hidden" name="business_or_travel" id="business_or_travel" value="f"/>
							<input type="hidden" name="booker_name" id="booker_name" value=""/>
							<input type="hidden" name="is_traveller" id="is_traveller" value="t"/>
 							<input type="hidden" name="south" id="south" value="t"/>
 							<input type="hidden" name="require_receipt" id="require_receipt" value="t"/>
							
							<script id="script-booking-rooms-roomsFormName"
								type="text/javascript" nonce="ybUYWKfiYBp3lUr">
                // <![CDATA[
                booking.book = {
                  formName: 'bookForm'
                };
// ]]>
              </script>
							<section
								class="bui-card bp-card--user-details bui-spacer--large  bui-u-bleed@small">
								<div class="bui-card__content">
									<header class="bui-inline-container">
										<div class="bui-inline-container__main">
											<div class="bui-group bui-group--small">
												<div class="bui-group__item">
													<h2 class="bui-text--variant-headline_3">输入个人信息</h2>
												</div>
												<div class="bui-group__item">
													<div class="required_fields_description bui-spacer--large">
														快完成啦！将带<b>*</b>的必填项填写完整即可
													</div>
												</div>
											</div>
										</div>
									</header>
									<div class="bui-card__text">
										<div class="bp-personal-details-form"
											data-component="bp/personal-details-form">
											<div class="bui-grid bui-grid--size-small">
												<div class="bui-grid__column">
													<fieldset id="bp-control-group--travel_purpose"
														class="bui-form__group bp-control-group bp-control-group--travel_purpose js-control-group--travel_purpose     "
														aria-role="radiogroup"
														aria-labelledby="bp-control-group__label--travel_purpose">
														<legend class="bp-control-group__label"
															id="bp-control-group__label--travel_purpose">
															&#x51FA;&#x884C;&#x7C7B;&#x522B;&#xFF1A; </legend>
														<div
															class="bui-group bui-group--large bui-group--inline  ">
															<div class="bui-group__item">
																<div
																	class="bui-form__group bp-form-group bp-form-group__bp_travel_purpose_business   ">
																	<label class="bui-radio  "> 
																	
																	<input
																		name="bp_travel_purpose"
																		id="bp_travel_purpose_business" type="radio"
																		class="bui-radio__input" value="business"
																		data-google-track="Click/bb_bp_select/book : selected business">
																		<span class="bui-radio__label">
																			&#x51FA;&#x5DEE; </span>
																	</label>
																	<div
																		id="form-field__helper--bp_travel_purpose_business"
																		class="bui-form__error js-form-field__helper--bp_travel_purpose_business"></div>
																</div>
															</div>
															<div class="bui-group__item">
																<div
																	class="bui-form__group bp-form-group bp-form-group__bp_travel_purpose_leasure   ">
																	<label class="bui-radio  "> 
																	
																	<input
																		name="bp_travel_purpose"
																		id="bp_travel_purpose_leasure" type="radio"
																		class="bui-radio__input" value="leisure"
																		data-google-track="Click/bb_bp_select/book : selected leisure"
																		checked> <span class="bui-radio__label">
																			&#x81EA;&#x7531;&#x884C; </span>
																	</label>
																	<div id="form-field__helper--bp_travel_purpose_leasure"
																		class="bui-form__error js-form-field__helper--bp_travel_purpose_leasure"></div>
																</div>
															</div>
														</div>
														<div id="form-field__helper--travel_purpose"
															class="bui-form__error js-form-field__helper--travel_purpose"></div>
													</fieldset>
													<input type="hidden" name="bb_sb_tp" value="2">
												</div>
												<div
													class="bui-grid__column bui-grid__column-6@medium bui-grid__column-4@large">
													<div data-component="bp/personal-details-form/lastname"
														class="bp_form__field bp_form__field--lastname">
														<p class="bp_form__field__msg" data-bp-form-field-msg
															id="bp_form_lastname_msg"></p>
														<label for="lastname" class="bp_form__field__label">
															姓（拼音或英语） <abbr class="mandatory-asterisk" title="必填"
															aria-hidden="true"> *</abbr>
														</label> 
														<input type="text" name="lastname" id="lastname" required
															class="bp_input_text bp_form__field__input"
															placeholder="例：Zhang"
															aria-describedby="bp_form_lastname_msg" value=""
															size="20" />
													</div>
												</div>
												<div
													class="bui-grid__column bui-grid__column-6@medium bui-grid__column-4@large">
													<div data-component="bp/personal-details-form/firstname"
														class="bp_form__field bp_form__field--firstname">
														<p class="bp_form__field__msg" data-bp-form-field-msg
															id="bp_form_firstname_msg"></p>
														<label for="firstname" class="bp_form__field__label">
															名（拼音或英语） <abbr class="mandatory-asterisk" title="必填"
															aria-hidden="true"> *</abbr>
														</label> 
														<input type="text" name="firstname" id="firstname"
															class="bp_input_text bp_form__field__input"
															placeholder="例：Xiaoming"
															aria-describedby="bp_form_firstname_msg" value=""
															size="20" />
													</div>
												</div>
												<div
													class="bui-grid__column bui-grid__column-8@medium bui-grid__column-6@large">
													<div data-component="booking-process/user-details/email"
														class="
bp_form__field bp_form__field--email
u-clearfix
">
														<p class="bp_form__field__msg" data-bp-form-field-msg
															id="bp_form_email_msg"></p>
														<label for="email" class="bp_form__field__label">
															电子邮箱地址 <abbr class="mandatory-asterisk" title="必填"
															aria-hidden="true"> *</abbr>
														</label>
														<div class="bp-form-group__input-container">
															<input autocapitalize="off" autocorrect="off" type="text"
																required id="email"
																class="bp_input_text bp_form__field__input"
																name="email" value="" size="35" maxlength="60"
																placeholder="温馨提示：填写后检查一下，避免拼写错误"
																aria-describedby="bp_form_email_msg email-tip">
															<div class="js-placeholder--email-suggestion"></div>
														</div>
														<input type="hidden" name="email_confirm" value="" />
														<div
															class="bui-text--variant-body_2 bui-text--color-neutral_alt bui-u-padding-top--4">
															确认邮件将发送至该邮箱</div>
													</div>
												</div>
												<div
													class="bui-u-hidden@small bui-grid__column-4@medium bui-grid__column-6@large">
												</div>
												<div class="bui-grid__column">
													<fieldset id="bp-control-group--notstayer"
														class="bui-form__group bp-control-group bp-control-group--notstayer js-control-group--notstayer    e2e-guest-type-selection "
														aria-role="radiogroup"
														aria-labelledby="bp-control-group__label--notstayer"
														data-clear-guestname="1">
														<legend class="bp-control-group__label"
															id="bp-control-group__label--notstayer">
															&#x60A8;&#x662F;&#x4E3A;&#x8C01;&#x9884;&#x8BA2;&#xFF1F;
														</legend>
														<div class="bui-group  ">
															<div class="bui-group__item">
																<div
																	class="bui-form__group bp-form-group bp-form-group__notstayer_false   ">
																	<label class="bui-radio  "> 
																	<input
																		name="notstayer" id="notstayer_false" type="radio"
																		class="bui-radio__input" value="0"> <span
																		class="bui-radio__label">
																			&#x672C;&#x4EBA;&#x5373;&#x4F4F;&#x5BA2;&#xFF08;&#x4E4B;&#x4E00;&#xFF09;
																	</span>
																	</label>
																	<div id="form-field__helper--notstayer_false"
																		class="bui-form__error js-form-field__helper--notstayer_false"></div>
																</div>
															</div>
															<div class="bui-group__item">
																<div
																	class="bui-form__group bp-form-group bp-form-group__notstayer_true   ">
																	<label class="bui-radio  "> 
																	<input
																		name="notstayer" id="notstayer_true" type="radio"
																		class="bui-radio__input" value="1"> <span
																		class="bui-radio__label">
																			&#x672C;&#x4EBA;&#x4E0D;&#x4F1A;&#x5165;&#x4F4F; </span>
																	</label>
																	<div id="form-field__helper--notstayer_true"
																		class="bui-form__error js-form-field__helper--notstayer_true"></div>
																</div>
															</div>
														</div>
														<div id="form-field__helper--notstayer"
															class="bui-form__error js-form-field__helper--notstayer"></div>
													</fieldset>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							
							<section
								class="bui-card bp-card--special-requests  bui-u-bleed@small bui-spacer--large e2e-card--special-requests"
								data-component="booking-process/special-requests">
								<div class="bui-card__content">
									<header class="bui-card__header">
										<h2 class="bui-card__title bui-text--variant-headline_3">您还有什么特别要求？</h2>
									</header>
									<div class="bui-card__text">
										<div class="bui-group bui-group--large">
											<div class="bui-group__item">
												<p class="bui-text--variant-body_2">
													特殊要求无法保证满足，但住宿将尽力为你提供所需。你始终可以在预订完成后提出特殊要求。</p>
											</div>
											<div class="bui-group__item">
												<div
													class="bui-form__group bp-form-group bp-form-group__remarks    ">
													<label class="bui-form__label" for="remarks">
														&#x8BF7;&#x4F7F;&#x7528;&#x82F1;&#x8BED;&#x6216;&#x4E2D;&#x6587;&#x586B;&#x5199;&#x60A8;&#x7684;&#x8BF7;&#x6C42;&#x3002;

														<span
														class="bp-form-field__indicator bp-form-field__indicator--optional bui-text--variant-small_1 bui-text--color-neutral_alt">（可选）</span>
													</label>
													<div class="bp-form-group__input-container">
														<textarea name="special_requirement" id="remarks"
															class="bui-form__control bui-input-textarea bp-special-requests__requests js-special-requests__requests"
															rows="3"></textarea>
													</div>
													<div id="form-field__helper--remarks"
														class="bui-form__error js-form-field__helper--remarks">
													</div>
												</div>
											</div>
											<div class="bui-group__item">
												<div class="bui-group bui-group--large">
													<div class="bui-group__item">
														<div class="bui-group bui-group--large">
															<fieldset class="bui-form__group bp-control-group     "
																aria-role="group">
																<div class="bui-group  ">
																	<div class="bui-group__item">
																		<div
																			class="bui-form__group bp-form-group bp-form-group__same_area_rooms   ">
																			<label class="bui-checkbox  "> 
																			<input
																				name="same_area_rooms" id="same_area_rooms"
																				type="checkbox" class="bui-checkbox__input"
																				value="1"> 
																			<span class="bui-checkbox__label">
																				房间是否需要安排朝南
																			</span>
																			</label>
																			<div id="form-field__helper--same_area_rooms"
																				class="bui-form__error js-form-field__helper--same_area_rooms"></div>
																		</div>
																	</div>
																</div>
																<div id="form-field__helper--"
																	class="bui-form__error js-form-field__helper--"></div>
															</fieldset>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<section
								class="bui-card bp-card--arrival-time  bui-u-bleed@small bui-spacer--large">
								<div class="bui-card__content">
									<header class="bui-card__header">
										<h2 class="bui-card__title bui-text--variant-headline_3">到店时间</h2>
									</header>
									<div class="bui-card__text">
										<div class="bui-group bui-group--large">
											<div class="bui-group__item">
												<ul class="bui-list bui-list--text bui-list--icon">
													<li class="bui-list__item"><span
														class="bui-list__icon" role="presentation"> <svg
																class="bk-icon -streamline-checkmark_selected"
																fill="#008009" height="24" width="24"
																viewBox="0 0 128 128" role="presentation"
																aria-hidden="true" focusable="false">
                                						<path
																	d="M56.62 93.54a4 4 0 0 1-2.83-1.18L28.4 67a4 4 0 1 1 5.65-5.65l22.13 22.1 33-44a4 4 0 1 1 6.4 4.8L59.82 91.94a4.06 4.06 0 0 1-2.92 1.59zM128 64c0-35.346-28.654-64-64-64C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.33-.039 63.961-28.67 64-64zm-8 0c0 30.928-25.072 56-56 56S8 94.928 8 64 33.072 8 64 8c30.914.033 55.967 25.086 56 56z" />
                              							</svg>
													</span>
														<div class="bui-list__body">
															<div class="bui-list__description">客房15:00可办理入住</div>
														</div></li>
													<li class="bui-list__item"><span
														class="bui-list__icon" role="presentation"> <svg
																class="bk-icon -streamline-front_desk" fill="#008009"
																height="24" width="24" viewBox="0 0 24 24"
																role="presentation" aria-hidden="true" focusable="false">
                                <path
																	d="M14.244 14.156a6.75 6.75 0 0 0-6.75-5.906A6.747 6.747 0 0 0 .73 14.397a.75.75 0 0 0 1.494.134 5.25 5.25 0 0 1 5.27-4.781 5.253 5.253 0 0 1 5.262 4.594.75.75 0 1 0 1.488-.188zM10.125 4.125a2.625 2.625 0 1 1-5.25 0V1.5h5.25v2.625zm1.5 0V1.5a1.5 1.5 0 0 0-1.5-1.5h-5.25a1.5 1.5 0 0 0-1.5 1.5v2.625a4.125 4.125 0 0 0 8.25 0zM23.25 22.5H.75l.75.75v-7.5a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v7.5l.75-.75zm0 1.5a.75.75 0 0 0 .75-.75v-7.5a2.25 2.25 0 0 0-2.25-2.25H2.25A2.25 2.25 0 0 0 0 15.75v7.5c0 .414.336.75.75.75h22.5zM4.376 5.017a9.42 9.42 0 0 1 3.12-.517 9.428 9.428 0 0 1 3.133.519.75.75 0 0 0 .49-1.418A10.917 10.917 0 0 0 7.498 3a10.91 10.91 0 0 0-3.611.6.75.75 0 0 0 .49 1.417zM15.75 14.27a3.001 3.001 0 0 1 6 .16.75.75 0 1 0 1.5.04 4.501 4.501 0 1 0-9-.24.75.75 0 1 0 1.5.04zm3.75-3.77V8.25a.75.75 0 0 0-1.5 0v2.25a.75.75 0 0 0 1.5 0zM17.25 9h3a.75.75 0 0 0 0-1.5h-3a.75.75 0 0 0 0 1.5z" />
                              </svg>
													</span>
														<div class="bui-list__body">
															<div class="bui-list__description">24小时前台 - 随时提供帮助！
															</div>
														</div></li>
												</ul>
											</div>
											<div class="bui-group__item">
												<div class="bui-grid">
													<div
														class="bui-grid__column bui-grid__column-8@medium bui-grid__column-6@large">
														<div
															class="bui-form__group bp-form-group bp-form-group__checkin_eta_hour   ">
															<label class="bui-form__label" for="checkin_eta_hour">&#x6DFB;&#x52A0;&#x9884;&#x8BA1;&#x5230;&#x5E97;&#x65F6;&#x95F4;
																<span
																class="bp-form-field__indicator bp-form-field__indicator--optional bui-text--variant-small_1 bui-text--color-neutral_alt">（可选）</span>
															</label>
															<div class="bui-input-select">
																<select name="arrive_time"
																	class="bui-form__control" id="checkin_eta_hour">
																	<option value="" disabled selected>请选择</option>
																	<option value="-1">不确定</option>
																	<option value="0:00 – 1:00">0:00 – 1:00</option>
																	<option value="1:00 – 2:00">1:00 – 2:00</option>
																	<option value="2:00 – 3:00">2:00 – 3:00</option>
																	<option value="3:00 – 4:00">3:00 – 4:00</option>
																	<option value="4:00 – 5:00">4:00 – 5:00</option>
																	<option value="5:00 – 6:00">5:00 – 6:00</option>
																	<option value="6:00 – 7:00">6:00 – 7:00</option>
																	<option value="7:00 – 8:00">7:00 – 8:00</option>
																	<option value="8:00 – 9:00">8:00 – 9:00</option>
																	<option value="9:00 – 10:00">9:00 – 10:00</option>
																	<option value="10:00 – 11:00">10:00 – 11:00</option>
																	<option value="11:00 – 12:00">11:00 – 12:00</option>
																	<option value="12:00 – 13:00">12:00 – 13:00</option>
																	<option value="13:00 – 14:00">13:00 – 14:00</option>
																	<option value="14:00 – 15:00">14:00 – 15:00</option>
																	<option value="15:00 – 16:00">15:00 – 16:00</option>
																	<option value="16:00 – 17:00">16:00 – 17:00</option>
																	<option value="17:00 – 18:00">17:00 – 18:00</option>
																	<option value="18:00 – 19:00">18:00 – 19:00</option>
																	<option value="19:00 – 20:00">19:00 – 20:00</option>
																	<option value="20:00 – 21:00">20:00 – 21:00</option>
																	<option value="21:00 – 22:00">21:00 – 22:00</option>
																	<option value="22:00 – 23:00">22:00 – 23:00</option>
																	<option value="23:00 – 0:00">23:00 – 0:00</option>
																	<option value="0:00 – 1:00 （次日）">0:00 – 1:00 （次日）</option>
																	<option value="1:00 – 2:00 （次日）">1:00 – 2:00 （次日）</option>
																</select>
																<svg
																	class="bk-icon -iconset-dropdown bui-input-select__icon"
																	height="16" role="presentation" width="16"
																	viewBox="0 0 128 128" role="presentation"
																	aria-hidden="true" focusable="false">
                                  <path
																		d="M92 52a4 4 0 0 1-2.8-1.2L64 25.7 38.8 50.8a4 4 0 0 1-5.6-5.6L64 14.3l30.8 30.9A4 4 0 0 1 92 52zm0 24a4 4 0 0 0-2.8 1.2L64 102.3 38.8 77.2a4 4 0 0 0-5.6 5.6L64 113.7l30.8-30.9A4 4 0 0 0 92 76z" />
                                </svg>
															</div>
															<div id="form-field__helper--checkin_eta_hour"
																class="bui-form__helper js-form-field__helper--checkin_eta_hour">
																该时间为北京时间
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>

							<div class="bui-card bp-card--adress-details-container bui-spacer--large js-booker-details--billing-address  bui-u-bleed@small">
								<div class="bui-card__content">
									<header class="bui-card__header">
										<h2 class="bui-card__title bui-text--variant-headline_3">
											输入联系信息</h2>
									</header>
									<div class="bui-card__text">
										<div class="bui-grid">
											<div class="bui-grid__column">
												<div class="required_fields_description bui-spacer--large">
													快完成啦！将带<b>*</b>的必填项填写完整即可
												</div>
											</div>
										</div>
									</div>
									<div class="bui-card__text">
										<div class="bui-grid bp-grid--booker-details-container">
											<div class="bui-grid__column bui-grid__column-8@large">
												<div class="bui-grid js-bp-billing-details__container"
													data-component="bp/billing-details-form/address-details">
													<div class="bui-grid__column">
														<div data-component="bp/billing-details-form/country"
															class="bp_form__field bp_form__field--country">
															<p class="bp_form__field__msg" data-bp-form-field-msg
																id="bp_form_address_country_msg"></p>
															<label for="cc1" class="bp_form__field__label">
																国家/地区 <abbr class="mandatory-asterisk" title="必填"
																aria-hidden="true"> *</abbr>
															</label>
															<div class="bp-field-container">
																<select name="nation" id="cc1"
																	class="fixed_width bp_input_select bp_form__field__input bp-field-container--w-80"
																	required aria-describedby="bp_form_address_country_msg"
																	autocomplete="country">
																	<option value="" disabled>-- 选择国家/地区 --</option>
																	<option value="bt" data-prefix="">
																		&#x4E0D;&#x4E39;</option>
																	<option value="tl" data-prefix="">
																		&#x4E1C;&#x5E1D;&#x6C76;</option>
																	<option value="cn" data-prefix="" selected="selected">
																		&#x4E2D;&#x56FD;</option>
																	<option value="tw" data-prefix="">
																		&#x4E2D;&#x56FD;&#x53F0;&#x6E7E;</option>
																	<option value="mo" data-prefix="">
																		&#x4E2D;&#x56FD;&#x6FB3;&#x95E8;</option>
																	<option value="hk" data-prefix="">
																		&#x4E2D;&#x56FD;&#x9999;&#x6E2F;</option>
																	<option value="cf" data-prefix="">
																		&#x4E2D;&#x975E;&#x5171;&#x548C;&#x56FD;</option>
																	<option value="dk" data-prefix="">
																		&#x4E39;&#x9EA6;</option>
																	<option value="ua" data-prefix="">
																		&#x4E4C;&#x514B;&#x5170;</option>
																	<option value="uz" data-prefix="">
																		&#x4E4C;&#x5179;&#x522B;&#x514B;&#x65AF;&#x5766;</option>
																	<option value="ug" data-prefix="">
																		&#x4E4C;&#x5E72;&#x8FBE;</option>
																	<option value="uy" data-prefix="">
																		&#x4E4C;&#x62C9;&#x572D;</option>
																	<option value="td" data-prefix="">
																		&#x4E4D;&#x5F97;</option>
																	<option value="ye" data-prefix="">
																		&#x4E5F;&#x95E8;</option>
																	<option value="am" data-prefix="">
																		&#x4E9A;&#x7F8E;&#x5C3C;&#x4E9A;</option>
																	<option value="il" data-prefix="">
																		&#x4EE5;&#x8272;&#x5217;</option>
																	<option value="iq" data-prefix="">
																		&#x4F0A;&#x62C9;&#x514B;</option>
																	<option value="ir" data-prefix="">
																		&#x4F0A;&#x6717;</option>
																	<option value="bz" data-prefix="">
																		&#x4F2F;&#x5229;&#x5179;</option>
																	<option value="cv" data-prefix="">
																		&#x4F5B;&#x5F97;&#x89D2;</option>
																	<option value="ru" data-prefix="">
																		&#x4FC4;&#x7F57;&#x65AF;</option>
																	<option value="bg" data-prefix="">
																		&#x4FDD;&#x52A0;&#x5229;&#x4E9A;</option>
																	<option value="hr" data-prefix="">
																		&#x514B;&#x7F57;&#x5730;&#x4E9A;</option>
																	<option value="xc" data-prefix="">
																		&#x514B;&#x91CC;&#x7C73;&#x4E9A;</option>
																	<option value="gu" data-prefix="">
																		&#x5173;&#x5C9B;</option>
																	<option value="gm" data-prefix="">
																		&#x5188;&#x6BD4;&#x4E9A;</option>
																	<option value="is" data-prefix="">
																		&#x51B0;&#x5C9B;</option>
																	<option value="gn" data-prefix="">
																		&#x51E0;&#x5185;&#x4E9A;</option>
																	<option value="gw" data-prefix="">
																		&#x51E0;&#x5185;&#x4E9A;&#x6BD4;&#x7ECD;&#x5171;&#x548C;&#x56FD;
																	</option>
																	<option value="li" data-prefix="">
																		&#x5217;&#x652F;&#x6566;&#x58EB;&#x767B;</option>
																	<option value="cg" data-prefix="">
																		&#x521A;&#x679C;</option>
																	<option value="cd" data-prefix="">
																		&#x521A;&#x679C;&#x6C11;&#x4E3B;&#x5171;&#x548C;&#x56FD;
																	</option>
																	<option value="ly" data-prefix="">
																		&#x5229;&#x6BD4;&#x4E9A;</option>
																	<option value="lr" data-prefix="">
																		&#x5229;&#x6BD4;&#x91CC;&#x4E9A;</option>
																	<option value="ca" data-prefix="">
																		&#x52A0;&#x62FF;&#x5927;</option>
																	<option value="gh" data-prefix="">
																		&#x52A0;&#x7EB3;</option>
																	<option value="ga" data-prefix="">
																		&#x52A0;&#x84EC;</option>
																	<option value="hu" data-prefix="">
																		&#x5308;&#x7259;&#x5229;</option>
																	<option value="xy" data-prefix="">
																		&#x5317;&#x585E;&#x6D66;&#x8DEF;&#x65AF;</option>
																	<option value="mk" data-prefix="">
																		&#x5317;&#x9A6C;&#x5176;&#x987F;</option>
																	<option value="mp" data-prefix="">
																		&#x5317;&#x9A6C;&#x91CC;&#x4E9A;&#x7EB3;&#x7FA4;&#x5C9B;
																	</option>
																	<option value="gs" data-prefix="">
																		&#x5357;&#x4F50;&#x6CBB;&#x4E9A;&#x548C;&#x5357;&#x6851;&#x5A01;&#x5947;&#x5C9B;
																	</option>
																	<option value="aq" data-prefix="">
																		&#x5357;&#x6781;&#x6D32;</option>
																	<option value="ss" data-prefix="">
																		&#x5357;&#x82CF;&#x4E39;</option>
																	<option value="za" data-prefix="">
																		&#x5357;&#x975E;</option>
																	<option value="bw" data-prefix="">
																		&#x535A;&#x5179;&#x74E6;&#x7EB3;</option>
																	<option value="bq" data-prefix="">
																		&#x535A;&#x5948;&#x5C14;&#x5C9B;&#x3001;&#x5723;&#x5C24;&#x65AF;&#x8FBE;&#x8482;&#x65AF;&#x548C;&#x8428;&#x5DF4;&#x5C9B;
																	</option>
																	<option value="qa" data-prefix="">
																		&#x5361;&#x5854;&#x5C14;</option>
																	<option value="rw" data-prefix="">
																		&#x5362;&#x65FA;&#x8FBE;</option>
																	<option value="lu" data-prefix="">
																		&#x5362;&#x68EE;&#x5821;</option>
																	<option value="id" data-prefix="">
																		&#x5370;&#x5C3C;</option>
																	<option value="in" data-prefix="">
																		&#x5370;&#x5EA6;</option>
																	<option value="gt" data-prefix="">
																		&#x5371;&#x5730;&#x9A6C;&#x62C9;</option>
																	<option value="ec" data-prefix="">
																		&#x5384;&#x74DC;&#x591A;&#x5C14;</option>
																	<option value="er" data-prefix="">
																		&#x5384;&#x7ACB;&#x7279;&#x91CC;&#x4E9A;</option>
																	<option value="sy" data-prefix="">
																		&#x53D9;&#x5229;&#x4E9A;</option>
																	<option value="cc" data-prefix="">
																		&#x53EF;&#x53EF;&#x5C9B;</option>
																	<option value="kg" data-prefix="">
																		&#x5409;&#x5C14;&#x5409;&#x65AF;&#x65AF;&#x5766;</option>
																	<option value="dj" data-prefix="">
																		&#x5409;&#x5E03;&#x63D0;</option>
																	<option value="kz" data-prefix="">
																		&#x54C8;&#x8428;&#x514B;&#x65AF;&#x5766;</option>
																	<option value="co" data-prefix="">
																		&#x54E5;&#x4F26;&#x6BD4;&#x4E9A;</option>
																	<option value="cr" data-prefix="">
																		&#x54E5;&#x65AF;&#x8FBE;&#x9ECE;&#x52A0;</option>
																	<option value="cm" data-prefix="">
																		&#x5580;&#x9EA6;&#x9686;</option>
																	<option value="tv" data-prefix="">
																		&#x56FE;&#x74E6;&#x5362;</option>
																	<option value="tm" data-prefix="">
																		&#x571F;&#x5E93;&#x66FC;&#x65AF;&#x5766;</option>
																	<option value="tr" data-prefix="">
																		&#x571F;&#x8033;&#x5176;</option>
																	<option value="lc" data-prefix="">
																		&#x5723;&#x5362;&#x897F;&#x4E9A;</option>
																	<option value="kn" data-prefix="">
																		&#x5723;&#x57FA;&#x8328;&#x548C;&#x5C3C;&#x7EF4;&#x65AF;
																	</option>
																	<option value="st" data-prefix="">
																		&#x5723;&#x591A;&#x7F8E;&#x548C;&#x666E;&#x6797;&#x897F;&#x6BD4;
																	</option>
																	<option value="bl" data-prefix="">
																		&#x5723;&#x5DF4;&#x6CF0;&#x52D2;&#x7C73;</option>
																	<option value="vc" data-prefix="">
																		&#x5723;&#x6587;&#x68EE;&#x7279;&#x548C;&#x683C;&#x6797;&#x7EB3;&#x4E01;&#x65AF;
																	</option>
																	<option value="pm" data-prefix="">
																		&#x5723;&#x76AE;&#x57C3;&#x5C14;&#x548C;&#x5BC6;&#x514B;&#x9686;
																	</option>
																	<option value="cx" data-prefix="">
																		&#x5723;&#x8BDE;&#x5C9B;</option>
																	<option value="sh" data-prefix="">
																		&#x5723;&#x8D6B;&#x52D2;&#x62FF;&#x5C9B;</option>
																	<option value="sm" data-prefix="">
																		&#x5723;&#x9A6C;&#x529B;&#x8BFA;</option>
																	<option value="gy" data-prefix="">
																		&#x572D;&#x4E9A;&#x90A3;</option>
																	<option value="tz" data-prefix="">
																		&#x5766;&#x6851;&#x5C3C;&#x4E9A;</option>
																	<option value="eg" data-prefix="">
																		&#x57C3;&#x53CA;</option>
																	<option value="et" data-prefix="">
																		&#x57C3;&#x585E;&#x4FC4;&#x6BD4;&#x4E9A;</option>
																	<option value="ki" data-prefix="">
																		&#x57FA;&#x91CC;&#x5DF4;&#x65AF;</option>
																	<option value="tj" data-prefix="">
																		&#x5854;&#x5409;&#x514B;&#x65AF;&#x5766;</option>
																	<option value="sn" data-prefix="">
																		&#x585E;&#x5185;&#x52A0;&#x5C14;</option>
																	<option value="rs" data-prefix="">
																		&#x585E;&#x5C14;&#x7EF4;&#x4E9A;</option>
																	<option value="cy" data-prefix="">
																		&#x585E;&#x6D66;&#x8DEF;&#x65AF;</option>
																	<option value="sc" data-prefix="">
																		&#x585E;&#x820C;&#x5C14;</option>
																	<option value="mx" data-prefix="">
																		&#x58A8;&#x897F;&#x54E5;</option>
																	<option value="tg" data-prefix="">
																		&#x591A;&#x54E5;</option>
																	<option value="do" data-prefix="">
																		&#x591A;&#x7C73;&#x5C3C;&#x52A0;&#x5171;&#x548C;&#x56FD;
																	</option>
																	<option value="dm" data-prefix="">
																		&#x591A;&#x7C73;&#x5C3C;&#x52A0;&#x5C9B;</option>
																	<option value="at" data-prefix="">
																		&#x5965;&#x5730;&#x5229;</option>
																	<option value="ve" data-prefix="">
																		&#x59D4;&#x5185;&#x745E;&#x62C9;</option>
																	<option value="bd" data-prefix="">
																		&#x5B5F;&#x52A0;&#x62C9;&#x56FD;</option>
																	<option value="ao" data-prefix="">
																		&#x5B89;&#x54E5;&#x62C9;</option>
																	<option value="ai" data-prefix="">
																		&#x5B89;&#x572D;&#x62C9;&#x5C9B;</option>
																	<option value="ag" data-prefix="">
																		&#x5B89;&#x63D0;&#x74DC;&#x548C;&#x5DF4;&#x5E03;&#x8FBE;
																	</option>
																	<option value="ad" data-prefix="">
																		&#x5B89;&#x9053;&#x5C14;</option>
																	<option value="fm" data-prefix="">
																		&#x5BC6;&#x514B;&#x7F57;&#x5C3C;&#x897F;&#x4E9A;</option>
																	<option value="ni" data-prefix="">
																		&#x5C3C;&#x52A0;&#x62C9;&#x74DC;</option>
																	<option value="ng" data-prefix="">
																		&#x5C3C;&#x65E5;&#x5229;&#x4E9A;</option>
																	<option value="ne" data-prefix="">
																		&#x5C3C;&#x65E5;&#x5C14;</option>
																	<option value="np" data-prefix="">
																		&#x5C3C;&#x6CCA;&#x5C14;</option>
																	<option value="ps" data-prefix="">
																		&#x5DF4;&#x52D2;&#x65AF;&#x5766;</option>
																	<option value="bs" data-prefix="">
																		&#x5DF4;&#x54C8;&#x9A6C;</option>
																	<option value="pk" data-prefix="">
																		&#x5DF4;&#x57FA;&#x65AF;&#x5766;</option>
																	<option value="bb" data-prefix="">
																		&#x5DF4;&#x5DF4;&#x591A;&#x65AF;&#x5C9B;</option>
																	<option value="pg" data-prefix="">
																		&#x5DF4;&#x5E03;&#x4E9A;&#x65B0;&#x51E0;&#x5185;&#x4E9A;
																	</option>
																	<option value="py" data-prefix="">
																		&#x5DF4;&#x62C9;&#x572D;</option>
																	<option value="pa" data-prefix="">
																		&#x5DF4;&#x62FF;&#x9A6C;</option>
																	<option value="bh" data-prefix="">
																		&#x5DF4;&#x6797;</option>
																	<option value="br" data-prefix="">
																		&#x5DF4;&#x897F;</option>
																	<option value="bf" data-prefix="">
																		&#x5E03;&#x57FA;&#x7EB3;&#x6CD5;&#x7D22;</option>
																	<option value="bv" data-prefix="">
																		&#x5E03;&#x7EF4;&#x5C9B;</option>
																	<option value="bi" data-prefix="">
																		&#x5E03;&#x9686;&#x8FEA;</option>
																	<option value="gr" data-prefix="">
																		&#x5E0C;&#x814A;</option>
																	<option value="pw" data-prefix="">
																		&#x5E15;&#x52B3;&#x7FA4;&#x5C9B;</option>
																	<option value="ck" data-prefix="">
																		&#x5E93;&#x514B;&#x7FA4;&#x5C9B;</option>
																	<option value="cw" data-prefix="">
																		&#x5E93;&#x62C9;&#x7D22;&#x5C9B;</option>
																	<option value="ky" data-prefix="">
																		&#x5F00;&#x66FC;&#x7FA4;&#x5C9B;</option>
																	<option value="de" data-prefix="">
																		&#x5FB7;&#x56FD;</option>
																	<option value="it" data-prefix="">
																		&#x610F;&#x5927;&#x5229;</option>
																	<option value="sb" data-prefix="">
																		&#x6240;&#x7F57;&#x95E8;&#x7FA4;&#x5C9B;</option>
																	<option value="tk" data-prefix="">
																		&#x6258;&#x514B;&#x52B3;</option>
																	<option value="lv" data-prefix="">
																		&#x62C9;&#x8131;&#x7EF4;&#x4E9A;</option>
																	<option value="no" data-prefix="">
																		&#x632A;&#x5A01;</option>
																	<option value="cz" data-prefix="">
																		&#x6377;&#x514B;</option>
																	<option value="md" data-prefix="">
																		&#x6469;&#x5C14;&#x591A;&#x74E6;</option>
																	<option value="ma" data-prefix="">
																		&#x6469;&#x6D1B;&#x54E5;</option>
																	<option value="mc" data-prefix="">
																		&#x6469;&#x7EB3;&#x54E5;</option>
																	<option value="bn" data-prefix="">
																		&#x6587;&#x83B1;</option>
																	<option value="fj" data-prefix="">
																		&#x6590;&#x6D4E;</option>
																	<option value="sz" data-prefix="">
																		&#x65AF;&#x5A01;&#x58EB;&#x5170;</option>
																	<option value="sk" data-prefix="">
																		&#x65AF;&#x6D1B;&#x4F10;&#x514B;</option>
																	<option value="si" data-prefix="">
																		&#x65AF;&#x6D1B;&#x6587;&#x5C3C;&#x4E9A;</option>
																	<option value="sj" data-prefix="">
																		&#x65AF;&#x74E6;&#x5C14;&#x5DF4;&#x5C9B;&#x548C;&#x626C;&#x9A6C;&#x5EF6;&#x5C9B;
																	</option>
																	<option value="lk" data-prefix="">
																		&#x65AF;&#x91CC;&#x5170;&#x5361;</option>
																	<option value="sg" data-prefix="">
																		&#x65B0;&#x52A0;&#x5761;</option>
																	<option value="nc" data-prefix="">
																		&#x65B0;&#x5580;&#x91CC;&#x591A;&#x5C3C;&#x4E9A;</option>
																	<option value="nz" data-prefix="">
																		&#x65B0;&#x897F;&#x5170;</option>
																	<option value="jp" data-prefix="">
																		&#x65E5;&#x672C;</option>
																	<option value="cl" data-prefix="">
																		&#x667A;&#x5229;</option>
																	<option value="kp" data-prefix="">
																		&#x671D;&#x9C9C;</option>
																	<option value="kh" data-prefix="">
																		&#x67EC;&#x57D4;&#x5BE8;</option>
																	<option value="gg" data-prefix="">
																		&#x6839;&#x897F;&#x5C9B;</option>
																	<option value="gd" data-prefix="">
																		&#x683C;&#x6797;&#x7EB3;&#x8FBE;</option>
																	<option value="gl" data-prefix="">
																		&#x683C;&#x9675;&#x5170;</option>
																	<option value="ge" data-prefix="">
																		&#x683C;&#x9C81;&#x5409;&#x4E9A;</option>
																	<option value="va" data-prefix="">
																		&#x68B5;&#x8482;&#x5188;</option>
																	<option value="be" data-prefix="">
																		&#x6BD4;&#x5229;&#x65F6;</option>
																	<option value="mr" data-prefix="">
																		&#x6BDB;&#x5229;&#x5854;&#x5C3C;&#x4E9A;</option>
																	<option value="mu" data-prefix="">
																		&#x6BDB;&#x91CC;&#x6C42;&#x65AF;</option>
																	<option value="to" data-prefix="">
																		&#x6C64;&#x52A0;</option>
																	<option value="sa" data-prefix="">
																		&#x6C99;&#x7279;&#x963F;&#x62C9;&#x4F2F;</option>
																	<option value="fr" data-prefix="">
																		&#x6CD5;&#x56FD;</option>
																	<option value="tf" data-prefix="">
																		&#x6CD5;&#x5C5E;&#x5357;&#x90E8;&#x9886;&#x571F;</option>
																	<option value="mf" data-prefix="">
																		&#x6CD5;&#x5C5E;&#x5723;&#x9A6C;&#x4E01;</option>
																	<option value="gf" data-prefix="">
																		&#x6CD5;&#x5C5E;&#x572D;&#x4E9A;&#x90A3;</option>
																	<option value="pf" data-prefix="">
																		&#x6CD5;&#x5C5E;&#x73BB;&#x5229;&#x5C3C;&#x897F;&#x4E9A;
																	</option>
																	<option value="fo" data-prefix="">
																		&#x6CD5;&#x7F57;&#x7FA4;&#x5C9B;</option>
																	<option value="pl" data-prefix="">
																		&#x6CE2;&#x5170;</option>
																	<option value="pr" data-prefix="">
																		&#x6CE2;&#x591A;&#x9ECE;&#x5404;</option>
																	<option value="ba" data-prefix="">
																		&#x6CE2;&#x65AF;&#x5C3C;&#x4E9A;&#x548C;&#x9ED1;&#x585E;&#x54E5;&#x7EF4;&#x90A3;
																	</option>
																	<option value="th" data-prefix="">
																		&#x6CF0;&#x56FD;</option>
																	<option value="je" data-prefix="">
																		&#x6CFD;&#x897F;</option>
																	<option value="zw" data-prefix="">
																		&#x6D25;&#x5DF4;&#x5E03;&#x97E6;</option>
																	<option value="hn" data-prefix="">
																		&#x6D2A;&#x90FD;&#x62C9;&#x65AF;</option>
																	<option value="ht" data-prefix="">
																		&#x6D77;&#x5730;</option>
																	<option value="au" data-prefix="">
																		&#x6FB3;&#x5927;&#x5229;&#x4E9A;</option>
																	<option value="ie" data-prefix="">
																		&#x7231;&#x5C14;&#x5170;</option>
																	<option value="ee" data-prefix="">
																		&#x7231;&#x6C99;&#x5C3C;&#x4E9A;</option>
																	<option value="jm" data-prefix="">
																		&#x7259;&#x4E70;&#x52A0;</option>
																	<option value="tc" data-prefix="">
																		&#x7279;&#x514B;&#x65AF;&#x548C;&#x51EF;&#x79D1;&#x65AF;&#x7FA4;&#x5C9B;
																	</option>
																	<option value="tt" data-prefix="">
																		&#x7279;&#x7ACB;&#x5C3C;&#x8FBE;&#x548C;&#x591A;&#x5DF4;&#x54E5;
																	</option>
																	<option value="bo" data-prefix="">
																		&#x73BB;&#x5229;&#x7EF4;&#x4E9A;</option>
																	<option value="nr" data-prefix="">
																		&#x7459;&#x9C81;</option>
																	<option value="se" data-prefix="">
																		&#x745E;&#x5178;</option>
																	<option value="ch" data-prefix="">
																		&#x745E;&#x58EB;</option>
																	<option value="gp" data-prefix="">
																		&#x74DC;&#x5FB7;&#x7F57;&#x666E;</option>
																	<option value="wf" data-prefix="">
																		&#x74E6;&#x5229;&#x65AF;&#x7FA4;&#x5C9B;&#x548C;&#x798F;&#x56FE;&#x7EB3;&#x7FA4;&#x5C9B;
																	</option>
																	<option value="vu" data-prefix="">
																		&#x74E6;&#x52AA;&#x963F;&#x56FE;</option>
																	<option value="re" data-prefix="">
																		&#x7559;&#x5C3C;&#x6C6A;&#x5C9B;</option>
																	<option value="by" data-prefix="">
																		&#x767D;&#x4FC4;&#x7F57;&#x65AF;</option>
																	<option value="bm" data-prefix="">
																		&#x767E;&#x6155;&#x5927;</option>
																	<option value="pn" data-prefix="">
																		&#x76AE;&#x7279;&#x5F00;&#x6069;</option>
																	<option value="gi" data-prefix="">
																		&#x76F4;&#x5E03;&#x7F57;&#x9640;</option>
																	<option value="fk" data-prefix="">
																		&#x798F;&#x514B;&#x5170;&#x7FA4;&#x5C9B;&#xFF08;&#x9A6C;&#x5C9B;&#xFF09;
																	</option>
																	<option value="kw" data-prefix="">
																		&#x79D1;&#x5A01;&#x7279;</option>
																	<option value="km" data-prefix="">
																		&#x79D1;&#x6469;&#x7F57;</option>
																	<option value="ci" data-prefix="">
																		&#x79D1;&#x7279;&#x8FEA;&#x74E6;</option>
																	<option value="xk" data-prefix="">
																		&#x79D1;&#x7D22;&#x6C83;</option>
																	<option value="pe" data-prefix="">
																		&#x79D8;&#x9C81;</option>
																	<option value="tn" data-prefix="">
																		&#x7A81;&#x5C3C;&#x65AF;</option>
																	<option value="lt" data-prefix="">
																		&#x7ACB;&#x9676;&#x5B9B;</option>
																	<option value="so" data-prefix="">
																		&#x7D22;&#x9A6C;&#x91CC;</option>
																	<option value="jo" data-prefix="">
																		&#x7EA6;&#x65E6;</option>
																	<option value="na" data-prefix="">
																		&#x7EB3;&#x7C73;&#x6BD4;&#x4E9A;</option>
																	<option value="nu" data-prefix="">
																		&#x7EBD;&#x57C3;</option>
																	<option value="mm" data-prefix="">
																		&#x7F05;&#x7538;</option>
																	<option value="ro" data-prefix="">
																		&#x7F57;&#x9A6C;&#x5C3C;&#x4E9A;</option>
																	<option value="us" data-prefix="">
																		&#x7F8E;&#x56FD;</option>
																	<option value="um" data-prefix="">
																		&#x7F8E;&#x56FD;&#x672C;&#x571F;&#x5916;&#x5C0F;&#x5C9B;&#x5C7F;
																	</option>
																	<option value="vi" data-prefix="">
																		&#x7F8E;&#x5C5E;&#x7EF4;&#x4EAC;&#x7FA4;&#x5C9B;</option>
																	<option value="as" data-prefix="">
																		&#x7F8E;&#x5C5E;&#x8428;&#x6469;&#x4E9A;&#x7FA4;&#x5C9B;
																	</option>
																	<option value="la" data-prefix="">
																		&#x8001;&#x631D;</option>
																	<option value="ke" data-prefix="">
																		&#x80AF;&#x5C3C;&#x4E9A;</option>
																	<option value="fi" data-prefix="">
																		&#x82AC;&#x5170;</option>
																	<option value="sd" data-prefix="">
																		&#x82CF;&#x4E39;</option>
																	<option value="sr" data-prefix="">
																		&#x82CF;&#x91CC;&#x5357;</option>
																	<option value="gb" data-prefix="">
																		&#x82F1;&#x56FD;</option>
																	<option value="vg" data-prefix="">
																		&#x82F1;&#x5C5E;&#x7EF4;&#x4EAC;&#x7FA4;&#x5C9B;</option>
																	<option value="io" data-prefix="">
																		&#x82F1;&#x8054;&#x90A6;&#x5370;&#x5EA6;&#x6D0B;&#x9886;&#x57DF;
																	</option>
																	<option value="nl" data-prefix="">
																		&#x8377;&#x5170;</option>
																	<option value="sx" data-prefix="">
																		&#x8377;&#x5C5E;&#x5723;&#x9A6C;&#x4E01;</option>
																	<option value="mz" data-prefix="">
																		&#x83AB;&#x6851;&#x6BD4;&#x514B;</option>
																	<option value="ls" data-prefix="">
																		&#x83B1;&#x6240;&#x6258;</option>
																	<option value="ph" data-prefix="">
																		&#x83F2;&#x5F8B;&#x5BBE;</option>
																	<option value="sv" data-prefix="">
																		&#x8428;&#x5C14;&#x74E6;&#x591A;</option>
																	<option value="ws" data-prefix="">
																		&#x8428;&#x6469;&#x4E9A;</option>
																	<option value="pt" data-prefix="">
																		&#x8461;&#x8404;&#x7259;</option>
																	<option value="mn" data-prefix="">
																		&#x8499;&#x53E4;</option>
																	<option value="ms" data-prefix="">
																		&#x8499;&#x7279;&#x585E;&#x62C9;&#x5FB7;</option>
																	<option value="es" data-prefix="">
																		&#x897F;&#x73ED;&#x7259;</option>
																	<option value="nf" data-prefix="">
																		&#x8BFA;&#x798F;&#x514B;&#x7FA4;&#x5C9B;</option>
																	<option value="bj" data-prefix="">
																		&#x8D1D;&#x5B81;</option>
																	<option value="hm" data-prefix="">
																		&#x8D3A;&#x5F97;&#x548C;&#x9EA6;&#x514B;&#x5510;&#x7EB3;&#x7FA4;&#x5C9B;
																	</option>
																	<option value="sl" data-prefix="">
																		&#x8D5B;&#x62C9;&#x91CC;&#x6602;</option>
																	<option value="zm" data-prefix="">
																		&#x8D5E;&#x6BD4;&#x4E9A;</option>
																	<option value="gq" data-prefix="">
																		&#x8D64;&#x9053;&#x51E0;&#x5185;&#x4E9A;</option>
																	<option value="vn" data-prefix="">
																		&#x8D8A;&#x5357;</option>
																	<option value="az" data-prefix="">
																		&#x963F;&#x585E;&#x62DC;&#x7586;</option>
																	<option value="af" data-prefix="">
																		&#x963F;&#x5BCC;&#x6C57;</option>
																	<option value="dz" data-prefix="">
																		&#x963F;&#x5C14;&#x53CA;&#x5229;&#x4E9A;</option>
																	<option value="al" data-prefix="">
																		&#x963F;&#x5C14;&#x5DF4;&#x5C3C;&#x4E9A;</option>
																	<option value="xa" data-prefix="">
																		&#x963F;&#x5E03;&#x54C8;&#x8332;</option>
																	<option value="ae" data-prefix="">
																		&#x963F;&#x62C9;&#x4F2F;&#x8054;&#x5408;&#x914B;&#x957F;&#x56FD;
																	</option>
																	<option value="om" data-prefix="">
																		&#x963F;&#x66FC;</option>
																	<option value="ar" data-prefix="">
																		&#x963F;&#x6839;&#x5EF7;</option>
																	<option value="aw" data-prefix="">
																		&#x963F;&#x9C81;&#x5DF4;&#x5C9B;</option>
																	<option value="kr" data-prefix="">
																		&#x97E9;&#x56FD;</option>
																	<option value="mv" data-prefix="">
																		&#x9A6C;&#x5C14;&#x4EE3;&#x592B;</option>
																	<option value="im" data-prefix="">
																		&#x9A6C;&#x6069;&#x5C9B;</option>
																	<option value="mw" data-prefix="">
																		&#x9A6C;&#x62C9;&#x7EF4;</option>
																	<option value="mq" data-prefix="">
																		&#x9A6C;&#x63D0;&#x5C3C;&#x514B;</option>
																	<option value="my" data-prefix="">
																		&#x9A6C;&#x6765;&#x897F;&#x4E9A;</option>
																	<option value="yt" data-prefix="">
																		&#x9A6C;&#x7EA6;&#x7279;&#x5C9B;</option>
																	<option value="mh" data-prefix="">
																		&#x9A6C;&#x7ECD;&#x5C14;&#x7FA4;&#x5C9B;</option>
																	<option value="mt" data-prefix="">
																		&#x9A6C;&#x8033;&#x4ED6;</option>
																	<option value="mg" data-prefix="">
																		&#x9A6C;&#x8FBE;&#x52A0;&#x65AF;&#x52A0;</option>
																	<option value="ml" data-prefix="">
																		&#x9A6C;&#x91CC;</option>
																	<option value="lb" data-prefix="">
																		&#x9ECE;&#x5DF4;&#x5AE9;</option>
																	<option value="me" data-prefix="">
																		&#x9ED1;&#x5C71;</option>
																</select> <span class="bp_form__field__extra_feedback"></span>
															</div>
														</div>
													</div>
													<div class="bui-grid__column">
														<div data-component="bp/billing-details-form/city"
															class="bp_form__field bp_form__field--city">
															<p class="bp_form__field__msg" data-bp-form-field-msg
																id="bp_form_address_city_msg"></p>
															<label for="city" class="bp_form__field__label">
																城市 <abbr class="mandatory-asterisk" title="必填"
																aria-hidden="true"> *</abbr>
															</label>
															<div class="bp-field-container bp-field-container--w-60">
																<input type="text" name="city" id="city"
																	class="bp_input_text fixed_width bp_form__field__input"
																	value="" size="35" required
																	aria-describedby="bp_form_address_city_msg"
																	autocomplete="address-level1">
															</div>
														</div>
													</div>
													<div class="bui-grid__column">
														<div data-component="bp/billing-details-form/address"
															class="bp_form__field bp_form__field--address bp_form__field--address1">
															<p class="bp_form__field__msg" data-bp-form-field-msg
																id="bp_form_address_street_msg"></p>
															<label for="address1" class="bp_form__field__label">
																地址 <abbr class="mandatory-asterisk" title="必填"
																aria-hidden="true"> *</abbr>
															</label>
															<div class="bp-field-container bp-field-container--w-60">
																<input type="text" name="address" id="address1"
																	class="bp_input_text fixed_width bp_form__field__input"
																	value="" size="35" required
																	aria-describedby="bp_form_address_street_msg"
																	autocomplete="address-line1">
															</div>
														</div>
													</div>
													<div class="bui-grid__column">
														<div data-component="bp/billing-details-form/zip"
															class="bp_form__field bp_form__field--zip">
															<p class="bp_form__field__msg" data-bp-form-field-msg
																id="bp_form_address_zip_msg"></p>
															<label for="zip" class="bp_form__field__label">
																邮政编码 </label>
															<div class="bp-field-container bp-field-container--w-30">
																<input type="text" name="postal_code" id="zip"
																	class="bp_input_text bp_form__field__input" value=""
																	size="12" aria-describedby="bp_form_address_zip_msg"
																	autocomplete="postal-code">
															</div>
														</div>
													</div>
													<div class="bui-grid__column">
														<div data-component="bp/personal-details-form/phone"
															class="bp_form__field bp_form__field--phone">
															<p class="bp_form__field__msg" data-bp-form-field-msg
																id="bp_form_phone_msg"></p>
															<label for="phone" class="bp_form__field__label">
																电话（可填手机号码） <abbr class="mandatory-asterisk" title="必填"
																aria-hidden="true"> *</abbr>
															</label>
															<div class="bp-field-container bp-field-container--w-60">
																<div data-component="input-phone-country"
																	class="c-input-phone-country"
																	data-phone-country-default="cn">
																	<select class="c-input-phone-country__country"
																		tabindex="-1" data-phone-country>
																		<option value="BT" data-calling-code="975">不丹
																			+975</option>
																		<option value="TL" data-calling-code="670">东帝汶
																			+670</option>
																		<option value="CN" data-calling-code="86">中国
																			+86</option>
																		<option value="TW" data-calling-code="886">中国台湾
																			+886</option>
																		<option value="MO" data-calling-code="853">中国澳门
																			+853</option>
																		<option value="HK" data-calling-code="852">中国香港
																			+852</option>
																		<option value="CF" data-calling-code="236">中非共和国
																			+236</option>
																		<option value="DK" data-calling-code="45">丹麦
																			+45</option>
																		<option value="UA" data-calling-code="380">乌克兰
																			+380</option>
																		<option value="UZ" data-calling-code="998">乌兹别克斯坦
																			+998</option>
																		<option value="UG" data-calling-code="256">乌干达
																			+256</option>
																		<option value="UY" data-calling-code="598">乌拉圭
																			+598</option>
																		<option value="TD" data-calling-code="235">乍得
																			+235</option>
																		<option value="YE" data-calling-code="967">也门
																			+967</option>
																		<option value="AM" data-calling-code="374">亚美尼亚
																			+374</option>
																		<option value="IL" data-calling-code="972">以色列
																			+972</option>
																		<option value="IQ" data-calling-code="964">伊拉克
																			+964</option>
																		<option value="IR" data-calling-code="98">伊朗
																			+98</option>
																		<option value="BZ" data-calling-code="501">伯利兹
																			+501</option>
																		<option value="CV" data-calling-code="238">佛得角
																			+238</option>
																		<option value="RU" data-calling-code="7">俄罗斯
																			+7</option>
																		<option value="BG" data-calling-code="359">保加利亚
																			+359</option>
																		<option value="HR" data-calling-code="385">克罗地亚
																			+385</option>
																		<option value="GU" data-calling-code="1671">关岛
																			+1671</option>
																		<option value="GM" data-calling-code="220">冈比亚
																			+220</option>
																		<option value="IS" data-calling-code="354">冰岛
																			+354</option>
																		<option value="GN" data-calling-code="224">几内亚
																			+224</option>
																		<option value="GW" data-calling-code="245">几内亚比绍共和国
																			+245</option>
																		<option value="LI" data-calling-code="423">列支敦士登
																			+423</option>
																		<option value="CG" data-calling-code="242">刚果
																			+242</option>
																		<option value="CD" data-calling-code="243">刚果民主共和国
																			+243</option>
																		<option value="LY" data-calling-code="218">利比亚
																			+218</option>
																		<option value="LR" data-calling-code="231">利比里亚
																			+231</option>
																		<option value="CA" data-calling-code="1">加拿大
																			+1</option>
																		<option value="GH" data-calling-code="233">加纳
																			+233</option>
																		<option value="GA" data-calling-code="241">加蓬
																			+241</option>
																		<option value="HU" data-calling-code="36">匈牙利
																			+36</option>
																		<option value="MK" data-calling-code="389">北马其顿
																			+389</option>
																		<option value="MP" data-calling-code="1670">北马里亚纳群岛
																			+1670</option>
																		<option value="GS" data-calling-code="500">南佐治亚和南桑威奇岛
																			+500</option>
																		<option value="AQ" data-calling-code="672">南极洲
																			+672</option>
																		<option value="SS" data-calling-code="211">南苏丹
																			+211</option>
																		<option value="ZA" data-calling-code="27">南非
																			+27</option>
																		<option value="BW" data-calling-code="267">博兹瓦纳
																			+267</option>
																		<option value="BQ" data-calling-code="599">博奈尔岛、圣尤斯达蒂斯和萨巴岛
																			+599</option>
																		<option value="QA" data-calling-code="974">卡塔尔
																			+974</option>
																		<option value="RW" data-calling-code="250">卢旺达
																			+250</option>
																		<option value="LU" data-calling-code="352">卢森堡
																			+352</option>
																		<option value="ID" data-calling-code="62">印尼
																			+62</option>
																		<option value="IN" data-calling-code="91">印度
																			+91</option>
																		<option value="GT" data-calling-code="502">危地马拉
																			+502</option>
																		<option value="EC" data-calling-code="593">厄瓜多尔
																			+593</option>
																		<option value="ER" data-calling-code="291">厄立特里亚
																			+291</option>
																		<option value="SY" data-calling-code="963">叙利亚
																			+963</option>
																		<option value="CU" data-calling-code="53">古巴
																			+53</option>
																		<option value="CC" data-calling-code="61">可可岛
																			+61</option>
																		<option value="KG" data-calling-code="996">吉尔吉斯斯坦
																			+996</option>
																		<option value="DJ" data-calling-code="253">吉布提
																			+253</option>
																		<option value="KZ" data-calling-code="7">哈萨克斯坦
																			+7</option>
																		<option value="CO" data-calling-code="57">哥伦比亚
																			+57</option>
																		<option value="CR" data-calling-code="506">哥斯达黎加
																			+506</option>
																		<option value="CM" data-calling-code="237">喀麦隆
																			+237</option>
																		<option value="TV" data-calling-code="688">图瓦卢
																			+688</option>
																		<option value="TM" data-calling-code="993">土库曼斯坦
																			+993</option>
																		<option value="TR" data-calling-code="90">土耳其
																			+90</option>
																		<option value="LC" data-calling-code="1758">圣卢西亚
																			+1758</option>
																		<option value="KN" data-calling-code="1869">圣基茨和尼维斯
																			+1869</option>
																		<option value="ST" data-calling-code="239">圣多美和普林西比
																			+239</option>
																		<option value="BL" data-calling-code="590">圣巴泰勒米
																			+590</option>
																		<option value="VC" data-calling-code="1784">圣文森特和格林纳丁斯
																			+1784</option>
																		<option value="PM" data-calling-code="508">圣皮埃尔和密克隆
																			+508</option>
																		<option value="CX" data-calling-code="61">圣诞岛
																			+61</option>
																		<option value="SH" data-calling-code="290">圣赫勒拿岛
																			+290</option>
																		<option value="SM" data-calling-code="378">圣马力诺
																			+378</option>
																		<option value="GY" data-calling-code="592">圭亚那
																			+592</option>
																		<option value="TZ" data-calling-code="255">坦桑尼亚
																			+255</option>
																		<option value="EG" data-calling-code="20">埃及
																			+20</option>
																		<option value="ET" data-calling-code="251">埃塞俄比亚
																			+251</option>
																		<option value="KI" data-calling-code="686">基里巴斯
																			+686</option>
																		<option value="TJ" data-calling-code="992">塔吉克斯坦
																			+992</option>
																		<option value="SN" data-calling-code="221">塞内加尔
																			+221</option>
																		<option value="RS" data-calling-code="381">塞尔维亚
																			+381</option>
																		<option value="CY" data-calling-code="357">塞浦路斯
																			+357</option>
																		<option value="SC" data-calling-code="248">塞舌尔
																			+248</option>
																		<option value="MX" data-calling-code="52">墨西哥
																			+52</option>
																		<option value="TG" data-calling-code="228">多哥
																			+228</option>
																		<option value="DO" data-calling-code="1849">多米尼加共和国
																			+1849</option>
																		<option value="DM" data-calling-code="1767">多米尼加岛
																			+1767</option>
																		<option value="AT" data-calling-code="43">奥地利
																			+43</option>
																		<option value="VE" data-calling-code="58">委内瑞拉
																			+58</option>
																		<option value="BD" data-calling-code="880">孟加拉国
																			+880</option>
																		<option value="AO" data-calling-code="244">安哥拉
																			+244</option>
																		<option value="AI" data-calling-code="1264">安圭拉岛
																			+1264</option>
																		<option value="AG" data-calling-code="1268">安提瓜和巴布达
																			+1268</option>
																		<option value="AD" data-calling-code="376">安道尔
																			+376</option>
																		<option value="FM" data-calling-code="691">密克罗尼西亚
																			+691</option>
																		<option value="NI" data-calling-code="505">尼加拉瓜
																			+505</option>
																		<option value="NG" data-calling-code="234">尼日利亚
																			+234</option>
																		<option value="NE" data-calling-code="227">尼日尔
																			+227</option>
																		<option value="NP" data-calling-code="977">尼泊尔
																			+977</option>
																		<option value="PS" data-calling-code="970">巴勒斯坦
																			+970</option>
																		<option value="BS" data-calling-code="1242">巴哈马
																			+1242</option>
																		<option value="PK" data-calling-code="92">巴基斯坦
																			+92</option>
																		<option value="BB" data-calling-code="1246">巴巴多斯岛
																			+1246</option>
																		<option value="PG" data-calling-code="675">巴布亚新几内亚
																			+675</option>
																		<option value="PY" data-calling-code="595">巴拉圭
																			+595</option>
																		<option value="PA" data-calling-code="507">巴拿马
																			+507</option>
																		<option value="BH" data-calling-code="973">巴林
																			+973</option>
																		<option value="BR" data-calling-code="55">巴西
																			+55</option>
																		<option value="BF" data-calling-code="226">布基纳法索
																			+226</option>
																		<option value="BV" data-calling-code="47">布维岛
																			+47</option>
																		<option value="BI" data-calling-code="257">布隆迪
																			+257</option>
																		<option value="GR" data-calling-code="30">希腊
																			+30</option>
																		<option value="PW" data-calling-code="680">帕劳群岛
																			+680</option>
																		<option value="CK" data-calling-code="682">库克群岛
																			+682</option>
																		<option value="CW" data-calling-code="599">库拉索岛
																			+599</option>
																		<option value="KY" data-calling-code="1345">开曼群岛
																			+1345</option>
																		<option value="DE" data-calling-code="49">德国
																			+49</option>
																		<option value="IT" data-calling-code="39">意大利
																			+39</option>
																		<option value="SB" data-calling-code="677">所罗门群岛
																			+677</option>
																		<option value="TK" data-calling-code="690">托克劳
																			+690</option>
																		<option value="LV" data-calling-code="371">拉脱维亚
																			+371</option>
																		<option value="NO" data-calling-code="47">挪威
																			+47</option>
																		<option value="CZ" data-calling-code="420">捷克
																			+420</option>
																		<option value="MD" data-calling-code="373">摩尔多瓦
																			+373</option>
																		<option value="MA" data-calling-code="212">摩洛哥
																			+212</option>
																		<option value="MC" data-calling-code="377">摩纳哥
																			+377</option>
																		<option value="BN" data-calling-code="673">文莱
																			+673</option>
																		<option value="FJ" data-calling-code="679">斐济
																			+679</option>
																		<option value="SZ" data-calling-code="268">斯威士兰
																			+268</option>
																		<option value="SK" data-calling-code="421">斯洛伐克
																			+421</option>
																		<option value="SI" data-calling-code="386">斯洛文尼亚
																			+386</option>
																		<option value="SJ" data-calling-code="378">斯瓦尔巴岛和扬马延岛
																			+378</option>
																		<option value="LK" data-calling-code="94">斯里兰卡
																			+94</option>
																		<option value="SG" data-calling-code="65">新加坡
																			+65</option>
																		<option value="NC" data-calling-code="687">新喀里多尼亚
																			+687</option>
																		<option value="NZ" data-calling-code="64">新西兰
																			+64</option>
																		<option value="JP" data-calling-code="81">日本
																			+81</option>
																		<option value="CL" data-calling-code="56">智利
																			+56</option>
																		<option value="KP" data-calling-code="850">朝鲜
																			+850</option>
																		<option value="KH" data-calling-code="855">柬埔寨
																			+855</option>
																		<option value="GG" data-calling-code="44">根西岛
																			+44</option>
																		<option value="GD" data-calling-code="1473">格林纳达
																			+1473</option>
																		<option value="GL" data-calling-code="299">格陵兰
																			+299</option>
																		<option value="GE" data-calling-code="995">格鲁吉亚
																			+995</option>
																		<option value="VA" data-calling-code="379">梵蒂冈
																			+379</option>
																		<option value="BE" data-calling-code="32">比利时
																			+32</option>
																		<option value="MR" data-calling-code="222">毛利塔尼亚
																			+222</option>
																		<option value="MU" data-calling-code="230">毛里求斯
																			+230</option>
																		<option value="TO" data-calling-code="676">汤加
																			+676</option>
																		<option value="SA" data-calling-code="966">沙特阿拉伯
																			+966</option>
																		<option value="FR" data-calling-code="33">法国
																			+33</option>
																		<option value="TF" data-calling-code="596">法属南部领土
																			+596</option>
																		<option value="MF" data-calling-code="590">法属圣马丁
																			+590</option>
																		<option value="GF" data-calling-code="594">法属圭亚那
																			+594</option>
																		<option value="PF" data-calling-code="689">法属玻利尼西亚
																			+689</option>
																		<option value="FO" data-calling-code="298">法罗群岛
																			+298</option>
																		<option value="PL" data-calling-code="48">波兰
																			+48</option>
																		<option value="PR" data-calling-code="1939">波多黎各
																			+1939</option>
																		<option value="BA" data-calling-code="387">波斯尼亚和黑塞哥维那
																			+387</option>
																		<option value="TH" data-calling-code="66">泰国
																			+66</option>
																		<option value="JE" data-calling-code="44">泽西
																			+44</option>
																		<option value="ZW" data-calling-code="263">津巴布韦
																			+263</option>
																		<option value="HN" data-calling-code="504">洪都拉斯
																			+504</option>
																		<option value="HT" data-calling-code="509">海地
																			+509</option>
																		<option value="AU" data-calling-code="61">澳大利亚
																			+61</option>
																		<option value="IE" data-calling-code="353">爱尔兰
																			+353</option>
																		<option value="EE" data-calling-code="372">爱沙尼亚
																			+372</option>
																		<option value="JM" data-calling-code="1876">牙买加
																			+1876</option>
																		<option value="TC" data-calling-code="1649">特克斯和凯科斯群岛
																			+1649</option>
																		<option value="TT" data-calling-code="1868">特立尼达和多巴哥
																			+1868</option>
																		<option value="BO" data-calling-code="591">玻利维亚
																			+591</option>
																		<option value="NR" data-calling-code="674">瑙鲁
																			+674</option>
																		<option value="SE" data-calling-code="46">瑞典
																			+46</option>
																		<option value="CH" data-calling-code="41">瑞士
																			+41</option>
																		<option value="GP" data-calling-code="590">瓜德罗普
																			+590</option>
																		<option value="WF" data-calling-code="681">瓦利斯群岛和福图纳群岛
																			+681</option>
																		<option value="VU" data-calling-code="678">瓦努阿图
																			+678</option>
																		<option value="RE" data-calling-code="262">留尼汪岛
																			+262</option>
																		<option value="BY" data-calling-code="375">白俄罗斯
																			+375</option>
																		<option value="BM" data-calling-code="1441">百慕大
																			+1441</option>
																		<option value="PN" data-calling-code="872">皮特开恩
																			+872</option>
																		<option value="GI" data-calling-code="350">直布罗陀
																			+350</option>
																		<option value="FK" data-calling-code="500">福克兰群岛（马岛）
																			+500</option>
																		<option value="KW" data-calling-code="965">科威特
																			+965</option>
																		<option value="KM" data-calling-code="269">科摩罗
																			+269</option>
																		<option value="CI" data-calling-code="225">科特迪瓦
																			+225</option>
																		<option value="XK" data-calling-code="383">科索沃
																			+383</option>
																		<option value="PE" data-calling-code="51">秘鲁
																			+51</option>
																		<option value="TN" data-calling-code="216">突尼斯
																			+216</option>
																		<option value="LT" data-calling-code="370">立陶宛
																			+370</option>
																		<option value="SO" data-calling-code="252">索马里
																			+252</option>
																		<option value="JO" data-calling-code="962">约旦
																			+962</option>
																		<option value="NA" data-calling-code="264">纳米比亚
																			+264</option>
																		<option value="NU" data-calling-code="683">纽埃
																			+683</option>
																		<option value="MM" data-calling-code="95">缅甸
																			+95</option>
																		<option value="RO" data-calling-code="40">罗马尼亚
																			+40</option>
																		<option value="US" data-calling-code="1">美国
																			+1</option>
																		<option value="UM" data-calling-code="1">美国本土外小岛屿
																			+1</option>
																		<option value="VI" data-calling-code="1340">美属维京群岛
																			+1340</option>
																		<option value="AS" data-calling-code="1684">美属萨摩亚群岛
																			+1684</option>
																		<option value="LA" data-calling-code="856">老挝
																			+856</option>
																		<option value="KE" data-calling-code="254">肯尼亚
																			+254</option>
																		<option value="FI" data-calling-code="358">芬兰
																			+358</option>
																		<option value="SD" data-calling-code="249">苏丹
																			+249</option>
																		<option value="SR" data-calling-code="597">苏里南
																			+597</option>
																		<option value="GB" data-calling-code="44">英国
																			+44</option>
																		<option value="VG" data-calling-code="1284">英属维京群岛
																			+1284</option>
																		<option value="IO" data-calling-code="246">英联邦印度洋领域
																			+246</option>
																		<option value="NL" data-calling-code="31">荷兰
																			+31</option>
																		<option value="SX" data-calling-code="1721">荷属圣马丁
																			+1721</option>
																		<option value="MZ" data-calling-code="258">莫桑比克
																			+258</option>
																		<option value="LS" data-calling-code="266">莱所托
																			+266</option>
																		<option value="PH" data-calling-code="63">菲律宾
																			+63</option>
																		<option value="SV" data-calling-code="503">萨尔瓦多
																			+503</option>
																		<option value="WS" data-calling-code="685">萨摩亚
																			+685</option>
																		<option value="PT" data-calling-code="351">葡萄牙
																			+351</option>
																		<option value="MN" data-calling-code="976">蒙古
																			+976</option>
																		<option value="MS" data-calling-code="1664">蒙特塞拉德
																			+1664</option>
																		<option value="ES" data-calling-code="34">西班牙
																			+34</option>
																		<option value="NF" data-calling-code="672">诺福克群岛
																			+672</option>
																		<option value="BJ" data-calling-code="229">贝宁
																			+229</option>
																		<option value="HM" data-calling-code="692">贺得和麦克唐纳群岛
																			+692</option>
																		<option value="SL" data-calling-code="232">赛拉里昂
																			+232</option>
																		<option value="ZM" data-calling-code="260">赞比亚
																			+260</option>
																		<option value="GQ" data-calling-code="240">赤道几内亚
																			+240</option>
																		<option value="VN" data-calling-code="84">越南
																			+84</option>
																		<option value="AZ" data-calling-code="994">阿塞拜疆
																			+994</option>
																		<option value="AF" data-calling-code="93">阿富汗
																			+93</option>
																		<option value="DZ" data-calling-code="213">阿尔及利亚
																			+213</option>
																		<option value="AL" data-calling-code="355">阿尔巴尼亚
																			+355</option>
																		<option value="AE" data-calling-code="971">阿拉伯联合酋长国
																			+971</option>
																		<option value="OM" data-calling-code="968">阿曼
																			+968</option>
																		<option value="AR" data-calling-code="54">阿根廷
																			+54</option>
																		<option value="AW" data-calling-code="297">阿鲁巴岛
																			+297</option>
																		<option value="KR" data-calling-code="82">韩国
																			+82</option>
																		<option value="MV" data-calling-code="960">马尔代夫
																			+960</option>
																		<option value="IM" data-calling-code="44">马恩岛
																			+44</option>
																		<option value="MW" data-calling-code="265">马拉维
																			+265</option>
																		<option value="MQ" data-calling-code="596">马提尼克
																			+596</option>
																		<option value="MY" data-calling-code="60">马来西亚
																			+60</option>
																		<option value="YT" data-calling-code="269">马约特岛
																			+269</option>
																		<option value="MH" data-calling-code="692">马绍尔群岛
																			+692</option>
																		<option value="MT" data-calling-code="356">马耳他
																			+356</option>
																		<option value="MG" data-calling-code="261">马达加斯加
																			+261</option>
																		<option value="ML" data-calling-code="223">马里
																			+223</option>
																		<option value="LB" data-calling-code="961">黎巴嫩
																			+961</option>
																		<option value="ME" data-calling-code="382">黑山
																			+382</option>
																	</select> <span class="c-input-phone-country__flag"><span
																		class="c-input-phone-country__flag__img"
																		data-phone-flag></span></span> 
																		<input id="phone"
																		class="bp_form__field__input bp_input_text c-input-phone-country__input"
																		type="text" name="phone" required value="" size="20"
																		data-phone-input data-component="input-limited"
																		data-input-allowed-type="number backquoteNumeric space"
																		aria-describedby="bp_form_phone_msg">
																</div>
															</div>
															<div
																class="bui-text--variant-body_2 bui-text--color-neutral_alt bui-u-padding-top--4">
																以便住宿与您联系</div>
														</div>
													</div>
													<div class="bui-grid__column bui-group">
														<fieldset class="bui-form__group bp-control-group     "
															aria-role="group">
															<div class="bui-group  ">
																<div class="bui-group__item">
																	<div
																		class="bui-form__group bp-form-group bp-form-group__send_sms_confirmation_to_this_number   ">
																		<label class="bui-checkbox  "> 
																		<input
																			name="send_sms_confirmation_to_this_number"
																			id="send_sms_confirmation_to_this_number"
																			type="checkbox" class="bui-checkbox__input" value="1"
																			checked> <span
																			class="bui-checkbox__label">
																				&#x53D1;&#x9001;&#x786E;&#x8BA4;&#x77ED;&#x4FE1; </span>
																		</label>
																		<div
																			id="form-field__helper--send_sms_confirmation_to_this_number"
																			class="bui-form__error js-form-field__helper--send_sms_confirmation_to_this_number"></div>
																	</div>
																</div>
															</div>
															<div id="form-field__helper--"
																class="bui-form__error js-form-field__helper--"></div>
														</fieldset>
													</div>
												</div>
											</div>
											<!-- 
											<div class="bui-grid__column bui-grid__column-4@large">
												<div class="bui-card-group">
													<div class="bui-card bp-card--personal-details-reassurance">
														<div class="bui-card__content">
															<div class="bui-group bui-group--large">
																<div
																	class="personal-details-reassurance__link-container">
																	<svg class="bk-icon -streamline-account_user"
																		fill="#6B6B6B" height="14" width="14"
																		viewBox="0 0 24 24" role="presentation"
																		aria-hidden="true" focusable="false">
																		<path
																			d="M16.5 9.75a4.5 4.5 0 1 1-9 0 4.5 4.5 0 0 1 9 0zm1.5 0a6 6 0 1 0-12 0 6 6 0 0 0 12 0zm1.445 10.597c-4.086-4.111-10.732-4.132-14.844-.046l-.046.046a.75.75 0 0 0 1.064 1.058l.04-.04a8.996 8.996 0 0 1 12.722.04.75.75 0 0 0 1.064-1.058zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z" /></svg>
																	<a class="bui-link bui-f-font-caption"
																		href="/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&ap_ref=0&bp_from=standard&bp_travel_purpose=leisure&bpid=F3087985-6CE5-4DFB-AA5B-5EF38E5B8FCF&cc1=cn&checkin=2023-06-25&checkout=2023-06-27&dc_issue_number=0&dotd_fb=0&email=InEyHHofFcljhv_2UEHoyWE0o_PIZZRGM1Jo-JbEr-_IGPqIKprwJGgl3Nmcth01YJQBBJh_9HgjWjFw27ER&email_confirm=UzbTa2sj09Qwqyirz9BU9ptIXRcvAS-ammqYgaVsnhFBFPlzEzAlvt3Y1AU4_iK_6WJ5rntimxNz-fBn1VQ5&final_booking_price=3960&firstname=stt5wIIUMKyjj2by-tR4baaYDKkU9v-JkZMHIIVIrjNXVp4Jtzn_eqAa3H47eWCbwQAJFioY&full_cost=0&full_cost_plain=0&hostname=www.booking.com&hotel_id=4272321&house_rules_agreement=1&installment_count=1&interval=2&lastname=ik29YacvF1HlUsXc1btyZLxdFOmVNU3wykGpELVT7l85UJn4M-gxwt5hr4_svyW7dING-vE&nits_session_id=70C6C557-4664-4396-9348-6B0B6F40FEEC&notstayer=1&nr_guests_427232101_209950661_2_1_0=2&nr_rooms_427232101_209950661_2_1_0=1&promo=0&psafe=1&raf_cm_later=0&recommended_room_id=0&recp=0&remb=0a50174b1a14069b2a50b3a0b4a0b5a223b6a1367b&rets=1a224b160c2a304b99c3a10b9204c&reub=0&room1=A%2CA&rt_cheapest_search_price=3960&rt_num_blocks=3&rt_num_blocks_per_room=%7B%22427232103%22%3A1%2C%22427232101%22%3A1%2C%22427232102%22%3A1%7D&rt_num_rooms=3&rt_pageview_id=96ec14a459a90093&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=1c7d5585-d8ca-4223-9234-75333e4f4039&rt_selected_block_position=1&rt_selected_total_price=3960&seen_ft_rvw=0&smoking_preference_427232101_209950661_2_1_0=no&srpvid=20aa146ea74600da&stage=1&total_cost=3960&trips_promo=%5B%5D&ufi=-2635345&upgrade_to=0&">
																		更改 </a>
																</div>
																<ul
																	class="bui-list bui-list--text personal-details-reassurance__details-container">
																	<li class="bui-list__item">
																		<div class="bui-f-font-strong">姓名</div>
																		<div class="bp-u-text-ellipsis bui-f-color-grayscale">
																			qwewq qwrqwr</div>
																	</li>
																	<li class="bui-list__item">
																		<div class="bui-f-font-strong">电子邮箱</div>
																		<div class="bp-u-text-ellipsis bui-f-color-grayscale">
																			sdrqr@gmail.com</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
												<input type="hidden" id="bstage_render_timestamp"
													name="bstage_render_timestamp" value="1683776192">
												<input type="hidden" name="upgrade_to" value="0">
											</div>
											-->
										</div>
									</div>
								</div>
							</div>
							<!--  
							<div id="privacy-consent"
								class="bui-card bp-card--privacy-consent-container bui-spacer--large  bui-u-bleed@small">
								<div class="bui-card__content">
									<header class="bui-card__header">
										<h2 class="bui-card__title bui-text--variant-headline_3">
											必须勾选才能完成预订</h2>
									</header>
									<div class="bui-card__text">
										<div
											class="bui-form__group bp-form-group bp-form-group__privacy_consent_china_pipl  bui-spacer--large ">
											<label class="bui-checkbox  "> <input
												name="privacy_consent_china_pipl"
												id="privacy_consent_china_pipl" type="checkbox"
												class="bui-checkbox__input" value="1">
												<span class="bui-checkbox__label">
													&#x6211;&#x540C;&#x610F;&#x4EE5;&#x4E0B;&#x9648;&#x8FF0;&#xFF1A;
													<span
													class="bp-form-field__indicator bp-form-field__indicator--required bui-text--variant-body_2 bui-text--color-destructive">*</span>
											</span>
											</label>
											<div id="form-field__helper--privacy_consent_china_pipl"
												class="bui-form__error js-form-field__helper--privacy_consent_china_pipl"></div>
										</div>
										<ul class="bui-list bui-list--unordered bp-list--compact">
											<li class="bui-list__item">
												Booking.com在中国境外处理我为此预订提供的个人信息（包括必要 <a target="_blank"
												rel="nofollow"
												href="/content/privacy.zh-cn.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AsOl8aIGwAIB0gIkNTBiNTgwNTUtOTZlYi00ZTY0LWE0ZmQtZDFlYTNlZTVmMzZm2AIE4AIB&amp;sid=f0f82b20b46106bf73b9641ed765ee02&amp;ap_ref=0;bp_from=standard;bp_travel_purpose=leisure;bpid=F3087985-6CE5-4DFB-AA5B-5EF38E5B8FCF;cc1=cn;checkin=2023-06-25;checkout=2023-06-27;dc_issue_number=0;dotd_fb=0;email=sdrqr%40gmail.com;email_confirm=sdrqr%40gmail.com;final_booking_price=3960;firstname=qwrqwr;full_cost=0;full_cost_plain=0;hostname=www.booking.com;hotel_id=4272321;house_rules_agreement=1;installment_count=1;interval=2;lastname=qwewq;nits_session_id=70C6C557-4664-4396-9348-6B0B6F40FEEC;notstayer=1;nr_guests_427232101_209950661_2_1_0=2;nr_rooms_427232101_209950661_2_1_0=1;promo=0;raf_cm_later=0;recommended_room_id=0;recp=0;remb=0a50174b1a14069b2a50b3a0b4a0b5a223b6a1367b;rets=1a224b160c2a304b99c3a10b9204c;reub=0;room1=A%2CA;rt_cheapest_search_price=3960;rt_num_blocks=3;rt_num_blocks_per_room=%7B%22427232103%22%3A1%2C%22427232101%22%3A1%2C%22427232102%22%3A1%7D;rt_num_rooms=3;rt_pageview_id=96ec14a459a90093;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=1c7d5585-d8ca-4223-9234-75333e4f4039;rt_selected_block_position=1;rt_selected_total_price=3960;seen_ft_rvw=0;smoking_preference_427232101_209950661_2_1_0=no;srpvid=20aa146ea74600da;stage=2;total_cost=3960;trips_promo=%5B%5D;ufi=-2635345;upgrade_to=0&amp;#china-sensitive">
													敏感信息</a>）。
											</li>
											<li class="bui-list__item">将此信息共享给Duck's Home
												B&B，其联系信息将在订单确认信中提供给我。</li>
										</ul>
									</div>
								</div>
							</div>
							-->

							<div class="bui-group bui-spacer--large">
								<div
									class="
bui-group bui-button-group bui-group--vertical-align-middle bui-group--inline bui-group--align-end 
">
									<div
										data-capla-component="b-checkout-bp-accommodation/PriceMatch/csr/bp"
										data-capla-namespace="b-checkout-bp-accommodationBXEQFGJJ"></div>
									<div class="bui-group__item">
										<button
											class="bui-button bui-button--primary bui-button--large js-bp-submit-button--next-step e2e-bp-submit-button--next-step bp-button"
											type="button" onclick="orderConfirm()" name="book" data-bui-component="Popover"
											data-popover-content-id="bp-submit-popover"
											data-popover-position="top end">
											<span class="bui-button__text js-button__text"> 完成预订 </span>
											<span
												class="bui-button__icon bui-button__icon--end js-button__icon">
												<svg class="bk-icon -streamline-arrow_nav_right" height="24"
													role="presentation" width="24" viewBox="0 0 24 24"
													role="presentation" aria-hidden="true" focusable="false">
                          							<path d="M9.45 6c.2 0 .39.078.53.22l5 5c.208.206.323.487.32.78a1.1 1.1 0 0 1-.32.78l-5 5a.75.75 0 0 1-1.06 0 .74.74 0 0 1 0-1.06L13.64 12 8.92 7.28a.74.74 0 0 1 0-1.06.73.73 0 0 1 .53-.22zm4.47 5.72zm0 .57z" />
                        						</svg>
											</span> <span class="bui-button__loader">
												<div class="bui-spinner bui-spinner--light ">
													<div class="bui-spinner__inner"></div>
												</div>
											</span>
										</button>
									</div>
								</div>
							</div>
							<div
								class="bui-card bp-card--transparent bp-card--booking-conditions bui-u-bleed@small">
								<div class="bui-card__content">
									<div class="bui-card__text bui-u-text-right">
									<!--  
										<a class="bui-link e2e-booking-conditions__link "
											href="/bookcancel.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02&checkout=2023-06-03&general=246088447&hotel_doesnt_need_cc_data=1&hotel_id=4685428&is_family_search=0&is_group_search=0&persons=0&policygroup_room=2023-06-03%2C468542801%3A246088447%3A2%3AJiN4NjgwNzsmI3g1MUM2OyYjeDUzQ0M7JiN4NEVCQTsmI3g2MjE2OyYjeDUzQ0M7JiN4NUU4QTsm%0AI3g5NUY0OyA%3D%0A%3A468542801_246088447_2_1_0&srpvid=e35016eadacb0185&&popupit=1&"
											target="_blank" id="bookconditions"
											data-component="popup-open" data-width="600"
											data-height="580" data-bui-component="Tooltip"
											data-tooltip-position="top"
											title="点击链接即可查看预订政策详情，包括：取消订单、预付款、税费及其他费用"> 订单条款是什么？ </a>
											-->
									</div>
								</div>
							</div>
						</form>
					</main>
				</div>
				<svg class="bk-icon -iconset-warning" height="128"
					style="display: none;" width="128" viewBox="0 0 128 128"
					role="presentation" aria-hidden="true" focusable="false">
          <path
						d="M64 8a56 56 0 1 0 56 56A56 56 0 0 0 64 8zm0 91a8 8 0 1 1 8-8 8 8 0 0 1-8 8zm8-61l-5 39h-6l-5-39a8 8 0 1 1 16 0z" />
        </svg>
				<div id="bp-submit-popover" class="bui-card bui-u-hidden">
					<div class="bui-card__content">
						<div class="bui-group">
							<div class="bui-group__item">
								<div class="bui-f-font-display_one">
								<%
									if(hotel_info == null){
										out.print("酒店名称");
									}else{
										out.print(hotel_info.getHotel_name());
									}
								%>
								</div>
								<%
									for(int i = 0; i < roomList.size(); ++i) {
										Room room = roomList.get(i);
								%>
								<div class="bui-f-font-strong"><% out.print(room.getRoom_name()); %></div>
								<% } %>
							</div>
							<hr class="bui-group__item bui-divider" />
							<div
								class="bui-group__item bp-date-range bui-date-range bui-date-range--large">
								<div class="bui-date-range__item">
									<div id="bp-checkin-date__label" class="bui-date__label">入住时间</div>
									<time class="bui-date bui-date--large"
										aria-describedby="bp-checkin-date__label">
										<span class="bui-date__title">
										<% out.print(check_in_date_strs[0]); %>年<% out.print(check_in_date_strs[1]); %>月<% out.print(check_in_date_strs[2]); %>日
										
										</span> 
									</time>
								</div>
								<div class="bui-date-range__item">
									<div id="bp-checkout-date__label" class="bui-date__label">退房时间</div>
									<time class="bui-date bui-date--large"
										aria-describedby="bp-checkout-date__label">
										<span class="bui-date__title">
										<% out.print(check_out_date_strs[0]); %>年<% out.print(check_out_date_strs[1]); %>月<% out.print(check_out_date_strs[2]); %>日
										</span> 
									</time>
								</div>
							</div>
							<div class="bui-group__item bui-group bui-group--small">
								<div class="bui-group__item bui-f-font-emphasized">入住总天数：</div>
								<div class="bui-group__item bui-f-font-strong"><% out.print(daysOfStay); %>晚</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<template id="booking-loader-modal">
				<div
					class="js-bp-booking-loader bui-modal__body bui-modal__body--primary">
					<div class="bui-spinner bui-spinner--size-largest" role="alert"
						aria-busy="true">
						<div class="bui-spinner__inner"></div>
					</div>
					<h1
						class="bp-booking-loader__title bui-text bui-text--variant-headline_2 js-bp-booking-loader__title"></h1>
					<p
						class="js-bp-booking-loader__subtitle bui-text bui-text--variant-body_1"></p>
				</div>
			</template>
			<script id="script-booking-availability-rooms-env"
				type="text/javascript" nonce="ybUYWKfiYBp3lUr">
        // <![CDATA[
        booking.env.b_rooms = [];
        booking.env.b_max_rooms_in_reservation = 6;
        booking.env.you_can_book_at_most_x_rooms_with_this_hotel = '在该酒店您最多可以预订6间客房！';
        booking.env.b_stage = 2;
        booking.env.you_can_book_for_at_most_x_guests_per_reservation_with_this_hotel = '在该酒店每次预订的最多人数为0 人。';
// ]]>
      </script>
		</div>
	</div>
	<div
		class="footerconstraint footer_no_lang_track a11y_fix_footer_contrast_footerconstraint 
 bp-footer-cleanup
">
		<div class="footerconstraint-inner">
			<div id="bookFooterInc">
				<div id="footer">
					<div id="footernav" role="navigation">
						<ul class="footer-simple-horizontal-nav">
							<li><a target="_BLANK" rel="nofollow"
								>关于Booking.com</a>
							</li>
							<li><a target="_BLANK" rel="nofollow"
								data-ga-track="click|Click|Action: book|hc_entrypoint_book_footer">
									客服帮助 </a></li>
							<li><a target="_BLANK" rel="nofollow"
								>条款与条件</a>
							</li>
							<li><a target="_BLANK" rel="nofollow"
								>隐私和Cookie声明</a>
							</li>
						</ul>
					</div>
					<div class="footercopyright">
						<div class="whitebar">
							<div class="copyright_text">版权 &copy; 1996&ndash;2023
								Booking.com. 版权所有.</div>
						</div>
					</div>
				</div>
				<!--  
				<script type="text/javascript" nonce="ybUYWKfiYBp3lUr">
          booking.ensureNamespaceExists('env');
          booking.env.google_analytics_tracking_enabled = 1;
          booking.env.b_aid = '397645';
          booking.env.b_label = 'bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB';
          booking.env.b_availability_checked = '';
          booking.env.b_multiple_destinations_found = '';
          try {
            var google_analytics_tracking_universal = function () {
              (function (q, u, i, c, k) {
                window['GoogleAnalyticsObject'] = q;
                window[q] = window[q] || function () { (window[q].q = window[q].q || []).push(arguments) },
                  window[q].l = 1 * new Date(); c = i.createElement(u), k = i.getElementsByTagName(u)[0];
                c.async = true; c.src = '//www.google-analytics.com/analytics.js';
                k.parentNode.insertBefore(c, k)
              })('ga', 'script', document);
              ga('create', 'UA-116109-18', {
                'cookieDomain': '.booking.com'
              });
              window.ga('require', 'ec');
              window.ga('ec:addProduct', {
                'id': "4685428",
                'name': "Holiday Inn Express Nanjing Dongshan, an IHG Hotel",
                'brand': "204",
                'category': "cn_Nanjing_-1919548",
                'variant': "3",
                'price': "42.985",
                'quantity': 2
              });
              window.ga('ec:setAction', 'checkout', {
                'step': 1
              });
              (function () {
                try {
                  var gaTracker = B.require('ga-tracker');
                } catch (e) {
                  return false;
                }
                var promos = Array.prototype.slice.call(document.querySelectorAll('[data-ga-promo]'));
                var tracked = {};
                for (var i = 0; i < promos.length; i++) {
                  var s = promos[i].getAttribute('data-ga-promo');
                  if (!s) continue;
                  var r = parsePromo(s);
                  var k = r.id + r.name + r.creative + r.position;
                  if (tracked.hasOwnProperty(k)) continue;
                  tracked[k] = 1;
                  // this event has to be set before pageview is triggered as it is sent together with pageview
                  gaTracker.ecommerceAddPromo(r.id, r.name, r.creative, r.position);
                }
                function parsePromo(str) {
                  var trackData = str.split('|');
                  return {
                    id: trackData[0],
                    name: trackData[1],
                    creative: trackData[2],
                    position: trackData[3]
                  };
                }
              }());
              if (B.env) {
                B.env.b_feature_running_TRACK_GA_EC_PROMO = true;
              }
              ga('set', 'anonymizeIp', true);
              (function () {
                window.b = window.b || window.B || window.booking || {};
                var pageviewInfo = window.b.gaPageViewInfo = {
                  page: '/book.zh-cn.html?label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=2&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1&ur_nodat=1',
                  dimension13: "" + (new Date('2023-06-02').getDay()) + "|" + (new Date('2023-06-03').getDay()),
                  dimension14: "38",
                  dimension94: "38",
                  dimension15: "1",
                  dimension95: "1",
                  dimension4: "F0F82B2",
                  dimension5: "397645",
                  dimension6: "17",
                  dimension7: "488148",
                  dimension8: "bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB",
                  dimension44: "",
                  dimension9: "1 rooms | 1 adults | 0 kids",
                  dimension53: "1 rooms | 1 adults | 0 kids",
                  dimension11: "desktop",
                  dimension12: "zh-cn",
                  dimension10: "0",
                  dimension29: "0",
                  dimension32: "not_logged_in",
                  dimension33: "na",
                  dimension35: "UmFuZG9tSVYkc2RlIyh9YeXKWxo4vn0nPu-kgoevwsNe_H5fQsyuNBY_rUMLXzR5",
                  dimension84: "0",
                  dimension31: "unknown",
                  dimension50: "leisure (sb)",
                  dimension96: "leisure (sb)",
                  dimension45: 'cn->cn',
                  dimension37: (booking.env.b_guest_country == booking.env.b_countrycode) ? 'domestic' : 'international',
                  dimension38: "Nanjing",
                  dimension39: "null",
                  dimension40: "4685428",
                  dimension41: "-1919548",
                  dimension42: "BS2",
                  dimension104: "none",
                  dimension115: "",
                  dimension106: "3",
                  dimension122: "free_parking",
                  dimension61: "0",
                  dimension62: "null",
                  dimension63: "0",
                  dimension64: '204',
                  dimension66: 0,
                  dimension69: "0",
                  dimension97: "0",
                  dimension70: "0",
                  dimension98: "0",
                  dimension72: "Hybrid",
                  dimension73: "CNY",
                  dimension74: "CNY",
                  dimension78: "free-cancellation",
                  dimension23: (function () { return navigator.connection && navigator.connection.effectiveType || '' })(),
                  dimension24: (function () { return navigator.connection && navigator.connection.type || '' })(),
                  dimension85: "Solo",
                  dimension99: "Solo",
                  dimension90: "3",
                  dimension91: "0",
                  dimension92: "2301",
                  dimension100: 270,
                  dimension76: 3,
                  dimension54: 'other',
                  dimension116: 0,
                  dimension117: 0,
                  dimension118: 0,
                  dimension119: 0,
                  dimension52: "0",
                  dimension199: "2023-04-13;",
                  dimension255: "null"
                };
                if (window.devicePixelRatio) {
                  pageviewInfo.dimension47 = window.devicePixelRatio;
                }
                if (pageviewInfo && (pageviewInfo.dimension9 === "" || pageviewInfo.dimension9 == null)) {
                  delete pageviewInfo.dimension9;
                }
                ga('set', 'location', 'https://secure.booking.com/book.zh-cn.html?label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=2&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1&ur_nodat=1');
                setTimeout(function () {
                  if (typeof ga !== 'function') return;
                  if (window.location.search.indexOf('gitlab_runner') > -1 || document.cookie.indexOf('gitlab_runner') > -1) return;
                  try {
                    ga(function (tracker) {
                      var clientId = tracker.get('clientId');
                      ga('set', 'dimension60', clientId);
                    });
                    if (pageviewInfo.page) {
                      ga('set', 'page', pageviewInfo.page);
                    }
                    pageviewInfo.hitCallback = function () {
                      var et;
                      function onNoGaTracker() {
                        if (booking && booking.squeak) {
                          booking.squeak('cZdPHNfHJOIbIYYTIaDIADFC');
                        }
                      };
                      try {
                        window.__ga_tracker_set_page_as_tracked__();
                      } catch (e) {
                        onNoGaTracker();
                      }
                    }
                    ga('send', 'pageview', pageviewInfo);
                  } catch (e) {
                  }
                });
              })();
            };
            if (window.addEventListener) {
              window.addEventListener('load', google_analytics_tracking_universal);
            } else if (window.attachEvent) {
              window.attachEvent('onload', google_analytics_tracking_universal);
            }
          } catch (err) {
          }
        </script>
				-->
				<script nonce="ybUYWKfiYBp3lUr"> if (window.performance && performance.measure && 'b-pre-scripts') { performance.measure('b-pre-scripts'); } </script>
				<script nonce="ybUYWKfiYBp3lUr">
          var B = booking = window.booking || {};
          var booking_extra = {
            pageview_id: '243e17393fc90031',
            b_aid: '397645',
            b_stid: '397645',
            b_lang_for_url: 'zh-cn',
            b_gtt: "aFIeNZIfVUSSObaNSCRMJdRIfVNASCRCRMJZeKe",
            b_ch: 'd',
            b_bp_stage: '2',
            b_bp_hid: '4685428',
            b_bp_blocks: [
              '468542801_246088447_2_1_0'
              ,
              '468542801_246088447_2_1_0'
            ],
            b_bp_checkin: '2023-06-02',
            b_bp_checkout: '2023-06-03',
            b_site_type_id: '1',
            b_action: 'book'
          };
        </script>
				<script
					src="./script/static/js/error_catcher_bec_alicloud_a/0acd2ada6c74d5dec978a04ea837952bdf050cd2.js"
					crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script nonce="ybUYWKfiYBp3lUr">
          if ('serviceWorker' in navigator && navigator.serviceWorker.getRegistrations) {
            navigator.serviceWorker.getRegistrations().then(function (registrations) {
              registrations.forEach(function (registration) {
                registration.unregister();
              });
            });
          }
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          (function () {
            (function () {
              var et = function () { "use strict"; var s, c = { level: 0 }, f = { experiment: "e", stage: "s", goal: "g", customGoal: "cg", goalWithValue: "gwv" }, r = [], o = function () { var n, r = {}, o = ""; function t() { var e, t = o; o = Object.keys(r).join(","), (n || (n = document.getElementById("req_info"))) && (n.innerHTML !== t && (e = n.innerHTML, r = e.split(",").reduce(function (e, t) { return e[t] = !0, e }, r), o = Object.keys(r).join(",")), n.innerHTML = o) } function i(e) { r[e] = !0 } return { populate: function (e) { i(e), "string" == typeof e ? (i(e), t()) : e instanceof Array && (e.forEach(i), t()) } } }(), i = function () { var r, o = !1, i = [], n = [], e = 0; function a() { c.level && c.report(c.events.BEACON_SENT, i), o = !1, e = 0, r = null, i.length && l() } function u() { o = !1, r = null, 10 <= ++e ? n = [] : (i = i.concat(n), n = [], r = window.setTimeout(l, 100 * e)) } function l() { c.level && c.report(c.events.SEND_BEACON, i.slice(0)), o = !0; var e = s + "&" + function (e) { for (var t, n = [], r = [], o = [], i = [], a = [], u = 0, l = e.length; u < l; ++u)switch ((t = e[u]).what) { case f.experiment: n.push(t.hash); break; case f.stage: a.push(t.hash + "|" + t.id); break; case f.goal: r.push(t.hash); break; case f.customGoal: o.push(t.hash + "|" + t.id); break; case f.goalWithValue: var s = b(t.hash); s && i.push(s); break; default: c.level && c.report(c.events.UNABLE_TO_STRINGIFY, t) }return "ete=" + n.join(",") + "&etg=" + r.join(",") + "&etcg=" + o.join(",") + "&ets=" + a.join(",") + "&etgwv=" + i.join(",") }(n = i); N.m && (e += "&m=" + encodeURIComponent(N.m)), i = []; try { !function (e) { var t, n = e.url, r = e.complete || function () { }, o = e.headers || {}, i = XMLHttpRequest.DONE || 4, a = new XMLHttpRequest; if (!n) return; if (a.open("GET", n, !0), o) for (t in o) o.hasOwnProperty(t) && a.setRequestHeader(t, "function" == typeof o[t] ? o[t].call() : o[t]); a.onreadystatechange = function () { a.readyState === i && r(a, a.status) }, a.send() }({ url: e, complete: function (e, t) { 200 === t ? a() : u() }, headers: w }) } catch (e) { var t = new Image; t.onload = a, t.onerror = u, t.src = s } } return function (e, t, n) { c.level && c.report(c.events.INIT_BEACON, e, t, n), i.push({ what: e, hash: t, id: n }), o || r ? c.level && c.report(c.events.DEFER_BEACON, i) : r = window.setTimeout(l, 0) } }(), a = {}, h = 300, u = !1, p = {}, v = [], g = !1, l = !1, d = !1, m = !1, w = {}, T = !1, E = !1, n = !1, N = { r: {}, t: {}, f: {} }; N.r || (N.r = {}), N.f || (N.f = {}), N.t || (N.t = {}); var _ = {}, y = 50; function b(e) { if (_[e] && _[e][0].length) { var t = _[e][0], n = _[e][1], r = [e, t.join(":")]; return n.length && r.push(n.join(":")), [].push.apply(n, t.splice(0, t.length)), r.join("|") } } function A(e, t, n) { return (e === f.experiment || e === f.goal ? [e, t] : [e, t, n]).join("-") } function I(e) { if (!d) return e; if (a[e]) return a[e]; for (var t = 2166136261, n = 0, r = e.length; n < r; ++n)t += (t << 1) + (t << 4) + (t << 7) + (t << 8) + (t << 24), t ^= e.charCodeAt(n); return a[e] = (t >>> 0).toString(16) } function O(e, t, n) { if (c.level && c.report(c.events.TRACKING_ATTEMPT, { what: e, hash: t, id: n, variant: (e === f.experiment || e === f.stage) && W(t) }), R(e, t, n)) switch (e) { case f.experiment: C(f.experiment, t), o.populate(t), N.m && r.push(t), i(f.experiment, t); break; case f.stage: C(f.stage, t, n), o.populate(t + "|" + n), N.m && r.push(t + "|" + n), i(f.stage, t, n); break; case f.goal: C(f.goal, t), i(f.goal, t); break; case f.customGoal: C(f.customGoal, t, n), i(f.customGoal, t, n); break; case f.goalWithValue: (function (e, t) { _[e] || (_[e] = [[], []]); var n = _[e][0]; if (_[e][1].length <= y + 10) return n.push(t), !0 })(t, n) && i(f.goalWithValue, t, n); break; default: c.level && c.report(c.events.TRACK_UNKNOWN_ITEM, e, t, n) }return e !== f.experiment || W(t) } function C(e, t, n) { p[A(e, t, n)] = !0 } function R(e, t, n) { if (m) return !1; c.level && c.report(c.events.SHOULD_TRACK, e, t, n); var r, o, i = { what: e, hash: t, id: n, variant: (e === f.experiment || e === f.stage) && W(t) }; if (p[A(e, t, n)]) return c.level && c.report(c.events.NOT_TRACKING_WAS_TRACKED, i), !1; if (e === f.experiment || e === f.stage) { if (o = 1 << (n || 0), r = I(t), N.f[r]) return c.level && c.report(c.events.NOT_TRACKING_FULLON, i), !1; if (void 0 === N.r[r]) return c.level && c.report(c.events.NOT_TRACKING_NOT_RUNNING, i), !1; if (N.t[r] & o) return C(e, t, n), c.level && c.report(c.events.NOT_TRACKING_WAS_TRACKED, i), !1 } else if (e === f.customGoal) { if (r = I(t), N.f[r]) return c.level && c.report(c.events.NOT_TRACKING_FULLON, i), !1; if (void 0 === N.r[r]) return c.level && c.report(c.events.NOT_TRACKING_NOT_RUNNING, i), !1 } return !0 } function G(n, e, r, o, i) { c.level && c.report(c.events.ADD_EVENT_LISTENER, n, e, r, o, i); var a = function (e) { { if ("string" == typeof e) return M(document.querySelectorAll(e)); if (e instanceof HTMLCollection) return M(e); if (e instanceof NodeList) return M(e); if (e instanceof Element) return [e]; if ("[object Array]" === Object.prototype.toString.call(e)) return e; if (window.jQuery && e instanceof jQuery) return e.toArray() } return [] }(e); if (0 < a.length) if ("view" === n) !function (e, t, n, r) { c.level && c.report(c.events.ADD_DEBOUNCED_VIEW_HANDLER, e, t, n, r); var o = A(t, n, r); if (p[o]) return; v.push([e, t, n, r]), g || (c.level && c.report(c.events.ATTACH_VIEW_LISTENER, v), L(window, "scroll", k), L(window, "resize", k), L(window, "wheel", k), L(window, "load", j), window.setTimeout(k, h), T && T(k), g = !0) }(a[0], r, o, i); else for (var t = 0, u = a.length; t < u; t++)L(a[t], n, l); else c.level && c.report(c.events.NOT_EXISTING_ELEMENT_WONT_ADD_LISTENER, r, o, i); function l() { O(r, o, i); for (var e = 0, t = a.length; e < t; e++)V(a[e], n, l) } } function j() { window.setTimeout(k, h) } function k() { if (l) { if (u) return; u = setTimeout(function () { u = !1, k() }, h) } l = !0; var e, t = []; c.level && c.report(c.events.CHECK_IF_VISIBLE, v); for (var n = 0, r = v.length; n < r; ++n)(e = v[n]) && S(e[0]) ? (c.level && c.report(c.events.ONVIEW_TRACKING_TRIGGERED, e[1], e[2], e[3]), O(e[1], e[2], e[3])) : t.push(e); v = t, c.level && c.report(c.events.VISIBLE_CHECK_FINISHED, v), 0 === v.length && (g = !1, V(window, "scroll", k), V(window, "resize", k), V(window, "load", j), E && E(k), c.level && c.report(c.events.DETACH_VIEW_LISTENER)), window.setTimeout(function () { l = !1 }, h) } function S(e) { var t, n, r; return !!e && (!!e.parentElement && (!e.getBoundingClientRect || (t = e.getBoundingClientRect(), n = window.innerHeight || document.documentElement.clientHeight, r = window.innerWidth || document.documentElement.clientWidth, !(t.right < 0 || t.left > r || 0 === t.top && 0 === t.left && 0 === t.right && 0 === t.bottom) && t.top < n))) } function L(e, t, n) { e.attachEvent ? (e["e" + t + n] = n, e[t + n] = function () { e["e" + t + n](window.event) }, e.attachEvent("on" + t, e[t + n])) : e.addEventListener(t, n, !1) } function V(e, t, n) { e.detachEvent ? e[t + n] && (e.detachEvent("on" + t, e[t + n]), e[t + n] = null) : e.removeEventListener(t, n, !1) } function B(n, r, o) { return function (e, t) { R(o, e, t) ? G(n, r, o, e, t) : c.level && c.report(c.events.WONT_ATTACH_EVENT_TRACKING, n, r, o, e, t) } } function D(e, t) { return { track: B(e, t, f.experiment), stage: B(e, t, f.stage), goal: B(e, t, f.goal), customGoal: B(e, t, f.customGoal) } } function t(e, t) { for (var n in t) t.hasOwnProperty(n) && (e[n] = t[n]) } function H(e) { N.f = e.f || {}, t(N.r, e.r || {}), t(N.t, e.t || {}), e.m && !N.m && (N.m = e.m, r = []) } function W(e) { var t = I(e); return N.r[t] || N.f[t] || 0 } function K(e) { if (1 < arguments.length) throw "Track only accept one parameter"; if (e) return O(f.experiment, e); if (n) throw "B.et.track: hash value should be a non-empty string"; return 0 } function x(e) { var t, n = /^(?:(goal|customGoal):)?([a-zA-Z]\w+)?(?::([\d]))?$/, r = []; for (e = e.split(/\s+/), t = 0; t < e.length; t++) { var o = e[t].match(n), i = o && o[2], a = o && o[3], u = o && o[1] || (a ? "stage" : "track"); u && r.push({ hash: i, value: a, action: u }) } return r } function M(e) { var t, n = [], r = e.length; for (t = 0; t < r; t++)n.push(e[t]); return n } function e() { } return e.prototype.track = K, e.prototype.stage = function (e, t) { if (!e) { if (n) throw "B.et.trackStage: hash value should be a non-empty string"; return !1 } if (void 0 === t) { if (n) throw "B.et.trackStage: stage number should be a number between 1 and 9"; return !1 } if (0 === t) return K(e); if (/^[1-9]$/.test(t)) return O(f.stage, e, t); if (n) throw "B.et.trackStage: stage number should be a number between 1 and 9"; return !1 }, e.prototype.goal = function (e) { if (e) return O(f.goal, e); if (n) throw "B.et.goal: name should be a non-empty string"; return !1 }, e.prototype.customGoal = function (e, t) { if (e && t && /^[1-5]$/.test(t)) return O(f.customGoal, e, t); if (n) { if (!e) throw "B.et.customGoal: hash value should be a non-empty string"; if (!t || !/^[1-5]$/.test(t)) throw "B.et.customGoal: custom goal number should be a number between 1 and 5" } return !1 }, e.prototype.goalWithValue = function (e, t) { if (/^js_/.test(e) && /^-?[0-9]+$/.test(t)) return O(f.goalWithValue, e, t); if (n) { if (!/^js_/.test(e)) throw "B.et.goalWithValue: name should be a non-empty string with prefix js_"; if (!/^-?[0-9]+$/.test(t)) throw "B.et.goalWithValue: value should be an integer" } return !1 }, e.prototype.on = D, e.prototype.set = H, e.prototype.Trackables = f, e.prototype.configure = function (e) { e.url && (s = e.url), e.jset && H(e.jset), void 0 !== e.useFNV && (d = e.useFNV), void 0 !== e.ajaxHeaders && (w = e.ajaxHeaders), void 0 !== e.snt && (m = e.snt), "function" == typeof e.bindOnView && (T = e.bindOnView), "function" == typeof e.unbindOnView && (E = e.unbindOnView), e.isDevServer && (n = !0) }, e.prototype.initAttributesTracking = function (i) { var a, u, l, s = ["change", "click", "mouseenter", "focus", "view"]; !function () { if (i && 0 !== i.length ? i.length && (i = i[0]) : i = document, i && i.querySelectorAll) for (a = 0; a < s.length; a++) { l = "data-et-" + (u = s[a]); for (var e = i.querySelectorAll("[" + l + "]"), t = 0; t < e.length; t++) { var n = e[t], r = x(n.getAttribute(l)), o = D(u, n); r.forEach(function (e) { o && o[e.action] && o[e.action](e.hash, e.value) }) } } }() }, e.prototype.tracked = function () { return r.join(",") }, e.prototype.registerDebug = function (e) { if (0 == c.level) { var t = !isNaN(e.level), n = "object" == typeof e.events, r = "function" == typeof e.report; t && n && r && (c.level = e.level, c.events = e.events, c.report = e.report) } }, new e }();
              B.et = et;
            }());
            var ViewTrackingEvents = (function () {
              var desktopEvents = [
                'GENERAL:dom_changed',
                'GENERAL:layout_changed',
                'GENERAL:throttled_scroll',
                'GENERAL:throttled_resize',
                'tab-opened',
                'user_access_menu_register_tab',
                'user_access_menu_login_tab',
                'uc_popover_showed',
                'rt-lightbox-open',
                'rt-lightbox-closed',
                'tooltip:show',
                'reviews-sliding:scroll',
                'et-scroll-observer:scroll'
              ];
              var mdotEvents = [
                'HP.MAP.OPEN.COMPLETE',
                'HP.block.expand',
                'tabbed_nav:opened',
                'RT.room.page.scrolls',
                'RT.room.expand',
                // START xroom_m_searchbox_rooms_before_guests
                'hp_dates_popup_show',
                // END xroom_m_searchbox_rooms_before_guests
                'RT.room.select.done',
                'k2.sub.page.opened',
                'k2.sub.page.scrolls',
                'k2.drawerWithNavigation.scrolls'
              ];
              return [].concat(desktopEvents, mdotEvents);
            }());
            var ajaxHeaders = {
              'X-Booking-AID': '397645',
              'X-Booking-CSRF': 's35HZAAAAAA=7hfe8RL1LU6vHCFfFj1z2ejNgRvPHsTtjvgKGNpTWdkvdnd3dC-EMssLEIUHNSvW1Rr3fOe3u0NqZ7Bkh-b8eqlaQA5OTF84nqfxYMnLsK1fIklHm6L5a2ikGde1EjIFDB-Z_IOtx5ysLuijwgmmWHsUqcHUr5naOjNlirT8ou-GubdL-qsSwo8SC3JpB2P2f0ccJoM7ypyMOAL7',
              'X-Booking-Info': function () { return (document && document.getElementById('req_info')) ? document.getElementById('req_info').innerHTML : '' },
              'X-Booking-Client-Info': function () { return B.et.tracked() },
              'X-Booking-Label': encodeURIComponent('bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB'),
              'X-Booking-Language-Code': 'zh-cn',
              'X-Booking-Pageview-Id': '243e17393fc90031',
              'X-Booking-Session-Id': 'f0f82b20b46106bf73b9641ed765ee02',
              'X-Booking-SiteType-Id': '1',
              'X-Partner-Channel-Id': '17',
              'X-Requested-With': 'XMLHttpRequest'
            };
            var extraAjaxHeaders = {};
            for (var extraAjaxHeader in extraAjaxHeaders) {
              if (Object.prototype.hasOwnProperty.call(extraAjaxHeaders, extraAjaxHeader)) {
                ajaxHeaders[extraAjaxHeader] = extraAjaxHeaders[extraAjaxHeader];
              }
            }
            var eventsBindedAlready = false;
            function bindViewTrackingEvents(onViewHandler) {
              if (B.eventEmitter && !eventsBindedAlready) {
                for (var i = 0; i < ViewTrackingEvents.length; i++) {
                  B.eventEmitter.bind(ViewTrackingEvents[i], onViewHandler);
                }
                window.addEventListener('wheel', onViewHandler)
                eventsBindedAlready = true;
              }
            }
            B.et.configure({
              url: "/js_tracking?lang=zh-cn&ref_action=book&sid=f0f82b20b46106bf73b9641ed765ee02&pid=243e17393fc90031&stype=1&ver=2&aid=397645",
              noJqueryAjax: true,
              noJqueryOn: true,
              ajaxHeaders: ajaxHeaders,
              bindOnView: function (onViewHandler) {
                bindViewTrackingEvents(onViewHandler);
                if (document.addEventListener) {
                  document.addEventListener('DOMContentLoaded', function () {
                    bindViewTrackingEvents(onViewHandler);
                  });
                }
              },
              unbindOnView: function (onViewHandler) {
                if (B.eventEmitter) {
                  for (var i = 0; i < ViewTrackingEvents.length; i++) {
                    B.eventEmitter.unbind(ViewTrackingEvents[i], onViewHandler);
                  }
                  window.removeEventListener('wheel', onViewHandler)
                }
              },
              jset: B.jset || { r: {}, t: {}, f: {} }
            });
            window.setTimeout(function () {
              B.et.initAttributesTracking();
            }, 4);
          }());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">(function () { function fireJqueryLoadError() { if (!document.getElementById('req_info')) { setTimeout(fireJqueryLoadError, 100); return; } window.onerror('3rd_JQUERY: load error - ' + './script/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js', 1, 1); }; document.addEventListener('error', function (e) { if (e.target && e.target.classList.contains('jquery-script-tag')) { fireJqueryLoadError(); } }, true); })(); </script>
				<script
					src="./script/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js"
					class="jquery-script-tag" crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script nonce="ybUYWKfiYBp3lUr"> if (this.$ && $.fn && $.fn.bind) { $(this.document.body).bind('submit', function (evt) { var win = Function('return this')(), token = 's35HZAAAAAA=7hfe8RL1LU6vHCFfFj1z2ejNgRvPHsTtjvgKGNpTWdkvdnd3dC-EMssLEIUHNSvW1Rr3fOe3u0NqZ7Bkh-b8eqlaQA5OTF84nqfxYMnLsK1fIklHm6L5a2ikGde1EjIFDB-Z_IOtx5ysLuijwgmmWHsUqcHUr5naOjNlirT8ou-GubdL-qsSwo8SC3JpB2P2f0ccJoM7ypyMOAL7', input = win.document.createElement('input'), check = win.document.createElement('input'), form = $(evt.target); if (!form.find('[name="bhc_csrf_token"]').length && (form.attr('method') || '').toLowerCase() === 'post') { input.type = 'hidden'; input.value = token; input.name = 'bhc_csrf_token'; check.type = 'hidden'; check.value = 1; check.name = 'bhc_csrf_token_check'; form.append(input).append(check); } }); } (function () { if (window.self !== window.top) { $.ajax({ type: 'POST', url: './script/_frdtcr?aid=397645', data: { 'pid': '243e17393fc90031', 'ref': document.referrer, 'url': document.location.href } }); } }()); </script>
				<script
					src="./script/static/js/core-deps-inlinedet_alicloud_a/6da0bf621035bb8a2f9c756d6a89dda03b2f7864.js"
					crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script nonce="ybUYWKfiYBp3lUr">
          ; (function () {
            var envData = B.require('tmpl_data');
            if (!envData) return;
            envData({ "b_lang_for_url": "zh-cn", "b_site_type_id": 1, "b_aid": 397645, "b_sid": "f0f82b20b46106bf73b9641ed765ee02", "b_action": "book", "pageview_id": "243e17393fc90031" });
          }());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          if (B.env) {
            B.env.search_box_keep_children_ages_order = true;
          }
          B.require('tmpl_data')({ "b_search_config": { "traveller_segment": "solo", "b_is_group_search": 0, "b_children_ages_total": [], "b_adults_total": 1, "b_children_total": 0, "b_pets_total": null, "autosplit": 1, "b_abnormal_params": 0, "b_rooms": [{ "b_children": 0, "b_room_order": 1, "b_adults": 1, "b_children_ages": [] }], "b_nr_rooms_needed": 1 } });
        </script>
        <!--  
				<script nonce="ybUYWKfiYBp3lUr">
          ; (function () {
            var exportedVars = JSON.parse('{\"b_payments_pay_in_selected_currency_inferred\":\"\",\"fe_sso_logout_state\":\"UowIO7Jo1gOyI3_uMjUmb-0njNwO6sFYX8V3EJiv8UbC_lcJ7T-VzxGSX-abHNIGmEuerm9kRrhFvqUP-gv7Mw6nGKN9cvlRH9m459ZdPAYA5ilEHvTYMIV1SDbnA-MrIKlBH5Y_VgrdwgvKWxM4U7NwBxLVvPm73wnU-kJ4Ubl147KvlkunrDMdqbUMLfLq7RqIfG4B0nGFHxnfOhqm2vklKM8E7c4Lc0MSWMOvQuW6hM2BRXvHyXdG44_72FImvqTOcILcNndQlvTSRvH2Vhzqm3uuesnZ6dAS5MZRPJahzTCkM6Y4Trtu1e8sRbXgQ8c-PHlMrJBTTqmPontJo27ThkldvF_1PbxZ2iyCXDNj9pSkffTuDFVHFaMqUPGYpIfMM5YGPAECEJDK27wcgx7GTguMpOqwLro-mKExC_Y7CPFZwi9IqgKadzqCht6w-04X4aUEZ2tYcT3xVSf7AxaU1KWtX1CqgSQ-6RUdGkS1T6xYjWB844GYhMuIbR2GbTxm9smYG5TYi0a6248Jm3GdMUB4V25PRdePJ9fnYM7EayPTVOGrUSYcvoxnVm3w5tJ4_b66G0bxeN75T9cckmlej8QrDf5cCRz-dxPr9XPMhx_2hn27Rdubuxbc6-RkNl8UfcoAVv-eTeTrE1g15XZ-jm7HIC2bxsVnUPA6RO2ISdo2FDGN9sL4BKawfSUyKnR4F-teeVR2MWOrrvlNA0HTQPqXQsYb9LrWz2ulN8cKfCH8a33KB7FZ65cbFYOBeklh8gRQyBtNuiTUOBfznCS07NJK3U2aRjtN5Qbc6XekeuYQzIBBx-DAV_HqISYpBGFDXJbjLFepJvW7slG0UA4lBDPhgqzHXcOwdY9IObGSrPX3o73abBjRugbKYmfW7naeepVqQu_zn7KFHwJAmIAbY2TycCipUPBqwEjY82s_hhelAfEeEuIJfhYjT3LU0nfBV43oQ-uxZNJdUNmPEuTbghp777EcBlh1O6ujZ59xVFCkb3LLB_3pYXZah1cG_CqyOANHZwtF4oI_ofkOz8fqXTBlvmTrJOq8LhXCQovF9pb1RKqX6W8LOlm4jiz6dGGJFNf1la02GImaCmEhofcGCkEFVmBDOZ0QzFZZ33stzcn9TQEdTmHIL5raAP5pEv2ud4493S9R8YtJvJtKM1KnH58b7e402YjWvEYVsccwKNAHfZz8qJVih2hablxjMBAWyg4NaAlOHoxuzCmXlZeIHM-HWtbL6MrUss-bJHn5e7YBTSkBb55hqyBASgeJ5znvRBSRgMkK05lw1saFY4A_ipOmHODJIfA7zjqw6-xmffp7_ULiqUmu1mTaMOwnHHmf6RJH44olAf7mH_1wgRFGE1NZ5wHI30q9oia1Gw\",\"isFixForGuestNameDisplayAndValueEnabled\":1,\"b_alt_payment_user_amount\":\"757.90\",\"fe_order_uuid\":\"\",\"fe_amount_currency\":\"CNY\",\"b_alt_payment_user_amount_pretty\":\"757.90元\",\"fe_show_payment_timing_with_campaign_discounts\":\"0\",\"show_rocketmiles_av_frontend\":0,\"installmentCountFailedValidation\":\"\",\"fe_bp_is_insurance_pay_at_property_enabled\":\"\",\"b_param_cc_year\":\"\",\"b_lang\":\"zh\",\"FE_PBB__NO_PRE_PAYMENT_NEEDED\":\"\",\"b_bwallet_total_balance_p_c\":\"\",\"b_is_piyoc_supported\":\"\",\"b_analytics_tracking_string\":\"/book.zh-cn.html?label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=2&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1&ur_nodat=1\",\"fe_is_mobile\":0,\"bp_hybrid_pay_now\":\"\",\"b_wallet_instant_discounts_final_price\":\"\",\"useBulkValidation\":\"\",\"fe_sp_enable_basic_inventory\":\"0\",\"requiredFields\":{\"reason_to_visit_checkbox\":1,\"firstname\":1,\"email\":1,\"interval\":1,\"cc_cvc\":1,\"guest_name\":1,\"cc1\":1,\"password\":1,\"dc_issue_number\":1,\"cc_month\":1,\"dc_month\":1,\"installment_count\":1,\"cc_type\":1,\"sp_loyalty_coupon_code\":1,\"cc_name\":1,\"hfbp\":1,\"nr_guests\":1,\"send_link_app\":1,\"lastname\":1,\"cc_card_id\":1,\"sp_loyalty_data_payload\":1,\"affiliate_legal_optin\":1,\"checkin\":1,\"cc_year\":1,\"phone\":1,\"cc_number\":1,\"dc_year\":1,\"nr_rooms\":1,\"password_confirm\":1,\"reason_to_visit\":1},\"isSurnameFirst\":1,\"FE_PBB__IS_AVAILABLE\":\"1\",\"b_param_cc_month\":\"\",\"guestPIICount\":\"1\",\"js_tracking_url\":\"/js_tracking?lang=zh-cn&ref_action=book&sid=f0f82b20b46106bf73b9641ed765ee02&pid=243e17393fc90031&stype=1&ver=2&aid=397645\",\"fe_new_session_url\":\"\",\"FE_PBB__PAY_AT_PROPERTY_WITH_CC_AVAILABLE\":\"1\",\"cartToken\":4039085908,\"FE_PBB__PRODUCT_TYPE_IS_HYBRID\":\"1\",\"beaconUrl\":\"./script/static/tag_container/tag_container/a077563c1795a773c91150dd19adefe98d13fd65.html\",\"track_skip_links\":1,\"fe_show_payment_timing_with_wallet\":\"0\",\"FE_PBB__ROOM_POLICY_NONFLEX\":\"0\",\"fe_is_us_domestic\":\"\",\"fe_payment_component_id\":\"\",\"FE_PBB__WALLET_HAS_CREDITS\":\"0\",\"FE_PBB__ROOM_POLICY_NONREF\":\"0\",\"FE_PBB__FORCE_PAY_NOW_AS_ONLY_OPTION\":\"0\",\"fe_show_payment_timing_www_with_wallet\":\"\",\"b_bb_want_invoice\":\"\",\"b_ofac_is_match\":\"\",\"fe_operation_type\":\"\",\"b_selected_language\":\"zh-cn\",\"fe_showBDate\":\"\",\"FE_PBB__IS_APM_AVAILABLE\":\"\",\"fe_has_privacy_consent_colombia\":\"\",\"FE_PBB__WALLET_SHOWN\":\"0\",\"fe_is_partial_payment\":\"\",\"fe_cc_info_cardholder_name\":\"\",\"b_sso_logout_callback_url\":\"https://secure.booking.com/login.html?op=oauth_return\",\"fe_require_cvc\":\"1\",\"FE_PBB__NO_CC_NEEDED\":\"1\",\"fe_hide_occupancy_selector\":\"0\",\"fe_is_ge_email_a_popover\":\"1\",\"isImprovedDesktopUI\":1,\"fe_chargeable_amount\":757.9,\"FE_PBB__WALLET_CAN_BE_SHOWN\":\"\",\"fe_payer_id\":\"\",\"fe_has_privacy_consent_skorea\":\"\",\"b_require_billing_address\":0,\"b_rooms\":[{\"b_photos\":[{\"b_dimension_width_max600\":600,\"b_uri_square90\":\"/xdata/images/hotel/square90/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max1024x768\":1024,\"b_dimension_width_max1280x900\":1280,\"b_category\":null,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"168\\\"\",\"b_uri_end\":\"/230/230588940.jpg\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_org\":\"/xdata/images/hotel/org/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_id\":230588940,\"b_dimension_width_max320x190\":320,\"b_dimensions_html_max320x190\":\" width=\\\"320\\\" height=\\\"179\\\"\",\"b_dimension_height_max300\":168,\"b_ranking\":37,\"b_dimension_height_max1280x900\":719,\"b_dimension_width_max300\":300,\"b_uri_square60\":\"/xdata/images/hotel/square60/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"337\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_height_max600\":337,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"575\\\"\",\"b_dimension_height_max1024x768\":575,\"b_dimension_height_max320x190\":179,\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"719\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_created\":null,\"b_uri_original\":\"/xdata/images/hotel/original/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\"}],\"b_charges_has_excluded_incalculable\":0,\"b_charges_has_conditional\":0,\"b_select_persons\":[{\"b_value\":\"2\"},{\"b_selected\":1,\"b_value\":\"1\"}],\"b_max_child_age\":6,\"b_bundle_name\":\"\",\"b_cancellation_timezone_from\":\"CST\",\"b_name\":\"标准双人或双床间 \",\"b_policygroup_name\":\"一般\",\"removal_url\":\"https://secure.booking.com/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02&checkout=2023-06-03&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=1&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1\",\"b_roominfo_incl\":[],\"b_charges_hotel_sum_excluded_raw\":53.95,\"b_u_price_hotel_currency_unformatted\":\"325.00\",\"b_mealplan_new_style\":1,\"b_charges_hotel_currency_code\":\"CNY\",\"b_room_room_details\":[{\"b_block_id\":\"468542801_246088447_2_1_0\",\"b_prepay_policy\":\"无需预付。\",\"b_policy_cancellation_rules\":[{\"type\":\"RULESET_CANCELLATIONFEE\",\"name\":\"åæ¶é¢è®¢æ¶è´¹\",\"rule\":[{\"b_good_rule\":2,\"content\":\"截至入住当日18:00，可免费取消。 入住日当天18:00后如取消订单，您需要支付订单全额。 如果未如期入住，未入住费用与取消费用相同。\"}]}],\"b_refundable_info\":[{\"b_date_raw\":\"2023-06-02 18:00:00\",\"b_date_until_day_before\":\"2023年6月1日\",\"b_refundable\":1,\"b_timezone\":\"CST\",\"b_date_until_day_before_raw\":\"2023-06-01\",\"b_time\":\"下午6:00\",\"b_timezone_offset\":\"28800\",\"b_date\":\"2023年6月2日\"}],\"children_and_bed_policy_rules\":{\"allows_extra_beds\":0,\"min_children_age\":0,\"age_considered_as_adult\":18,\"num_existing_beds\":1,\"num_cribs\":0,\"allows_cribs\":0,\"max_occupancy\":2,\"allow_children\":1,\"num_extra_beds\":0,\"only_free_existing_bed_rules\":1,\"allow_existing_beds\":1,\"allow_crib_and_extra_bed\":0,\"age_intervals\":[]},\"b_room_name\":\"标准双人或双床间 \",\"b_max_guests\":2,\"b_nr_rooms\":\"2\",\"b_pgid\":246088447,\"b_room_id\":468542801,\"b_differing_policies\":[],\"b_pt_type_id\":1,\"b_is_non_refundable\":0,\"b_taxes_and_service_charge\":\"不包括6 % 的增值税 。 不包括10 % 的住宿方服务费 。 城市税：不适用\",\"b_cancel_policy\":\"截至入住当日18:00，可免费取消。 入住日当天18:00后如取消订单，您需要支付订单全额。 如果未如期入住，未入住费用与取消费用相同。\",\"b_is_prepay_required\":0}],\"b_charges_hotel_sum_per_person_raw\":0.0,\"b_cancellation_limit_until_is_midnight\":\"\",\"b_mastercard_rate\":0,\"b_facilities\":[{\"_name\":\"淋浴\",\"b_name\":\"淋浴\",\"b_id\":4},{\"_name\":\"电视\",\"b_name\":\"电视\",\"b_id\":8},{\"_name\":\"电话\",\"b_name\":\"电话\",\"b_id\":9},{\"_name\":\"空调\",\"b_name\":\"空调\",\"b_id\":11},{\"_name\":\"吹风机\",\"b_name\":\"吹风机\",\"b_id\":12},{\"b_name\":\"唤醒服务/闹钟\",\"_name\":\"唤醒服务/闹钟\",\"b_id\":13},{\"b_id\":23,\"b_name\":\"书桌\",\"_name\":\"书桌\"},{\"b_name\":\"免费洗浴用品\",\"_name\":\"免费洗浴用品\",\"b_id\":27},{\"_name\":\"卫生间\",\"b_name\":\"卫生间\",\"b_id\":31},{\"b_id\":43,\"b_name\":\"拖鞋\",\"_name\":\"拖鞋\"},{\"b_id\":69,\"_name\":\"浴缸或淋浴\",\"b_name\":\"浴缸或淋浴\"},{\"_name\":\"平板电视\",\"b_name\":\"平板电视\",\"b_id\":75},{\"b_id\":77,\"_name\":\"沙发\",\"b_name\":\"沙发\"},{\"b_name\":\"隔音\",\"_name\":\"隔音\",\"b_id\":79},{\"_name\":\"木质/镶木地板\",\"b_name\":\"木质/镶木地板\",\"b_id\":82},{\"b_id\":83,\"_name\":\"唤醒服务\",\"b_name\":\"唤醒服务\"},{\"b_id\":86,\"_name\":\"电烧水壶\",\"b_name\":\"电烧水壶\"},{\"_name\":\"额外收费的毛巾/床单\",\"b_name\":\"额外收费的毛巾/床单\",\"b_id\":91},{\"b_name\":\"清洁用品\",\"_name\":\"清洁用品\",\"b_id\":116},{\"b_id\":124,\"b_name\":\"毛巾\",\"_name\":\"毛巾\"},{\"_name\":\"高层由电梯直达\",\"b_name\":\"高层由电梯直达\",\"b_id\":132},{\"b_name\":\"整间住宿均设无障碍通道，方便残疾客人使用\",\"_name\":\"整间住宿均设无障碍通道，方便残疾客人使用\",\"b_id\":134},{\"b_id\":138,\"_name\":\"衣架\",\"b_name\":\"衣架\"},{\"b_id\":140,\"b_name\":\"晾衣架\",\"_name\":\"晾衣架\"},{\"b_id\":141,\"_name\":\"卫生纸\",\"b_name\":\"卫生纸\"},{\"b_id\":150,\"_name\":\"步入式淋浴\",\"b_name\":\"步入式淋浴\"},{\"_name\":\"瓶装水\",\"b_name\":\"瓶装水\",\"b_id\":167},{\"b_id\":170,\"_name\":\"垃圾桶\",\"b_name\":\"垃圾桶\"},{\"b_id\":176,\"_name\":\"牙刷\",\"b_name\":\"牙刷\"},{\"b_id\":177,\"_name\":\"洗发水\",\"b_name\":\"洗发水\"},{\"b_id\":184,\"_name\":\"床头插座\",\"b_name\":\"床头插座\"},{\"b_name\":\"适配器\",\"_name\":\"适配器\",\"b_id\":185},{\"b_id\":186,\"b_name\":\"羽绒枕\",\"_name\":\"羽绒枕\"},{\"_name\":\"烟雾报警器\",\"b_name\":\"烟雾报警器\",\"b_id\":201},{\"b_id\":204,\"b_name\":\"刷卡进门\",\"_name\":\"刷卡进门\"},{\"b_id\":208,\"_name\":\"窗\",\"b_name\":\"窗\"}],\"b_room_name\":\"标准双人或双床间 \",\"b_u_price_selected_currency_without_currency_symbol\":\"325.00\",\"b_is_fantasyflex\":0,\"b_u_price_selected_currency_unformatted\":\"325.00\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"mealplan_message\":[{\"b_is_mealplan_included\":1,\"content\":\"房价含早餐\"}],\"b_bed_type\":[{\"b_desc_imperial\":\"宽 35-51 英寸\",\"b_localized_description\":\"宽 90-130 厘米\",\"b_count\":2,\"b_name_alternative\":\"单人床\",\"b_description\":\"宽 90-130 厘米\",\"b_name_withnumber\":\"2张单人床\",\"b_bedtype_id\":1,\"b_type\":\"单人床\"},{\"b_name_alternative\":\"大号双人床\",\"b_count\":1,\"b_desc_imperial\":\"宽 60-70 英寸\",\"b_localized_description\":\"宽 151-180 厘米\",\"b_description\":\"宽 151-180 厘米\",\"b_type\":\"大号床（特大号床）\",\"b_name_withnumber\":\"1张大号双人床\",\"b_bedtype_id\":6}],\"b_roomtype_id\":24,\"b_business_rate\":0,\"b_max_persons\":2,\"b_charges_has_excluded_per_person\":0,\"b_cancellation_timezone_offset\":\"28800\",\"b_charges_user_currency_code\":\"CNY\",\"b_ukraine_refugee_rate\":0,\"b_included_products_data\":{\"benefits_count\":0,\"discounts\":{},\"sorted_benefits\":[],\"benefits\":{}},\"b_room_size_feet2\":301,\"b_description\":\"这间双床/双人间提供空调、平板电视和沙发。\",\"b_photo\":{\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"847\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_created\":null,\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max400\":400,\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max1024x768\":678,\"b_dimension_height_max320x190\":190,\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"397\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_270x200\":\"/xdata/images/hotel/270x200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max600\":397,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"678\\\"\",\"b_dimension_height_max400\":264,\"b_uri_square200\":\"/xdata/images/hotel/square200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max300\":300,\"b_uri_square60\":\"/xdata/images/hotel/square60/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max400\":\"/xdata/images/hotel/max400/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max320x190\":286,\"b_dimensions_html_max320x190\":\" width=\\\"286\\\" height=\\\"190\\\"\",\"b_dimension_height_max300\":198,\"b_ranking\":42,\"b_dimension_height_max1280x900\":847,\"b_uri_square40\":\"/xdata/images/hotel/square40/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max400\":\" width=\\\"400\\\" height=\\\"264\\\"\",\"b_uri_end\":\"/230/230335731.jpg\",\"b_uri_org\":\"/xdata/images/hotel/org/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_id\":230335731,\"b_category\":null,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"198\\\"\",\"b_dimension_width_max600\":600,\"b_uri_square90\":\"/xdata/images/hotel/square90/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024},\"b_cancellation_time_day_before\":\"下午6:00\",\"b_cancellation_timezone_until\":\"CST\",\"b_charges_hotel_sum_possible_raw\":53.95,\"b_real_room_id\":468542801,\"b_cancellation_limit_from\":\"2023年4月25日 上午11:18\",\"b_charges_has_excluded_mixed\":0,\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_policygroup_id\":246088447,\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_block_id\":\"468542801_246088447_2_1_0\",\"b_charges_all_included\":0,\"b_cancellation_description\":\"免费取消期限：截至入住日当天18:00。\",\"b_days_until_checkin\":38,\"b_genius_rate\":0,\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"prices_summary\":{},\"b_available_until_days\":null,\"b_cancellation_currency_symbol\":\"CNY\",\"b_charges_hotel_sum_excluded_pretty\":\"53.95元\",\"b_is_male_only\":\"\",\"mealplan_message_long\":[{\"b_is_mealplan_included\":1,\"content\":\"房价包括早餐。\"}],\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"b_bed_type_configuration\":[{\"bed_type\":[{\"desc_imperial\":\"宽 35-51 英寸\",\"bedtype_id\":1,\"name\":\"单人床\",\"count\":2,\"name_en\":\"Single\",\"description\":\"宽 90-130 厘米\",\"name_withnumber\":\"2张单人床\",\"name_alternative\":\"单人床\",\"occupancy\":null,\"configuration_id\":1}]},{\"bed_type\":[{\"bedtype_id\":6,\"name\":\"大号床（特大号床）\",\"desc_imperial\":\"宽 60-70 英寸\",\"count\":1,\"name_en\":\"Large Double\",\"description\":\"宽 151-180 厘米\",\"name_withnumber\":\"1张大号双人床\",\"name_alternative\":\"大号双人床\",\"occupancy\":null,\"configuration_id\":2}]}],\"optional_extras_mealplan\":\"三餐\",\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_is_single_use\":0,\"b_room_item_id\":1,\"b_index\":0,\"b_max_children\":1,\"b_charges_hotel_sum_calculable_raw\":53.95,\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_cancellation_type\":\"free_cancellation\",\"b_is_prepay_required\":0,\"b_last_minute_discount_available\":0,\"b_cancellation_fee\":0,\"on_smp\":1,\"b_displayed_occupancy\":1,\"b_unlimited_free_cancellation\":\"\",\"b_charges_has_included_per_person\":0,\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_reinforcements\":[{\"b_next_price\":\"399.00\",\"b_reinforcement_cheapest_room\":1},{\"b_reinforcement_refundable\":\"2023-06-02T18:00:00\"},{\"b_reinforcement_breakfast_included\":1},{\"b_reinforcement_breakfast_included_unique\":0}],\"b_room_size_m2\":28,\"b_paymentterms\":{\"b_depositterms_id\":152,\"b_noshow_id\":null,\"b_paymentterms_id\":42},\"b_is_high_demand_room\":0,\"b_roominfo_excl\":[{\"name\":\"增值税\"},{\"name\":\"住宿方服务费\"}],\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_is_fflex_for_genius\":0,\"prices\":{\"breakfast\":\"58元\"},\"mealplan_message_short\":[{\"b_is_mealplan_included\":1,\"content\":\"早餐\"}],\"b_max_stays_for_lowest_price\":6,\"b_cancellation_limit_until_epoch\":1685700000,\"b_surface_in_m2\":28,\"b_room_name_real\":\"标准双人或双床间 \",\"b_cancellation_limit_until_is_noon\":\"\",\"b_cancellation_info\":[{\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_cancellation_time_day_before\":\"下午6:00\",\"b_cancellation_timezone_until\":\"CST\",\"b_cancellation_limit_until_is_noon\":\"\",\"b_cancellation_limit_from\":\"2023年4月25日 上午11:18\",\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_cancellation_timezone_from\":\"CST\",\"b_cancellation_description\":\"免费取消期限：截至入住日当天18:00。\",\"b_cancellation_fee\":0,\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"on_smp\":1,\"b_unlimited_free_cancellation\":\"\",\"b_cancellation_limit_from_short\":\"2023/4/25 上午11:18\",\"b_cancellation_currency_symbol\":\"CNY\",\"b_cancellation_limit_until_is_midnight\":\"\",\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"b_cancellation_fee_pretty\":\"0元\",\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"b_cancellation_first_rule\":1,\"b_cancellation_currency_code\":\"CNY\",\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_cancellation_timezone_offset\":\"28800\",\"b_cancellation_limit_until_epoch\":1685700000},{\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_cancellation_currency_code\":\"CNY\",\"b_cancellation_limit_until_epoch\":1685700000,\"b_cancellation_timezone_offset\":\"28800\",\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_cancellation_limit_until_is_midnight\":\"\",\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"b_cancellation_fee_pretty\":\"325元\",\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"b_cancellation_timezone_from\":\"CST\",\"b_cancellation_description\":\"入住日当天18:00后如果取消订单，您需要支付首晚房费。 如果未如期入住，未入住费用与取消费用相同。\",\"b_cancellation_limit_from_short\":\"2023/6/2 下午6:00\",\"b_cancellation_currency_symbol\":\"CNY\",\"b_unlimited_free_cancellation\":\"\",\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"on_smp\":1,\"b_cancellation_fee\":\"325\",\"b_cancellation_time_day_before\":\"下午6:00\",\"b_cancellation_timezone_until\":\"CST\",\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_cancellation_limit_until_is_noon\":\"\",\"b_cancellation_limit_from\":\"2023年6月2日 下午6:00\"}],\"b_bundle_id\":0,\"b_cancellation_non_refundable\":\"\",\"b_cancellation_partially_refundable\":1,\"b_charges_user_sum_excluded_pretty\":\"53.95元\",\"b_name_app\":null,\"b_u_price_hotel_currency_without_currency_symbol\":\"325.00\",\"b_available_until_globalized\":null,\"b_free_cancellation_days\":38,\"b_apartment_room_config\":null,\"b_charges_has_excluded_by_property\":0,\"b_selected_rate_ids_per_night\":[13889234],\"b_charges_hotel_sum_conditional_raw\":0.0,\"only_breakfast\":1,\"b_name_gen\":\"标准双人或双床间 \",\"b_all_photos\":[{\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"847\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_created\":null,\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max400\":400,\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max1024x768\":678,\"b_dimension_height_max320x190\":190,\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"397\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_270x200\":\"/xdata/images/hotel/270x200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max600\":397,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"678\\\"\",\"b_dimension_height_max400\":264,\"b_uri_square200\":\"/xdata/images/hotel/square200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max300\":300,\"b_uri_square60\":\"/xdata/images/hotel/square60/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max400\":\"/xdata/images/hotel/max400/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max320x190\":286,\"b_dimensions_html_max320x190\":\" width=\\\"286\\\" height=\\\"190\\\"\",\"b_dimension_height_max300\":198,\"b_ranking\":42,\"b_dimension_height_max1280x900\":847,\"b_uri_square40\":\"/xdata/images/hotel/square40/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max400\":\" width=\\\"400\\\" height=\\\"264\\\"\",\"b_uri_end\":\"/230/230335731.jpg\",\"b_uri_org\":\"/xdata/images/hotel/org/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_id\":230335731,\"b_category\":null,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"198\\\"\",\"b_dimension_width_max600\":600,\"b_uri_square90\":\"/xdata/images/hotel/square90/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024},{\"b_dimension_width_max600\":600,\"b_uri_square90\":\"/xdata/images/hotel/square90/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max1024x768\":1024,\"b_dimension_width_max1280x900\":1280,\"b_category\":null,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"168\\\"\",\"b_uri_end\":\"/230/230588940.jpg\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_org\":\"/xdata/images/hotel/org/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_id\":230588940,\"b_dimension_width_max320x190\":320,\"b_dimensions_html_max320x190\":\" width=\\\"320\\\" height=\\\"179\\\"\",\"b_dimension_height_max300\":168,\"b_ranking\":37,\"b_dimension_height_max1280x900\":719,\"b_dimension_width_max300\":300,\"b_uri_square60\":\"/xdata/images/hotel/square60/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"337\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_height_max600\":337,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"575\\\"\",\"b_dimension_height_max1024x768\":575,\"b_dimension_height_max320x190\":179,\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"719\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_created\":null,\"b_uri_original\":\"/xdata/images/hotel/original/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\"}],\"b_roominfo_all\":[{\"name\":\"不包括 增值税 和 住宿方服务费\"}],\"b_room_id\":\"468542801_246088447_2_1_0\",\"b_cancellation_limit_from_short\":\"2023/4/25 上午11:18\",\"b_translated_bed_options\":[{\"b_value\":0,\"b_detailed_bed_info\":null,\"b_bedtype_id\":null,\"b_translations\":[\"无特别偏好\"],\"b_count\":null,\"b_full_translation\":\"无特别偏好\",\"b_id\":\"1_468542801_246088447_2_1_0\"},{\"b_detailed_bed_info\":[{\"b_bed_name_translated\":\"2张单人床\",\"b_n_beds\":2,\"b_bedtype_id\":1}],\"b_value\":1,\"b_bedtype_id\":1,\"b_translations\":[\"2张单人床\"],\"b_count\":2,\"b_full_translation\":\"2张单人床\",\"b_id\":\"1_468542801_246088447_2_1_0\"},{\"b_translations\":[\"1张大号双人床\"],\"b_bedtype_id\":6,\"b_detailed_bed_info\":[{\"b_bedtype_id\":6,\"b_bed_name_translated\":\"1张大号双人床\",\"b_n_beds\":1}],\"b_value\":2,\"b_id\":\"1_468542801_246088447_2_1_0\",\"b_count\":1,\"b_full_translation\":\"1张大号双人床\"}],\"b_surface_in_feet2\":301,\"mealplan_fake_board_name\":\"breakfast\",\"b_room_privacy_level\":1,\"b_charges_has_excluded_calculable\":1,\"b_is_female_only\":\"\",\"b_price\":\"325.00\",\"breakfast_included\":1,\"b_room_nr\":1,\"amounts\":{\"breakfast\":58.0},\"b_cancellation_first_rule\":1,\"b_available_until\":null,\"b_cancellation_currency_code\":\"CNY\",\"b_u_price\":\"325元\",\"b_cancellation_name\":\"免费取消\",\"b_charges_user_sum_excluded_raw\":\"53.95\"},{\"b_cancellation_type\":\"free_cancellation\",\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_last_minute_discount_available\":0,\"b_is_prepay_required\":0,\"b_unlimited_free_cancellation\":\"\",\"b_cancellation_fee\":0,\"b_displayed_occupancy\":1,\"on_smp\":1,\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_charges_has_included_per_person\":0,\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_reinforcements\":[{\"b_next_price\":\"399.00\",\"b_reinforcement_cheapest_room\":1},{\"b_reinforcement_refundable\":\"2023-06-02T18:00:00\"},{\"b_reinforcement_breakfast_included\":1},{\"b_reinforcement_breakfast_included_unique\":0}],\"b_room_size_m2\":28,\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_paymentterms\":{\"b_noshow_id\":null,\"b_paymentterms_id\":42,\"b_depositterms_id\":152},\"b_is_high_demand_room\":0,\"b_roominfo_excl\":[{\"name\":\"增值税\"},{\"name\":\"住宿方服务费\"}],\"prices\":{\"breakfast\":\"58元\"},\"mealplan_message_short\":[{\"content\":\"早餐\",\"b_is_mealplan_included\":1}],\"b_max_stays_for_lowest_price\":6,\"b_cancellation_limit_until_epoch\":1685700000,\"b_is_fflex_for_genius\":0,\"b_room_name_real\":\"标准双人或双床间 \",\"b_surface_in_m2\":28,\"b_cancellation_non_refundable\":\"\",\"b_cancellation_partially_refundable\":1,\"b_charges_user_sum_excluded_pretty\":\"53.95元\",\"b_name_app\":null,\"b_cancellation_info\":[{\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_cancellation_time_day_before\":\"下午6:00\",\"b_cancellation_timezone_until\":\"CST\",\"b_cancellation_limit_until_is_noon\":\"\",\"b_cancellation_limit_from\":\"2023年4月25日 上午11:18\",\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_cancellation_timezone_from\":\"CST\",\"b_cancellation_description\":\"免费取消期限：截至入住日当天18:00。\",\"b_cancellation_fee\":0,\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"on_smp\":1,\"b_unlimited_free_cancellation\":\"\",\"b_cancellation_limit_from_short\":\"2023/4/25 上午11:18\",\"b_cancellation_currency_symbol\":\"CNY\",\"b_cancellation_limit_until_is_midnight\":\"\",\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"b_cancellation_fee_pretty\":\"0元\",\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"b_cancellation_first_rule\":1,\"b_cancellation_currency_code\":\"CNY\",\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_cancellation_timezone_offset\":\"28800\",\"b_cancellation_limit_until_epoch\":1685700000},{\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_cancellation_datetime\":\"2023-06-02T17:59:00\",\"b_cancellation_currency_code\":\"CNY\",\"b_cancellation_limit_until_epoch\":1685700000,\"b_cancellation_timezone_offset\":\"28800\",\"b_cancellation_limit_until_short\":\"2023/6/2 下午5:59\",\"b_cancellation_limit_until_is_midnight\":\"\",\"b_cancellation_date_day_before\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"b_cancellation_fee_pretty\":\"325元\",\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"b_cancellation_timezone_from\":\"CST\",\"b_cancellation_description\":\"入住日当天18:00后如果取消订单，您需要支付首晚房费。 如果未如期入住，未入住费用与取消费用相同。\",\"b_cancellation_limit_from_short\":\"2023/6/2 下午6:00\",\"b_cancellation_currency_symbol\":\"CNY\",\"b_unlimited_free_cancellation\":\"\",\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"on_smp\":1,\"b_cancellation_fee\":\"325\",\"b_cancellation_time_day_before\":\"下午6:00\",\"b_cancellation_timezone_until\":\"CST\",\"b_cancellation_limit_until_full_datetime\":\"2023年6月2日星期五 下午6:00\",\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_cancellation_limit_until_is_noon\":\"\",\"b_cancellation_limit_from\":\"2023年6月2日 下午6:00\"}],\"b_cancellation_limit_until_is_noon\":\"\",\"b_bundle_id\":0,\"b_charges_has_excluded_by_property\":0,\"b_u_price_hotel_currency_without_currency_symbol\":\"325.00\",\"b_available_until_globalized\":null,\"b_free_cancellation_days\":38,\"b_apartment_room_config\":null,\"b_room_id\":\"468542801_246088447_2_1_0\",\"b_cancellation_limit_from_short\":\"2023/4/25 上午11:18\",\"b_selected_rate_ids_per_night\":[13889234],\"b_charges_hotel_sum_conditional_raw\":0.0,\"only_breakfast\":1,\"b_roominfo_all\":[{\"name\":\"不包括 增值税 和 住宿方服务费\"}],\"b_all_photos\":[{\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"847\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max400\":400,\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_created\":null,\"b_dimension_height_max320x190\":190,\"b_dimension_height_max1024x768\":678,\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"397\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_270x200\":\"/xdata/images/hotel/270x200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max600\":397,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_square200\":\"/xdata/images/hotel/square200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"678\\\"\",\"b_dimension_height_max400\":264,\"b_dimension_width_max300\":300,\"b_uri_max400\":\"/xdata/images/hotel/max400/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_square60\":\"/xdata/images/hotel/square60/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_ranking\":42,\"b_dimension_height_max1280x900\":847,\"b_dimension_width_max320x190\":286,\"b_dimensions_html_max320x190\":\" width=\\\"286\\\" height=\\\"190\\\"\",\"b_dimension_height_max300\":198,\"b_uri_end\":\"/230/230335731.jpg\",\"b_dimensions_html_max400\":\" width=\\\"400\\\" height=\\\"264\\\"\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_org\":\"/xdata/images/hotel/org/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_id\":230335731,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"198\\\"\",\"b_category\":null,\"b_uri_square90\":\"/xdata/images/hotel/square90/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024,\"b_dimension_width_max600\":600},{\"b_uri_org\":\"/xdata/images/hotel/org/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_end\":\"/230/230588940.jpg\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_id\":230588940,\"b_ranking\":37,\"b_dimension_height_max1280x900\":719,\"b_dimension_height_max300\":168,\"b_dimensions_html_max320x190\":\" width=\\\"320\\\" height=\\\"179\\\"\",\"b_dimension_width_max320x190\":320,\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024,\"b_uri_square90\":\"/xdata/images/hotel/square90/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max600\":600,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"168\\\"\",\"b_category\":null,\"b_dimension_height_max320x190\":179,\"b_dimension_height_max1024x768\":575,\"b_uri_square150\":\"/xdata/images/hotel/square150/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"719\\\"\",\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_original\":\"/xdata/images/hotel/original/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_created\":null,\"b_uri_square60\":\"/xdata/images/hotel/square60/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max300\":300,\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"337\\\"\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"575\\\"\",\"b_dimension_height_max600\":337,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\"}],\"b_name_gen\":\"标准双人或双床间 \",\"b_surface_in_feet2\":301,\"b_translated_bed_options\":[{\"b_value\":0,\"b_detailed_bed_info\":null,\"b_translations\":[\"无特别偏好\"],\"b_bedtype_id\":null,\"b_full_translation\":\"无特别偏好\",\"b_count\":null,\"b_id\":\"2_468542801_246088447_2_1_0\"},{\"b_id\":\"2_468542801_246088447_2_1_0\",\"b_full_translation\":\"2张单人床\",\"b_count\":2,\"b_bedtype_id\":1,\"b_translations\":[\"2张单人床\"],\"b_value\":1,\"b_detailed_bed_info\":[{\"b_bed_name_translated\":\"2张单人床\",\"b_n_beds\":2,\"b_bedtype_id\":1}]},{\"b_count\":1,\"b_full_translation\":\"1张大号双人床\",\"b_id\":\"2_468542801_246088447_2_1_0\",\"b_detailed_bed_info\":[{\"b_bedtype_id\":6,\"b_bed_name_translated\":\"1张大号双人床\",\"b_n_beds\":1}],\"b_value\":2,\"b_bedtype_id\":6,\"b_translations\":[\"1张大号双人床\"]}],\"b_price\":\"325.00\",\"breakfast_included\":1,\"mealplan_fake_board_name\":\"breakfast\",\"b_charges_has_excluded_calculable\":1,\"b_room_privacy_level\":1,\"b_is_female_only\":\"\",\"b_cancellation_currency_code\":\"CNY\",\"b_available_until\":null,\"b_cancellation_first_rule\":1,\"amounts\":{\"breakfast\":58.0},\"b_room_nr\":2,\"b_cancellation_name\":\"免费取消\",\"b_charges_user_sum_excluded_raw\":\"53.95\",\"b_u_price\":\"325元\",\"b_photos\":[{\"b_uri_org\":\"/xdata/images/hotel/org/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_end\":\"/230/230588940.jpg\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_id\":230588940,\"b_ranking\":37,\"b_dimension_height_max1280x900\":719,\"b_dimension_height_max300\":168,\"b_dimensions_html_max320x190\":\" width=\\\"320\\\" height=\\\"179\\\"\",\"b_dimension_width_max320x190\":320,\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024,\"b_uri_square90\":\"/xdata/images/hotel/square90/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max600\":600,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"168\\\"\",\"b_category\":null,\"b_dimension_height_max320x190\":179,\"b_dimension_height_max1024x768\":575,\"b_uri_square150\":\"/xdata/images/hotel/square150/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"719\\\"\",\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_original\":\"/xdata/images/hotel/original/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_created\":null,\"b_uri_square60\":\"/xdata/images/hotel/square60/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimension_width_max300\":300,\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\",\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"337\\\"\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"575\\\"\",\"b_dimension_height_max600\":337,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230588940.jpg?k=5178aba460d3e9e45fa0bf097a8e3d59efd4b13db9cbd4e8fd2e8b8720d61e3c&o=\"}],\"b_charges_has_excluded_incalculable\":0,\"b_select_persons\":[{\"b_value\":\"2\"},{\"b_value\":\"1\",\"b_selected\":1}],\"b_max_child_age\":6,\"b_bundle_name\":\"\",\"b_charges_has_conditional\":0,\"removal_url\":\"https://secure.booking.com/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02&checkout=2023-06-03&hostname=www.booking.com&hotel_id=4685428&installment_count=1&interval=1&nr_rooms_468542801_246088447_2_1_0=1&raf_cm_later=0&room1=A&rt_cheapest_search_price=325&rt_num_blocks=7&rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D&rt_num_rooms=7&rt_pageview_id=20ce16fbc372006c&rt_pos_final=1.1&rt_pos_selected=1&rt_pos_selected_within_room=1&rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778&rt_selected_block_position=1&rt_selected_total_price=650&srpvid=e35016eadacb0185&stage=1\",\"b_charges_hotel_sum_excluded_raw\":53.95,\"b_roominfo_incl\":[],\"b_u_price_hotel_currency_unformatted\":\"325.00\",\"b_name\":\"标准双人或双床间 \",\"b_cancellation_timezone_from\":\"CST\",\"b_policygroup_name\":\"一般\",\"b_mealplan_new_style\":1,\"b_charges_hotel_currency_code\":\"CNY\",\"b_room_room_details\":[{\"b_block_id\":\"468542801_246088447_2_1_0\",\"b_prepay_policy\":\"无需预付。\",\"b_policy_cancellation_rules\":[{\"type\":\"RULESET_CANCELLATIONFEE\",\"name\":\"åæ¶é¢è®¢æ¶è´¹\",\"rule\":[{\"b_good_rule\":2,\"content\":\"截至入住当日18:00，可免费取消。 入住日当天18:00后如取消订单，您需要支付订单全额。 如果未如期入住，未入住费用与取消费用相同。\"}]}],\"b_refundable_info\":[{\"b_date_raw\":\"2023-06-02 18:00:00\",\"b_date_until_day_before\":\"2023年6月1日\",\"b_refundable\":1,\"b_timezone\":\"CST\",\"b_date_until_day_before_raw\":\"2023-06-01\",\"b_time\":\"下午6:00\",\"b_timezone_offset\":\"28800\",\"b_date\":\"2023年6月2日\"}],\"children_and_bed_policy_rules\":{\"allows_extra_beds\":0,\"min_children_age\":0,\"age_considered_as_adult\":18,\"num_existing_beds\":1,\"num_cribs\":0,\"allows_cribs\":0,\"max_occupancy\":2,\"allow_children\":1,\"num_extra_beds\":0,\"only_free_existing_bed_rules\":1,\"allow_existing_beds\":1,\"allow_crib_and_extra_bed\":0,\"age_intervals\":[]},\"b_room_name\":\"标准双人或双床间 \",\"b_max_guests\":2,\"b_nr_rooms\":\"2\",\"b_pgid\":246088447,\"b_room_id\":468542801,\"b_differing_policies\":[],\"b_pt_type_id\":1,\"b_is_non_refundable\":0,\"b_taxes_and_service_charge\":\"不包括6 % 的增值税 。 不包括10 % 的住宿方服务费 。 城市税：不适用\",\"b_cancel_policy\":\"截至入住当日18:00，可免费取消。 入住日当天18:00后如取消订单，您需要支付订单全额。 如果未如期入住，未入住费用与取消费用相同。\",\"b_is_prepay_required\":0}],\"b_mastercard_rate\":0,\"b_facilities\":[{\"_name\":\"淋浴\",\"b_name\":\"淋浴\",\"b_id\":4},{\"b_name\":\"电视\",\"_name\":\"电视\",\"b_id\":8},{\"b_id\":9,\"b_name\":\"电话\",\"_name\":\"电话\"},{\"b_id\":11,\"_name\":\"空调\",\"b_name\":\"空调\"},{\"b_id\":12,\"b_name\":\"吹风机\",\"_name\":\"吹风机\"},{\"b_name\":\"唤醒服务/闹钟\",\"_name\":\"唤醒服务/闹钟\",\"b_id\":13},{\"b_id\":23,\"_name\":\"书桌\",\"b_name\":\"书桌\"},{\"b_id\":27,\"_name\":\"免费洗浴用品\",\"b_name\":\"免费洗浴用品\"},{\"_name\":\"卫生间\",\"b_name\":\"卫生间\",\"b_id\":31},{\"_name\":\"拖鞋\",\"b_name\":\"拖鞋\",\"b_id\":43},{\"b_id\":69,\"b_name\":\"浴缸或淋浴\",\"_name\":\"浴缸或淋浴\"},{\"b_id\":75,\"b_name\":\"平板电视\",\"_name\":\"平板电视\"},{\"b_id\":77,\"b_name\":\"沙发\",\"_name\":\"沙发\"},{\"b_id\":79,\"_name\":\"隔音\",\"b_name\":\"隔音\"},{\"b_name\":\"木质/镶木地板\",\"_name\":\"木质/镶木地板\",\"b_id\":82},{\"_name\":\"唤醒服务\",\"b_name\":\"唤醒服务\",\"b_id\":83},{\"_name\":\"电烧水壶\",\"b_name\":\"电烧水壶\",\"b_id\":86},{\"b_id\":91,\"b_name\":\"额外收费的毛巾/床单\",\"_name\":\"额外收费的毛巾/床单\"},{\"_name\":\"清洁用品\",\"b_name\":\"清洁用品\",\"b_id\":116},{\"b_id\":124,\"b_name\":\"毛巾\",\"_name\":\"毛巾\"},{\"b_name\":\"高层由电梯直达\",\"_name\":\"高层由电梯直达\",\"b_id\":132},{\"b_name\":\"整间住宿均设无障碍通道，方便残疾客人使用\",\"_name\":\"整间住宿均设无障碍通道，方便残疾客人使用\",\"b_id\":134},{\"b_name\":\"衣架\",\"_name\":\"衣架\",\"b_id\":138},{\"b_name\":\"晾衣架\",\"_name\":\"晾衣架\",\"b_id\":140},{\"b_id\":141,\"_name\":\"卫生纸\",\"b_name\":\"卫生纸\"},{\"b_name\":\"步入式淋浴\",\"_name\":\"步入式淋浴\",\"b_id\":150},{\"b_id\":167,\"b_name\":\"瓶装水\",\"_name\":\"瓶装水\"},{\"b_id\":170,\"_name\":\"垃圾桶\",\"b_name\":\"垃圾桶\"},{\"_name\":\"牙刷\",\"b_name\":\"牙刷\",\"b_id\":176},{\"_name\":\"洗发水\",\"b_name\":\"洗发水\",\"b_id\":177},{\"b_id\":184,\"_name\":\"床头插座\",\"b_name\":\"床头插座\"},{\"b_id\":185,\"b_name\":\"适配器\",\"_name\":\"适配器\"},{\"b_id\":186,\"_name\":\"羽绒枕\",\"b_name\":\"羽绒枕\"},{\"b_id\":201,\"b_name\":\"烟雾报警器\",\"_name\":\"烟雾报警器\"},{\"b_id\":204,\"_name\":\"刷卡进门\",\"b_name\":\"刷卡进门\"},{\"b_id\":208,\"b_name\":\"窗\",\"_name\":\"窗\"}],\"b_charges_hotel_sum_per_person_raw\":0.0,\"b_cancellation_limit_until_is_midnight\":\"\",\"mealplan_message\":[{\"b_is_mealplan_included\":1,\"content\":\"房价含早餐\"}],\"b_cancellation_fee_pretty\":\"0元\",\"b_room_name\":\"标准双人或双床间 \",\"b_is_fantasyflex\":0,\"b_u_price_selected_currency_unformatted\":\"325.00\",\"b_u_price_selected_currency_without_currency_symbol\":\"325.00\",\"b_cancellation_date_day_before_full\":\"2023年6月2日周五\",\"b_business_rate\":0,\"b_roomtype_id\":24,\"b_max_persons\":2,\"b_bed_type\":[{\"b_description\":\"宽 90-130 厘米\",\"b_name_withnumber\":\"2张单人床\",\"b_bedtype_id\":1,\"b_type\":\"单人床\",\"b_desc_imperial\":\"宽 35-51 英寸\",\"b_localized_description\":\"宽 90-130 厘米\",\"b_name_alternative\":\"单人床\",\"b_count\":2},{\"b_count\":1,\"b_name_alternative\":\"大号双人床\",\"b_localized_description\":\"宽 151-180 厘米\",\"b_desc_imperial\":\"宽 60-70 英寸\",\"b_description\":\"宽 151-180 厘米\",\"b_type\":\"大号床（特大号床）\",\"b_bedtype_id\":6,\"b_name_withnumber\":\"1张大号双人床\"}],\"b_charges_user_currency_code\":\"CNY\",\"b_ukraine_refugee_rate\":0,\"b_included_products_data\":{\"benefits_count\":0,\"benefits\":{},\"sorted_benefits\":[],\"discounts\":{}},\"b_charges_has_excluded_per_person\":0,\"b_cancellation_timezone_offset\":\"28800\",\"b_description\":\"这间双床/双人间提供空调、平板电视和沙发。\",\"b_cancellation_time_day_before\":\"下午6:00\",\"b_photo\":{\"b_dimensions_html_max1280x900\":\" width=\\\"1280\\\" height=\\\"847\\\"\",\"b_uri_square150\":\"/xdata/images/hotel/square150/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max400\":400,\"b_uri_max1280x900\":\"/xdata/images/hotel/max1280x900/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max320x190\":\"/xdata/images/hotel/max320x190/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_created\":null,\"b_dimension_height_max320x190\":190,\"b_dimension_height_max1024x768\":678,\"b_dimensions_html_max600\":\" width=\\\"600\\\" height=\\\"397\\\"\",\"b_uri_max600\":\"/xdata/images/hotel/max600/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_270x200\":\"/xdata/images/hotel/270x200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max300\":\"/xdata/images/hotel/max300/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_height_max600\":397,\"b_uri_840x460\":\"/xdata/images/hotel/840x460/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_square200\":\"/xdata/images/hotel/square200/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimensions_html_max1024x768\":\" width=\\\"1024\\\" height=\\\"678\\\"\",\"b_dimension_height_max400\":264,\"b_dimension_width_max300\":300,\"b_uri_max400\":\"/xdata/images/hotel/max400/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_square60\":\"/xdata/images/hotel/square60/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_max1024x768\":\"/xdata/images/hotel/max1024x768/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_ranking\":42,\"b_dimension_height_max1280x900\":847,\"b_dimension_width_max320x190\":286,\"b_dimensions_html_max320x190\":\" width=\\\"286\\\" height=\\\"190\\\"\",\"b_dimension_height_max300\":198,\"b_uri_end\":\"/230/230335731.jpg\",\"b_dimensions_html_max400\":\" width=\\\"400\\\" height=\\\"264\\\"\",\"b_uri_square40\":\"/xdata/images/hotel/square40/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_uri_org\":\"/xdata/images/hotel/org/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_id\":230335731,\"b_dimensions_html_max300\":\" width=\\\"300\\\" height=\\\"198\\\"\",\"b_category\":null,\"b_uri_square90\":\"/xdata/images/hotel/square90/230335731.jpg?k=0fd20702d3abc2500b6a62e869d86deb2073cd5bde82487667e804aa2ee8fb35&o=\",\"b_dimension_width_max1280x900\":1280,\"b_dimension_width_max1024x768\":1024,\"b_dimension_width_max600\":600},\"b_cancellation_timezone_until\":\"CST\",\"b_charges_hotel_sum_possible_raw\":53.95,\"b_room_size_feet2\":301,\"b_cancellation_limit_until\":\"2023年6月2日星期五 下午5:59:00\",\"b_policygroup_id\":246088447,\"b_cancellation_limit_until_time\":\"下午6:00\",\"b_block_id\":\"468542801_246088447_2_1_0\",\"b_charges_all_included\":0,\"b_real_room_id\":468542801,\"b_cancellation_limit_from\":\"2023年4月25日 上午11:18\",\"b_charges_has_excluded_mixed\":0,\"b_genius_rate\":0,\"b_cancellation_description\":\"免费取消期限：截至入住日当天18:00。\",\"b_days_until_checkin\":38,\"prices_summary\":{},\"b_available_until_days\":null,\"b_cancellation_currency_symbol\":\"CNY\",\"b_cancellation_limit_until_medium_date\":\"2023年6月2日\",\"mealplan_message_long\":[{\"content\":\"房价包括早餐。\",\"b_is_mealplan_included\":1}],\"b_charges_hotel_sum_excluded_pretty\":\"53.95元\",\"b_is_male_only\":\"\",\"b_cancellation_limit_until_date\":\"2023年6月2日\",\"b_cancellation_datetime_as_is\":\"2023-06-02T18:00:00\",\"optional_extras_mealplan\":\"三餐\",\"b_cancellation_limit_until_long_datetime\":\"2023年6月2日 下午6:00\",\"b_bed_type_configuration\":[{\"bed_type\":[{\"name_withnumber\":\"2张单人床\",\"name_alternative\":\"单人床\",\"occupancy\":null,\"configuration_id\":1,\"bedtype_id\":1,\"name\":\"单人床\",\"desc_imperial\":\"宽 35-51 英寸\",\"count\":2,\"name_en\":\"Single\",\"description\":\"宽 90-130 厘米\"}]},{\"bed_type\":[{\"bedtype_id\":6,\"name\":\"大号床（特大号床）\",\"desc_imperial\":\"宽 60-70 英寸\",\"count\":1,\"name_en\":\"Large Double\",\"description\":\"宽 151-180 厘米\",\"name_withnumber\":\"1张大号双人床\",\"name_alternative\":\"大号双人床\",\"occupancy\":null,\"configuration_id\":2}]}],\"b_is_single_use\":0,\"b_room_item_id\":2,\"b_index\":1,\"b_charges_hotel_sum_calculable_raw\":53.95,\"b_max_children\":1}],\"FE_PBB__PAY_FLEX_EXCLUSIVE_AVAILABLE\":\"0\",\"FE_PBB__ROOM_POLICY_PARTIALLY_REF\":\"0\",\"b_bwallet_total_balance_pretty\":\"\",\"b_dev_server\":0,\"fe_show_payment_timing_non_ref\":\"0\",\"b_is_piyoc_optinout_available\":\"\",\"fe_gtm_src\":\"https://www.googletagmanager.com/gtm.js?id=GTM-5Q664QZ\",\"fe_enable_sca_flow\":\"\",\"FE_PBB__CC_COMPANY_AVAILABLE\":\"0\",\"isGuestPIIRequired\":\"\",\"fe_is_bhpps_bgfe\":\"\",\"sp_use_loyalty_api\":0,\"b_param_wallet_instrument_payment_amount\":\"\",\"b_bwallet_currency\":\"\",\"isZipCodeRequired\":null,\"fe_is_book_action\":1,\"FE_PBB__PAY_NOW_WITH_CC_AVAILABLE\":\"\",\"isOFACMatchRequired\":\"\",\"fe_request_billing_address_for_payment\":\"\",\"fe_field_cc_number_value\":\"\",\"b_hotel_name\":\"Holiday Inn Express Nanjing Dongshan, an IHG Hotel\",\"fe_mdot_exclusive_show_timing\":\"0\",\"fe_is_payments_action\":\"\",\"FE_PBB__WALLET_CAMPAIGN_DISCOUNTS\":\"\",\"b_cancellation_base_price\":{\"price_per_night\":[650],\"currency\":\"CNY\",\"amount\":650},\"fe_show_payment_timing\":\"0\",\"fe_payment_method_selected\":\"creditcard\",\"fe_has_privacy_consent_china\":\"1\",\"b_redirect_url\":\"\",\"fe_fp_url\":\"./script/static/js/refp2_alicloud_a/dd685ff96bc359affdb3a99ff8e8f9b266534ba0.js\",\"fe_use_header_mfe\":0,\"fe_has_wallet_active_discounts\":\"0\",\"isRefactorConfigurationFilesEnabled\":1,\"b_sso_logout_url\":\"https://account.booking.com/sso/logout/v2\",\"fe_is_us_hybrid\":\"\",\"b_bwallet_currency_html_c\":\"\",\"b_oauth_client_id\":\"vO1Kblk7xX9tUn2cpZLS\",\"fe_show_payment_schedule_on_price_details\":\"\",\"b_site_info\":{\"is_iam_auth_allowed\":1,\"is_bookings_owned\":1},\"FE_PBB__PRODUCT_TYPE_IS_EXCLUSIVE\":\"0\",\"FE_PBB__IS_TIMING_BASED_INSTANT_DISCOUNT\":\"1\",\"fe_payment_result\":\"\",\"fe_field_cc_cvc_value\":null,\"FE_PBB__PRE_PAYMENT_NEEDED_AFTER_CANCELLATION\":\"\",\"fe_pay__add_all_cc_types_for_pay_now\":1,\"b_always_require_booker_address\":0,\"bundle_service_mapping\":{},\"fe_show_cvc_mdot_from_start\":\"\",\"FE_PBB__PAYMENT_TIMING_CHOICE_AVAILABLE\":\"\",\"fe_payplatform\":\"\",\"b_require_billing_address_house_number\":\"\",\"FE_PBB__ROOM_POLICY_FLEX\":\"1\"}' || '{}');
            Object.assign(B.env, exportedVars);
          })();
        </script>
        -->
				<script
					src="./script/static/js/main_cn_alicloud_a/5a592a123d4c7bbd3e334e1a8e8526bca30aea75.js"
					crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script
					src="./script/static/js/calendar2_legacy_alicloud_a/f137d86a00a91a0237118704ad06ee2f87a9a3f8.js"
					crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script crossorigin type="text/javascript"
					src="./script/static/js/sp-on-maps_alicloud_a/d30eef4dc5202875d4c3301b8a0e8ff09f9a0e28.js"
					nonce="ybUYWKfiYBp3lUr"></script>
				<script nonce="ybUYWKfiYBp3lUr">
          B.env.is_rooms_table_splitter = true;
        </script>
				<script
					src="./script/static/js/searchbox_alicloud_a/f37d10ad9271707442b5c0b09ae622b711f498d2.js"
					crossorigin nonce="ybUYWKfiYBp3lUr"></script>
				<script nonce="ybUYWKfiYBp3lUr">
          booking.ensureNamespaceExists('env');
          booking.env.b_map_center_latitude = 31.98425;
          booking.env.b_map_center_longitude = 118.87721;
          booking.env.b_map_google_static_thumbnail_zoom_level = 14;
          booking.env.b_hotel_id = '4685428';
          booking.env.b_query_params_no_ext = '?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&';
          booking.env.b_server_role = 'book';
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          booking.env.b_url_start = 'https://secure.booking.com';
          booking.env.bp_has_left_threshold = 1;
          booking.env.b_prompt_text = "姓（拼音或英语） 名（拼音或英语）";
          booking.env.b_prompt_text_email = "电子邮箱地址";
          // Counting login page visitors
          B.env.static_hostnames = ['./script'];
          var calendar = new Object();
          var tr = new Object();
          tr.nextMonth = "下个月";
          tr.prevMonth = "上个月";
          tr.closeCalendar = "关闭日历";
          tr.pressCtlD = "请按control-p或在您的浏览器上选择书签/添加或者收藏夹/添加。";
          tr.pressCtlP = "请按control-p，或者在您的浏览器上选择文件/打印。";
          tr.url = "https://secure.booking.com/book.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&checkin=2023-06-02;checkout=2023-06-03;hostname=www.booking.com;hotel_id=4685428;installment_count=1;interval=1;nr_rooms_468542801_246088447_2_1_0=2;raf_cm_later=0;room1=A;rt_cheapest_search_price=325;rt_num_blocks=7;rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D;rt_num_rooms=7;rt_pageview_id=20ce16fbc372006c;rt_pos_final=1.1;rt_pos_selected=1;rt_pos_selected_within_room=1;rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778;rt_selected_block_position=1;rt_selected_total_price=650;srpvid=e35016eadacb0185;stage=1&";
          tr.title = "Booking.com 欢迎";
          tr.icons = "./script/static/img";
          var months = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'];
          var $t_hotels = '酒店'.toLowerCase();
          var $t_hotels_around = '附近的住宿'.toLowerCase().replace(/ /g, '&#160;');
          var b_today = "今天";
          if (document.getElementById) {
            var shown = new Array();
          }
          function blocktoggle(sToggle) {
            var sToggleId = '#blocktoggle' + sToggle;
            $(sToggleId).toggle();
          }
          function blockdisplay(i) {
            var body = $(document.body);
            if (document.getElementById("blockdisplay" + i)) {
              for (var j = 1; j <= 4; j++) {
                if (document.getElementById('blockdisplay' + j)) {
                  document.getElementById('blockdisplay' + j).style.display = (j === i) ? 'block' : 'none';
                }
              }
              body.trigger((i == 4) ? 'ReviewsTab_onOpen' : 'ReviewsTab_onClose')
                .trigger('RT:reset');
              (booking.eventEmitter || $(window))
                .trigger('BLOCKDISPLAY' + i + '.OPEN');
              if (i === 1 && typeof bMovableBookNowButton != "undefined") {
                bMovableBookNowButton.init();
              }
              if (i == 4) {
                $(".toggle_overview").show();
                $(".toggle_review").hide();
              } else {
                $(".toggle_review").show();
                $(".toggle_overview").hide();
              }
            }
          }
          function popup(url, w, h) {
            newWindow = window.open(url, 'popupWindow', 'width=' + w + ',height=' + h + ',menubar=no,toolbar=no,location=no,bookmarks=no,status=no,scrollbars=yes,resizable=yes');
            if (window.focus) {
              newWindow.focus();
            }
          }
          booking.ensureNamespaceExists('env');
          booking.env.b_checkin_date = '';
          booking.env.b_session_checkin_date = '';
          booking.env.b_checkout_date = '';
          booking.env.b_session_checkout_date = '';
          booking.env.b_no_dates_mode = '';
          booking.env.b_months = [{ "b_number": +"4", "name": '4月' }, { "b_number": +"5", "name": '5月' }, { "b_number": +"6", "name": '6月' }, { "b_number": +"7", "name": '7月' }, { "b_number": +"8", "name": '8月' }, { "b_number": +"9", "name": '9月' }, { "b_number": +"10", "name": '10月' }, { "b_number": +"11", "name": '11月' }, { "b_number": +"12", "name": '12月' }, { "b_number": +"1", "name": '1月' }, { "b_number": +"2", "name": '2月' }, { "b_number": +"3", "name": '3月' }, { "b_number": +"4", "name": '4月' }, { "b_number": +"5", "name": '5月' }, { "b_number": +"6", "name": '6月' }, { "b_number": +"7", "name": '7月' }];
          (function () {
            var months = booking.env.b_months;
            if (months.length >= 12) {
              booking.env.b_months = months.slice(0, 12);
            }
          })();
          booking.env.b_this_year4 = 2023;
          booking.env.b_this_month = 4;
          booking.env.b_this_day = 25;
          booking.env.date_format_acronym = "年月日";
          booking.env.day = "日";
          booking.env.sbox_day = "日";
          booking.env.sbox_month = "月";
          booking.env.error.checkin_date_in_the_past = {
            "name": "您的入住日期已过。请检查您的日期然后重新尝试。"
          };
          booking.env.error.checkin_date_invalid = {
            "name": "您的入住日期无效。"
          };
          booking.env.error.checkin_date_to_far_in_the_future = {
            "name": "您的入住日期离现在太远。请重新尝试。"
          };
          booking.env.error.checkout_date_invalid = {
            "name": "您的离店日期无效。"
          };
          booking.env.error.checkout_date_more_than_30_days_after_checkin = {
            "name": "您的退房日期超过入住日期30晚。您最多只能预订30晚。请输入正确的日期并重新预订。"
          };
          booking.env.error.checkout_date_not_after_checkin_date = {
            "name": "您的退房日期在入住日期之前。请检查您的日期然后重新尝试。"
          };
          booking.env.error.not_specific_enough = {
            "name": "抱歉，我们至少需要名字的一部分才可以开始搜索。"
          };
          booking.env.error.checkin_in_past_error_suggest_tonight = {
            "name": "您所选的入住日期已过。 搜索今晚的酒店或重新填写日期。"
          };
          booking.env.month = "月";
          booking.env.please_enter_your_check_in_date = "请输入您的入住日期";
          booking.env.please_enter_your_check_out_date = "请输入您的退房日期";
          booking.env.s_value_checkin_monthday_is_set = 1;
          booking.env.s_value_checkin_year_month = '';
          booking.env.s_value_checkin_year_month_is_set = 1;
          booking.env.s_value_checkout_monthday_is_set = 1;
          booking.env.s_value_checkout_year_month = '';
          booking.env.s_value_checkout_year_month_is_set = 1;
          booking.env.sb_flexi_srch_month_validation = "请选择月份";
          booking.env.to_check_availability_please_enter_your_dates_of_stay = "请输入日期查看空房情况。";
          booking.env.checkout_date_not_after_checkin_date = "请核查您输入的日期，目前的离店日期要早于登记入住的日期。";
          booking.env.b_room_groups = [':1', ':1'];
          booking.env.b_room_extrabeds = [':', ':'];
          booking.env.b_show_all_inclusive_switch = 1;
          booking.env.error.hp_dates_in_the_past = {
            "name": "请勿选择过去的日期作为入住或退房日期。"
          };
          booking.env.error.hp_same_day_checkin_checkout = {
            "name": "请确认您的退房日期至少在入住日期之后1天。"
          };
          booking.env.b_select = '-- 选择 --';
          booking.env.domain_for_book = 'https://secure.booking.com';
          booking.env.b_query_params_with_lang = '.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&';
          booking.env.b_canonical_url = 'https:&#47;&#47;secure.booking.com&#47;book.zh-cn.html';
          booking.env.b_canonical_url_delimiter = '?';
          booking.env.b_query_params_delimiter = '&amp;';
          booking.env.group_room = '客房';
          booking.env.group_remove = '删除';
          booking.env.s_value_ss = "";
          booking.env.s_value_ss_raw = "";
          booking.env.close_button = "关闭";
          booking.env.next_button = "下一页";
          booking.env.prev_button = "上一页";
          booking.env.book_button = "现在就预订";
          booking.env.date_format_acronym = "年月日";
          booking.env.sunday_first = 1;
          booking.env.experiment_popups_close = '关闭';
          booking.env.a11y_dialog_content_start_text = '开始对话框内容';
          booking.env.a11y_dialog_content_end_text = '结束对话框内容';
          booking.env.city_name_en = '';
          booking.env.b_urlcity = 'nanjing';
          booking.env.b_action_name_is_book = 1;
          booking.env.child_age_text = "输入所有儿童年龄（0 -17）。";
          booking.env.b_stid = 397645;
          booking.env.bs_multi_room = 1;
          booking.env.bs_room_num = 2;
          booking.env.b_new_ga_track = 1;
          booking.env.prd_bpg_overlay_cs_link = '<a class="bui-link" href="https://secure.booking.com/help.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&srpvid=e35016eadacb0185&source=price_match#/?source=price_match" target="_blank" data-ga-track="click|Click|Action: book|hc_entrypoint_price_match">';
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          if (window.performance && performance.setResourceTimingBufferSize) {
            performance.setResourceTimingBufferSize(500);
          }
          ; (function nav_timing(w) { 'use strict'; function validMetric(value) { return !isNaN(value) && value >= 0 && value < 150000 || false; } function callback() { var performance = w.performance || w.mozPerformance || w.msPerformance || w.webkitPerformance || {}, navigation = performance.navigation, timing = performance.timing, hasGetEntries = !!performance.getEntriesByType, userTiming = []; if (typeof timing !== 'object' || typeof navigation !== 'object') { return; } if (timing.loadEventEnd == 0) { setTimeout(callback, 1000); return; } var domain = validMetric(timing.domainLookupEnd - timing.domainLookupStart), connect = validMetric(timing.connectEnd - timing.connectStart), response = validMetric(timing.responseEnd - timing.responseStart), dom = validMetric(timing.domComplete - timing.domLoading), load = validMetric(timing.loadEventEnd - timing.loadEventStart); if (!domain || !connect || !response || !dom || !load || w._phantom || w.callPhantom || w.__phantomas || window.Buffer || window.emit || window.spawn) { return false; } if (typeof RUMSpeedIndex === 'function') { var speedIndex; try { speedIndex = Math.round(RUMSpeedIndex()); } catch (e) { B.reportError && B.reportError(e, 'speedindex'); } if (speedIndex) { if (window.ga) { setTimeout(function () { ga('send', 'timing', 'Performance', 'SpeedIndex', speedIndex, B.env['b_action']); }, 100); } userTiming.push('speedindex:' + speedIndex); } } if (hasGetEntries) { var utMetrics = performance.getEntriesByType('measure') || []; for (var _tmp, _i = 0, _l = utMetrics.length; _i < _l; _i++) { _tmp = utMetrics[_i]; userTiming.push(_tmp['name'] + ':' + Math.round(_tmp['duration'])); } } var navTimesHost = '/navigation_times', navTimesQuery = 'sid=f0f82b20b46106bf73b9641ed765ee02&pid=243e17393fc90031&nts=' + navigation.type + ',' + navigation.redirectCount + ',' + timing.navigationStart + ',' + timing.unloadEventStart + ',' + timing.unloadEventEnd + ',' + timing.redirectStart + ',' + timing.redirectEnd + ',' + timing.fetchStart + ',' + timing.domainLookupStart + ',' + timing.domainLookupEnd + ',' + timing.connectStart + ',' + timing.connectEnd + ',' + timing.secureConnectionStart + ',' + timing.requestStart + ',' + timing.responseStart + ',' + timing.responseEnd + ',' + timing.domLoading + ',' + timing.domInteractive + ',' + timing.domContentLoadedEventStart + ',' + timing.domContentLoadedEventEnd + ',' + timing.domComplete + ',' + timing.loadEventStart + ',' + timing.loadEventEnd + ',0' + '&first=' + '&cdn=ac' + '&dc=5' + '&bo=17' + '&lang=zh-cn' + '&ref_action=book' + '&aid=397645' + '&stype=1' + '&route=' + '&ua=17' + '&ch=d' + '&lt=' + '&css_load=' + (window.mainCssWasLoaded || 0) + '&wn=1'; var navTimesBody = 'utiming=' + userTiming.join(','); var _req = new XMLHttpRequest(); _req.open('POST', navTimesHost + '?' + navTimesQuery); _req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); _req.setRequestHeader('X-Booking-CSRF', 's35HZAAAAAA=7hfe8RL1LU6vHCFfFj1z2ejNgRvPHsTtjvgKGNpTWdkvdnd3dC-EMssLEIUHNSvW1Rr3fOe3u0NqZ7Bkh-b8eqlaQA5OTF84nqfxYMnLsK1fIklHm6L5a2ikGde1EjIFDB-Z_IOtx5ysLuijwgmmWHsUqcHUr5naOjNlirT8ou-GubdL-qsSwo8SC3JpB2P2f0ccJoM7ypyMOAL7'); if (1 && !B.env.fe_force_perf_tracking) { return; } _req.send(navTimesBody); if (window.B && window.B.env) { B.env.fe_force_perf_tracking = false; } }; B.env.fe_new_perf_tracking = { version: '2', web_vitals: '1', first_visit: '', params: { cdn: 'ac', dc: '5', bo: '17', route: '' } }; w.sendNavigationTiming = callback; if (typeof w.attachEvent != "undefined") { w.attachEvent("onload", callback); } else if (w.addEventListener) { w.addEventListener("load", callback, false); } })(window); </script>
				<script nonce="ybUYWKfiYBp3lUr">booking.jstmpl('searchbox_number_of_nights', (function () { var T = ["", "\n", "/private/sbox_dates_num_nights_1/name"], V = ["b_interval", "b_lang"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function searchbox_partial_length_of_stay_string_inc1(s) { s += [T[1], '', T[1], (VS.unshift({ 'num_nights': r.MC(V[0]) }), (VA = r.ME(T[2], r.MB, r.MN, r.MO(r.MC(V[0]), null, T[2]))), VS.shift(), VA), T[1], ''].join(''); return s; } s += T[0]; { VS.unshift({ 'b_interval': r.MC(V[0]), 'b_lang': r.MC(V[1]) }); s = searchbox_partial_length_of_stay_string_inc1(s); VS.shift(); } return s; }; })());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">booking.jstmpl('searchbox_children_ages_tooltip', (function () { var T = ["", "\u003ch3\u003e", "/private/sbox_age_of_child_popup_header/name", "\u003c/h3\u003e\n\u003cp class=\"searchbox_children_ages_tooltip__text\"\u003e", "/private/sbox_age_of_child_popup_best_price/name", "\u003c/p\u003e"], V = [], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function bookings2components_search_group_children_ages_tooltip_inc1(s) { s += [T[1], r.ME(T[2], r.MB, r.MN, null), T[3], r.ME(T[4], r.MB, r.MN, null), T[5]].join(''); return s; } s += T[0]; s = bookings2components_search_group_children_ages_tooltip_inc1(s); return s; }; })());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">booking.jstmpl('searchbox_children_ages_default_12_tooltip', (function () { var T = ["", "/private/groups_sr_undefined_ages_msg/name", "\u003cspan class=\"fly-dropdown-close fly-dropdown-close-icon\"\u003e\u003c/span\u003e\n\u003cp class=\"searchbox_children_age_default_12_dropdown__text\"\u003e", "\u003c/p\u003e\n"], V = ["fe_children_age_warning_text"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function searchbox_sb_gs_empty_children_age_default_12_inc1(s) { s += T[0]; r.MN(V[0], r.ME(T[1], r.MB, r.MN, null)); s += [T[2], r.F['entities'](r.MC(V[0])), T[3]].join(''); return s; } s += T[0]; s = searchbox_sb_gs_empty_children_age_default_12_inc1(s); return s; }; })());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">booking.jstmpl('length_of_stay_detailed', (function () { var T = ["", "\n\u003cspan class=\"c2-calendar-footer__inner-wrap\"\u003e\n", "sbox_calendar_num_nights_2", "\u003c/strong\u003e", "\u003cstrong\u003e", "\n\u003c/span\u003e\n"], V = ["b_interval", "b_checkin_date_formatted", "b_checkout_date_formatted"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function searchbox_partial_length_of_stay_detailed_string_inc1(s) { s += [T[1], (VS.unshift({ 'checkin_date': r.MC(V[1]), 'checkout_date': r.MC(V[2]), 'end_bold': T[3], 'num_nights': r.MC(V[0]), 'start_bold': T[4] }), (VA = r.VP(T[2], r.MO(r.MC(V[0]), null, T[2]))), VS.shift(), VA), T[5]].join(''); return s; } s += T[0]; s = searchbox_partial_length_of_stay_detailed_string_inc1(s); return s; }; })());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">booking.jstmpl('calendar_footer_error_above_30_days', (function () { var T = ["\n", "/private/sbox_error_30_night_res/name", "data-", "=\"", "\"", " data-", "\u003cdiv data-component=\"onview-animate\" data-anim-type=\"fadeInBottom\"\u003e ", "\u003cdiv class=\"fe_banner fe_banner__accessible ", "fe_banner__scale_small ", "fe_banner__w-icon ", "fe_banner__w-dismiss ", "fe_banner__", " ", "fe_banner__w-icon-", "fe_banner__bp fe_banner__inherit_font_size ", " \" ", "id=\"", "\" ", "role=\"alert\"", "\u003e ", "\u003ci class=\"fe_banner__icon ", "\" aria-hidden=\"true\"\u003e\u003c/i\u003e ", "\u003cimg class=\"fe_banner__icon\" src=\"", "\"\u003e ", "\u003cspan class=\"", "fe_banner__icon", " \u003c/span\u003e ", "\u003cdiv class=\"fe_banner__btn_container\"\u003e \u003cdiv class=\"fe_banner__btn_container_content\"\u003e ", "\u003ch3 class=\"fe_banner__title\"\u003e ", " \u003c/h3\u003e ", "\u003cdiv class=\"fe_banner__message\"\u003e ", " \u003c/div\u003e ", "\u003c/div\u003e \u003cdiv class=\"fe_banner__button\"\u003e ", "\u003c/div\u003e ", "\u003cspan class=\"fe_banner__dismiss js-close\" role=\"button\" tabindex=\"1\" aria-label=\"", "/private/a11y_cta_close_banner_new/name", "\"\u003e\u003ci class=\"bicon-btnclose\"\u003e\u003c/i\u003e\u003c/span\u003e ", "0", "red"], V = ["fe_error_message", "fe_banner__data", "fe_banner__data_id", "fe_banner__data_value", "fe_banner__data_id_2", "fe_banner__data_value_2", "fe_banner__data_id_3", "fe_banner__data_value_3", "fe_banner__data_id_4", "fe_banner__data_value_4", "fe_banner__data_id_5", "fe_banner__data_value_5", "fe_banner__animate", "fe_banner__scale", "fe_banner__icon_class", "fe_banner__icon_img_url", "fe_banner__icon_svg", "fe_banner__close_button", "fe_banner__color_scheme", "fe_banner__color_scheme_classes", "fe_banner__icon_size", "b_action", "fe_banner__extra_classes", "fe_banner__id", "fe_banner__aria_alert", "fe_banner__icon_svg_class", "fe_banner__btn_include", "fe_banner__title_text", "fe_banner__message_text", "fe_banner__banners_count"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function bookings2tmpl_inc_modules_banner_inc1(s) { s += ['', T[0]].join(''); if (r.MD(V[28])) { s += T[0]; if (r.MD(V[2])) { s += T[0]; r.MN(V[1], [T[2], r.MB(V[2]), T[3], r.MB(V[3]), T[4]].join('')); s += T[0]; } s += T[0]; if (r.MD(V[4])) { s += T[0]; r.MN(V[1], [r.MB(V[1]), T[5], r.MB(V[4]), T[3], r.MB(V[5]), T[4]].join('')); s += T[0]; } s += T[0]; if (r.MD(V[6])) { s += T[0]; r.MN(V[1], [r.MB(V[1]), T[5], r.MB(V[6]), T[3], r.MB(V[7]), T[4]].join('')); s += T[0]; } s += T[0]; if (r.MD(V[8])) { s += T[0]; r.MN(V[1], [r.MB(V[1]), T[5], r.MB(V[8]), T[3], r.MB(V[9]), T[4]].join('')); s += T[0]; } s += T[0]; if (r.MD(V[10])) { s += T[0]; r.MN(V[1], [r.MB(V[1]), T[5], r.MB(V[10]), T[3], r.MB(V[11]), T[4]].join('')); s += T[0]; } s += T[0]; if (r.MD(V[12])) { s += T[6]; } s += T[7]; { var CV = r.MB(V[13]); if ((r.MJ(CV + "" === "" + "small"))) { s += T[8]; } else { } } if (((r.MJ(r.MB(V[14])) || r.MJ(r.MB(V[15]))) || r.MJ(r.MB(V[16])))) { s += T[9]; } if (r.MD(V[17])) { s += T[10]; } if (r.MJ(r.MB(V[18]))) { s += [T[11], r.F['entities'](r.MC(V[18])), r.F['entities'](r.MC(V[19])), T[12]].join(''); } if ((r.MJ(r.MB(V[14])) && r.MJ(r.MB(V[20])))) { s += [T[13], r.F['entities'](r.MC(V[20])), T[12]].join(''); } if (((r.MJ(r.MC(V[21]) + "" === "" + "book")) || (r.MJ(r.MC(V[21]) + "" === "" + "tpi_book")))) { s += T[14]; } s += [r.F['entities'](r.MC(V[22])), T[15]].join(''); if (r.MD(V[23])) { s += [T[16], r.F['entities'](r.MC(V[23])), T[17]].join(''); } if (r.MD(V[1])) { s += [r.MC(V[1]), T[12]].join(''); } if (r.MD(V[24])) { s += T[18]; } s += T[19]; if (r.MD(V[14])) { s += [T[20], r.F['entities'](r.MC(V[14])), T[21]].join(''); } else if (r.MD(V[15])) { s += [T[22], r.F['entities'](r.MC(V[15])), T[23]].join(''); } else if (r.MD(V[16])) { s += T[24]; if (r.MD(V[25])) { s += r.F['entities'](r.MC(V[25])); } else { s += T[25]; } s += [T[23], r.MC(V[16]), T[26]].join(''); } if (r.MD(V[26])) { s += T[27]; } if (r.MD(V[27])) { s += [T[28], r.MC(V[27]), T[29]].join(''); } if (r.MD(V[28])) { s += [T[30], r.MC(V[28]), T[31]].join(''); } if (r.MD(V[26])) { s += [T[32], r.MC(V[26]), T[31]].join(''); } if (r.MD(V[26])) { s += T[33]; } if (r.MD(V[17])) { s += [T[34], r.ME(T[35], r.MB, r.MN, null), T[36]].join(''); } s += T[33]; if (r.MD(V[12])) { s += T[33]; } s += T[0]; } s += T[0]; r.MN(V[18], undefined); s += T[0]; r.MN(V[14], undefined); s += T[0]; r.MN(V[15], undefined); s += T[0]; r.MN(V[16], undefined); s += T[0]; r.MN(V[20], undefined); s += T[0]; r.MN(V[27], undefined); s += T[0]; r.MN(V[28], undefined); s += T[0]; r.MN(V[26], undefined); s += T[0]; r.MN(V[17], undefined); s += T[0]; r.MN(V[23], undefined); s += T[0]; r.MN(V[22], undefined); s += T[0]; r.MN(V[13], undefined); s += T[0]; r.MN(V[2], undefined); s += T[0]; r.MN(V[3], undefined); s += T[0]; r.MN(V[4], undefined); s += T[0]; r.MN(V[5], undefined); s += T[0]; r.MN(V[6], undefined); s += T[0]; r.MN(V[7], undefined); s += T[0]; r.MN(V[8], undefined); s += T[0]; r.MN(V[9], undefined); s += T[0]; r.MN(V[10], undefined); s += T[0]; r.MN(V[11], undefined); s += T[0]; r.MN(V[19], undefined); s += T[0]; r.MN(V[1], undefined); s += T[0]; r.MN("fe_banner__banners_count", (r.MI(r.MB(V[29])) + r.MI(1))); s += T[0]; if (((r.MJ(r.MC(V[21]) + "" === "" + "book")) && r.MJ(r.track_experiment_stage("HBaMEAbXDMUBdOYZbKZTSfXPRQYO", 2)))) { s += T[0]; } else if (r.MJ(r.track_experiment_stage("HBaMEAbXDMUBdOYZbKZTSfXPRQYO", 1))) { s += T[0]; } s += [T[0], '', T[0]].join(''); return s; } s += T[0]; r.MN(V[0], [T[0], r.ME(T[1], r.MB, r.MN, null), T[0]].join('')); s += T[0]; { VS.unshift({ 'fe_banner__close_button': T[37], 'fe_banner__color_scheme': T[38], 'fe_banner__message_text': r.MB(V[0]) }); s = bookings2tmpl_inc_modules_banner_inc1(s); VS.shift(); } s += T[0]; return s; }; })());
        </script>
				<script type='text/javascript' nonce="ybUYWKfiYBp3lUr">
          booking.jstmpl('lists_recently_viewed', (function () { var T = ["\n", "'", "\n\u003cdiv class=\"save-recently-viewed-container\"\u003e\n\u003cdiv class=\"save-recently-viewed-button-container\"\u003e\n\u003cp\u003e", "\u003c/p\u003e\n\u003cbutton class=\"b-button b-button_primary save-recently-viewed js-save-recently-viewed ", "disabled", "\"\ntype=\"submit\"\ntitle=\"", "\"\u003e\n\u003cspan class=\"b-button__text\"\u003e", "\u003c/span\u003e\n\u003c/button\u003e\n\u003cimg class=\"js-add-recently-viewed-to-list-loader loader g-hidden\" src=\"", "\" /\u003e\n\u003c/div\u003e\n\u003cdiv class=\"save-recently-viewed-container-clear\"\u003e\u003c/div\u003e\n\u003cdiv class=\"wl-oz wl-anim wl-wrap\" id=\"wl-saved-recently-viewed-message\" ", "style=\"height:auto;\"", " \u003e\n\u003cp class=\"wl-msg wl-msg-ok\"\u003e\n\u003cspan class=\"js-added-recently-viewed-message\"\u003e", "\u003c/span\u003e.\n\u003ca href=\"", "\" class=\"js-open-list\"\u003e", "\u003c/a\u003e.\n\u003c/p\u003e\n\u003c/div\u003e\n\u003c/div\u003e\n"], V = ["name_of_list", "recently_viewed_list_name", "recently_viewed_list_button_text", "recently_viewed_list_v3", "recently_viewed_list_saved_text", "recently_viewed_list_variableopt_2", "properties_length", "recently_viewed_list_v4", "recently_viewed_list_variableopt_1", "recently_viewed_list_v2", "success", "wl_recently_viewed_loader", "recently_viewed_list_url", "recently_viewed_list_v7"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; function bookings2components_lists_lists_recently_viewed_lists_recently_viewed_inc1(s) { r.MN(V[0], [T[1], r.MB(V[1]), T[1]].join('')); s += T[0]; if ((r.MJ(r.MB(V[6]) > 1))) { s += T[0]; r.MN(V[2], r.MB(V[3])); s += T[0]; r.MN(V[4], r.MB(V[5])); s += T[0]; } else { s += T[0]; r.MN(V[2], r.MB(V[7])); s += T[0]; r.MN(V[4], r.MB(V[8])); s += T[0]; } s += [T[2], r.MB(V[9]), T[3]].join(''); if (r.MD(V[10])) { s += T[4]; } s += [T[5], r.MB(V[2]), T[6], r.MB(V[2]), T[7], r.MB(V[11]), T[8]].join(''); if (r.MD(V[10])) { s += T[9]; } s += [T[10], r.MB(V[4]), T[11], r.MB(V[12]), T[12], r.MB(V[13]), T[13]].join(''); return s; } s += T[0]; s = bookings2components_lists_lists_recently_viewed_lists_recently_viewed_inc1(s); s += T[0]; return s; }; })());
        </script>
				<script type='text/javascript' nonce="ybUYWKfiYBp3lUr">
          booking.jstmpl('virtual_3d_tour_container', (function () { var T = ["\n\u003cdiv class=\"txp-vt-wrap\"\u003e\n", "\n\u003cdiv class=\"txp-vt-help-wrap\"\u003e\n\u003cspan class=\"txp-vt-help\"\u003e\n\u003ci class=\"txp-vt-help-icn\"\u003e\n", "\n", "streamline/arrow_right", "streamline/arrow_left", "\n\u003c/i\u003e\n\u003cp class=\"txp-vt-help-copy\"\u003e\n", "/private/bhpmc_gallery_virtual_tour_instructions/name", "\n\u003c/p\u003e\n\u003ci class=\"txp-vt-help-icn\"\u003e\n", "\n\u003c/i\u003e\n\u003c/span\u003e\n\u003c/div\u003e\n", "\n\u003ciframe frameborder=\"0\" width=\"", "\" height=\"", "\" allowfullscreen src=\"", "\" \u003e\u003c/iframe\u003e\n\u003c/div\u003e\n"], V = ["lang", "show_help_message", "width", "height", "url"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; s += T[0]; if (r.MD(V[1])) { s += T[1]; if (r.MJ(r.MB(V[0]))) { s += [T[2], (VS.unshift({ 'name': T[3] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } else { s += [T[2], (VS.unshift({ 'name': T[4] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } s += [T[5], r.ME(T[6], r.MB, r.MN, null), T[7]].join(''); if (r.MJ(r.MB(V[0]))) { s += [T[2], (VS.unshift({ 'name': T[4] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } else { s += [T[2], (VS.unshift({ 'name': T[3] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } s += T[8]; } s += [T[9], r.F['entities'](r.MB(V[2])), T[10], r.F['entities'](r.MB(V[3])), T[11], r.F['entities'](r.MB(V[4])), T[12]].join(''); return s; }; })());
        </script>
				<script type='text/javascript' nonce="ybUYWKfiYBp3lUr">
          booking.jstmpl('virtual_tour_help_banner', (function () { var T = ["\n\u003cdiv class=\"txp-vt-help-wrap\"\u003e\n\u003cspan id=", " class=\"txp-vt-help\"\u003e\n\u003ci class=\"txp-vt-help-icn\"\u003e\n", "\n", "streamline/arrow_right", "streamline/arrow_left", "\n\u003c/i\u003e\n\u003cp class=\"txp-vt-help-copy\"\u003e\n", "/private/bhpmc_gallery_virtual_tour_instructions/name", "\n\u003c/p\u003e\n\u003ci class=\"txp-vt-help-icn\"\u003e\n", "\n\u003c/i\u003e\n\u003c/span\u003e\n\u003c/div\u003e\n"], V = ["message_id", "lang"], WV, LV, VA; return function (VS) { var s = '', r = this.fn; s += [T[0], r.F['entities'](r.MB(V[0])), T[1]].join(''); if (r.MJ(r.MB(V[1]))) { s += [T[2], (VS.unshift({ 'name': T[3] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } else { s += [T[2], (VS.unshift({ 'name': T[4] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } s += [T[5], r.ME(T[6], r.MB, r.MN, null), T[7]].join(''); if (r.MJ(r.MB(V[1]))) { s += [T[2], (VS.unshift({ 'name': T[4] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } else { s += [T[2], (VS.unshift({ 'name': T[3] }), (VA = r.HELPER("icon", VS[0])), VS.shift(), VA), T[2]].join(''); } s += T[8]; return s; }; })());
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          (function (B) {
            var tmp = B._onfly || [], fn;
            for (var i = 0, l = tmp.length; i < l; i++) {
              if (typeof tmp[i] === 'function') tmp[i].call(B);
            }
            B._onfly = null;
          }(booking));
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          (function (B) {
            var jstmpl = B && B.jstmpl,
              translations = jstmpl && jstmpl.translations;
            translations && translations.set && translations.set({ "flight_class": { "1": { "name": "经济舱" }, "4": { "name": "头等舱" }, "3": { "name": "商务舱" }, "5": { "name_with_class": "不限" }, "2": { "name": "豪华经济舱" } }, "payment_timing": { "later": { "pay_time": "稍后付款" }, "at_property": { "pay_time": "到店付款" } }, "instay_addons_fine_print": { "fine_print_1": { "property_credit_per_stay": "每位成人每次入住{num_credit}积分，仅可用于符合条件的住宿服务。", "roundtrip_airport_transfer": "联系住宿安排此服务。", "self_parking": "每次入住每间{/bh_unit_type/[unit_type]/name_lc}可自助停放1辆车。", "valet_parking": "每次入住每间{/bh_unit_type/[unit_type]/name_lc}可享1辆车代客泊车服务。", "one_way_airport_transfer": "联系住宿安排此服务。", "breakfast_and_dinner": "为每位客人提供早、晚餐。", "all_meals": "为每位客人提供早、中、晚餐。", "food_drink_credit_per_stay": "每位成人每次入住{num_credit}积分，仅可用于住宿内餐饮。", "general_fine_print": "所有额外服务均由住宿负责。", "dinner": "为每位客人提供晚餐。", "lunch": "为每位客人提供午餐。", "breakfast_and_lunch": "为每位客人提供早、午餐。", "breakfast": "为每位客人提供早餐。" }, "fine_print_3": { "general_fine_print": "联系住宿安排此服务。" }, "fine_print_2": { "food_drink_credit_per_stay": "每间{/bh_unit_type/[unit_type]/name_lc}每次入住{num_credit}积分，仅可用于住宿内餐饮。", "food_drink_credit": "每天每间{/bh_unit_type/[unit_type]/name_lc}{num_credit}积分，仅可用于住宿内餐饮消费。", "property_credit": "每间{/bh_unit_type/[unit_type]/name_lc}每天{num_credit}积分，仅可用于符合条件的住宿服务。", "property_credit_per_stay": "每间{/bh_unit_type/[unit_type]/name_lc}每次入住{num_credit}积分，仅可用于符合条件的住宿服务。", "general_fine_print": "房价内任何未使用的产品和服务不可退款。" } }, "rocketmiles_components": { "language_exception_cobrand_default_1_header_sr": { "header_sr": "{num}家住宿提供{fe_program_name}优惠" }, "language_exception_cobrand_default_1_header_rt": { "header_rt": "{n_rooms}间客房提供{fe_program_name}优惠" }, "cobrand_default": { "header_sr": "{num}家住宿提供{start_bold}特惠{end_bold}", "badge_miles": "赚{reward_amount}里程", "badge_discount_special_offer": "特惠", "header_rt": "来自{start_bold}{fe_program_name}{end_bold}的特惠", "badge_discount": "省{reward_amount}%", "badge_cashback": "返{reward_amount}", "header_tooltip_badge": "Booking.com提供来自值得信赖的合作伙伴{fe_program_name}的特惠，给您更多选择。" } }, "error": { "checkout_date_more_than_30_days_after_checkin": { "name": "您的退房日期超过入住日期30晚。您最多只能预订30晚。请输入正确的日期并重新预订。" }, "checkin_date_invalid": { "name": "您的入住日期无效。" }, "checkout_date_more_than_45_days_after_checkin": { "name": "您的退房日期和入住日期之间超过了45天，您最多只能预订45天。请重新选择日期。" } }, "bh_unit_type": { "home": { "name_lc": "度假屋" }, "bed": { "name_lc": "床" }, "unit": { "name_lc": "房源" }, "chalet": { "name_lc": "木屋" }, "bungalow": { "name_lc": "简易别墅" }, "tent": { "name_lc": "帐篷" }, "dorm": { "name_lc": "宿舍间" }, "cottage": { "name_lc": "乡村别墅" }, "room": { "name_lc": "客房" }, "mobile_home": { "name_lc": "活动房屋" }, "apartment": { "name_lc": "公寓" }, "villa": { "name_lc": "别墅" }, "holiday_home": { "name_lc": "度假屋" }, "suite": { "name_lc": "套房" }, "studio": { "name_lc": "一室公寓" } }, "country": { "ge": { "name": "格鲁吉亚" }, "xa": { "name": "阿布哈茲" } }, "private": { "rewards_bs3_active_promo_block_book_before": "{promise_expiry}前预订", "search_xp_sb_manual_tooltip_month": "月份", "hp_roomtable_rackrate_tooltip_06_dehotel": "您所见的已删除价格以住宿在您入住日期前后30天提供的价格为依据。为确保公平，我们始终使用相同的预订条款（膳食计划、取消政策和房型）进行比较。", "wl_select_a_list": "选择收藏列表", "iq_sbox_cars_date_of_arrival": "还车日期", "deals_page_outstanding": "该日期超值特惠", "validate_tpv_city": "请填写您所在的城市", "ar_islamic_calendar_rajab": "Rajab", "conf_email_num_nights": "{num_nights}晚", "language_exception_sxp_lp_sbox_num_children_1": "{num_children}名儿童", "china_taiwan_copy": "中国台湾", "bp_bwallet_total_price_is_covered_by_wallet": "你所使用的积分已付清全额费用", "sbox_num_adults": "{num_adults}位成人，", "pay_later_no_cc_payment_schedule_on_date": "{date}（含）前需支付", "genius_icon_tooltip": "您可享受该住宿提供的Genius会员9折优惠！", "review_adj_exceptional": "优异的", "maps_sorter_our_top_picks": "热门推荐", "checkout_form_postal_code": "邮编", "deals_flexi_calendar_error": "抱歉，系统错误！请刷新页面或稍后再试", "bh_gwe_sr_privacy_entire_holiday_home_one": "{num}套整租度假屋", "auth_2fa_recovery_flow_confirm_phone_number_explanation": "如果手机不在身边，你可以先确认帐号关联的手机号码，继而进行验证。", "hotel": "酒店", "lists_sign_in_to_see_click_here": "登录", "review_adj_disappointing": "令人失望", "bh_gwe_sr_privacy_shared_bathroom_room_one": "{num}间客房（共享浴室）", "d_dmw_wl_calendar_occupancy_children": "{num_children}名儿童", "please_enter_your_check_out_date": "请输入您的退房日期", "language_exception_bh_gwe_sr_privacy_no_descriptor_bed_in_dorm_1": "宿舍间床位", "bh_gwe_sr_privacy_no_descriptor_mobile_home": "{num}间活动房屋", "lists_cta_button_v2": "查看详情", "validate_tpv_email_confirm": "请确认'电子邮件地址'和'确认电子邮件地址'的内容是一致的", "deals_countdown_singlesday19_days": "天", "checkout_form_cardholder_name": "持卡人姓名", "fam_bp_ceb_block_adult_age": "18+岁", "pb_google_place_bakery": "面包店", "growth_marketing_fake_promo_code_cta": "确定", "loc_social_connect_facebook_sign_up": "使用Facebook帐号注册", "wl_lists_max_tooltip": "所创建收藏列表已达上限", "cdm_web_sr_compare_checkbox_saved": "已保存至：", "d_dmw_wl_calendar_occupancy_adults": "{num_adults}位成人", "ppd_survey_oct18_price_clarity_complete_cta": "完成调查", "pdi_index_popup_wpm_bullet_2": "其他网站的预订链接必须与您订单的入住日与退房日完全相同。", "bh_ss_sxp_index_sbox_calendar_num_week_stay": "（入住{num_weeks}周）", "a11y_hp_bookmarks_added": "住宿已被添加至{list_name}", "validate_tpv_zip": "请输入您的邮政编码", "ar_islamic_calendar_rabiul_akhir": "Rabi'ul Akhir", "msg_lc_notification_in_browser": "客服小伙伴{agentname}", "cashback_badge_tooltip_copy": "最终返现金额可能随汇率有所变化。计算返现时，可能不会计入税费和其他费用。", "generalised_num_properties": "{num_hotels}家住宿", "ar_islamic_calendar_shawwal": "Shawwal", "b_wallet_bp_new_price_applied": "{amount_with_currency} - 抵扣积分后你需支付的剩余金额", "ar_islamic_calendar_dhul_qaadah": "Dhul Qa'adah", "bh_gwe_sr_card_entire_unit_chalet": "{num}套整租木屋", "pb_google_place_train_station": "火车站", "pb_google_place_cafe": "咖啡馆", "pay_loader_1_hpp_subheader_explanation": "你的订单…", "bh_gwe_sr_card_entire_unit_studio": "{num}套整租一室公寓", "bh_bp_dates_num_weeks": "入住{num_weeks}周", "m_wl_saved_to": "已保存至{list_name}", "pb_google_place_bar": "酒吧", "pb_google_place_aquarium": "水族馆", "recently_viewed_list_name_dropdown_explanation_box_subheader": "现在起，你可以查看{start_link}最近浏览住宿{end_link}列表了。", "bh_gwe_sr_privacy_no_descriptor_tent_one": "{num}个帐篷", "lists_map_see_more": "查看更多", "a11y_auth_2fa_recovery_flow_confirm_phone_number_country_select_label": "请选择你的国家或地区", "sxp_sbox_property_count_flexible": "（± {num}）", "loc_sbox_children_age_plural": "儿童年龄（以退房时为准）", "validate_tpv_reason_to_visit": "请选择您的出行理由", "checkout_form_no_name_entered": "请输入持卡人姓名", "name": "姓名", "sbox_error_checkout_after": "退房日期必须在入住日期之后", "iq_sbox_flights_one_way": "单程", "list_dropdown_email_first_name": "名", "pay_loader_3_hpp_subheader_explanation": "前往{/payment_method/[hpp]/name}…", "iq_sbox_error_flights_departure_date_invalid": "出发日期无效", "book_from_list_select_dates": "选择入住日期", "loc_m_social_connect_naver_sign_up": "Sign up with Naver", "beach_review_adj_exceptional": "沙滩优异", "deals_price_watch2": "别错过最低价！设置价格变动提醒，一旦价格变动我们会通知您。", "ar_islamic_calendar_hijri_on": "Show Hijri", "pdi_index_popup_wpm_contact": "记住，预订后请至少在您入住日前24小时与我们联系。", "bh_gwe_sr_privacy_entire_studio": "{num}套整租一室公寓", "pb_google_place_spa": "Spa", "iq_sbox_cars_year_of_departure": "取车年份", "bh_gwe_sr_privacy_entire_villa": "{num}栋整租别墅", "map_distance_from_property": "距离该住宿{distance_localised}", "validate_tpv_billing_address_country": "请输入有效的国家/地区", "m_sxp_calendar_date_select_num_nights": "（{num_nights}晚）", "wallet_price_breakdown_amended_total": "还剩{amount_with_currency}待支付", "china_myreservation_tpurpose_leisure_trip_cta": "标记为自由行", "hp_map_sbox_dropdown_city_centre": "市中心", "iq_sbox_flights_date_of_departure": "出发日期", "gsb_hp_book_now_cta_chalet": "{num}间木屋价格：{group_recommendation_price}", "sbox_adults": "成人", "sbox_error_checkin_future": "请勿选择过去的日期作为入住日期", "recently_viewed_list_v7": "点击查看心愿单列表", "pb_google_place_art_gallery": "艺廊", "pay_loader_3_cash_header_verb": "正在生成", "per_night": "每晚", "language_exception_sbox_calendar_num_nights_2_1": "{start_bold}{checkin_date}{end_bold} - {start_bold}{checkout_date}{end_bold}（入住{num_nights}晚）", "wallet_bp_what_to_pay_after_deduction": "剩余待支付费用", "all_deals_3": "最后一刻优惠", "pay_bs3_validate_cc_type_empty": "请选择你的信用卡类型", "pb_google_place_shopping_mall": "购物中心", "rewards_bs3_active_promotion_block_headline": "促销详情", "groups_sr_undefined_ages_msg": "儿童年龄默认设置为12岁。建议填写随行儿童的真实年龄，这样搜索结果才能更准确哦！", "app_marketing_www_landing_anti_fraud_cta_error_generic": "请再试一次。", "do_you_want_to_save_cta": "添加至我的收藏", "lists_email_invalid_last_name_error": "请输入收件人的姓氏", "pay_bs3_pay_now_explanation_fantasy_flex": "无论何时取消订单，你都将自动获得全额退款。", "list_show_prices_of_all": "查看所有住宿房价", "ar_islamic_calendar_rabiul_awwal": "Rabi'ul Awwal", "language_exception_bh_gwe_sr_privacy_private_suite_1": "私人套房", "vm_bp_benefits_show_details": "显示详情", "deals_price_watch9": "停止关注价格变动", "iq_sbox_accommodation_holiday_rental": "度假屋", "bh_gwe_sr_privacy_private_studio_one": "{num}间私人一室公寓", "beach_review_adj_superb": "沙滩好极了", "lists_wishlist_add_note": "备注", "jun2022_pipl_provide_consent_error_message": "须同意相关项", "language_exception_sxp_lp_sbox_num_children_0": "无儿童", "incentives_coupon_card_no_expiration": "长期有效", "paycom_billing_address_street": "街道地址", "copy_maps_hp_back_to_property": "返回住宿", "geo_beach_food_and_drink": "现场有餐饮", "lp_sxp_sb_calendar_drop_off": "还车", "www_promo_code_bs3_card_cta_more_info": "更多信息", "d_dmw_wl_distance_from_centre": "距离中心{distanceInKm}", "paycom_validate_tpv_billing_address_state_or_province": "请输入有效的省/自治区/直辖市", "msg_lc_tab_new": "（1）新聊天消息 - Booking.com", "list_dropdown_why": "看到心仪的住宿时，可以先收藏一下，方便之后查找。", "msg_multithread_messages_header": "消息", "sr_calendar_min_night_stay_tooltip_info": "最少入住{num_nights}晚", "validate_tpv_billing_address_state_or_province": "请输入有效的省/自治区/直辖市", "bp_tab_dont_forget_your_booking": "别忘了回来继续预订哦", "checkout_form_incorrect_name_type": "请输入卡上所显示的持卡人姓名", "review_adj_average_okay": "可以", "paycom_sca_error_challenge_cancelled_title": "无法向你的银行卡扣款，请重试或使用其他付款方式。", "validate_tpv_address_invalid": "哎呀，你输入了URL...", "cpex_timing_paynow_multi_nr": "你将在完成此预订时通过Booking.com付款。", "pmp_bs3_pay_later_to_property": "稍后向住宿付款", "validate_tpv_cc_name_invalid_latin": "请用字母输入您的姓名", "lists_endorsement_perfect_stay_people_from": "{from_country_name}的客人最爱{ufi_name}的理由：{interest_point}", "rates_rocket_hp_tooltip": "我们的合作供应商{rocket_brand_name}为精选住宿提供专属优惠。", "welcome_to_your_lists_save_them": "收藏喜爱的住宿，方便您下次浏览", "sr_calendar_min_night_stay_footer": "至少预订{num_nights}晚，才可从所选日期开始入住", "filter_hide": "隐藏", "www_surveygizmo_intro_yes": "填写问卷", "checkout_form_incorrect_expiration": "请输入有效期，并确保其在预订后依然有效", "gsb_hp_book_now_cta_alt": "{num}间价格为{group_recommendation_price}", "checkout_form_select_payment_method": "选择一项安全付款方式后继续", "bh_gwe_sr_privacy_shared_dorm_room_one": "{num}间共享宿舍间", "search_box_cal_checkin_date": "入住日期", "ar_islamic_calendar_hijri_off": "Hide Hijri", "pd_rt_credit_message_in_total_column": "可赚{amount_with_currency}积分", "bh_pps_bp_blocked_prop_unable_to_accept": "很抱歉，{property_name}无法接受你的预订。请联系客服获取更多信息。", "list_my_lists_onbaording_box_comp_msg": "选择日期后便可看到已收藏住宿的对应房价，哪一家最物美价廉一眼就知道", "list_wishlist_send_to_friends": "分享列表", "auth_next_step_sms_enter_code_cta": "请输入验证码：", "checkout_form_booking_process_yy": "年（如：18）", "validate_tpv_contact_cs": "请联系客服人员", "a11y_travheader_view_notifications_count": "你有{num_notifications}条未读提醒", "msg_www_ask_a_question": "Booking小助手", "bh_pay_bp_cc": "信用卡仅用于今日验证，全额将在{date}扣除。", "bp_property_address_copied_tooltip": "地址已复制", "www_promo_code_bs3_field_cta_different_replace": "替换", "lists_added_to_x_lists": "已被保存至{num_wishlists_16}份心愿单", "geo_beach_waves_strong": "海浪给力", "language_exception_lists_room_type_lightbox_room_1": "另外1中客房类型", "lists_cta_button_v1": "更多详情", "iq_sbox_error_flights_return_date_invalid": "返程日期无效", "days": "天", "ss_sxp_index_sbox_calendar_num_night_stay": "（入住{num_nights}晚）", "validate_tpv_phone_empty": "请填写您的电话号码", "msg_cta_lets_get_started": "立即开始", "pdi_index_popup_wpm_bullet_bbasic": "您的当前Booking.com订单是代理商房价，即在我们平台上此价格带有“代理商房价”标签（这些价格由Booking.com合作公司提供）或者您是将其他价格与我们平台的这些代理商房价比较。", "iq_sbox_accommodation_num_guests": "{num_guests}位客人", "checkout_form_enter_cvc_code": "请输入3位或4位数安全码", "review_adj_superb": "好极了", "pd_bp_credit_block_hide_details": "收起", "rewards_code_redeem_more_details": "更多信息", "paycom_validate_tpv_billing_address_house_number_or_name": "请输入有效的楼号或住宅名", "pb_google_place_bowling_alley": "保龄球馆", "language_exception_bh_gwe_sr_privacy_no_descriptor_tent_1": "帐篷", "sal_verify_phone_popup_code_expired_code": "验证码已失效，点击“重新发送验证码”后重试。", "dsf_rename_list_dialogue_zhtw": "Enter a new name for this list", "pb_google_place_casino": "赌场", "lists_wishlist_remove_note": "删除", "welcome_to_your_lists_compare": "比较多家住宿，轻松找到理想选择", "please_take_a_few_seconds": "Please take a few seconds to give us your opinion in a {quick_surveyLink}quick survey{endLink}.", "sbox_dates_num_nights_1": "入住{num_nights}晚", "iq_sbox_rental_cars_drop_off_date": "还车日期", "wallet_bp_new_available_balance": "余额更新：{start_bold}{amount_with_currency}{end_bold}", "deals_landing_blackfriday2022_hero_countdown_days": "距离活动结束还剩{num_days}天", "d_bs3_paynow_not_an_option_unable_to_process_name_of_card": "暂不支持使用{credit_card}“现在付款”。如需使用，请到店后向住宿付款。", "gsb_hp_book_now_cta_holiday": "{num}间度假屋价格：{group_recommendation_price}", "checkout_form_payment_method": "付款方式", "sbox_calendar_num_nights_2": "{start_bold}{checkin_date}{end_bold} - {start_bold}{checkout_date}{end_bold}（入住{num_nights}晚）", "d_dmw_wl_simple_steps_2": "发现心仪住宿时，点击心形图标", "bh_bp_wysiwyp_math_cur_guests_x": "{num_guests}人", "m_wl_removed_from": "已从{list_name}移除", "please_enter_your_check_in_date": "请输入您的入住日期", "pb_room_disclaimer": "这是该房型的示例图片，实际入住的客房可能会有所不同。", "checkout_form_less_options": "收起", "m_pay_pmp_cancel_for_free_date": "{date}前（含）可免费取消", "language_exception_bh_gwe_sr_card_entire_unit_chalet_1": "木屋整租", "lists_lightbox_dates_reveal_price_error_message": "抱歉无空房，请重新选择日期。", "language_exception_bh_gwe_sr_card_entire_unit_studio_1": "一室公寓整租", "validate_tpv_cc_month_dates_of_booking": "请确保信用卡有效期在入住日期之后", "d_dmw_wl_just_added_label": "新上线！", "night": "晚", "payin_cc_cvc_error_3_digits": "请输入信用卡背面的3位数安全码", "geo_beach_lifeguard": "现场配救生员", "a11y_booking_price_updated": "价格更新为{price_with_currency}", "iq_sbox_error_cars_departure_date_invalid": "取车日期无效", "real_login_signin": "登录", "vm_single_savings_badge_multiple_deals_description_tooltip_pd": "预订该住宿可享多重优惠和礼遇，原价基础上立省{num_percent}%。", "sxp_lp_sbox_num_adults": "{num_adults}位成人", "ar_islamic_calendar_jumadal_ukhra": "Jumadal Ukhra", "recently_viewed_list_name_dropdown_explanation_box_header": "搜索记录不丢失！", "gsb_hp_book_now_cta_room": "{num}间客房价格：{group_recommendation_price}", "lists_map_empty": "此列表尚无收藏", "bs3_schedule_copy_the_property_will_charge_you": "住宿将向你收取", "sp_gating_sms_third_party_cookies_error_message": "请在浏览器设置中允许第三方Cookie后继续。", "geo_beach_waves_moderate": "海浪一般", "iq_sbox_accomm_check_in": "入住", "ar_islamic_calendar_ramadan": "Ramadan", "cpex_timing_paynow_multi_fc": "你将在完成此预订时通过Booking.com付款。{date}前取消可获全额退款。", "pdi_index_wpm_popup_cant_claim": "什么情况下无法申请差价补偿？", "pay_bs3_validate_cc_number_empty": "请填写有效的信用卡号码", "www_promo_code_bs3_card_condition_type_wc": "入住后返旅行积分", "pb_google_place_car_rental": "租车点", "pp_index_popup_bpg_how_to_1": "发现别家网站提供更便宜的预订价格？", "review_adj_average": "一般", "language_exception_bh_gwe_sr_privacy_private_apartment_1": "私人公寓", "iq_sbox_cars_date_of_departure": "取车日期", "www_msg_welcome_value_prop": "需要停车位？想申请延迟退房？我们的虚拟小助手可以帮助你。", "bh_gwe_sr_privacy_private_suite": "{num}间私人套房", "bp_bs2_vip_email_validation_error": "请登录后继续预订", "sca_error_challenge_cancelled_title_long": "你取消了双重认证", "bp_bs3_wallet_block_amount_left_to_pay": "你将付款{payment_amount}", "list_dropdown_email_last_name_example": "王", "pay_bs3_pay_now_explanation_free_canx": "如果你在{date}{time}前取消订单，你将自动获得全额退款。", "sal_verify_phone_popup_code_issues": "出错了，请稍后再试。", "sal_verify_phone_popup_enter_error": "请输入有效{provider}手机号。", "minutes": "分钟", "wallet_bp_credit_error_more_than_price": "使用的积分数额不得超过总价{amount_with_currency}", "sbox_children": "儿童", "fe_cc_transport_info_general": "交通信息", "checkout_form_invalid_expiration": "请输入正确的有效期", "pay_mi_timing_schedule_summary_today": "今日支付", "seconds": "秒", "ss_search_box_search_property_type": "{property_type}（{destination}）", "ar_islamic_calendar_two_months": "{first_hijri_month}/{second_hijri_month} {year}", "lms_srp_percentage": "包括高达{num_saving}%的最后一分钟的额外优惠！", "iq_sbox_error_cars_1_hour_future": "取车时间距离现在至少需1小时以上。", "bp_china_payment_qr_countdown_min": "{num_min}分", "language_exception_bh_gwe_sr_privacy_no_descriptor_empty_spot_1": "露营空地", "sr_ss_sbox_no_text_error": "请输入想要搜索的内容。", "bh_gsb_search_box_checkout_age_plural": "儿童年龄（{date}当天）", "bh_gwe_sr_privacy_shared_bathroom_room": "{num}间客房（共享浴室）", "paycom_form_new_card": "使用新的银行卡", "bh_pay_bp_pay_date": "{date}当天支付", "bs3_pay_now_pre_partial_subtitle": "{b_companyname}将处理付款事宜。如在{short_date}前改变主意，仍可获全额退款。", "review_adj_pleasant": "令人愉悦", "lists_lightbox_dates_reveal_price": "选择日期查看房价", "rates_rocket_gating_popup_error": "请输入有效的优惠码。", "language_exception_bh_gwe_sr_privacy_shared_bathroom_room_1": "客房（共享浴室）", "validate_tpv_cc_type_payment": "请选择付款方式", "bs3_schedule_copy_at_the_property_youll_pay": "到店需支付", "m_sr_distance_from_centre_city": "距离{city_name}中心地带{distanceInKmFromCentre}", "pay_loader_3_subheader_explanation": "订单中…", "ppd_survey_oct18_price_clarity_hp_outro": "谢谢！", "wl_new_list_hint": "新收藏列表名称", "bs3_paym_pay_now_subtitle": "我们不会向你提供的银行卡收款，银行卡仅用于担保你的预订。", "validate_tpv_dc_issue_number_maestro": "请填写起始日期或者您的Maestro (Switch)卡的卡号。", "gex_google_popup_email": "登录帐号解锁优惠折扣！", "bb_business_or_leasure_cta_lt": "标记为自由行", "bp_bs2_sleeping_quality_reassurance": "其他客人表示在这里睡得很舒服！", "validate_tpv_email_correct": "更正电邮地址", "validate_tpv_email_might_be_wrong": "电子邮件地址可能不正确。如果您确认无误，请忽略此信息。", "sca_error_challenge_failed_generic_title": "银行卡验证失败", "lists_lightbox_dates_reveal_price_cta": "选择日期", "gsb_hp_book_now_cta_apartments": "{num}间公寓价格：{group_recommendation_price}", "paycom_validate_tpv_billing_address_postal_code": "请输入有效的邮编", "language_exception_d_dmw_wl_no_review_score_info_1": "有{min_num_reviews}条点评才能计算评分哦。您在我们网站预订并入住过{property_name}就快来为它打个分吧！", "group_change": "更改", "pay_loader_2_subheader_explanation": "个人信息中…", "b_conf_number_of_rooms": "{numRooms}间客房、", "validate_tpv_email_start_www": "电子邮件地址以 www 开始", "rewards_bs3_aob_rewardvalue_monetary": "入住完成后获返{reward_value}旅行积分", "paycom_billing_address_edit": "编辑", "welcome_to_your_lists_all_devices": "登录之后，即可在所有设备上随时查看收藏", "iq_sbox_error_flights_return_after_departure": "返程日期必须在出发日期之后", "iq_sbox_rental_cars_pick_up_date": "取车日期", "bs3_paym_pay_now_subtitle_mdot": "我们不会向你提供的银行卡收款，银行卡仅用于担保你的预订。", "nights": "晚", "language_exception_bh_gwe_sr_card_entire_unit_villa_1": "别墅整租", "list_not_available": "以下日期暂无空房：", "dda_reset_password_cancel_button": "取消", "msg_lc_toast_open": "打开", "beach_sr_recovery_banner_header": "冲浪、游泳、日落……发现你心目中的理想海滩目的地。", "a11y_index_autocomplete_suggested_destinations": "你可在下列推荐目的地中选择", "paycom_billing_address_state_or_province": "省/自治区/直辖市", "tdot_sr_from_centre_location": "距离市中心{total_distance_from_property}", "msg_lc_alt_messaging_platform": "查看{number}条新消息", "desktop_bs3_do_you_have_a_promo_code": "是否有促销代码可用？", "paycom_billing_address_explanation": "账单地址即银行卡所注册的地址。", "lists_map_list_name_zhtw": "List name", "wishlist_delete_prompt": "您确定要删除吗？操作完成后将无法恢复。", "language_exception_bh_gwe_sr_privacy_entire_studio_1": "整租一室公寓", "my_list_date_button_v2": "选择日期查看房型", "recently_viewed_list_name_header_cta": "显示最近浏览过的住宿", "bp_overview_cta_pay_later_no_cc_variant_1": "预订（付款义务非必须）", "checkout_form_no_postal_code": "请输入邮编", "bh_gwe_sr_privacy_entire_villa_one": "{num}套整租别墅", "pb_google_place_shoe_store": "鞋店", "pay_bs3_pay_now_explanation_generic": "如果取消订单，将根据预订条款中的取消政策退款。", "sbox_error_enter_dest": "请输入目的地", "d_dmw_wl_calendar_occupancy_rooms": "{num_rooms}间客房", "sbox_error_45_night_res": "对不起，您最多只可预订45晚。", "bbt_notifications_new_join_configure_link": "开始定制", "bp_get_last_name": "姓", "d_dmw_wl_simple_steps_1": "搜索住宿", "d_dmw_wl_taxes_and_charges_may_vary": "税费及其他费用可能有变", "paycom_validate_tpv_billing_address_street": "请输入有效的街道地址", "acc_index_choose_checkout_date_arrowkeys": "使用箭头选择你的退房日期", "last_chance": "最后的机会！", "lists_email_success_message": "恭喜！邮件已发送！", "bh_m_sxp_calendar_date_select_num_weeks": "（{num_weeks}周）", "paycom_billing_address_save_card_and_address": "保存银行卡和账单地址，下次付款更快捷", "rates_rocket_discount_badge": "{percent}%折扣", "beach_review_adj_average_passable": "沙滩尚可", "paycom_billing_address_postal_code": "邮编", "pd_bp_credit_block_see_details": "查看详情", "checkout_pay_fe_bp_hybrid_payment_step_2": "请确保完成{pay_method}的全部付款流程以确认预订", "sr_dates_cta_choose_room": "选择客房", "deals_countdown_singlesday19_minutes": "分", "cpex_timing_paylater_multi_fc": "你将通过Booking.com付款，但{charge_date}前我们不会对你的信用卡扣款。你可以在{date}前免费取消。", "months": "个月", "groups_max_occupancy_people": "{num_people}人", "lists_save_this_list_signin": "如果需要保存收藏列表，请先登录或注册帐号。", "list_check_availability_of_all": "查看所有住宿空房情况", "msg_cancelled_booking_label": "已取消", "list_my_lists_onbaording_box_line1": "预订当然要货比三家！你可以在此收藏喜欢的住宿，再进行比较。", "loc_social_connect_facebook_sign_in": "使用Facebook帐号登录", "pay_loader_2_hpp_subheader_explanation": "订单详情…", "top_3_reasons_to_visit": "旅行必体验：{theme_01}、{theme_02}、{theme_03}", "iq_sbox_cars_month_of_arrival": "还车月份", "pb_google_place_night_club": "夜店", "d_dmw_wl_simple_steps_cta": "开始搜索", "pay_bs3_pay_later_schedule_prop_charge": "住宿将向你收取：", "validate_tpv_city_invalid": "哎呀，你输入了URL...", "tt_beach_review_language": "你的语言有{num}条评论", "m_pay_pmp_prepayment_conditions_container": "支付条款：{prepayment_conditions}", "a11y_gallery_image_screenreader_total_in_gallery": "该相册有{number}张照片", "pb_google_place_meal_takeaway": "外卖吧", "pb_google_place_bus_station": "巴士站", "pb_google_place_museum": "博物馆", "iq_sbox_error_flights_group_size": "最多同时能为6人搜索航班。请调整输入的人数。", "checkout_form_3_digit_cvc": "请输入信用卡背面的3位数安全码", "pp_index_popup_bpg_how_to_4": "你也可以联系我们的{start_link}客服{end_link}团队", "msg_entry_notification_unread_message": "您有未读消息", "pay_loader_2_cash_header_verb": "正在确认", "language_exception_tdot_sr_from_centre_location_1": "距离市中心{total_distance_from_property}", "bbt_billing_address_legal_entity_add": "将这个新的公司名称保存至我的商旅帐号", "ppd_survey_oct18_price_clarity_cp_outro": "谢谢您的反馈！", "a11y_hp_bookmarks_button_saved": "该住宿已被保存至{num_lists}份心愿单", "list_dropdown_email_last_name": "姓", "checkout_form_cvc_code_title": "安全码", "validate_tpv_cc1_empty": "请选择您所在的国家/地区", "pex_flights_sb_num_travellers": "{num_travel}位乘客", "bbg_account_activity_no_activity": "没有新的消息", "pay_later_no_cc_bs3_error_message_body": "很抱歉，您的预订未能完成。请稍后重试。", "checkout_form_4_digit_cvc": "请输入信用卡正面的4位数安全码", "sr_just_added_label": "新上线！", "pay_bs3_pay_later_explanation_generic": "扣款日期和取消政策请参见预订条款。", "app_marketing_www_landing_anti_fraud_voice_ac2": "安全检查已完成，请松开按钮并等待。", "validate_tpv_cc_number": "请填入有效信用卡号码", "lists_map_list_name": "收藏列表名", "validate_tpv_billing_address_street": "请输入有效的街道地址", "pay_at_stay_zero": "到店付款", "hotels": "酒店", "list_dropdown_email_first_name_example": "小明", "yes": "是", "lists_room_type_lightbox_room": "其他{number_of_rooms}种房型", "auth_next_step_error_wrong_verification_code": "请输入有效的验证码", "loading": "加载中", "lists_map_from": "起价 {start_style}{localised_price}{end_style}", "d_dmw_wl_num_properties_saved": "已保存{num_properties_saved}家住宿", "rates_rocket_sr_num_results_accom_partners_tooltip": "黄框标记的住宿来自我们的合作供应商{rocket_brand_name}，可为精选住宿提供专属特惠。", "acc_index_checkin_calendar_opened": "你已打开入住日历", "rates_rocket_hp_rooms_table_boost_message": "更多消费，更多奖励", "pb_google_place_restaurant": "餐厅", "geo_beach_swimming": "允许游泳", "validate_tpv_billing_address_postal_code": "请输入有效的邮编", "list_dropdown_email_add_message": "留言", "pmp_bs3_pay_later_with_property": "付款给住宿", "wish_lists_be_almost_first": "成为第一批收藏这家住宿的客人", "hp_saved_to_num_lists": "已被保存至收藏列表{num_wishlists_16}次", "latest_booking_elapsedtime_ago": "最新的预订：{elapsedTime}之前", "a11y_link_content_change_dialog_box": "对话框内容已更改", "geo_hp_nearby_beaches_popular_header": "附近热门沙滩", "rewards_bs3_aob_addcode_samecode_alreadyapplied": "此促销码已使用", "iq_sbox_rental_cars_location": "取车地点", "paycom_billing_address_needed_modal_body_web": "使用此卡结账须提供账单地址。请您提供该信息，或选择其他付款方式。", "language_exception_bh_gwe_sr_card_entire_unit_holidayhome_1": "度假屋整租", "bh_gwe_sr_privacy_no_descriptor_tent": "{num}个帐篷", "pb_google_place_taxi_stand": "出租车候车点", "geo_beach_accessibility": "无障碍设施", "bh_gwe_sr_card_entire_unit_suite": "{num}间整租套房", "list_icon_tooltip_map_view": "地图", "lists_wishlist_write_note": "在此添加备注", "hotel_header_new_num_reviews": "{num_reviews}则评论", "loc_sbox_children_age_singular": "儿童年龄（以退房时为准）", "payin_cc_cvc_error_4_digits": "请输入信用卡正面的4位数验证码", "list_icon_tooltip_list_view": "列表", "deals_price_watch5": "示例", "sr_last_room_reserved": "这家住宿在我们网站已售完", "bs3_pay_later_pre_partial_subtitle": "你的信用卡目前不会被扣款 - 若你在{short_date}后取消订单，则需支付{cancellation_amount}取消费用", "a11y_sr_close_calendar_icon": "关闭日历", "list_my_lists_onbaording_box_save": "收藏", "rewards_bs3_enter_your_promo_code": "请输入促销代码", "sbox_index_gsb_child_age": "年龄（以退房时为准）", "app_marketing_www_landing_anti_fraud_cta": "长按发送链接", "auth_next_step_error_wrong_email": "请输入有效的电子邮件地址", "pb_google_place_grocery_or_supermarket": "超市/杂货店", "ar_islamic_calendar_no_month_change": "{hijri_month} {year}", "check_availability": "查看空房情况", "recently_viewed_list_v3": "将这些住宿收藏至心愿单列表", "bbt_notifications_new_join_configure": "{start_bold}{user_name}{end_bold}刚刚加入了此企业帐号。如需定制此帐号的帐号管理员和差旅管理人权限，请前往设置页面。", "ar_islamic_calendar_warning_message": "Please note : Only the Gregorian date will be submitted in the reservation.", "pay_bs3_validate_tpv_cvc": "请填写你的信用卡安全码（3或4位数，根据信用卡类型而有所不同）", "bp_overview_cta_payment_at_booking_variant_pay": "预订并支付", "web_bp_preauth_bs2_reassurance_banner_amount": "{start_bold}今日无需付款{end_bold}。但为了验证信用卡的有效性并担保你的订单，住宿将在入住前临时冻结你卡中{preauth_amount}的金额。此临时冻结的金额仅做验证使用，并将退还给你。", "bp_overview_cta_book_now": "完成预订", "bp_interstitial_bline_3": "住宿方正在确认您的订单", "bh_gwe_sr_privacy_no_descriptor_bed_in_dorm_one": "{num}个宿舍间床位", "sal_verify_phone_popup_enter_ineligible": "输入{provider}手机号，参与促销。", "msg_entry_meet_assistant_header": "Booking小助手 - 了解一下", "pay_cxl_reassurance_fc_date_only": "计划有变？没问题。{date}{time}前可免费取消。", "msg_entry_cancelled_booking": "目前您暂无任何消息！为下一次旅行预订住宿，任何疑问都能通过Booking小助手得到解答。", "rewards_bs3_promo_code_field_replacing_promotion": "添加的任意促销码将替代活跃促销。", "bp_interstitial_header_2": "等待确认中...", "checkout_success_card_saved": "已保存银行卡", "d_dmw_wl_view_property": "查看住宿", "sxp_sbox_num_properties_left_of_cta_v2": "{num_properties}家住宿匹配搜索", "pb_google_place_zoo": "动物园", "vm_single_savings_badge_name_pd": "优惠{num_percent}%", "auth_2fa_recovery_flow_confirm_phone_number_input_label": "请输入帐号关联的手机号码：", "iq_sbox_flights_current_location": "距离最近的机场", "do_you_want_to_save": "您希望将此住宿添加至收藏吗？", "d_dmw_wl_simple_steps_head": "简单的3个步骤帮助您开始体验：", "list_dropdown_add_email": "Email地址（多个地址请用英文“;”分隔）", "no_review_score_tab_header": "暂无住客评分！", "beach_hp_sidecard_more_nearby_button": "更多周边信息", "deals_price_watch_2": "您将会收到该住宿价格变动的提醒邮件，以确保您能获取最优惠价格。", "bp_for_x_guests_y_nights_1": "（{num_guests}位住客，", "pay_timing_bcom_will_facilitate": "{b_companyname}将协助处理你的付款。", "bp_bs3_wallet_block_pay_now_with_wallet": "只有选择现在付款，才可以使用钱包积分。", "checkout_form_no_cc": "请输入卡号", "language_exception_sbox_dates_num_nights_1_1": "入住1晚", "lists_add_to_list": "收藏住宿", "sca_error_challenge_cancelled_body": "无法向你的银行卡扣款，请重试或使用其他付款方式。", "beach_sr_left_side_module_show_all_beaches": "显示全部{num_beaches}处海滩", "bh_gwe_sr_privacy_shared_dorm_room": "{num}间共享宿舍间", "wallet_bp_now_use_method": "现在可通过{start_bold}PayPal{end_bold}或{start_bold}iDEAL{end_bold}支付剩余费用", "language_exception_bh_gwe_sr_privacy_shared_dorm_room_1": "共享宿舍间", "bhpse_key_collect_error_refresh_page": "系统出错！{link_start}请刷新页面{link_end}。", "checkout_form_expiry_date": "有效期", "list_dropdown_header": "您可以将心仪的住宿保存至收藏列表", "checkout_form_card_number": "卡号", "bh_gwe_sr_privacy_no_descriptor_empty_spot_one": "{num}块露营空地", "web_bp_preauth_bs2_reassurance_banner_total_cost": "{start_bold}今日无需付款。{end_bold}但为验证信用卡的有效性并担保你的订单，住宿将在入住前临时冻结你卡中的订单费用。此临时冻结的金额仅做验证使用，并将退还给你。", "iq_sbox_rentalcars_drop_off": "还车", "pay_loader_3_cash_subheader_explanation": "你的支付码…", "validate_tpv_cc1_cant_book_from_your_country": "您所在国家目前暂时无法预订", "clear_urgency_list_not_available": "以下日期在我们网站上无空房可订：", "msg_web_entry_new_messages": "新消息", "app_marketing_www_landing_anti_fraud_voice_ac1": "长按将链接发送至您的手机。", "bh_gwe_sr_card_entire_unit_holidayhome": "{num}套整租度假屋", "ng_map_price_for_x_nights": "{num_nights}晚的价格", "list_dropdown_email_example": "abc@example.com; abcde@example.com", "validate_tpv_email": "请填入有效的电子邮件地址", "d_dmw_wl_sign_in_save_properties_multi_device_subhead": "{start_link_1}登录{end_link_1}或{start_link_2}注册{end_link_2}即可将已收藏的住宿同步至任何设备", "beach_review_adj_very_good": "沙滩非常好", "search_box_cal_checout_date": "退房日期", "www_promo_code_bs3_card_condition_type_cc": "入住后返至你的信用卡", "beach_sr_loading_sort_beach_distance_header": "正在努力加载，请稍后...", "sbox_age_of_child_popup_header": "特价搜不停", "ar_islamic_calendar_two_years": "{first_hijri_month} {first_year}/{second_hijri_month} {second_year}", "pb_google_place_library": "图书馆", "iq_sbox_rentalcars_pick_up": "取车", "validate_tpv_lastname": "请填写您的姓", "search": "搜索", "bh_gwe_sr_privacy_entire_studio_one": "{num}套整租一室公寓", "pb_google_place_florist": "花店", "lp_sxp_sb_calendar_pick_up": "取车", "bh_pay_bp_stress": "今天就在{b_companyname}支付。", "cpex_partial_insurance_charged_today": "保险费用今日支付", "bh_gwe_sr_privacy_entire_chalet_one": "{num}套整租木屋", "checkout_form_booking_process_mm": "月（如：01）", "paycom_billing_address_country": "国家/地区", "map_marker_current_property": "当前浏览住宿", "review_adj_good": "好", "pay_loader_1_hpp_header_verb": "正在生成", "pay_bs3_pay_now_booking_charges_expl": "{b_companyname}将协助处理收款事宜。你将于今日付款完成预订。", "checkout_form_cvc_tooltip_4_digit": "4位数安全码位于卡号的上方", "bb_business_or_leasure_tooltip_bt": "将此订单标记为商务旅行", "beach_side_header_closest": "最近海滩", "recently_viewed_list_v4": "将这家住宿收藏至心愿单列表", "language_exception_bh_gwe_sr_privacy_entire_bungalow_1": "整租简易别墅", "lists_save_this_list": "保存收藏列表？", "iq_sbox_flights_month_of_departure": "出发月份", "paycom_form_cvc": "信用卡安全码", "bh_gwe_sr_privacy_hotel_room": "{num}间酒店客房", "rewards_bs3_promo_code_field_subtext_you_received": "如果你收到了我们发送的促销码，请在此输入。", "comp_reviews_no_comments": "客人没有留下任何评语。", "pay_bs3_timing_header_psy_autonomyego": "您希望何时付款？", "cdm_hp_quick_share_save": "收藏", "pay_bs3_pay_at_property_explanation_fantasy_flex": "你可以随时免费取消订单，银行卡将用于担保预订。", "search_xp_sb_manual_tooltip_day": "日期", "no": "否", "my_list_date_button_v1": "查看房型与价格", "welcome_to_your_lists": "欢迎来到“我的收藏”！", "geo_beach_waves_calm": "波澜不惊", "bh_gwe_sr_privacy_no_descriptor_bed_in_dorm": "{num}个宿舍间床位", "lists_compare_got_it": "知道了，谢谢！", "www_surveygizmo_intro_no": "等下再说", "iq_sbox_accommodation_where": "目的地？", "ext_modal_loading": "下载中", "auth_next_step_error_wrong_phone": "请输入正确有效的手机号码", "validate_tpv_cc_month_expired": "信用卡已失效，请输入新的信用卡信息。", "pod_sr_split_free_cancellation": "免费取消", "wl_cta_button_table_reserve": "现在就预订", "wl_no_availability_change_dates_cta": "更改日期", "message": "信息", "bp_interstitial_bline_1": "正在向住宿方发送您的订单", "pb_google_place_stadium": "体育场", "wallet_price_breakdown_amended_credit": "已使用{amount_with_currency}积分", "search_guest_type_children": "儿童", "pb_google_place_food": "餐饮", "pay_bs3_pay_later_property_charges_book_conditions_expl": "住宿将处理收款事宜。具体付款日期需视预订政策而定。", "beach_review_adj_disappointing": "沙滩令人失望", "share_list_with_friend_3": "复制链接，分享列表", "m_sxp_calendar_date_select_choose_checkout": "请选择退房日期", "checkout_form_cvc_tooltip_3_digit": "3位数安全码位于信用卡的签名条处", "a11y_hp_bookmarks_add_to": "添加至你的心愿单", "account_sign_in_one_tap_verifying_body": "正在登录{b_companyname}", "hp_book_button_reserve": "现在就预订", "paycom_billing_address": "账单地址", "lp_percent_reserved_2a": "已被预订", "validate_tpv_dc_issue_number_start": "请填入现在有效的起始日期", "loc_social_connect_google_sign_in": "使用Google帐号登录", "geo_beach_water_quality_great": "水质很好", "m_bs2_incorrect_email_domain_bottom": "邮箱地址无效", "bdot_x_rooms_left_urgency": "在我们网站仅剩{num_left}间客房！", "fe_bp_booking_in_progress_button_message_booking": "正在预订...", "gex_sr_sign_in_register_google_title": "登录或注册，解锁优惠折扣！", "web_bp_preauth_bs2_reassurance_banner_first_night": "{start_bold}今日无需付款。{end_bold}但为验证信用卡的有效性并担保你的订单，住宿将在入住前临时冻结你卡中的第一晚房费。此临时冻结的金额仅做验证使用，并将退还给你。", "checkout_form_more_options": "其他选项", "msg_privacy_policy_en_only": "隐私政策和使用条款", "d_dmw_wl_select_dates_view_prices_cta": "选择日期查看价格", "wl_view_list": "查看收藏列表", "ls_error_max_los_exceeded_p2": "仅可预订入住时长不超过{max_num_nights}晚的订单。请更改日期后重试。", "bp_get_email_address": "电子邮箱地址", "book_button_now": "现在预订", "list_dropdown_email_header": "把你的收藏列表“{list_name}”分享给朋友吧", "validate_tpv_billing_address_house_number": "请输入有效的房屋、大楼或公寓门牌号", "ar_islamic_calendar_safar": "Safar", "iq_sbox_accomm_check_out": "退房", "bp_get_confirm_email": "确认电子邮箱地址", "lists_endorsement_perfect_stay": "为您的旅程找一方理想之地！", "bhpmc_gallery_virtual_tour_instructions": "点击并拖动，浏览住宿内观", "auth_2fa_recovery_flow_confirm_phone_number_header": "确认手机号", "pdi_index_popup_wpm_bullet_3": "其他网站的预订链接必须与您订单的取消政策及预订条款完全相同。", "pod_sr_split_no_prepayment_needed": "无需预付", "pay_loader_3__hppheader_verb": "正在跳转", "bh_payments_bp_pay_youll_pay_date": "您将于{short_date_without_year}支付", "msg_lc_notification_name": "客服小伙伴{agentname}", "language_exception_bh_gwe_sr_card_entire_unit_suite_1": "整租套房", "iq_sbox_flights_roundtrip": "往返", "validate_tpv_email_translated": "抱歉，系统仅能识别英文字母拼写的电邮地址。我们尝试为您转换成英文字母，请确认是否正确。", "wish_lists_be_first": "成为第一个收藏这家住宿的客人", "list_my_lists_onbaording_box_comp": "比较", "pay_cxl_reassurance_fc_with_refund": "计划有变？没问题。{date}{time}前取消可自动获得全额退款。", "pdi_index_popup_wpm_bullet_6": "其他网站的预订为特别促销或优惠活动", "paycom_form_toggle_save_card_for_future": "保存银行卡信息，用于以后的预订", "iq_sbox_accommodation_num_rooms": "{num_rooms}间客房", "a11y_index_autocomplete_suggested_destinations_list": "目的地推荐列表", "pay_loader_1_subheader_explanation": "住宿中…", "wl_new_list": "新收藏列表", "bh_gwe_sr_privacy_entire_apartment": "{num}套整租公寓", "free_capitals_cancellation": "免费取消", "pay_bs3_pay_later_explanation_free_canx_prepayment": "你需要支付预付款，详情请参见预订条款。订单{date}前可免费取消。你的银行卡将用于预订担保。", "iq_sbox_error_cars_departure_date_too_far_future": "距离取车日期太远。请再试一次。", "acc_index_checkout_calendar_opened": "你已打开退房日历", "search_xp_sb_manual_tooltip_year": "年", "checkout_form_select_bank_dropdown": "选择银行", "settings_page_error_message": "抱歉出错了。请再试一次。", "validate_tpv_cc1_invalid_country": "国家名称无效", "language_exception_clear_urgency_only_x_rooms_left_1": "我们网站上仅剩{amountRooms}间空房！", "pdi_index_popup_wpm_bullet_4": "完成预订之前您无法通过其他网站确定住宿类型或房型。", "language_exception_bh_gwe_sr_privacy_no_descriptor_mobile_home_1": "活动房屋", "ski_autocomplete_ski_resort": "滑雪度假村", "wl_lists_create_failed": "无法创建新收藏列表，请稍后再试。", "beach_review_adj_pleasant": "沙滩令人愉悦", "rewards_bs3_active_promotion_block_remove_cta": "删除", "iq_sbox_flights_month_of_return": "返程月份", "pdi_index_popup_wpm_checklist_contact_2": "您需要向我们提供其他网站的预订链接，在我们的工作人员核查时，该链接所提供的预订信息须仍然在线有效且可预订。", "b_wallet_bp_available_balance": "可用余额", "language_exception_bh_gwe_sr_privacy_private_room_1": "私人客房", "ls_error_max_los_exceeded_p1": "你的退房日期在入住日期的{max_num_nights}晚后。", "beach_sr_header_see_beaches": "查看所有海滩", "bp_thai_pass_guest_name_form_error": "请添加客人全名。", "ace_wishlist_name_your_list": "为心愿单收藏命名", "iq_sbox_error_flights_departure_date_too_far_future": "距离出发日期太远。请再试一次。", "validate_tpv_phone_invalid": "请填写有效的电话号码", "sbox_num_children": "{num_children}名儿童", "lists_undo_option_basic": "撤销", "pb_google_place_liquor_store": "酒类零售店", "lists_unit_distance_metric": "距离{ufi}中心{distance}公里", "list_my_lists_onbaording_box_book": "预订", "iq_sbox_flights_return": "返程日期", "paycom_billing_address_city": "城市", "sxp_sbox_num_properties_on_cta_v1": "{num_properties}家住宿", "language_exception_bh_gwe_sr_privacy_hotel_room_1": "酒店客房", "geo_beach_water_quality_good": "水质不错", "msg_wlm_screen_start_button_fb": "使用Messenger继续", "bh_gwe_sr_privacy_private_apartment": "{num}间私人公寓", "bh_gwe_sr_privacy_no_descriptor_empty_spot": "{num}块露营空地", "wl_saved_to": "收藏至：{start_link}{list_name}{end_link}", "d_dmw_wl_simple_steps_3": "所有收藏住宿将显示在这里", "pb_google_place_bicycle_store": "自行车店", "deals_countdown_singlesday19_seconds": "秒", "search_box_result_your_search": "Showing results for “{user_searched_term}”", "list_dropdown_email_add_message_example": "我在{b_companyname}收藏了这几家住宿，快来看看吧！", "iq_sbox_error_flights_from_to_same": "“出发地”和“目的地机场”必须不同。", "lists_wishlist_save_note": "保存", "language_exception_bdot_x_rooms_left_urgency_1": "在我们网站仅剩{num_left}间客房！", "cpex_timing_paynow_single_fc": "你将在完成此预订时付款。{date}前取消可获全额退款。", "review_adj_above_average": "高于一般水平", "pay_loader_1_cash_subheader_explanation": "你的订单…", "validate_tpv_zip_invalid": "哎呀，你输入了URL...", "sca_error_challenge_cancelled_title": "银行卡验证已取消", "m_sxp_calendar_date_select_date_range": "{checkin_date} - {checkout_date}", "wl_lists_funnel_edit": "修改", "language_exception_bh_gwe_sr_privacy_entire_chalet_1": "整租木屋", "bp_get_first_name": "名字", "beach_explore_panel_map_header": "{in_city_name}的海滩", "checkout_pay_fe_bp_hybrid_payment_step_3": "如果支付成功，你将获得订单确认信息", "beach_explore_beach_panel_overview_header": "{beach_name}简介", "bh_gwe_sr_privacy_private_suite_one": "{num}间私人套房", "bp_interstitial_header_3": "订单确认中...", "sbox_rooms": "客房", "bh_gwe_sr_privacy_private_apartment_one": "{num}间私人公寓", "share_list_with_friend_3_zhtw": "Copy this link and send it to your friends so they can see my list", "language_exception_bh_gwe_sr_card_entire_unit_apartment_1": "公寓整租", "notifications_percent_reserved_cta": "继续搜索", "destination_finder_theme_endorsements": "{start_style}{num_endorsement_guests}{end_style}位客人将此地标记为{start_style}“{theme_name}”{end_style}", "ar_islamic_calendar_shaban": "Sha'ban", "iq_sbox_flights_year_of_return": "返程年份", "lists_save_this_list_yes": "保存", "auth_2fa_recovery_flow_confirm_phone_number_cta": "确认手机号", "pb_google_place_clothing_store": "服装店", "checkout_pay_bs3_error_no_reason": "很抱歉，您未能成功支付。", "bp_get_country": "国家/地区", "m_sxp_calendar_date_select_choose_checkin": "请选择入住日期", "auth_next_step_send_code_cta": "重新发送验证码", "checkout_form_invalid_cc": "无效卡号", "iq_sbox_flights_from": "出发地", "acc_settings_section_2fa_enrollment_success": "你的帐号现已享受双重验证保护", "d_dmw_wl_sign_in_save_properties_multi_device_head": "随时查看已收藏的住宿", "review_adj_fabulous": "很棒", "deals_price_watch6": "关注价格变动", "paycom_validate_tpv_billing_address_country": "请输入有效的国家/地区", "beach_review_adj_average_okay": "沙滩可以", "review_adj_poor": "差劲", "all_deals_1": "超值好价", "pdi_index_popup_wpm_bullet_1": "其他网站所提供的预订必须为同一住宿且住宿类型相同。", "language_exception_destination_finder_num_endorsements_1": "1人推荐", "bp_overview_cta_payment_later_variant_commitment": "预订（需履行付款义务）", "checkout_experiences_attractions_code_activation_cvc": "CVC验证码", "review_adj_average_passable": "尚可", "rewards_bs3_promo_code_field_subtext_we_sent_you": "我们是否向你发送了促销码？请在此输入。", "pb_google_place_airport": "机场", "pay_loader_2_header_verb": "处理", "beach_review_adj_poor": "沙滩差劲", "msg_wlm_page_privacy_policy_agree": "使用Booking小助手，即代表您同意{start_link}Booking.com隐私政策{end_link}。", "pay_timing_in_person_charges_explanation": "你将在办理入住时支付当地税费/其他费用。具体详情可在价格明细中查看。", "paycom_sca_error_challenge_failed_generic_body": "认证出错，无法扣款。", "pay_later_no_cc_bs3_error_message_header": "抱歉，操作失败", "iq_sbox_flights_departure": "出发日期", "m_wl_saved_view": "查看", "searchbox_error_msg_need_date": "请输入日期查看空房情况。", "list_my_lists_onbaording_box_book_msg": "经过层层筛选的住宿一定是你的心头好，那就赶快预订吧！", "review_adj_very_poor": "非常差", "cpex_timing_paynow_single_title": "立即通过Booking.com付款", "mdot_bh_pps_bp_blocked_requirements_previous_stay": "很抱歉，由于这家住宿要求客人至少在{b_companyname}预订过1晚，我们无法接受你的预订。", "beach_sr_loading_sort_beach_distance_subhead": "优先显示靠近海滩的住宿", "bbt_billing_address_save_checkbox": "将这些信息保存至您的商旅帐号，您可以稍后前往“设置”修改法定公司名称。", "fam_bp_ceb_block_age_checkout": "年龄（退房时）", "rates_rocket_gating_popup_technical_error": "出错了，请稍后再试。", "validate_tpv_cc_name_empty": "请填写持卡人姓名", "rates_rocket_sr_num_results_accom_partners": "已显示所有住宿以及{num}家来自<b>{rocket_brand_name}</b>的专属优惠住宿", "auth_2fa_recovery_flow_code_sent_status": "临时验证码已发送，可用于登录帐号。", "a11y_cta_close_banner_new": "关闭横幅", "sbox_num_adults_no_comma": "{num_adults}位成人", "www_promo_code_entry_point_home": "有奖励可用？", "lists_distance_metric_1": "距离{ufi}中心{distance}英里", "paycom_billing_address_house_number_or_name": "楼号或住宅名", "iq_sbox_rentalcars_current_location": "当前位置", "rewards_bs3_active_promotion_block_add_promo_code_cta": "添加促销码", "checkout_form_new_card": "使用新的银行卡", "sbox_error_num_night_res": "抱歉，预订不可超过{num}晚。", "acc_cal_week_number": "第{week_number}周", "clear_urgency_only_x_rooms_left": "我们网站上仅剩{amountRooms}间空房！", "share_tooltip": "分享", "book_error_intro_message": "哎呀，有几处信息没有填写！请完整填写以下内容并继续：", "loc_bp_cuba_guest_address_error": "请输入该住客地址", "bp_bs3_no_card_faq_comp_set_header": "这些住宿就在附近，没有信用卡也能订！", "cpex_timing_paynow_single_nr": "你将在完成此预订时付款。", "bh_pps_bp_blocked_unable_to_process": "很抱歉，我们无法处理你的预订。请联系客服获取更多信息。", "m_gex_google_popup_email": "登录帐号解锁优惠折扣！", "sr_lists_saved_notification": "已收藏！", "ppd_survey_oct18_price_clarity_progress": "进度", "d_dmw_wl_calendar_occupancy_apply_cta": "开始促销", "pay_loader_2_cash_subheader_explanation": "订单详情…", "validate_tpv_address": "请填写您的地址", "auth_2fa_recovery_flow_code_sent_header": "验证码已发送", "deals_countdown_singlesday19_hours": "时", "pb_google_place_jewelry_store": "珠宝店", "pdi_index_wpm_popup_checklist": "申请差价补偿条件对照表", "bp_interstitial_header_1": "订单发送中...", "bp_and_x_guests_2": "{num_guests}位住客）", "wishlist_create_new": "创建列表", "geo_beach_water_quality_excellent": "水质一流", "checkout_form_invalid_postal_code": "请输入有效的邮编", "price_watch_sorry_1": "抱歉，您最多只能设置{max_number_properties}个价格变动提醒。", "pb_google_place_amusement_park": "游乐园", "pp_index_popup_bpg_how_to_2": "在您的订单确认页面或前往{start_format}查看所有订单{end_format}页面，点击{start_format}发现别家网站价格更便宜？{end_format}。", "room_type_total_price_from": "总价：", "rewards_more_details_ts_and_cs": "条款与条件", "pay_later_with_cc_payment_timing_header_pay_on_date": "{date}付款", "iq_sbox_cars_year_of_arrival": "还车年份", "ar_islamic_calendar_dhul_hijjah": "Dhul Hijjah", "recently_viewed_list_variableopt_1": "这家住宿已收藏至“{name_of_list}”", "pb_google_place_movie_theater": "电影院", "language_exception_price_watch_sorry_1_1": "抱歉，您只能设置1个价格变动提醒。", "pp_index_popup_bpg_how_to_3": "还没有帐号？您可以通过您的订单编号和PIN码登录。", "language_exception_bh_gwe_sr_privacy_entire_villa_1": "整租别墅", "beach_sr_left_side_module_header": "寻找你的心仪海滩", "beach_review_adj_very_poor": "沙滩非常差", "dsf_rename_list_dialogue": "请重新命名收藏列表", "bh_gwe_sr_privacy_private_room": "{num}间私人客房", "paycom_form_cardholder_name": "持卡人姓名", "bh_gwe_sr_privacy_private_studio": "{num}间私人一室公寓", "sca_error_challenge_failed_generic_body": "认证出错，无法扣款。", "sxp_lp_sbox_num_children": "{num_children}名儿童", "beach_explore_panel_ave_cost": "每晚平均房价", "bh_gwe_sr_privacy_entire_holiday_home": "{num}套整租度假屋", "validate_tpv_lastname_invalid": "哎呀，你输入了URL...", "lists_room_type_lightbox_hotel": "其他{number_of_rooms}种可预订房型", "sbox_age_of_child_popup_best_price": "注意啦，这项信息很重要！填写儿童年龄，查看最优价格", "iq_sbox_flights_depart_date": "去程", "language_exception_bh_gwe_sr_privacy_entire_holiday_home_1": "整租度假屋", "bh_gwe_sr_privacy_private_room_one": "{num}间私人客房", "acc_cal_selected_you": "你已选择：", "bh_gwe_sr_privacy_entire_bungalow_one": "{num}套整租简易别墅", "ios_ace_wishlist_unavailable_for_dates": "所选日期内我们网站上已无空房", "acc_cal_open_open": "你已经打开日历", "loc_social_connect_google_sign_up": "使用Google帐号注册", "pay_loader_3_header_verb": "确认", "current_location": "当前位置", "destination_finder_num_endorsements": "{num_endorsement_count}人推荐", "list_my_lists_onbaording_box_save_msg": "看到喜欢的住宿就先收藏起来，之后有时间可以进一步挑选，订一家最满意的", "d_dmw_wl_no_review_score_info": "有{min_num_reviews}条点评才能计算评分哦。您在我们网站预订并入住过{property_name}就快来为它打个分吧！", "bp_overview_cta_payment_later_variant_obligation": "预订（需履行付款义务）", "account_sign_in_one_tap_verifying_header": "正在验证...", "loc_instalments_card_check": "The card you've selected doesn't allow instalments.", "search_sbox_abandoned_search_open_tab_message_refresh_cta": "立即刷新", "sr_calendar_approx_prices_info_multi_day_stay": "{date}开始入住的每晚预估价（货币：{currency}）", "bh_gwe_sr_privacy_hotel_room_one": "{num}间酒店客房", "ppd_survey_oct18_price_clarity_num_of_total": "{num} / {total_num}", "lists_email_invalid_email_error": "抱歉，email地址无效，请重新输入", "fam_bp_ceb_block_child_age": "{num_years}岁", "bh_gsb_search_box_checkout_age": "儿童年龄（{date}当天）", "validate_tpv_firstname": "请填写您的名字", "pdi_index_wpm_popup_desc": "{startBold}如果您在其他网站发现能够以更低的价格预订相同的房型，您即可申请差价补偿。{endBold}", "search_guest_type_adults": "成人", "paycom_sca_error_challenge_failed_generic_title_long": "双重认证出错", "df_sold_out_hotels_explain": "在您所选的日期内，该住宿在我们网站上的最后一间空房已被预订", "header_my_lists": "收藏", "msg_wlm_screen_start_button": "继续", "pay_loader_1_header_verb": "预订", "checkout_form_pay_method": "{/payment_method/[method]/pay_with}付款", "sr_calendar_checkout_only_tooltip_info": "仅退房", "iq_sbox_cars_current_location": "当前位置", "m_genius_saving_percent": "您可享受该住宿提供的Genius会员{num_percent}%优惠！", "acc_cal_open_notification": "你已经打开日历，请选择入住日期", "acc_index_choose_checkin_date_arrowkeys": "使用箭头选择你的入住日期", "gsb_hp_book_now_cta_villa": "{num}间别墅价格：{group_recommendation_price}", "bh_gwe_sr_privacy_no_descriptor_mobile_home_one": "{num}间活动房屋", "validate_tpv_cc_number_invalid_visa": "NBS：请联系客服团队", "iq_sbox_flights_return_date": "返程", "sbox_error_30_night_res": "对不起，您最多只可预订30晚", "hours": "小时", "beach_review_adj_good": "沙滩好", "list_percent_off_value": "-{percent_off_value}%", "iq_sbox_flights_to": "目的地", "rewards_code_redeem_replace": "修改促销码", "policies_fe2_m_pay_now_nonrefundable_explanation": "如果取消或修改订单（以及未入住），则今日支付的金额将不予退还。", "iq_sbox_flights_date_of_return": "返程日期", "checkout_success_payment_completed_generic": "已扣款", "bp_ofac_place_error": "请输入有效的出生日期", "a11y_reader_error": "错误", "search_sbox_abandoned_search_open_tab_message": "哎呀，出错了！即将刷新页面，请稍候…", "validate_tpv_name_invalid": "请添加有效姓名", "language_exception_bh_gwe_sr_card_entire_unit_bungalow_1": "简易别墅整租", "list_dropdown_send_button": "发送", "bp_for_x_guests": "（{num_guests}位住客）", "a11y_hp_bookmarks_button_hover": "你的心愿单", "auth_2fa_recovery_flow_code_sent_explanation": "当你为帐号设置双重认证时，我们曾要求你提供辅助电子邮箱，以便你手机不在身边时使用。", "sal_verify_phone_popup_code_incorrect_code": "请检查验证码是否输入正确后再试一次。", "beach_sr_left_side_module_beach_properties": "显示周边住宿", "bp_china_payment_qr_countdown_sec": "{num_sec}秒", "sp_sr_hotel_card_cashback": "{currency_amount}返现", "ar_islamic_calendar_muharram": "Muharram", "www_promo_code_bs3_card_cta_remove": "移除代码", "sp_rewards_instant_reward_badge": "可省{reward_value}", "paycom_sca_error_challenge_failed_generic_title": "银行卡验证失败", "pay_loader_2_hpp_header_verb": "正在确认", "language_exception_bh_gwe_sr_privacy_entire_apartment_1": "整租公寓", "iq_sbox_flights_travellers": "{num_travellers}位乘客", "iq_sbox_flights_year_of_departure": "出发年份", "pb_google_place_park": "公园", "www_promo_code_bs3_list_title": "有效奖励", "bp_mailcheck_error": "您想输入的是{bp_mailcheck_domain}吗？", "iq_sbox_error_cars_arrival_date_invalid": "还车日期无效", "validate_tpv_billing_address_city": "请输入有效的城市名", "loc_character_comma": "，{zwsp}", "checkout_pay_fe_bp_hybrid_payment_step_1": "页面将跳转至{pay_method}", "deals_price_watch1": "价格变动提醒", "a11y_aria_label_carousel_next_previous": "下一个", "lists_sign_in_to_see_2": "登录帐号，您收藏的住宿将保存至所有设备。", "iq_sbox_error_cars_arrival_after_departure": "还车日期必须在取车日期之后", "share_list_with_friend_1": "分享给朋友", "recently_viewed_list_variableopt_2": "这些住宿已收藏至“{name_of_list}”", "lists_wishlist_note-saved": "已保存！", "lists_save_this_list_no": "取消", "d_dmw_wl_calendar_dates_apply_cta": "确认", "pb_google_place_department_store": "百货商店", "a11y_gallery_image_screenreader_placeholder": "该住宿照片相册", "pay_bs3_pay_property_timing_explanation": "{date}{time}前可免费取消。你的银行卡将用于预订担保。", "bh_gwe_sr_card_entire_unit_villa": "{num}栋整租别墅", "bh_gwe_sr_privacy_entire_bungalow": "{num}栋整租简易别墅", "lists_endorsement_highly_rated": "客人最爱{ufi_name}的理由：{interest_point}", "pdi_index_popup_wpm_bullet_5": "其他网站的预订包含其会员或奖励项目", "go_to_list": "前往列表", "deals_landing_blackfriday2022_hero_countdown_timer": "距离活动结束还剩{countdown}", "wallet_bp_credit_error_too_much": "使用的积分数额不得超过当前可用余额{amount_with_currency}", "wallet_bp_no_credit_applied": "未使用积分", "language_exception_bh_gwe_sr_privacy_private_studio_1": "私人一室公寓", "lists_email_invalid_first_name_error": "请输入收件人的名字", "acc_cal_closed_closed": "你已经关闭日历", "bh_gwe_sr_card_entire_unit_bungalow": "{num}栋整租简易别墅", "bh_gwe_sr_privacy_entire_chalet": "{num}套整租木屋", "auth_next_step_error_empty_verification_code": "请输入验证码", "checkout_storing_credit_card_details_11": "将此卡添加至您的帐户即可更快速地预订", "loc_bp_cuba_guest_name_error": "请输入该住客姓名", "paycom_sca_error_challenge_cancelled_title_long": "你取消了双重认证", "recently_viewed_list_back_to_other_list": "返回{list_name}", "iq_sbox_cars_month_of_departure": "取车月份", "review_adj_very_good": "非常好", "list_my_lists_onbaording_box_sign_in": "你可以{start_link1}登录{end_link1}或{start_link2}创建帐号{end_link2}，这样收藏列表就能永久保存，而且无论你在什么设备上登录，都会自动同步哦。", "beach_review_adj_fabulous": "沙滩很棒", "pb_google_place_subway_station": "地铁站", "bh_gwe_sr_card_entire_unit_apartment": "{num}套整租公寓", "bp_interstitial_bline_2": "正在等待住宿方确认订单", "sca_error_challenge_failed_generic_title_long": "双重认证出错", "paycom_validate_tpv_billing_address_city": "请输入有效的城市名", "ar_islamic_calendar_jumadal_ula": "Jumadal Ula", "vm_bp_benefits_hide_details": "收起详情", "ios_ace_wishlist_show_on_map": "在地图上查看", "pb_google_place_convenience_store": "便利店", "pay_loader_1_cash_header_verb": "正在生成", "bb_business_or_leasure_tooltip_lt": "将此订单标记为休闲旅行", "pb_google_place_sightseeing": "观光", "wallet_bp_enter_payment_details": "输入付款信息确保这间客房（现在无需付款）", "bp_overview_cta_pay_later_no_cc_variant_2": "预订（付款义务非必须）", "beach_hp_explore_nearby_panel_header": "{property_name}周边", "pay_mi_timing_schedule_summary_at_property": "到店再付", "bh_gwe_sr_privacy_entire_apartment_one": "{num}套整租公寓", "d_bs3_pay_now_extra_options_pay_now_card_type_first": "由于住宿不支持{credit_card}到店付款，如需使用该银行卡类型，你仅可{start_bold}现在付款{end_bold}。", "a11y_aria_label_carousel_previous": "上一个", "bb_business_or_leasure_cta_bt": "标记为商务旅行", "beach_sr_left_side_module_beach_details": "更多详情", "sxp_index_sbox_horizontal_adults": "{num_adults}位成人", "bb_business_or_leasure_success_notification": "出行目的已保存", "recently_viewed_list_v2": "保存您喜欢的住宿", "rewards_bs3_aob_points_codeapplied": "使用的促销码：{reward_code}", "bb_sr_remove_filter": "删除", "iq_sbox_error_dates": "请输入今天之后的日期。", "loc_m_social_connect_naver_sign_in": "Sign in with Naver", "pb_google_place_electronics_store": "电子产品店", "acc_settings_section_2fa_enrollment_phone_number_field_placeholder": "输入你的手机号码", "rewards_more_details_faq": "常见问题与解答" }, "mealplan_vector": { "optional_extras_mealplan": { "name": "三餐" } } });
          }(window.booking));
        </script>
				<script nonce="ybUYWKfiYBp3lUr">
          booking.env.priceWatch = {
            b_price_alert_canceled: "",
            b_price_alert_all_canceled: ""
          };
        </script>
				<script nonce="ybUYWKfiYBp3lUr"
					src="./script/static/js/book_alicloud_a/fc673c3bcf7e1abfb772291e9a8b4932845b2d24.js"
					type="text/javascript"></script>
				<script nonce="ybUYWKfiYBp3lUr"> if (window.performance && performance.measure && 'b-post-scripts') { performance.measure('b-post-scripts'); } </script>
				<link rel="prefetch"
					href="./script/static/js/refp2_alicloud_a/dd685ff96bc359affdb3a99ff8e8f9b266534ba0.js">
				<div id="__CAPLA_APP_ROOT__"></div>
				<script
					data-capla-application-context="data-capla-application-context"
					nonce="ybUYWKfiYBp3lUr" type="application/json">{"publicPath":"./script/psb/capla/","cdnOrigin":"./script","bplatformEnvironment":"prod","cspNonce":"ybUYWKfiYBp3lUr","acceptHeader":"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7","language":"zh-cn","basePageUrl":"https://secure.booking.com/book.html?hotel_id=4685428\u0026aid=397645\u0026label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB\u0026sid=f0f82b20b46106bf73b9641ed765ee02\u0026room1=A\u0026error_url=%2Fhotel%2Fcn%2Fholiday-inn-express-nanjing-dongshan.zh-cn.html%3Faid%3D397645%26label%3Dbin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB%26sid%3Df0f82b20b46106bf73b9641ed765ee02%26srpvid%3De35016eadacb0185%26%26\u0026hostname=www.booking.com\u0026stage=1\u0026checkin=2023-06-02\u0026interval=1\u0026children_extrabeds=\u0026srpvid=e35016eadacb0185\u0026hp_visits_num=1\u0026rt_pos_selected=1\u0026rt_pos_selected_within_room=1\u0026rt_selected_block_position=1\u0026rt_num_blocks=7\u0026rt_num_rooms=7\u0026rt_num_blocks_per_room=%7B%22468542801%22%3A1%2C%22468542803%22%3A1%2C%22468542807%22%3A1%2C%22468542806%22%3A1%2C%22468542805%22%3A1%2C%22468542808%22%3A1%2C%22468542804%22%3A1%7D\u0026rt_relevance_metric_id=5c050546-c156-4461-8585-32a89f19e778\u0026rt_pageview_id=20ce16fbc372006c\u0026rt_pos_final=1.1\u0026rt_selected_total_price=650\u0026rt_cheapest_search_price=325\u0026from_source=hotel\u0026nr_rooms_468542801_246088447_2_1_0=2","currency":"CNY","visitorIP":"153.3.60.143","visitorCountry":"cn","visitorCountryRegion":"js","visitorUfi":-1919548,"affiliate":{"id":397645,"isBookingOwned":true,"isCobrand":false,"isBookingBranded":false,"isHybrid":false,"label":"bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4As2LnaIGwAIB0gIkNjhkYjc5OGItYzcyYy00NzQzLWFhZGUtMjVhZDA0OWEyZWMw2AIE4AIB","isGeniusAffiliate":true,"partnerId":488148},"isInternal":false,"isInternalIp":false,"isInternalUser":false,"userIdentity":{"type":"customer","isGenius":false,"authLevel":0},"pageviewId":"243e17393fc90031","actionName":"book","userAgent":{"deviceType":"desktop","osName":"Windows 10","osVersion":"10.0","browserName":"chrome","browserVersion":"112.0.0.0","uaGroupId":17,"userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"},"sessions":[{"type":"frontend","id":"ec5d388d0affaa13ac1f27f8e7b1473c"}],"etSerializedState":"ES7I4NRoG6OZRmw8Fp0LHmR_piINfd6C3OGGcXsDlA_bMqRDumLWoYQpHVfXWQSBfBYj4H_CAvG0","encryptedCommonOauthState":"Us8KO7Jo1gOyI3_rGIpX_6-HxjRUpTo5c8DcKpdXob8HA24GLWq2iQJFd_4wtSqyi6kdeq6s-J7cmhVQZG29XS5bHt4d2cGufzTxui2usoHSQ3J2V1mdYPXlx1uNmInNjc2K0UVR8B6fHfnlZJW1DzmWRQYAAlQjLqv4u1KL4OAUCtcKJGCHcy3HvGhYxBzsF_1Fst3Kc_a-cN52hlMu2XcB6k4DZKwcnqALG4iPB7yG5H29R4vY-1ZBqwKRw0qPteOf_5T_maEz6F8rzgaNalTQdaJ4LBNcweNuYzqamvRSqK6mLDXOL9lz7D5Kfbhvyk3KNUjk18rni-4bpTfFPbwqX3Y1vBX5VprbmllyUs2pAKqE6GIlmm1ugSId2DPtMNUvElo5TUT4mBvfjXaa3kJHcTHt1AjeqzBnuGZkIi07CRFFV7kf1a85MBBljsAGITSrrzArQDXxXq6AUW4Zvh0eBh3pqLoTqFXTWYYQaZjPhBgTI4TRqHBsMm0yanOupxOQtjT1JVCWd76mdFVo0Lb0cWTT-oC5nMWJ5NMHcwKM87y78dMSV-RWDAIO95uaXBUtn6ovgbn5_6idxDuoQaI91a7bNZjoOLK2nBlCAL_qNCdZjYIWP2mLBeCj-44HCmWWR9XCXRc2I_TZN0FlVS3Od0rXikkbOtKoTrv9EJKvNiqd8TPQdpdhqKbSIJmMbr-ksEn_6EBNgSgEK9LdtabSMLqtRH6cbD5U0Trxu5KTIUn7y5br_IMPYLHfBtSZtLn-G9XGLeAdgLVj23TGiCgulFIkJl8kFEkkzFYVnCGtqlbRUtefTklIxto63R4ewBRGAcvyHQ5LyboWp8CdCF5u-qyMr-lO7m5uGJdVH0HGsjrMucMISXx3KrLlnpRIlQvOov3orJ6IpmcNKt1nd_emxq1FhbIjr0WOiPKkHMC_YOG7Sr6U2kYfPU85vMJxnI7flpNVnWssL6IkYoPGFFszboqnGlPrwbhOJf1G4TsVp9Hv87qlOh4P59tqbUim0a6Dy7KXKN0_dV6_73-CaqAbzPdHuexHrRbuHJ46aliYz9JJerz_fnqZVB2HQ0vDtEIEd74O8J0Q9VV80WwM6Pan9KZ1Rq0gAtR9iWZ2LI21nebJLmoPuWiNZJosMzcbvx1EP03W2isxzqmtPNrt-xsgN6utIRBZXqasgCy5Rbhw3mJkcded_QIBaeZ2WG2mbuHk0jQJ5cWz9W_0nNIOe_LcRrLg5uulQ14Jq9NM9SHediAEciv6IwHZSpFH-giYcmVPxBniw-lR6gxQFjopxeP4D0wGae9dQTCT_s1fRrep60_2fZZBxjY-z2tIbDW1t-8BIfcVOuAsZ4NHPO4LAL9jJfp05DmATKc9X6VEDJKyikWuGvWt06OV5mueL6ixIPB7cY9Sucpux4Y7gi0hS68KrKcBB6oB5DAoQ4MvnVtdvynMd2c_xkuNkfMK4kQDbgJ1u6KwXEKF8dx005DaGNXTKe7jEF73IO2e-Eltz-EyqGOQRoI68wCBZvTWcHmuy9T5o0ch0X7vEGu3E1294UtLjXTS6Hu4ZQl7HN3U8oPBN878Jccl0KjZgfmF0-UAOdnyX49cTXedchikLVIl5Vw98wwQRKTS52kzgMDxLpENw7h-lOxlfajBuohH9PjPuv2EgDNq_EHqupi4Hx8Hh1nTRrATiHDgp6KKRxbNj4akqfvs0IFtv39mId5RUjPtW6bo-Zq83v7EOwH4EmwRba_pZjlFojpuiofuNC0vuCmCA20fHBr11b5qoLaqGf26GY1Kljuk5tDhv2OxYqI5148j","isNormalRequest":true,"isRobotRequest":false,"isLanding":false,"siteType":"WWW","siteId":1,"csrfToken":"eyJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJjb250ZXh0LWVucmljaG1lbnQtYXBpIiwic3ViIjoiY3NyZi10b2tlbiIsImlhdCI6MTY4MjM5MjY5NiwiZXhwIjoxNjgyNDc5MDk2fQ.f_xXP-rx1g6jqtP3zgE6zdTx1huw4lDoHlmFrgslB-yAH5wD530a2HYSfNP3mWV6fTprO8Qc7xXMGviDbjU--g","body":{"num_adults":1,"num_rooms":1,"hotel_id":"4685428","bp_travel_purpose":"leisure","selected_block_ids":["468542801_246088447_2_1_0"],"child_ages":[],"stage":2}}</script>
				<script
					id="__CAPLA_CHUNK_METADATA__b-checkout-bp-accommodationBXEQFGJJ/PropertyDetails/v1"
					nonce="ybUYWKfiYBp3lUr" type="application/json">{"chunks":["793","936","216","47"],"experimentTags":{"NAREFacBLfPIHYKe":1,"NAREFacTTNAIBaFOXT":1},"featureNames":{},"copyTags":{"bp_property_address_copied_tooltip":"地址已复制","t_copy_hotel_address":"复制地址","m_loc_hp_heading_excellent_location":"位置很赞","m_loc_hp_heading_good_location":"位置方便","m_loc_hp_heading_great_location":"位置很好","bhc_sr_new_to_bcom_badge":"{b_companyname}新上线","help_preferred_plus_property":"此为主推优选住宿。主推优选合作伙伴致力于为客人提供出色服务和超值价格。为了加入此项目，他们可能会支付{b_companyname}更多费用。","help_preferred_property":"这家住宿参与了我们的主推合作伙伴项目。主推住宿提供优质的服务和较高的性价比，为客人创造良好的体验。该住宿可能向{b_companyname}支付的佣金比例稍高。","preferred_programme_new_tooltip_pref_plus":"这家是主推优选住宿。主推优选住宿性价比极高，且符合{b_companyname}品质标准。该类住宿向{b_companyname}付费参加此项目。","preferred_programme_new_tooltip_preferred":"这家是主推住宿。主推住宿符合{b_companyname}的品质标准，并向{b_companyname}付费参加此项目。","www_ge_screenreader_generic_logo":"蓝色Genius标识","bh_gwe_d_pp_rt_lb_private_kitchen":"私人厨房","bh_gwe_d_pp_rt_lb_private_kitchenette":"私人小厨房","hp_free_wifi":"免费WiFi","hotelfacility/name":{"type":"list","items":{"1":"游泳池","2":"停车场","3":"餐厅","4":"准许携带宠物","5":"客房服务","6":"会议/宴会设施","7":"酒吧","8":"24小时前台","9":"网球场","10":"桑拿浴","11":"健身中心","12":"高尔夫球场（3公里内）","13":"报纸","14":"花园","15":"露台","16":"禁烟客房","17":"机场班车","19":"垂钓","20":"商务中心","21":"婴儿/儿童看护服务","22":"洗衣","23":"干洗","24":"欧陆式早餐","25":"无障碍设施","26":"滑雪","27":"理发/美容中心","28":"家庭间","29":"游戏室","30":"赌场","41":"贵宾室设施","43":"在客房内享用早餐","44":"熨衣服务","45":"新娘套房","46":"免费停车","47":"上网服务","48":"电梯","49":"快速办理入住/退房手续","50":"日光浴室","51":"保险箱","52":"代客泊车","53":"外币兑换","54":"Spa及健康中心","55":"按摩","56":"儿童游乐场","57":"台球","58":"乒乓球","59":"卡拉OK","60":"礼品店","61":"风帆运动","62":"飞镖游戏","63":"热水浴池/按摩浴缸","64":"隔音客房","65":"自行车租赁（额外收费）","66":"图书室","67":"擦鞋服务","69":"划独木舟","70":"徒步活动","71":"礼拜堂/神殿","72":"烧烤设施","73":"盒装午餐","75":"租车服务","76":"自行车","77":"保龄球","78":"旅游咨询台","79":"土耳其浴","80":"暖气","81":"传真/复印","82":"潜水","86":"骑马","87":"壁球","88":"名家设计的酒店","89":"票务服务","90":"浮潜","91":"行李寄存","92":"住宿内商店","96":"无线网络","97":"迷你高尔夫","98":"接待同性恋人士","99":"滑雪用具寄存处","100":"滑雪学校","101":"防过敏客房","102":"自助早餐","103":"室内游泳池","104":"室外游泳池","107":"免费无线网络连接","108":"酒店各处禁烟","109":"空调","110":"吸烟区","111":"自动提款机（酒店内部）","112":"欧陆式早餐","113":"准许携带宠物","114":"私人海滩区","115":"单点餐厅","116":"自助餐厅","117":"小吃吧","118":"阳光露台","119":"室外游泳池（全年开放）","120":"室外游泳池（季节性开放）","121":"室内游泳池（全年开放）","122":"室内游泳池（季节性开放）","123":"自行车（免费）","124":"礼宾服务","125":"文娱员工","126":"夜总会/DJ","127":"办理私人登记入住/退房手续","128":"班车服务（免费）","129":"班车服务（额外收费）","130":"住宿内可租用的滑雪器具","131":"滑雪通票售卖机","132":"滑雪至酒店门口","133":"特别节食菜单（应要求提供）","134":"熨裤机","135":"自动售货机（饮品）","136":"自动售货机（零食）","137":"住宿内水上运动设施","138":"温泉浴","139":"机场班车（免费）","140":"机场班车（额外收费）","141":"共用厨房","142":"储物柜","143":"共用休息室/电视区","144":"儿童俱乐部","145":"住宿内小超市","146":"海滨","147":"夜间娱乐","148":"水上乐园","149":"只接待成人","150":"独立式 - 整个住处","151":"半独立式","152":"私营公寓","153":"地面楼层（私人通道）","154":"地面楼层（共用通道）","155":"高层 - 电梯","156":"高层 - 楼梯","157":"轮椅通道","158":"每日客房打扫","159":"杂货递送","160":"住宿内停车场","161":"私人停车场","162":"其它停车场","163":"WiFi（覆盖酒店各处）","164":"付费WiFi","165":"Michelin star-rated dining","166":"露天浴池","167":"公共浴池","168":"水上滑梯","169":"泳池玩具","170":"桌面游戏/拼图","171":"书籍、DVD、儿童音乐设施","172":"室内游乐区","173":"户外儿童游乐设施","174":"婴幼儿安全门","175":"儿童电视频道","176":"儿童餐","177":"儿童自助餐","178":"沙发床","179":"停车场 - 带监控","180":"街边停车场","181":"停车库","182":"电动车充电站","183":"公共交通票","184":"无障碍停车场","185":"无障碍通道","186":"坐便器 - 带扶手","187":"坐便器较高","188":"盥洗盆较低","189":"带紧急按钮的浴室","192":"屋顶泳池","193":"无边泳池","194":"景观泳池","195":"恒温泳池","196":"盐水泳池","197":"冷水池","198":"泳池/沙滩毛巾","199":"池边酒吧","200":"浅水池","201":"游泳池盖","203":"红酒/香槟","204":"瓶装水","205":"水果","206":"巧克力或饼干","207":"景点或演出门票","209":"机场接机","210":"机场送机","211":"视觉辅助：布莱叶盲文","212":"视觉辅助：可触摸图标","213":"语音辅助","214":"婴儿推车","215":"网球用品设施","216":"羽毛球用品设施","217":"宠物篮","218":"宠物碗","219":"住宿内咖啡店","220":"日光浴躺椅/沙滩椅","221":"遮阳伞","222":"户外家具","223":"泳池护栏","224":"野餐区","225":"户外暖炉","226":"美容/美体服务","227":"脸部护理","228":"脱毛服务","229":"美容化妆","230":"美发护发","231":"美甲","232":"趾甲护理","233":"理发","234":"染发","235":"发型设计","236":"身体护理","237":"身体去角质","238":"纤体","239":"光疗","240":"Spa设施","241":"蒸汽房","242":"Spa休息区","243":"足浴","244":"Spa/养生套餐","245":"背部按摩","246":"颈部按摩","247":"足部按摩","248":"情侣按摩","249":"头部按摩","250":"手部按摩","251":"全身按摩","252":"按摩椅","253":"健身房","254":"瑜伽课程","255":"健身课程","256":"私人教练","257":"健身/Spa更衣室","258":"儿童泳池","301":"游泳池","302":"海滩","303":"Special baths","304":"班车服务","305":"早餐选择","306":"驾车游猎","307":"非洲五霸","308":"徒步猎游","309":"丛林晚餐","310":"驾车游猎","311":"非洲五霸","312":"徒步猎游","313":"丛林晚餐","400":"临时艺术展","401":"串酒吧","402":"单人脱口秀","403":"电影之夜","404":"徒步旅行","405":"自行车骑行","406":"主题晚餐之夜","407":"欢乐时光","408":"当地文化之旅/体验课","409":"厨艺课","410":"现场音乐/表演","411":"体育赛事（现场转播）","412":"射箭","413":"有氧运动","414":"Bingo游戏","415":"高山滑雪","418":"24小时安保","419":"钥匙进门","420":"刷卡进门","421":"安全报警器","422":"烟雾报警器","423":"公共区域闭路电视监控系统","424":"住宿外部闭路电视监控系统","425":"灭火器","426":"自行车停放处","427":"电话","428":"邮政服务","429":"洗衣房","430":"滑雪班车","431":"Bath/Hot spring","432":"Private bath","433":"游泳池","434":"杜绝一次性塑料制品","435":"您是否已移除或从未提供过一次性塑料小瓶装洗发水、护发素和沐浴露?","436":"客人可选择重复使用毛巾","437":"一氧化碳探测器","438":"一氧化碳源","439":"您是否已移除或从未提供过塑料吸管？","440":"您是否已移除或从未提供过塑料杯？","441":"您是否已移除或从未提供过塑料水瓶？","442":"您是否已移除或从未提供过塑料饮料瓶？","443":"您是否已移除或从未提供过塑料餐具？","444":"客人可用钥匙卡取电或通过感应控电","445":"客人可以选择取消每日清洁服务","446":"饮水机","447":"自行车租赁","448":"您是否已移除或从未提供过塑料搅拌棒？","449":"使用能有效针对新冠病毒的清洁产品","450":"已按当地权威机构指导意见清洗床单、毛巾和衣物","451":"每次入住前后消毒客人住宿","452":"清洁客人住宿后封闭","453":"用餐区保持身体距离","454":"可送餐到客人住宿","455":"工作人员遵循由地方权威机构发布的所有安全规定","456":"不提供打印菜单、杂志、笔和纸张等共用物件和文具","457":"客人住宿和重要区域提供洗手液","458":"已建立客人健康检查机制","459":"提供急救药箱","460":"无接触办理入住/退房","461":"支持无现金支付","462":"遵守保持身体距离的规定","463":"送餐服务移动app","464":"在合适区域工作人员与客人间已设置屏障或隔断","465":"提供发票","466":"住宿由专业清洁公司提供清洁","467":"所有盘子、餐具、玻璃和其他餐具均已消毒","468":"客人可以在入住期间取消住宿清洁服务","470":"到店前在线收集护照/身份证信息","471":"大堂提供自助机器办理入住","472":"在住宿处领取密码箱中的钥匙","473":"在住宿附近领取密码箱中的钥匙","474":"电子钥匙进入","484":"早餐外带餐盒","485":"安全包装送餐食物","486":"提供健康护理专家","487":"住宿为客人提供体温计","488":"为客人提供口罩","489":"住宿圈养的野生（未驯化）动物不可展示/互动，不得剥削、食用或出售。","490":"为客人提供回收垃圾桶，且回收利用废弃物","491":"至少80%的食物源于您所在地区","492":"至少80%的照明使用LED节能灯泡","493":"只使用节水马桶（如低耗水马桶、有大小冲水按钮的马桶）","494":"只使用节水淋浴（如智能淋浴、低耗水喷头）","495":"所有窗户均为双层玻璃","496":"食物浪费相关政策实施到位，包括教育、防止食物浪费、减少浪费、回收和处理","497":"拿出一定比例的收入投资于社区项目或可持续发展项目","498":"购买核证碳抵消（certified carbon offset），对全年碳排放总量补偿至少10%","499":"提供由当地导游和公司组织的游览和活动","500":"提供素食菜单","501":"提供纯素菜单","502":"在住宿内提供绿色空间，如花园/屋顶花园","503":"提供的食物至少有80%为有机食物","504":"住宿内普及使用100%可再生电源","505":"为当地艺术家提供展示才华的平台","506":"为客人提供有关当地生态系统、文化遗产和入乡随俗的信息","507":"100% renewable energy is used throughout the property","508":"Local artists are offered a platform to display their talents","509":"Provide guests with information regarding local ecosystems, heritage and culture, as well as visitor etiquette","510":"Provide guests with information regarding local ecosystems, heritage and culture, as well as visitor etiquette","511":"室内壁炉","512":"早餐外卖","513":"Breakfast to go","514":"早餐外带","other":""}},"roomfacility/name":{"type":"list","items":{"1":"沏茶/咖啡设备","2":"上网设备","3":"迷你吧","4":"淋浴","5":"浴缸","6":"保险箱","7":"按次点播收费电视","8":"电视","9":"电话","10":"传真","11":"空调","12":"吹风机","13":"唤醒服务/闹钟","14":"热水浴缸","15":"熨斗","16":"小厨房","17":"阳台","18":"熨裤机","19":"浴袍","20":"Spa浴缸","21":"收音机","22":"冰箱","23":"书桌","24":"共用浴室","25":"熨衣设备","26":"客厅角","27":"免费洗浴用品","28":"DVD播放机","29":"CD播放机","30":"电风扇","31":"卫生间","32":"微波炉","33":"洗碗机","34":"洗衣机","35":"录像机","36":"视频游戏","37":"庭院","38":"私人浴室","39":"超长床 (\u003e2米)","40":"暖气","41":"更衣室","42":"共用卫生间","43":"拖鞋","44":"卫星频道","45":"厨房","46":"无线网络","68":"有线频道","69":"浴缸或淋浴","70":"铺设了地毯的地板","71":"壁炉","72":"额外的卫生间","73":"提供连通间","74":"手提电脑保险箱","75":"平板电视","76":"私人入口","77":"沙发","78":"沙发床","79":"隔音","80":"瓷砖/大理石地板","81":"享有风景","82":"木质/镶木地板","83":"唤醒服务","84":"闹钟","85":"用餐区","86":"电烧水壶","87":"可享用行政酒廊","88":"iPod基座","89":"厨房用具","90":"蚊帐","91":"额外收费的毛巾/床单","92":"桑拿浴室","93":"私人游泳池","94":"滚筒式烘干机","95":"衣柜/衣橱","96":"烤箱","97":"炉灶台","98":"烤面包机","99":"烧烤架","100":"坐式浴盆","101":"电脑","102":"iPad","103":"游戏机","104":"游戏机 - Xbox 360","105":"游戏机 - PS2","106":"游戏机 - PS3","107":"游戏机 - 任天堂Wii","108":"海景","109":"湖景","110":"花园景","111":"游泳池景","112":"山景","113":"地标景","114":"手提电脑","115":"防过敏","116":"清洁用品","117":"电热毯","118":"额外的浴室","119":"蓝光播放机","120":"咖啡机","121":"市景","122":"河景","123":"露台","124":"毛巾","125":"床单","126":"餐桌","127":"儿童高脚椅","129":"户外家具","130":"户外用餐区","131":"整间住宿位于地面楼层","132":"高层由电梯直达","133":"高层仅由楼梯直达","134":"整间住宿均设无障碍通道，方便残疾客人使用","135":"分离式","136":"半分离式","137":"同一建筑内的私人客房","138":"衣架","139":"折叠床","140":"晾衣架","141":"卫生纸","142":"儿童安全插座","143":"桌面游戏/拼图","144":"书籍、DVD、儿童音乐设施","145":"婴幼儿安全门","146":"沙发床","147":"坐便器 - 带扶手","148":"浴缸 - 带扶手","149":"无障碍淋浴","150":"步入式淋浴","151":"坐便器较高","152":"盥洗盆较低","153":"浴室 - 带紧急按钮","154":"淋浴座椅","155":"Visual aids","157":"屋顶泳池","158":"无边泳池","159":"景观泳池","160":"恒温泳池","161":"盐水泳池","162":"冷水池","163":"泳池浴巾","164":"浅水池","165":"游泳池盖","166":"红酒或香槟","167":"瓶装水","168":"水果","169":"巧克力或饼干","170":"垃圾桶","171":"红酒杯","172":"游戏设备 - Xbox One","173":"游戏设备 - Wii U","174":"游戏设备 - PS4","175":"儿童床/婴儿床","176":"牙刷","177":"洗发水","178":"护发素","179":"香皂","180":"浴帽","181":"睡衣","182":"日式浴衣","183":"Socket near the bed","184":"床头插座","185":"适配器","186":"羽绒枕","187":"非羽绒枕","188":"防过敏枕","189":"电梯直达","190":"庭院景","191":"安静街景","192":"庭院景","193":"安静街景","196":"移动热点设备","197":"Smartphone","198":"智能手机","199":"视频流服务（如Netflix、优酷等）","200":"储物柜","201":"烟雾报警器","202":"灭火器","203":"钥匙进门","204":"刷卡进门","205":"阅读灯","206":"耳塞","207":"床帘","208":"窗","209":"露天浴缸","210":"榻榻米（传统日式地席）","211":"一氧化碳探测器","212":"一氧化碳源","213":"Auditory guidance","214":"一氧化碳源","215":"空气净化器","216":"独立空调，仅用于独立客房","217":"行政酒廊免费早餐","218":"行政酒廊免费全天小食和饮品","219":"行政酒廊免费下午茶点和饮品","220":"行政酒廊免费晚间小食和饮品","221":"免费使用Spa","222":"免费使用健身房","223":"免费使用会议室/商务区","224":"可享私人泳池","225":"可享私人海滩","226":"行政酒廊私人入住/退房办理","227":"礼宾服务","228":"行政酒廊免费报纸杂志借阅","229":"免费洗衣服务","230":"单间独立空调","231":"洗手液","232":"听力无障碍设施","233":"无障碍客房","234":"无障碍转移淋浴","other":""}},"close":"关闭","extl_reviews_no_bcom_sr_reviews_modal_first_body_legal_update":"本网站住宿的住客评分为10分制。","extl_reviews_no_bcom_sr_reviews_modal_header":"其他网站评分","extl_reviews_no_bcom_sr_reviews_modal_second_body_legal_update":"部分住宿——像我们网站那些新上线的住宿——还未收到{b_companyname}的住客点评。在这些住宿获得第一条来自{b_companyname}的住客点评之前，我们会使用它们在其注册的其他旅游网站的住客点评计算住客评分。如果这些外部评分是5分制，我们会将其转换成10分制。{b_companyname}无法审核这些点评以确认点评人是否符合{b_companyname}的点评标准。","extl_reviews_no_bcom_sr_reviews_tooltip_cta":"了解更多其他网站点评相关信息","extl_reviews_yes_bcom_sr_reviews_modal_second_body_transparent":"像那些新在我们网站上发布的部分住宿，所获{b_companyname}客人的点评尚不足3条。在这种情况下，我们将根据该住宿在其他值得信赖的旅行网站上所获的住客点评来计算一个点评分数。","xtl_reviews_no_bcom_sr_reviews_tooltip_transparent_legal_update":"{review_score}的住客评分是根据其他多个旅游网站的住客对该住宿的点评，并转换成{b_companyname}的10分制而得出的。","a11y_rating_score_for_screenreader":"评分{review_score_number}","extl_reviews_no_bcom_reviews":"{total_num_reviews}条其他网站点评","m_pp_num_reviews_entry":"{num_reviews}条点评","a11y_adjective_rating":"评价{/adjectives/[rating_adjective]/name}","review_adj_above_average":"高于一般水平","review_adj_average":"一般","review_adj_disappointing":"令人失望","review_adj_exceptional":"优异的","review_adj_fabulous":"很棒","review_adj_good":"好","review_adj_pleasant":"令人愉悦","review_adj_poor":"差劲","review_adj_superb":"好极了","review_adj_very_good":"非常好","review_adj_very_poor":"非常差","adjectives/adj_fem_plu":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/adj_fem_sing":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/adj_masc_plu_acc":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/adj_masc_sing_acc":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/adj_neut_sing":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/adj_neut_sing_acc":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}},"adjectives/name":{"type":"list","items":{"1":"非常差","2":"差劲","3":"令人失望","4":"尚可","5":"可以","6":"令人愉悦","7":"好","8":"非常好","9":"很棒","10":"好极了","11":"优异的","adj_masc_sing":"x","other":""}}}}</script>
				<script nonce="ybUYWKfiYBp3lUr">window.Promise || document.write('<script crossorigin="anonymous" src="./script/libs/promise/7.0.4/promise-7.0.4.min.js" nonce="ybUYWKfiYBp3lUr"><\/script>')</script>
				<script nonce="ybUYWKfiYBp3lUr">"currentScript" in document || document.write('<script src="./script/libs/current-script-polyfill/1.0.0/current-script-polyfill.min.js" nonce="ybUYWKfiYBp3lUr"><\/script>')</script>
				<script
					id="b-checkout-bp-accommodationBXEQFGJJ/PropertyDetails/v1__LOADABLE_REQUIRED_CHUNKS__"
					nonce="ybUYWKfiYBp3lUr" type="application/json">[793,936]</script>
				<script
					id="b-checkout-bp-accommodationBXEQFGJJ/PropertyDetails/v1__LOADABLE_REQUIRED_CHUNKS___ext"
					nonce="ybUYWKfiYBp3lUr" type="application/json">{"namedChunks":["components-PropertyDetails-PropertyDetails"]}</script>
				<!--  
				<script data-capla-namespace="b-checkout-bp-accommodationBXEQFGJJ"
					data-capla-store-data="apollo" nonce="ybUYWKfiYBp3lUr"
					type="application/json">{"PropertyType:204":{"id":204,"__typename":"PropertyType","type":"HOTEL","name":"酒店"},"HotelFacility:2":{"id":2,"__typename":"HotelFacility","facilityTypeId":1,"newFacilityTypeId":16,"name":"停车场","kind":"boolean"},"HotelFacility:3":{"id":3,"__typename":"HotelFacility","facilityTypeId":7,"newFacilityTypeId":7,"name":"餐厅","kind":"boolean"},"HotelFacility:8":{"id":8,"__typename":"HotelFacility","facilityTypeId":23,"newFacilityTypeId":3,"name":"24小时前台","kind":"boolean"},"HotelFacility:16":{"id":16,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":1,"name":"禁烟客房","kind":"boolean"},"HotelFacility:25":{"id":25,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":1,"name":"无障碍设施","kind":"boolean"},"HotelFacility:46":{"id":46,"__typename":"HotelFacility","facilityTypeId":1,"newFacilityTypeId":16,"name":"免费停车","kind":"boolean"},"HotelFacility:47":{"id":47,"__typename":"HotelFacility","facilityTypeId":3,"newFacilityTypeId":11,"name":"上网服务","kind":"boolean"},"HotelFacility:48":{"id":48,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":1,"name":"电梯","kind":"boolean"},"HotelFacility:91":{"id":91,"__typename":"HotelFacility","facilityTypeId":23,"newFacilityTypeId":3,"name":"行李寄存","kind":"free_or_paid"},"HotelFacility:96":{"id":96,"__typename":"HotelFacility","facilityTypeId":3,"newFacilityTypeId":11,"name":"无线网络","kind":"boolean"},"HotelFacility:107":{"id":107,"__typename":"HotelFacility","facilityTypeId":3,"newFacilityTypeId":11,"name":"免费无线网络连接","kind":"boolean"},"HotelFacility:109":{"id":109,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":1,"name":"空调","kind":"free_or_paid"},"HotelFacility:135":{"id":135,"__typename":"HotelFacility","facilityTypeId":7,"newFacilityTypeId":3,"name":"自动售货机（饮品）","kind":"boolean"},"HotelFacility:136":{"id":136,"__typename":"HotelFacility","facilityTypeId":7,"newFacilityTypeId":3,"name":"自动售货机（零食）","kind":"boolean"},"HotelFacility:149":{"id":149,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":1,"name":"只接待成人","kind":"boolean"},"HotelFacility:163":{"id":163,"__typename":"HotelFacility","facilityTypeId":1,"newFacilityTypeId":1,"name":"WiFi（覆盖酒店各处）","kind":"boolean"},"HotelFacility:179":{"id":179,"__typename":"HotelFacility","facilityTypeId":22,"newFacilityTypeId":16,"name":"停车场 - 带监控","kind":"boolean"},"HotelFacility:181":{"id":181,"__typename":"HotelFacility","facilityTypeId":22,"newFacilityTypeId":16,"name":"停车库","kind":"boolean"},"HotelFacility:184":{"id":184,"__typename":"HotelFacility","facilityTypeId":22,"newFacilityTypeId":16,"name":"无障碍停车场","kind":"boolean"},"HotelFacility:185":{"id":185,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":19,"name":"无障碍通道","kind":"boolean"},"HotelFacility:186":{"id":186,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":19,"name":"坐便器 - 带扶手","kind":"boolean"},"HotelFacility:189":{"id":189,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":19,"name":"带紧急按钮的浴室","kind":"boolean"},"HotelFacility:205":{"id":205,"__typename":"HotelFacility","facilityTypeId":7,"newFacilityTypeId":7,"name":"水果","kind":"free_or_paid"},"HotelFacility:219":{"id":219,"__typename":"HotelFacility","facilityTypeId":7,"newFacilityTypeId":7,"name":"住宿内咖啡店","kind":"boolean"},"HotelFacility:420":{"id":420,"__typename":"HotelFacility","facilityTypeId":29,"newFacilityTypeId":34,"name":"刷卡进门","kind":"boolean"},"HotelFacility:421":{"id":421,"__typename":"HotelFacility","facilityTypeId":34,"newFacilityTypeId":34,"name":"安全报警器","kind":"boolean"},"HotelFacility:422":{"id":422,"__typename":"HotelFacility","facilityTypeId":34,"newFacilityTypeId":34,"name":"烟雾报警器","kind":"boolean"},"HotelFacility:423":{"id":423,"__typename":"HotelFacility","facilityTypeId":34,"newFacilityTypeId":34,"name":"公共区域闭路电视监控系统","kind":"boolean"},"HotelFacility:425":{"id":425,"__typename":"HotelFacility","facilityTypeId":34,"newFacilityTypeId":34,"name":"灭火器","kind":"boolean"},"HotelFacility:449":{"id":449,"__typename":"HotelFacility","facilityTypeId":40,"newFacilityTypeId":40,"name":"使用能有效针对新冠病毒的清洁产品","kind":"boolean"},"HotelFacility:450":{"id":450,"__typename":"HotelFacility","facilityTypeId":40,"newFacilityTypeId":40,"name":"已按当地权威机构指导意见清洗床单、毛巾和衣物","kind":"boolean"},"HotelFacility:451":{"id":451,"__typename":"HotelFacility","facilityTypeId":40,"newFacilityTypeId":40,"name":"每次入住前后消毒客人住宿","kind":"boolean"},"HotelFacility:457":{"id":457,"__typename":"HotelFacility","facilityTypeId":37,"newFacilityTypeId":37,"name":"客人住宿和重要区域提供洗手液","kind":"boolean"},"HotelFacility:458":{"id":458,"__typename":"HotelFacility","facilityTypeId":37,"newFacilityTypeId":37,"name":"已建立客人健康检查机制","kind":"boolean"},"HotelFacility:459":{"id":459,"__typename":"HotelFacility","facilityTypeId":37,"newFacilityTypeId":37,"name":"提供急救药箱","kind":"boolean"},"HotelFacility:461":{"id":461,"__typename":"HotelFacility","facilityTypeId":39,"newFacilityTypeId":39,"name":"支持无现金支付","kind":"boolean"},"HotelFacility:466":{"id":466,"__typename":"HotelFacility","facilityTypeId":40,"newFacilityTypeId":40,"name":"住宿由专业清洁公司提供清洁","kind":"boolean"},"HotelFacility:468":{"id":468,"__typename":"HotelFacility","facilityTypeId":40,"newFacilityTypeId":40,"name":"客人可以在入住期间取消住宿清洁服务","kind":"boolean"},"HotelFacility:487":{"id":487,"__typename":"HotelFacility","facilityTypeId":37,"newFacilityTypeId":37,"name":"住宿为客人提供体温计","kind":"boolean"},"Property:4685428":{"id":4685428,"__typename":"Property","name":"Holiday Inn Express Nanjing Dongshan, an IHG Hotel","preferredValue":"PREFERRED","isNewlyOpened":false,"location":{"__typename":"Location","countryCode":"cn","formattedAddress":"南京江宁区天行路19号"},"starRating":{"__typename":"StarRating","symbol":"DOTS","value":3},"photos":{"__typename":"PropertyPhotos","main":{"__typename":"Photo","resource({\"size\":\"max1024x768\"})":{"__typename":"PhotoResource","absoluteUrl":"https://cf.bstatic.com/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973\u0026o=","relativeUrl":"/xdata/images/hotel/max1024x768/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973\u0026o="},"resource({\"size\":\"square200\"})":{"__typename":"PhotoResource","absoluteUrl":"https://cf.bstatic.com/xdata/images/hotel/square200/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973\u0026o=","relativeUrl":"/xdata/images/hotel/square200/230593664.jpg?k=d7972efb91ceb1a10655184404cdf2e803259a3431401a8b338e49e722c51973\u0026o="}}},"accommodationType":{"__ref":"PropertyType:204"},"reviews":{"__typename":"Reviews","reviewsCount":5,"totalScore":8.6,"questions":[{"__typename":"ReviewQuestion","name":"hotel_staff","score":8,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"hotel_services","score":9,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"hotel_clean","score":9,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"hotel_comfort","score":9,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"hotel_value","score":8,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"hotel_location","score":8,"reviewsCount":5},{"__typename":"ReviewQuestion","name":"total","score":8.6,"reviewsCount":5}]},"hotelFacilities":[{"__ref":"HotelFacility:2"},{"__ref":"HotelFacility:3"},{"__ref":"HotelFacility:8"},{"__ref":"HotelFacility:16"},{"__ref":"HotelFacility:25"},{"__ref":"HotelFacility:46"},{"__ref":"HotelFacility:47"},{"__ref":"HotelFacility:48"},{"__ref":"HotelFacility:91"},{"__ref":"HotelFacility:96"},{"__ref":"HotelFacility:107"},{"__ref":"HotelFacility:109"},{"__ref":"HotelFacility:135"},{"__ref":"HotelFacility:136"},{"__ref":"HotelFacility:149"},{"__ref":"HotelFacility:163"},{"__ref":"HotelFacility:179"},{"__ref":"HotelFacility:181"},{"__ref":"HotelFacility:184"},{"__ref":"HotelFacility:185"},{"__ref":"HotelFacility:186"},{"__ref":"HotelFacility:189"},{"__ref":"HotelFacility:205"},{"__ref":"HotelFacility:219"},{"__ref":"HotelFacility:420"},{"__ref":"HotelFacility:421"},{"__ref":"HotelFacility:422"},{"__ref":"HotelFacility:423"},{"__ref":"HotelFacility:425"},{"__ref":"HotelFacility:449"},{"__ref":"HotelFacility:450"},{"__ref":"HotelFacility:451"},{"__ref":"HotelFacility:457"},{"__ref":"HotelFacility:458"},{"__ref":"HotelFacility:459"},{"__ref":"HotelFacility:461"},{"__ref":"HotelFacility:466"},{"__ref":"HotelFacility:468"},{"__ref":"HotelFacility:487"}],"externalReviews":null},"ROOT_QUERY":{"__typename":"Query","propertyDetails({\"input\":{\"hotelId\":4685428,\"searchConfigDate\":{\"checkin\":\"2023-06-02\",\"checkout\":\"2023-06-03\"}}})":{"__ref":"Property:4685428"}}}</script>
				-->
				<script async="async" crossorigin="anonymous" data-chunk="client"
					nonce="ybUYWKfiYBp3lUr"
					src="./script/psb/capla/static/js/bui-react.761a1f10.js"></script>
				<script async="async" crossorigin="anonymous" data-chunk="client"
					nonce="ybUYWKfiYBp3lUr"
					src="./script/psb/capla/static/js/vendors.1b48f5c6.js"></script>
				<script async="async" crossorigin="anonymous" data-chunk="client"
					nonce="ybUYWKfiYBp3lUr"
					src="./script/psb/capla/static/js/client.9c08c8c7.js"></script>
				<script async="async" crossorigin="anonymous"
					data-chunk="components-PropertyDetails-PropertyDetails"
					nonce="ybUYWKfiYBp3lUr"
					src="./script/psb/capla/static/js/936.f27862db.chunk.js"></script>
				<script
					id="__CAPLA_CHUNK_METADATA__b-checkout-bp-accommodationBXEQFGJJ/PriceMatch/csr/bp"
					nonce="ybUYWKfiYBp3lUr" type="application/json">{"chunks":["793","216","47"],"experimentTags":{},"featureNames":{},"copyTags":{}}</script>
				<script
					id="b-checkout-bp-accommodationBXEQFGJJ/PriceMatch/csr/bp__LOADABLE_REQUIRED_CHUNKS__"
					nonce="ybUYWKfiYBp3lUr" type="application/json">[]</script>
				<script
					id="b-checkout-bp-accommodationBXEQFGJJ/PriceMatch/csr/bp__LOADABLE_REQUIRED_CHUNKS___ext"
					nonce="ybUYWKfiYBp3lUr" type="application/json">{"namedChunks":[]}</script>
				<div class="g-hidden">
					<div
						class="js-user-access-menu-lightbox user-access-menu-lightbox--signin user-access-menu-lightbox--no-password-strength">
						<div class="iam_account_access">
							<div class="iam_card iam_login_form">
								<div class="iam_login_text iam_login_text--header">请登录继续</div>
								<a
									href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?bkng_action=book&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;lang=zh-cn&amp;response_type=code&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;state=UvsHO7Jo1gOyI3-fs1lP1RL4iTbqHCZH2mlt5bk_kRqLwLJIxYsYxIRQYpx-iLDfe7peS6Y5zMADk2U1bHCU8ChHl5NvBbScUvjd5MG0bIS8ESeU_YrWwNV286EUa28LYYt01z3hu9SNLh8sonijfvdOid948X8B8ju111-tl158wdtC8LUWNgwjfCoUdIyT-XofJ-1doyVZ1kD2EE0rL0qDpivW9MlWBpgo04T0AZvb1mRv3YbTe6wsTENtq8jgLg8pudFEAzmnN4AE_NxvKbQItlOXnPENtKdHOxUCFnrNQRAzlU0928rcYFl74srPLjdZhZglN4kLGhilvianE9h4_UY9QZdSLrHAsfLU-NF192y78tX8SfeQFU3kcEy88JvY_us5x88AztSg_eLRw6lOh4P8kmmHRexVY_M074lEA9EK6Xjjr713TXuWakE1zraSQ5feiItYrnpLw6y8yur2IcHASO52NAf5pisETxpNvZ-U8LRwDRo1eYexbVtOiJvbyoQByUs_xpFDlxiPwwoljS0Gk1CLkUTyenefBI5rTC0VsQzeLdegH7Cj7vJMlYz5e3P588rqf-HsuqpAp4-S_BqBZkZ0ca104QDA_lIKbT9NTYly4F0KxMvJaH8CzXMzfN7zH4gF5pt-JZ4vjz7l3l58pX7Ja8miFqyE7XkLA0gpatv9qYch7xpIqWqk6vTPVDcY1-EjYkway0TC5sOIgMy0s9w-cdc-zDUScAnwDsCtD4cx8KJclpu8C9T-Bnu0xUECL7B8FCRyC6R1RWe4BRkGbkDYWxSGB5ZC6ux3Cl9qPELrY7JpjD4hydbxh79HLjs9w-Ol2oCkjASqOUu8zZsfK4VbcvVtMZqfy_DzrnBJEpMxQoSPiUN5B4yq4tTTrD_YY3CAsLPvd6NJ7LUoJ6qz6C80ZIbDm36kMSJnF96xmmV7V7dg5VzxwVfwO9vU2pqt6s9Ghr4WERaT1r4H5mrhShe8OFgw2t6VZ1oEjXqztsCkeVUswKAJeb44DRKwD8w0QZE3GMR9GAu0SUXT5gS2If4mOJE6WVvwmItXtlB6bxpmsACfeDsBMZxuKYWudFtp6z5HliGH0RqfCyY8UpH9PmpzqA1Zkax7fxZfjlb26d3iN_ZSeLXwrgM3zIokoEnLfzhvyJSnCWQpaBMF_nmcIYCh_bVBrsa72KoURqerFTtAOPQ15jGYSdGYQDMiBQobDOL6Z32FKe2qfZmiQ3D-ZVTVPj5y_lTKSwPz4dfdQ7AbJy7MQtM5zVwG6FQuX8uITOKLWTfg5wGUlkYgSIMVB_4zeIJ2bvKERH8U5C-o9OfK2XNGNK4KjfletLcegXI-cVh8hypBe3U&amp;dt=1682392696&amp;aid=397645"
									class="iam_login_btn--email bui-button bui-button--large bui-button--wide bui-spacer"
									role="button" data-bui-component="Button"> <span
									class="bui-button__text"> 登录你的帐号 </span>
								</a>
								<div class="iam_login_or">
									<div class="iam_login_or_divider"></div>
									<span class="iam_login_or_text">or use one of these
										options</span>
								</div>
								<div class="access-panel__social-buttons">
									<a
										href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?bkng_action=book&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;lang=zh-cn&amp;response_type=code&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;state=UvsHO7Jo1gOyI3-fs1lP1RL4iTbqHCZH2mlt5bk_kRqLwLJIxYsYxIRQYpx-iLDfe7peS6Y5zMADk2U1bHCU8ChHl5NvBbScUvjd5MG0bIS8ESeU_YrWwNV286EUa28LYYt01z3hu9SNLh8sonijfvdOid948X8B8ju111-tl158wdtC8LUWNgwjfCoUdIyT-XofJ-1doyVZ1kD2EE0rL0qDpivW9MlWBpgo04T0AZvb1mRv3YbTe6wsTENtq8jgLg8pudFEAzmnN4AE_NxvKbQItlOXnPENtKdHOxUCFnrNQRAzlU0928rcYFl74srPLjdZhZglN4kLGhilvianE9h4_UY9QZdSLrHAsfLU-NF192y78tX8SfeQFU3kcEy88JvY_us5x88AztSg_eLRw6lOh4P8kmmHRexVY_M074lEA9EK6Xjjr713TXuWakE1zraSQ5feiItYrnpLw6y8yur2IcHASO52NAf5pisETxpNvZ-U8LRwDRo1eYexbVtOiJvbyoQByUs_xpFDlxiPwwoljS0Gk1CLkUTyenefBI5rTC0VsQzeLdegH7Cj7vJMlYz5e3P588rqf-HsuqpAp4-S_BqBZkZ0ca104QDA_lIKbT9NTYly4F0KxMvJaH8CzXMzfN7zH4gF5pt-JZ4vjz7l3l58pX7Ja8miFqyE7XkLA0gpatv9qYch7xpIqWqk6vTPVDcY1-EjYkway0TC5sOIgMy0s9w-cdc-zDUScAnwDsCtD4cx8KJclpu8C9T-Bnu0xUECL7B8FCRyC6R1RWe4BRkGbkDYWxSGB5ZC6ux3Cl9qPELrY7JpjD4hydbxh79HLjs9w-Ol2oCkjASqOUu8zZsfK4VbcvVtMZqfy_DzrnBJEpMxQoSPiUN5B4yq4tTTrD_YY3CAsLPvd6NJ7LUoJ6qz6C80ZIbDm36kMSJnF96xmmV7V7dg5VzxwVfwO9vU2pqt6s9Ghr4WERaT1r4H5mrhShe8OFgw2t6VZ1oEjXqztsCkeVUswKAJeb44DRKwD8w0QZE3GMR9GAu0SUXT5gS2If4mOJE6WVvwmItXtlB6bxpmsACfeDsBMZxuKYWudFtp6z5HliGH0RqfCyY8UpH9PmpzqA1Zkax7fxZfjlb26d3iN_ZSeLXwrgM3zIokoEnLfzhvyJSnCWQpaBMF_nmcIYCh_bVBrsa72KoURqerFTtAOPQ15jGYSdGYQDMiBQobDOL6Z32FKe2qfZmiQ3D-ZVTVPj5y_lTKSwPz4dfdQ7AbJy7MQtM5zVwG6FQuX8uITOKLWTfg5wGUlkYgSIMVB_4zeIJ2bvKERH8U5C-o9OfK2XNGNK4KjfletLcegXI-cVh8hypBe3U&amp;dt=1682392696&amp;aid=397645&amp;prompt=wechat"
										data-popup-href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?client_id=vO1Kblk7xX9tUn2cpZLS&amp;response_type=code&amp;lang=zh-cn&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;bkng_action=book&amp;popup=1&amp;aid=397645&amp;dt=1682392696&amp;state=UsQDO7Jo1gOyI38WKs33MtukWFfxZrmnUX2YboY-AFAze629IeJQsWJgqZAXRMRQOyNhRidBF4n1VNyLzdlIRPUxx2FGRzVlk-WVjfTEL5ArKJFDGXH9jYYoqltO5bgtMv4PeA0m8xxnR9b-1S-KxEAm4XrmhSlT5nAo1vg_UYyXVx4gIESBj1XBN62CsGsWbHMX3g8lfzSx3CnRENBjddYnDQnrNOfVxbXSWobLTKzpeacbwmJcM8v0W0fHw9q6XFGjKTAe1sxJnSBsWFdVVu6kWevan2rPUAQKr99FL5wxcy0uVo3ftceArnblAeA8QavMfM6ZuYJ3kXUahIeVgL3e1KZEowAUNisev8EZx9trabYLAhd7pfVxMpsHzXW9SvAWXhstdIRWw1tbYoBUoP-sLxaYfliGFhRzZI4zkTBkxr-OoQqb8jIUfExHO1AZ9nOS47zcUeb9XgZno9NrTXSEMdzRBWbQGnx8GU8g0ilwqGI1LaHVCCKOupyVvJx9oXE3CxpT53XKHs9yijW-fZjUO9bJr5ZuuL7Os9In8kjQj9MtoyIFU8I5kioqT75lrcWC7HNSJuPCWA9DyonL9oA2UozI_Fc&amp;prompt=wechat"
										class="iam_login_form__social-button iam_login_form__social-button-wechat bui-button bui-button--secondary "
										title="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										aria-label="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										data-component="iam/social-button" data-mask="true">
										<div class="iam_login_form__social-button-content">
											<div class="iam_login_form__social-button-image">
												<svg class="bk-icon -social-providers-wechat" height="24"
													width="24" viewBox="0 0 128 128" role="presentation"
													aria-hidden="true" focusable="false">
                          <path fill="#3EBD30"
														d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.7 50.7 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.1 25.1 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z" />
                        </svg>
											</div>
										</div>
									</a> <a
										href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?bkng_action=book&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;lang=zh-cn&amp;response_type=code&amp;client_id=vO1Kblk7xX9tUn2cpZLS&amp;state=UvsHO7Jo1gOyI3-fs1lP1RL4iTbqHCZH2mlt5bk_kRqLwLJIxYsYxIRQYpx-iLDfe7peS6Y5zMADk2U1bHCU8ChHl5NvBbScUvjd5MG0bIS8ESeU_YrWwNV286EUa28LYYt01z3hu9SNLh8sonijfvdOid948X8B8ju111-tl158wdtC8LUWNgwjfCoUdIyT-XofJ-1doyVZ1kD2EE0rL0qDpivW9MlWBpgo04T0AZvb1mRv3YbTe6wsTENtq8jgLg8pudFEAzmnN4AE_NxvKbQItlOXnPENtKdHOxUCFnrNQRAzlU0928rcYFl74srPLjdZhZglN4kLGhilvianE9h4_UY9QZdSLrHAsfLU-NF192y78tX8SfeQFU3kcEy88JvY_us5x88AztSg_eLRw6lOh4P8kmmHRexVY_M074lEA9EK6Xjjr713TXuWakE1zraSQ5feiItYrnpLw6y8yur2IcHASO52NAf5pisETxpNvZ-U8LRwDRo1eYexbVtOiJvbyoQByUs_xpFDlxiPwwoljS0Gk1CLkUTyenefBI5rTC0VsQzeLdegH7Cj7vJMlYz5e3P588rqf-HsuqpAp4-S_BqBZkZ0ca104QDA_lIKbT9NTYly4F0KxMvJaH8CzXMzfN7zH4gF5pt-JZ4vjz7l3l58pX7Ja8miFqyE7XkLA0gpatv9qYch7xpIqWqk6vTPVDcY1-EjYkway0TC5sOIgMy0s9w-cdc-zDUScAnwDsCtD4cx8KJclpu8C9T-Bnu0xUECL7B8FCRyC6R1RWe4BRkGbkDYWxSGB5ZC6ux3Cl9qPELrY7JpjD4hydbxh79HLjs9w-Ol2oCkjASqOUu8zZsfK4VbcvVtMZqfy_DzrnBJEpMxQoSPiUN5B4yq4tTTrD_YY3CAsLPvd6NJ7LUoJ6qz6C80ZIbDm36kMSJnF96xmmV7V7dg5VzxwVfwO9vU2pqt6s9Ghr4WERaT1r4H5mrhShe8OFgw2t6VZ1oEjXqztsCkeVUswKAJeb44DRKwD8w0QZE3GMR9GAu0SUXT5gS2If4mOJE6WVvwmItXtlB6bxpmsACfeDsBMZxuKYWudFtp6z5HliGH0RqfCyY8UpH9PmpzqA1Zkax7fxZfjlb26d3iN_ZSeLXwrgM3zIokoEnLfzhvyJSnCWQpaBMF_nmcIYCh_bVBrsa72KoURqerFTtAOPQ15jGYSdGYQDMiBQobDOL6Z32FKe2qfZmiQ3D-ZVTVPj5y_lTKSwPz4dfdQ7AbJy7MQtM5zVwG6FQuX8uITOKLWTfg5wGUlkYgSIMVB_4zeIJ2bvKERH8U5C-o9OfK2XNGNK4KjfletLcegXI-cVh8hypBe3U&amp;dt=1682392696&amp;aid=397645&amp;prompt=apple"
										data-popup-href="https:&#47;&#47;account.booking.com&#47;auth&#47;oauth2?client_id=vO1Kblk7xX9tUn2cpZLS&amp;response_type=code&amp;lang=zh-cn&amp;redirect_uri=https%3A%2F%2Fsecure.booking.com%2Flogin.html%3Fop%3Doauth_return&amp;bkng_action=book&amp;popup=1&amp;aid=397645&amp;dt=1682392696&amp;state=UsQDO7Jo1gOyI38WKs33MtukWFfxZrmnUX2YboY-AFAze629IeJQsWJgqZAXRMRQOyNhRidBF4n1VNyLzdlIRPUxx2FGRzVlk-WVjfTEL5ArKJFDGXH9jYYoqltO5bgtMv4PeA0m8xxnR9b-1S-KxEAm4XrmhSlT5nAo1vg_UYyXVx4gIESBj1XBN62CsGsWbHMX3g8lfzSx3CnRENBjddYnDQnrNOfVxbXSWobLTKzpeacbwmJcM8v0W0fHw9q6XFGjKTAe1sxJnSBsWFdVVu6kWevan2rPUAQKr99FL5wxcy0uVo3ftceArnblAeA8QavMfM6ZuYJ3kXUahIeVgL3e1KZEowAUNisev8EZx9trabYLAhd7pfVxMpsHzXW9SvAWXhstdIRWw1tbYoBUoP-sLxaYfliGFhRzZI4zkTBkxr-OoQqb8jIUfExHO1AZ9nOS47zcUeb9XgZno9NrTXSEMdzRBWbQGnx8GU8g0ilwqGI1LaHVCCKOupyVvJx9oXE3CxpT53XKHs9yijW-fZjUO9bJr5ZuuL7Os9In8kjQj9MtoyIFU8I5kioqT75lrcWC7HNSJuPCWA9DyonL9oA2UozI_Fc&amp;prompt=apple"
										class="iam_login_form__social-button iam_login_form__social-button-apple bui-button bui-button--secondary "
										title="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										aria-label="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
										data-component="iam/social-button" data-mask="true">
										<div class="iam_login_form__social-button-content">
											<div class="iam_login_form__social-button-image">
												<svg class="bk-icon -social-providers-apple" height="24"
													width="24" viewBox="0 0 170 170" role="presentation"
													aria-hidden="true" focusable="false">
                          <path
														d="M150.37 130.25c-2.45 5.66-5.35 10.87-8.71 15.66-4.58 6.53-8.33 11.05-11.22 13.56-4.48 4.12-9.28 6.23-14.42 6.35-3.69 0-8.14-1.05-13.32-3.18-5.197-2.12-9.973-3.17-14.34-3.17-4.58 0-9.492 1.05-14.746 3.17-5.262 2.13-9.501 3.24-12.742 3.35-4.929.21-9.842-1.96-14.746-6.52-3.13-2.73-7.045-7.41-11.735-14.04-5.032-7.08-9.169-15.29-12.41-24.65-3.471-10.11-5.211-19.9-5.211-29.378 0-10.857 2.346-20.221 7.045-28.068 3.693-6.303 8.606-11.275 14.755-14.925s12.793-5.51 19.948-5.629c3.915 0 9.049 1.211 15.429 3.591 6.362 2.388 10.447 3.599 12.238 3.599 1.339 0 5.877-1.416 13.57-4.239 7.275-2.618 13.415-3.702 18.445-3.275 13.63 1.1 23.87 6.473 30.68 16.153-12.19 7.386-18.22 17.731-18.1 31.002.11 10.337 3.86 18.939 11.23 25.769 3.34 3.17 7.07 5.62 11.22 7.36-.9 2.61-1.85 5.11-2.86 7.51zM119.11 7.24c0 8.102-2.96 15.667-8.86 22.669-7.12 8.324-15.732 13.134-25.071 12.375a25.222 25.222 0 0 1-.188-3.07c0-7.778 3.386-16.102 9.399-22.908 3.002-3.446 6.82-6.311 11.45-8.597 4.62-2.252 8.99-3.497 13.1-3.71.12 1.083.17 2.166.17 3.24z" />
                        </svg>
											</div>
										</div>
									</a>
								</div>
								<div class="iam_login_text iam_login_text--footer">
									还没有帐号？ <a href="" class="iam_login_link">创建帐号</a>
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
		<svg class="bk-icon -fonticon-aclose" height="32" width="36"
			viewBox="0 0 36 32" role="presentation" aria-hidden="true"
			focusable="false">
      <path
				d="M34 3.2L30.8 0 18 12.8 5.2 0 2 3.2 14.8 16 2 28.8 5.2 32 18 19.2 30.8 32l3.2-3.2L21.2 16 34 3.2z" />
    </svg>
		<svg class="bk-icon -fonticon-downchevron" height="32" width="51"
			viewBox="0 0 51 32" role="presentation" aria-hidden="true"
			focusable="false">
      <path d="M45.1.2L25.7 19.7 6.3.2 0 6.5l25.7 25.7L51.4 6.5z" />
    </svg>
		<svg class="bk-icon -fonticon-upchevron" height="32" width="51"
			viewBox="0 0 51 32" role="presentation" aria-hidden="true"
			focusable="false">
      <path d="M6.3 32.2l19.4-19.5 19.4 19.5 6.3-6.3L25.7.2 0 25.9z" />
    </svg>
		<svg class="bk-icon -fonticon-checkempty" height="32" width="32"
			viewBox="0 0 32 32" role="presentation" aria-hidden="true"
			focusable="false">
      <path
				d="M16 30c7.732 0 14-6.268 14-14S23.732 2 16 2 2 8.268 2 16s6.268 14 14 14zm0 2C7.163 32 0 24.837 0 16S7.163 0 16 0s16 7.163 16 16-7.163 16-16 16z" />
    </svg>
		<svg class="bk-icon -fonticon-checkno2" height="32" width="32"
			viewBox="0 0 32 32" role="presentation" aria-hidden="true"
			focusable="false">
      <path
				d="M16 30c7.732 0 14-6.268 14-14S23.732 2 16 2 2 8.268 2 16s6.268 14 14 14zm0 2C7.163 32 0 24.837 0 16S7.163 0 16 0s16 7.163 16 16-7.163 16-16 16z" />
      <path
				d="M24.587 11.039L13.825 21.583c-.054.09-.12.182-.208.271l-.504.505c-.278.278-.607.403-.733.276l-5.125-5.366c-.126-.126-.002-.454.276-.732l.504-.505c.279-.279.607-.403.733-.277l3.842 4.022L23.073 9.525a.715.715 0 0 1 1.009 0l.505.505a.715.715 0 0 1 0 1.009z" />
    </svg>
	</div>
	<script type="text/javascript" nonce="ybUYWKfiYBp3lUr">
    // <![CDATA[
    /*extern booking */
    booking.ensureNamespaceExists('env');
    booking.env.b_page = '';
// ]]>
  </script>
	<div style="display: none;" id="logo-not-document-write"></div>
	<script type="text/javascript" nonce="ybUYWKfiYBp3lUr">
    setTimeout(function () {
      var img = new Image(1, 1);
      img.src = '/logo?ver=1&sid=f0f82b20b46106bf73b9641ed765ee02&t=' + 1682392691 + 1;
    }, 0);
  </script>
	<noscript>
		<img style="display: none"
			src="/logo?ver=0&sid=f0f82b20b46106bf73b9641ed765ee02&t=1682392691">
	</noscript>
	<script
		src="./script/static/js/raf_alicloud_a/2982a4a90b51ba99ee68b84c7b4da1a4f3e73c32.js"
		crossorigin nonce="ybUYWKfiYBp3lUr"></script>
	</div>
	<span id="req_info" style="display: none;">1713460|2,1704900|1,1704900|3,1662190|2,1720070|1,1713460,1720070,1707050,1704900,1712990,1713460|3,1710950</span>
</body>

</html>