<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>은풍한 팜 관리자페이지</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/admin.js"></script>
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
                        <li><a href="/seller/qna.html">상품문의</a></li>
                        <li><a href="/seller/review.html">상품후기</a></li>
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

        <!--list 관련 css -> admin.css 에 있음-->

        <main class="admin-main">
            <section>
                <h1 class="d-none">상품 리스트</h1>
                <nav class="product-category-menu">
                    <h1 class="d-none">상품 카테고리 리스트</h1>
                    <ul>
                        <li>
                            전체상품 <span>100</span>
                        </li>
                        <li>
                            곡물 <span>50</span>
                        </li>
                        <li>
                            채소 <span>20</span>
                        </li>
                        <li>
                            음료 <span>10</span>
                        </li>
                        <li>
                            과일 <span>15</span>
                        </li>
                        <li>
                            기타 <span>5</span>
                        </li>
                    </ul>
                </nav>
                <section class="product-list">
                    <h1 class="page-title">전체상품</h1>
                    <span class="search-form">
                        <form>
                            <fieldset>
                                <legend class="d-none">상품관리 검색 필드</legend>
                                <label class="d-none">검색분류</label>
                                <select name="f">
                                    <option value="title">상품명</option>
                                    <option value="sellerName">판매자</option>
                                    <option value="sellerId">아이디</option>
                                </select>
                                <label class="d-none">검색어</label>
                                <input type="search" name="q" value="">
                                <input type="submit" value="검색">
                            </fieldset>
                        </form>
                    </span>

                    <table class="product-table">
                        <colgroup>
                            <col class="num-col">
                            <col class="text-col">
                            <col>
                            <col class="expand-col">
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="num-col">
                                    <span>
                                        <input type="checkbox" id="check_all" checked="">
                                        <label class="d-none">전체 상품 선택</label>
                                    </span>
                                </th>
                                <th colspan="3">상품정보</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox">
                                </td>
                                <td>
                                    <img src="/images/product1.jpg">
                                </td>
                                <td>
                                    <dl>
                                        <dt>상품명</dt>
                                        <dd>유기농 쌀</dd>
                                    </dl>
                                    <dl>
                                        <dt>판매가격</dt>
                                        <dl>350,000원</dl>
                                    </dl>
                                    <dl>
                                        <dt>품목명</dt>
                                        <dl>쌀</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                                <td>
                                    <dl>
                                        <dt>판매자</dt>
                                        <dd>은풍한 팜</dd>
                                    </dl>
                                    <dl>
                                        <dt>아이디</dt>
                                        <dl>admin</dl>
                                    </dl>
                                    <dl>
                                        <dt>판매량</dt>
                                        <dl>315</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox">
                                </td>
                                <td>
                                    <img src="/images/product1.jpg">
                                </td>
                                <td>
                                    <dl>
                                        <dt>상품명</dt>
                                        <dd>유기농 쌀</dd>
                                    </dl>
                                    <dl>
                                        <dt>판매가격</dt>
                                        <dl>350,000원</dl>
                                    </dl>
                                    <dl>
                                        <dt>품목명</dt>
                                        <dl>쌀</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                                <td>
                                    <dl>
                                        <dt>판매자</dt>
                                        <dd>은풍한 팜</dd>
                                    </dl>
                                    <dl>
                                        <dt>아이디</dt>
                                        <dl>admin</dl>
                                    </dl>
                                    <dl>
                                        <dt>판매량</dt>
                                        <dl>315</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox">
                                </td>
                                <td>
                                    <img src="/images/product1.jpg">
                                </td>
                                <td>
                                    <dl>
                                        <dt>상품명</dt>
                                        <dd>유기농 쌀</dd>
                                    </dl>
                                    <dl>
                                        <dt>판매가격</dt>
                                        <dl>350,000원</dl>
                                    </dl>
                                    <dl>
                                        <dt>품목명</dt>
                                        <dl>쌀</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                                <td>
                                    <dl>
                                        <dt>판매자</dt>
                                        <dd>은풍한 팜</dd>
                                    </dl>
                                    <dl>
                                        <dt>아이디</dt>
                                        <dl>admin</dl>
                                    </dl>
                                    <dl>
                                        <dt>판매량</dt>
                                        <dl>315</dl>
                                    </dl>
                                    <dl>
                                        <dt>등록일</dt>
                                        <dl>2020-07-02</dl>
                                    </dl>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="product-list-button">
                        <button>일괄배포</button>
                        <button>일괄삭제</button>
                    </div>

                    <div class="pager">	
                        <span class="btn btn-prev">이전</span>
                        <ul class="page-list">
                            <li><a href="" class="checked">1</a></li>
                            <li><a href="">2</a></li>
                        </ul>
                        <span class="btn btn-next">다음</span>
                    </div>

                </section>

            </section>
            
        </main>
    </div>
    <footer class="footer">
        
        <button class="up-button"> </button>
    </footer>
</body>
</html>