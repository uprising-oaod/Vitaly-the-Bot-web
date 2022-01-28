// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Add Bootstrap dependencies and Bootstrap
// require jquery3
// require popper
// require bootstrap-sprockets

// While bootstrap-sprockets provides individual Bootstrap components for ease of debugging,
//     you may alternatively require the concatenated bootstrap for faster compilation:
//
// // require jquery3
// // require popper
// // require bootstrap

import "popper"
import "bootstrap"

let popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
let popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
})