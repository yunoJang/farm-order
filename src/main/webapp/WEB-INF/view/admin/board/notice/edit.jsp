<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="admin-main">
	<section class="admin-sub-main">
		<h1 class="page-title">공지사항</h1>
		<section class="writer-container">
			<h1 class="d-none">글쓰기 디테일</h1>
			<div class="title">
         		<input type="text" name="title" value="${n.title}">
         	</div>
			<textarea class="content" name="content">${n.content}</textarea>          
			<div>
			    <input type="checkbox" name="pub"> 바로공개
			</div>
		</section>

		<div class="admin-button">
			<input type="submit" value="수정" class="edit-button">
			<span class="d-none">${n.id}</span>
			<a href="list">목록</a>
		</div>
	</section>
</main>