<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>은풍한 팜 판매자 상품문의 페이지</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/seller.js"></script>
</head>
<body>
    <header class="admin-header">
        <h1>
            관리자페이지
            <span>판매자님 반갑습니다.</span>
        </h1>
        <ul>
            <li>
                <a href="/index.html">메인 홈</a>
            </li>
            <li>
                <a href="/admin/admin.html">관리자홈</a>
            </li>
            <li>로그아웃</li>
        </ul>
    </header>
    <div class="admin-body">
        <aside class="aside">
            <h1 class="d-none">관리자페이지 메뉴</h1>
            <ul class="admin-menu">
                <li>
                    <h2 class="admin-menu-title">
                        상품관리
                    </h2>
                    <ul class="admin-draw-menu">
                        <li><a href="/seller/reg.html">상품등록</a></li>
                        <li><a href="/seller/list.html">상품목록</a></li>
                        <li><a href="/seller/product/qna/list">상품문의</a></li>
                        <li><a href="/seller/product/review/list">상품후기</a></li>
                    </ul>
                </li>
                <li>
                    <h2 class="admin-menu-title">매매관리</h2>
                    <ul class="admin-draw-menu">
                        <li><a href="">판매량</a></li>
                        <li><a href="">주문현황</a></li>
                    </ul>
                </li>
            </ul>
        </aside>
        <main class="admin-main">
            <section>
                <h1 class="page-title">Q &amp; A</h1>

	        	<div>
	        		<form method="POST" action="list">
	        			<fieldset>
	        				<select name="fs">
	        					<c:forEach var="i" items="${iList }">
	        						<option value="${i.name }" selected="selected">${i.name }</option>
	        					</c:forEach>
	        				</select>
	        				<input type="submit" value="검색" />
	        			</fieldset>
	        		</form>
	        	</div>
                <span class="board-search">
                    <form method="GET" action="list">
                        <fieldset>
                            <select name="f">
                                <option value="iName">상품명</option>
                                <option value="title">제목</option>
                            </select>
                            <input type="search" name="q" placeholder="검색어를 입력하세요.">
                            <input type="submit" value="검색">
                        </fieldset>
                    </form>
                </span>

                <table class="board-table">
                    

                    <tbody>
                  		<c:choose>
                		<c:when test="${empty qList}">
                			<tr>
	                            <td>데이터가 없습니다</td>
                        	</tr>
                		</c:when>
                		
                		<c:otherwise>
                		<thead>
	                        <tr>
	                            <th class="num-col">번호</th>
	                            <th>등록상품명</th>
	                            <th>제목</th>
	                            <th class="reg-col">작성자</th>
	                            <th class="reg-col">작성일</th>
	                        </tr>
                   		</thead>
                    	<c:forEach var="l" items="${qList }" varStatus="status">
	                        <tr>
	                            <td>${status.count }</td>
	                            <td>${l.iName }</td>
	                            <td>
	                                <a href="detail.html">${l.title }</a>
	                            </td>
	                            <td>${l.mUid }(${l.mName })</td>
	                            <td>${l.regDate }</td>
	                        </tr>
                        </c:forEach>
                        </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>


                <div class="pager">	
                    <span class="btn btn-prev">이전</span>
                    <ul class="page-list">
                        <li><a href="?p=1&t=&q=" class="checked">1</a></li>
                        <li><a href="?p=2&t=&q=">2</a></li>
                        <li><a href="?p=3&t=&q=">3</a></li>
                        <li><a href="?p=4&t=&q=">4</a></li>
                        <li><a href="?p=5&t=&q=">5</a></li>
                    </ul>
                    <span class="btn btn-next">다음</span>
                </div>
            </section>
        </main>
    </div>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
</body>
</html>