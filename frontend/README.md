## Sitemap (in progress)
```tree
Home (Main Page)
├── Animated Design Intro
├── Stylised Resume
│   ├── Education
│   │   └── ENI school online course ongoing
│   ├── Skills & Projects
│   │   ├── JavaScript Game (using the resume env)
│   │   ├── CRUD (PHP/PostgreSQL)
│   │   │   ├── Auth
│   │   │   ├── Table display
│   │   │   └── Create/Edit
│   │   ├── Java API
│   │   │   ├── Doc
│   │   │   ├── Auth
│   │   │   └── Filter form that generate json
│   │   └── Python stats
│   │       ├── Stats/Graphs on git stats
│   │       ├── Interactive bar filter
│   │       └── GitHub page
│   └── About me
│       ├── Contact
│       └── GitHub page
```
## Docker compose build, languages & frameworks
### Dev
- nginx container with HMTL/Pico CSS
- node container with TypeScript
### Prod
- nginx container with HTML/Pico CSS/JS
**A multi stage build compile TypeScript, sanitize CSS and minify.**