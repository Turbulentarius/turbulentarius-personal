# Turbulentarius

![Screenshot of the old portfolio](old-portfolio.png)

This repository contains an old portfolio site for *Jacob (Turbulentarius)*.

As part of my Bachelor's education at Zealand, I created portfolio sites using different CSS frameworks: Tailwind CSS, Bulma, and Bootstrap. I always found these versions insufficient for my needs. After completing my Bachelor's degree, I decided to clear out the old portfolio and move on to my own CMS, creating a unique theme specifically for my portfolio site.

The repository has therefore been cleaned out because I found nothing of lasting value to keep here. The repository history may still contain older versions of the site and its experiments.

## CI/CD

The interesting part of this repository is its deployment flow. A push to the
`deploy` branch starts a GitHub Actions workflow on an Ubuntu runner. The
workflow checks out the repository, installs the Node.js dependencies, rebuilds
the Tailwind CSS, packages the repository root as a GitHub Pages artifact, and
then deploys that artifact.

```mermaid
flowchart LR
    A[Push to deploy branch] --> B[GitHub Actions]
    B --> C[Ubuntu runner]
    C --> D[Checkout repository]
    D --> E[npm install]
    E --> F[npm run build]
    F --> G[Build build/css/main.css]
    G --> H[Upload repository root]
    H --> I[Deploy to GitHub Pages]
```

In other words, the CSS is not expected to be built manually before
deployment. The workflow rebuilds it from `src/styles/tailwind.css` with `npm run build`, then publishes the resulting site files. The `build.sh` script is a separate local helper for copying a built site into a deployment directory; the GitHub Actions workflow does not use it.
