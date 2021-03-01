const { environment } = require('@rails/webpacker')

const webpack =require('webpack')

enviroment.plugins.prepend('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: ['popper.js', 'default']
    })
)

module.exports = environment
