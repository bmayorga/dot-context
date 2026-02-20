---
last_updated: 2026-02-19T22:00:00-05:00
updated_by: human
---

# Architecture

## Stack

| Layer | Technology | Why |
|-------|-----------|-----|
| Backend | Laravel 11 / PHP 8.3 | Team expertise, ecosystem |
| Database | MySQL 8.0 | Managed on cPanel |
| Queue | Laravel Jobs + Redis | Async processing |
| Storage | S3-compatible | File uploads |
| Billing | Stripe + Laravel Cashier | Standard SaaS billing |
| Hosting | Oracle Cloud ARM + cPanel | Cost-effective |

## Multi-tenancy Model
Single database. `tenant_id` column on all relevant tables. Global scope applied via
`TenantScope` Eloquent trait.

## Key Decisions

| Decision | Rationale | Date |
|----------|-----------|------|
| Single DB multi-tenancy | Simpler ops for MVP scale | 2026-01-10 |
| Cashier over custom Stripe | Less code, handles webhooks | 2026-01-15 |
| ARM instance on Oracle | 4 OCPU / 24 GB RAM free tier | 2026-01-01 |

## External Dependencies
- Stripe API (billing)
- AWS S3 (file storage)
- Mailgun (transactional email)
