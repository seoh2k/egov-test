export default {
	template: `
		<h1>Movie Create</h1>
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
	`,
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