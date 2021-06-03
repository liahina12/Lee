<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="lnb_hm">
		<!--layout-->
		<div class="layout2">
			<!--S:우측-->
			<dl class="utilMenu">
				<dd>
					<ul class="list">
						<li class="login"><a href="/account/login.do">로그인</a></li>
						<li class="join"><a href="/account/agree.do">회원가입</a></li>
					</ul>
				</dd>
			</dl>
			<!--//E:우측-->
		</div>
		<!--//layout-->
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
				<li class="depth1 41"><a href="/zboard/list.do?lmCode=notice">공지사항</a>
						</li>
				<li class="depth1 51"><a href="/zboard/list.do?lmCode=campSafe">안전한캠핑즐기기</a>
						</li>
				<li class="depth1 53"><a href="/zboard/list.do?lmCode=notice">고객센터</a>
						</li>
				</ul>
		</div>
	</div>
</div>
</nav>
	</div>
</header>
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
									<button type="submit" class="btnSearch_black01">검색</button>
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
</section>


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
			</ul>
  		<div class="btn_top">상단으로</div>
		</div>
	</div>

	<div class="f_link_w">
		
		<div class="layout">
			<!--하단주소-->
			<div class="f_addr">
				<address class="addr">
					<div>강원도 원주시 세계로 10 (반곡동 1914-6) 한국관광공사</div>
					<div>TEL : 02-6450-0909 (상담시간 : 평일 10:00~18:00)</div>
				</address>
				<p class="copyright">
					Copyrights(c) 2018 <span>KOREA TOURISM ORGANIZATION</span> ALL RIGHTS RESERVED.
				</p>
			</div>			 
		</div>
	</div>
	<!--//하단주소영역&바로가기 링크-->
</footer>
</body>
</html>