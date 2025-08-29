#!/bin/bash

# Script de déploiement pour Futuristic Landing
echo "🚀 Déploiement de Futuristic Landing..."

# Vérification des prérequis
if ! command -v npm &> /dev/null; then
    echo "❌ npm n'est pas installé"
    exit 1
fi

if ! command -v git &> /dev/null; then
    echo "❌ git n'est pas installé"
    exit 1
fi

# Installation des dépendances
echo "📦 Installation des dépendances..."
npm install

# Vérification du code
echo "🔍 Vérification du code..."
npm run lint

# Build du projet
echo "🏗️  Build du projet..."
npm run build

# Déploiement sur Vercel (si installé)
if command -v vercel &> /dev/null; then
    echo "🌐 Déploiement sur Vercel..."
    vercel --prod
else
    echo "⚠️  Vercel CLI non installé. Installez-le avec: npm i -g vercel"
    echo "📋 Ou connectez votre repo GitHub à Vercel directement"
fi

echo "✅ Déploiement terminé !"