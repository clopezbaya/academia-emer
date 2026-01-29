const defaultTheme = require('tailwindcss/defaultTheme');

/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            colors: {
                'primary': '#ba1557', // Academia Emer Primary
                'secondary': '#515151', // Academia Emer Secondary
                'neutral': '#FFFFFF',   // Academia Emer Neutral
                'primary-dark': '#9b1049', // Darker shade for active/focus
                'primary-light': '#d44e7b', // Lighter shade for hover
                'secondary-light': '#8c8c8c', // Lighter shade for disabled
            },
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans], // Keeping Figtree as per existing config
            },
        },
    },

    plugins: [require('@tailwindcss/forms')],
};
