---
last_updated: 2026-02-19T22:00:00-05:00
updated_by: human
---

# Architecture

## Stack

| Layer | Technology | Why |
|-------|-----------|-----|
| Frontend | Next.js 15 + React 19 | App Router, Server Components |
| Styling | Tailwind CSS 4 | Productivity |
| Auth | Supabase Auth | Built-in OAuth + RLS |
| Database | Supabase (PostgreSQL) | Managed, generous free tier |
| Storage | Supabase Storage | Integrated with auth |
| Billing | Stripe + stripe-js | Standard |
| Deploy | Vercel | Zero-config Next.js |

## Data Flow

```mermaid
graph TD
    User --> NextJS[Next.js App]
    NextJS -->|Server Actions| Supabase[(Supabase DB)]
    NextJS -->|Auth| SupabaseAuth[Supabase Auth]
    NextJS -->|Billing| Stripe
    Stripe -->|Webhooks| NextJS
```

## Key Decisions

| Decision | Rationale | Date |
|----------|-----------|------|
| Server Components default | Performance, smaller client bundle | 2026-01-05 |
| Supabase over Firebase | PostgreSQL + RLS + open source | 2026-01-05 |
| Server Actions over API routes | Less boilerplate, type-safe | 2026-01-05 |
