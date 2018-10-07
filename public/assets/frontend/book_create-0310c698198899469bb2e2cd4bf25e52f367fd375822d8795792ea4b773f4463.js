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
            for (var i in this.books){
                if(i !== book){
                    this.books[i] = false   
                }
            }
            //dataプロパティの値を反転する
            //プロパティが存在しなければ、追加する
            if (this.books[book]){
                this.books[book] = !this.books[book]
            }else{
                this.$set(this.books, book, true)   
            }
        }
    }
})

var app2 = new Vue({
    el: "#app"
})
;
