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
                hand: ['"Gochi Hand"'],
                title: ['"Fredoka One"', ...defaultTheme.fontFamily.sans],
            },
        },
        container: {
            center: true,
            padding: {
                DEFAULT: '1rem',
                sm: '2rem',
                lg: '2rem',
                xl: '1rem',
                '2xl': '2rem',
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
