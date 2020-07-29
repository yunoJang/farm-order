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
                            <li>
                                <a href="/member/mypage.html">마이페이지</a>
                            </li>
                        </ul>
                    </nav>
                    <nav class="order-menu">
                        <h1 class="d-none">상품메뉴</h1>
                        <ul>
                            <li>관심상품</li>
                            <li>
                                <a href="/user/cart.html">장바구니</a>
                            </li>
                            <li>
                                <a href="/user/order.html">주문조회</a>
                            </li>
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
        <section>
            <h1 class="d-none">메인</h1>
            <section class="visual">
                <h1 class="d-none">메인이미지</h1>            
                <img src="images/main.jpg" alt="메인이미지">
            </section>

            <section class="content-container main-product">
                <h1 class="d-none">판매 상품</h1>
                <ul class="category-list">
                    <li class="clicked">곡물</li>
                    <li>채소</li>
                    <li>음료</li>
                    <li>기타</li>
                </ul>

                <ul class="product-list">
                        <li>
                            <p>
                                <img src="images/product1.jpg">
                            </p>
                            <p class="product-detail">
                                <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
                                <span class="product-price">19,800원</span>
                                <span>자연산 / 전남 해남 / 300g, 1200g</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <img src="images/product1.jpg">
                            </p>
                            <p class="product-detail">
                                <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
                                <span class="product-price">19,800원</span>
                                <span>자연산 / 전남 해남 / 300g, 1200g</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <img src="images/product1.jpg">
                            </p>
                            <p class="product-detail">
                                <span class="product-title">더채소 모심청 짜먹는 맥문동 배도라지청 스틱 15포</span>
                                <span class="product-price">19,800원</span>
                                <span>자연산 / 전남 해남 / 300g, 1200g</span>
                            </p>
                        </li>
                </ul>
            </section>

            <section class="content-container current">
                <h1 class="d-none">시세 정보</h1>
                <div>
                    <span>
                        <h2 class="section-title">도매 가격(중도매인 판매가격)</h2>
                        <span>상품,원</span>
                    </span>
                    <img src="images/current1.jpg">
                </div>
                <div>
                    <span>
                        <h2 class="section-title">소매 가격</h2>
                        <span>상품,원</span>
                    </span>
                    <img src="images/current2.jpg">
                </div>
            </section>
            <section class="content-container review">
                <h1 class="section-title">상품후기</h1>
                <ul>
                    <li>
                        <p><img src="images/product1.jpg"></p>
                        <p class="review-text">
                            <span class="review-product-title">상품명: 여주쌀/ 10kg</span>
                            <span class="review-title">만족해요! (김수경)</span>
                            <span class="review-grade">★ ★ ★ ★ ☆</span>
                            <button></button>
                        </p>
                    </li>
                    <li>
                        <p><img src="images/product1.jpg"></p>
                        <p class="review-text">
                            <span class="review-product-title">상품명: 여주쌀/ 10kg</span>
                            <span class="review-title">만족해요! (김수경)</span>
                            <span class="review-grade">★ ★ ★ ★ ☆</span>
                            <button></button>
                        </p>
                    </li>
                    <li>
                        <p><img src="images/product1.jpg"></p>
                        <p class="review-text">
                            <span class="review-product-title">상품명: 여주쌀/ 10kg</span>
                            <span class="review-title">만족해요! (김수경)</span>
                            <span class="review-grade">★ ★ ★ ★ ☆</span>
                            <button></button>
                        </p>
                    </li>
                    <li>
                        <p><img src="images/product1.jpg"></p>
                        <p class="review-text">
                            <span class="review-product-title">상품명: 여주쌀/ 10kg</span>
                            <span class="review-title">만족해요! (김수경)</span>
                            <span class="review-grade">★ ★ ★ ★ ☆</span>
                            <button></button>
                        </p>
                    </li>
                </ul>
            </section>
        </section>
    </main>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
    
</body>
</html>