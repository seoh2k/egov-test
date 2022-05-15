export default {
	props: {
		value: {
			type: String,
			default: '',
		}
	},
	template: `
		<input type="text" class="input" :value="value" v-on="listeners">
	`,
	computed: {
		listeners () {
			return {
				...this.$listeners,
				input: event => this.$emit('input', event.target.value)
			}
		}
	}
}