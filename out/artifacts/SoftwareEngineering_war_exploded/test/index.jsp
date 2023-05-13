<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.time.LocalDate" %>
<%@ page language="java" import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="zh-cn"
      class="noJS b_chrome b_chrome_111 supports_inline-block supports_flexbox_unprefixed supports_fontface ">
<head>
    <meta name="referrer" content="origin-when-cross-origin">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" id="main-css-preload"
          href="https://ac-a.static.booking.cn/static/css/main_cn_alicloud_a.iq_ltr/7e25c448172fa2405f9aaf4a9ad33bb8786d3846.css"
          data-main-css="1"/>
    <link rel="stylesheet"
          href="https://ac-a.static.booking.cn/static/css/main_exps_alicloud_a.iq_ltr/18d1b7c3e1d431578ff0c4342fe8ba6e5ca9aa58.css"/>
    <link rel="stylesheet"
          href="https://ac-a.static.booking.cn/static/css/gprof_icons_alicloud_a.iq_ltr/f9a9959fb174be6a1a61e78d982a7444775f1419.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://ac-a.static.booking.cn/static/css/xp-index-sb_alicloud_a.iq_ltr/7002203683ade23c789ef8ef41e69938504499e4.css"
          media="screen, print"/>
    <link rel="_prefetch" data-defer-prefetch
          href="https://ac-a.static.booking.cn/static/css/searchresults_alicloud_a.iq_ltr/0edeb3177467c0445e8ddfffc0573cef4849b34e.css">
    <link rel="stylesheet" type="text/css"
          href="https://ac-a.static.booking.cn/static/css/incentives_alicloud_a.iq_ltr/33eadafb597edc0b651d3538d4ebdc6ca7741b68.css"
          media="screen"/>
    <link rel="stylesheet"
          href="https://ac-a.static.booking.cn/static/css/index_alicloud_a.iq_ltr/24ae0b6bd8d77f2d9f0292f4ce6c6eef52ece38b.css"/>
    <style nonce="4DwZSPUvFd8eOkZ">
         #basiclayout, .basiclayout { margin: 0; } #special_actions { margin: 3px 15px 3px 0; } .ticker_space { margin-top: 3px !important; } #logo_no_globe_new_logo { top: 14px; } .b_msie_6 #top, .b_msie_6 body.header_reshuffle #top {height:61px !important;} .b_msie_6 #special_actions { margin: 3px 15px 3px 0; overflow:visible; } body.header_reshuffle #top { min-height: 50px !important; height: auto !important; } .nobg { background: #fff url("https://ac-a.static.booking.cn/static/img/nobg_all_blue_iq/b700d9e3067c1186a3364012df4fe1c48ae6da44.png") repeat-x; background-position: 0 -50px; }

    </style>
    <link rel="stylesheet"
          href="https://ac-a.static.booking.cn/static/css/cjk/969f60bdd3700d13d4b9df8937fcc8745bbfa45b.css"/>
   <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/core-deps-inlinedet_alicloud_a/6da0bf621035bb8a2f9c756d6a89dda03b2f7864.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/jquery_alicloud_a/e1e8c0e862309cb4caf3c0d5fbea48bfb8eaad42.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/main_cn_alicloud_a/5a592a123d4c7bbd3e334e1a8e8526bca30aea75.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/index_alicloud_a/1053c148f8dd609d3e2595864ac312d146ea2d65.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/landingpage_alicloud_a/573406558ab592fc7b4b470efe3cda0386d3c2ef.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/searchbox_alicloud_a/63d48ea860a41e4776f0e426fa52302337450ad1.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    <link rel="preload" as="script"
          href="https://ac-a.static.booking.cn/static/js/error_catcher_bec_alicloud_a/0acd2ada6c74d5dec978a04ea837952bdf050cd2.js"
          crossorigin nonce="4DwZSPUvFd8eOkZ">
    
    <title>
        Booking.com | 优质酒店和住宿
    </title>
    
    <link rel="alternate" type="text/html" hreflang="zh-cn" href="https://www.booking.com/index.zh-cn.html"
          title="简体中文"/>
    <link rel="icon"
          href="https://ac-a.static.booking.cn/static/img/favicon-new-32/40749a316c45e239a7149b6711ea4c48d10f8d89.ico"
          sizes="any">
    <link rel="icon"
          href="https://ac-a.static.booking.cn/static/img/favicon/9ca83ba2a5a3293ff07452cb24949a5843af4592.svg"
          type="image/svg+xml">
    <link rel="apple-touch-icon"
          href="https://ac-a.static.booking.cn/static/img/apple-touch-icon-blue/5db9fd30d96b1796883ee94be7dddce50b73bb38.png"/>
    <link rel="help"
          href="/faq.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02&amp;"/>
    <link rel="search" type="application/opensearchdescription+xml"
          href="https://ac-a.static.booking.cn/static/opensearch/zh-cn/e44d907bf77c5add70d4a46fce6bff10be3e8d18.xml"
          title="Booking.com在线酒店预订"/>
    <link href="https://plus.google.com/105443419075154950489" rel="publisher"/>
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="client" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/bui-react.e8e22018.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-CovidBanner" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/513.75e7f786.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-SimilarPropertiesCarousel" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/348.dc09efca.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-MerchCarousel" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/382.55353d8a.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-DestinationPostcardsDesktop-DestinationPostcardsDesktop"
          rel="stylesheet" href="https://ac-a.static.booking.cn/psb/capla/static/css/514.3e7abeb8.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-TripTypesCarousel" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/534.f6ac9b19.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-HeroBanner-HeroBannerDesktop" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/579.ccc062bf.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-FullWidthBannerDesktop-FullWidthBannerDesktop"
          rel="stylesheet" href="https://ac-a.static.booking.cn/psb/capla/static/css/736.efc019bd.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-UniqueStaysProperties" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/224.e9ab6600.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ"
          data-chunk="bookingcom-genius-credit-book-and-unlock-mfe-pages-GeniusVipCampaignsIndexBanner-GeniusVipCampaignsIndexBanner"
          rel="stylesheet" href="https://ac-a.static.booking.cn/psb/capla/static/css/186.5332db14.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-GeniusSignInBanner-GeniusSignInBanner" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/527.44af578a.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-GeniusSignInSheet-GeniusSignInSheet" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/802.928bb228.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-SecondaryBanner-SecondaryBannerDesktop" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/664.2123fd3a.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-BHAwarenessBanner-BHAwarenessBanner" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/119.1cf1747e.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-DiscoveryByMonthCarousel" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/786.eb3ca334.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ"
          data-chunk="bookingcom-search-web-searchresults-components-SearchBoxDesktopHorizontal-SearchBoxDesktopHorizontal"
          rel="stylesheet" href="https://ac-a.static.booking.cn/psb/capla/static/css/778.071c6af8.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-BasNDisplayBannerIndexPrimary" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/541.4f342d2c.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="src-components-HomesGuestsLoveCarousel" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/76.29ea6195.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="bookingcom-web-shell-header-mfe-components-AccommodationHeader"
          rel="stylesheet" href="https://ac-a.static.booking.cn/psb/capla/static/css/93.22edeb57.chunk.css">
    <link nonce="4DwZSPUvFd8eOkZ" data-chunk="bookingcom-web-shell-header-mfe-components-GlobalAlerts" rel="stylesheet"
          href="https://ac-a.static.booking.cn/psb/capla/static/css/665.4b0f9a6e.chunk.css">
</head>
<body data-bui-theme="legacy-light"
      id="b2indexPage"
      class="bookings2 b2 index zh lang_is_ltr lang_is_cjk header_reshuffle no_bg_img nobg user_center app_user_center landing lp_flexible_layout sb_gradient_border b-sprite-3 lt ds-traveller-header lx_cwv_font_swap bigblue_std_sm bigblue_std_lg iconfont_is_loading  lp_body_constraint_static loc-searchbox-lighter sb_can_have_advanced_search iq-x-bar iq-x-bar-new iq-xp-sb ">
    
<div data-capla-component="b-index-lp-web-mfe/TravellerHeader" data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
    <div class="web-shell-header-mfe" data-testid="web-shell-header-mfe">
        <header class=" b4ea8459d6">
            <nav class="c20fd9b542">
                <div class="f9966e6860">
                    <div class="a945757098">
                        <span data-testid="header-logo">
                        <a data-testid="header-booking-logo"
                           aria-label="Booking.com"
                           href="./index.html"
                           class="fc63351294">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 180 30">
                            <path fill="#fff"
                                  d="M70.6 2.73999C70.602 2.19808 70.7646 1.66892 71.0673 1.21943C71.3701 0.769947 71.7993 0.420321 72.3007 0.214768C72.8021 0.00921437 73.3532 -0.0430342 73.8843 0.064629C74.4155 0.172292 74.9027 0.435032 75.2845 0.819622C75.6663 1.20421 75.9255 1.69338 76.0293 2.22527C76.133 2.75716 76.0768 3.30788 75.8676 3.80779C75.6584 4.3077 75.3056 4.73434 74.8539 5.03377C74.4022 5.3332 73.8719 5.49197 73.33 5.48999C72.9702 5.48868 72.6141 5.41651 72.2822 5.2776C71.9503 5.13869 71.649 4.93576 71.3955 4.6804C71.1419 4.42504 70.9412 4.12225 70.8047 3.78931C70.6683 3.45637 70.5987 3.09982 70.6 2.73999V2.73999ZM116.5 23.77C117.044 23.772 117.577 23.6124 118.031 23.3114C118.484 23.0104 118.838 22.5816 119.048 22.0793C119.257 21.577 119.313 21.0238 119.208 20.4897C119.103 19.9555 118.842 19.4646 118.458 19.079C118.074 18.6934 117.584 18.4305 117.05 18.3236C116.516 18.2167 115.963 18.2705 115.46 18.4784C114.957 18.6862 114.527 19.0387 114.224 19.4911C113.922 19.9436 113.76 20.4757 113.76 21.02C113.76 21.7476 114.048 22.4456 114.562 22.961C115.075 23.4764 115.772 23.7673 116.5 23.77V23.77ZM25.7 6.72999C24.0129 6.74775 22.3688 7.26426 20.9746 8.21447C19.5805 9.16469 18.4986 10.5061 17.8653 12.0699C17.2319 13.6337 17.0754 15.3499 17.4154 17.0025C17.7554 18.6551 18.5767 20.1701 19.776 21.3569C20.9752 22.5436 22.4988 23.349 24.1548 23.6717C25.8108 23.9944 27.5253 23.8199 29.0824 23.1702C30.6395 22.5205 31.9695 21.4247 32.9051 20.0206C33.8406 18.6166 34.3399 16.9672 34.34 15.28C34.3768 14.1396 34.1778 13.0038 33.7555 11.9438C33.3331 10.8839 32.6965 9.92248 31.8855 9.11989C31.0744 8.3173 30.1064 7.69078 29.0421 7.27955C27.9778 6.86831 26.84 6.68122 25.7 6.72999V6.72999ZM25.7 19.83C23.35 19.83 21.7 17.96 21.7 15.28C21.7 12.6 23.34 10.73 25.7 10.73C28.06 10.73 29.7 12.6 29.7 15.28C29.7 17.96 28.11 19.83 25.7 19.83ZM65.3 15.71C65.1321 15.3716 64.9128 15.0613 64.65 14.79L64.5 14.63L64.66 14.48C64.9116 14.2078 65.1423 13.917 65.35 13.61L69.74 7.05999H64.41L61.1 12.19C60.9586 12.3442 60.782 12.4621 60.5852 12.5334C60.3885 12.6048 60.1774 12.6277 59.97 12.6H59.22V2.90999C59.22 0.979993 58.01 0.709993 56.71 0.709993H54.48V23.58H59.21V16.72H59.65C60.19 16.72 60.56 16.78 60.73 17.08L63.35 21.97C63.5773 22.5089 63.9785 22.9563 64.4895 23.2408C65.0006 23.5253 65.5922 23.6306 66.17 23.54H69.8L67.09 19.07L65.3 15.71ZM88.27 6.68999C87.3747 6.67014 86.4851 6.83782 85.6584 7.18226C84.8318 7.5267 84.0863 8.04028 83.47 8.68999L83.18 8.97999L83.08 8.57999C82.9261 8.08803 82.6021 7.66692 82.166 7.39207C81.7299 7.11723 81.2102 7.0066 80.7 7.07999H78.57V23.57H83.29V15.97C83.275 15.2919 83.373 14.6159 83.58 13.97C83.7979 13.1302 84.2923 12.3883 84.9836 11.8639C85.6748 11.3396 86.5225 11.0634 87.39 11.08C88.85 11.08 89.39 11.85 89.39 13.86V21.05C89.335 21.3921 89.3619 21.7424 89.4686 22.072C89.5753 22.4017 89.7586 22.7013 90.0036 22.9463C90.2487 23.1914 90.5483 23.3747 90.878 23.4814C91.2076 23.5881 91.5579 23.615 91.9 23.56H94.12V13.07C94.15 8.89999 92.12 6.68999 88.27 6.68999V6.68999ZM73.39 7.05999H71.17V23.58H75.87V9.57999C75.9234 9.24041 75.8964 8.89304 75.7913 8.56576C75.6862 8.23848 75.5058 7.94038 75.2647 7.69537C75.0236 7.45037 74.7284 7.26527 74.4028 7.15493C74.0773 7.04459 73.7304 7.01208 73.39 7.05999V7.05999ZM44.16 6.72999C42.4729 6.74775 40.8288 7.26426 39.4346 8.21447C38.0405 9.16469 36.9586 10.5061 36.3253 12.0699C35.6919 13.6337 35.5354 15.3499 35.8754 17.0025C36.2154 18.6551 37.0367 20.1701 38.236 21.3569C39.4352 22.5436 40.9588 23.349 42.6148 23.6717C44.2708 23.9944 45.9853 23.8199 47.5424 23.1702C49.0995 22.5205 50.4295 21.4247 51.3651 20.0206C52.3006 18.6166 52.7999 16.9672 52.8 15.28C52.8368 14.1396 52.6378 13.0038 52.2155 11.9438C51.7931 10.8839 51.1565 9.92248 50.3455 9.11989C49.5344 8.3173 48.5664 7.69078 47.5021 7.27955C46.4378 6.86831 45.3 6.68122 44.16 6.72999V6.72999ZM44.16 19.83C41.81 19.83 40.16 17.96 40.16 15.28C40.16 12.6 41.8 10.73 44.16 10.73C46.52 10.73 48.16 12.6 48.16 15.28C48.16 17.96 46.57 19.83 44.16 19.83ZM144.89 6.72999C143.203 6.74775 141.559 7.26426 140.165 8.21447C138.77 9.16469 137.689 10.5061 137.055 12.0699C136.422 13.6337 136.265 15.3499 136.605 17.0025C136.945 18.6551 137.767 20.1701 138.966 21.3569C140.165 22.5436 141.689 23.349 143.345 23.6717C145.001 23.9944 146.715 23.8199 148.272 23.1702C149.829 22.5205 151.16 21.4247 152.095 20.0206C153.031 18.6166 153.53 16.9672 153.53 15.28C153.567 14.1396 153.368 13.0038 152.945 11.9438C152.523 10.8839 151.887 9.92248 151.075 9.11989C150.264 8.3173 149.296 7.69078 148.232 7.27955C147.168 6.86831 146.03 6.68122 144.89 6.72999V6.72999ZM144.89 19.83C142.54 19.83 140.89 17.96 140.89 15.28C140.89 12.6 142.53 10.73 144.89 10.73C147.25 10.73 148.89 12.6 148.89 15.28C148.89 17.96 147.3 19.83 144.89 19.83ZM109.74 7.01999C109.356 6.98285 108.97 7.05749 108.627 7.23491C108.285 7.41233 108.001 7.68497 107.81 8.01999L107.69 8.26999L107.47 8.07999C106.253 7.08344 104.711 6.57072 103.14 6.63999C98.75 6.63999 95.78 9.94999 95.78 14.87C95.78 19.79 98.85 23.22 103.23 23.22C104.521 23.2791 105.795 22.9061 106.85 22.16L107.21 21.88V22.34C107.21 24.55 105.78 25.77 103.21 25.77C102.131 25.755 101.062 25.5555 100.05 25.18C99.8562 25.0813 99.6419 25.0295 99.4244 25.0287C99.2069 25.0279 98.9923 25.0782 98.7977 25.1754C98.6032 25.2727 98.4342 25.4143 98.3043 25.5887C98.1745 25.7632 98.0874 25.9657 98.05 26.18L97.14 28.46L97.47 28.63C99.2593 29.5195 101.232 29.9783 103.23 29.97C107.23 29.97 111.9 27.91 111.9 22.14V7.01999H109.74ZM104.06 19.11C101.5 19.11 100.58 16.86 100.58 14.76C100.58 13.83 100.81 10.76 103.81 10.76C105.3 10.76 107.3 11.18 107.3 14.86C107.3 18.38 105.54 19.11 104.06 19.11ZM13.09 11.85L12.4 11.47L13 10.97C13.6103 10.4334 14.0951 9.76919 14.42 9.02435C14.7449 8.27951 14.9019 7.47231 14.88 6.65999C14.88 3.05999 12.09 0.739993 7.79 0.739993H2.31C1.69606 0.762953 1.11431 1.02048 0.684566 1.45953C0.254821 1.89857 0.00981021 2.48571 0 3.09999L0 23.5H7.88C12.67 23.5 15.77 20.89 15.77 16.84C15.8104 15.8446 15.583 14.8566 15.1116 13.9789C14.6403 13.1012 13.9421 12.3661 13.09 11.85V11.85ZM4.37 6.07999C4.37 5.01999 4.82 4.51999 5.8 4.45999H7.8C8.16093 4.42761 8.52456 4.47504 8.8651 4.59892C9.20565 4.7228 9.51476 4.9201 9.77052 5.17681C10.0263 5.43353 10.2224 5.74338 10.345 6.08438C10.4676 6.42538 10.5137 6.78919 10.48 7.14999C10.5194 7.51629 10.4791 7.88679 10.3616 8.23598C10.2442 8.58517 10.0524 8.90477 9.79964 9.17277C9.54684 9.44077 9.23898 9.65082 8.89723 9.78844C8.55549 9.92606 8.18798 9.988 7.82 9.96999H4.37V6.07999ZM8.2 19.64H4.37V15.06C4.37 14.06 4.76 13.57 5.59 13.45H8.2C8.99043 13.4949 9.7337 13.8406 10.2774 14.4161C10.8211 14.9916 11.124 15.7533 11.124 16.545C11.124 17.3367 10.8211 18.0984 10.2774 18.6739C9.7337 19.2494 8.99043 19.595 8.2 19.64ZM174.53 6.73999C173.558 6.74366 172.6 6.96575 171.726 7.38984C170.852 7.81393 170.084 8.42915 169.48 9.18999L169.14 9.62999L168.87 9.13999C168.437 8.355 167.787 7.71128 166.998 7.2857C166.209 6.86012 165.314 6.67067 164.42 6.73999C163.604 6.75328 162.798 6.93308 162.054 7.26838C161.309 7.60368 160.641 8.08742 160.09 8.68999L159.65 9.16999L159.48 8.53999C159.323 8.07152 159.008 7.67282 158.587 7.41334C158.167 7.15386 157.669 7.05005 157.18 7.11999H155.18V23.57H159.64V16.31C159.646 15.6629 159.727 15.0187 159.88 14.39C160.31 12.63 161.49 10.74 163.47 10.93C164.69 11.05 165.29 11.99 165.29 13.82V23.57H169.81V16.31C169.791 15.6345 169.875 14.9601 170.06 14.31C170.42 12.64 171.65 10.92 173.56 10.92C174.94 10.92 175.45 11.7 175.45 13.81V21.17C175.45 22.83 176.19 23.57 177.85 23.57H180V13.07C180 8.86999 178.15 6.73999 174.53 6.73999ZM133.69 17.86C132.51 19.095 130.913 19.8471 129.21 19.97C128.593 20.0073 127.974 19.914 127.395 19.6962C126.816 19.4784 126.29 19.141 125.85 18.706C125.41 18.271 125.067 17.7482 124.843 17.1716C124.619 16.5951 124.519 15.9778 124.55 15.36C124.498 14.7504 124.575 14.1365 124.776 13.5588C124.978 12.981 125.299 12.4524 125.719 12.0076C126.14 11.5629 126.649 11.212 127.215 10.978C127.78 10.744 128.388 10.6322 129 10.65C129.84 10.65 130.8 10.95 130.95 11.46V11.55C131.048 11.8986 131.258 12.2056 131.547 12.424C131.835 12.6425 132.188 12.7605 132.55 12.76H135V10.61C135 7.76999 131.39 6.73999 129 6.73999C123.81 6.73999 120 10.37 120 15.35C120 20.33 123.73 23.97 128.86 23.97C130.178 23.9562 131.479 23.6722 132.683 23.1355C133.887 22.5989 134.969 21.821 135.86 20.85L134 17.58L133.69 17.86Z"></path>
                        </svg>
                        </a>
                        </span>
                    </div>
                </div>
                <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 c7b46bab72">
                    <a role="button" data-testid="header-sign-up-button"
                       aria-label="创建帐号"
                       href=""
                       class="fc63351294 a822bdf511 e2b4ffd73d f7db01295e c334e6f658 a9a04704ee js-header-login-link">
                        <span class="e57ffa4eb5">注册</span>
                    </a>
                    <div class="bb0b3e18ca d9b0185ac2">
                        <a data-testid="header-sign-in-button" aria-label="登录"
                           href=""
                           class="fc63351294 a822bdf511 e2b4ffd73d f7db01295e c334e6f658 a9a04704ee js-header-login-link">
                            <span class="e57ffa4eb5">登录</span>
                        </a>
                    </div>
                </div>
            </nav>
            <nav data-testid="header-xpb" aria-label="你想搜索哪里？"
                 aria-owns="accommodations flights cars attractions airport_taxis"
                 class="fb995cecb1 f61b048379 f7a80ddfd4">
                <div class="bc13adc8ab b2c0e7d253">
                    <ul class="e20caabacb">
                        <li class="d7ba686b8a e69171d050">
                            <a id="accommodations"
                               aria-current="page"
                               aria-controls="accommodations" tabindex="0"
                               href="./index.jsp"
                               class="fc63351294 fa030f4cc2 f44d43bbc4 d4e373d880">
                                <span class="b6dc9a9e69 ff00c05ba0 e6c50852bd" aria-hidden="true">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path d="M2.75 12h18.5c.69 0 1.25.56 1.25 1.25V18l.75-.75H.75l.75.75v-4.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 13.25V18c0 .414.336.75.75.75h22.5A.75.75 0 0 0 24 18v-4.75a2.75 2.75 0 0 0-2.75-2.75H2.75zM0 18v3a.75.75 0 0 0 1.5 0v-3A.75.75 0 0 0 0 18zm22.5 0v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm-.75-6.75V4.5a2.25 2.25 0 0 0-2.25-2.25h-15A2.25 2.25 0 0 0 2.25 4.5v6.75a.75.75 0 0 0 1.5 0V4.5a.75.75 0 0 1 .75-.75h15a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 0 1.5 0zm-13.25-3h7a.25.25 0 0 1 .25.25v2.75l.75-.75h-9l.75.75V8.5a.25.25 0 0 1 .25-.25zm0-1.5A1.75 1.75 0 0 0 6.75 8.5v2.75c0 .414.336.75.75.75h9a.75.75 0 0 0 .75-.75V8.5a1.75 1.75 0 0 0-1.75-1.75h-7z"></path>
                                    </svg>
                                </span>
                                <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                    <span class="db29ecfbe2">住宿</span>
                                </div>
                            </a>
                        </li>
                        <li class="d7ba686b8a e5305db18a" role="presentation">
                            <span class="cb5ebe3ffb c3de4d2761">
                                <button aria-expanded="false" class="fa030f4cc2" type="button" role="tab">
                                    更多
                                    <span class="b6dc9a9e69 eb54845d00 e25355d3ee" aria-hidden="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path d="M12 20.09a1.24 1.24 0 0 1-.88-.36L6 14.61a.75.75 0 1 1 1.06-1.06L12 18.49l4.94-4.94A.75.75 0 0 1 18 14.61l-5.12 5.12a1.24 1.24 0 0 1-.88.36zm6-9.46a.75.75 0 0 0 0-1.06l-5.12-5.11a1.24 1.24 0 0 0-1.754-.006l-.006.006L6 9.57a.75.75 0 0 0 0 1.06.74.74 0 0 0 1.06 0L12 5.7l4.94 4.93a.73.73 0 0 0 .53.22c.2 0 .39-.078.53-.22z"></path>
                                        </svg>
                                    </span>
                                </button>
                        </span>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </div>
</div>
<div class="xpi__content__wrapper xpi__content__wrappergray xpi__content_hero_banner " id="indexsearch">
    <div data-capla-component="b-index-lp-web-mfe/HeroBannerDesktop" data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
        <div>
            <div class="ec230417cd hero-banner-wrapper b36dba3aaa f59f515b3e"><img class="e330f8a8da"
                                                                                   alt="三口之家坐在海边欢笑"
                                                                                   src="./img/family.jpeg"
                                                                                   data-testid="herobanner-image"/>
                <div class="e71072e29c">
                    <div class="d7157e0865">
                        <header><h1><span data-testid="herobanner-title1" class="fa27fe07b6 c0ec8bd590 e0ff951c3e">你的理想假期，你做主</span></h1></header>
                        <p data-testid="herobanner-subtitile" class="fa21f9c13a c0ec8bd590 e6d35895b6">从休闲度假到“断网式”冒险，全球住宿至少省15%</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hero-banner-searchbox" data-et-click="customGoal:HZUaQJdDBKFfHET:4">
        <div data-component="arp-searchbox-horizontal-index">
            <div data-capla-component="b-index-lp-web-mfe/SearchBoxDesktopHorizontal" data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                <!--表单提交-->
                <form class="a0ac39e217" action="/SoftwareEngineering_war_exploded/test/searchresults.jsp" method="GET">
                    <div class="ffa9856b86 db27349d3a cc9bf48a25">
                        <div class="f9cf783bde">
                            <div class="">
                                <div class="ab090fee6e d6e01b74ce" data-testid="destination-container">
                                    <div class="db29ecfbe2 c072c8cf10 b1f9db9109">
                                        <div class="a61cce10a1">
                                            <div class="d4e829796c">
                                                <div class="a713e2a62f">
                                                    <span class="b6dc9a9e69 ec1b6253a6 b8c9de5937" aria-hidden="true">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                            <path d="M2.75 12h18.5c.69 0 1.25.56 1.25 1.25V18l.75-.75H.75l.75.75v-4.75c0-.69.56-1.25 1.25-1.25zm0-1.5A2.75 2.75 0 0 0 0 13.25V18c0 .414.336.75.75.75h22.5A.75.75 0 0 0 24 18v-4.75a2.75 2.75 0 0 0-2.75-2.75H2.75zM0 18v3a.75.75 0 0 0 1.5 0v-3A.75.75 0 0 0 0 18zm22.5 0v3a.75.75 0 0 0 1.5 0v-3a.75.75 0 0 0-1.5 0zm-.75-6.75V4.5a2.25 2.25 0 0 0-2.25-2.25h-15A2.25 2.25 0 0 0 2.25 4.5v6.75a.75.75 0 0 0 1.5 0V4.5a.75.75 0 0 1 .75-.75h15a.75.75 0 0 1 .75.75v6.75a.75.75 0 0 0 1.5 0zm-13.25-3h7a.25.25 0 0 1 .25.25v2.75l.75-.75h-9l.75.75V8.5a.25.25 0 0 1 .25-.25zm0-1.5A1.75 1.75 0 0 0 6.75 8.5v2.75c0 .414.336.75.75.75h9a.75.75 0 0 0 .75-.75V8.5a1.75 1.75 0 0 0-1.75-1.75h-7z"></path>
                                                        </svg>
                                                    </span>
                                                </div>

                                                <input name="dest" class="dest" placeholder="目的地？"
                                                       data-destination="1" autoComplete="off" id="dest" value="中国"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% 
                                        /*LocalDate today = LocalDate.now(); 
                                        LocalDate nextDay = today.plusDays(1);
                                        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-mm-dd");
                                        String todayStr = formatter.format(today);
                                        String nextDayStr = formatter.format(nextDay);*/
                        %>
                        <div class="f9cf783bde">
                            <div tabindex="-1" class="ed2ff9f661">
                                <div class="b91c144835" role="none" data-testid="searchbox-dates-container">
                                    <span class="b6dc9a9e69 a804864eef e6c50852bd b8c9de5937" aria-hidden="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path d="M22.5 13.5v8.25a.75.75 0 0 1-.75.75H2.25a.75.75 0 0 1-.75-.75V5.25a.75.75 0 0 1 .75-.75h19.5a.75.75 0 0 1 .75.75v8.25zm1.5 0V5.25A2.25 2.25 0 0 0 21.75 3H2.25A2.25 2.25 0 0 0 0 5.25v16.5A2.25 2.25 0 0 0 2.25 24h19.5A2.25 2.25 0 0 0 24 21.75V13.5zm-23.25-3h22.5a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zM7.5 6V.75a.75.75 0 0 0-1.5 0V6a.75.75 0 0 0 1.5 0zM18 6V.75a.75.75 0 0 0-1.5 0V6A.75.75 0 0 0 18 6zM5.095 14.03a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zm.53-1.28a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm-.53 6.53a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zm.53-1.28a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm5.845-3.97a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zm.53-1.28A1.125 1.125 0 1 0 12 15a1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm-.53 6.53a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zM12 18a1.125 1.125 0 1 0 0 2.25A1.125 1.125 0 0 0 12 18a.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm5.845-3.97a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zm.53-1.28a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zm-.53 6.53a.75.75 0 1 0 1.06-1.06.75.75 0 0 0-1.06 1.06zm.53-1.28a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5z"></path>
                                        </svg>
                                    </span>

                                    <div class="form-group input-group-sm">
                                        <label>入住日期</label>
                                        <input type="date" name="check_in_date" class="form-control" id="check_in_date"
                                               value="2023-6-15" placeholder="入住日期"/>
                                    </div>
                                    <span class="hyphen">—</span>
                                    <div class="form-group input-group-sm">
                                        <label>退房日期</label>
                                        <input type="date" name="check_out_date" class="form-control" id="check_out_date"
                                               value="2023-6-16" placeholder="退房日期"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="f9cf783bde">
                            <div class="d67edddcf0" tabindex="-1">
                                    <input type="number" name="adult_num" class="adult_num" id="adult_num" min="1" max="30" value="2"
                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
                                    位成人 ·
                                    <input type="number" name="child_num" class="child_num" id="child_num" min="0" max="10" value="0"
                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
                                    名儿童 ·
                                    <input type="number" name="room_num" class="room_num" id="room_num" min="1" max="30" value="1"
                                           style="width:30px; height:20px;" oninput="this.value=this.value.replace(/\D/g);"/>
                                    间客房
                            </div>
                        </div>
                        <div class="submit-button">
                            <button type="submit" class="fc63351294 a822bdf511 d4b6b7a9e7 cfb238afa1 c938084447 f4605622ad aa11d0d5cd">
                                <span class="e57ffa4eb5">搜特价</span>
                            </button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>


<div id="bodyconstraint" class="   ">
    <div id="bodyconstraint-inner">
        <div class="lp_flexible_layout_content_wrapper">
            <div data-block-id="header_survey"></div>
            <svg class="bk-icon -genius-new_identity-genius_badge" height="174" style="display:none;" width="434"
                 viewBox="0 0 434 174" role="presentation" aria-hidden="true" focusable="false">
                <g>
                    <path d="M418.964 0H14.6335C6.65829 0 0.193115 6.46518 0.193115 14.4404V158.844C0.193115 166.819 6.65829 173.285 14.6335 173.285H418.964C426.939 173.285 433.404 166.819 433.404 158.844V14.4404C433.404 6.46518 426.939 0 418.964 0Z"
                          fill="#004CB8"/>
                    <path d="M375.643 112.057C375.651 112.911 375.418 113.75 374.971 114.478C374.524 115.206 373.881 115.793 373.116 116.173C371.061 117.213 368.774 117.71 366.473 117.617C363.367 117.862 360.262 117.13 357.592 115.523C355.323 114.154 353.571 112.072 352.611 109.602C352.551 109.35 352.431 109.116 352.26 108.921C352.09 108.726 351.874 108.575 351.632 108.483C351.39 108.39 351.129 108.358 350.871 108.39C350.614 108.421 350.368 108.515 350.156 108.664L341.13 112.635C340.869 112.706 340.627 112.837 340.425 113.019C340.223 113.2 340.067 113.426 339.969 113.679C339.87 113.932 339.833 114.205 339.859 114.475C339.885 114.745 339.975 115.005 340.12 115.234C342.038 119.7 345.325 123.441 349.506 125.92C354.638 128.933 360.527 130.412 366.473 130.18C372.448 130.368 378.324 128.621 383.224 125.198C385.473 123.727 387.315 121.711 388.577 119.338C389.839 116.965 390.481 114.312 390.444 111.624C390.444 101.997 383.657 96.1488 370.083 94.079C366.842 93.6288 363.696 92.6533 360.769 91.1909C358.603 90.1801 356.148 88.8082 356.148 87.2198C356.194 86.4783 356.458 85.7669 356.908 85.1757C357.358 84.5845 357.973 84.14 358.676 83.8985C360.848 83.0046 363.187 82.5861 365.535 82.6711C367.779 82.6622 370.001 83.1271 372.054 84.0353C374.107 84.9435 375.945 86.2747 377.448 87.9418C377.63 88.1318 377.849 88.283 378.09 88.3863C378.332 88.4896 378.593 88.5429 378.856 88.5429C379.119 88.5429 379.379 88.4896 379.621 88.3863C379.863 88.283 380.082 88.1318 380.264 87.9418L386.69 82.1657C386.936 82.0362 387.148 81.8492 387.307 81.6204C387.466 81.3917 387.568 81.128 387.603 80.8517C387.639 80.5754 387.607 80.2946 387.511 80.0331C387.415 79.7717 387.257 79.5373 387.051 79.3498C382.053 74.4653 375.569 71.3872 368.625 70.6026C361.681 69.8179 354.673 71.3716 348.712 75.0177C346.74 76.4007 345.146 78.2548 344.074 80.4112C343.002 82.5675 342.487 84.9577 342.574 87.3642C342.567 89.4267 343.001 91.4669 343.848 93.3475C344.695 95.2281 345.935 96.9054 347.484 98.2667C351.292 101.398 355.888 103.422 360.769 104.115C364.771 104.676 368.681 105.769 372.394 107.364C373.334 107.744 374.143 108.391 374.72 109.225C375.297 110.059 375.618 111.043 375.643 112.057Z"
                          fill="white"/>
                    <path d="M282.575 107.509C282.412 110.486 282.839 113.467 283.83 116.279C284.821 119.092 286.358 121.681 288.351 123.899C290.419 125.929 292.885 127.51 295.594 128.541C298.303 129.573 301.196 130.032 304.091 129.891C306.536 129.936 308.973 129.595 311.311 128.881C313.006 128.39 314.631 127.686 316.149 126.787C317.577 125.778 318.951 124.693 320.264 123.538L321.636 126.859C321.861 127.389 322.248 127.834 322.74 128.132C323.232 128.43 323.806 128.566 324.38 128.52H333.766C334.021 128.556 334.281 128.532 334.525 128.451C334.769 128.369 334.991 128.232 335.173 128.05C335.355 127.868 335.493 127.646 335.574 127.401C335.656 127.157 335.679 126.897 335.643 126.642V73.7906C335.635 73.5591 335.579 73.3319 335.478 73.1236C335.377 72.9152 335.233 72.7303 335.056 72.5807C334.879 72.4312 334.673 72.3202 334.451 72.255C334.229 72.1898 333.996 72.1718 333.766 72.2021H321.853C321.598 72.166 321.338 72.1897 321.094 72.2712C320.849 72.3528 320.627 72.49 320.445 72.6721C320.263 72.8542 320.126 73.0761 320.044 73.3203C319.963 73.5646 319.939 73.8244 319.975 74.0794V110.18C318.697 112.152 316.942 113.768 314.871 114.879C312.801 115.99 310.484 116.559 308.134 116.534C306.791 116.632 305.442 116.423 304.191 115.922C302.94 115.422 301.82 114.644 300.914 113.646C299.138 111.504 298.235 108.771 298.387 105.993V73.7906C298.387 72.5631 297.665 71.9133 296.365 71.9133H284.596C283.297 71.9133 282.575 72.5631 282.575 73.7906V107.509Z"
                          fill="white"/>
                    <path d="M253.983 54.1515C253.968 55.5821 254.25 57.0002 254.809 58.3172C255.368 59.6341 256.193 60.8214 257.232 61.8049C259.299 63.8464 262.088 64.9912 264.993 64.9912C267.899 64.9912 270.688 63.8464 272.755 61.8049C273.786 60.8145 274.606 59.6261 275.166 58.3109C275.726 56.9958 276.015 55.581 276.015 54.1515C276.015 52.722 275.726 51.3073 275.166 49.9921C274.606 48.677 273.786 47.4885 272.755 46.4981C270.688 44.4566 267.899 43.3119 264.993 43.3119C262.088 43.3119 259.299 44.4566 257.232 46.4981C256.193 47.4816 255.368 48.669 254.809 49.9859C254.25 51.3028 253.968 52.7209 253.983 54.1515Z"
                          fill="#FEBB02"/>
                    <path d="M247.413 90.7576C247.576 88.0348 247.187 85.307 246.269 82.7384C245.351 80.1699 243.922 77.8137 242.07 75.8118C239.996 73.9613 237.574 72.5422 234.946 71.6373C232.318 70.7324 229.536 70.3597 226.763 70.5411C220.636 70.5809 214.743 72.897 210.229 77.0393L208.64 73.7902C208.475 73.2445 208.126 72.7731 207.652 72.4569C207.177 72.1408 206.608 71.9995 206.041 72.0573H196.366C195.066 72.0573 194.344 72.6349 194.344 73.8624V126.714C194.344 127.942 195.066 128.591 196.366 128.591H208.207C209.507 128.591 210.229 127.942 210.229 126.714V90.6132C211.612 88.8509 213.33 87.3788 215.283 86.2811C217.277 85.0359 219.574 84.3617 221.925 84.3316C228.423 84.3316 231.745 87.7973 231.745 94.8009V126.714C231.745 127.212 231.942 127.69 232.295 128.042C232.647 128.394 233.124 128.591 233.622 128.591H245.68C246.178 128.591 246.655 128.394 247.007 128.042C247.359 127.69 247.557 127.212 247.557 126.714L247.413 90.7576Z"
                          fill="white"/>
                    <path d="M187.268 102.527C187.268 103.826 186.691 104.404 185.391 104.404H144.597C145.345 107.742 147.142 110.752 149.723 112.996C152.483 115.254 155.981 116.412 159.543 116.245C161.98 116.337 164.397 115.785 166.552 114.644C168.707 113.503 170.523 111.814 171.817 109.747C172.25 109.025 173.045 108.953 174.055 109.747L184.236 113.935C185.391 114.368 185.68 115.018 185.03 116.029C182.534 120.559 178.83 124.307 174.33 126.857C169.831 129.406 164.711 130.657 159.543 130.469C151.507 130.607 143.735 127.602 137.882 122.094C134.918 119.341 132.584 115.98 131.038 112.242C129.493 108.503 128.774 104.475 128.929 100.433C128.765 96.3962 129.473 92.3715 131.005 88.6333C132.538 84.8952 134.859 81.5317 137.81 78.7724C140.626 76.0576 143.952 73.9264 147.595 72.5015C151.238 71.0765 155.127 70.3858 159.037 70.4692C162.9 70.2694 166.761 70.8864 170.369 72.2798C173.977 73.6732 177.25 75.8117 179.976 78.5558C184.948 84.1113 187.541 91.3968 187.196 98.8446L187.268 102.527ZM167.702 86.6424C165.206 84.7434 162.173 83.682 159.037 83.61C155.941 83.4943 152.894 84.4084 150.373 86.2092C148.049 87.9161 146.288 90.2799 145.319 92.9962H172.539C171.782 90.3459 170.055 88.0777 167.702 86.6424Z"
                          fill="white"/>
                    <path d="M122.936 116.823C122.929 117.364 122.802 117.897 122.565 118.384C122.328 118.87 121.986 119.299 121.565 119.638C112.67 126.472 101.733 130.109 90.5177 129.963C78.5996 130.454 66.9709 126.213 58.1662 118.166C49.3615 110.119 44.0949 98.9172 43.5143 87.0032C44.1137 75.0649 49.3736 63.8383 58.1632 55.7373C66.9528 47.6363 78.5702 43.3077 90.5177 43.6821C101.588 43.6164 112.362 47.2503 121.131 54.0069C121.497 54.318 121.729 54.7572 121.781 55.2344C121.822 55.481 121.804 55.7338 121.729 55.9722C121.653 56.2105 121.523 56.4278 121.348 56.6062L112.756 66.4979C112.394 66.838 111.917 67.0274 111.42 67.0274C110.924 67.0274 110.446 66.838 110.084 66.4979C104.621 61.8534 97.6885 59.2953 90.5177 59.2777C83.1063 59.1579 75.9408 61.9357 70.5467 67.0197C65.1526 72.1037 61.9558 79.0923 61.637 86.4978C61.9931 93.8334 65.223 100.734 70.6278 105.706C76.0327 110.679 83.1779 113.323 90.5177 113.068C96.4716 113.09 102.308 111.412 107.341 108.231V96.8227H93.5502C93.3104 96.833 93.071 96.7935 92.8473 96.7065C92.6236 96.6195 92.4204 96.4869 92.2506 96.3173C92.0713 96.151 91.9277 95.9501 91.8284 95.7267C91.7291 95.5033 91.6762 95.2621 91.6729 95.0176V83.4653C91.6949 82.9748 91.9012 82.5107 92.2506 82.1657C92.6133 81.8537 93.072 81.6753 93.5502 81.6603H120.698C121.184 81.6599 121.651 81.8478 122.001 82.1843C122.351 82.5209 122.557 82.9801 122.575 83.4653L122.936 116.823Z"
                          fill="white"/>
                    <path d="M264.597 72.2018H258.604C258.106 72.2018 257.629 72.3995 257.276 72.7516C256.924 73.1037 256.727 73.5811 256.727 74.079V127.075C256.727 127.573 256.924 128.051 257.276 128.403C257.629 128.755 258.106 128.952 258.604 128.952H271.384C271.882 128.952 272.359 128.755 272.711 128.403C273.063 128.051 273.261 127.573 273.261 127.075V80.866C273.446 79.686 273.35 78.4789 272.98 77.3432C272.61 76.2075 271.977 75.1753 271.132 74.3307C270.287 73.4861 269.255 72.853 268.119 72.4831C266.984 72.1131 265.777 72.0167 264.597 72.2018Z"
                          fill="white"/>
                </g>
            </svg>
            <svg class="bk-icon -streamline-square_rating" height="128" style="display:none;" width="112"
                 viewBox="0 0 112 128" role="presentation" aria-hidden="true" focusable="false">
                <path d="M96 8H16A16 16 0 0 0 0 24v96h96a16 16 0 0 0 16-16V24A16 16 0 0 0 96 8zM56 88a24 24 0 1 1 24-24 24 24 0 0 1-24 24z"/>
            </svg>
            <svg class="bk-icon -streamline-circle" height="24" style="display:none;" width="24" viewBox="0 0 24 24"
                 role="presentation" aria-hidden="true" focusable="false">
                <path d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12z"/>
            </svg>
            <svg class="bk-icon -streamline-circle_half" height="128" style="display:none;" width="128"
                 viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                <path d="M64 0C28.654 0 0 28.654 0 64c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-35.346-28.654-64-64-64zm0 120V8c30.928 0 56 25.072 56 56s-25.072 56-56 56z"/>
            </svg>
            <svg class="bk-icon -streamline-star" height="24" style="display:none;" width="24" viewBox="0 0 24 24"
                 role="presentation" aria-hidden="true" focusable="false">
                <path d="M23.555 8.729a1.505 1.505 0 0 0-1.406-.98h-6.087a.5.5 0 0 1-.472-.334l-2.185-6.193a1.5 1.5 0 0 0-2.81 0l-.005.016-2.18 6.177a.5.5 0 0 1-.471.334H1.85A1.5 1.5 0 0 0 .887 10.4l5.184 4.3a.5.5 0 0 1 .155.543l-2.178 6.531a1.5 1.5 0 0 0 2.31 1.684l5.346-3.92a.5.5 0 0 1 .591 0l5.344 3.919a1.5 1.5 0 0 0 2.312-1.683l-2.178-6.535a.5.5 0 0 1 .155-.543l5.194-4.306a1.5 1.5 0 0 0 .433-1.661z"/>
            </svg>
            <svg class="bk-icon -streamline-star_half" height="128" style="display:none;" width="128"
                 viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                <path d="M126.76 45.92a11.75 11.75 0 0 0-10.93-7.6H85.77L74.93 7.58A11.67 11.67 0 0 0 64 0h-.82c-.23 0-.45 0-.68.07-.23.07-.28 0-.42.06l-.72.15L61 .4c-.36.1-.71.21-1.07.34a11.65 11.65 0 0 0-6.83 6.84L42.25 38.31H12.18a11.67 11.67 0 0 0-11.13 8.18A11.39 11.39 0 0 0 .52 50a11.65 11.65 0 0 0 4.19 9l25.71 21.24-10.81 32.41c-2.024 6.113 1.282 12.711 7.39 14.75.4.13.81.23 1.21.32l.31.06c.39.082.783.139 1.18.17h1.59c.388-.017.776-.054 1.16-.11h.06a9.704 9.704 0 0 0 1.18-.26l.31-.08c.383-.114.76-.247 1.13-.4q.55-.24 1.11-.54l.26-.15c.365-.208.719-.435 1.06-.68L64 106.35l26.43 19.38a11.563 11.563 0 0 0 6.88 2.27c.596.001 1.19-.042 1.78-.13 6.367-.967 10.744-6.911 9.778-13.278-.1-.659-.257-1.309-.468-1.942L97.59 80.22l25.8-21.39a11.7 11.7 0 0 0 3.37-12.91zm-8.52 6.79l-26.52 22a6.59 6.59 0 0 0-2 7.11l11.12 33.37a3.66 3.66 0 0 1-2.95 4.81 3.578 3.578 0 0 1-2.72-.68l-27.29-20-.14-.08a6.781 6.781 0 0 0-.76-.47c-.16-.08-.33-.14-.49-.21-.16-.07-.3-.13-.46-.18-.16-.05-.39-.1-.58-.15L64.06 8a3.61 3.61 0 0 1 3.35 2.3l11.15 31.63a6.58 6.58 0 0 0 6.19 4.38h31.07a3.7 3.7 0 0 1 3.44 2.39 3.66 3.66 0 0 1-1.02 4.01z"/>
            </svg>
            <div data-capla-component="b-index-lp-web-mfe/GeniusSignInSheet"
                 data-capla-namespace="b-index-lp-web-mfecaRNVfLS"></div>
            <div data-capla-component="b-index-lp-web-mfe/GlobalAlerts"
                 data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                <div style="margin:0 0 30px;padding:0 6px">
                    <div class="a1b3f50dcd e6f05e293e f7c6687c3d">
                        <div data-testid="web-shell-global-alert"
                             class="a826ba81c4 c793593141 fa2f36ad22 afd256fc79 d08f526e0d ed11e24d01">
                            <div data-testid="global-alert-interactive-title" role="button" tabindex="0"
                                 class="fc63351294 fc2f2c0da8">
                                <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643 d19ba76520 d840541ba4">
                                    <span data-testid="global-alert-decoration-icon" class="b6dc9a9e69 ec1b6253a6 bc1a6fdaa5" aria-hidden="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path d="M14.25 15.75h-.75a.75.75 0 0 1-.75-.75v-3.75a1.5 1.5 0 0 0-1.5-1.5h-.75a.75.75 0 0 0 0 1.5h.75V15a2.25 2.25 0 0 0 2.25 2.25h.75a.75.75 0 0 0 0-1.5zM11.625 6a1.125 1.125 0 1 0 0 2.25 1.125 1.125 0 0 0 0-2.25.75.75 0 0 0 0 1.5.375.375 0 1 1 0-.75.375.375 0 0 1 0 .75.75.75 0 0 0 0-1.5zM22.5 12c0 5.799-4.701 10.5-10.5 10.5S1.5 17.799 1.5 12 6.201 1.5 12 1.5 22.5 6.201 22.5 12zm1.5 0c0-6.627-5.373-12-12-12S0 5.373 0 12s5.373 12 12 12 12-5.373 12-12z"></path>
                                    </svg>
                                    </span>
                                    <div class="b1e6dd8416 aacd9d0b0a">
                                        <div data-testid="global-alert-title" class="f9afbb0024">
                                            新冠肺炎（COVID-19）疫情帮助
                                        </div>
                                    </div>
                                    <span data-testid="global-alert-icon-expand" class="b6dc9a9e69 ec1b6253a6" aria-hidden="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path d="M6 14.55a.74.74 0 0 1 .22-.55l5-5c.21-.2.49-.309.78-.3a1.1 1.1 0 0 1 .78.32l5 5a.75.75 0 0 1 0 1.06.74.74 0 0 1-1.06 0L12 10.36l-4.72 4.72a.74.74 0 0 1-1.06 0 .73.73 0 0 1-.22-.53zm5.72-4.47zm.57 0z"></path>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                            <div class="a1b3f50dcd a1f3ecff04 f7c6687c3d f522a8d44b">
                                <div data-testid="global-alert-content" class="db29ecfbe2 dc625444ef">
                                    获取所需建议。出行前查看最新新冠肺炎（COVID-19）相关限制。
                                </div>
                                <div class="">
                                    <div data-testid="global-alert-links" class="a1b3f50dcd e6f05e293e b2fe1a41c3">
                                        <a
                                            ariaLabel="[object Object]" target="_blank"
                                            aria-label="查看最新新冠肺炎（COVID-19）旅行限制"
                                            data-testid="global-alert-link"
                                            href=""
                                            class="fc63351294 a168c6f285 a25b1d9e47">
                                        <span>了解详情</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-capla-component="b-index-lp-web-mfe/empty"
                 data-capla-namespace="b-index-lp-web-mfecaRNVfLS"></div>
            <div
                    data-et-view=" customGoal:cCHObXKeNJAbINFPIWBccCcCcCC:1 cCHObXKeNJAbINFPIWBccCcCcCC:1  cCHObXKeNJAbINFPIWBccCcCcCC:3   cCHObXKeNJAbINFPIWBccCcCcCC:5   "></div>
            <div id="basiclayout" role="main" class="basiclayout_pe">
                <div data-component="genius-vip/tracking"
                     data-capla-project-name="index-lp"
                     data-service-name="web-mfe"
                     data-tracking-enabled="1"
                >
                    <div data-capla-component="b-index-lp-web-mfe/GeniusVipCampaignsIndexBanner"
                         data-capla-namespace="b-index-lp-web-mfecaRNVfLS"></div>
                </div>
                <div data-et-view=" cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET:1  cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET:2    cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET:6   "></div>
                <div data-et-view=" cCHObARLOBADEGaadHKKAGMcCcCcCC:1 cCHObTULHfAFFQZcVIZdRJcCcCcCC:2  cCHObTULHfAFFQZcVIZdRJcCcCcCC:3     "></div>
                <div data-et-view=" cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe:1     cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe:5   cCGaYSddOEGcHNAdUDUCRPQFAeJQFRURURNcHe:7  "></div>
                <div
                        data-et-view="cCHObdRdJSfdQaRNFOSeDCJWMddKNKNKWe:2"
                        data-qmab-component-id="19"
                >
                    <div data-capla-component="b-index-lp-web-mfe/BHAwarenessBanner"
                         data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                        <div>
                            <div data-testid="wcu_bh_banner-desktop"
                                 class="a826ba81c4 fa71cba65b fa2f36ad22 afd256fc79 d08f526e0d ed11e24d01 ef9845d4b3 bc4e2c467a">
                                <a target="_isblank"
                                   href=""
                                   class="fc63351294 b8e920e088">
                                    <div class="d39c27f89b"></div>
                                    <div class="d875fc0c4c">
                                        <div data-testid="wcu_bh_banner_desktop--content" class="e1f827110f bb44aa69aa">
                                            <div><span>为下次旅程寻找</span>
                                                <div class="de7f9979e1">
                                                    <ul class="a2172b8d6f">
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">公寓</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">别墅</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">公寓式酒店</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">度假屋</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">乡村别墅</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">民宿短租</span></li>
                                                        <li class="db46cc1a0a"><span class="fc7d18e9e4">公寓</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <span></span></div>
                                        <span data-testid="wcu_bh_banner_desktop--button"
                                              class="fc63351294 a822bdf511 e2b4ffd73d f7db01295e c334e6f658 a9a04704ee ccbae5d425"><span
                                                class="e57ffa4eb5">查找民宿短租</span></span></div>
                                    <div class="a0670806ef">
                                        <picture class="e4e8d3238b"><img class="c3194e6c89 e5eb7fb6cb"
                                                                         src="./img/look_for.png"
                                                                         role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </a></div>
                        </div>
                    </div>
                </div>
                <div data-qmab-component-id="1">
                    <div data-capla-component="b-index-lp-web-mfe/DestinationPostcardsDesktop"
                         data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                        <div class="f395e522bd" data-testid="destination-postcards-firstrow" role="none">
                            <a href=""
                               class="fc63351294 d412802652">
                            <div style="--bui_aspect_ratio_width--s:100%;--bui_aspect_ratio_padding-top--s:50%"
                                 class="d57f52f47d">
                                <div class="da627785d6">
                                    <div class="bcc2c1529b">
                                        <div class="d65598d5f9" data-testid="destination-postcard--1456928">
                                            <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                                <div class="e1f827110f">巴黎</div>
                                                <picture class="e4e8d3238b fb913c0ee7"
                                                         style="--bui_image_width--s:24px"></picture>
                                            </div>
                                        </div>
                                        <picture class="e4e8d3238b">
                                            <img class="c3194e6c89 e5eb7fb6cb"
                                                 src="./img/paris.jpg"
                                                 role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </div>
                            </div>
                            </a>
                            <a href="" class="fc63351294 d412802652">
                            <div style="--bui_aspect_ratio_width--s:100%;--bui_aspect_ratio_padding-top--s:50%"
                                 class="d57f52f47d">
                                <div class="da627785d6">
                                    <div class="bcc2c1529b">
                                        <div class="d65598d5f9" data-testid="destination-postcard--3414440">
                                            <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                                <div class="e1f827110f">曼谷</div>
                                                <picture class="e4e8d3238b fb913c0ee7"
                                                         style="--bui_image_width--s:24px"></picture>
                                            </div>
                                        </div>
                                        <picture class="e4e8d3238b">
                                            <img class="c3194e6c89 e5eb7fb6cb"
                                                 src="./img/bangkok.jpg"
                                                 role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </div>
                        <div class="f395e522bd af0c2122fa" data-testid="destination-postcards-secondrow">
                            <a href="" class="fc63351294 d412802652">
                            <div style="--bui_aspect_ratio_width--s:100%;--bui_aspect_ratio_padding-top--s:75%"
                                 class="d57f52f47d">
                                <div class="da627785d6">
                                    <div class="bcc2c1529b">
                                        <div class="d65598d5f9" data-testid="destination-postcard--1353149">
                                            <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                                <div class="e1f827110f">香港</div>
                                                <picture class="e4e8d3238b fb913c0ee7"
                                                         style="--bui_image_width--s:24px"></picture>
                                            </div>
                                        </div>
                                        <picture class="e4e8d3238b">
                                            <img class="c3194e6c89 e5eb7fb6cb"
                                                 src="./img/hongkong.jpg"
                                                 role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </div>
                            </div>
                            </a>
                            <a href="" class="fc63351294 d412802652">
                            <div style="--bui_aspect_ratio_width--s:100%;--bui_aspect_ratio_padding-top--s:75%"
                                 class="d57f52f47d">
                                <div class="da627785d6">
                                    <div class="bcc2c1529b">
                                        <div class="d65598d5f9" data-testid="destination-postcard--246227">
                                            <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                                <div class="e1f827110f">东京</div>
                                                <picture class="e4e8d3238b fb913c0ee7"
                                                         style="--bui_image_width--s:24px"></picture>
                                            </div>
                                        </div>
                                        <picture class="e4e8d3238b">
                                            <img class="c3194e6c89 e5eb7fb6cb"
                                                 src="./img/tokyo.jpg"
                                                 role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </div>
                            </div>
                            </a>
                            <a href="" class="fc63351294 d412802652">
                            <div style="--bui_aspect_ratio_width--s:100%;--bui_aspect_ratio_padding-top--s:75%"
                                 class="d57f52f47d">
                                <div class="da627785d6">
                                    <div class="bcc2c1529b">
                                        <div class="d65598d5f9" data-testid="destination-postcard--126693">
                                            <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 db7f07f643">
                                                <div class="e1f827110f">罗马</div>
                                                <picture class="e4e8d3238b fb913c0ee7"
                                                         style="--bui_image_width--s:24px"></picture>
                                            </div>
                                        </div>
                                        <picture class="e4e8d3238b">
                                            <img class="c3194e6c89 e5eb7fb6cb"
                                                 src="./img/rome.jpg"
                                                 role="presentation" loading="lazy"/>
                                        </picture>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    </div>
                </div>
                <div
                        data-et-view=" cCHObIPPQFFNcUWBZEWaSddDC:1  cCHObIPPQFFNcUWBZEWaSddDC:3   cCHObIPPQFFNcUWBZEWaSddDC:4     cCGaYSdVZMYCIPPQFFNcFGdcFRURURNLRe:1  cCGaYSdVZMYCIPPQFFNcFGdcFRURURNLRe:3   "
                ></div>
                <div data-capla-component="b-index-lp-web-mfe/MerchCarousel/PropertyTypesWww"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div>
                        <div data-qmab-component-id="5" data-testid="merch-carousel" role="none"></div>
                    </div>
                </div>
                <div data-capla-component="b-index-lp-web-mfe/TripTypesCarousel"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div>
                        <div data-qmab-component-id="44"></div>
                    </div>
                </div>
                <div data-et-view="HVUBNLOLOLOVZMYCdGUKCMeMGaFNRdScTaTIYDINFPIWBHT:2"></div>
                <div data-capla-component="b-index-lp-web-mfe/GeniusSignInBanner"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div class="a8587b2c3c" data-qmab-component-id="36">
                        <div>
                            <div class="a826ba81c4 fe821aea6c fa2f36ad22 afd256fc79 d08f526e0d ed11e24d01 ef9845d4b3 bd09386e88">
                                <div style="--bui_aspect_ratio_padding-top--s:100%" class="d57f52f47d c9ad251439">
                                    <div class="da627785d6">
                                        <div class="bcc2c1529b">
                                            <picture class="e4e8d3238b"><img class="c3194e6c89 e5eb7fb6cb"
                                                                             src="https://t-cf.bstatic.com/design-assets/assets/v3.68.0/illustrations-traveller/GlobeGeniusBadge.png"
                                                                             srcSet="https://t-cf.bstatic.com/design-assets/assets/v3.68.0/illustrations-traveller/GlobeGeniusBadge@2x.png 2x"
                                                                             alt="" role="presentation" loading="lazy"/>
                                            </picture>
                                        </div>
                                    </div>
                                </div>
                                <div class="c27180cdd7"><h2 class="e1f827110f db764d8fd9">获取即时优惠</h2>
                                    <div class="a0c113411d e7dbab4567">
                                        只需登录你的Booking.com帐号，寻找蓝色Genius标识即可省钱
                                    </div>
                                </div>
                                <div class="a1b3f50dcd a1f3ecff04 b2fe1a41c3 f99e477b40"><a
                                        href="https://www.booking.com/index.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&amp;login_redirect=https%3A%2F%2Fwww.booking.com%2Findex.zh-cn.html"
                                        class="fc63351294 a822bdf511 e2b4ffd73d f7db01295e c334e6f658 a9a04704ee"><span
                                        class="e57ffa4eb5">登录</span></a><a
                                        href="https://www.booking.com/index.html?aid=397645&amp;label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&amp;login_redirect=https%3A%2F%2Fwww.booking.com%2Findex.zh-cn.html"
                                        class="fc63351294 a822bdf511 e3c025e003 f7db01295e c334e6f658 e1b7cfea84"><span
                                        class="e57ffa4eb5">注册</span></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-et-view="customGoal:cCGaYSdMbYSfcdReLbFZVGAZbaTaTaET:1"></div>
                <div data-capla-component="b-index-lp-web-mfe/UniqueStaysProperties"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div data-qmab-component-id="40"></div>
                </div>
                <div
                        data-et-view="cCHObOFfdJMYEEFRURURHe:1"
                ></div>
                <div data-capla-component="b-index-lp-web-mfe/MerchCarousel/DomesticDestinationsWww"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div>
                        <div data-qmab-component-id="27" data-testid="merch-carousel" role="none"></div>
                    </div>
                </div>
                <div data-et-view=" cCHObIFfESfdQfQQDVCUBPSEbFZVGAZfTLKGBfC:1  cCHObIFfESfdQfQQDVCUBPSEbFZVGAZfTLKGBfC:3     "></div>
                <div data-capla-component="b-index-lp-web-mfe/HomesGuestsLoveCarousel"
                     data-capla-namespace="b-index-lp-web-mfecaRNVfLS">
                    <div data-qmab-component-id="4"></div>
                </div>
                <div data-et-view=" cCHObONdPbABJRXTcXCEFRURURHe:1 customGoal:cCHObONdPbABJRXTcXCEFRURURHe:2  cCHObONdPbABJRXTcXCEFRURURHe:3    cCHObONdPbABJRXTcXCEFRURURHe:4   "></div>
                <div
                        class="bui-spacer--largest"
                        data-qmab-component-id="3"
                >
                    <h2 class="bui-f-font-display_two bui-spacer--large d-index__header-section travel_articles_header__section">
                        精彩下一站，灵感这里找
                        <a class="bui-link bui-link--primary travel_articles__link">更多</a>
                    </h2>
                    <div
                            role="region"
                            class="bui-carousel bui-carousel--large bui-u-bleed@small"
                            data-bui-component="Carousel"
                    >
                        <ul class="bui-carousel__inner" data-bui-ref="carousel-container">
                            <li
                                    class="travel_articles_item bui-carousel__item"
                                    data-bui-ref="carousel-item"
                                    data-et-click="customGoal:cCHObONdPbABJRXTcXCEFRURURHe:1"
                            >
                                <a aria-labelledby="travel_articles_title_1" aria-describedby="travel_articles_desc_1"
                                   class="travel_articles  ">
                                    <div class="travel_articles_img">
                                        <img src="./img/japan.png">
                                    </div>
                                    <div class="travel_articles__overlay"></div>
                                    <div class="travel_articles__content">
                                        <h3 class="travel_articles__header travel_articles__two_line"
                                            id="travel_articles_title_1">日本7大美不胜收的春日赏花胜地
                                        </h3>
                                        <p id="travel_articles_desc_1"
                                           class="travel_articles__description travel_articles__two_line">
                                            富士山脚下的芝樱花海、令人惊叹的160岁紫藤树，这个春日徜徉花的世界。
                                        </p>
                                    </div>
                                </a>
                            </li>
                            <li
                                    class="travel_articles_item bui-carousel__item"
                                    data-bui-ref="carousel-item"
                                    data-et-click="customGoal:cCHObONdPbABJRXTcXCEFRURURHe:1"
                            >
                                <a class="bui-card bui-card--media bui-card--transparent">
                                    <div class="bui-card__image-container travel_articles_img_small">
                                        <img class="bui-card__image"
                                             src="./img/australia.webp"/>
                                    </div>
                                    <div class="bui-card__content">
                                        <div class="bui-title bui-title--strong_1 bui-card__title">
                                            <span class="bui-card__title travel_articles__two_line">
                                                &#x6FB3;&#x5927;&#x5229;&#x4E9A;&#x9002;&#x5408;&#x5BB6;&#x5EAD;&#x51FA;&#x6E38;&#x7684;&#x4E94;&#x5927;&#x516C;&#x8DEF;&#x6E38;&#x8DEF;&#x7EBF;
                                            </span>
                                            <span class="bui-title__subtitle travel_articles__two_line">
                                                冲浪、美丽海滩、美食、冒险，应有尽有。
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li
                                    class="travel_articles_item bui-carousel__item"
                                    data-bui-ref="carousel-item"
                                    data-et-click="customGoal:cCHObONdPbABJRXTcXCEFRURURHe:1"
                            >
                                <a class="bui-card bui-card--media bui-card--transparent">
                                    <div class="bui-card__image-container travel_articles_img_small">
                                        <img class="bui-card__image" src="./img/thailand.webp"/>
                                    </div>
                                    <div class="bui-card__content">
                                        <div class="bui-title bui-title--strong_1 bui-card__title">
                                            <span class="bui-card__title travel_articles__two_line">
                                                8&#x5927;&#x5E86;&#x795D;&#x6CF0;&#x56FD;&#x6CFC;&#x6C34;&#x8282;&#x7684;&#x80DC;&#x5730;
                                            </span>
                                            <span class="bui-title__subtitle travel_articles__two_line">沉浸式感受泰国最重要的节日，加入世界上最大的水仗。</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                           
    </div> <!-- lp-general_content_wrapper -->
</div>
</div>
<div class="slinks">
    <div class="clearfix"></div>
    <div
            class="wcu-seo-tabs d-index__section bui-spacer--largest index clearfix a11y_blue_grey"
            data-component="in-and-around-swap-tab"
            data-et-view="  customGoal:cCHObTULHfAFFQZcXCEFRURURHe:1  "
            data-et-click="customGoal:cCHObTRVDEZRdPQBcGCfTKYCcaYO:5
goal:www_seo_click
"
    >
        <h2 class="bui-f-font-display_two bui-spacer--large d-index__header-section">&#x70ED;&#x95E8;&#x76EE;&#x7684;&#x5730;</h2>
        <nav class="bui-tab bui-tab--rounded bui-spacer--large" data-component="seo-index-destinations-tabs">
            <ul class="bui-tab__nav" role="tablist" data-bui-ref="tab-items">
                <li class="bui-tab__item" role="presentation" data-bui-ref="tab-item">
                    <button class="bui-tab__link bui-tab__link--selected" data-bui-ref="tab-button" data-tab-id="0"
                            role="tab" aria-selected="true">
                        <span class="bui-tab__text" data-bui-ref="tab-text">区域</span>
                    </button>
                </li>
                
            </ul>
            <script>
            window.onload = function(){
	                obj = document.getElementById("section_ul").getElementsByTagName("a");
	                for(i in obj){
		                obj[i].href = "";
	                }
            }
            </script>
            <div class="bui-tab__content bui-tab__content--selected" role="tabpanel" data-bui-ref="tab-content"
                 data-tab-id="0">
                <ul class="ia_section-container clearfix wcu-seo-regions-poi" id="section_ul">
                    <li class=" ia_section_item  fl " >
                        <a class="ia_link"
                           href="">
                           富士山
                        </a>
                        <span class="ia_hotelnum">548家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl " >
                        <a class="ia_link"
                           href="">
                            甲米府
                        </a>
                        <span class="ia_hotelnum">1,661家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/mv/maldives.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            马尔代夫
                        </a>
                        <span class="ia_hotelnum">807家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/th/phuket.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            普吉府
                        </a>
                        <span class="ia_hotelnum">5,495家住宿</span>
                    </li>
                    <li class=" ia_section_item  last  fl ">
                        <a class="ia_link"
                           href="/region/my/langkawi.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            兰卡威
                        </a>
                        <span class="ia_hotelnum">656家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/tw/new-taipei-city.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            新北市
                        </a>
                        <span class="ia_hotelnum">387家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/th/bangkok.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            曼谷
                        </a>
                        <span class="ia_hotelnum">4,597家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/cn/hainan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            海南
                        </a>
                        <span class="ia_hotelnum">761家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/th/koh-samui.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            苏梅岛
                        </a>
                        <span class="ia_hotelnum">2,211家住宿</span>
                    </li>
                    <li class=" ia_section_item  last  fl ">
                        <a class="ia_link"
                           href="/region/cn/xizang.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            西藏
                        </a>
                        <span class="ia_hotelnum">93家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/au/australian-capital-territory.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            澳大利亚首都直辖区
                        </a>
                        <span class="ia_hotelnum">233家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/my/penang.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            槟城州
                        </a>
                        <span class="ia_hotelnum">2,007家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/hk/lantau.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            大屿山
                        </a>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/tw/tainan.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            台南地区
                        </a>
                        <span class="ia_hotelnum">825家住宿</span>
                    </li>
                    <li class=" ia_section_item  last  fl ">
                        <a class="ia_link"
                           href="/region/cn/xishuangbanna.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            西双版纳
                        </a>
                        <span class="ia_hotelnum">80家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/my/cameron-highlands.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            金马仑高原
                        </a>
                        <span class="ia_hotelnum">616家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/id/batam.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            巴淡岛
                        </a>
                        <span class="ia_hotelnum">350家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/ph/bohol.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            薄荷岛
                        </a>
                        <span class="ia_hotelnum">764家住宿</span>
                    </li>
                    <li class=" ia_section_item  fl ">
                        <a class="ia_link"
                           href="/region/id/bali.zh-cn.html?aid=397645&label=bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB&sid=f0f82b20b46106bf73b9641ed765ee02">
                            巴厘岛
                        </a>
                        <span class="ia_hotelnum">12,680家住宿</span>
                    </li>
                </ul>
            </div>
         
        </nav>
    </div>
    <div class="clearfix"></div>
</div>
<div
        id="footer_menu_track"
        class="footerconstraint cnd-onview-anchor footer_no_lang_track a11y_fix_footer_contrast_footerconstraint "
        role="contentinfo"
        data-et-view="goal:www_index_full_page_scroll"
>
    <div id="newsletter_form_footer_container"
         class="newsletter_subscribe_with_sprites "
         role="region"
         aria-label="订阅我们的电子报以获取优惠信息 - 页脚"
         data-emk-subscription-success-remove
         data-et-click="customGoal:cCHObTRVDEZRdPQBcGCfTKYCcZeKe:5">
        <form action=""
              method="post"
              name="newsletterform"
              id="emk-footer"
              class="footerForm emk-subscription-entry-point "
              data-component="emk/subscription-entry-point emk/subscription-entry-point-feedback-msg"
              data-emk-entry-point-label="footer">
            <input type="hidden" name="aid" value="397645"/>
            <input type="hidden" name="label"
                   value="bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB"/>
            <input type="hidden" name="sid" value="f0f82b20b46106bf73b9641ed765ee02"/>
            <input type="hidden" name="url" value=""/>
            <input type="hidden" name="hostname" value="www.booking.com"/>
            <input type="hidden" name="companyname" value="Booking.com"/>
            <input type="hidden" name="aid" value="397645" data-ajax-submit/>
            <input type="hidden" name="label"
                   value="bin859jc-1DCAEoggI46AdIK1gDaDGIAQGYASu4ARfIAQzYAQPoAQH4AQKIAgGoAgO4AvW-8KEGwAIB0gIkODM0MjcwZjAtZjY5Ni00MGU0LWEyMWMtYjNhZWUwOTk4MGI12AIE4AIB"
                   data-ajax-submit/>
            <input type="hidden" name="endpoint_url"
                   value=""/>
            <input type="hidden" name="error_url"
                   value=""/>
            <input type="hidden" name="subscribe_source" value="footer_index" data-ajax-submit/>
            <input type="hidden" name="opt_in" value="1" data-ajax-submit/>
            <div class="emk_footer_update emk_footer_centered emk_footer_update_space ">
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
                                <p class="number_title">中文客服热线</p>
                                <p class="number_content">
                                    <a class="number_content" target="_blank">
                                        点击了解更多客服帮助
                                    </a>
                                </p>
                            </div>
                            <div class="cs_contact_footer_numbers_section help_center">
                                <p class="number_title">常见问题</p>
                                <p class="number_content">去<a target="_blank" class="number_content">帮助中心</a>看看</p>
                            </div>
                        </div>
                    </div>
                    <div class="emk_footer_wrapper">
                        <div class="emk_footer_banner_block">
                            <h2>方便又省钱！</h2>
                        </div>
                        <div class="emk_footer_subbanner_block">
                            立即注册，获取优惠好价！
                        </div>
                        <div class="clearfix"></div>
                        <div class="emk_footer_form_layout">
                            <label for="newsletter_to" class="invisible_spoken">
                                输入你的电子邮箱，我们将向你发送最佳优惠折扣
                            </label>
                            <div class="subscription_form_wrap">
                                <input type="email" name="to" autocapitalize="off" required="true"
                                       id="newsletter_to"
                                       class="input_newsletter_subscription_to"
                                       placeholder="您的电邮地址"
                                       title=""
                                       value=""
                                       data-ajax-submit/>
                                <button id="newsletter_button_footer"
                                        data-et-click="goal:www_subscribe_deals_footer_button_click">
                                    订阅
                                </button>
                            </div>
                            <div data-et-view="dLYHMRFeRQcDaIPaMNfQCcbNXGDJae:1"></div>
                        </div>
                        <p class="emk-feedback-msg use_sprites_no_back -invalid" role="alert" aria-live="assertive">
                            <span class="bicon-close" aria-hidden="true"></span>
                            <span class="invisible_spoken">错误：</span>
                            请输入有效电邮
                        </p>
                        <p class="emk-feedback-msg use_sprites_no_back -error" role="alert" aria-live="assertive">
                            <span class="bicon-close" aria-hidden="true"></span>
                            <span class="invisible_spoken">错误：</span>
                            抱歉，网页出现错误！
                        </p>
                        <p class="emk-feedback-msg use_sprites_no_back -success" role="status" aria-live="assertive">
                            <span class="bicon-checkyes" aria-hidden="true"></span>
                            谢谢！我们已向你发送电子邮件，你可以通过邮件完成订阅
                        </p>
                    </div>
                </div>
                <input name="recaptcha_enabled" value="1" type="hidden" data-ajax-submit>
                <script nonce="4DwZSPUvFd8eOkZ">
window.onLoadRecaptchaV3Callback = function() {
grecaptcha.ready(function() {
grecaptcha.execute('6LfzopcUAAAAAPh4ue2iRjzP6XdxDVpwJigtlmeD', {action: 'index'}).then(function(token) {
var target = $('[data-component*="emk/subscription-entry-point"]');
target.append("<input type=hidden name=recaptcha_token value=" + token +" data-ajax-submit>");
target.closest('form').submit(function() {
$('.grecaptcha-badge').show().css('visibility', 'visible');
});
});
});
};


                </script>
                <style nonce="4DwZSPUvFd8eOkZ">.grecaptcha-badge { display: none; bottom: 90px !important; }</style>
                <div data-component="core/recaptcha/v3" data-key="6LfzopcUAAAAAPh4ue2iRjzP6XdxDVpwJigtlmeD"
                     data-onload="onLoadRecaptchaV3Callback"
                     data-delay-load="load">
                </div>
            </div>
        </form>
    </div>
    <div style="clear: both;"></div>
    <div id="booking-footer" class="footer-wrapper">
        <div id="footer_top_menu" class="footer-top-menu">
            <div class="footer-top-partners clearfix js-footer-top-menu">
                <div class="footerconstraint-inner clearfix">
                    <div id="footertopnav-partners" role="navigation">
                        <p class="footer-top-partner-text footer-top-partner-buttons">
                            <a ref="nofollow"
                               target="_blank"
                               data-ga-track="click|pageview:/internallink/partner/footer/hotellink/index/zh-cn"
                               data-et-click="customGoal:cCHObTRVDEZRdPQBcGCfTKYCcZeKe:4 goal:www_list_proproperty_footer_click"
                               data-et-view="HCZEZUaNZIUONSFTUQODZEYTYeYINXGET:1"
                               class="footer-top-button"
                               data-qa="joinapp_ep">
                                &#x4E0A;&#x7EBF;&#x6211;&#x7684;&#x4F4F;&#x5BBF;
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="footerconstraint-inner clearfix">
                <div id="footertopnav" role="navigation">
                    <ul class="footer-top-links-list">
                        <li class="footer-top-link">
                            <a rel="nofollow">手机版视图</a>
                        </li>
                        <li class="footer-top-link">
                            <a>
                                您的帐户
                            </a>
                        </li>
                        <li class="footer-top-link">
                            <a class="manage"
                               class="tracked">
                                在线修改订单
                            </a>
                        </li>
                        <li class="footer-top-link"
                            data-ga-track="click|CSIR|CS|footer_top_customer_service_help">
                            <a class="cuca"
                               data-ga-track="click|Click|Action: index|hc_entrypoint_blue_footer"
                               data-bui-component="Tooltip"
                               title="您的参考编号是 &ldquo;F0F82B2&rdquo;">
                                客服帮助
                            </a>
                        </li>
                        <script nonce="4DwZSPUvFd8eOkZ">
document.querySelector('.cuca').addEventListener('blur', function() {
window.BUI.getInstance(this, 'Tooltip').hide();
})


                        </script>
                        <li class="footer-top-link">
                            <a data-bui-component="Tooltip" title="成为分销合作伙伴" class="footer_become_affiliate"
                               data-ga-track="click|pageview:/internallink/partner/footer/affiliatelink/index/zh-cn">
                                成为分销合作伙伴
                            </a>
                            <script nonce="4DwZSPUvFd8eOkZ">
document.querySelector('.footer_become_affiliate').addEventListener('blur', function() {
window.BUI.getInstance(this, 'Tooltip').hide();
})


                            </script>
                        </li>
                        <li class="footer-top-link">
                            <a class="tracked"
                               data-google-track="Click/Action: index/BBTool Footer BBZ">Booking.com商旅服务</a>
                        </li>
                        <li class="footer-top-link footer-top-link--last china_gtw_footer_menu">
                            <a href="#" class="jq_tooltip"
                               data-title="关注Booking.com官方微信号"
                               data-node_tt_id="china_gtw_header_hover"
                               data-tooltip-class="gtw_header_tooltip"
                               id="china_gtw_header_cta">
                                关注Booking.com官方微信号
                                <img width="25px"
                                     src="./img/wechat.png"
                                     alt="关注Booking.com官方微信号"/>
                            </a>
                            <div id="china_gtw_header_hover" style="display:none">
                                <div style="text-align: center; width: 180px;padding: 10px;">
                                    <span>关注Booking.com官方微信号</span>
                                    <br>
                                    <!--<img width="150px"
                                         src="https://ac-a.static.booking.cn/static/img/desktop_footer_WOA/da4aea624f2026b3e6826d56e4a2555f67e8df89.jpg"
                                         alt="关注Booking.com官方微信号"/>-->
                                    <br>
                                    <span>全球特价酒店应有尽有！</span>
                                </div>
                                <script nonce="4DwZSPUvFd8eOkZ">
document.getElementById('china_gtw_header_cta').addEventListener('click', function(e) {e.preventDefault();})
                                </script>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footerconstraint-inner">
            <div id="footer" class="footer-navigation-links-wrapper clearfix" role="navigation">
                <div id="footer_links" class="footer-navigation-links">
                    <div class="footer-navigation-links-column footer-seo-links-to-html-sitemaps">
                        <ul class="footer-navigation-links-list">
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    国家&#47;地区
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    区域
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    城市
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    区
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    机场
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    酒店
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a data-ga="seoindexlinks">
                                    周边地标&#47;景点
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-navigation-links-column">
                        <ul class="footer-navigation-links-list footer-seo-links-to-index">
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="booking-home">
                                    民宿短租
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="apartments">
                                    公寓
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="resorts">
                                    度假村
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="villas">
                                    别墅
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="hostels">
                                    青旅
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="bed_and_breakfast">
                                    住宿加早餐旅馆
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="guest_house">
                                    旅馆
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-navigation-links-column">
                        <ul class="footer-navigation-links-list">
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="accommodations">
                                    全球独特住宿
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="destinations">
                                    所有目的地
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="flights_destinations">
                                    所有航班目的地
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="cars_destinations">
                                    所有租车点
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    发现精彩
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="" data-ga="seoindexlinks" class="js-reviews-footer-link">
                                    客人点评
                                </a>
                            </li>
                            <div data-et-view="  BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe:1 BHDTJdReLLCBLZBeMbFMOFIbeDUHYKe:3 "></div>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga="extended-stays">
                                    探索月租
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   type="nav" location="main-site-footer" category="articles-link">
                                    游记攻略
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   title="季节和假日优惠">
                                    季节和假日优惠
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    Traveller Review Awards
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-navigation-links-column">
                        <ul class="footer-navigation-links-list">
                            <li class="footer-navigation-link">
                                <a rel="nofollow"
                                   href=""
                                   target="_blank"
                                   data-google-track="Click/Rental cars footer link click (loy_footer_rentalcars_copy: 0)/index"
                                   data-ga-track="click|pageview:/outgoinglink/traveljigsaw/zh">
                                    租车服务
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a rel="nofollow"
                                   href=""
                                   target="_blank"
                                   data-google-track="Click/Kayak footer link/index"
                                   data-ga-track="click|pageview:/outgoinglink/kayaklink">
                                    订机票
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a rel="nofollow" href="" target="_blank"
                                   data-google-track="Click/Opentable footer link/index"
                                   data-ga-track="click|pageview:/outgoinglink/opentablelink">
                                    餐厅订位
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="" title="Booking.com for Travel Advisers"
                                   data-ga-track="click|pageview:/internallink/partner/footer/adviserslink/index/zh-cn">
                                    Booking.com旅行代理机构中心
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-navigation-links-column">
                        <ul class="footer-navigation-links-list">
                            <li class="footer-navigation-link">
                                <a href="">
                                    新冠肺炎（COVID-19）疫情常见问题及解答
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">关于Booking.com</a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga-track="click|Click|Action: index|hc_entrypoint_footer_navigation">
                                    客服帮助
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    酒店自助平台
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga-track="click|pageview:/outgoinglink/footer/careerlink/zh-cn">
                                    Careers
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   data-ga-track="click|pageview:/outgoinglink/footer/sustainabilitylink/zh-cn">
                                    可持续发展项目
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a class="tracked" data-google-track="Click/Action: about_us/press"
                                   href="">
                                    新闻中心
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href=""
                                   class="tracked">
                                    安全旅行信息中心
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a class="tracked" data-google-track="Click/Action: about_us/investor_relations"
                                   href="">
                                    投资者关系
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    条款与条件
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    合作伙伴申诉
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    我们如何运作
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">
                                    隐私和Cookie声明
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <div style="display:none">
                                    <button id="ot-sdk-btn" class="ot-sdk-show-settings">Cookie Settings</button>
                                </div>
                                <a href="#" class=" ot-preference-center-footer">
                                    管理Cookie设置
                                </a>
                            </li>
                            <li class="footer-navigation-link">
                                <a href="#"
                                   id="pipl-personalization-footer-btn"
                                   data-modal-id="personalization-modal"
                                   data-bui-component="Modal"
                                   data-et-click="customGoal:YTBeWfCDIXLSGbDaFSRfABNIPRaO:1"
                                   data-modal-keep-mounted="true"
                                   data-modal-close-aria-label="关闭">
                                    个性化推荐
                                </a>
                                <template id="personalization-modal">
                                    <div class="bui-modal__body bui-modal__body--primary">
                                        <p style="margin-top: 24px">
                                            开启此项功能后，您将可以看到与您相关的搜索结果，以提升您的浏览体验。如关闭此功能，您看到的将是基于点评分数以及低价的搜索结果。
                                        </p>
                                        <div class="bui-switch">
                                            <div class="bui-input-text__content">
                                                <input type="checkbox"
                                                       checked="checked"
                                                       id="personalization-switch-1"
                                                       class="bui-switch__trigger"
                                                       aria-label="个性化推荐"
                                                       aria-checked="true"
                                                       role="switch"/>
                                                <label for="personalization-switch-1"
                                                       aria-hidden="true"
                                                       class="bui-switch__hitbox"
                                                       data-on-value="开启"
                                                       data-off-value="关闭">
                                                    <span class="bui-switch__indicator"></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </template>

                                
                            </li>
                            <li class="footer-navigation-link">
                                <a href="">MSA声明</a>
                            </li>
                            <li class="footer-navigation-link" data-ga-track="click|CSIR|CS|footer_link_contact_us">
                                <a href="">其他问题查询</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div role="region" aria-label="即刻下载Booking.com免费应用程序" class="local_info_bot footerconstraint-inner">
            <div class="local_info_bot_inner">
                <div class="extranet_link_container">
                    <a class="extranet_link"
                       href=""
                       data-ga-track="click|Footer|Click - Extranet login|index">
                        登录后台
                    </a>
                </div>
                <div class="footercopyright frontpage ">
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
                <p class="footer__priceline__title"> Booking.com隶属于Booking Holdings
                    Inc.，该集团是深受全球用户好评的在线旅行及周边服务供应商。</p>
                <div class="footer__priceline__list">
                    <ul>
                        <li>
                            <img
                                    src="./img/booking.png"
                                    title="Booking.com"
                                    alt="Booking.com"
                                    height="26"
                                    width="91"
                            >
                        </li>
                        <li>
                            <img
                                    src="./img/priceline.png"
                                    title="Priceline"
                                    alt="Priceline"
                                    height="26"
                                    width="91"
                            >
                        </li>
                        <li>
                            <img
                                    src="./img/kayak.png"
                                    title="Kayak"
                                    alt="Kayak"
                                    height="26"
                                    width="79"
                            >
                        </li>
                        <li>
                            <img
                                    src="./img/agoda.png"
                                    title="Agoda"
                                    alt="Agoda"
                                    height="26"
                                    width="70"
                            >
                        </li>
                        <li>
                            <img
                                    src="./img/rentalcars.png"
                                    title="Rentalcars"
                                    alt="Rentalcars"
                                    height="26"
                                    width="109"
                            >
                        </li>
                        <li>
                            <img
                                    src="./img/opentable.png"
                                    title="OpenTable"
                                    alt="OpenTable"
                                    height="26"
                                    width="95"
                            >
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script nonce="4DwZSPUvFd8eOkZ">window.lzimg && lzimg('ready')</script>
<div
        id="revc_write_a_review_login_intro"
        style="display:none;"
        tabindex="-1"
>
    <span class="invisible_spoken">开始对话框内容</span>
    <div class="intro_header">
        <h2 class="bui-modal__title">真实住客真实点评。</h2>
        <p class="bui-modal__paragraph">我们的住宿点评超过7000万条，所有点评均来自<strong>真实有效的客人</strong>。</p>
    </div>
    <div class="rlp-intro">
        <div class="rlp-intro__container clearfix">
            <h2 class="rlp-intro__title rlp-intro__a11y-exp-title">这些评语是如何产生的？</h2>
            <ul class="rlp-intro-how a11y_contrast_blue_gray">
                <li class="rlp-intro-how__item fl">
                    <div class="rlp-intro-how__container rlp-intro-how__container--tickfull">
                        <div class="rlp-intro-how__sub-container">
                            <p class="rlp-intro-how__num rlp-intro-how__num--tickfull">1</p>
                            <p class="rlp-intro-how__icon bicon-tickfull" aria-hidden="true"></p>
                        </div>
                    </div>
                    <h3 class="rlp-intro-how__title rlp-intro-how__a11y-exp-title">从预订开始</h3>
                    <span class="rlp-intro-how__title rlp-intro-how__caption">从预订开始</span>
                    <p class="rlp-intro-how__desc">
                        仅有做了预订的客人可填写评语。只有这样，我们才能确保评语来自于曾入住过酒店的真实住客。</p>
                </li>
                <li class="rlp-intro-how__arrow fl" aria-hidden="true">
                    <p class="rlp-intro-how__arrow-icon bicon-rightchevron"></p>
                </li>
                <li class="rlp-intro-how__item fl">
                    <div class="rlp-intro-how__container rlp-intro-how__container--citytrip">
                        <div class="rlp-intro-how__sub-container">
                            <p class="rlp-intro-how__num rlp-intro-how__num--citytrip">2</p>
                            <p class="rlp-intro-how__icon bicon-citytrip" aria-hidden="true"></p>
                        </div>
                    </div>
                    <h3 class="rlp-intro-how__title rlp-intro-how__a11y-exp-title">然后启程</h3>
                    <span class="rlp-intro-how__title rlp-intro-how__caption">然后启程</span>
                    <p class="rlp-intro-how__desc">客人入住酒店时亲身体验了客房是否安静、员工是否友善，等等。</p>
                </li>
                <li class="rlp-intro-how__arrow fl" aria-hidden="true">
                    <p class="rlp-intro-how__arrow-icon bicon-rightchevron"></p>
                </li>
                <li class="rlp-intro-how__item fl">
                    <div class="rlp-intro-how__container rlp-intro-how__container--feedback">
                        <div class="rlp-intro-how__sub-container">
                            <p class="rlp-intro-how__num rlp-intro-how__num--feedback">3</p>
                            <p class="rlp-intro-how__icon bicon-feedback" aria-hidden="true"></p>
                        </div>
                    </div>
                    <h3 class="rlp-intro-how__title rlp-intro-how__a11y-exp-title">最后，填写评语</h3>
                    <span class="rlp-intro-how__title rlp-intro-how__caption">最后，填写评语</span>
                    <p class="rlp-intro-how__desc">
                        旅程结束后，客人们将他们的住宿体验告诉我们。我们会验证所有评语的真实性并检查是否包含不雅语言，然后再添加到我们的网站上。</p>
                </li>
            </ul>
        </div>
    </div>
    <p>如果您在我们网站预订过住宿并希望提交评语，请先登录</p>
    <div class="intro_footer">
        <a href=""
           class="revc_write_a_review_login_button">登录并提交评语</a>
    </div>
    <span class="invisible_spoken">结束对话框内容</span>
</div>




<div class="g-hidden">
    <div class="js-user-access-menu-lightbox user-access-menu-lightbox--signin user-access-menu-lightbox--no-password-strength">
        <svg class="bk-icon -logos-booking-logo" height="42" style="display:none;" width="252" viewBox="0 0 252 42"
             role="presentation" aria-hidden="true" focusable="false">
            <path d="M15.592 22.92C15.591 20.283 13.924 18.652 11.348 18.652H7.738C6.58 18.815 6.055 19.518 6.055 20.877V26.783L11.348 26.79C13.966 26.79 15.591 25.629 15.592 22.92ZM6.055 13.391H10.819C13.496 13.391 14.449 11.689 14.449 9.911C14.449 7.576 13.057 6.181 10.735 6.181H8.025C6.671 6.268 6.055 6.966 6.055 8.428V13.391ZM21.815 23.351C21.815 28.956 17.536 32.87 10.912 32.87H0V4.87C0.02 3.085 1.872 1.285 3.64 1.218H10.777C16.737 1.218 20.587 4.222 20.587 9.202C20.587 12.462 18.959 14.346 17.988 15.183L17.152 15.9L18.109 16.441C20.432 17.751 21.815 20.333 21.815 23.351V23.351ZM148.135 20.675C148.135 15.58 145.385 14.986 143.325 14.986C139.165 14.986 138.845 19.175 138.845 20.459C138.845 23.376 140.105 26.49 143.665 26.49C145.705 26.49 148.135 25.48 148.135 20.675V20.675ZM154.045 9.738L154.025 30.732C154.025 38.739 148.045 41.584 142.505 41.584C139.815 41.584 136.845 40.858 134.555 39.639L134.105 39.4L134.835 37.53L135.345 36.243C135.905 34.855 136.715 34.509 138.095 34.928C139.155 35.312 140.735 35.739 142.475 35.739C146.045 35.739 148.015 34.05 148.015 30.994V30.356L147.505 30.732C146.215 31.72 144.575 32.205 142.505 32.205C136.445 32.205 132.215 27.445 132.215 20.63C132.215 13.811 136.305 9.228 142.385 9.228C145.445 9.228 147.325 10.309 148.375 11.221L148.675 11.482L148.855 11.132C149.325 10.23 150.275 9.738 151.515 9.738H154.045V9.738ZM67.707 21.184C67.707 17.473 65.411 14.877 62.137 14.877C58.877 14.877 56.608 17.473 56.608 21.184C56.608 24.898 58.878 27.496 62.138 27.496C65.464 27.496 67.708 24.958 67.708 21.184H67.707ZM74.088 21.184C74.088 28.054 69.052 33.04 62.138 33.04C55.234 33.04 50.228 28.054 50.228 21.184C50.228 14.318 55.234 9.331 62.138 9.331C69.052 9.331 74.088 14.318 74.088 21.184ZM105.445 32.677V13.281C105.445 10.941 104.335 9.806 102.025 9.806L99.465 9.796L99.485 27.5H99.465L99.485 32.87H105.445V32.677ZM122.505 9.278C119.175 9.278 117.055 10.765 115.865 12.018L115.465 12.423L115.325 11.873C114.975 10.529 113.795 9.788 112.025 9.788H109.165L109.185 32.683H115.225V22.131C115.225 21.099 115.365 20.205 115.635 19.387C116.355 16.914 117.995 15.378 120.525 15.378C122.555 15.378 123.725 16.453 123.725 19.232V29.203C123.725 31.573 125.195 32.683 127.555 32.683H129.785V18.261C129.785 12.475 127.825 9.278 122.505 9.278V9.278ZM91.436 21.777C91.1964 21.3119 90.8928 20.8827 90.534 20.502L90.326 20.281L90.546 20.069C90.862 19.734 91.186 19.338 91.497 18.878L97.584 9.795H90.195L85.622 16.899C85.363 17.28 84.84 17.472 84.058 17.472H82.48V4.045C82.48 1.36 80.642 0 78.84 0H76.414L76.42 32.691H82.48V23.183H83.63C84.375 23.183 84.883 23.269 85.118 23.675L88.729 30.518C89.736 32.375 90.743 32.691 92.635 32.691H97.651L93.915 26.488L91.436 21.777ZM41.648 21.184C41.648 17.473 39.358 14.877 36.079 14.877C32.819 14.877 30.553 17.473 30.553 21.184C30.553 24.898 32.819 27.496 36.079 27.496C39.405 27.496 41.649 24.958 41.649 21.184H41.648ZM48.028 21.184C48.028 28.054 43.002 33.04 36.079 33.04C29.182 33.04 24.177 28.054 24.177 21.184C24.177 14.318 29.182 9.331 36.079 9.331C43.002 9.331 48.027 14.318 48.027 21.184H48.028ZM98.764 3.81C98.764 1.704 100.464 0 102.544 0C104.634 0 106.334 1.704 106.334 3.81C106.334 5.911 104.634 7.617 102.544 7.617C100.464 7.617 98.764 5.911 98.764 3.81Z"
                  fill="#003580"/>
            <path d="M187.08 25.067C187.06 25.088 184.38 27.915 180.87 27.915C177.66 27.915 174.42 25.941 174.42 21.538C174.42 17.73 176.93 15.071 180.53 15.071C181.7 15.071 183.02 15.492 183.23 16.198L183.26 16.318C183.74 17.919 185.19 18.001 185.47 18.001L188.88 18.005V15.021C188.88 11.085 183.89 9.65698 180.53 9.65698C173.35 9.65698 168.14 14.674 168.14 21.584C168.14 28.489 173.29 33.502 180.4 33.502C186.56 33.502 189.91 29.434 189.94 29.391L190.12 29.172L187.43 24.685L187.08 25.067ZM244.43 9.65698C241.73 9.65698 239.25 10.927 237.58 13.05L237.11 13.651L236.74 12.979C235.53 10.776 233.46 9.65698 230.57 9.65698C227.55 9.65698 225.53 11.35 224.58 12.358L223.97 13.024L223.73 12.144C223.39 10.877 222.26 10.178 220.56 10.178H218.06L218.04 32.984H224.01V22.917C224.01 22.036 224.12 21.163 224.34 20.248C224.93 17.816 226.56 15.202 229.3 15.462C230.99 15.626 231.81 16.936 231.81 19.466V32.984H237.44V22.917C237.44 21.813 237.55 20.99 237.79 20.162C238.3 17.842 240.37 15.459 243.02 15.459C244.93 15.459 245.93 16.545 245.93 19.466V29.649C245.93 31.954 247.28 32.984 249.57 32.984H251.99L252 18.424C252 12.607 249.45 9.65698 244.43 9.65698V9.65698ZM203.66 10.043C196.76 10.043 191.35 15.031 191.35 21.898C191.35 28.765 196.76 33.754 203.66 33.754C210.58 33.754 215.61 28.765 215.61 21.898C215.61 15.031 210.58 10.043 203.66 10.043V10.043ZM158.31 29.446C158.31 27.34 160 25.636 162.09 25.636C164.18 25.636 165.88 27.34 165.88 29.446C165.88 31.548 164.18 33.254 162.09 33.254C160 33.254 158.31 31.548 158.31 29.446ZM203.66 28.209C200.4 28.209 198.13 25.611 198.13 21.898C198.13 18.186 200.4 15.59 203.66 15.59C206.93 15.59 209.23 18.186 209.23 21.898C209.23 25.671 206.99 28.209 203.66 28.209Z"
                  fill="#0896FF"/>
        </svg>
        <svg class="bk-icon -iconset-close" height="128" style="display:none;" width="128" viewBox="0 0 128 128"
             role="presentation" aria-hidden="true" focusable="false">
            <path d="M69.7 64l33.1-33.2a4 4 0 0 0-5.6-5.6L64 58.3 30.8 25.2a4 4 0 1 0-5.6 5.6L58.3 64 25.2 97.2a4 4 0 1 0 5.6 5.6L64 69.7l33.2 33.1a4 4 0 0 0 5.6-5.6z"/>
        </svg>
        <div class="iam_account_access">
            <div class="iam_card iam_login_form">
                <div class="iam_login_text iam_login_text--header">请登录继续</div>
                <a href=""
                   class="iam_login_btn--email bui-button bui-button--large bui-button--wide bui-spacer"
                   role="button"
                   data-bui-component="Button">
                    <span class="bui-button__text">登录你的帐号</span>
                </a>
                <div class="iam_login_or">
                    <div class="iam_login_or_divider"></div>
                    <span class="iam_login_or_text">or use one of these options</span>
                </div>
                <div class="access-panel__social-buttons">
                    <a href=""
                       data-popup-href=""
                       class="iam_login_form__social-button iam_login_form__social-button-wechat bui-button bui-button--secondary "
                       title="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
                       aria-label="&#x4F7F;&#x7528;&#x5FAE;&#x4FE1;&#x5E10;&#x53F7;&#x767B;&#x5F55;"
                       data-component="iam/social-button"
                       data-mask="true">
                        <div class="iam_login_form__social-button-content">
                            <div class="iam_login_form__social-button-image">
                                <svg class="bk-icon -social-providers-wechat" height="24" width="24"
                                     viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false">
                                    <path fill="#3EBD30"
                                          d="M71.5 23.3a47.2 47.2 0 0 0-38.6-3 39.4 39.4 0 0 0-20.3 16 30 30 0 0 0-3.7 23c2 8.6 8 15.8 15.2 20.6l-4 12 13.7-7.4a50.7 50.7 0 0 0 17 2.4 29.4 29.4 0 0 1-1.1-13.8A29.4 29.4 0 0 1 59 56.5c8-7.5 19.5-10.7 30.3-10-2-10-9-18.3-17.8-23.2zm-31.1 18c-.9 4-6 5.9-9.1 3.2-3.6-2.5-2.6-8.7 1.6-9.9 4-1.6 8.7 2.6 7.5 6.8zm28.2-1c0 4.4-6 7.2-9.3 4.2-3.5-2.5-2.5-8.6 1.6-9.9a5.8 5.8 0 0 1 7.7 5.6zM118 67.4a30.9 30.9 0 0 0-14.5-14.7 39.7 39.7 0 0 0-35.6.1c-7.6 4-14 11-15.7 19.5a25 25 0 0 0 3.1 18.5c5 8.2 14 13.4 23.2 15.1 6.8 1.4 13.7.6 20.3-1.3 3.9 1.5 7.4 4 11.2 5.8l-3.1-9.8c4.2-3 8.1-6.9 10.4-11.6a25.1 25.1 0 0 0 .6-21.6zM79.5 70a4.6 4.6 0 0 1-7.5 1.6c-2.4-2.1-1.4-6.6 1.6-7.6 3.5-1.4 7.4 2.5 6 6zm22.4.4a4.6 4.6 0 0 1-7.3 1.3c-1-1-1.2-2.3-1.6-3.4.5-2.2 2-4.4 4.4-4.5 3.3-.5 6.3 3.6 4.5 6.6z"/>
                                </svg>
                            </div>
                        </div>
                    </a>
                    <a href=""
                       data-popup-href=""
                       class="iam_login_form__social-button iam_login_form__social-button-apple bui-button bui-button--secondary "
                       title="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
                       aria-label="&#x4F7F;&#x7528;Apple&#x5E10;&#x53F7;&#x767B;&#x5F55;"
                       data-component="iam/social-button"
                       data-mask="true">
                        <div class="iam_login_form__social-button-content">
                            <div class="iam_login_form__social-button-image">
                                <svg class="bk-icon -social-providers-apple" height="24" width="24"
                                     viewBox="0 0 170 170" role="presentation" aria-hidden="true" focusable="false">
                                    <path d="M150.37 130.25c-2.45 5.66-5.35 10.87-8.71 15.66-4.58 6.53-8.33 11.05-11.22 13.56-4.48 4.12-9.28 6.23-14.42 6.35-3.69 0-8.14-1.05-13.32-3.18-5.197-2.12-9.973-3.17-14.34-3.17-4.58 0-9.492 1.05-14.746 3.17-5.262 2.13-9.501 3.24-12.742 3.35-4.929.21-9.842-1.96-14.746-6.52-3.13-2.73-7.045-7.41-11.735-14.04-5.032-7.08-9.169-15.29-12.41-24.65-3.471-10.11-5.211-19.9-5.211-29.378 0-10.857 2.346-20.221 7.045-28.068 3.693-6.303 8.606-11.275 14.755-14.925s12.793-5.51 19.948-5.629c3.915 0 9.049 1.211 15.429 3.591 6.362 2.388 10.447 3.599 12.238 3.599 1.339 0 5.877-1.416 13.57-4.239 7.275-2.618 13.415-3.702 18.445-3.275 13.63 1.1 23.87 6.473 30.68 16.153-12.19 7.386-18.22 17.731-18.1 31.002.11 10.337 3.86 18.939 11.23 25.769 3.34 3.17 7.07 5.62 11.22 7.36-.9 2.61-1.85 5.11-2.86 7.51zM119.11 7.24c0 8.102-2.96 15.667-8.86 22.669-7.12 8.324-15.732 13.134-25.071 12.375a25.222 25.222 0 0 1-.188-3.07c0-7.778 3.386-16.102 9.399-22.908 3.002-3.446 6.82-6.311 11.45-8.597 4.62-2.252 8.99-3.497 13.1-3.71.12 1.083.17 2.166.17 3.24z"/>
                                </svg>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="iam_login_text iam_login_text--footer">
                    还没有帐号？
                    <a href="" class="iam_login_link">创建帐号</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="display: none;" id="logo-not-document-write"></div>


<span id="req_info" style="display:none;">1715400|1,1670770,1714820,1701060,1711830|2,1707970,1715400,1715830,1711830,1717800</span>
</body>
</html>