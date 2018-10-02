// import Vue from 'vue'

let app = new Vue({
    el: '#js-book-create',
    data: {
        isActive: false
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        }
    }
})