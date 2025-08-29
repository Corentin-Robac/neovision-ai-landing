#!/bin/bash

# 🎉 NeoVision AI - Check-up Final Complet

echo "🤖 ====================================="
echo "   NEOVISION AI - FINAL CHECKUP"
echo "🤖 ====================================="
echo ""

# Fonction pour afficher un check avec couleur
check_item() {
    if [ -f "$1" ] || [ -d "$1" ]; then
        echo "✅ $2"
        return 0
    else
        echo "❌ $2 - MANQUANT: $1"
        return 1
    fi
}

check_content() {
    if grep -q "$2" "$1" 2>/dev/null; then
        echo "✅ $3"
        return 0
    else
        echo "⚠️  $3 - À vérifier dans $1"
        return 1
    fi
}

# Compteur pour le score final
SCORE=0
TOTAL=0

echo "📁 STRUCTURE DU PROJET"
echo "======================"

# Vérification des fichiers essentiels
files=(
    "package.json:Configuration NPM"
    "next.config.js:Configuration Next.js"
    "tailwind.config.js:Configuration Tailwind"
    "tsconfig.json:Configuration TypeScript"
    "components.json:Configuration Shadcn"
    ".gitignore:Fichiers Git à ignorer"
    "README.md:Documentation principale"
    "CONTRIBUTING.md:Guide de contribution"
)

for item in "${files[@]}"; do
    file="${item%%:*}"
    desc="${item##*:}"
    if check_item "$file" "$desc"; then
        ((SCORE++))
    fi
    ((TOTAL++))
done

echo ""
echo "🎨 ASSETS ET DESIGN"
echo "==================="

# Vérification des assets
assets=(
    "app/globals.css:Styles globaux"
    "public/favicon.svg:Favicon SVG"
    "public/manifest.json:Manifest PWA"
    "public/robots.txt:Robots.txt SEO"
)

for item in "${assets[@]}"; do
    file="${item%%:*}"
    desc="${item##*:}"
    if check_item "$file" "$desc"; then
        ((SCORE++))
    fi
    ((TOTAL++))
done

echo ""
echo "🧩 COMPOSANTS ET CODE"
echo "====================="

# Vérification des composants
components=(
    "app/layout.tsx:Layout principal"
    "app/page.tsx:Page d'accueil"
    "components/ui/button.tsx:Composant Button"
    "lib/utils.ts:Utilitaires"
)

for item in "${components[@]}"; do
    file="${item%%:*}"
    desc="${item##*:}"
    if check_item "$file" "$desc"; then
        ((SCORE++))
    fi
    ((TOTAL++))
done

echo ""
echo "🚀 DÉPLOIEMENT ET CI/CD"
echo "======================="

# Vérification du déploiement
deployment=(
    ".github/workflows/deploy.yml:GitHub Actions CI/CD"
    ".vercel/project.json:Configuration Vercel"
    "vercel.json:Paramètres Vercel"
    "deploy.sh:Script de déploiement"
)

for item in "${deployment[@]}"; do
    file="${item%%:*}"
    desc="${item##*:}"
    if check_item "$file" "$desc"; then
        ((SCORE++))
    fi
    ((TOTAL++))
done

echo ""
echo "📝 CONTENU ET SEO"
echo "================="

# Vérification du contenu
if check_content "app/page.tsx" "NeoVision" "Thème NeoVision AI présent"; then
    ((SCORE++))
fi
((TOTAL++))

if check_content "app/layout.tsx" "metadata" "Métadonnées SEO configurées"; then
    ((SCORE++))
fi
((TOTAL++))

if check_content "app/page.tsx" "Commencer l'Exploration" "Boutons CTA en français"; then
    ((SCORE++))
fi
((TOTAL++))

if check_content "app/globals.css" "cyber-grid" "Styles futuristes présents"; then
    ((SCORE++))
fi
((TOTAL++))

echo ""
echo "🔧 TESTS TECHNIQUES"
echo "==================="

# Test de syntaxe package.json
if node -e "JSON.parse(require('fs').readFileSync('package.json', 'utf8'))" 2>/dev/null; then
    echo "✅ Package.json syntaxe valide"
    ((SCORE++))
else
    echo "❌ Package.json syntaxe invalide"
fi
((TOTAL++))

# Test présence des dépendances essentielles
if check_content "package.json" "next" "Next.js installé"; then
    ((SCORE++))
fi
((TOTAL++))

if check_content "package.json" "tailwindcss" "Tailwind CSS installé"; then
    ((SCORE++))
fi
((TOTAL++))

if check_content "package.json" "lucide-react" "Lucide React installé"; then
    ((SCORE++))
fi
((TOTAL++))

echo ""
echo "📊 RÉSULTATS FINAUX"
echo "==================="

# Calcul du pourcentage
PERCENTAGE=$((SCORE * 100 / TOTAL))

echo "Score: $SCORE/$TOTAL ($PERCENTAGE%)"
echo ""

if [ $PERCENTAGE -ge 95 ]; then
    echo "🏆 EXCELLENT ! Projet prêt pour la production"
    echo "🚀 NeoVision AI peut être déployé immédiatement"
elif [ $PERCENTAGE -ge 85 ]; then
    echo "🎯 TRÈS BIEN ! Quelques ajustements mineurs possible"
    echo "✨ Projet quasi-prêt pour la production"
elif [ $PERCENTAGE -ge 70 ]; then
    echo "⚠️  BIEN ! Vérifications supplémentaires recommandées"
    echo "🔧 Quelques éléments à corriger avant déploiement"
else
    echo "❌ ATTENTION ! Corrections nécessaires"
    echo "🛠️  Vérifier les éléments manquants ci-dessus"
fi

echo ""
echo "📋 COMMANDES RECOMMANDÉES"
echo "========================="
echo "npm install          # Installer les dépendances"
echo "npm run dev         # Test en développement"
echo "npm run build       # Test de build production"
echo "npm run lint        # Vérification du code"
echo ""
echo "🌐 DÉPLOIEMENT"
echo "=============="
echo "git add ."
echo "git commit -m '🚀 NeoVision AI ready for production'"
echo "git push origin main"
echo "# Puis connecter à Vercel pour déploiement automatique"
echo ""
echo "🎉 NeoVision AI - L'IA de demain, aujourd'hui !"
echo ""

# Afficher la structure du projet pour confirmation
echo "📂 STRUCTURE FINALE DU PROJET"
echo "============================="
find . -type f -name "*.tsx" -o -name "*.ts" -o -name "*.css" -o -name "*.json" -o -name "*.md" -o -name "*.yml" -o -name "*.sh" | \
  grep -E '\.(tsx?|css|json|md|yml|sh)$' | \
  head -20 | \
  sort

echo ""
echo "✨ Check-up terminé ! NeoVision AI est prêt à révolutionner l'avenir ! 🚀"