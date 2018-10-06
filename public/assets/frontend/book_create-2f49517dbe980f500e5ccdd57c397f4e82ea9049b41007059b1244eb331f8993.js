var app = new Vue({
    el: '#app',
    data: {
        isActive: false,
        isOpen: false,
        books: {}
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        }
    }
})
;
