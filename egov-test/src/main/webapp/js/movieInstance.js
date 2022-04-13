import movieList from './movieList.js';

const movie_list = movieList;

new Vue({
	el: '#movieList',
	components : {
		'movie-list' : movie_list,
	}
})