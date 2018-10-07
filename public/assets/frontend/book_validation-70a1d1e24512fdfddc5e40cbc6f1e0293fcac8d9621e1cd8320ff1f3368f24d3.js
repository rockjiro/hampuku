Vue.use(window.vuelidate.default)
new Vue({
    el: '#js-book-validation',
    data: {
        name: '',
        description: '',
    },
	validations: {
		name: {
			required: validators.required
		},
		description: {
		    required: validators.required
		}
	}
})
;
