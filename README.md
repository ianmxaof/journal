# PowerCore Landing Page

Clean, technical landing page for building AI tools in public.

## What's Included

✅ **Email Capture** - ConvertKit embed integrated  
✅ **RSS Feed** - `/feed.xml` for blog readers and automation  
✅ **Build Log** - Chronological entries with permalinks  
✅ **Social Links** - All platforms in one place  
✅ **Responsive Design** - Mobile-friendly  
✅ **Fast & Minimal** - No frameworks, just HTML/CSS/JS

## Deployment to Vercel

This project is configured to deploy automatically from GitHub to Vercel.

### Initial Setup

1. Push to GitHub:
```bash
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/ianmxaof/journal.git
git push -u origin main
```

2. Connect to Vercel:
   - Go to [vercel.com](https://vercel.com)
   - Click "Add New" → "Project"
   - Import the `ianmxaof/journal` repository
   - Vercel will auto-detect it's a static site
   - Deploy!

3. Add Custom Domain:
   - In Vercel dashboard → Settings → Domains
   - Add `powercore.app` and `www.powercore.app`
   - Follow DNS instructions (add CNAME/A records at your registrar)

### Automatic Deployments

Every push to `main` branch automatically deploys to production. No manual steps needed!

## File Structure

```
├── index.html    # Main landing page
├── feed.xml      # RSS feed
├── vercel.json   # Vercel configuration
└── README.md     # This file
```

## Adding New Build Log Entries

### 1. Update `index.html`

Add a new entry at the **top** of the Build Log section (around line 440):

```html
<article class="log-entry" id="2026-01-19">
    <span class="log-date">2026-01-19</span>
    <h3 class="log-title">Your title here</h3>
    <div class="log-content">
        <p>Your content here.</p>
    </div>
    <p class="log-next"><strong>Next:</strong> What's next.</p>
    <a href="#2026-01-19" class="log-permalink">#</a>
</article>
```

### 2. Update `feed.xml`

Add a new `<item>` at the **top** of the feed (after line 10):

```xml
<item>
  <title>Your title here</title>
  <link>https://powercore.app#2026-01-19</link>
  <guid>https://powercore.app#2026-01-19</guid>
  <pubDate>Sun, 19 Jan 2026 00:00:00 GMT</pubDate>
  <description><![CDATA[
    <p>Your content here.</p>
    <p><strong>Next:</strong> What's next.</p>
  ]]></description>
</item>
```

### 3. Deploy

Just push to GitHub:
```bash
git add .
git commit -m "Add new build log entry"
git push
```

Vercel will automatically deploy!

## Converting to X Posts

**Template for each log entry:**

```
[Short hook or key learning]

[2-3 sentence summary of what you did]

Log → powercore.app

[Optional: 1 image or screenshot]
```

**Example:**
```
Distribution beats perfection.

Shipped my landing page today. ConvertKit for email, RSS for automation, build log for consistency. Zero friction, maximum visibility.

Log → powercore.app
```

## Email Updates via ConvertKit

When to send:
- Something ships
- Key learning
- New product release

Format:
```
Subject: [Shipped] Your title

Body:
Short version of your log entry (3-6 sentences).

Read the full log: powercore.app#[date]

- Ian
```

## Design Notes

- **Fonts**: JetBrains Mono (code) + DM Sans (body)
- **Colors**: Black/white/gray + accent green (#00ff88)
- **Style**: Technical, brutalist-minimal, builder-focused
- **No animations** except subtle fade-ins on log entries

## Customization

### Change Accent Color
Update line 21 in `index.html`:
```css
--accent: #00ff88;  /* Change this hex code */
```

### Add More Social Links
Add to the `.links-grid` section (around line 476):
```html
<div class="link-item">
    <span class="link-label">Platform</span>
    <a href="https://..." target="_blank" rel="noopener">your-link</a>
</div>
```

## Performance

- **No build step** - deploy directly
- **No JavaScript frameworks** - vanilla JS only
- **~15KB total** (HTML + CSS)
- **Instant load** on fast connections

## Maintenance

**Weekly:**
- Add 1-3 build log entries
- Update RSS feed
- Post to X

**Monthly:**
- Review what's working
- Adjust copy if needed
- Add new products/links

**Never:**
- Over-engineer
- Add unnecessary features
- Break the minimal aesthetic

## License

MIT - Do whatever you want with it.

---

Questions? Issues? Just ship it and iterate.
