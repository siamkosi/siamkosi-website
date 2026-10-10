# siamkosi - AI for Construction

Source for https://siamkosi.com, hosted with Sites.

- index.html: page content
- style.css: layout and design
- app.js: languages and image viewer
- assets/: images
- dist/: published static files (keep aligned with source)

After each update and Sites publication, run `powershell -File ./sync-github.ps1` to mirror committed source to GitHub. This does not watch unsaved files or deploy the site.
