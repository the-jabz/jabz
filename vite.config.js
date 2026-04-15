import { defineConfig } from 'vite'
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [
    {
      "@tailwindcss/postcss"(){},
    },
  ],
  server: {
    host: "0.0.0.0",
    port: 5173
  }
});
