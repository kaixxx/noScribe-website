# noScribe Website

Official project website for **noScribe** (Hugo + hugo-book), hosted on GitHub Pages.

## Local development

Requirements: **Hugo Extended** (theme requires the extended build).

```sh
# initialize theme submodule
git submodule update --init --recursive

# start dev server
hugo server
```

## Build

```sh
hugo
```

## Deployment (GitHub Pages)

Deployment is handled by the GitHub Actions workflow in `.github/workflows/hugo.yml`.

## Custom domain (noscribe.de)

- The `CNAME` file is already included.
- HTTPS is provided automatically by GitHub Pages (Let’s Encrypt).

### DNS hints

Recommended records for apex domain (per GitHub Pages docs):

```
A  @  185.199.108.153
A  @  185.199.109.153
A  @  185.199.110.153
A  @  185.199.111.153
```

Optional for `www`:

```
CNAME  www  noscribe.de
```

## Google Search Console

1. Create a **Domain property** for `noscribe.de`.
2. Do **not** set country targeting (keep international).
3. Submit the sitemap: `https://noscribe.de/sitemap.xml`.

## Assets

Assets live in `static/img`. To refresh from the code repo:

```sh
powershell -File scripts/copy-graphic.ps1 ..\noScribe\graphic_sw.png
powershell -File scripts/copy-screenshots.ps1 ..\noScribe
```

## Adding a new language

1. Add a new language in `config/_default/hugo.toml`.
2. Create the translated content under `content/<lang>/`.
3. Add language-specific descriptions in front matter.

## Mentions/Press

Edit:
- `content/docs/mentions.md`
- `content/en/docs/mentions.md`

Please add only verified sources (no invented quotes).
