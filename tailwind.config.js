const defaultTheme = require('tailwindcss/defaultTheme');

/** @type {import('tailwindcss').Config} */
module.exports = {
    presets: [
        require('./vendor/wireui/wireui/tailwind.config')
    ],
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        './vendor/wireui/wireui/resources/**/*.blade.php',
        './vendor/wireui/wireui/ts/**/*.ts',
        './vendor/wireui/wireui/src/View/**/*.php'
    ],

    theme: {
        extend: {
            fontFamily: {
                sans: ['Poppins', ...defaultTheme.fontFamily.sans],
            },
            colors: {
                'azul-oscuro': '#0F4069',
                'azul-semi': '#2C7DBA',
                'azul-claro': '#C4E1FF',
                'azul-muyclaro': '#E1F0FF',
                'azul-bonito': '#00376F',
                'azul-electrico': '#0066FD',
                'verde-normal': '#376f00',
                'verde-limon': '#7dba2c',
                'verde-electrico': '#36ba2c',
                'morado-normal': '#852cba',
                'morado-electrico': '#692cba',
                'naranjo-normal': '#fd9700',
                'rojo-electrico': '#fd0066',
              },
        },
    },

    plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],


};
