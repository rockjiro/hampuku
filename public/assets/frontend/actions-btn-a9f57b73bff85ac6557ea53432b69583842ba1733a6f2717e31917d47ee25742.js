var app = new Vue({
    el: '#app',
    data: {
        isOpen: false
    },
    methods: {
        doOpen: function() {
            this.isOpen = !this.isOpen
        }
    }
})
;
