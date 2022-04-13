import movieData from './movieData.js';

export default{
	template : `
		<div>
			<div v-for="item in movieList">
				 <div v-text="loadTxt(item.title)"></div>
			</div>
		</div>
	`,
	data() {
		return {
			movieList : {}
		};
	},
	mounted() {
		this.movieList = movieData.movies;
    },
	methods : {
		loadTxt(data) {
			return data;
		}
	}
}