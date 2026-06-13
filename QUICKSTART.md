# 🤖 Soumyendu AI Robotics Teacher - COMPLETE

A production-grade, futuristic AI-powered Robotics Learning Platform.

## Quick Start

### 1. Installation

```bash
# Navigate to project
cd soumyendu-ai-robotics-teacher

# Run setup
npm run setup

# Or manually:
npm install
cd backend && npm install && cd ..
cd frontend && npm install && cd ..
cd mobile && npm install
```

### 2. Environment Configuration

```bash
# Backend
cd backend
cp .env.example .env
# Edit .env with your API keys and database URL

# Frontend
cd frontend
cp .env.example .env
# Configure API endpoints (usually localhost:5000)
```

### 3. Database Setup

```bash
cd backend
npx prisma generate
npx prisma migrate dev --name init
npx prisma db seed
```

### 4. Start Development

```bash
# From root directory
npm run dev

# Or separately:
npm run dev:backend  # Terminal 1 - Runs on port 5000
npm run dev:frontend # Terminal 2 - Runs on port 3000
```

**Access:**
- Frontend: http://localhost:3000
- Backend API: http://localhost:5000/api
- API Docs: http://localhost:5000/api/docs

## Architecture

```
Frontend (React 18 + TypeScript)
        ↓
API Gateway (Nginx)
        ↓
Backend (Node.js + Express)
        ↓
Database (PostgreSQL) + Cache (Redis)
        ↓
External Services (AI, WhatsApp, Voice)
```

## Features Included

### 🎓 Learning Platform
- Complete course catalog with modules and lessons
- Interactive video lessons with transcripts
- Quiz and assignment system with auto-grading
- Certificate generation upon course completion
- Learning progress tracking and analytics

### 🤖 AI Tutor System
- Multi-LLM support (OpenAI, Gemini, Claude, DeepSeek)
- Real-time chat interface with AI teacher
- Code generation and debugging assistance
- Project mentor capabilities
- Interview preparation coach

### 🔬 Virtual Robotics Lab
- Arduino simulator with real-time execution
- ESP32 WiFi microcontroller simulator
- Raspberry Pi environment
- Circuit builder and PCB viewer
- Serial monitor output
- Code upload and testing

### 💬 WhatsApp Integration
- Login via WhatsApp
- Course reminders and alerts
- Attendance tracking
- AI chat via WhatsApp
- Commands: /course, /quiz, /project, /mentor, /help

### 🎮 Gamification
- XP point system
- Coins and virtual currency
- Levels and achievements
- Daily and weekly challenges
- Global and course-specific leaderboards
- Badge system

### 👥 Community
- Forums and discussion boards
- Project showcase platform
- Robotics competitions
- Team collaboration tools
- Peer learning groups

### 📱 Mobile Apps
- React Native iOS/Android app
- Progressive Web App (PWA)
- Offline learning support
- Push notifications
- QR code attendance

### 🔐 Security
- JWT authentication
- OAuth 2.0 integration
- Multi-factor authentication
- Rate limiting and DDoS protection
- XSS and CSRF protection
- Data encryption (AES-256)

## Project Structure

```
soumyendu-ai-robotics-teacher/
├── backend/              # Node.js + Express API
│   ├── src/
│   │   ├── routes/      # API endpoints
│   │   ├── services/    # Business logic
│   │   ├── integrations/# AI, WhatsApp, Voice
│   │   ├── middleware/  # Auth, validation
│   │   └── database/    # Prisma, migrations
│   └── prisma/          # Database schema
├── frontend/            # React + TypeScript
│   ├── src/
│   │   ├── pages/       # Page components
│   │   ├── components/  # Reusable UI
│   │   ├── context/     # Global state
│   │   └── lib/         # API clients
│   └── vite.config.ts
├── mobile/              # React Native/Expo
├── docker/              # Docker files
├── k8s/                 # Kubernetes manifests
└── docs/                # Documentation
```

## Environment Variables

### Backend (.env)
```
DATABASE_URL=postgresql://user:password@localhost:5432/soumyendu_ai
REDIS_URL=redis://localhost:6379
JWT_SECRET=your-secret-key
OPENAI_API_KEY=sk-...
WHATSAPP_API_TOKEN=...
```

### Frontend (.env)
```
VITE_API_URL=http://localhost:5000/api
VITE_WS_URL=ws://localhost:5000
```

## Key Technologies

**Frontend:**
- React 18, TypeScript, Vite
- Tailwind CSS, Framer Motion
- Socket.io, Zustand
- Three.js, Recharts

**Backend:**
- Node.js 18, Express, TypeScript
- Prisma ORM, PostgreSQL
- Redis, BullMQ
- Socket.io, JWT

**DevOps:**
- Docker, Docker Compose
- Kubernetes, Nginx
- GitHub Actions CI/CD
- AWS (EC2, RDS, S3)

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register user
- `POST /api/auth/login` - Login user
- `POST /api/auth/refresh` - Refresh token

### Courses
- `GET /api/courses` - List courses
- `GET /api/courses/:id` - Get course details
- `POST /api/courses/:id/enroll` - Enroll in course

### Projects
- `GET /api/projects` - List projects
- `POST /api/projects/:id/submit` - Submit project

### AI
- `POST /api/ai/chat` - Chat with AI tutor
- `GET /api/ai/chats/:id` - Get chat history

### User
- `GET /api/users/profile` - Get user profile
- `GET /api/users/dashboard` - Get dashboard data

[Full API docs](./docs/API.md)

## Deployment

### Docker
```bash
npm run docker:up      # Start all services
npm run docker:down    # Stop services
```

### Kubernetes
```bash
kubectl apply -f k8s/deployment.yaml
```

### AWS
```bash
# Build and push images
docker build -f docker/Dockerfile.backend -t soumyendu-ai/backend:1.0.0 .
docker push soumyendu-ai/backend:1.0.0

# Deploy with ECS/EKS
```

## Troubleshooting

### Database Connection Issues
```bash
# Reset database
cd backend
npx prisma migrate reset --force
```

### Port Already in Use
```bash
lsof -i :5000  # Find process
kill -9 <PID>  # Kill process
```

### CORS Errors
Ensure `FRONTEND_URL` in backend `.env` matches your frontend URL.

## Testing

```bash
# Backend tests
cd backend
npm test

# Frontend tests
cd frontend
npm test
```

## Documentation

- [Architecture Overview](./docs/ARCHITECTURE.md)
- [API Documentation](./docs/API.md)
- [Deployment Guide](./docs/DEPLOYMENT.md)
- [Mobile App Guide](./docs/MOBILE.md)
- [Contributing Guide](./docs/CONTRIBUTING.md)

## Support

- Documentation: https://docs.soumyendu-ai.com
- GitHub Issues: For bug reports
- Email: support@soumyendu-ai.com

## License

Proprietary - All rights reserved © 2026 Soumyendu

---

**Built with ❤️ | Powered by AI | Made for Learners**
