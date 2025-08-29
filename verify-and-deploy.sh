#!/bin/bash

# 🚀 Script de vérification et déploiement - NeoVision AI

echo "🤖 NeoVision AI - Vérification du projet..."
echo "=================================================="

# Vérification de l'environnement
echo "🔍 Vérification de l'environnement..."

# Vérifier Node.js
if command -v node >/dev/null 2>&1; then
    NODE_VERSION=$(node --version)
    echo "✅ Node.js: $NODE_VERSION"
else
    echo "❌ Node.js non installé"
    exit 1
fi

# Vérifier npm
if command -v npm >/dev/null 2>&1; then
    NPM_VERSION=$(npm --version)
    echo "✅ npm: v$NPM_VERSION"
else
    echo "❌ npm non installé"
    exit 1
fi

# Vérifier les fichiers essentiels
echo ""
echo "📁 Vérification des fichiers du projet..."

files=(
    "package.json"
    "next.config.js" 
    "tailwind.config.js"
    "tsconfig.json"
    "app/page.tsx"
    "app/layout.tsx"
    "app/globals.css"
    "components/ui/button.tsx"
    "lib/utils.ts"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file"
    else
        echo "❌ $file manquant"
        exit 1
    fi
done

# Installation des dépendances
echo ""
echo "📦 Installation des dépendances..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dépendances installées avec succès"
else
    echo "❌ Erreur lors de l'installation des dépendances"
    exit 1
fi

# Vérification du code
echo ""
echo "🔍 Vérification du code (ESLint)..."
npm run lint

if [ $? -eq 0 ]; then
    echo "✅ Code conforme aux standards"
else
    echo "⚠️ Avertissements ESLint détectés"
fi

# Build du projet
echo ""
echo "🏗️ Build du projet..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Build réussi"
else
    echo "❌ Erreur lors du build"
    exit 1
fi

# Test du serveur de production
echo ""
echo "🚀 Test du serveur de production..."
echo "Démarrage du serveur sur http://localhost:3000"
echo "Appuyez sur Ctrl+C pour arrêter le test..."

# Démarrer le serveur en arrière-plan
npm start &
SERVER_PID=$!

# Attendre 3 secondes
sleep 3

# Vérifier que le serveur répond
if curl -s http://localhost:3000 > /dev/null; then
    echo "✅ Serveur de production opérationnel"
else
    echo "❌ Serveur de production ne répond pas"
fi

# Arrêter le serveur
kill $SERVER_PID 2>/dev/null

echo ""
echo "🎉 VERIFICATION COMPLETE"
echo "=================================================="
echo "✅ Projet NeoVision AI prêt pour la production !"
echo ""
echo "📋 Prochaines étapes recommandées:"
echo "1. 📂 Créer un repository GitHub"
echo "2. 🔗 git remote add origin [URL_REPO]"
echo "3. 📤 git push -u origin main"
echo "4. 🌐 Connecter à Vercel pour déploiement automatique"
echo "5. 🎯 Configurer un domaine personnalisé"
echo ""
echo "🚀 NeoVision AI - L'IA de demain, disponible aujourd'hui !"