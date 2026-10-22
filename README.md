# profile

Web resume and portfolio of **Watthajak Jinasam**: one page in 12 languages that also prints to a 1–2 page A4
PDF.

**Live:** [gomin2013.github.io/profile](https://gomin2013.github.io/profile/) · any language with `?lang=`, e.g.
[Thai](https://gomin2013.github.io/profile/?lang=th) or [Japanese](https://gomin2013.github.io/profile/?lang=ja)

- Plain HTML in `docs/index.html`, no build step and no framework. GitHub Pages serves `master` → `/docs`.
- English and Thai are written in the page; the other 10 languages are in `docs/i18n/<code>.json`, keyed by the
  English text. After changing English copy, run `node test-i18n.js`. It fails on any string a language is missing.
- Same look as the Gomin Apps sites: the page borrows `site.css` / `site.js` from
  [/hosts-manager/](https://gomin2013.github.io/hosts-manager/), so it only renders fully on the
  `gomin2013.github.io` origin.
- The printed page is the resume: Chrome → Print → A4 → Save as PDF.

## Preview locally

The borrowed CSS/JS need the sibling app sites under one origin:

```bash
cd ~/Documents/SwiftUI && mkdir -p /tmp/gomin-site && \
  ln -sfn "$PWD/profile/docs" /tmp/gomin-site/profile && \
  ln -sfn "$PWD/hosts-manager/docs" /tmp/gomin-site/hosts-manager && \
  ln -sfn "$PWD/git-exclude-manager/docs" /tmp/gomin-site/git-exclude-manager && \
  ln -sfn "$PWD/gomin2013.github.io/favicon.png" /tmp/gomin-site/ && \
  python3 -m http.server 8000 -d /tmp/gomin-site
# http://localhost:8000/profile/  ·  Thai: /profile/?lang=th
```

## Related

| | Website | Source |
|---|---|---|
| Gomin Apps (home) | [gomin2013.github.io](https://gomin2013.github.io/) | [gomin2013/gomin2013.github.io](https://github.com/gomin2013/gomin2013.github.io) |
| Hosts Manager | [/hosts-manager/](https://gomin2013.github.io/hosts-manager/) | [gomin2013/hosts-manager](https://github.com/gomin2013/hosts-manager) |
| Git Exclude Manager | [/git-exclude-manager/](https://gomin2013.github.io/git-exclude-manager/) | [gomin2013/git-exclude-manager](https://github.com/gomin2013/git-exclude-manager) |
| AI Voice Manager | [/ai-voice-manager/](https://gomin2013.github.io/ai-voice-manager/) | [gomin2013/ai-voice-manager](https://github.com/gomin2013/ai-voice-manager) |
