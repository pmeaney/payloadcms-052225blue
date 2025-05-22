
A log from an example deployment

```bash

docker logs containerID

Starting PayloadCMS application...
Waiting for PostgreSQL at payloadcms-postgres-db-portfolio-prod:5432...
PostgreSQL is ready!
The /src/migration directory is empty.
Creating initial migration...

> payloadcms-cms@1.0.0 payload:migrate:create /app
> cross-env NODE_OPTIONS=--no-deprecation payload migrate:create --name initial

[20:42:52] WARN: No email adapter provided. Email will be written to console. More info at https://payloadcms.com/docs/email/overview.
[20:42:53] INFO: Migration created at /app/src/migrations/20250411_204253.ts
[20:42:53] INFO: Done.
Initial migration created and accessible in the host filesystem.
Running initial migration...

> payloadcms-cms@1.0.0 payload:migrate /app
> cross-env NODE_OPTIONS=--no-deprecation payload migrate --force-accept-warning

[20:43:06] WARN: No email adapter provided. Email will be written to console. More info at https://payloadcms.com/docs/email/overview.
[20:43:06] INFO: Reading migration files from /app/src/migrations
[20:43:06] INFO: Migrating: 20250411_204253
[20:43:07] INFO: Migrated:  20250411_204253 (548ms)
[20:43:07] INFO: Done.
Running Next.js build...

> payloadcms-cms@1.0.0 build /app
> cross-env NODE_OPTIONS=--no-deprecation next build

Attention: Next.js now collects completely anonymous telemetry regarding usage.
This information is used to shape Next.js' roadmap and prioritize features.
You can learn more, including how to opt-out if you'd not like to participate in this anonymous program, by visiting the following URL:
https://nextjs.org/telemetry

   ▲ Next.js 15.2.3
   - Environments: .env

   Creating an optimized production build ...
 ✓ Compiled successfully
   Linting and checking validity of types ...
   Collecting page data ...
   Generating static pages (0/13) ...
   Generating static pages (3/13)
   Generating static pages (6/13)
   Generating static pages (9/13)
 ✓ Generating static pages (13/13)
   Finalizing page optimization ...
   Collecting build traces ...

Route (app)                                 Size  First Load JS  Revalidate  Expire
┌ ○ /                                      163 B         195 kB
├ ○ /_not-found                            987 B         104 kB
├ ● /[slug]                                163 B         195 kB
├ ƒ /admin/[[...segments]]                 158 B         656 kB
├ ƒ /api/[...slug]                         188 B         103 kB
├ ƒ /api/graphql                           159 B         103 kB
├ ƒ /api/graphql-playground                188 B         103 kB
├ ƒ /next/exit-preview                     159 B         103 kB
├ ƒ /next/preview                          159 B         103 kB
├ ƒ /next/seed                             159 B         103 kB
├ ƒ /pages-sitemap.xml                     159 B         103 kB
├ ○ /posts                                 338 B         125 kB         10m      1y
├ ƒ /posts-sitemap.xml                     159 B         103 kB
├ ● /posts/[slug]                          372 B         151 kB
├ ● /posts/page/[pageNumber]               337 B         125 kB
└ ƒ /search                              5.14 kB         124 kB
+ First Load JS shared by all             103 kB
  ├ chunks/47b11435-adcab461b37733db.js  53.3 kB
  ├ chunks/8136-643388b42524afa4.js      46.3 kB
  └ other shared chunks (total)          3.22 kB


○  (Static)   prerendered as static content
●  (SSG)      prerendered as static HTML (uses generateStaticParams)
ƒ  (Dynamic)  server-rendered on demand


> payloadcms-cms@1.0.0 postbuild /app
> next-sitemap --config next-sitemap.config.cjs

✨ [next-sitemap] Loading next-sitemap config: file:///app/next-sitemap.config.cjs
✅ [next-sitemap] Generation completed
┌───────────────┬────────┐
│ (index)       │ Values │
├───────────────┼────────┤
│ indexSitemaps │ 1      │
│ sitemaps      │ 0      │
└───────────────┴────────┘
-----------------------------------------------------
 SITEMAP INDICES
-----------------------------------------------------

   ○ http://localhost:3000/sitemap.xml



> payloadcms-cms@1.0.0 postbuild /app
> next-sitemap --config next-sitemap.config.cjs

✨ [next-sitemap] Loading next-sitemap config: file:///app/next-sitemap.config.cjs
✅ [next-sitemap] Generation completed
┌───────────────┬────────┐
│ (index)       │ Values │
├───────────────┼────────┤
│ indexSitemaps │ 1      │
│ sitemaps      │ 0      │
└───────────────┴────────┘
-----------------------------------------------------
 SITEMAP INDICES
-----------------------------------------------------

   ○ http://localhost:3000/sitemap.xml


Starting Next.js application...

> payloadcms-cms@1.0.0 start /app
> cross-env NODE_OPTIONS=--no-deprecation next start

   ▲ Next.js 15.2.3
   - Local:        http://localhost:3000
   - Network:      http://172.18.0.2:3000

 ✓ Starting...
 ✓ Ready in 824ms
[20:51:35] WARN: No email adapter provided. Email will be written to console. More info at https://payloadcms.com/docs/email/overview.
[20:52:06] INFO: Seeding database...
[20:52:06] INFO: — Clearing collections and globals...
[20:52:06] INFO: — Seeding demo author and user...
[20:52:06] INFO: — Seeding media...
[20:52:29] INFO: — Seeding posts...
[20:52:30] INFO: Revalidating post at path: /posts/digital-horizons
[20:52:30] INFO: Revalidating post at path: /posts/global-gaze
[20:52:30] INFO: Revalidating post at path: /posts/dollar-and-sense-the-financial-forecast
[20:52:30] INFO: — Seeding contact form...
[20:52:30] INFO: — Seeding pages...
[20:52:31] INFO: Revalidating page at path: /contact
[20:52:31] INFO: Revalidating page at path: /
[20:52:31] INFO: — Seeding globals...
[20:52:31] INFO: Revalidating footer
[20:52:31] INFO: Revalidating header
[20:52:31] INFO: Seeded database successfully!
```