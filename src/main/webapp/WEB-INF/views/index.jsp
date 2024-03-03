<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>꼴뚜기의 첫번째 프로젝트</title>
    <link href="/resources/css/reset.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">

</head>

<body>
<h2>hello spring framework</h2>
<a href="/board/save">글작성</a>
<a href="/board/">글목록</a>
<a href="/board/paging">페이징 목록</a>
<!-- /* top banner */ -->
<div id="topBanner">
    <a>
        <img src="/resources/img/top_banner/top_banner.jpg">
    </a>
    <img src="/resources/img/top_banner/top_close.png" id="topClose">
</div>

<!-- /* header */ -->
<header>
    <div id="topHeader">
        <div id="appDown">
            <button>진가네 앱 다운로드 ▼</button>
        </div>
        <nav>
            <ul>
                <li><a href="#">로그인</a></li>
                <li>|</li>
                <li><a href="#">회원가입</a></li>
                <li>|</li>
                <li><a href="#">고객센터</a></li>
                <li>|</li>
                <li><a href="#">주문조회</a></li>
                <li>|</li>
                <li><a href="#" id="cartBold">장바구니</a></li>
            </ul>
        </nav>
    </div>

    <div id="middleHeader">
        <nav>
            <ul>
                <li><a href="#">시그니처</a></li>
                <li>|</li>
                <li><a href="#">반찬후기</a></li>
                <li>|</li>
                <li><a href="#">배송안내</a></li>
            </ul>
        </nav>

        <div onclick="mainPageReload()" id="logo">
            <a href="#">
                <img src="/resources/img/header_middle/logo.png" alt="진가네로고">
            </a>
        </div>

        <div id="searchInput">
            <input id="inputWord">
            <button id="searchButton"></button>
        </div>
    </div>
    <div id="bottomHeader">
        <button onclick="createSubPage(this.id)" id="0">하루반찬세트</button>
        <nav>
            <ul>
                <li><a href="#" class="jingaTitle"
                       onclick="printCategoryManager (InformationExtractor.productList, SIGNBANCHAN, 'subPages')">진가네
                    시그니처</a>
                </li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="1">진가네 명품김치</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="2">밑반찬</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="3">국·찌개 </a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="4">메인반찬</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="5">전</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="6">나물반찬</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="7">장아찌</a></li>
                <li><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="8">대용량</a></li>
            </ul>
        </nav>
        <p>|<span><a href="#" class="jingaTitle" onclick="createSubPage(this.id)" id="9">반찬도매</a></span></p>
    </div>
</header>


<!-- /* slider */ -->
<div id="slider">
    <img src="/resources/img/slide_image/membership_img.jpg" alt="회원가입혜택" id="memberShip">
    <img src="/resources/img/slide_image/mobile_img.jpg" alt="모바일앱쿠폰이벤트" id="mobileAward">
    <img src="/resources/img/slide_image/delivery_img.jpg" alt="배송당일출발" id="delivery">
    <ul>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
    </ul>
</div>

<!-- /* signSection */ -->
<!-- /* sub pages & search results page */ -->
<section class="subPages">
    <h2 class="categoryTitle"></h2>

    <section class="middleSection"></section>

    <section class="rowsSection" id="21"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="101">진가네 명품김치 전체보기 ></div>
    <section class="rowsSection" id="22"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="102">진가네 밑반찬 전체보기 ></div>
    <section class="rowsSection" id="23"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="103">진가네 국·찌개 전체보기 ></div>
    <section class="rowsSection" id="24"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="104">진가네 메인반찬 전체보기 ></div>
    <section class="rowsSection" id="25"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="105">진가네 전 전체보기 ></div>
    <section class="rowsSection" id="26"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="106">진가네 나물반찬 전체보기 ></div>
    <section class="rowsSection" id="27"></section>
    <div class="bottomSection" onclick="createSubPage(this.id)" id="107">진가네 장아찌 전체보기 ></div>

</section>
<footer id="footer">
    <div id="info01"><img src="/resources/img/footer/footer001.png" alt="배송안내"></div>

    <div id="info02">
        <p>공지사항</p>
        <div id="footerSlider"></div>
    </div>
    <div id="info03">
        <p>가이드</p>
        <div>
            <img src="/resources/img/footer/footer002.png" alt="배송" class="icon">
            <p>배송안내</p>
        </div>
        <div>
            <img src="/resources/img/footer/footer003.png" alt="혜택" class="icon">
            <p>첫구매혜택</p>
        </div>
        <div>
            <img src="/resources/img/footer/footer004.png" alt="고객센터" class="icon">
            <p>고객센터</p>
        </div>
    </div>
    <div id="footerBottom">
        <p id="top">
            <a href="#">이용약관</a>
            <a href="#">개인정보처리방침</a>
        </p>


        <p id="middle1">
            주식회사진가네| 대표이사 : 진성엽| 사업자등록번호 : 611-87-00645 [사업자 정보확인]| 통신판매업신고 : 2018-대구동구-0813호<br>
            주소 : 대구광역시 동구 반야월북로2길16-6| 대표번호:1899-7143|개인정보담당자 : 우윤화|이메일 : wooyouna@naver.com<br>
            고객님의 안전거래를 위해 현금 등으로 결제 시 kg이니시스의 구매안전 서비스를 이용하실 수 있습니다.</p>
        <img src="/resources/img/footer/footer005.png" alt="관련업체">
        <p id="right"><span>고객센터 & 단체구매문의</span><br>
            <span id="tel">1899-7143</span><br>
            평일 09:00~16:00<br>
            점심시간 11:30~12:30<br>
            토·일요일/공휴일 휴무
        </p>
    </div>
</footer>

<script>

    /* 이벤트 */
    document.getElementById("inputWord").addEventListener("keypress", function () {
        if (event.key === "Enter") {
            searchUnitManager(InformationExtractor.productList, document.getElementById("inputWord").value.trim());
        }
    });

    document.getElementById("searchButton").addEventListener("click", function () { searchUnitManager(InformationExtractor.productList, document.getElementById("inputWord").value.trim()) });

    /* 메인 페이지 리로드 (홈버튼)
    v0.01: 240121 메인페이지 리로드
    */
    function mainPageReload() {
        location.reload();
    }

    /* top banner *//* topBanner 상단 배너
        v0.01 : 240110 addEventListen활용 button을 click하면 topBanner영역 display: none
        */
    document.getElementById("topClose").addEventListener("click", topBannerDisplayNone);

    function topBannerDisplayNone() {
        document.getElementById("topBanner").style.display = "none";
    }

    /* header */
    /* 검색 기능
    v0.01: 시그니처 반찬 정보로만 구성하여 검색 기능 적용 하나의 배열에서 입력된 문자열을 찾아 인덱스를 반환하고 반환한 인덱스 값으로 브라우저에 출력
    v0.02: 240114 검색기능에 필요한 속성과 메서드를 담은 객체(SearchUnit)를 만들고 별도의 매니저 함수(searchUnitManager)로 제어
    v0.03: 검색 대상이 반찬 별로 분류되어 다차원 배열에 담긴 상태에서 입력된 문자열을 찾아와 출력하도록 변경
            !!입력 문자열 매칭시 카테고리 배열의 첫번째는 전체 요소의 개수를 담는 공간으로 활용하여 검색결과가 없는 경우를 첫번째 인덱스 값으로 확인하도록 함
            !!해당 기능은 검색타겟이 2차 배열 대상으로 1차배열은 적용 안됨, 특히 자바스크립트에서는 문자열을 배열로 취급하기 때문에 정상작동 되는 것으로 헷갈리지 않도록 주의 할 것
    v0.04: 240120 sub pages와 출력 공간을 공유하면서 슬라이더 영역에 의한 동일 문제 발생으로 출력시 슬라이더를 클리어하고 display를 none으로 설정
    v0.05:
    */

    function SearchUnit(searchTarget, searchWord) {
        this.searchTarget = searchTarget;
        this.searchWord = searchWord;
        this.MIN_INDEX_NUMBER = 0;


        this.checkNull = function () {
            return this.searchWord === null;
        }

        this.nullException = function () {
            const MESSAGE = "검색어를 입력해주세요."
            if (this.checkNull()) {
                alert(MESSAGE, "")
                return true;
            }
            return false;
        }

        this.checkEmptyString = function () {
            return this.searchWord.trim() === "";
        }

        this.emptyStringException = function () {
            const MESSAGE = "검색어를 입력해주세요."
            let condition = this.checkEmptyString();
            if (condition) {
                alert(MESSAGE, "")
                return true;
            }
            return false
        }


        this.searchMatchingWord = function () {
            let searchCategory = [0];
            let searchProduct = [];

            for (let i = 1; i < searchTarget.length; i++) {
                for (let j = 0; j < searchTarget[i].length; j++) {
                    if (searchTarget[i][j].indexOf(this.searchWord) >= this.MIN_INDEX_NUMBER) {
                        searchProduct.push(j);
                    }
                }
                searchCategory[0] += searchProduct.length;
                searchCategory.push(searchProduct);
                searchProduct = [];
            }
            return searchCategory;
        }

        this.isSearchResultNothing = function (searchResultCount) {
            const MESSAGE = "검색 결과가 없습니다."
            if (searchResultCount === 0) {
                alert(MESSAGE, "")
                document.getElementById("inputWord").value = "";
                return true;
            }
            return false;
        }

        this.printSearchResult = function () {

            let searchResult = this.searchMatchingWord();

            if (this.isSearchResultNothing(searchResult[0])) {
                return true;
            }

            document.getElementById("slider").style.display = "none";
            sliderStop();

            printSearchCloneBlock(searchResult, "subPages", 0, createTagWithClass("h2", "subPagesTitle") + cloneTags(createTagWithClass('div', 'productInfo'), searchResult[0]));
        }
    }


    function printSearchCloneBlock(searchResult, className, index, string) {
        printByClass(className, index, string);
        printSearchProuctInformation(searchResult);

    }

    function printSearchProuctInformation(searchResult) {
        let j = 0;
        let count = 0;
        for (let i = 1; i < searchResult.length; i++) {
            if (searchResult[i].length != 0) {
                let productInformation = InformationExtractor.createProdutsSet(i);
                count += searchResult[i].length
                let k = 0
                while (j < count) {
                    printByClass('productInfo', j, createImgWithId('img', productInformation[searchResult[i][k]][3], productInformation[searchResult[i][k]][0], 'productImage') + createTagWithClass('div', "item"));
                    printByClass("item", j, createTagWithClass('p', "productName") + createTagWithClass('p', "productIntro") + createTagWithClass('p', "productPrice"));
                    printByClass("productName", j, productInformation[searchResult[i][k]][0]);
                    printByClass("productIntro", j, productInformation[searchResult[i][k]][1]);
                    printByClass("productPrice", j, productInformation[searchResult[i][k]][2]);
                    k++;
                    j++;
                }
            }

        }
    }

    function searchUnitManager(searchTarget, searchWord) {
        let searchResult = new SearchUnit(searchTarget, searchWord);

        if (searchResult.nullException()) {
            return;
        }
        if (searchResult.emptyStringException()) {
            return;
        }
        if (searchResult.printSearchResult()) {
            return
        }

        document.getElementsByClassName("subPagesTitle")[0].innerHTML = subTitle(10);
    }

    /* slider */
    /* 메인 슬라이더 페이드 인 페이드 아웃 기능
    v0.01 : 240107 setTime()메서드에 시간을 입력하며 하드 코딩함
    v0.02 : 240110 로직을 조금 만들어 함수를 활용하지만 개체수 증가시 코드도 함께 증가
    v0.03 : 240115 개체수 증가시 코드 증가 문제 해결 -> 이미지 추가 시 아이디만 배열에 추가
    v0.04 : 240119 웹페이지 포커스 대기간 쌓이는 인터벌로 인한 페이드 인, 아웃 이상 현상 개선/visiblechange이벤트 활용
    */
    function fadeInManager() {

        let opacityValueFadeIn = 0;
        function FadeInUnit(image) {
            this.image = image;
            this.fadeIn = function () {
                document.getElementById(image).style.opacity = opacityValueFadeIn;
                opacityValueFadeIn += 0.1;
                if (opacityValueFadeIn >= 1.5) {
                    clearInterval(myFadeIn);
                    opacityValueFadeIn = 0;
                }
            }
            let myFadeIn = setInterval(this.fadeIn, 100);
        }

        let imageIdIndexFadeIn = 0;
        function repeatFadeIn() {
            const imageId = ["mobileAward", "delivery"];
            if (imageIdIndexFadeIn == imageId.length) {
                stopFadeInInterval();
                return
            }
            let createFadeIn = new FadeInUnit(imageId[imageIdIndexFadeIn]);
            imageIdIndexFadeIn++;
        }

        let fadeInInterval = setInterval(repeatFadeIn, 2500);

        function stopFadeInInterval() {
            clearInterval(fadeInInterval);
        }
    }

    function fadeOutManager() {

        let opacityValueFadeOut = 1;
        function FadeOutUnit(image) {
            this.image = image;
            this.fadeOut = function () {
                document.getElementById(image).style.opacity = opacityValueFadeOut;
                opacityValueFadeOut -= 0.1;
                if (opacityValueFadeOut <= -0.7) {
                    clearInterval(myFadeOut);
                    opacityValueFadeOut = 1;
                }
            }
            let myFadeOut = setInterval(this.fadeOut, 100);
        }

        let imageIdIndexFadeOut = 1;
        function repeatFadeOut() {
            const imageId = ["mobileAward", "delivery"];
            if (imageIdIndexFadeOut < 0) {
                stopFadeOutInterval();
                return
            }
            let createFadeOut = new FadeOutUnit(imageId[imageIdIndexFadeOut]);
            imageIdIndexFadeOut--;
        }

        let fadeOutInterval = setInterval(repeatFadeOut, 2500);

        function stopFadeOutInterval() {
            clearInterval(fadeOutInterval);
        }
    }

    let sliderTimer;

    function repeat() {
        setTimeout(fadeOutManager, 0);
        setTimeout(fadeInManager, 6000);
    }

    function sliderStart() {
        setTimeout(repeat, 0);
        sliderTimer = setInterval(repeat, 12000);
    }

    function sliderStop() {
        clearInterval(sliderTimer);
    }

    document.addEventListener("visibilitychange", function () {
        if (document.visibilityState === "hidden") {
            return sliderStop();
        }
        return sliderStart();
    });

    /* 공지사항
    v0.01: 240110 setInterval함수를 활용하여 추가한 기능, 정해진 공지사항이 시간 마다 변경
    */
    let news = ["아이스팩 변경 공지드립니다.     2022-03-21", "진가네반찬 등급별안내     2019-07-02", "진가네반찬 배송안내     2018-12-19"]
    let index = 0;
    function newsBoard() {

        document.getElementById("footerSlider").innerHTML = news[index];
        index++;
        if (index >= news.length) index = 0;
    }

    let boardSetInterval;
    function startBoardInterval() {
        let boardSetInterval = setInterval(newsBoard, 2000);
    }

    function stopBoardInterval() {
        clearInterval(boardSetInterval, 2000);
    }

    /* 상품 정보 문자열로 배열 만들기
    v0.01: 240107 웹페이지에서 긁어온 텍스트열에서 필요한 문자열을 찾아 배열 담는 기능
    v0.02: 240110 함수에서 객체로 변경하여 호출시 createProdutsSet 매개변수를 받지 않음
    v0.03: 240116-240118 이미지 경로 작성, 별도로 생성한 이미지 경로와 가격, 제품명, 소개의 인덱스를 맞추기 위해 제품명 배열 추가 작성/ 서브페이지 구현
    */

    const SIGNBANCHAN = ['순한진미채볶음 75g', '새우볶음 75g', '진가네 겉절이김치 500g', '소고기장조림 400g', '오이소박이 500g', '동그랑땡 8개/300g', '청양고추멸치볶음 100g', '생깻잎김치 100g', '새우볶음 300g', '지리멸치볶음 300g', '[도매전용] 지리멸치볶음 *g', '청양고추멸치볶음 300g', '[도매전용] 새우볶음 *g', '고들빼기김치 1kg', '지리멸치볶음 75g']

    const HARU_SET_INFORMATION = "하루반찬 Set1 미역줄기볶음,순한진미채볶음,수제카레 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 미역줄기볶음,순한진미채볶음,수제카레 장바구니 담기 하루반찬 Set2 깨순조림,지리멸치볶음,수제짜장 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 깨순조림,지리멸치볶음,수제짜장 장바구니 담기 하루반찬 Set3 건취나물볶음,쥐포간장볶음,무말랭이김치 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 건취나물볶음,쥐포간장볶음,무말랭이김치 장바구니 담기 품절 하루반찬 Set4 계란말이,순한진미채볶음,부지깽이나물볶음 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 계란말이,순한진미채볶음,부지깽이나물볶음 하루반찬 Set5 닭가슴살장조림,새우볶음,오이나물양념무침 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 닭가슴살장조림,새우볶음,오이나물양념무침 장바구니 담기 하루반찬 Set6 우삼겹강된장소스,건취나물볶음,우엉채조림 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 우삼겹강된장소스,건취나물볶음,우엉채조림 장바구니 담기 하루반찬 Set7 오징어채간장볶음,밥비벼먹는볶음김치,메추리알감자샐러드 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 오징어채간장볶음,밥비벼먹는볶음김치,메추리알감자샐러드 장바구니 담기 하루반찬 Set8 닭가슴살겨자소스냉채,대왕오징어간장조림,청양고추멸치볶음 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 닭가슴살겨자소스냉채,대왕오징어간장조림,청양고추멸치볶음 장바구니 담기 하루반찬 Set9 메추리알장조림,다시마채액젓무침,가지양념볶음 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 메추리알장조림,다시마채액젓무침,가지양념볶음 "
    const HARU_SET = ['하루반찬 Set1', '하루반찬 Set2', '하루반찬 Set3', '하루반찬 Set4', '하루반찬 Set5', '하루반찬 Set6', '하루반찬 Set7', '하루반찬 Set8', '하루반찬 Set9'];
    const HARU_SET_IMAGE = ['/resources/img/rows_section/haru/haru001.jpg', '/resources/img/rows_section/haru/haru002.jpg', '/resources/img/rows_section/haru/haru003.jpg', '/resources/img/rows_section/haru/haru004.jpg', '/resources/img/rows_section/haru/haru005.jpg', '/resources/img/rows_section/haru/haru006.jpg', '/resources/img/rows_section/haru/haru007.jpg', '/resources/img/rows_section/haru/haru008.jpg', '/resources/img/rows_section/haru/haru009.jpg']
    const KIMCHI_INFOMATION = "배추포기김치 2.3kg 한국인의 혼을 담다 소비자가 : 36,000원 판매가 : 36,000원 상품 간략설명 : 한국인의 혼을 담다 장바구니 담기 생깻잎김치 100g 산들바람처럼 향긋한~ 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 산들바람처럼 향긋한~ 장바구니 담기 총각김치 500g 아삭아삭 입 속의 경쾌한 소리 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 아삭아삭 입 속의 경쾌한 소리 장바구니 담기 섞박지 500g 개운하고 아삭한 별미김치 소비자가 : 8,000원 판매가 : 8,000원 상품 간략설명 : 개운하고 아삭한 별미김치 장바구니 담기 오이소박이 500g 아삭하고 상큼한 맛 소비자가 : 9,000원 판매가 : 9,000원 상품 간략설명 : 아삭하고 상큼한 맛 장바구니 담기 열무잘박이김치 400g 더위를 가셔주는 시원한 맛 소비자가 : 4,900원 판매가 : 4,900원 상품 간략설명 : 더위를 가셔주는 시원한 맛 장바구니 담기 부추김치 300g 자꾸만 손이가는 중독성 소비자가 : 7,200원 판매가 : 7,200원 상품 간략설명 : 자꾸만 손이가는 중독성 장바구니 담기 파김치 350g 깊은 그늘처럼 우묵한 맛 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 깊은 그늘처럼 우묵한 맛 장바구니 담기 진가네 겉절이김치 500g 금방 무친 산뜻한 맛 소비자가 : 10,900원 판매가 : 10,900원 상품 간략설명 : 금방 무친 산뜻한 맛 장바구니 담기 고추김치 매운맛 100g 입 맛 살려주는 매콤한 맛 소비자가 : 2,900원 판매가 : 2,900원 상품 간략설명 : 입 맛 살려주는 매콤한 맛 장바구니 담기 고추김치 순한맛 100g 잘 발린 양념만큼이나 맛있는 고추김치 소비자가 : 2,900원 판매가 : 2,900원 상품 간략설명 : 잘 발린 양념만큼이나 맛있는 고추김치 장바구니 담기 열무물김치 400g 더위를 가셔주는 시원한 맛 소비자가 : 3,800원 판매가 : 3,800원 상품 간략설명 : 더위를 가셔주는 시원한 맛 장바구니 담기 깍두기 500g 입 맛 당기는 알싸하게 시원한 맛 소비자가 : 7,500원 판매가 : 7,500원 상품 간략설명 : 입 맛 당기는 알싸하게 시원한 맛 장바구니 담기 무말랭이김치 100g 무 손질부터 직접한 무말랭이 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 무 손질부터 직접한 무말랭이 장바구니 담기 품절 고들빼기김치 150g 고들빼기로 만든 별미김치 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 고들빼기로 만든 별미김치 품절 빨간 나박물김치 400g 사라락 눈송이처럼 녹는 시원한 맛 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 사라락 눈송이처럼 녹는 시원한 맛 품절 하얀 나박물김치 400g 사라락 눈송이처럼 녹는 시원한 맛 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 사라락 눈송이처럼 녹는 시원한 맛 오이볶음 150g 꼬독꼬독하고 산뜻한 소비자가 : 5,300원 판매가 : 5,300원 상품 간략설명 : 꼬독꼬독하고 산뜻한 장바구니 담기 순한진미채볶음 75g 진가네 최고의 베스트셀러 소비자가 : 4,200원 판매가 : 4,200원 상품 간략설명 : 진가네 최고의 베스트셀러 장바구니 담기 대왕오징어간장조림 100g 감칠맛과 식감을 즐길 수 있는 소비자가 : 5,200원 판매가 : 5,200원 상품 간략설명 : 감칠맛과 식감을 즐길 수 있는 장바구니 담기 지리멸치볶음 75g 아이반찬으로 적극추천 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 아이반찬으로 적극추천 장바구니 담기 검정콩조림 100g 국내산 검정콩을 직접 삶아 만든 검정콩조림 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 국내산 검정콩을 직접 삶아 만든 검정콩조림 장바구니 담기 어묵간장볶음 150g 남녀노소 누구나 좋아하는! 소비자가 : 3,000원 판매가 : 3,000원 상품 간략설명 : 남녀노소 누구나 좋아하는! 장바구니 담기 매콤한진미채볶음 75g 밑반찬계의 어머니 소비자가 : 4,500원 판매가 : 5,600원 상품 간략설명 : 밑반찬계의 어머니 장바구니 담기 오징어채간장볶음 75g 반찬걱정은 훌훌 털어요~ 소비자가 : 4,300원 판매가 : 4,300원 상품 간략설명 : 반찬걱정은 훌훌 털어요~ 장바구니 담기 새우볶음 75g 달콤고소 눅눅하지 않아요! 소비자가 : 4,400원 판매가 : 4,400원 상품 간략설명 : 달콤고소 눅눅하지 않아요! 장바구니 담기 어묵양념볶음 150g 남녀노소 누구나 좋아하는! 소비자가 : 3,000원 판매가 : 3,000원 상품 간략설명 : 남녀노소 누구나 좋아하는! 장바구니 담기 어묵잡채 150g 고소담백 맛이 일품인 소비자가 : 5,300원 판매가 : 5,300원 상품 간략설명 : 고소담백 맛이 일품인 장바구니 담기 국민반찬set3종  *g 순한진미채,건새우(순한맛),멸치간장볶음 소비자가 : 11,000원 판매가 : 10,500원 상품 간략설명 : 순한진미채,건새우(순한맛),멸치간장볶음 장바구니 담기 오징어채양념볶음 75g 매콤하고 쫄깃한 별미 밑반찬 소비자가 : 4,300원 판매가 : 5,300원 상품 간략설명 : 매콤하고 쫄깃한 별미 밑반찬 장바구니 담기 멸치양념조림 75g 바쁠 땐 이거 하나로도 한 끼 해결! 소비자가 : 3,500원 판매가 : 3,500원 상품 간략설명 : 바쁠 땐 이거 하나로도 한 끼 해결! 장바구니 담기 땅콩조림 100g 인기만점 아이반찬! 소비자가 : 3,500원 판매가 : 4,300원 상품 간략설명 : 인기만점 아이반찬! 장바구니 담기 호두아몬드땅콩조림 200g 최고의 건강반찬 소비자가 : 5,000원 판매가 : 6,200원 상품 간략설명 : 최고의 건강반찬 장바구니 담기 품절 노란콩조림 100g 영양덩어리 노란콩을 담백하게 소비자가 : 3,500원 판매가 : 4,300원 상품 간략설명 : 영양덩어리 노란콩을 담백하게 품절 특급비법소스 140g 비빔냉면, 고기소스로 좋아요 소비자가 : 3,900원 판매가 : 4,800원 상품 간략설명 : 비빔냉면, 고기소스로 좋아요 "
    const KIMCHI = ['배추포기김치 2.3kg', '진가네 겉절이김치 500g', '열무물김치 400g', '총각김치 500g', '파김치 350g', '부추김치 300g', '고추김치 순한맛 100g', '깍두기 500g', '생깻잎김치 100g', '섞박지 500g', '오이소박이 500g', '열무잘박이김치 400g', '고추김치 매운맛 100g', '무말랭이김치 100g', '고들빼기김치 150g', '빨간 나박물김치 400g', '하얀 나박물김치 400g'];
    const KIMCHI_IMAGE = ['/resources/img/rows_section/kimchi/kimchi001.jpg', '/resources/img/rows_section/kimchi/kimchi002.jpg', '/resources/img/rows_section/kimchi/kimchi003.jpg', '/resources/img/rows_section/kimchi/kimchi004.jpg', '/resources/img/rows_section/kimchi/kimchi005.jpg', '/resources/img/rows_section/kimchi/kimchi006.jpg', '/resources/img/rows_section/kimchi/kimchi007.jpg', '/resources/img/rows_section/kimchi/kimchi008.jpg', '/resources/img/rows_section/kimchi/kimchi009.jpg', '/resources/img/rows_section/kimchi/kimchi010.jpg', '/resources/img/rows_section/kimchi/kimchi011.jpg', '/resources/img/rows_section/kimchi/kimchi012.jpg', '/resources/img/rows_section/kimchi/kimchi013.jpg', '/resources/img/rows_section/kimchi/kimchi014.jpg', '/resources/img/rows_section/kimchi/kimchi015.jpg', '/resources/img/rows_section/kimchi/kimchi016.jpg', '/resources/img/rows_section/kimchi/kimchi017.jpg']
    const MITBANCHAN_INFORMATION = "오이볶음 150g 꼬독꼬독하고 산뜻한 소비자가 : 5,300원 판매가 : 5,300원 상품 간략설명 : 꼬독꼬독하고 산뜻한 장바구니 담기 순한진미채볶음 75g 진가네 최고의 베스트셀러 소비자가 : 4,200원 판매가 : 4,200원 상품 간략설명 : 진가네 최고의 베스트셀러 장바구니 담기 대왕오징어간장조림 100g 감칠맛과 식감을 즐길 수 있는 소비자가 : 5,200원 판매가 : 5,200원 상품 간략설명 : 감칠맛과 식감을 즐길 수 있는 장바구니 담기 지리멸치볶음 75g 아이반찬으로 적극추천 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 아이반찬으로 적극추천 장바구니 담기 검정콩조림 100g 국내산 검정콩을 직접 삶아 만든 검정콩조림 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 국내산 검정콩을 직접 삶아 만든 검정콩조림 장바구니 담기 어묵간장볶음 150g 남녀노소 누구나 좋아하는! 소비자가 : 3,000원 판매가 : 3,000원 상품 간략설명 : 남녀노소 누구나 좋아하는! 장바구니 담기 매콤한진미채볶음 75g 밑반찬계의 어머니 소비자가 : 4,500원 판매가 : 5,600원 상품 간략설명 : 밑반찬계의 어머니 장바구니 담기 오징어채간장볶음 75g 반찬걱정은 훌훌 털어요~ 소비자가 : 4,300원 판매가 : 4,300원 상품 간략설명 : 반찬걱정은 훌훌 털어요~ 장바구니 담기 새우볶음 75g 달콤고소 눅눅하지 않아요! 소비자가 : 4,400원 판매가 : 4,400원 상품 간략설명 : 달콤고소 눅눅하지 않아요! 장바구니 담기 어묵양념볶음 150g 남녀노소 누구나 좋아하는! 소비자가 : 3,000원 판매가 : 3,000원 상품 간략설명 : 남녀노소 누구나 좋아하는! 장바구니 담기 어묵잡채 150g 고소담백 맛이 일품인 소비자가 : 5,300원 판매가 : 5,300원 상품 간략설명 : 고소담백 맛이 일품인 장바구니 담기 국민반찬set3종 *g 순한진미채,건새우(순한맛),멸치간장볶음 소비자가 : 11,000원 판매가 : 10,500원 상품 간략설명 : 순한진미채,건새우(순한맛),멸치간장볶음 장바구니 담기 오징어채양념볶음 75g 매콤하고 쫄깃한 별미 밑반찬 소비자가 : 4,300원 판매가 : 5,300원 상품 간략설명 : 매콤하고 쫄깃한 별미 밑반찬 장바구니 담기 멸치양념조림 75g 바쁠 땐 이거 하나로도 한 끼 해결! 소비자가 : 3,500원 판매가 : 3,500원 상품 간략설명 : 바쁠 땐 이거 하나로도 한 끼 해결! 장바구니 담기 땅콩조림 100g 인기만점 아이반찬! 소비자가 : 3,500원 판매가 : 4,300원 상품 간략설명 : 인기만점 아이반찬! 장바구니 담기 호두아몬드땅콩조림 200g 최고의 건강반찬 소비자가 : 5,000원 판매가 : 6,200원 상품 간략설명 : 최고의 건강반찬 장바구니 담기 품절 노란콩조림 100g 영양덩어리 노란콩을 담백하게 소비자가 : 3,500원 판매가 : 4,300원 상품 간략설명 : 영양덩어리 노란콩을 담백하게 멸치양념볶음 300g 바쁠 땐 이거 하나로도 한 끼 해결! 소비자가 : 14,000원 판매가 : 13,300원 상품 간략설명 : 바쁠 땐 이거 하나로도 한 끼 해결!"
    const MITBANCHAN = ['새우볶음 75g', '검정콩조림 100g', '멸치양념조림 75g', '대왕오징어간장조림 100g', '지리멸치볶음 75g', '매콤한진미채볶음 75g', '어묵간장볶음 150g', '오이볶음 150g', '어묵양념볶음 150g', '어묵잡채 150g', '국민반찬set3종 *g', '오징어채양념볶음 75g', '순한진미채볶음 75g', '땅콩조림 100g', '호두아몬드땅콩조림 200g', '노란콩조림 100g', '오징어채간장볶음 75g', '멸치양념볶음 300g'];
    const MITBANCHAN_IMAGE = ['/resources/img/rows_section/mitbachan/mbc001.jpg', '/resources/img/rows_section/mitbachan/mbc002.jpg', '/resources/img/rows_section/mitbachan/mbc003.jpg', '/resources/img/rows_section/mitbachan/mbc004.jpg', '/resources/img/rows_section/mitbachan/mbc005.jpg', '/resources/img/rows_section/mitbachan/mbc006.jpg', '/resources/img/rows_section/mitbachan/mbc008.jpg', '/resources/img/rows_section/mitbachan/mbc009.jpg', '/resources/img/rows_section/mitbachan/mbc010.jpg', '/resources/img/rows_section/mitbachan/mbc011.jpg', '/resources/img/rows_section/mitbachan/mbc012.jpg', '/resources/img/rows_section/mitbachan/mbc013.jpg', '/resources/img/rows_section/mitbachan/mbc014.jpg', '/resources/img/rows_section/mitbachan/mbc015.jpg', '/resources/img/rows_section/mitbachan/mbc016.jpg', '/resources/img/rows_section/mitbachan/mbc017.jpg', '/resources/img/rows_section/mitbachan/mbc018.jpg', '/resources/img/rows_section/mitbachan/mbc007.jpg']
    const SOUP_INFORMATION = "참치김치찌개 500g 참치를 듬뿍 넣어 끓여낸 소비자가 : 5,900원 판매가 : 5,900원 상품 간략설명 : 참치를 듬뿍 넣어 끓여낸 장바구니 담기 들깨북어미역국(냉동) 400g 들깨가루를 듬뿍 넣어 고소한 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 들깨가루를 듬뿍 넣어 고소한 장바구니 담기 한우미역국(냉동) 400g 언제 먹어도 맛있는 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 언제 먹어도 맛있는 장바구니 담기 북엇국(냉동) 400g 구수하고 담백하게 정성껏 끓여낸 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 구수하고 담백하게 정성껏 끓여낸 장바구니 담기 배추시래기국(냉동) 400g 자극적이지 않아 아이반찬으로도 좋은 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 자극적이지 않아 아이반찬으로도 좋은 장바구니 담기 한우육개장(냉동) 400g 제대로 된 국 한그릇 소비자가 : 6,500원 판매가 : 6,500원 상품 간략설명 : 제대로 된 국 한그릇 장바구니 담기 품절 소고기탕국 400g 구수한 국물 맛이 일품인 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 구수한 국물 맛이 일품인 품절 우삼겹순두부국 400g 우삼겹과 순두부의 부드러운 조화 소비자가 : 6,500원 판매가 : 6,500원 상품 간략설명 : 우삼겹과 순두부의 부드러운 조화 품절 해물순두부국 400g 각 종 해물을 듬뿍 넣어 만든 소비자가 : 6,000원 판매가 : 6,000원 상품 간략설명 : 각 종 해물을 듬뿍 넣어 만든 품절 진가네 닭개장 400g 얼큰하게 끓여낸 소비자가 : 6,000원 판매가 : 6,000원 상품 간략설명 : 얼큰하게 끓여낸 품절 다슬기국(냉동) 400g 시원한 국물 맛이 일품인 소비자가 : 6,000원 판매가 : 6,000원 상품 간략설명 : 시원한 국물 맛이 일품인 "
    const SOUP = ['한우육개장(냉동) 400g', '들깨북어미역국(냉동) 400g', '해물순두부국 400g', '배추시래기국(냉동) 400g', '북엇국(냉동) 400g', '한우미역국(냉동) 400g', '우삼겹순두부국 400g', '참치김치찌개 500g', '소고기탕국 400g', '진가네 닭개장 400g', '다슬기국(냉동) 400g'];
    const SOUP_IMAGE = ['/resources/img/rows_section/soup/soup001.jpg', '/resources/img/rows_section/soup/soup002.jpg', '/resources/img/rows_section/soup/soup003.jpg', '/resources/img/rows_section/soup/soup004.jpg', '/resources/img/rows_section/soup/soup005.jpg', '/resources/img/rows_section/soup/soup006.jpg', '/resources/img/rows_section/soup/soup007.jpg', '/resources/img/rows_section/soup/soup008.jpg', '/resources/img/rows_section/soup/soup009.jpg', '/resources/img/rows_section/soup/soup010.jpg', '/resources/img/rows_section/soup/soup011.jpg']
    const MAINBANCHAN_INFORMATION = "고추된장무침 200g 오이같은 아삭함! 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 오이같은 아삭함! 장바구니 담기  상품 간략설명 : 오이같은 아삭함! , 숙주햄볶음 150g 고소 짭짤한 맛과 식감이 좋은 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 고소 짭짤한 맛과 식감이 좋은 장바구니 담기 가지간장볶음 200g 담백고소한 가지반찬 소비자가 : 6,500원 판매가 : 6,500원 상품 간략설명 : 담백고소한 가지반찬 장바구니 담기 소불고기 300g 아이반찬으로 좋아요! 소비자가 : 7,000원 판매가 : 7,000원 상품 간략설명 : 아이반찬으로 좋아요! 장바구니 담기 연근조림 200g 쫀득단짠 아이반찬추천 소비자가 : 4,700원 판매가 : 4,700원 상품 간략설명 : 쫀득단짠 아이반찬추천 장바구니 담기 우엉채조림 100g 간편해서 먹기 좋은 우엉채조림 소비자가 : 4,800원 판매가 : 4,800원 상품 간략설명 : 간편해서 먹기 좋은 우엉채조림 장바구니 담기 소고기 청양고추볶음 150g 특별한 만능반찬 소비자가 : 6,300원 판매가 : 6,300원 상품 간략설명 : 특별한 만능반찬 장바구니 담기 다시마간장조림 150g 밥도둑의 탄생! 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 밥도둑의 탄생! 장바구니 담기 제육볶음 400g 언제 먹어도 맛있는 제육볶음 소비자가 : 7,500원 판매가 : 7,500원 상품 간략설명 : 언제 먹어도 맛있는 제육볶음 장바구니 담기 잡채 400g 평범한 식탁을 특별하게 만들어줘요 소비자가 : 8,400원 판매가 : 8,400원 상품 간략설명 : 평범한 식탁을 특별하게 만들어줘요 장바구니 담기 소고기장조림 400g 집에서 한 것처럼 먹기좋게 만들었어요! 소비자가 : 19,500원 판매가 : 19,500원 상품 간략설명 : 집에서 한 것처럼 먹기좋게 만들었어요! 장바구니 담기 계란말이 200g 두껍게 말아 더 맛있는 소비자가 : 4,900원 판매가 : 4,900원 상품 간략설명 : 두껍게 말아 더 맛있는 장바구니 담기 수제짜장 250g 한 끼 해결하기 좋은 소비자가 : 4,400원 판매가 : 4,400원 상품 간략설명 : 한 끼 해결하기 좋은 장바구니 담기 간장 돼지불고기 150g 자꾸만 손이가는 고기반찬 소비자가 : 5,300원 판매가 : 5,300원 상품 간략설명 : 자꾸만 손이가는 고기반찬 장바구니 담기 오징어양념비빔밥 300g 오징어가 들어간 손쉬운 비빔밥 키트 소비자가 : 8,200원 판매가 : 8,200원 상품 간략설명 : 오징어가 들어간 손쉬운 비빔밥 키트 장바구니 담기 계란장조림 300g 속이 든든해지는 간편반찬 소비자가 : 5,900원 판매가 : 5,900원 상품 간략설명 : 속이 든든해지는 간편반찬 장바구니 담기 가지양념볶음 200g 풍부한 식감이 좋은 가지반찬 소비자가 : 6,500원 판매가 : 6,500원 상품 간략설명 : 풍부한 식감이 좋은 가지반찬 장바구니 담기 오삼불고기 400g 바다와 육지가 만난 새로운 식감 소비자가 : 9,800원 판매가 : 9,800원 상품 간략설명 : 바다와 육지가 만난 새로운 식감 장바구니 담기 코다리양념조림 500g 매콤한 양념과 쫄깃한 코다리의 만남 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 매콤한 양념과 쫄깃한 코다리의 만남 장바구니 담기 수제카레 250g 한 끼 해결하기 좋은 소비자가 : 4,400원 판매가 : 4,400원 상품 간략설명 : 한 끼 해결하기 좋은 장바구니 담기 감자채볶음 150g 아이 간단반찬으로 추천 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 아이 간단반찬으로 추천 장바구니 담기 메추리알 장조림 400g 국물 맛도 맛있는 진가네 장조림 소비자가 : 7,000원 판매가 : 7,000원 상품 간략설명 : 국물 맛도 맛있는 진가네 장조림 장바구니 담기 두부양념조림 400g 자작하게 국물이 잘 스며든 두부반찬 소비자가 : 6,900원 판매가 : 6,900원 상품 간략설명 : 자작하게 국물이 잘 스며든 두부반찬 장바구니 담기 고등어조림(1마리) *g 자작한 국물이 정말 맛있는 소비자가 : 10,000원 판매가 : 10,000원 상품 간략설명 : 자작한 국물이 정말 맛있는 장바구니 담기 메추리알 곤약장조림 200g 달콤 짭조름한 별미반찬 소비자가 : 5,900원 판매가 : 5,900원 상품 간략설명 : 달콤 짭조름한 별미반찬 장바구니 담기 불고기비빔밥 300g 집에서 즐기는 손쉬운 비빔밥 키트 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 집에서 즐기는 손쉬운 비빔밥 키트 장바구니 담기 닭가슴살장조림 200g 부드러운 닭가슴살이라 매력적인 소비자가 : 4,900원 판매가 : 4,900원 상품 간략설명 : 부드러운 닭가슴살이라 매력적인 장바구니 담기 양배추쌈 240g 손쉽게 쌈요리를 즐길 수 있는 소비자가 : 6,900원 판매가 : 6,900원 상품 간략설명 : 손쉽게 쌈요리를 즐길 수 있는 장바구니 담기 메추리알감자샐러드 300g 일품요리이자 활용성이 좋은 소비자가 : 7,500원 판매가 : 7,500원 상품 간략설명 : 일품요리이자 활용성이 좋은 장바구니 담기 닭가슴살겨자소스냉채 300g 입맛을 돋어줄 알싸한 별미 소비자가 : 7,200원 판매가 : 7,200원 상품 간략설명 : 입맛을 돋어줄 알싸한 별미 장바구니 담기 다시마쌈 240g 바다 내음이 가득한 소비자가 : 6,900원 판매가 : 6,900원 상품 간략설명 : 바다 내음이 가득한 장바구니 담기 순살닭볶음탕 600g 뼈가 없어 더 간편하고 맛있는 소비자가 : 11,900원 판매가 : 11,900원 상품 간략설명 : 뼈가 없어 더 간편하고 맛있는 장바구니 담기 코다리간장조림 500g 간장소스로 맵지 않은 쫄깃한 코다리반찬 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 간장소스로 맵지 않은 쫄깃한 코다리반찬 장바구니 담기 청양고추멸치볶음 100g 입 맛 살려주는 매콤함 소비자가 : 5,900원 판매가 : 5,900원 상품 간략설명 : 입 맛 살려주는 매콤함 장바구니 담기 품절 더덕무침 300g 더덕의 향긋함을 느낄 수 있는 소비자가 : 8,500원 판매가 : 8,500원 상품 간략설명 : 더덕의 향긋함을 느낄 수 있는 품절 꽁치조림(2마리) *g 자작한 국물이 정말 맛있는 소비자가 : 10,000원 판매가 : 10,000원 상품 간략설명 : 자작한 국물이 정말 맛있는 "
    const MAINBANCHAN = ['계란말이 200g', '두부양념조림 400g', '메추리알 장조림 400g', '소고기장조림 400g', '잡채 400g', '순살닭볶음탕 600g', '소불고기 300g', '닭가슴살겨자소스냉채 300g', '더덕무침 300g', '메추리알감자샐러드 300g', '닭가슴살장조림 200g', '가지간장볶음 200g', '불고기비빔밥 300g', '간장 돼지불고기 150g', '숙주햄볶음 150g', '고추된장무침 200g', '수제짜장 250g', '코다리간장조림 500g', '코다리양념조림 500g', '연근조림 200g', '우엉채조림 100g', '소고기 청양고추볶음 150g', '다시마간장조림 150g', '제육볶음 400g', '오징어양념비빔밥 300g', '계란장조림 300g', '가지양념볶음 200g', '오삼불고기 400g', '수제카레 250g', '감자채볶음 150g', '메추리알 곤약장조림 200g', '양배추쌈 240g', '다시마쌈 240g', '꽁치조림(2마리) *g', '고등어조림(1마리) *g', '청양고추멸치볶음 100g'];
    const MAINBANCHAN_IMAGE = ['/resources/img/rows_section/mainbanchan/jbc001.jpg', '/resources/img/rows_section/mainbanchan/jbc002.jpg', '/resources/img/rows_section/mainbanchan/jbc003.jpg', '/resources/img/rows_section/mainbanchan/jbc004.jpg', '/resources/img/rows_section/mainbanchan/jbc005.jpg', '/resources/img/rows_section/mainbanchan/jbc006.jpg', '/resources/img/rows_section/mainbanchan/jbc007.jpg', '/resources/img/rows_section/mainbanchan/jbc008.jpg', '/resources/img/rows_section/mainbanchan/jbc009.jpg', '/resources/img/rows_section/mainbanchan/jbc010.jpg', '/resources/img/rows_section/mainbanchan/jbc011.jpg', '/resources/img/rows_section/mainbanchan/jbc012.jpg', '/resources/img/rows_section/mainbanchan/jbc013.jpg', '/resources/img/rows_section/mainbanchan/jbc014.jpg', '/resources/img/rows_section/mainbanchan/jbc015.jpg', '/resources/img/rows_section/mainbanchan/jbc016.jpg', '/resources/img/rows_section/mainbanchan/jbc017.jpg', '/resources/img/rows_section/mainbanchan/jbc018.jpg', '/resources/img/rows_section/mainbanchan/jbc019.jpg', '/resources/img/rows_section/mainbanchan/jbc020.jpg', '/resources/img/rows_section/mainbanchan/jbc021.jpg', '/resources/img/rows_section/mainbanchan/jbc022.jpg', '/resources/img/rows_section/mainbanchan/jbc023.jpg', '/resources/img/rows_section/mainbanchan/jbc024.jpg', '/resources/img/rows_section/mainbanchan/jbc025.jpg', '/resources/img/rows_section/mainbanchan/jbc026.jpg', '/resources/img/rows_section/mainbanchan/jbc027.jpg', '/resources/img/rows_section/mainbanchan/jbc028.jpg', '/resources/img/rows_section/mainbanchan/jbc029.jpg', '/resources/img/rows_section/mainbanchan/jbc030.jpg', '/resources/img/rows_section/mainbanchan/jbc031.jpg', '/resources/img/rows_section/mainbanchan/jbc032.jpg', '/resources/img/rows_section/mainbanchan/jbc033.jpg', '/resources/img/rows_section/mainbanchan/jbc034.jpg', '/resources/img/rows_section/mainbanchan/jbc035.jpg', '/resources/img/rows_section/mainbanchan/jbc036.jpg']
    const JEON_INFORMATION = "동그랑땡 8개/300g 두툼하게 직접 빚어낸 소비자가 : 9,800원 판매가 : 9,800원 상품 간략설명 : 두툼하게 직접 빚어낸 장바구니 담기 김치전 200g 직접 담근 김치로 구워낸 소비자가 : 5,400원 판매가 : 5,400원 상품 간략설명 : 직접 담근 김치로 구워낸 장바구니 담기 부추겉절이와육전 *g 술 안주로 제격인 소비자가 : 16,900원 판매가 : 16,900원 상품 간략설명 : 술 안주로 제격인 장바구니 담기 품절 표고전 6개/220g 표고로 만든 고급전 소비자가 : 9,800원 판매가 : 9,800원 상품 간략설명 : 표고로 만든 고급전 품절 해물부추전 200g 노릇노릇 구워진 해물부추전 소비자가 : 5,400원 판매가 : 5,400원 상품 간략설명 : 노릇노릇 구워진 해물부추전 품절 소세지전 200g 추억의 반찬 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 추억의 반찬 진가네 깻잎전 5개/150g 정성으로 직접 구워낸 소비자가 : 9,800원 판매가 : 9,800원 상품 간략설명 : 정성으로 직접 구워낸 품절 특급비법소스 140g 비빔냉면, 고기소스로 좋아요 소비자가 : 3,900원 판매가 : 4,800원 상품 간략설명 : 비빔냉면, 고기소스로 좋아요 고소 눅눅하지 않아요! "
    const JEON = ['해물부추전 200g', '김치전 200g', '진가네 깻잎전 5개/150g', '동그랑땡 8개/300g', '부추겉절이와육전 *g', '표고전 6개/220g', '소세지전 200g', '특급비법소스 140g'];
    const JEON_IMAGE = ['/resources/img/rows_section/jeon/jeon001.jpg', '/resources/img/rows_section/jeon/jeon002.jpg', '/resources/img/rows_section/jeon/jeon003.jpg', '/resources/img/rows_section/jeon/jeon004.jpg', '/resources/img/rows_section/jeon/jeon005.jpg', '/resources/img/rows_section/jeon/jeon006.jpg', '/resources/img/rows_section/jeon/jeon007.jpg', '/resources/img/rows_section/jeon/etc008.jpg']
    const NAMUL_INFORMATION = " 모둠나물 300g 각각의 나물들이 선사하는 산뜻함 소비자가 : 9,800원 판매가 : 9,800원 상품 간략설명 : 각각의 나물들이 선사하는 산뜻함 장바구니 담기 들깨깨순조림 200g 향긋한 깻잎순과 고소한 들깨 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 향긋한 깻잎순과 고소한 들깨 장바구니 담기 콩나물제사나물 200g 아삭한 집밥의 기본반찬 소비자가 : 3,500원 판매가 : 3,500원 상품 간략설명 : 아삭한 집밥의 기본반찬 장바구니 담기 고추된장무침 200g 오이같은 아삭함! 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 오이같은 아삭함! 장바구니 담기 고사리나물볶음 200g 명절과 생일상에 빠지지않는 반찬 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 명절과 생일상에 빠지지않는 반찬 장바구니 담기 무생채 300g 식욕을 돋아주는 새콤달콤한 무생채 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 식욕을 돋아주는 새콤달콤한 무생채 장바구니 담기 무제사나물 200g 건강한 나물반찬 소비자가 : 3,500원 판매가 : 3,500원 상품 간략설명 : 건강한 나물반찬 장바구니 담기 숙주나물 200g 깔끔하고 정갈한 나물반찬 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 깔끔하고 정갈한 나물반찬 장바구니 담기 미역줄기볶음 200g 식이섬유가 풍부한! 소비자가 : 4,800원 판매가 : 4,800원 상품 간략설명 : 식이섬유가 풍부한! 장바구니 담기 건취나물볶음 150g 힘이 나는 건강반찬! 소비자가 : 4,800원 판매가 : 4,800원 상품 간략설명 : 힘이 나는 건강반찬! 장바구니 담기 깨순조림 150g 잔멸치를 넣어 만든 향긋한 반찬 소비자가 : 4,700원 판매가 : 4,700원 상품 간략설명 : 잔멸치를 넣어 만든 향긋한 반찬 장바구니 담기 품절 곤드레나물볶음 150g 구수한 나물반찬 소비자가 : 4,700원 판매가 : 4,700원 상품 간략설명 : 구수한 나물반찬 품절 도라지나물볶음 120g 쌉쌀하고 담백하게 볶아낸 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 쌉쌀하고 담백하게 볶아낸 품절 시금치나물 100g 영양이 풍부한 건강반찬 소비자가 : 7,000원 판매가 : 7,000원 상품 간략설명 : 영양이 풍부한 건강반찬 품절 부지깽이나물볶음 100g 향도 좋고, 맛도 좋은 부지갱이나물 소비자가 : 4,600원 판매가 : 4,600원 상품 간략설명 : 향도 좋고, 맛도 좋은 부지갱이나물 품절 도라지초무침 200g 새콤달콤한 나물반찬 소비자가 : 6,000원 판매가 : 7,500원 상품 간략설명 : 새콤달콤한 나물반찬 "
    const NAMUL = ['모둠나물 300g', '건취나물볶음 150g', '부지깽이나물볶음 100g', '숙주나물 200g', '무제사나물 200g', '고사리나물볶음 200g', '콩나물제사나물 200g', '도라지나물볶음 120g', '고추된장무침 200g', '곤드레나물볶음 150g', '깨순조림 150g', '도라지초무침 200g', '들깨깨순조림 200g', '무생채 300g', '미역줄기볶음 200g', '시금치나물 100g',];
    const NAMUL_IMAGE = ['/resources/img/rows_section/namul/namul001.jpg', '/resources/img/rows_section/namul/namul002.jpg', '/resources/img/rows_section/namul/namul003.jpg', '/resources/img/rows_section/namul/namul004.jpg', '/resources/img/rows_section/namul/namul005.jpg', '/resources/img/rows_section/namul/namul006.jpg', '/resources/img/rows_section/namul/namul007.jpg', '/resources/img/rows_section/namul/namul008.jpg', '/resources/img/rows_section/namul/namul009.jpg', '/resources/img/rows_section/namul/namul010.jpg', '/resources/img/rows_section/namul/namul011.jpg', '/resources/img/rows_section/namul/namul012.jpg', '/resources/img/rows_section/namul/namul013.jpg', '/resources/img/rows_section/namul/namul014.jpg', '/resources/img/rows_section/namul/namul015.jpg', '/resources/img/rows_section/namul/namul016.jpg']
    const JANGACHI_INFORMATION = "두부강된장 150g 구수함이 일품인 소비자가 : 5,200원 판매가 : 5,200원 상품 간략설명 : 구수함이 일품인 장바구니 담기 젓갈쌈장소스 150g 감칠맛이 좋은 액젓베이스의 쌈장소스 소비자가 : 4,900원 판매가 : 4,900원 상품 간략설명 : 감칠맛이 좋은 액젓베이스의 쌈장소스 장바구니 담기 우삼겹강된장소스 400g 든든하게 한끼 식사 소비자가 : 8,900원 판매가 : 8,900원 상품 간략설명 : 든든하게 한끼 식사 장바구니 담기 오이나물초무침 150g 아삭하고 산뜻함이 느껴지는 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 아삭하고 산뜻함이 느껴지는 장바구니 담기 깻잎장아찌 100g 새콤달콤한 양념과 향긋한 깻잎향의 조화 소비자가 : 4,300원 판매가 : 4,300원 상품 간략설명 : 새콤달콤한 양념과 향긋한 깻잎향의 조화 장바구니 담기 낙지젓갈 150g 젓갈계의 황태자! 소비자가 : 6,200원 판매가 : 6,200원 상품 간략설명 : 젓갈계의 황태자! 장바구니 담기 청양고추 장아찌 100g 맛있는 매콤함 소비자가 : 4,500원 판매가 : 4,500원 상품 간략설명 : 맛있는 매콤함 장바구니 담기 창란젓갈 150g 입맛을 사로잡는 밥도둑! 소비자가 : 5,000원 판매가 : 5,000원 상품 간략설명 : 입맛을 사로잡는 밥도둑! 장바구니 담기 영양비빔젓갈 200g 팔방미인 젓갈반찬 소비자가 : 5,500원 판매가 : 5,500원 상품 간략설명 : 팔방미인 젓갈반찬 장바구니 담기 아삭이고추 장아찌 100g 새콤달콤한 양념과 아삭한 고추의 기분좋은 조화 소비자가 : 4,300원 판매가 : 4,300원 상품 간략설명 : 새콤달콤한 양념과 아삭한 고추의 기분좋은 조화 장바구니 담기 마늘쫑장아찌 100g 국내산 마늘쫑으로 직접 담은 소비자가 : 4,000원 판매가 : 4,000원 상품 간략설명 : 국내산 마늘쫑으로 직접 담은 장바구니 담기 명란젓갈 200g 명란이라 더 고급스러운! 소비자가 : 13,000원 판매가 : 13,000원 상품 간략설명 : 명란이라 더 고급스러운! 장바구니 담기 품절 깐마늘장아찌 150g 두고두고 먹을 수 있는 건강반찬 소비자가 : 3,900원 판매가 : 3,900원 상품 간략설명 : 두고두고 먹을 수 있는 건강반찬 "
    const JANGACHI = ['마늘쫑장아찌 100g', '아삭이고추 장아찌 100g', '영양비빔젓갈 200g', '깐마늘장아찌 150g', '창란젓갈 150g', '청양고추 장아찌 100g', '낙지젓갈 150g', '깻잎장아찌 100g', '오이나물초무침 150g', '명란젓갈 200g', '두부강된장 150g', '젓갈쌈장소스 150g', '우삼겹강된장소스 400g'];
    const JANGACHI_IMAGE = ['/resources/img/rows_section/jangachi/jang001.jpg', '/resources/img/rows_section/jangachi/jang002.jpg', '/resources/img/rows_section/jangachi/jang003.jpg', '/resources/img/rows_section/jangachi/jang004.jpg', '/resources/img/rows_section/jangachi/jang005.jpg', '/resources/img/rows_section/jangachi/jang006.jpg', '/resources/img/rows_section/jangachi/jang007.jpg', '/resources/img/rows_section/jangachi/jang008.jpg', '/resources/img/rows_section/jangachi/jang009.jpg', '/resources/img/rows_section/jangachi/jang010.jpg', '/resources/img/rows_section/jangachi/jang011.jpg', '/resources/img/rows_section/jangachi/jang012.jpg', '/resources/img/rows_section/jangachi/jang013.jpg']
    const BULK_SALE_INFORMATION = "고들빼기김치 1kg 고들빼기로 만든 별미김치 소비자가 : 33,300원 판매가 : 31,630원 상품 간략설명 : 고들빼기로 만든 별미김치 매콤한진미채볶음 300g 밑반찬계의 어머니 소비자가 : 18,000원 판매가 : 17,100원 상품 간략설명 : 밑반찬계의 어머니 장바구니 담기 무말랭이김치 300g 무 손질부터 직접한 무말랭이 소비자가 : 12,000원 판매가 : 11,400원 상품 간략설명 : 무 손질부터 직접한 무말랭이 장바구니 담기 무생채 600g 식욕을 돋아주는 새콤달콤한 무생채 소비자가 : 8,000원 판매가 : 7,600원 상품 간략설명 : 식욕을 돋아주는 새콤달콤한 무생채 장바구니 담기 파김치 700g 깊은 그늘처럼 우묵한 맛 소비자가 : 17,800원 판매가 : 16,910원 상품 간략설명 : 깊은 그늘처럼 우묵한 맛 장바구니 담기 순한진미채볶음 300g 진가네 최고의 베스트셀러 소비자가 : 16,800원 판매가 : 15,960원 상품 간략설명 : 진가네 최고의 베스트셀러 장바구니 담기 청양고추멸치볶음 300g 입 맛 살려주는 매콤함 소비자가 : 17,700원 판매가 : 16,810원 상품 간략설명 : 입 맛 살려주는 매콤함 장바구니 담기 검정콩조림 400g 국내산 검정콩을 직접 삶아 만든 검정콩조림 소비자가 : 16,000원 판매가 : 15,200원 상품 간략설명 : 국내산 검정콩을 직접 삶아 만든 검정콩조림 장바구니 담기 멸치양념볶음 300g 바쁠 땐 이거 하나로도 한 끼 해결! 소비자가 : 14,000원 판매가 : 13,300원 상품 간략설명 : 바쁠 땐 이거 하나로도 한 끼 해결! 장바구니 담기 지리멸치볶음 300g 아이반찬으로 적극추천 소비자가 : 18,000원 판매가 : 17,100원 상품 간략설명 : 아이반찬으로 적극추천 장바구니 담기 새우볶음 300g 달콤고소 눅눅하지 않아요! 소비자가 : 17,600원 판매가 : 16,720원 상품 간략설명 : 달콤고소 눅눅하지 않아요! 장바구니 담기 땅콩조림 450g 인기만점 아이반찬! 소비자가 : 15,750원 판매가 : 14,960원 상품 간략설명 : 인기만점 아이반찬! 장바구니 담기 수제카레 500g 한 끼 해결하기 좋은 소비자가 : 8,800원 판매가 : 8,360원 상품 간략설명 : 한 끼 해결하기 좋은 "
    const BULK_SALE = ['고들빼기김치 1kg', '매콤한진미채볶음 300g', '무말랭이김치 300g', '무생채 600g', '파김치 700g', '순한진미채볶음 300g', '청양고추멸치볶음 300g', '검정콩조림 400g', '멸치양념볶음 300g', '지리멸치볶음 300g', '새우볶음 300g', '땅콩조림 450g', '수제카레 500g']
    const BULK_SALE_IMAGE = ['/resources/img/rows_section/bulk/bulk001.jpg', '/resources/img/rows_section/bulk/bulk002.jpg', '/resources/img/rows_section/bulk/bulk003.jpg', '/resources/img/rows_section/bulk/bulk004.jpg', '/resources/img/rows_section/bulk/bulk005.jpg', '/resources/img/rows_section/bulk/bulk006.jpg', '/resources/img/rows_section/bulk/bulk007.jpg', '/resources/img/rows_section/bulk/bulk008.jpg', '/resources/img/rows_section/bulk/bulk009.jpg', '/resources/img/rows_section/bulk/bulk010.jpg', '/resources/img/rows_section/bulk/bulk011.jpg', '/resources/img/rows_section/bulk/bulk012.jpg', '/resources/img/rows_section/bulk/bulk013.jpg']
    const WHOLE_SALE_INFORMATION = "[도매전용] 쥐포양념볶음 *g 매콤하고 쫄깃한 별미 밑반찬 소비자가 : 별도문의 판매가 : 별도문의 상품 간략설명 : 매콤하고 쫄깃한 별미 밑반찬 [도매전용] 쥐포간장볶음 *g 달콤하고 쫄깃한 별미 밑반찬 소비자가 : 별도문의 판매가 : 별도문의 상품 간략설명 : 달콤하고 쫄깃한 별미 밑반찬 [도매전용] 순한진미채볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 매콤한진미채볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 깐멸치볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 멸치간장볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 지리멸치볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 새우볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 오징어채양념볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 [도매전용] 오징어채간장볶음 *g 2kg / 5kg / 10kg 소비자가 : 별도문의 판매가 : 별도문의 장바구니 담기 "
    const WHOLE_SALE = ['[도매전용] 쥐포양념볶음 *g', '[도매전용] 쥐포간장볶음 *g', '[도매전용] 순한진미채볶음 *g', '[도매전용] 매콤한진미채볶음 *g', '[도매전용] 깐멸치볶음 *g', '[도매전용] 멸치간장볶음 *g', '[도매전용] 지리멸치볶음 *g', '[도매전용] 새우볶음 *g', '[도매전용] 오징어채양념볶음 *g', '[도매전용] 오징어채간장볶음 *g']
    const WHOLE_SALE_IMAGE = ['/resources/img/rows_section/whole/whole001.jpg', '/resources/img/rows_section/whole/whole002.jpg', '/resources/img/rows_section/whole/whole003.jpg', '/resources/img/rows_section/whole/whole004.jpg', '/resources/img/rows_section/whole/whole005.jpg', '/resources/img/rows_section/whole/whole006.jpg', '/resources/img/rows_section/whole/whole007.jpg', '/resources/img/rows_section/whole/whole008.jpg', '/resources/img/rows_section/whole/whole009.jpg', '/resources/img/rows_section/whole/whole010.jpg'];

    let InformationExtractor = {
        index: 0,
        productData: [HARU_SET_INFORMATION, KIMCHI_INFOMATION, MITBANCHAN_INFORMATION, SOUP_INFORMATION, MAINBANCHAN_INFORMATION, JEON_INFORMATION, NAMUL_INFORMATION, JANGACHI_INFORMATION, BULK_SALE_INFORMATION, WHOLE_SALE_INFORMATION],
        productList: [HARU_SET, KIMCHI, MITBANCHAN, SOUP, MAINBANCHAN, JEON, NAMUL, JANGACHI, BULK_SALE, WHOLE_SALE],
        productImageList: [HARU_SET_IMAGE, KIMCHI_IMAGE, MITBANCHAN_IMAGE, SOUP_IMAGE, MAINBANCHAN_IMAGE, JEON_IMAGE, NAMUL_IMAGE, JANGACHI_IMAGE, BULK_SALE_IMAGE, WHOLE_SALE_IMAGE],


        informationStartIndex: function (productName) {
            return this.productData[this.index].indexOf(productName);
        },

        productNameWithWeight: function (productNameStartIndex, matchWord) {
            return this.productData[this.index].slice(productNameStartIndex, this.productData[this.index].indexOf(matchWord, productNameStartIndex) + 1).trim();
        },

        setProduct: function (productNameStartIndex, matchWord) {
            return this.productData[this.index].slice(productNameStartIndex, this.productData[this.index].indexOf(matchWord, productNameStartIndex) + 2).trim();
        },

        productIntro: function (lengthOfPreTarget, startMatchWord, startIndex, endMatchWord) {
            return this.productData[this.index].slice(this.productData[this.index].indexOf(startMatchWord, startIndex + lengthOfPreTarget) + 1,
                this.productData[this.index].indexOf(endMatchWord, startIndex)).trim();
        },

        productInformationPush: function (productNameWithWeight, productIntro, productPrice, productImage) {
            let productInformation = [];
            productInformation.push(productNameWithWeight);
            productInformation.push(productIntro);
            productInformation.push(productPrice);
            productInformation.push(productImage);
            return productInformation;
        },

        dataMatchValidator: function () {
            for (let i = 0; i < this.productList[this.index].length; i++) {
                if (this.productData[this.index].includes(this.productList[this.index][i]) == false) {
                    let n = i + 1;
                    alert('꼴뚜기님. 제품정보에 없는 productList가 존재합니다.  ' + n + '번째 녀석을 확인하세요')
                };
            }
        },

        isSetProduct: function (index, startIndex) {
            if (index === 0) {
                return this.setProduct(startIndex, "t");
            }
            return this.productNameWithWeight(startIndex, 'g')
        },

        createProdutsSet: function (index) {
            this.index = index;
            this.dataMatchValidator();
            let productInformation = [];
            for (let i = 0; i < this.productList[this.index].length; i++) {
                let startIndex = this.informationStartIndex(this.productList[this.index][i]);
                let name = this.isSetProduct(this.index, startIndex);
                let intro = this.productIntro(name.length, '', startIndex, '소비자가');
                let price = this.productIntro(name.length, ':', startIndex, '판매가');
                let image = this.productImageList[this.index][i];
                productInformation.push(this.productInformationPush(name, intro, price, image));
            }
            return productInformation;
        }
    }

    /* 태그 생성기
    v0.01: 240106 반복 태그 생성을 위한 기능
    */
    function cloneTags(tagBlock, cloneCount) {

        let cloneTags = "";
        for (let i = 0; i < cloneCount; i++) {
            cloneTags += tagBlock;
        }

        return cloneTags;
    }

    function printByClass(className, index, string) {

        document.getElementsByClassName(className)[index].innerHTML = string;

    }

    function printCloneBlock(productInformation, className, index, key, string, munuCount) {
        printByClass(className, index, string);
        printProuctInformation(productInformation, key, munuCount);
    }

    function printByClass(className, index, string) {
        document.getElementsByClassName(className)[index].innerHTML = string;
    }

    function createImgWithId(tagName, url, alt, className) {

        return '<' + tagName + ' src="' + url + '" alt="' + alt + '" class="' + className + '"></' + tagName + '>';
    }

    function createTagWithClass(tagName, className) {
        return '<' + tagName + ' class="' + className + '"></' + tagName + '>';
    }

    function createTagWithClassAndId(tagName, className, id) {
        return '<' + tagName + ' class="' + className + '" id="' + id + '"></' + tagName + '>';
    }

    function printProuctInformation(productInformation, key, menuCount) {
        let count = key + menuCount
        let i = 0;
        for (key; key < count; key++) {
            printByClass('productInfo', i, createImgWithId('img', productInformation[key][3], productInformation[key][0], 'productImage') + createTagWithClass('div', "item"));
            printByClass("item", i, createTagWithClass('p', "productName") + createTagWithClass('p', "productIntro") + createTagWithClass('p', "productPrice"));
            printByClass("productName", i, productInformation[key][0]);
            printByClass("productIntro", i, productInformation[key][1]);
            printByClass("productPrice", i, productInformation[key][2]);
            i++;
        }
    }


    /* 출력 메뉴별(3개, 4개)  시그니처 메뉴 뿌리기
    v0.01: 240118 ~ 240122 검색기능을 활용하여 메뉴 3가지씩 출력
    */
    /* 3가지 메뉴 */

    function toggleButton() {
        return createTagWithClassAndId("button", "leftButton", "btn001") + createTagWithClassAndId("button", "rightButton", "btn002");
    }

    function printSignSectionManager(productCategory, products, printTarget) {

        let signatureProducts = createCategoryManager(productCategory, products)


        printSearchCloneBlock(signatureProducts, printTarget, 0, createTagWithClass("h2", "subPagesTitle") + toggleButton() + cloneTags(createTagWithClass('div', 'productInfo'), signatureProducts[0]));
        document.getElementsByClassName("subPagesTitle")[0].innerHTML = subTitle(11);
    }


    let toggleKey = 0;
    function buttonEvent1() {

        if (toggleKey === 0) {
            printSignSectionManager(InformationExtractor.productList, ["동그랑땡 8개/300g", "새우볶음 75g", "오이소박이 500g"], "middleSection")
            toggleKey = 1;
            return toggleKey
        } else {
            printSignSectionManager(InformationExtractor.productList, ["순한진미채볶음 75g", "진가네 겉절이김치 500g", "소고기장조림 400g"], "middleSection")
            toggleKey = 0;
            return toggleKey
        }
    }

    /* 4가지 메뉴
    v0.01: 240122 3가지 메뉴와 별도로 작성 로직이 너무 복잡해져서 표준화하여 반복 작성
    */
    // 토글 버튼 이벤트

    this.onclick = function (e) {
        if (e.target.id === "btn001" || e.target.id === "btn002") {
            return buttonEvent1();
        }
        if (e.target.id === "btn003" || e.target.id === "btn004") {
            return buttonEvent2();
        }
        if (e.target.id === "btn005" || e.target.id === "btn006") {
            return buttonEvent3();
        }
        if (e.target.id === "btn007" || e.target.id === "btn008") {
            return buttonEvent4();
        }
        if (e.target.id === "btn009" || e.target.id === "btn010") {
            return buttonEvent5();
        }
        if (e.target.id === "btn011" || e.target.id === "btn012") {
            return buttonEvent6();
        }
        if (e.target.id === "btn013" || e.target.id === "btn014") {
            return buttonEvent7();
        }
        if (e.target.id === "btn015" || e.target.id === "btn016") {
            return buttonEvent8();
        }
    }
    // 메인 페이지 rowsSection01

    function toggleButton2() {
        return createTagWithClassAndId("button", "leftButton", "btn003") + createTagWithClassAndId("button", "rightButton", "btn004");
    }

    let toggleKey2 = 0;

    function buttonEvent2() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(1);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey2 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }

            printRowsSection(signMenu1, "rowsSection", 0, createTagWithClass("h2", "subPagesTitle") + toggleButton2() + cloneTags(createTagWithClass('div', 'rowsInformation'), FOUR_MENU_PRINT));
            console.log("ff")
            toggleKey2 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection(signMenu2, "rowsSection", 0, createTagWithClass("h2", "subPagesTitle") + toggleButton2() + cloneTags(createTagWithClass('div', 'rowsInformation'), FOUR_MENU_PRINT));
            toggleKey2 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[1].innerHTML = subTitle(1);
    }

    function printRowsSectionInformation(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage') + createTagWithClassAndId('div', "rowsItem",))
            printByClass("rowsItem", i, createTagWithClass('p', "rowsProductName") + createTagWithClass('p', "rowsProductIntro") + createTagWithClass('p', "rowsProductPrice"));
            printByClass("rowsProductName", i, productInformation[i][0]);
            printByClass("rowsProductIntro", i, productInformation[i][1]);
            printByClass("rowsProductPrice", i, productInformation[i][2]);
        }
    }

    function printRowsSection(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation(productInformation);
    }

    // 메인 페이지 rowsSection02

    function toggleButton3() {
        return createTagWithClassAndId("button", "leftButton", "btn005") + createTagWithClassAndId("button", "rightButton", "btn006");
    }

    let toggleKey3 = 0;
    function buttonEvent3() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(2);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey3 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection2(signMenu1, "rowsSection", 1, createTagWithClass("h2", "subPagesTitle") + toggleButton3() + cloneTags(createTagWithClass('div', 'rowsInformation2'), FOUR_MENU_PRINT));
            toggleKey3 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection2(signMenu2, "rowsSection", 1, createTagWithClass("h2", "subPagesTitle") + toggleButton3() + cloneTags(createTagWithClass('div', 'rowsInformation2'), FOUR_MENU_PRINT));
            toggleKey3 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[2].innerHTML = subTitle(2);
    }

    function printRowsSectionInformation2(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation2', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage2') + createTagWithClassAndId('div', "rowsItem2",))
            printByClass("rowsItem2", i, createTagWithClass('p', "rowsProductName2") + createTagWithClass('p', "rowsProductIntro2") + createTagWithClass('p', "rowsProductPrice2"));
            printByClass("rowsProductName2", i, productInformation[i][0]);
            printByClass("rowsProductIntro2", i, productInformation[i][1]);
            printByClass("rowsProductPrice2", i, productInformation[i][2]);
        }
    }

    function printRowsSection2(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation2(productInformation);
    }

    // 메인 페이지 rowsSection03

    function toggleButton4() {
        return createTagWithClassAndId("button", "leftButton", "btn007") + createTagWithClassAndId("button", "rightButton", "btn008");
    }

    let toggleKey4 = 0;
    function buttonEvent4() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(3);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey4 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection3(signMenu1, "rowsSection", 2, createTagWithClass("h2", "subPagesTitle") + toggleButton4() + cloneTags(createTagWithClass('div', 'rowsInformation3'), FOUR_MENU_PRINT));
            toggleKey4 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection3(signMenu2, "rowsSection", 2, createTagWithClass("h2", "subPagesTitle") + toggleButton4() + cloneTags(createTagWithClass('div', 'rowsInformation3'), FOUR_MENU_PRINT));
            toggleKey4 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[3].innerHTML = subTitle(3);
    }

    function printRowsSectionInformation3(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation3', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage3') + createTagWithClassAndId('div', "rowsItem3",))
            printByClass("rowsItem3", i, createTagWithClass('p', "rowsProductName3") + createTagWithClass('p', "rowsProductIntro3") + createTagWithClass('p', "rowsProductPrice3"));
            printByClass("rowsProductName3", i, productInformation[i][0]);
            printByClass("rowsProductIntro3", i, productInformation[i][1]);
            printByClass("rowsProductPrice3", i, productInformation[i][2]);
        }
    }

    function printRowsSection3(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation3(productInformation);
    }

    // 메인 페이지 rowsSection04

    function toggleButton5() {
        return createTagWithClassAndId("button", "leftButton", "btn009") + createTagWithClassAndId("button", "rightButton", "btn010");
    }

    let toggleKey5 = 0;
    function buttonEvent5() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(4);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey5 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection4(signMenu1, "rowsSection", 3, createTagWithClass("h2", "subPagesTitle") + toggleButton5() + cloneTags(createTagWithClass('div', 'rowsInformation4'), FOUR_MENU_PRINT));
            toggleKey5 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection4(signMenu2, "rowsSection", 3, createTagWithClass("h2", "subPagesTitle") + toggleButton5() + cloneTags(createTagWithClass('div', 'rowsInformation4'), FOUR_MENU_PRINT));
            toggleKey5 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[4].innerHTML = subTitle(4);
    }

    function printRowsSectionInformation4(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation4', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage4') + createTagWithClassAndId('div', "rowsItem4",))
            printByClass("rowsItem4", i, createTagWithClass('p', "rowsProductName4") + createTagWithClass('p', "rowsProductIntro4") + createTagWithClass('p', "rowsProductPrice4"));
            printByClass("rowsProductName4", i, productInformation[i][0]);
            printByClass("rowsProductIntro4", i, productInformation[i][1]);
            printByClass("rowsProductPrice4", i, productInformation[i][2]);
        }
    }

    function printRowsSection4(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation4(productInformation);
    }

    // 메인 페이지 rowsSection05

    function toggleButton6() {
        return createTagWithClassAndId("button", "leftButton", "btn011") + createTagWithClassAndId("button", "rightButton", "btn012");
    }

    let toggleKey6 = 0;
    function buttonEvent6() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(5);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey6 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection5(signMenu1, "rowsSection", 4, createTagWithClass("h2", "subPagesTitle") + toggleButton6() + cloneTags(createTagWithClass('div', 'rowsInformation5'), FOUR_MENU_PRINT));
            toggleKey6 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection5(signMenu2, "rowsSection", 4, createTagWithClass("h2", "subPagesTitle") + toggleButton6() + cloneTags(createTagWithClass('div', 'rowsInformation5'), FOUR_MENU_PRINT));
            toggleKey6 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[5].innerHTML = subTitle(5);
    }

    function printRowsSectionInformation5(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation5', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage5') + createTagWithClassAndId('div', "rowsItem5",))
            printByClass("rowsItem5", i, createTagWithClass('p', "rowsProductName5") + createTagWithClass('p', "rowsProductIntro5") + createTagWithClass('p', "rowsProductPrice5"));
            printByClass("rowsProductName5", i, productInformation[i][0]);
            printByClass("rowsProductIntro5", i, productInformation[i][1]);
            printByClass("rowsProductPrice5", i, productInformation[i][2]);
        }
    }

    function printRowsSection5(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation5(productInformation);
    }

    // 메인 페이지 rowsSection06

    function toggleButton7() {
        return createTagWithClassAndId("button", "leftButton", "btn013") + createTagWithClassAndId("button", "rightButton", "btn014");
    }

    let toggleKey7 = 0;
    function buttonEvent7() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(6);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey7 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection6(signMenu1, "rowsSection", 5, createTagWithClass("h2", "subPagesTitle") + toggleButton7() + cloneTags(createTagWithClass('div', 'rowsInformation6'), FOUR_MENU_PRINT));
            toggleKey7 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection6(signMenu2, "rowsSection", 5, createTagWithClass("h2", "subPagesTitle") + toggleButton7() + cloneTags(createTagWithClass('div', 'rowsInformation6'), FOUR_MENU_PRINT));
            toggleKey7 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[6].innerHTML = subTitle(6);
    }

    function printRowsSectionInformation6(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation6', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage6') + createTagWithClassAndId('div', "rowsItem6",))
            printByClass("rowsItem6", i, createTagWithClass('p', "rowsProductName6") + createTagWithClass('p', "rowsProductIntro6") + createTagWithClass('p', "rowsProductPrice6"));
            printByClass("rowsProductName6", i, productInformation[i][0]);
            printByClass("rowsProductIntro6", i, productInformation[i][1]);
            printByClass("rowsProductPrice6", i, productInformation[i][2]);
        }
    }

    function printRowsSection6(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation6(productInformation);
    }

    // 메인 페이지 rowsSection07

    function toggleButton8() {
        return createTagWithClassAndId("button", "leftButton", "btn015") + createTagWithClassAndId("button", "rightButton", "btn016");
    }

    let toggleKey8 = 0;
    function buttonEvent8() {
        const FOUR_MENU_PRINT = 4;
        let productInformation = InformationExtractor.createProdutsSet(7);
        let signMenu1 = [];
        let signMenu2 = [];

        if (toggleKey8 == 0) {
            for (let i = 0; i < 4; i++) {
                signMenu1.push(productInformation[i])
            }
            printRowsSection7(signMenu1, "rowsSection", 6, createTagWithClass("h2", "subPagesTitle") + toggleButton8() + cloneTags(createTagWithClass('div', 'rowsInformation7'), FOUR_MENU_PRINT));
            toggleKey8 = 1;
        } else {
            for (let i = 4; i < 8; i++) {
                signMenu2.push(productInformation[i])
            }
            printRowsSection7(signMenu2, "rowsSection", 6, createTagWithClass("h2", "subPagesTitle") + toggleButton8() + cloneTags(createTagWithClass('div', 'rowsInformation7'), FOUR_MENU_PRINT));
            toggleKey8 = 0;
        }
        document.getElementsByClassName("subPagesTitle")[7].innerHTML = subTitle(7);
    }

    function printRowsSectionInformation7(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('rowsInformation7', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'rowsProductImage7') + createTagWithClassAndId('div', "rowsItem7"))
            printByClass("rowsItem7", i, createTagWithClass('p', "rowsProductName7") + createTagWithClass('p', "rowsProductIntro7") + createTagWithClass('p', "rowsProductPrice7"));
            printByClass("rowsProductName7", i, productInformation[i][0]);
            printByClass("rowsProductIntro7", i, productInformation[i][1]);
            printByClass("rowsProductPrice7", i, productInformation[i][2]);
        }
    }

    function printRowsSection7(productInformation, className, index, string) {
        printByClass(className, index, string);
        printRowsSectionInformation7(productInformation);
    }

    /* sub pages */

    function printSubCloneBlock(productInformation, className, index, string) {
        printByClass(className, index, string);
        printSubProuctInformation(productInformation);
    }

    function printSubProuctInformation(productInformation) {
        for (let i = 0; i < productInformation.length; i++) {
            printByClass('productInfo', i, createImgWithId('img', productInformation[i][3], productInformation[i][0], 'productImage') + createTagWithClass('div', "item"))
            printByClass("item", i, createTagWithClass('p', "productName") + createTagWithClass('p', "productIntro") + createTagWithClass('p', "productPrice"));
            printByClass("productName", i, productInformation[i][0]);
            printByClass("productIntro", i, productInformation[i][1]);
            printByClass("productPrice", i, productInformation[i][2]);
        }
    }

    /* 서브 페이지 뿌리기
    v0.01: 240119 메뉴 클릭하면 서브 페이지 타이틀 메뉴 보이기
            첫 메인 네비 뿐아니라 메인페이지 중간 전체보기에서도 클릭시 서브페이지를 뿌리도록 설정 시 태그 ID중복 현상을 %기능을
            사용하여 다른 id값으로 동일 매개변수(카테고리 배열별 인덱스) 값을 받을 수 있게 설정
    v0.02: 240120 sub pages의 범위를 slider ~ footer전 까지로 변경하여 sub pages 생성시 display를 none으로 처리 했던 부분을 제거
    v0.03: 240120 v0.02업데이트 이후 브라우저에는 보이지 않지만 크롬 개발자 모드에서 페이드인아웃 슬라이드가 계속 동작하여 오류 발생 확인
            sliderStop()만 추가 하여 해결하려 했으나 동작 중인 페이드인이나 아웃의 셋인터벌 설정에서 sub pages로 덮어진 image의 opacity
            옵션값을 찾지 못해 계속 오류를 발생시킴, 슬라이더 영역이 남도록 범위 설정을 남겨두고 보이지않도록 none으로 설정 후
            repeat슬라이더 인터벌을 클리어 함
            !!페이드 인이나 아웃에 cosole.log()로 찍어 서브페이지를 뿌린 후에도 확인 클리어후에도 진행 동작을 하는 것을 확인
    */

    function createSubPage(number) {
        document.getElementById("slider").style.display = "none";
        sliderStop();
        let pageNumber = parseInt(number) % 10;
        let productInformation = InformationExtractor.createProdutsSet(pageNumber);
        printSubCloneBlock(productInformation, "subPages", 0, createTagWithClass("h2", "subPagesTitle") + cloneTags(createTagWithClass('div', 'productInfo'), productInformation.length));
        document.getElementsByClassName("subPagesTitle")[0].innerHTML = subTitle(pageNumber);
    }

    function subTitle(index) {
        let preWord = "<span>진가네 </span>";
        let subTitles = ["하루반찬세트", "명품김치", "밑반찬", "국·찌개", "메인반찬", "전", "나물반찬", "장아찌", "대용량 할인", "반찬도매", "빠른 검색 결과", "시그니처"]
        return preWord + subTitles[index];
    }

    function subView(idNumber) {
        createSubPage(idNumber);
    }

    /* 서브 페이지 뿌리기 2 : Search Unit을 활용한, 검색기능으로 서브페이지 만들어 뿌리기
    v0.01: 240120 시그니처 페이지는 기존에 있는 메뉴중 상징적인 메뉴를 모아놓은 페이지로 기존 데이터에서 필요 목록을 연속으로 검색하여 페이지를 구성하여 출력하는 기능
            !!2차배열 탐색으로 구성되어 있어 한개 목록 검색시에도 필히 배열로 입력해야 함/ 검색기능하고는 로직이 조금 다름!! (searchTarget, ["ex"])
    */
    function createCategoryManager(productCategory, products) {
        let signatureProducts = [0];
        for (let i = 0; i < products.length; i++) {
            let searchResult = new SearchUnit(productCategory, products[i]);
            let matchingProductIndex = searchResult.searchMatchingWord();
            for (let j = 0; j < matchingProductIndex.length; j++) {
                signatureProducts[j] = getMergeProduct(signatureProducts[j], matchingProductIndex[j], j);
            }
        }
        return signatureProducts;
    }

    function printCategoryManager(productCategory, products, printTarget) {

        let signatureProducts = createCategoryManager(productCategory, products)
        document.getElementById("slider").style.display = "none";
        sliderStop();

        printSearchCloneBlock(signatureProducts, printTarget, 0, createTagWithClass("h2", "subPagesTitle") + cloneTags(createTagWithClass('div', 'productInfo'), signatureProducts[0]));
        document.getElementsByClassName("subPagesTitle")[0].innerHTML = subTitle(11);
    }

    function getMergeProduct(originValue, mergeValue, index) {
        if (index === 0) {
            return originValue + mergeValue;
        }
        if (typeof (originValue) === "undefined") {
            return mergeValue
        }
        if (Array.isArray(originValue)) {
            return originValue.concat(mergeValue)
        }
        return console.log("[ERROR] 꼴뚜기님 createCategoryManager 코드를 확인하세요")
    }

    // 메인페이지 실행문
    sliderStart()
    startBoardInterval();
    printSignSectionManager(InformationExtractor.productList, ["순한진미채볶음 75g", "진가네 겉절이김치 500g", "소고기장조림 400g"], "middleSection")
    buttonEvent2();
    buttonEvent3();
    buttonEvent4();
    buttonEvent5();
    buttonEvent6();
    buttonEvent7();
    buttonEvent8();
</script>
</body>

</html>