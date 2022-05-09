var movie_create = {
	name: 'MovieCreate',
	template : `
		<div>
			<table>
				<tr>
					<th>Poster</th>
					<td><input type="text" v-model="movie.poster"></td>
				</tr>
				<tr>
					<th>Title</th>
					<td><input type="text" v-model="movie.title"></td>
				</tr>
				<tr>
					<th>Rating</th>
					<td><input type="text" v-model="movie.rating"></td>
				</tr>
				<tr>
					<th>Genres</th>
					<td><input type="text" v-model="movie.genres"></td>
				</tr>
			</table>
			<button @click="insert">Insert</button>
			<button @click="back">List</button>
		</div>
	`,
	data() {
		return {
			movie: {
				poster: '',
				title: '',
				rating: '',
				genres: '',
			}
		};
	},
	mounted() {
		
    },
	methods : {
		save: function(){
			this.$axios.post('/insertMovie.do', this.movie)
			.then(() => {
				this.push('/movieList.do')
			})
			.catch((ex) => {
				console.error("failed insert Movie", ex)
			})
		}
	}
}

new Vue({
	components : {
		'movie-create' : movie_create,
	}
})