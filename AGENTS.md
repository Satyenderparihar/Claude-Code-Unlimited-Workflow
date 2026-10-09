# Agent Instructions & Universal Rules

## Mandatory Skills & Architecture
Always Use:
- **Skills**: `astro`, `tailwind-4-docs`, and `web-design-guidelines` for all code, component, and styling generations.
- **Design System**: Strictly follow `DESIGN.md` for layout, colors, typography, spacing, and micro-interactions (Vercel dark-mode aesthetic).
- **CSS Framework**: Tailwind CSS v4 (`@import "tailwindcss";` in `src/styles/global.css`).

## Development Guidelines
- When starting the dev server, use background mode or standard dev command:
  ```bash
  npm run dev
  ```
- Keep pages inside `src/pages/` and modular components inside `src/components/`.
- Maintain clean TypeScript types and zero bundle bloat.
- Use islands architecture (`client:load`, `client:idle`, `client:visible`) only when client-side interactivity is required.

## Documentation
- Astro: https://docs.astro.build
- Tailwind CSS v4: https://tailwindcss.com
