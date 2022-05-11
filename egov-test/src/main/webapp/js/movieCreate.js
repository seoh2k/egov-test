import movieData from './movieData.js';

var movie = movieData;

export default {
	data() {
		return {
			movie: {
				data: movie,
				poster: '',
				title: '',
				rating: '',
				genres: '',
			}
		};
	},
	mounted() {
		this.save();
    },
	methods : {
		save() {
			this.data.push({
				poster: this.poster,
				title: this.title,
				rating: this.rating,
				genres: this.genres,
			})
			alert('저장 완료');
		}
	}
}