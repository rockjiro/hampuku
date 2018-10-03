var app = new Vue({
    el: '#app',
    data: {
        isActive: false
    },
    methods: {
        doActive: function() {
            this.isActive = !this.isActive
        }
    }
})