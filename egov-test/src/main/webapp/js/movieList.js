import movieData from './movieData.js';

export default{
	template : `
		<div>
			<table>
				<thead>
					<tr>
						<th>Number</th>
						<th>Poster</th>
						<th>Title</th>
						<th>Year</th>
						<th>Rating</th>
						<th>Genres</th>
					</tr>
				</thead>
				<tbody>
					<tr v-for="item in movieList">
						 <td v-text="loadTxt(item.id, 'id')"></td>
						 <td><img v-bind:src="loadTxt(item.medium_cover_image, 'poster')"></td>
						 <td v-text="loadTxt(item.title, 'title')"></td>
						 <td v-text="loadTxt(item.year, 'year')"></td>
						 <td v-text="loadTxt(item.rating, 'rating')"></td>
						 <td>
							<ul v-for="genres in loadTxt(item.genres, 'genres')">
								<li v-text="genres"></li>
							</ul>
						 </td>
					</tr>
				</tbody>
			</table>
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
		loadTxt(data, type) {
			if(type == 'title' && data.length > 30){
				return data.slice(0,30) + '...';
			} else {
				return data;
			}
		}
	}
}