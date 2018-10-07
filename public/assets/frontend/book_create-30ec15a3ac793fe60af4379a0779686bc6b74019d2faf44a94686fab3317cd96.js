Vue.use(window.vuelidate.default)
new Vue({
    el: '#js-book-create',
    data: {
        name: '',
        description: '',
        isActive: false,
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        }
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
