const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
    purge: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        './resources/js/**/*.js',
    ],

    theme: {
        fontFamily: {
            serif: ['"Concert One"', ...defaultTheme.fontFamily.serif],
        },
        extend: {
            animation: ['hover'],
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
                menu: ['"Concert One"', ...defaultTheme.fontFamily.sans],
                script1: ['"Luckiest Guy"'],
                script2: ['"Ewert"'],
                script3: ['"Gochi Hand"'],
                script4: ['"Sancreek"'],
                script5: ['"Titan One"'],
                script6: ['"Fredoka One"'],
                script7: ['"Ubuntu"'],
            },
        },
    },

    variants: {
        extend: {
            opacity: ['disabled'],
        },
    },

    plugins: [require('@tailwindcss/forms')],
};
