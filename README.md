# Profile Project

A personal profile and portfolio web application built with Vue.js, Nuxt.js, and Vite. Includes Docker support for easy development and deployment.

## Technologies Used
- Vue.js
- Nuxt.js (with Vite)
- Sass/SCSS
- Docker & Docker Compose

## Folder Structure
- `app/` - Source code and components
- `concepts/` - Data files (cv.json, requirements.json)
- `docs/` - Static assets and HTML
- `Dockerfile` & `docker-compose.development.yml` - Container setup

## Getting Started

### Local Development
```bash
npm install
npm run dev
```

### Using Docker
Build and run the development server in a container:
```bash
docker-compose -f docker-compose.development.yml up --build
```
Access the app at [http://localhost:3000](http://localhost:3000)

## Updating CV/Portfolio
Edit `concepts/cv.json` to update your profile, experience, skills, and portfolio data.

## Contact
- Location: Bangkok, Thailand
- Email: gomin2013@hotmail.com
- LinkedIn: https://www.linkedin.com/in/gomin2013

---
For more details, see each folder and file for documentation and configuration.

