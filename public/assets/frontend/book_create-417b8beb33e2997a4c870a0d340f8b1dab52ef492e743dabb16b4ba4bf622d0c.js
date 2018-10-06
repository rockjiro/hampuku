var app = new Vue({
    el: '#app',
    data: {
        isActive: false,
        isOpen: false,
        books: {'book1':false,'book2':false}
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        },
        doOpen: function(book) {
            // this.isOpen = !this.isOpen
            this.$set(this.books, book, true)
        }
    }
})
;
