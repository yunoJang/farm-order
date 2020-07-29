<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <title>은풍한 팜</title>
</head>

<body>

    <header class="header">
        <h1 class="d-none">은풍한 Farm</h1>
        <section>
            <h1 class="d-none">헤더</h1>
            <section class="top-header">
                <h1 class="d-none">상단헤더</h1>
                <div class="inner-header">
                    <nav class="util-menu">
                        <h1 class="d-none">유틸메뉴</h1>
                        <ul>
                            <li>사이트맵</li>
                            <li>즐겨찾기</li>
                        </ul>
                    </nav>
                    <nav class="member-menu">
                        <h1 class="d-none">멤버메뉴</h1>
                        <ul>
                            <li>
                                <a href="/member/login.html">로그인</a>
                            </li>
                            <li>
                                <a href="/member/signup.html">회원가입</a>
                            </li>
                        </ul>
                    </nav>
                    <nav class="order-menu">
                        <h1 class="d-none">상품메뉴</h1>
                        <ul>
                            <li>관심상품</li>
                            <li>장바구니</li>
                            <li>주문조회</li>
                        </ul>
                    </nav>
                </div>
            </section>
            <section class="bottom-header">
                <div class="inner-header">
                    <h1 class="logo">
                        <a href="/index.html">
                            <img src="/images/logo.png" alt="로고">
                        </a>
                    </h1>
                    <span class="search-form">
                        <form>
                            <fieldset>
                                <input type="search">
                                <input type="submit" value="검색">
                            </fieldset>
                        </form>
                    </span>
                </div>
            </section>
            <nav class="main-menu">
                <h1 class="d-none">메뉴</h1>
                <ul>
                    <li class="whole-menu">전체메뉴</li>
                    <li>
                        <a href="/product/list.html">상품</a>
                    </li>
                    <li>
                        <a href="/community/community.html">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/community/intro.html">은풍한 팜</a>
                    </li>
                </ul>
            </nav>
            <section class="draw-menu">
                <h1 class="d-none">전체메뉴</h1>
                <div class="inner-draw">
                    <div class="draw-list draw-main-menu">
                        <div>
                            <ul>
                                <li>곡물</li>
                                <li>쌀</li>
                                <li>잡곡</li>
                            </ul>
                            <ul>
                                <li>채소</li>
                                <li>배추</li>
                                <li>무</li>
                            </ul>
                            <ul>
                                <li>음료</li>
                                <li>차</li>
                                <li>즙</li>
                            </ul>
                        </div>
                        <div>
                            <ul>
                                <li>과일</li>
                                <li>포도</li>
                                <li>딸기</li>
                            </ul>
                            <ul>
                                <li>기타</li>
                                <li>아이스크림</li>
                            </ul>
                        </div>
                    </div>
                    <div class="draw-list draw-sub-menu">
                        <ul>
                            <li>은풍한 팜</li>
                            <li>
                                <a href="/community/intro.html">은풍한 팜 소개</a>
                            </li>
                            <li>
                                <a href="/community/notice.html">공지사항</a>
                            </li>
                            <li>
                                <a href="/community/apply.html">입점신청</a>
                            </li>
                            <li>
                                <a href="/community/qna.html">Q &amp; A</a>
                            </li>
                            <li>
                                <a href="/community/review.html">상품후기</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </section>
    </header>

    <main class="main">

        <section class="content-container">
            <div class="path">
                <ol>
                    <li>
                        <a href="/index.html"></a>
                    </li>
                    <li>
                        <a href="/user/order.html">주문조회</a>
                    </li>
                </ol>
            </div>

            <h1 class="page-title">주문조회</h1>

            <section class="order-section">
                <h1 class="d-none">주문목록</h1>

                <div class="order-cur-box">
                    
                    <dl>
                        <dt>1</dt>
                        <dd>배송중</dd>
                    </dl>
                    
                    <dl>
                        <dt>0</dt>
                        <dd>배송완료</dd>
                    </dl>
                    
                    <dl>
                        <dt>2</dt>
                        <dd>취소/환불/교환</dd>
                    </dl>          
                </div>

                <table class="order-table">
                    <caption class="d-none">장바구니 내역</caption>

                    <thead>
                        <tr>
                            <th class="num-col">
                                <span>
                                    <input type="checkbox" id="check_all" checked>
                                    <label class="d-none">전체 상품 선택</label>
                                </span>
                            </th>
                            <th>상품정보</th>
                            <th class="reg-col">상품금액(수량)</th>
                            <th class="reg-col">진행상태</th>
                            <th class="reg-col"></th>
                        </tr>
                    </thead>

                    <tbody>
                        <!-- 반복 부분 시작 foreach로 대체될 예정 -->
                        <tr>
                            <td>
                                <input type="checkbox" checked />
                                <label class="d-none">상품 선택</label>
                            </td>
                            <td class="cart-table-bold">
                                <img src="/images/product1.jpg" alt="상품 이미지">
                                <span>
                                    더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포
                                </span>
                            </td>

                            <td>9,800원(1개)</td>

                            <td>배송중</td>

                            <td>
                                <a href="" class="re-button">주문취소</a>
                            </td>
                        </tr>
                        <!-- 반복 부분 마지막 -->

                        <tr>
                            <td>
                                <input type="checkbox" checked />
                                <label class="d-none">상품 선택</label>
                            </td>
                            <td class="cart-table-bold">
                                <img src="/images/product1.jpg" alt="상품 이미지">
                                <span>
                                    더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포
                                </span>
                            </td>

                            <td>9,800원(1개)</td>

                            <td>운송장조회</td>

                            <td>
                                <a href="" class="re-button">주문취소</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="checkbox" checked />
                                <label class="d-none">상품 선택</label>
                            </td>
                            <td class="cart-table-bold">
                                <img src="/images/product1.jpg" alt="상품 이미지">
                                <span>
                                    더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포
                                </span>
                            </td>

                            <td>9,800원(1개)</td>

                            <td>배송완료</td>

                            <td>
                                <a href="" class="re-button">리뷰작성</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="checkbox" checked />
                                <label class="d-none">상품 선택</label>
                            </td>
                            <td class="cart-table-bold">
                                <img src="/images/product1.jpg" alt="상품 이미지">
                                <span>
                                    더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포
                                </span>
                            </td>

                            <td>9,800원(1개)</td>

                            <td>취소/환불</td>

                            <td>
                                <a href="" class="re-button d-none">주문취소</a>
                            </td>
                        </tr>

                    </tbody>

                </table>

                <div class="product-button-wrap">
                    <button type="button" class="product-button">선택상품 취소</button>
                    <button type="button" class="product-button">선택상품 변경</button>
                </div>
            </section>

            <div class="order-button-wrap">
                <button type="button">쇼핑 홈 가기</button>
                <button type="button">장바구니</button>
            </div>
        </section>
    </main>

    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>

</body>

</html>