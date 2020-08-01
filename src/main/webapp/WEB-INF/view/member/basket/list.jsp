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
    <title>은풍한 팜</title>
    <script src="../../js/member/basket.js"></script>
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
                        <a href="/user/cart.html">장바구니</a>
                    </li>
                </ol>
            </div>

            <h1 class="page-title">장바구니</h1>
            
			<c:if test="${bl.size() == 0 }">
				<div class="no-text">장바구니에 상품이 없습니다.</div>
			</c:if>
			<c:if test="${bl.size() >= 1 }">
	            <section class="cart-section">
	                <h1 class="d-none">장바구니 목록</h1>
	                <table class="cart-table">
	                    <caption class="d-none">장바구니 내역</caption>
	
	                    <thead>
	                        <tr>
	                            <th class="num-col">
	                                <span>
	                                    <input type="checkbox" id="check_all" class="all-check-button" checked>
	                                    <label class="d-none">전체 상품 선택</label>
	                                </span>
	                            </th>
	                            <th>상품정보</th>
	                            <th class="price-col">상품금액</th>
	                            <th class="price-col">수량</th>
	                            <th class="price-col">총 금액</th>
	                            <th class="price-col">배송비</th>
	                        </tr>
	                    </thead>
	
	                    <tbody>
	                    
	                    
	                    <!-- 반복시작 -->
	                        <c:forEach var="b" items="${bl}">
		                        <tr>
		                            <td>
		                                <input type="checkbox" checked value="${b.id}"/>
		                                <label class="d-none">상품 선택</label>
		                            </td>
		                            <td class="cart-table-bold">
		                                <img src="/images/product1.jpg" alt="상품 이미지">
		                                <span>
		                                	${b.itemName }
		                                </span>
		                            </td>
									<td>${b.price }원</td>
									
		                            <td>
		                            	<input type="number" min="1" max="99" value="${b.qty }" class="qty"/>
                   	                    <button type="button" class="update-button" value=${b.id }>변경</button>
		                            </td>
		
		                            <td class="cart-table-bold item-price">${b.price*b.qty }원</td>
		
		                            <td class="cart-table-bold fee-price">${b.deliveryFee }원</td>
		                        </tr>
	                        </c:forEach>
	                        <!-- 반복 부분 마지막 -->
	
	                    </tbody>
	
	                </table>
	
	                <div class="product-button-wrap">
	                    <button type="button" class="del-button">선택상품 삭제</button>
	                </div>
	            </section>
			</c:if>

            <section class="order-price">
                <h1 class="d-none">상품 총액</h1>
                <div class="price-list">
                    <dl>
                        <dt>총 상품금액</dt>
                        <dd><span class="item-total-price">${totalPrice}원</span></dd>
                    </dl>
                    <dl>
                        <dt>배송비</dt>
                        <dd><span class="fee-total-price">${totalDf }원</span></dd>
                    </dl>
                    
                </div>
                <div class="total-price">
                    	총 주문금액 <span>${totalPrice + totalDf }원</span>
                </div>
            </section>

            <div class="order-button-wrap">
                <button type="button">쇼핑 홈 가기</button>
                <button type="button" class="order">선택 주문</button>
            </div>
        </section>
    </main>

    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>

</body>

</html>