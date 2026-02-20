# AGENTS.md — Next.js App

## Project Context

This project uses the `.context/` standard. Before any changes:

1. Read `.context/STATUS.md` — current state and blockers
2. Read `.context/SPECS.md` — features and acceptance criteria
3. Read `.context/ARCHITECTURE.md` — stack and key decisions

After each session:
- Update `.context/STATUS.md`
- Append to `.context/CHANGES.md`

## Stack
- Next.js 15 / React 19
- TypeScript (strict mode)
- Tailwind CSS
- Supabase (auth + database + storage)
- Vercel (deployment)

## Coding Style
- TypeScript strict: no `any`, explicit return types on exported functions
- Server Components by default; `'use client'` only when necessary
- Tailwind over CSS modules
- `zod` for all external data validation

## Commands
```bash
npm run dev       # Dev server (localhost:3000)
npm run build     # Production build
npm run test      # Run Vitest
npm run lint      # ESLint
```

## Important Notes
- Supabase RLS must be enabled on all tables — never disable in production
- Use Server Actions for mutations, not client-side fetch
- All env vars in `.env.local` (never commit)
