// Every .en text in docs/index.html must be a key in each docs/i18n/<code>.json (site.js looks it up by the
// whitespace-collapsed English HTML; a missing key silently shows English). Run: node test-i18n.js
const fs = require("fs");
const path = require("path");

const html = fs.readFileSync(path.join(__dirname, "docs/index.html"), "utf8");
const keys = new Set();
for (const m of html.matchAll(/<(\w+)\b[^>]*\bclass="en"[^>]*>/g)) {
  // ponytail: tag-balanced scan, not a DOM — fine while .en elements hold plain inline HTML
  const tag = new RegExp(`<(/?)${m[1]}\\b[^>]*>`, "g");
  tag.lastIndex = m.index + m[0].length;
  let depth = 1, t;
  while (depth) { t = tag.exec(html); depth += t[1] ? -1 : 1; }
  keys.add(html.slice(m.index + m[0].length, t.index).replace(/\s+/g, " ").trim());
}

const dir = path.join(__dirname, "docs/i18n");
let failed = false;
for (const file of fs.readdirSync(dir).filter((f) => f.endsWith(".json"))) {
  const dict = JSON.parse(fs.readFileSync(path.join(dir, file), "utf8"));
  const missing = [...keys].filter((k) => !dict[k]);
  const stale = Object.keys(dict).filter((k) => !keys.has(k));
  if (missing.length || stale.length) {
    failed = true;
    missing.forEach((k) => console.log(`${file}: missing ${JSON.stringify(k)}`));
    stale.forEach((k) => console.log(`${file}: stale   ${JSON.stringify(k)}`));
  }
}
if (failed) process.exit(1);
console.log(`all ${keys.size} strings translated in ${fs.readdirSync(dir).length} languages`);
