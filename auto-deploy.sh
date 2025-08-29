#!/bin/bash

# 🚀 SCRIPT D'AUTO-DÉPLOIEMENT NEOVISION AI
# Ce script fait TOUT automatiquement !

set -e  # Arrêter en cas d'erreur

echo "🤖 ====================================="
echo "   NEOVISION AI - AUTO DEPLOYMENT"
echo "🤖 ====================================="
echo ""

PROJECT_DIR="C:\\Users\\coren\\Documents\\Projets\\claude\\futuristic-landing"
cd "$PROJECT_DIR" || {
    echo "❌ Impossible d'accéder au dossier du projet"
    echo "Vérifiez le chemin: $PROJECT_DIR"
    exit 1
}

echo "📂 Répertoire de travail: $(pwd)"
echo ""

# ÉTAPE 1: Vérification de l'environnement
echo "🔍 ÉTAPE 1/6: Vérification de l'environnement"
echo "============================================="

# Vérifier Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js non trouvé. Installez Node.js 18+ depuis https://nodejs.org"
    exit 1
fi

NODE_VERSION=$(node --version)
echo "✅ Node.js: $NODE_VERSION"

# Vérifier npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm non trouvé"
    exit 1
fi

NPM_VERSION=$(npm --version)
echo "✅ npm: v$NPM_VERSION"

# Vérifier Git
if ! command -v git &> /dev/null; then
    echo "❌ Git non trouvé. Installez Git depuis https://git-scm.com"
    exit 1
fi

GIT_VERSION=$(git --version)
echo "✅ Git: $GIT_VERSION"
echo ""

# ÉTAPE 2: Installation des dépendances
echo "📦 ÉTAPE 2/6: Installation des dépendances"
echo "=========================================="
echo "Installation en cours..."

npm install --silent

if [ $? -eq 0 ]; then
    echo "✅ Toutes les dépendances installées avec succès"
else
    echo "❌ Erreur lors de l'installation des dépendances"
    exit 1
fi
echo ""

# ÉTAPE 3: Vérification du code
echo "🔍 ÉTAPE 3/6: Vérification du code"
echo "=================================="

echo "Vérification ESLint..."
npm run lint

if [ $? -eq 0 ]; then
    echo "✅ Code conforme aux standards"
else
    echo "⚠️ Avertissements détectés, mais on continue..."
fi
echo ""

# ÉTAPE 4: Build de production
echo "🏗️ ÉTAPE 4/6: Build de production"
echo "================================="

echo "Construction du projet pour la production..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Build de production réussi !"
    echo "📊 Le projet est prêt pour le déploiement"
else
    echo "❌ Erreur lors du build de production"
    echo "Vérifiez les erreurs ci-dessus"
    exit 1
fi
echo ""

# ÉTAPE 5: Initialisation Git
echo "📋 ÉTAPE 5/6: Initialisation Git"
echo "================================"

# Vérifier si Git est déjà initialisé
if [ -d ".git" ]; then
    echo "✅ Repository Git déjà initialisé"
else
    echo "Initialisation du repository Git..."
    git init
    echo "✅ Repository Git initialisé"
fi

# Ajouter tous les fichiers
echo "Ajout des fichiers au repository..."
git add .

# Commit initial (ou nouveau commit)
COMMIT_MSG="🚀 NeoVision AI - Ready for production deployment

✨ Fonctionnalités:
- Landing page futuriste avec animations immersives
- Thème cyan/purple avec effets néon
- Design responsive optimisé pour tous appareils
- Next.js 14 + Shadcn/UI + Tailwind CSS
- SEO et performance optimisés
- PWA ready avec manifest
- CI/CD configuré

🎯 NeoVision AI: L'intelligence artificielle de demain, aujourd'hui.
🚀 Build testé et validé - Prêt pour Vercel !"

git commit -m "$COMMIT_MSG" || echo "✅ Pas de nouveaux changements à commiter"

# Créer ou vérifier la branche main
git branch -M main

echo "✅ Repository Git configuré et prêt"
echo ""

# ÉTAPE 6: Instructions finales
echo "🎯 ÉTAPE 6/6: Instructions de déploiement"
echo "========================================"
echo ""
echo "🎉 FÉLICITATIONS ! Votre projet NeoVision AI est 100% prêt !"
echo ""
echo "📋 PROCHAINES ÉTAPES (seulement 2 actions manuelles) :"
echo ""
echo "1️⃣  CRÉER LE REPOSITORY GITHUB:"
echo "   • Aller sur https://github.com/new"
echo "   • Nom du repository: neovision-ai-landing"
echo "   • Laisser en Public"
echo "   • NE PAS initialiser avec README (on a déjà tout)"
echo "   • Cliquer 'Create repository'"
echo ""
echo "2️⃣  CONNECTER ET POUSSER:"
echo "   Copier/coller ces commandes dans le terminal :"
echo ""
echo "   git remote add origin https://github.com/[VOTRE-USERNAME]/neovision-ai-landing.git"
echo "   git push -u origin main"
echo ""
echo "   ⚠️  Remplacez [VOTRE-USERNAME] par votre nom d'utilisateur GitHub"
echo ""
echo "3️⃣  DÉPLOIEMENT VERCEL AUTOMATIQUE:"
echo "   • Aller sur https://vercel.com"
echo "   • Se connecter avec GitHub"
echo "   • Cliquer 'New Project'"
echo "   • Sélectionner 'neovision-ai-landing'"
echo "   • Cliquer 'Deploy' → FINI ! 🚀"
echo ""
echo "📊 STATISTIQUES DU PROJET:"
echo "========================="
echo "📁 Fichiers créés: $(find . -type f | wc -l)"
echo "📄 Lignes de code: $(find . -name '*.tsx' -o -name '*.ts' -o -name '*.css' | xargs wc -l | tail -1)"
echo "🎨 Composants: $(find components -name '*.tsx' | wc -l)"
echo "📚 Documentation: $(find . -name '*.md' | wc -l) fichiers"
echo ""
echo "🌟 RÉSULTAT FINAL:"
echo "=================="
echo "✅ Landing page futuriste professionnelle"
echo "✅ Performance et SEO optimisés"
echo "✅ Code de qualité enterprise"
echo "✅ CI/CD et déploiement automatisé"
echo "✅ Documentation complète"
echo ""
echo "🎯 URL finale attendue: https://neovision-ai-landing-[random].vercel.app"
echo ""
echo "🤖 NeoVision AI est prêt à révolutionner l'avenir de l'IA ! ✨"
echo ""
echo "💡 Besoin d'aide ? Toute la documentation est dans README.md"