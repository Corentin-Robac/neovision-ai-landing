#!/bin/bash

# 🚀 Script d'initialisation Git pour NeoVision AI

echo "🤖 Initialisation du repository NeoVision AI..."

# Vérifier que nous sommes dans le bon dossier
if [ ! -f "package.json" ]; then
    echo "❌ Erreur: Exécutez ce script depuis le dossier du projet"
    exit 1
fi

# Initialiser Git
echo "📂 Initialisation de Git..."
git init

# Ajouter tous les fichiers
echo "📄 Ajout des fichiers..."
git add .

# Premier commit
echo "💾 Premier commit..."
git commit -m "🚀 Initial commit: NeoVision AI - Plateforme IA futuriste

✨ Fonctionnalités:
- Landing page futuriste avec thème cyan/purple
- Animations immersives (particules, néon, parallax)
- Design responsive optimisé
- Next.js 14 + Shadcn/UI + Tailwind CSS
- CI/CD prêt pour Vercel

🎯 NeoVision AI: L'intelligence artificielle de demain, aujourd'hui."

# Créer la branche main
git branch -M main

echo "✅ Repository Git initialisé avec succès!"
echo ""
echo "📋 Prochaines étapes:"
echo "1. Créer un repository sur GitHub"
echo "2. git remote add origin https://github.com/[USERNAME]/neovision-ai-landing.git"
echo "3. git push -u origin main"
echo "4. Connecter à Vercel pour le déploiement automatique"
echo ""
echo "🎉 NeoVision AI est prêt à conquérir le futur!"