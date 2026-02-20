# AGENTS.md — Laravel SaaS

## Project Context

This project uses the `.context/` standard. Before any changes:

1. Read `.context/STATUS.md` — current state and blockers
2. Read `.context/SPECS.md` — features and acceptance criteria
3. Read `.context/ARCHITECTURE.md` — stack and key decisions

After each session:
- Update `.context/STATUS.md`
- Append to `.context/CHANGES.md`

## Stack
- PHP 8.3 / Laravel 11
- MySQL / PostgreSQL
- Queue: Laravel Jobs + Supervisor
- Deploy: cPanel/WHM on Oracle Cloud ARM

## Coding Style
- PSR-12
- Eloquent preferred over raw queries
- Feature tests over unit tests where possible
- Use Laravel Form Requests for validation

## Commands
```bash
php artisan serve          # Dev server
php artisan test           # Run tests
php artisan queue:work     # Start queue worker
composer install           # Install dependencies
```

## Important Notes
- Never run `queue:work` without `--timeout` in production
- All email goes through SMTP configured in `.env`
- Migrations must be reversible (`down()` required)
