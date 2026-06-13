# Project Structure Overview

## Root Files
- `package.json` - Root workspace configuration
- `docker-compose.yml` - Docker composition for local development
- `README.md` - Main documentation
- `.gitignore` - Git ignore rules
- `setup.sh` - Setup script

## Backend (`backend/`)
```
backend/
├── src/
│   ├── index.ts              # Main entry point
│   ├── api/                  # API controllers
│   ├── routes/               # Express routes
│   ├── services/             # Business logic services
│   ├── integrations/         # External integrations
│   │   ├── ai/              # AI models integration
│   │   ├── whatsapp/        # WhatsApp API
│   │   ├── voice/           # Voice/Speech APIs
│   │   └── robotics/        # Robotics simulator
│   ├── middleware/           # Express middleware
│   ├── database/             # Database connection
│   ├── queue/                # Job queues
│   ├── websocket/            # Socket.io handlers
│   ├── utils/                # Helper functions
│   ├── config/               # Configuration
│   ├── types/                # TypeScript types
│   └── scripts/              # Utility scripts
├── prisma/
│   ├── schema.prisma         # Database schema
│   ├── seed.ts               # Database seeder
│   └── migrations/           # Database migrations
├── package.json
├── tsconfig.json
├── jest.config.cjs
├── .eslintrc.cjs
└── .env.example

## Frontend (`frontend/`)
```
frontend/
├── src/
│   ├── main.tsx             # React entry point
│   ├── App.tsx              # Root component
│   ├── pages/               # Page components
│   ├── components/          # Reusable components
│   ├── context/             # React Context
│   ├── hooks/               # Custom React hooks
│   ├── lib/                 # Libraries & utilities
│   ├── utils/               # Helper functions
│   ├── styles/              # Global styles
│   └── types/               # TypeScript types
├── public/                  # Static files
├── index.html
├── package.json
├── vite.config.ts
├── tsconfig.json
├── tailwind.config.js
├── postcss.config.js
├── .eslintrc.cjs
└── .env.example

## Mobile (`mobile/`)
```
mobile/
├── src/
│   ├── screens/             # Screen components
│   ├── components/          # Reusable components
│   ├── navigation/          # React Navigation
│   ├── services/            # API services
│   ├── utils/               # Helper functions
│   └── types/               # TypeScript types
├── assets/                  # App assets (icons, splash)
├── app.json                 # Expo config
├── package.json
├── tsconfig.json
└── .env.example

## Docker (`docker/`)
- `Dockerfile.backend` - Backend container
- `Dockerfile.frontend` - Frontend container
- `nginx.conf` - Nginx configuration

## Kubernetes (`k8s/`)
- `deployment.yaml` - K8s deployment config

## GitHub (`.github/`)
- `workflows/ci-cd.yml` - CI/CD pipeline

## Documentation (`docs/`)
- `README.md` - General documentation
- `API.md` - API documentation
- `DEPLOYMENT.md` - Deployment guide
- `ARCHITECTURE.md` - Architecture overview
- `MOBILE.md` - Mobile app guide
- `CONTRIBUTING.md` - Contributing guide

## Key Technologies

### Backend
- Node.js, Express, TypeScript
- Prisma ORM, PostgreSQL
- Socket.io, Redis, BullMQ
- JWT, Bcrypt
- Axios, Winston, Morgan

### Frontend
- React 18, React Router
- TypeScript, Vite
- Tailwind CSS, Framer Motion
- Zustand, Socket.io-client
- Recharts, Three.js, Lucide icons

### Mobile
- React Native, Expo
- React Navigation
- Zustand for state

### DevOps
- Docker, Docker Compose
- Kubernetes
- Nginx
- GitHub Actions
- AWS (ECS, RDS, S3, CloudFront)

## Installation & Running

### Quick Start
```bash
# Install all dependencies
npm run setup

# Start development environment
npm run dev

# Access applications
# Frontend: http://localhost:3000
# Backend: http://localhost:5000
```

### Docker
```bash
# Start all services
npm run docker:up

# Stop services
npm run docker:down
```

### Production
```bash
# Build
npm run build

# Deploy to Kubernetes
kubectl apply -f k8s/deployment.yaml
```
