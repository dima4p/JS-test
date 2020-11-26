const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const customConfig = require('./custom')
environment.config.merge(customConfig)

const vue = require('./loaders/vue')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
