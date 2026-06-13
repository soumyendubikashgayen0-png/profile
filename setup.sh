#!/bin/bash

# Soumyendu AI Robotics Teacher - Setup Script

set -e

echo "🤖 Soumyendu AI Robotics Teacher Setup"
echo "======================================"

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed"
    exit 1
fi

echo "✅ Node.js version: $(node --version)"

# Install dependencies
echo ""
echo "📦 Installing dependencies..."
npm run setup

# Setup environment variables
echo ""
echo "⚙️  Setting up environment variables..."

if [ ! -f backend/.env ]; then
    cp backend/.env.example backend/.env
    echo "📝 Created backend/.env - please configure it"
fi

if [ ! -f frontend/.env ]; then
    touch frontend/.env
    echo "VITE_API_URL=http://localhost:5000/api" > frontend/.env
    echo "VITE_WS_URL=ws://localhost:5000" >> frontend/.env
fi

# Database setup
echo ""
echo "🗄️  Setting up database..."
cd backend
npx prisma generate
echo "Do you want to run database migrations? (y/n)"
read -r response
if [ "$response" = "y" ]; then
    npx prisma migrate dev --name init
    npx prisma db seed
fi
cd ..

echo ""
echo "✅ Setup complete!"
echo ""
echo "📖 Next steps:"
echo "1. Configure your environment variables in backend/.env"
echo "2. Run 'npm run dev' to start development"
echo "3. Visit http://localhost:3000 in your browser"
echo ""
