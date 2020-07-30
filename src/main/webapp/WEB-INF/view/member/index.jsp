<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/member/index.js"></script>

    <title>은풍한팜</title>
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
                            <li>
                                <a href="/user/cart.html">장바구니</a>
                            </li>
                            <li><a href="/user/order.html">주문조회</a></li>
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
        <section class="content-container mypage-main-section">
            <h1 class="d-none">마이페이지</h1>
            <aside class="mypage-aside">
                <h1 class="d-none">aside</h1>
                <section class="profile-container">
                    <h1 class="d-none">프로필</h1>
                    <span class="profile-name">${m.name} 님</span><br>
                    <span class="profile-id">${m.uid}</span><br>
                    <button class="info-update-button" onClick="location.href='edit'">정보 변경</button>
                </section>
                <section class="menu-container">
                    <h1 class="d-none">메뉴</h1>
                    <section>
                        <h1 class="menu-h">관심</h1>
                        <ul>
                            <li><a href="#fav-item">관심 상품</a></li>
                            <li><a href="#lately">최근 본 상품</a></li>
                        </ul>
                    </section>
                    <section>
                        <h1 class="menu-h">주문 · 배송</h1>
                        <ul>
                            <li><a href="">주문/배송 조회</a></li>
                            <li><a href="">장바구니</a></li>
                        </ul>

                    </section>
                </section>
            </aside>
            <section class="mypage-body">
                <h1 class="d-none">myPage-body</h1>
                <section >
                    <h1 class="d-none">쇼핑메뉴</h1>
                    <div class="shopping-menu-container">
                        <div class="member-info-container">
                            <div class="member-grade-img">P</div><span class="member-info">개인 회원 <b>장윤호</b> 님</span>
                        </div>
                        <div class="shopping-menu">
                            <div>
                                <div>0</div>
                                <span>주문/배송</span>
                            </div>
                            <div>
                                <div>0</div>
                                <span>장바구니</span>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="att-container">
                    <h1 class="d-none">관심목록</h1>
                    <section>
                        <header>
                            <h1 id="fav-item" class="menu-h">관심상품</h1>
                            <a href="" class="all-view-font fav-item">전체보기</a>
                        </header>
                        <div class="att-list fav-item-list">
                        	<c:if test="${filist eq null}">
                            <div class="list-none-msg">관심 상품이 없습니다.</div>
                           </c:if>
                            <c:forEach var="n" items="${filist}" begin="0" end="3">	
                            	<a class="fav-item" href="/item/${n.itemId}">
                            		<div class="att-item">
                            			<img src="../images/${n.itemImgName }">
                            			<div class="att-item-des">[은팜독점] ${ n.itemName}</div>
                            		</div>
                            	</a>
                            </c:forEach>
                        </div>
                    </section>
                    <section>
                        <header>
                            <h1 id="lately" class="menu-h">최근 본 상품</h1>
                            <span class="all-view-font">전체보기</span>
                        </header>
                        <div class="att-list">
                            <div class="list-none-msg">최근 본 상품이 없습니다.</div>

                        </div>
                    </section>
                    <section>
                        <header>
                            <h1 class="menu-h">관심 Farm</h1>
                            <a href="" class="all-view-font fav-seller">전체보기</a>
                        </header>
                        <div class="att-list fav-seller-list">
                            <c:if test="${fslist eq null}">
                            <div class="list-none-msg">관심 상품이 없습니다.</div>
                           </c:if>
                           <!-- 나중에 판매자가 고객에게 보여줄 전용view를 만들어서 이동은 어떨까? -->
                            <c:forEach var="n" items="${fslist}" begin="0" end="3">	
                            	<a class="fav-seller" href="">
                            		<div class="att-item">
                            			<img src="../images/sellertitle/${n.titleImage }">
                            			<div class="att-item-des">${ n.comName}</div>
                            		</div>
                            	</a>
                            </c:forEach>
                        </div>
                    </section>
                </section>
            </section>
        </section>
    </main>
    

    <footer class="footer">
        <button class="up-button"> </button>
    </footer>
    
</body>
</html>