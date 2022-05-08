import Vue from 'vue'
import VueRouter from 'vue-router'
import MovieList from './movieList.js'
import MovieCreate from './movieCreate.js'

Vue.use(VueRouter)

const routes = [
	{ path: '/movieList.do', component: MovieList },
	{ path: '/movieCreate.do', component: MovieCreate },
]