<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.18/vue.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BaordList</title>
<script>
import movieData from '/js/MovieData.js';
$(document).ready(function(){
	new Vue({
		el: '#app',
		data() {
			return {
				listData : []
			}
		},
		mounted() {
			this.listData = movieData;
	    },
		methods : {
		}
    })
});
</script>
</head>
<body>
<h1>영화 목록</h1>
<div id="app">
	{{ movieList }}
</div>
</body>
</html>