import MovieData from "./movieData.js";
import MovieList from "./movieList.js";
/* import MovieCreate from "./movieCreate.js"; */

new Vue({
	el: '#movieMain',
	components: { 
		'movie-list': MovieList,
		/* MovieCreate */
	},
	data() {
		return {
			movies : MovieData
		};
	},
})