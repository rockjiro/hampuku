var app = new Vue({
    el: '#app',
    data: {
        isActive: false,
        isOpen: false
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        },
        doOpen: function() {
            this.isOpen = !this.isOpen
        }
    }
})
;
