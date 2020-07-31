<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/member/pay.js"></script>
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
                        <a href="/user/order.html">장바구니</a>
                    </li>
                    <li>
                        주문/결제
                    </li>
                </ol>
            </div>

            <h1 class="page-title">주문/결제</h1>
            
            <section>
                <h1 class="d-none">상품 정보</h1>
                <table class="order-item-table">
                    <thead>
                        <th class="expand-col">상품정보</th>
                        <th>판매자</th>
                        <th>배송기간/배송비</th>
                        <th>수량</th>
                        <th>주문금액</th>
                    </thead>
                    <tbody>
                   		<c:forEach var="p" items="${pl }">
	                        <tr>
	                            <td>
	                                <img src="/images/product1.jpg"/>
	                                <span>${p.itemName }</span>
	                            </td>
	                            <td>${p.sellerComName }(${p.sellerName })</td>
	                            <td>
	                            	<div class="delivery-date">
		                            	<span class="delivery-icon"></span>
		                                <span >${p.leadTime }일</span><br>
	                            	</div>
	                                <span><fmt:formatNumber pattern="#,###" value="${p.deliveryFee }"/>원</span>
	                            </td>
	                            <td>${p.qty }개</td>
	                            <td class="cart-table-bold"><fmt:formatNumber pattern="#,###" value="${p.price* p.qty}"/>원</td>
	                        </tr>
                   		</c:forEach>
                      
                        
                       
                    </tbody>
                </table>

            </section>
            <section class="delivery-info-container">
                <h1 class="d-none">배송 정보</h1>
                <section class="address-info-container">
                    <h1>배송지 정보</h1>

                    <span>배송지 선택</span>
                    <input type="radio" name="address" checked="checked" value="old"> <span>기존 배송지</span>
                    <input type="radio" name="address" value="new"> <span>신규 배송지</span>
                    <div class="old-delivery-info">
	                    <div class="address-info-wrapper">
	                        <span>${m.ordererName }</span>
	                        <span>${m.ordererAddress }</span>
	                        <input type="text" placeholder="택배요청사항을 입력합니다" maxlength="50" name="delivery-memo">
	                    </div>
                    </div>
                    <div class="new-delivery-info d-none">
	                    <div class="address-info-wrapper">
	                        <input placeholder="수신자 이름" class="des-name-input" maxlength="5"/>
	                        <input placeholder="주소"/>
	                        <input type="text" placeholder="택배요청사항을 입력합니다" maxlength="50" name="delivery-memo">
	                    </div>
                    </div>
                </section>
                <section class="orderer-info-container">
                    <h1>주문자 정보</h1>
                    <div class="orderer-info-wrapper">
                        <span>${m.ordererName }</span>
                        <span>${m.ordererMobile }</span>
                        <span>${m.ordererEmail }</span>
                    </div>
                    <span class="order-warn-text">
			                        주문자 정보로 결제관련 정보가 제공됩니다.<br>
			                        정확한 정보로 등록되어있는지 확인해주세요.
                    </span>
                </section>
            </section> 
            
            <section class="pay-info-container">
                <h1 class="d-none">결제 정보</h1>

                <section class="method-container">
                    <h1>결제 수단</h1>
                    <div>
                        <input type="radio" name="method">
                        <span>카드 결제</span>
                        <input type="radio" name="method">
                        <span>무통장 입금</span>
                    </div>
                </section>

                <section class="price-container">
                    <h1>결제 금액</h1>
                    <div class="price-statis">
                        <div><span class="statis-price"><fmt:formatNumber pattern="#,###" value="${tp+tf }" /></span> 원</div>
                        <div><span>총 상품금액</span><span><fmt:formatNumber pattern="#,###" value="${tp }" />원</span></div>
                        <div><span>배송비</span><span>(+) <fmt:formatNumber pattern="#,###" value="${tf }" />원</span></div>
                    </div>
                </section>

            </section>
            
            <section class="term-container">
                <h1 class="d-none">약관 동의</h1>
                <input class="d-none" type="checkbox" id="id-check"><label for="id-check"></label>
                <span>위 상품의 구매조건 확인 및 결제진행 동의</span>
            </section>

            <section class="pay-button-container">
                <h1 class="d-none">주문/결제 버튼</h1>
                <button class="pay-button">결제하기</button>
            </section>

        </section>
    </main>

    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>

</body>

</html>