import MovieList from "./movieList.js";

new Vue({
	el: '#movieMain',
	components: { 
		'movie-list': MovieList,
	},
})