import TodoList from './components/TodoList.js'

export default {
	template: `
		<div id="app">
			<h1>My Todo App!</h1>
			<TodoList/>
		</div>
	`,
	components:{
		TodoList
	}
}