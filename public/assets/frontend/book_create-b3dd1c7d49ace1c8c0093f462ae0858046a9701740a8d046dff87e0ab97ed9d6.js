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
            //dataプロパティの値を反転する
            //プロパティが存在しなければ、追加する
            this.books = false
            if (this.books[book]){
                this.books[book] = !this.books[book]
            }else{
                this.$set(this.books, book, true)   
            }
        }
    }
})
;
