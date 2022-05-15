export default {
	template : `
		<div>
			<h1>Movie List</h1>
			<button><a href="#" @click="create()">입력</a></button>
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
					<tr v-for="item in movies">
						 <td>{{ item.id }}</td>
						 <td><img v-bind:src="loadTxt(item.medium_cover_image, 'poster')"></td>
						 <td v-text="loadTxt(item.title, 'title')"></td>
						 <td>{{ item.year }}</td>
						 <td>{{ item.rating }}</td>
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
	props: [],
	data : function(){
		return {
			movies : [],
		}
	},
	mounted() {
		this.hide();
	},
	methods : {
		loadTxt(data, type) {
			if(type == 'title' && data.length > 30){
				return data.slice(0,30) + '...';
			} else {
				return data;
			}
		},
		show : function(){
			this.show();
		},
		hide : function(){
			this.hide();
		}
	}
}