<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Movie</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="./js/movieCreate.js" type="module"></script>
</head>
<body>
<h1>영화 입력</h1>
<div>
	<table>
		<tr>
			<th>Poster</th>
			<td><input type="text" v-model="poster"></td>
		</tr>
		<tr>
			<th>Title</th>
			<td><input type="text" v-model="title"></td>
		</tr>
		<tr>
			<th>Rating</th>
			<td><input type="text" v-model="rating"></td>
		</tr>
		<tr>
			<th>Genres</th>
			<td><input type="text" v-model="genres"></td>
		</tr>
	</table>
	<button @click="save()">Save</button>
	<button><a href="/test/movieList.do">List</a></button>
</div>
</body>
</html>