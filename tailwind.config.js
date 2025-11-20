/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: [
          '"Plus Jakarta Sans"',
          "Inter",
          "SF Pro Display",
          "-apple-system",
          "BlinkMacSystemFont",
          "system-ui",
          "sans-serif",
        ],
      },
      colors: {
        dark: {
          900: "#121212",
          800: "#1c1c1e",
          700: "#2c2c2e",
        },
        pastel: {
          cyan: "#a5f3fc",
          mint: "#86efac",
          pink: "#fbcfe8",
          yellow: "#fde68a",
        },
        "safe-green": "#86efac",
        "moderate-yellow": "#fde68a",
        "unsafe-red": "#fbcfe8",
      },
      borderRadius: {
        "3xl": "24px",
        "4xl": "40px",
      },
      animation: {
        "slide-up": "slideUp 0.3s ease-out",
        "fade-in": "fadeIn 0.2s ease-in",
      },
      keyframes: {
        slideUp: {
          "0%": { transform: "translateY(100%)" },
          "100%": { transform: "translateY(0)" },
        },
        fadeIn: {
          "0%": { opacity: "0" },
          "100%": { opacity: "1" },
        },
      },
    },
  },
  plugins: [],
};
