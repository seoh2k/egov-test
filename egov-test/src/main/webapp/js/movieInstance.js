import movieList from './movieList.js';
import movieCreate from './movieCreate.js';

const movie_list = movieList;
const movie_create = movieCreate;

new Vue({
	el: '#movieList',
	components : {
		'movie-list' : movie_list,
	}
})

new Vue({
	el: '#movieCreate',
	components : {
		'movie-create' : movie_create,
	}
})