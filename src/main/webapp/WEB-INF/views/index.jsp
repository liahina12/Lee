<!DOCTYPE html>
<html lang="ko" xml:lang="ko">
<head>
<link rel="shortcut icon" href="/img/2018/layout/favicon.ico">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no,email=no,address=no" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, minimum-scale=1.0, user-scalable=yes" />
<meta name="author" content="고캠핑" />
<meta name="Keywords" content="GOcamping, 고캠핑, 대한민국구석구석고캠핑" />
<meta name="description" content="대한민국 구석구석 캠핑장 정보는 고캠핑에서 검색하세요." />
<meta property="og:type" content="website">
<meta property="og:title" content="고캠핑">
<!--<meta property="og:image" content="/images/common/ci.png">
	<meta property="og:url" content=""/>-->
<meta property="og:description" content="고캠핑">
<title>한국관광공사 고캠핑</title>

<link rel="stylesheet" type="text/css" href="/css/bsite/style.css?ver=1.02" />
<!-- <link rel="stylesheet" type="text/css" href="/css/bsite/jquery.bxslider.css" />-->
<!-- <script src="/js/2018/bsite/jquery.cookie.js"></script> -->

<script src="/js/2018/bsite/jquery-1.11.3.min.js"></script>
<script src="/js/2018/bsite/jquery-ui-1.11.4/jquery-ui.min.js"></script>
<script src="/js/2018/bsite/jquery-ui-1.11.4/jquery-ui.js"></script>
<script src="/js/2018/bsite/style.js"></script>
<script src="/js/2018/bsite/slide.js?ver=1.0"></script>

<script src="/js/common.js"></script>

<script src="/slick/slick.min.js"></script>
<script src="/slick/slick.js"></script>
<link rel="stylesheet" type="text/css" href="/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/slick/slick-theme.css" />
<!-- 다이로그 -->
<link rel="stylesheet" href="/js/dist/remodal.css">
<link rel="stylesheet" href="/js/dist/remodal-default-theme.css">
<script src="/js/dist/remodal.js"></script>
<!-- 다이로그 -->

<script>
	$(function() {
		alertResMsg("");
	});
</script>

<script>
	$(document).ready(function() {
		$(".gnb").hover(function() {
			$(".snb").stop().slideDown(400);
		}, function() {
			$(".snb").stop().slideUp(600);
		});

		$(".snb").hover(function() {
			$(".snb").stop().slideDown(400);
		}, function() {
			$(".snb").stop().slideUp(600);
		});
	});
	
	/* 가격대 구간검색 */
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 500000,
			values : [ 0, 100000 ],
			slide : function(event, ui) {
				$("#searchMummPc").val(ui.values[0]);
				$("#searchMxmmPc").val(ui.values[1]);
			}
		});
		$("#searchMummPc").val($("#slider-range").slider("values", 0));
		$("#searchMxmmPc").val($("#slider-range").slider("values", 1));
	});
	
	
</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-52705464-2"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-52705464-2');
</script>
</head>
<body> 
	<div id="accessibility">
	<a href="#section1">본문 바로가기</a> <a href="#gnb">대메뉴 바로가기</a>
</div>

<h1 class="skip">고캠핑 포털 웹사이트 입니다.</h1>

<script>
	// Get cookie function
	function getCookie(name) {
		var cookieName = name + "=";
		var x = 0;
		while (x <= document.cookie.length) {
			var y = (x + cookieName.length);
			if (document.cookie.substring(x, y) == cookieName) {
				if ((lastChrCookie = document.cookie.indexOf(";", y)) == -1)
					lastChrCookie = document.cookie.length;
				return decodeURI(document.cookie.substring(y, lastChrCookie));
			}
			x = document.cookie.indexOf(" ", x) + 1;
			if (x == 0)
				break;
		}
		return "";
	}

	/* setCookie function */
	function setCookie(cname, value, expire) {
		var todayValue = new Date();
		// 오늘 날짜를 변수에 저장

		todayValue.setDate(todayValue.getDate() + expire);
		document.cookie = cname + "=" + encodeURI(value) + "; expires=" + todayValue.toGMTString() + "; path=/;";
	}
</script>

<script>
	$(document).ready(function() {
		$(".t_event_btn_fff").click(function() {
			$("#t_event_w").slideUp(300);

			if ($("#blindEvent").is(":checked") == true) {
				setCookie("topEventPopup", "end", 1);
			}
		});

		var result = getCookie('topEventPopup');
		if (result == 'end') {
			return false;
		} else {
//			$("#t_event_w").show();
		}
	});
</script>
<div id="wrap">
	 <div id="t_event_w" style="display: none;">
		<a href="https://www.gocamping.or.kr/zboard/read.do?searchWrd=&pageIndex=1&lmCode=notice&searchCnd=&searchCate1=&pd_pkid=3934"><img src="/upload/layout/46/5996ec3p8E8EYv3RAtc9r0BW.jpg" alt="근로자휴가지원제도" id="banner01"></a>
		<div class="t_event_checkbox">
			<input type="checkbox" id="blindEvent" name="blindEvent" value="y" title="오늘하루 열지않기"> <label for="blindEvent">오늘 하루 열지 않기</label>
		</div>
		<button type="button" class="t_event_btn_fff">
			<span class="skip">닫기</span>
		</button>
	</div>
		<!--흰색버튼 t_event_btn_fff / 검정버튼 t_event_btn -->
	<!--<div id="t_event_w" style="display: none;">
		<a href="/zboard/read.do?searchWrd=&pageIndex=1&lmCode=notice&searchCnd=&searchCate1=&pd_pkid=753"><img src="/img/2018/layout/event2nd_2500X100.jpg" alt="캠퍼들에게 꼭 맞춰 새롭게 탄생한 대한민국 구석구석 고캠핑!"></a>
		<div class="t_event_checkbox">
			<input type="checkbox" id="blindEvent" name="blindEvent" value="y" title="오늘하루 열지않기"> <label for="blindEvent">오늘 하루 열지 않기</label>
		</div>
		<button type="button" class="t_event_btn_fff">
			<span class="skip">닫기</span>
		</button>
	</div>-->
	<!-- //2차이벤트 -->

	<!--S:빠른서비스-->
	<div id="lnb_hm">
		<!--layout-->
		<div class="layout2">
			<!--S:좌측-->
			<ul class="siteLink">
				<li class="home"><a href="/">고캠핑</a></li>
				<li class="kto"><a href="http://kto.visitkorea.or.kr/kor.kto" target="_blank" title="새창열림">한국관광공사</a></li>
				<li class="visit_ko"><a href="http://korean.visitkorea.or.kr/" target="_blank" title="새창열림">대한민국 구석구석</a></li>
				<li class="duru"><a href="http://www.durunubi.kr/" target="_blank" title="새창열림">두루누비</a></li>
			</ul>
			<!--//E:좌측-->
			<!--S:우측-->
			<dl class="utilMenu">
				<dt class="skip">유틸메뉴</dt>
				<dd>
					<ul class="list">
						<li class="login"><a href="/account/login.do">로그인</a></li>
							<li class="join"><a href="/account/agree.do">회원가입</a></li>
							<li class="join"><a href="/oprtr/intro.do">사업자용</a></li>
						<li class="join"><a href="http://lms.gocamping.or.kr/" target="_blank">안전교육</a></li>
						<li class="sitemap"><a href="/bsite/sitemap/read.do">사이트맵</a></li>
					</ul>
				</dd>
			</dl>
			<!--//E:우측-->
		</div>
		<!--//layout-->
	</div>
	<!--//E:빠른서비스--><script>
	$(document).ready(function() {
		$(".pop_close2").click(function() {
			$("#popup_layer_w").fadeOut(1000);
		});

		$(".today_close_w > .today_close").click(function() {
			$("#popup_layer_w").fadeOut(1000);

			setCookie("m_layerPopup", "end", 1);
		});

		$(".popup_layer").each(function() {
			var id = $(this).attr("id");
			var result_popup = getCookie(id);

			if (result_popup == "end") {
				return false;
			} else {
				$("#" + id).show();
			}
		});
	});

	function fnCloseLPopup(cnt) {
		$("#lPopup_" + cnt).fadeOut(1000);
	}

	function fnCloseTodayLPopup(cnt) {
		$("#lPopup_" + cnt).fadeOut(1000);

		setCookie("lPopup_" + cnt, "end", 1);
	}
</script>

<!-- 19.04.09 layout popup -->
<div class="popup_layer" id="lPopup_1" style="top: 200px; left: 0px; display: none;">
			<div class="pop_in">
				<a href="#none" title="현재창으로" target="_BLANK"> <img src="/upload/layout/42/8295IH90l2x4o7ap0Way2Ls0.jpg" alt="">
							</a> <a class="pop_close2" title="팝업닫기" onclick="fnCloseLPopup('1'); return false;"><span class="skip">팝업닫기</span></a>
				<div class="today_close_w">
					<a class="today_close" title="오늘하루 열지않기" onclick="fnCloseTodayLPopup('1'); return false;">오늘하루 열지않기</a>
				</div>
			</div>
		</div>

		<header id="header" style="right: 0px">
	<div id="header_in">
		<div class="layout2">
			<!--S:로고영역-->
			<div class="logoarea">
				<!--S:Logo-->
				<h1 id="logo">
					<a href="/"><span class="skip">대한민국 구석구석 고캠핑</span></a>
				</h1>
				<!--//E:Logo-->
				<!--S:SNS버튼모음-->
				<ul class="sns_list">
					<li class="sns00"><a href="https://www.instagram.com/gocamping_official/" target="_BLANK">고캠핑 인스타그램</a></li>
					<li class="sns01"><a href="https://www.facebook.com/go2thecamping/" target="_BLANK">고캠핑 공식페이스북</a></li>
					<li class="sns02"><a href="https://blog.naver.com/gocamping_official" target="_BLANK">고캠핑 공식블로그</a></li>
					<!--<li class="sns03"><a href="https://www.youtube.com/channel/UCuCBPZUAgFBX0J1EVnkuXPQ" target="_BLANK">고캠핑 공식유튜브</a></li>-->
				</ul>
				<!--E:SNS버튼모음-->
				<!--S:통합검색-->
				<div class="m_search">
					<form name="totalSearchForm01" action="/bsite/search/list.do" method="get">
						<fieldset class="totalSearch">
							<legend>통합검색</legend>
							<label for="searchKrwd_total" class="skip">통합검색</label> <input type="text" class="m_search_in" id="searchKrwd_total" name="searchKrwd" style="vertical-align: middle"
								title="검색어 입력박스" placeholder="검색어를 입력하세요." />
							<div class="search_btn">
								<input type="submit" value="검색" title="새창" />
							</div>
						</fieldset>
					</form>
				</div>
				<!--//E:통합검색-->
				<!--모바일ver-->
				<div class="h_m_mn">
					<a id="open_mn" class="btn_lnb">메뉴</a> <a id="open_search" class="btn_search">검색</a>
				</div>
				<!--검색OPEN-->
				<div class="layer_open_search" style="display: none;" id="open_search_inner">
					<div class="layout">
						<form id="totalSearchForm02" action="/bsite/search/list.do" role="search" method="get">
							<fieldset>
								<legend class="screen_out">검색어 입력폼</legend>
								<div class="box_search">
									<label for="searchKrwd2" class="skip">캠핑장을 검색해보세요.</label> <input type="text" id="searchKrwd2" name="searchKrwd" class="campSearch_op" title="캠핑장을 검색해보세요.">
									<button type="submit" class="btn_search">
										<span class="icon_all camp_search">검색</span>
									</button>
									<button class="btn_delete" id="search_delete" type="button" onclick="javascript:layer_close();">
										<span class="camp_search_close">닫기</span>
									</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				<!--//검색OPEN-->
				<!--//모바일ver-->
			</div>
			<!--//E:로고영역-->
		</div>

		<!--S:상단메뉴-->
		<!-- 주요메뉴:S -->
		<nav id="gnb">
<div class="gnb_in">
	<h2 class="skip">주요메뉴</h2>
	<div class="layout">
		<div class="wrap">
			<ul class="top1menu clearfix">
				<li class="depth1 41"><a href="/bsite/camp/info/list.do">캠핑GO</a>
							<ul class="top2menu">
								<li><a href="/bsite/camp/info/list.do">캠핑장 검색</a>
												</li>
									<li>
										<a href="/bsite/camp/info/list.do?listTy=MAP">지도로 검색</a>
									</li>
									<li>
										<ul class="top2menu_in">
											<li><a href="/camp/recomend/list.do">이달의 추천 캠핑장</a></li>
											<li><a href="/zboard/list.do?lmCode=campEvent">캠핑장 이벤트</a></li>
										</ul>
									</li>
								</ul>
						</li>
				<li class="depth1 51"><a href="/zboard/list.do?lmCode=campNews">캠핑플러스</a>
							<ul class="top2menu">
								<li><a href="/zboard/list.do?lmCode=campNews">캠핑소식</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSafe">안전한캠핑즐기기</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSafetyVod">캠핑장 안전수칙 동영상</a>
												</li>
									</ul>
						</li>
				<li class="depth1 53"><a href="/zboard/list.do?lmCode=notice">고객센터</a>
							<ul class="top2menu">
								<li><a href="/zboard/list.do?lmCode=notice">공지사항</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campRequest">캠핑장정보 수정요청</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSttemnt">미등록야영장 불법영업문의</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campNotice">캠핑장 공지사항</a>
												</li>
									</ul>
						</li>
				</ul>
		</div>
	</div>
	<div class="wrapBg"></div>
	<div class="bg_black">
		<span class="skip">투명배경이미지</span>
	</div>
</div>
</nav><!-- 주요메뉴:E -->
		<!-- S: TM_주요메뉴 -->
		<div class="tm_gnb_w" style="opacity: 1">
	<div class="tm_nav_bg">
		<span class="skip">투명배경이미지</span>
	</div>
	<nav id="tm_gnb" style="left: 0">
		<h2>
			<span class="skip">모바일용 메뉴</span>
		</h2>

		<div id="tm_gnb01">
			<ul>

				<li class="tm_sitemap"><a href="/bsite/sitemap/read.do">사이트맵</a></li>
				<li class="tm_login"><a href="/account/login.do">로그인</a></li>
					</ul>

		</div>
		<div id="tm_gnb00">
			<ul>
				<li class="tm_oprtr3"><a href="/oprtr/intro.do">사업자용</a></li>
						<li class="tm_oprtr3"><a href="http://lms.gocamping.or.kr/" target="_blank">안전교육</a></li>
					</ul>
		</div>
		<div id="tm_gnb02">
			<ul>
				<li class="tm_home"><a href="/"><span class="skip">홈으로</span></a></li>
				<li class="tm_sns00"><a href="https://www.instagram.com/gocamping_official/" target="_BLANK"><span class="skip">고캠핑 공식 인스타그램</span></a></li>
				<li class="tm_sns01"><a href="https://www.facebook.com/go2thecamping/" target="_BLANK"><span class="skip">고캠핑 공식페이스북</span></a></li>
				<li class="tm_sns02"><a href="https://blog.naver.com/gocamping_official" target="_BLANK"><span class="skip">고캠핑 공식블로그</span></a></li>
				<li class="tm_sns03"><a href="https://www.youtube.com/channel/UCuCBPZUAgFBX0J1EVnkuXPQ" target="_BLANK"><span class="skip">고캠핑 공식유튜브</span></a></li>
			</ul>
		</div>
		<div id="tm_gnb03">
			<ul class="tm_topMenu">
				<!-- <li class="tm_top1m"><a href="#" class="tm_menu1 on"><span>캠핑GO</span></a>
					<ul class="tm_top2m">
						<li><a href="#">상세검색</a>
							<ul class="tm_top3m">
								<li><a href="#">3차메뉴리스트1</a></li>
								<li><a href="#">3차메뉴리스트2</a></li>
								<li><a href="#">3차메뉴리스트3</a></li>
							</ul></li>
						<li><a href="#">태그검색</a></li>
						<li><a href="#">지도검색</a></li>
					</ul></li>
				<li class="tm_top1m"><a href="#" class="tm_menu2"><span>캠핑Talk</span></a>
					<ul class="tm_top2m" style="display: none">
						<li><a href="#">캠핑소식</a></li>
						<li><a href="#">캠핑후기</a></li>
						<li><a href="#">캠핑서포터즈</a></li>
						<li><a href="#">캠핑노하우</a></li>
					</ul></li>
				<li class="tm_top1m"><a href="#" class="tm_menu3"><span>캠핑플러스</span></a>
					<ul class="tm_top2m" style="display: none">
						<li><a href="#">상세검색</a></li>
						<li><a href="#">태그검색</a></li>
						<li><a href="#">지도검색</a></li>
					</ul></li>
				<li class="tm_top1m"><a href="#" class="tm_menu4"><span>고객센터</span></a>
					<ul class="tm_top2m" style="display: none">
						<li><a href="#">상세검색</a></li>
						<li><a href="#">태그검색</a></li>
						<li><a href="#">지도검색</a></li>
					</ul></li>-->
				<li class="tm_top1m"><a href="/bsite/camp/info/list.do" class="tm_menu1"><span>캠핑GO</span></a>
							<ul class="tm_top2m" style="display: none;">
								<li><a href="/bsite/camp/info/list.do">캠핑장 검색</a>
												</li>
									<li><a href="/bsite/camp/info/list.do?listTy=MAP">지도로 검색</a></li>
									<li><a href="/camp/recomend/list.do">이달의 추천 캠핑장</a></li>
									<li><a href="/zboard/list.do?lmCode=campEvent">캠핑장 이벤트</a></li>
								</ul>
						</li>
				<li class="tm_top1m"><a href="/zboard/list.do?lmCode=campNews" class="tm_menu2"><span>캠핑플러스</span></a>
							<ul class="tm_top2m" style="display: none;">
								<li><a href="/zboard/list.do?lmCode=campNews">캠핑소식</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSafe">안전한캠핑즐기기</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSafetyVod">캠핑장 안전수칙 동영상</a>
												</li>
									</ul>
						</li>
				<li class="tm_top1m"><a href="/zboard/list.do?lmCode=notice" class="tm_menu3"><span>고객센터</span></a>
							<ul class="tm_top2m" style="display: none;">
								<li><a href="/zboard/list.do?lmCode=notice">공지사항</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campRequest">캠핑장정보 수정요청</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campSttemnt">미등록야영장 불법영업문의</a>
												</li>
									<li><a href="/zboard/list.do?lmCode=campNotice">캠핑장 공지사항</a>
												</li>
									</ul>
						</li>
				</ul>
		</div>
	</nav>
	<div class="tm_gnb_close" style="cursor: pointer;">
		<button type="button">
			<span class="skip">모바일용 메뉴 닫기</span>
		</button>
	</div>
</div><!-- E: TM_주요메뉴 -->
		<!--//E:상단메뉴-->
	</div>
</header><script>
	$(document).ready(function() {
		$("#c_do").change(function() {
			$.ajax({
				type : "get",
				url : "/bsite/area/ctprvn/lwprt/list.do",
				data : {
					"ctprvn_idx" : $("#c_do").val()
				},
				success : function(data) {
					var str = "<option value=\"\">전체/시/군</option>";
					var jsonData = $.parseJSON(data);
					$.each(jsonData.list, function(key, value) {
						str += "<option value=\"" + value.signgu_idx + "\">" + value.signgu_nm + "</option>";
					});

					$("#c_signgu").empty();
					$("#c_signgu").html(str);
				},
				error : function(xhr, status, error) {
					alert("오류가 발생하였습니다.\n관리자에게 문의해주세요.");
				}
			});
		});

		$("#searchForm2ResetBtn").click(function() {
			$("#campSearchForm2").find("input:checkbox").attr("checked", false);
			$("#slider-range").slider("values", 0, 0);
			$("#slider-range").slider("values", 1, 100000);
			$("#searchMummPc").val(0);
			$("#searchMxmmPc").val(100000);
		});
	});
</script>

<script src="/js/2018/bsite/map/map.js"></script>
<!--  다이로그 메세지 추가  -->
<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div>
    <h2 id="modal1Title">문의안내</h2>
    <p id="modal1Desc">
      	현재 도메인의 위치검색 허용을 차단하여 검색이 불가능합니다.<Br/>
      	현재 도메인의 위치검색 허용을 하신후 다시시도해 보시기 바랍니다.
    </p>    
  </div>
  <br>
  <button data-remodal-action="cancel" class="remodal-cancel">close</button>
  <!-- <button data-remodal-action="confirm" class="remodal-confirm">OK</button> -->
</div>
<!--  다이로그 메세지 추가  -->

<section id="section1" style="right: 0px">
	<h2>
		<span class="skip">캠핑장 정보검색</span>
	</h2>
	<div class="section_01">
		<div class="layout">
			<div class="main_top">
				<section id="layer_search">
					<h2>
						<span class="skip">검색 레이어박스</span>
					</h2>
					<!--타이틀-->
					<div class="m_title">
						<p class="m_title_01">
							<span>캠핑장 정보</span> 어디에서 찾으세요?
						</p>
						<p class="s_title01">고캠핑에는 관광사업자에 등록된 2611개의 캠핑장 정보가 있습니다.</p>
						<!-- <p class="s_title01">고캠핑에는 2611개의 캠핑장 정보가 있습니다.</p>-->
					</div>
					<!--//타이틀-->
					<div class="search_box">
						<form id="campSearchForm01" action="/bsite/camp/info/list.do" method="get">
							<button type="button" class="btn_mylocation" onclick="geoFindMe(30, ''); return false;">내주변 캠핑장</button>
							<button type="button" class="btn_dsearch">상세검색</button>
							<!--검색박스-->
							<div class="search_box_form">
								<div class="form1_1">
									<p class="tt">키워드검색</p>
									<label class="skip" for="searchKrwd_f">검색어를 입력하세요.</label> <input type="text" class="keyword2" id="searchKrwd_f" name="searchKrwd" title="검색어를 입력하세요.">
								</div>
								<div class="form1_2">
									<p class="tt">지역별</p>
									<label class="skip" for="c_do">지역별 검색</label> <select name="c_do" id="c_do" class="select_01" title="검색할 지역을 선택하세요.">
										<option value="">전체/도</option>
										<option value="1">서울시</option>
										<option value="2">부산시</option>
										<option value="3">대구시</option>
										<option value="4">인천시</option>
										<option value="5">광주시</option>
										<option value="6">대전시</option>
										<option value="7">울산시</option>
										<option value="8">세종시</option>
										<option value="9">경기도</option>
										<option value="10">강원도</option>
										<option value="11">충청북도</option>
										<option value="12">충청남도</option>
										<option value="13">전라북도</option>
										<option value="14">전라남도</option>
										<option value="15">경상북도</option>
										<option value="16">경상남도</option>
										<option value="17">제주도</option>
										</select> <label class="skip" for="c_signgu">시군별 검색</label> <select name="c_signgu" id="c_signgu" class="select_02" title="검색할 지역을 선택하세요.">
										<option value="">전체/시/군</option>
									</select>
								</div>
								<div class="form1_2">
									<p class="tt">테마별</p>
									<label class="skip" for="searchLctCl">테마별 검색</label> <select name="searchLctCl" id="searchLctCl" class="select_03" title="검색할 테마를 선택하세요.">
										<option value="">전체테마</option>
										<option value="47">해변</option>
										<option value="48">섬</option>
										<option value="49">산</option>
										<option value="50">숲</option>
										<option value="51">계곡</option>
										<option value="52">강</option>
										<option value="53">호수</option>
										<option value="54">도심</option>
										</select>
									<button type="submit" class="btnSearch_black01">검색</button>
									<button type="button" class="mylocation_tmv btn_none" onclick="geoFindMe(30, ''); return false;">내주변 캠핑장 검색</button>
								</div>
							</div>
							<!--//검색박스-->
						</form>
					</div>
				</section>
			</div>
		</div>
		<!--S:비쥬얼영역-->
		<div class="m_bg_w">
			<div class="m_bg_01"><span class="skip">고캠핑의 메인 대표이미지 1</span></div>
			<div class="m_bg_02"><span class="skip">고캠핑의 메인 대표이미지 2</span></div>
			<!--
			<div class="m_bg_03"><span class="skip">고캠핑의 메인 대표이미지 3</span></div>
			-->
			<div class="m_bg_05"><span class="skip">고캠핑의 메인 대표이미지 4</span></div>
		</div>
		<!--E:비쥬얼영역-->
		<div class="m_bg_btn">
			<button class="pause">Pause</button>
			<button class="play">Play</button>
		</div>
	</div>
</section>

<!--상세검색 레이어팝업-->
<section class="layerpop">
	<div class="mask_bg">
		<!--메인 상세검색 레이어팝업 불투명배경-->
	</div>
	<div class="layout">
		<div class="layer_detailSearch">
			<h2>
				원하는 캠핑장을 좀 더 <strong>상세하게</strong> 검색해보세요.
			</h2>
			<button type="button" class="close">
				<span class="skip">닫기</span>
			</button>
			<!--상세검색-->
			<div id="sub_title_wrap2" style="padding-bottom: 0">
				<form id="campSearchForm2" action="/bsite/camp/info/list.do" method="get">
					<div class="detail_search_w">
						<ul>
							<li>
								<div class="tm_ver f_open">
									<button type="button">지역별</button>
									<!--div의 클래스명이 f_open이면 아래의 folder_w가 활성화되고, f_close가 되면 folder_w가 비활성화 됩니다-->
									<div class="folder_w">
										<strong>지역별</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchDo" id="c_do01" class="check01" value="1" title="서울시"
														 /><label for="c_do01">서울시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do02" class="check01" value="2" title="부산시"
														 /><label for="c_do02">부산시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do03" class="check01" value="3" title="대구시"
														 /><label for="c_do03">대구시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do04" class="check01" value="4" title="인천시"
														 /><label for="c_do04">인천시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do05" class="check01" value="5" title="광주시"
														 /><label for="c_do05">광주시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do06" class="check01" value="6" title="대전시"
														 /><label for="c_do06">대전시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do07" class="check01" value="7" title="울산시"
														 /><label for="c_do07">울산시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do08" class="check01" value="8" title="세종시"
														 /><label for="c_do08">세종시</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do09" class="check01" value="9" title="경기도"
														 /><label for="c_do09">경기도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do010" class="check01" value="10" title="강원도"
														 /><label for="c_do010">강원도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do011" class="check01" value="11" title="충청북도"
														 /><label for="c_do011">충청북도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do012" class="check01" value="12" title="충청남도"
														 /><label for="c_do012">충청남도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do013" class="check01" value="13" title="전라북도"
														 /><label for="c_do013">전라북도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do014" class="check01" value="14" title="전라남도"
														 /><label for="c_do014">전라남도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do015" class="check01" value="15" title="경상북도"
														 /><label for="c_do015">경상북도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do016" class="check01" value="16" title="경상남도"
														 /><label for="c_do016">경상남도</label></li>
												<li><input type="checkbox" name="searchDo" id="c_do017" class="check01" value="17" title="제주도"
														 /><label for="c_do017">제주도</label></li>
												</ul>
										</div>
									</div>
								</div> <!--//open시 클래스명 f_open으로 변경-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">운영형태</button>
									<div class="folder_w">
										<strong>운영형태</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchCl" id="c_cl01" class="check01" value="29" title="지자체"
														 /><label for="c_cl01">지자체</label></li>
												<li><input type="checkbox" name="searchCl" id="c_cl02" class="check01" value="30" title="국립공원"
														 /><label for="c_cl02">국립공원</label></li>
												<li><input type="checkbox" name="searchCl" id="c_cl03" class="check01" value="31" title="자연휴양림"
														 /><label for="c_cl03">자연휴양림</label></li>
												<li><input type="checkbox" name="searchCl" id="c_cl04" class="check01" value="32" title="국민여가"
														 /><label for="c_cl04">국민여가</label></li>
												<li><input type="checkbox" name="searchCl" id="c_cl05" class="check01" value="33" title="민간"
														 /><label for="c_cl05">민간</label></li>
												</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">입지구분</button>
									<div class="folder_w">
										<strong>입지구분</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl01" class="check01" value="47" title="해변"  /><label for="c_lct_cl01">해변</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl02" class="check01" value="48" title="섬"  /><label for="c_lct_cl02">섬</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl03" class="check01" value="49" title="산"  /><label for="c_lct_cl03">산</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl04" class="check01" value="50" title="숲"  /><label for="c_lct_cl04">숲</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl05" class="check01" value="51" title="계곡"  /><label for="c_lct_cl05">계곡</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl06" class="check01" value="52" title="강"  /><label for="c_lct_cl06">강</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl07" class="check01" value="53" title="호수"  /><label for="c_lct_cl07">호수</label></li>
												<li><input type="checkbox" name="searchLctCl" id="c_lct_cl08" class="check01" value="54" title="도심"  /><label for="c_lct_cl08">도심</label></li>
												</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">주요시설</button>
									<div class="folder_w">
										<strong>주요시설</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchInduty" id="c_induty01" value="42" class="check01" title="일반야영장"
														 /><label for="c_induty01">일반야영장</label></li>
												<li><input type="checkbox" name="searchInduty" id="c_induty02" value="43" class="check01" title="자동차야영장"
														 /><label for="c_induty02">자동차야영장</label></li>
												<li><input type="checkbox" name="searchInduty" id="c_induty03" value="44" class="check01" title="카라반"
														 /><label for="c_induty03">카라반</label></li>
												<li><input type="checkbox" name="searchInduty" id="c_induty04" value="45" class="check01" title="글램핑"
														 /><label for="c_induty04">글램핑</label></li>
												</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">바닥형태</button>
									<div class="folder_w">
										<strong>바닥형태</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" class="check01" name="searchSiteBottomCl1" id="searchSiteBottomCl1" value="Y" title="잔디"><label for="searchSiteBottomCl1"
													class="label_name">잔디</label></li>
												<li><input type="checkbox" class="check01" name="searchSiteBottomCl2" id="searchSiteBottomCl2" value="Y" title="데크"><label for="searchSiteBottomCl2"
													class="label_name">데크</label></li>
												<li><input type="checkbox" class="check01" name="searchSiteBottomCl3" id="searchSiteBottomCl3" value="Y" title="파쇄석"><label for="searchSiteBottomCl3"
													class="label_name">파쇄석</label></li>
												<li><input type="checkbox" class="check01" name="searchSiteBottomCl4" id="searchSiteBottomCl4" value="Y" title="자갈"><label for="searchSiteBottomCl4"
													class="label_name">자갈</label></li>
												<li><input type="checkbox" class="check01" name="searchSiteBottomCl5" id="searchSiteBottomCl5" value="Y" title="맨흙"><label for="searchSiteBottomCl5"
													class="label_name">맨흙</label></li>
											</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">테마별</button>
									<div class="folder_w">
										<strong>테마별</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode01" value="80" class="check01" title="일출명소"
														 /><label for="searchThemeEnvrnClCode01"
														class="label_name">일출명소</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode02" value="81" class="check01" title="일몰명소"
														 /><label for="searchThemeEnvrnClCode02"
														class="label_name">일몰명소</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode03" value="82" class="check01" title="수상레저"
														 /><label for="searchThemeEnvrnClCode03"
														class="label_name">수상레저</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode04" value="83" class="check01" title="항공레저"
														 /><label for="searchThemeEnvrnClCode04"
														class="label_name">항공레저</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode05" value="84" class="check01" title="스키"
														 /><label for="searchThemeEnvrnClCode05"
														class="label_name">스키</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode06" value="85" class="check01" title="낚시"
														 /><label for="searchThemeEnvrnClCode06"
														class="label_name">낚시</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode07" value="154" class="check01" title="액티비티"
														 /><label for="searchThemeEnvrnClCode07"
														class="label_name">액티비티</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode08" value="86" class="check01" title="봄꽃여행"
														 /><label for="searchThemeEnvrnClCode08"
														class="label_name">봄꽃여행</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode09" value="87" class="check01" title="여름물놀이"
														 /><label for="searchThemeEnvrnClCode09"
														class="label_name">여름물놀이</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode010" value="88" class="check01" title="가을단풍명소"
														 /><label for="searchThemeEnvrnClCode010"
														class="label_name">가을단풍명소</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode011" value="89" class="check01" title="겨울눈꽃명소"
														 /><label for="searchThemeEnvrnClCode011"
														class="label_name">겨울눈꽃명소</label></li>
												<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode012" value="90" class="check01" title="걷기길"
														 /><label for="searchThemeEnvrnClCode012"
														class="label_name">걷기길</label></li>
												</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li>
								<div class="tm_ver f_open">
									<button type="button">부대시설</button>
									<div class="folder_w">
										<strong>부대시설</strong>
										<div class="check_w">
											<ul>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode01" value="56" class="check01" title="전기"
														 /><label for="searchSbrsClCode01"
														class="label_name">전기</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode02" value="57" class="check01" title="무선인터넷"
														 /><label for="searchSbrsClCode02"
														class="label_name">무선인터넷</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode03" value="58" class="check01" title="장작판매"
														 /><label for="searchSbrsClCode03"
														class="label_name">장작판매</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode04" value="59" class="check01" title="온수"
														 /><label for="searchSbrsClCode04"
														class="label_name">온수</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode05" value="60" class="check01" title="트렘폴린"
														 /><label for="searchSbrsClCode05"
														class="label_name">트렘폴린</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode06" value="61" class="check01" title="물놀이장"
														 /><label for="searchSbrsClCode06"
														class="label_name">물놀이장</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode07" value="62" class="check01" title="놀이터"
														 /><label for="searchSbrsClCode07"
														class="label_name">놀이터</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode08" value="63" class="check01" title="산책로"
														 /><label for="searchSbrsClCode08"
														class="label_name">산책로</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode09" value="64" class="check01" title="운동장"
														 /><label for="searchSbrsClCode09"
														class="label_name">운동장</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode010" value="65" class="check01" title="운동시설"
														 /><label for="searchSbrsClCode010"
														class="label_name">운동시설</label></li>
												<li><input type="checkbox" name="searchSbrsClCode" id="searchSbrsClCode011" value="66" class="check01" title="마트.편의점"
														 /><label for="searchSbrsClCode011"
														class="label_name">마트.편의점</label></li>
												</ul>
										</div>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li class="p_relative">
								<div class="tm_ver f_open">
									<button type="button">가격대</button>
									<div class="folder_w">
										<strong>가격대 <span>(1박 기준 세금포함)</span></strong>
										<div id="slider-range"></div>
										<p class="slider_amount_input">
											<label for="searchMummPc" class="skip">최저금액</label> <input type="text" name="searchMummPc" id="searchMummPc" maxlength="7" title="최저금액" /> <label for="searchMxmmPc" class="skip">최고금액</label>
											<input type="text" name="searchMxmmPc" id="searchMxmmPc" maxlength="7" title="최고금액"/>
										</p>
									</div>
									<!--//folder_w-->
								</div> <!--//tm_ver-->
							</li>
							<li class="detail_btn_w">
								<button type="button" class="b_lightgray" id="searchForm2ResetBtn">
									<i class="btn_reset">초기화</i>
								</button>
								<button type="submit" class="b_blue">
									<i class="btn_reset">검색하기</i>
								</button>
							</li>
						</ul>
					</div>
				</form>
			</div>
			<!--//상세검색-->
		</div>
	</div>
</section>
<!--//상세검색 레이어팝업--><script>
	$(document).ready(function() {
		$("#openNotice").click(function() {
			$("#open_list_inner").slideDown();
		});

		$("#closeNotice").click(function() {
			$("#open_list_inner").slideUp();
		});

		$("#openEvent").click(function() {
			$("#open_list_inner2").slideDown();
		});

		$("#closeEvent").click(function() {
			$("#open_list_inner2").slideUp();
		});
	});
</script>

<section id="section2" style="right: 0px">
	<h2>
		<span class="skip">공지사항 및 이벤트 정보</span>
	</h2>
	<div class="section_02">
		<div class="layout2">
			<!--s:공지사항-->
			<div class="notice_w">
				<p class="tt">공지사항</p>
				<ul class="list_w">
					<li class="list"><a href="/zboard/read.do?lmCode=notice&pd_pkid=3951">2021년 등록 야영장 지원사업 추진계획 안내</a></li>
								<li class="date">Fri Jan 29</li>
							</ul>
				<button type="button" class="noti_more" id="openNotice">
					<span class="skip">더보기</span>
				</button>
				<!--공지사항 더보기 클릭시 오픈-->
				<div class="list_w_open" id="open_list_inner" style="display: none">
					<dl>
						<dt>
							<p class="tt">공지사항</p>
						</dt>
						<dd>
							<button type="button" class="noti_moreS1" onclick="location.href='/zboard/list.do?lmCode=notice'; return false;">
								<span class="">더보기</span>
							</button>
						</dd>
					</dl>
					<ul>
						<li><a href="/zboard/read.do?lmCode=notice&pd_pkid=3951">2021년 등록 야영장 지원사업 추진계획 안내</a><span class="date">Fri Jan 29</span></li>
								<li><a href="/zboard/read.do?lmCode=notice&pd_pkid=3934">캠린이를 위한 동계 안전캠핑 5대 수칙 소문내기 이벤트</a><span class="date">Fri Jan 08</span></li>
								<li><a href="/zboard/read.do?lmCode=notice&pd_pkid=3908">2021년 야영장 사업자 안전교육 교재 / 지자체 야영장 업무매뉴얼 첨부</a><span class="date">Thu Dec 24</span></li>
								</ul>
					<button type="button" class="noti_close" id="closeNotice">
						<span class="skip">닫기</span>
					</button>
				</div>
				<!--//공지사항 더보기 클릭시 오픈-->
			</div>

			<!--e:공지사항-->
			<!--s:이벤트-->
			<div class="event_w">
				<p class="tt">이벤트</p>
				<ul class="list_w">
					<li class="list"><a href="/zboard/list.do?lmCode=campEvent&pd_pkid=1287"> <!-- <b class="event_tt">[로하스캠핑장]</b> --> 고캠핑 서포터즈 모집</a></li>
								<li class="date"></li>
							</ul>
				<button type="button" class="noti_more" id="openEvent">
					<span class="skip">더보기</span>
				</button>
				<!--이벤트 더보기 클릭시 오픈-->
				<div class="list_w_open" style="display: none;" id="open_list_inner2">
					<dl>
						<dt>
							<p class="tt">이벤트</p>
						</dt>
						<dd>
							<button type="button" class="noti_moreS1" onclick="location.href='/zboard/list.do?lmCode=campEvent'; return false;">
								<span class="">더보기</span>
							</button>
						</dd>
					</dl>
					<ul>
						<li><a href="/zboard/list.do?lmCode=campEvent&pd_pkid=1287"> <!-- <b class="event_tt">[로하스캠핑장]</b> --> 고캠핑 서포터즈 모집</a> <span class="date">Tue Apr 09</span></li>
								<li><a href="/zboard/list.do?lmCode=campEvent&pd_pkid=1286"> <!-- <b class="event_tt">[로하스캠핑장]</b> --> 고캠핑과 함께하는 펀(FUN) 투어 일반인 참가자 모집</a> <span class="date">Tue Apr 09</span></li>
								<li><a href="/zboard/list.do?lmCode=campEvent&pd_pkid=534"> <!-- <b class="event_tt">[로하스캠핑장]</b> --> 고캠핑홈페이지가 새롭게 리뉴얼되었습니다! 이벤트에도 참여해보세요.</a> <span class="date">Fri Dec 07</span></li>
								</ul>
					<button type="button" class="noti_close" id="closeEvent">
						<span class="skip">닫기</span>
					</button>
				</div>
				<!--//공지사항 더보기 클릭시 오픈-->
			</div>
			<!--e:이벤트-->
		</div>
	</div>
</section><section id="section3">
		<h2>
				<span class="skip">힌국관광공사 추천 가볼만한곳 </span>
			</h2>
			<div class="section_03">
				<div class="layout">
					<div class="title_w">
						<h2 class="tt01">
							<b> 봄 빛이 아름다운  문화 예술 여행</b> <!-- <i class="tt_point"><span class="skip">아이콘이미지</span></i>-->
						</h2>
						<span class="s_tt">힌국관광공사 추천 가볼만한곳 </span>
					</div>
					<!-- 
					<div class="title_w">
						<h2 class="tt01">
							<b>5월,</b> <span>힌국관광공사 추천 가볼만한곳 </span> <i class="tt_point"><span class="skip">아이콘이미지</span></i>
						</h2>
						<span class="s_tt"> 봄 빛이 아름다운  문화 예술 여행</span>
					</div>
					 -->
					<section>
						<h2 class="skip">이달의 추천 캠핑장입니다</h2>
						<div class="tour_list_w">
							<div class="tour_list" style="width: 100%;">
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=a79c5ba2-d9b0-4e87-97e9-84bd646bbc6c&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/120/6925jYc1luUPmQ9Bs2LiUk35.jpg" alt="KT&G상상마당 춘천">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/120/6925jYc1luUPmQ9Bs2LiUk35.jpg" alt="KT&G상상마당 춘천">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												KT&amp;G상상마당 춘천</p>
											<span class="s_tt">호수와 나비, 숨바꼭질의 공간 체험, KT&amp;G상상마당 춘천</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=37.8727726&searchLo=127.7025077&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=6fb486cd-799c-4218-b6dc-81755efc0252&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/121/6938mHdw03bdtNRdJVBylLbM.jpg" alt="구례 쌍산재">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/121/6938mHdw03bdtNRdJVBylLbM.jpg" alt="구례 쌍산재">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												구례 쌍산재</p>
											<span class="s_tt">둘러볼수록 깊이 있는 집, 구례 쌍산재</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=35.2157005&searchLo=127.4979339&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=1b6020d1-4438-45a3-9c64-45724e22f94a&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/122/1209TWO1iUvRi0ls2NgcmMdo.jpg" alt="청라언덕과 계산동성당">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/122/1209TWO1iUvRi0ls2NgcmMdo.jpg" alt="청라언덕과 계산동성당">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												청라언덕과 계산동성당</p>
											<span class="s_tt">대구의 근대를 품은 붉은 벽돌집, 청라언덕과 계산동성당</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=35.8665835&searchLo=128.5849574&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=79926993-fc81-49ee-a553-94d331c9f2bb&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/123/6326I1ohuStS3m56WbBCYA8Z.jpg" alt="안양예술공원">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/123/6326I1ohuStS3m56WbBCYA8Z.jpg" alt="안양예술공원">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												안양예술공원</p>
											<span class="s_tt">산책이 예술이다! 안양예술공원</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=37.4116727&searchLo=126.9262130&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=bcf42c3c-8e51-4a2a-b3fb-8ba2dfe88c3f&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/124/96201818go9fzYcWgODvyxZr.jpg" alt="제주도립김창열미술관">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/124/96201818go9fzYcWgODvyxZr.jpg" alt="제주도립김창열미술관">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												제주도립김창열미술관</p>
											<span class="s_tt">김창열의 회귀 철학을 건축으로 표현한 미술관</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=33.3390792&searchLo=126.2686755&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								<div>
										<div class="t_img">
											<a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7f616212-8b00-4a45-88bb-d1d7aec466ef&temp=" title="이달의 추천 캠핑장입니다." target="_BLANK"> <img class="r_img" src="/upload/camp/recomend/125/5967z7AwGpw6C6MDJp7ukTJD.jpg" alt="완주 오성한옥마을">
															<span class="r_img_on"><img src="/img/2018/main/img_more.png" alt="자세히보기"><span class="m_on">관광지정보<br>자세히보기
															</span> </span>
														</a>
											<!--<img class="r_img" src="/upload/camp/recomend/125/5967z7AwGpw6C6MDJp7ukTJD.jpg" alt="완주 오성한옥마을">
													-->
										</div>
										<div class="t_box">
											<p class="tt">
												완주 오성한옥마을</p>
											<span class="s_tt">종남산의 봄빛과 어우러진 고택, 아원고택과 오성한옥마을</span>
											<div class="t_c">
												<button type="button" class="btn_blue_m1"
													onclick="location.href='/bsite/camp/info/list.do?listTy=MAP&searchLa=35.9047816&searchLo=127.2397121&distance=50'; return false;">
													주변캠핑장 보기</button>
											</div>
										</div>
									</div>
								</div>
						</div>
					</section>
				</div>
			</div>
		</section>
<script>
	$(document).ready(function() {
		$(".tag_btn").click(function() {
			if ($(this).hasClass("ov")) {
				$(this).removeClass("ov");
			} else {
				$(this).addClass("ov");
			}
		});

		$(".tag_btn01").click(function() {
			$(".tag_wrap > ul > li").each(function() {
				$(this).find("button").removeClass("ov");
			});
		});

		$(".tag_btn02").click(function() {
			var searchTagCode = "";

			$(".tag_wrap > ul > li").each(function() {
				if ($(this).find("button").hasClass("animal")) {

				} else if ($(this).find("button").hasClass("ov")) {
					if (searchTagCode.length > 0) {
						searchTagCode += ",";
					}

					searchTagCode += $(this).find("button").val();
				}
			});

			$("#searchTagCode").val(searchTagCode);
			
			
			// 19.6.4
			if ($("#animal").hasClass("ov")) {
				$("#searchAnimalCmgCl").val("CL02");
			} else {
				$("#searchAnimalCmgCl").val("");
			}

			$("#tagForm").submit();
		});
	});
</script>

<form name="tagForm" id="tagForm" action="/bsite/camp/info/list.do" method="post">
	<input type="hidden" name="listTy" id="listTy" value="TAG" /> <input type="hidden" name="searchTagCode" id="searchTagCode" value="" />
	<input type="hidden" name="searchAnimalCmgCl" id="searchAnimalCmgCl" value="" />
</form>

<section id="section4">
	<h2>
		<span class="skip">태그로찾는나만의캠핑장</span>
	</h2>
	<div class="section_04">
		<div class="layout">
			<h2 class="tt01">태그로 찾는 나만의 캠핑장</h2>
			<div class="tag_wrap">
				<ul>
					<li class="tag_s"><button type="button" name="m_tab" id="animal" class="tag_btn animal" value="CL02">#반려견동반</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_111">
								#계곡옆</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="117_121">
								#자전거 타기 좋은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="117_120">
								#둘레길</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="98_127">
								#봄</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="126_155">
								#익스트림</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="104_105">
								#깨끗한</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="98_128">
								#여름</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="99_102">
								#여유있는</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="123_125">
								#커플</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_113">
								#물놀이 하기 좋은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_115">
								#바다가 보이는</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_114">
								#물맑은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="98_130">
								#겨울</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="117_122">
								#별 보기 좋은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="99_103">
								#사이트 간격이 넓은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="123_124">
								#힐링</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="117_119">
								#축제</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_112">
								#생태교육</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="98_129">
								#가을</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="104_108">
								#수영장 있는</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="117_118">
								#문화유적</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="123_146">
								#가족</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="99_101">
								#재미있는</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="104_106">
								#온수 잘 나오는</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="104_107">
								#차대기 편한</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="99_100">
								#친절한</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="110_116">
								#그늘이 많은</button></li>
					<li><button type="button" name="m_tab" class="tag_btn" value="104_109">
								#아이들 놀기 좋은</button></li>
					</ul>
				<div class="tag_btn_wrap">
					<button type="button" class="tag_btn01">초기화</button>
					<button type="button" class="tag_btn02">검색하기</button>
				</div>
			</div>
		</div>
	</div>
</section><section id="section5">
	<h2>
		<span class="skip">파도소리 들리는 감성 캠핑</span>
	</h2>
	<div class="section_05">
		<div class="layout">
			<!--타이틀-->
			<div class="title_w">
				<h2 class="tt01">
					파도소리 들리는 감성 캠핑<i class="tt_point"><span class="skip">아이콘이미지</span></i>
				</h2>
				<span class="s_tt">한번쯤은 꼭 가볼만한 캠핑장! 추천해요~ </span>
			</div>
			<!--//타이틀-->

			<!--테마슬라이드-->
			<div class="them_cont02">
				<div class="section_05_01">
					<p class="img_box">
						<img src="/upload/camp/theme/3/thumb/thumb_324_224_4861k6JXgwfXnb4kWeyKbhAL.jpg" alt="추천테마캠핑장이미지" class="imgFit">
								</p>
					<div class="them_cont">
						<p>
							<span>추천해요</span>
						</p>
						<span>바다와 파도소리, 밤이면 별이 쏟아지는 해변에서 즐기는 감성캠핑. 그곳으로 떠나요~~</span>
					</div>
				</div>
				<div class="item_w">
					<div>
							<a href="/bsite/camp/info/read.do?c_no=2672">
								<div class="them_item">
									<img src="/upload/camp/2672/thumb/thumb_720_8622MUgbQjvlvxxPtpZckjRE.jpg" class="imgFit" alt="장호비치캠핑장">
										<p class="them_tt">
										장호비치캠핑장</p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=2217">
								<div class="them_item">
									<img src="/upload/camp/2217/thumb/thumb_720_4587ZwAbjie8wZF6iPj1SZ10.jpg" class="imgFit" alt="영덕 고래불 국민 야영장">
										<p class="them_tt">
										영덕 고래불 국민 야영장</p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=7075">
								<div class="them_item">
									<img src="/upload/camp/7075/thumb/thumb_720_0524uxpLo2DDCBxUYwVzvgas.jpg" class="imgFit" alt="통제영오토캠핑장">
										<p class="them_tt">
										통제영오토캠핑장</p>
									<i class="them_icon ti_02"><span class="skip">테마-섬</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=3389">
								<div class="them_item">
									<img src="/upload/camp/3389/thumb/thumb_720_3643j32yjvoKpNwJ5ANDUW4b.jpg" class="imgFit" alt="학동자동차 야영장 ">
										<p class="them_tt">
										학동자동차 야영장 </p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=2304">
								<div class="them_item">
									<img src="/upload/camp/2304/thumb/thumb_720_4792fZZQW66QPu3Kk3Bi9BjM.jpg" class="imgFit" alt="오시아노 오토캠핑리조트">
										<p class="them_tt">
										오시아노 오토캠핑리조트</p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=3394">
								<div class="them_item">
									<img src="/upload/camp/3394/thumb/thumb_720_8481tlbPw77QO0qbTgrddZya.jpg" class="imgFit" alt="학암포 오토 캠핑장">
										<p class="them_tt">
										학암포 오토 캠핑장</p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=7311">
								<div class="them_item">
									<img src="/upload/camp/7311/thumb/thumb_720_2107Qzh2fjSjlTnLjkaUUvuJ.jpg" class="imgFit" alt="장경리해변 야영장">
										<p class="them_tt">
										장경리해변 야영장</p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					<div>
							<a href="/bsite/camp/info/read.do?c_no=477">
								<div class="them_item">
									<img src="/upload/camp/477/thumb/thumb_720_6084Elvp4HpgPMVvfPp3kRIz.jpg" class="imgFit" alt="금오도 야영장 ">
										<p class="them_tt">
										금오도 야영장 </p>
									<i class="them_icon ti_01"><span class="skip">테마-해변</span></i>
								</div>
							</a>
						</div>
					</div>
			</div>
			<!--//테마슬라이드-->
			<div class="thema_bg"></div>
		</div>
		<!--S:비쥬얼영역-->
		<div class="thema_bg_w2">
			<div class="thema_bg_01">
				<img src="/img/2018/main/thema_bg_01.jpg" alt="고캠핑 대표 이미지입니다.">
			</div>
		</div>
		<!--E:비쥬얼영역-->
	</div>
</section><script>
	// 	function getFacebookGraphAPI() {
	// 		$.ajax({
	// 			type : "post",
	// 			url : "/bsite/facebook/graphAPI/read.do",
	// 			success : function(data) {
	// 				var str = "";
	// 				var jsonData = $.parseJSON(data);
	// 				var message = "";
	// 				var description = "";
	// 				var link = "";

	// 				$.each(jsonData.data, function(key, value) {
	// 					message = value.message;
	// 					description = value.description;
	// 					link = value.link;

	// 					str += "<ul class='fb_list'>";

	// 					if (typeof message != "undefined") {
	// 						if (typeof link != "undefined") {
	// 							if (message.length > 20) {
	// 								str += "<li class='tt'><a href='" + link + "' target='_BLANK'>" + message.substring(0, 20) + "...</a></li>";
	// 							} else {
	// 								str += "<li class='tt'><a href='" + link + "' target='_BLANK'>" + message + "</a></li>";
	// 							}
	// 						} else {
	// 							if (message.length > 20) {
	// 								str += "<li class='tt'>" + message.substring(0, 20) + "...</li>";
	// 							} else {
	// 								str += "<li class='tt'>" + message + "</li>";
	// 							}
	// 						}

	// 						str += "<li class='cont'>" + message + "</li>";

	// 						if (typeof value.created_time != "undefined") {
	// 							str += "<li class='date'>" + value.created_time.substring(0, 10) + "</li>";
	// 						}
	// 					} else {
	// 						if (typeof description != "undefined") {
	// 							if (typeof link != "undefined") {
	// 								if (description.length > 20) {
	// 									str += "<li class='tt'><a href='" + link + "' target='_BLANK'>" + description.substring(0, 20) + "...</a></li>";
	// 								} else {
	// 									str += "<li class='tt'><a href='" + link + "' target='_BLANK'>" + description + "</a></li>";
	// 								}
	// 							} else {
	// 								if (description.length > 20) {
	// 									str += "<li class='tt'>" + description.substring(0, 20) + "...</li>";
	// 								} else {
	// 									str += "<li class='tt'>" + description + "</li>";
	// 								}
	// 							}

	// 							str += "<li class='cont'>" + description + "</li>";

	// 							if (typeof value.created_time != "undefined") {
	// 								str += "<li class='date'>" + value.created_time.substring(0, 10) + "</li>";
	// 							}
	// 						} else {
	// 							if (typeof link != "undefined") {
	// 								str += "<li class='tt'><a href='" + link + "' target='_BLANK'>" + link + "</a></li>";
	// 							} else {
	// 								str += "<li class='tt'>무제</li>";
	// 							}

	// 							str += "<li class='cont'>" + link + "</li>";

	// 							if (typeof value.created_time != "undefined") {
	// 								str += "<li class='date'>" + value.created_time.substring(0, 10) + "</li>";
	// 							}
	// 						}
	// 					}

	// 					str += "</ul>";
	// 				});

	// 				$(".fb_cont").empty();
	// 				$(".fb_cont").html(str);
	// 			},
	// 			error : function(xhr, status, error) {
	// 				console.log("오류가 발생하였습니다.\n관리자에게 문의해주세요.");
	// 			}
	// 		});
	// 	}

	// 	$(document).ready(function() {
	// 		getFacebookGraphAPI();
	// 	});
</script>

<section id="section7">
	<h2>
		<span class="skip">캠핑 Story</span>
	</h2>
	<div class="section_07">
		<div class="layout">
			<div class="title_w">
				<h2 class="tt01">
					<b>캠핑</b> <span>Story</span> <i class="tt_point"><span class="skip">아이콘이미지</span></i>
				</h2>
				<span class="s_tt">유용한 캠핑이야기와 고캠핑 소식이 한곳에</span>
			</div>
			<!--1단-->
			<div class="content7_1">
				<div class="content7_11">
					<div class="fb_tit">
						<i class="f_icon01">FaceBook</i><span class="s_tt">고캠핑 페이스북 소식</span><a href="https://www.facebook.com/go2thecamping" target="_BLANK" title="더보기" class="ico_moreType01">더보기</a>
					</div>
					<div class="fb_cont">
						<ul class="fb_list">
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3867674189962527/?type=3">&lt;캠린이를 위한 동계 안전캠핑 5대 수칙 소문내기 이벤트&gt;

✔️인스타그...</a></li>
								<li class="date">2021-01-06</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3829037127159567/?type=3">불멍이가 알려주는, 캠핑 안전 4대 수칙! 

여러분 캠핑 안전 4대 수...</a></li>
								<li class="date">2020-12-21</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3818463528216927/?type=3">불멍이가 알려주는, 캠핑장 음주 사고 예방 편! 

최근 캠핑장에서 음주...</a></li>
								<li class="date">2020-12-17</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3815822821814331/?type=3">불멍이가 알려주는 3NO 친환경 캠핑 편

요즘 많은 캠퍼분이 친환경 캠...</a></li>
								<li class="date">2020-12-16</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3813641652032448/?type=3">불멍이가 알려주는 안전한 차박 캠핑 편!

2020년 2월 28일 캠핑카...</a></li>
								<li class="date">2020-12-15</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3798063063590307/?type=3">불멍이가 알려주는, 동계 캠핑 안전하게 즐기기 &lt;꿀팁 편&gt;

동계 캠핑 ...</a></li>
								<li class="date">2020-12-09</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3797762646953682/?type=3">불멍이가 알려주는, 동계 캠핑 안전하게 즐기기 &lt;유류 화재 편&gt;

겨울철...</a></li>
								<li class="date">2020-12-09</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3792486300814650/?type=3">불멍이가 알려주는, 
동계 캠핑 안전하게 즐기기 &lt;난로 사용 편&gt;

동계...</a></li>
								<li class="date">2020-12-07</li>
							<li class="tt"><a href="https://youtu.be/YoJHP7igtag">&#034;텐트 안에 난로를 켜놓고 자도 되나요?&#034;

불멍이가 알려주는 가스 중독...</a></li>
								<li class="date">2020-12-04</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3742101775853103/?type=3">불멍이가 알려주는, 동계 캠핑 안전하게 즐기기! 화로 사용 편!

겨울철...</a></li>
								<li class="date">2020-11-19</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3736953203034627/?type=3">[안전친환경캠핑 인증샷 EVENT]
⠀
불멍이와 함께 3YES, 3NO ...</a></li>
								<li class="date">2020-11-17</li>
							<li class="tt"><a href="https://youtu.be/UtTtChqf0X4">상상도 못 한 물건을 버린다고? 
캠지기 픽! 최악의 캠핑장 쓰레기는? ...</a></li>
								<li class="date">2020-11-11</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3703296819733599/?type=3">가스 중독 걱정 없는 안전한 겨울 캠핑,
고캠핑에서 도와드립니다!

고캠...</a></li>
								<li class="date">2020-11-05</li>
							<li class="tt"><a href="https://youtu.be/Z8f2TEihxWg">“캠핑 고수가 되고 싶다면?&#034;

불멍이가 알려주는 친환경 캠핑 꿀팁
캠핑...</a></li>
								<li class="date">2020-10-27</li>
							<li class="tt"><a href="">[안전캠핑송 속 캠핑 수칙을 맞춰라!] 이벤트 당첨자 발표 

불멍가 부...</a></li>
								<li class="date">2020-10-26</li>
							<li class="tt"><a href="https://youtu.be/MjdPcutZqaM">“코로나19 이후 어떤 게 달라졌나요?” 
캠핑장 캠지기가 말해주는 코로...</a></li>
								<li class="date">2020-10-23</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1553888508007785/3645285535534728/?type=3">불멍이가 알려주는, 캠핑 어디까지 해봤니?  &lt;해수욕장 편&gt;

사실 함부...</a></li>
								<li class="date">2020-10-15</li>
							<li class="tt"><a href="https://youtu.be/vo8InpoWajE">고캠핑 마스코트 불멍이가 말해주는 
코로나19 예방하며 안전하게 캠핑하는...</a></li>
								<li class="date">2020-10-15</li>
							<li class="tt"><a href="https://youtu.be/XtnZKPy8UXE">캠린이 불멍이 캠핑 고수를 만나다! 

“캠린이에게 해주고 싶은 조언은?...</a></li>
								<li class="date">2020-10-08</li>
							<li class="tt"><a href="https://www.facebook.com/go2thecamping/photos/a.1188091187920854/3623826834347265/?type=3">https://www.facebook.com/go2thecamping/photos/a.1188091187920854/3623826834347265/?type=3</a></li>
								<li class="date">2020-10-08</li>
							</ul>
					</div>
				</div>
				<div class="m_notice_banner">
					<div class="content7_12">
						<div style="cursor: pointer;" onclick="location.href='/zboard/list.do?lmCode=campNews'; return false;">
							<p>
								CAMPING<br> <span>NEWS</span>
							</p>
							<span>캠핑소식&뉴스</span>
							<button type="button" class="btn_more02" onclick="location.href='/zboard/list.do?lmCode=campNews'; return false;">
								<span class="skip">더보기</span>
							</button>
						</div>
					</div>
					<div class="content7_14"><a href="http://vacation.visitkorea.or.kr" target="_blank" title="새창 열림"><div class="link_div"></div></a></div>
				</div>
				<div class="content7_13">
					<div class="pop_img_w">
						<div>
									<a href="/bsite/camp/excel/read.do" title="새창열림" target="_SELF"><img src="/upload/layout/41/9594YwMksXvUzqFxsJBpghvw.jpg" alt="고캠핑에서 인증한 전국 캠핑장리스트, 캠핑장 리스트 다운받기" class="imgFit">
												</a>
								</div>
							</div>
					</div>
			</div>
			<!--//1단-->
		</div>
	</div>
</section><!-- test -->
<footer id="footer">
	<!--하단개인정보 링크영역-->
	<div class="f_info_w">
		<div class="layout">
			<div class="f_logo">
				<span class="skip">대한민국 구석구석 고캠핑</span>
			</div>
			<ul class="f_menu">
				<li class="privacy"><a href="/bsite/cntnts/read.do?cntnts_idx=7">개인정보처리방침</a></li>
				<li><a href="/bsite/cntnts/read.do?cntnts_idx=8">전자우편무단수집거부</a></li>
				<li><a href="/bsite/cntnts/read.do?cntnts_idx=9">캠핑장 등록안내</a></li>
				<li><a href="/zboard/list.do?lmCode=campSttemnt">미등록야영장불법영업신고</a></li>
			</ul>
			<ul class="f_sns_w">
				<li class="sns00">
					<a href="https://www.instagram.com/gocamping_official/" target="_BLANK" title="고캠핑인스타그램 바로가기">고캠핑 인스타그램</a>
				</li>
				<li class="sns01">
					<a href="https://www.facebook.com/go2thecamping/" target="_BLANK" title="고캠핑 공식 페이스북 바로가기">고캠핑 공식 페이스북</a>
				</li>
				<li class="sns02">
					<a href="https://blog.naver.com/gocamping_official" target="_BLANK" title="고캠핑 공식 블로그 바로가기">고캠핑 공식 블로그</a>
				</li>
				<li class="sns03">
					<a href="https://www.youtube.com/channel/UCuCBPZUAgFBX0J1EVnkuXPQ" target="_BLANK" title="고캠핑 공식 유튜브 바로가기">고캠핑 공식 유튜브</a>
				</li>
			</ul>
			<div class="btn_top">상단으로</div>
		</div>
	</div>
	<!--//하단개인정보 링크영역-->
	<!--하단주소영역&바로가기 링크-->
	 
	<div class="f_link_w">
		
		<div class="layout">
			<!--하단주소-->
			<div class="f_addr">
				<address class="addr">
					<div>강원도 원주시 세계로 10 (반곡동 1914-6) 한국관광공사</div>
					<div>TEL : 02-6450-0909 (상담시간 : 평일 10:00~18:00)</div>
					<div>EMAIL : <a href="mailto:webmaster@gocamping.or.kr" class="f_mail">webmaster@gocamping.or.kr</a></div>
				</address>
				<p class="copyright">
					Copyrights(c) 2018 <span>KOREA TOURISM ORGANIZATION</span> ALL RIGHTS RESERVED.
				</p>
			</div>
			<!--//f_addr-->
			<!--//하단주소--> 
			<div class="f_link2"><button type="button" onclick="location.href='https://www.gocamping.or.kr/locgov/account/login.do'">지자체공무원</button></div>
			<div class="f_link"> 
				<div class="dropdown">
					<button class="f_link_tt dropbtn" onclick="myFunction()">관련사이트</button>
					<div id="myDropdown" class="dropdown-content">
						<a href="http://kto.visitkorea.or.kr/kor.kto" target="_BLANK">한국관광공사</a>
						<a href="http://korean.visitkorea.or.kr/kor/bz15/addOn/main/publish/index.jsp" target="_BLANK">대한민국 구석구석</a>
						<a href="http://www.durunubi.kr/" target="_BLANK">두루누비</a>
						<a href="http://www.smartoutbound.or.kr/main/main.do" target="_BLANK">지구촌스마트여행</a>
						<a href="http://korean.visitkorea.or.kr/kor/tt/pr_gallery/new_photo_gallery/main/main.jsp" target="_BLANK">관광사진 갤러리</a>
					  </div>
				</div>
			</div>
			<!--//f_link-->
			 
		</div>
	</div>
	<!--//하단주소영역&바로가기 링크-->
</footer> </div>
</body>
</html>