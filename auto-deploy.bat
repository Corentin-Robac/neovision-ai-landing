@echo off
setlocal EnableDelayedExpansion

echo.
echo 🤖 =====================================
echo    NEOVISION AI - AUTO DEPLOYMENT
echo 🤖 =====================================
echo.

:: Naviguer vers le répertoire du projet
cd /d "C:\Users\coren\Documents\Projets\claude\futuristic-landing"
if %errorlevel% neq 0 (
    echo ❌ Impossible d'accéder au dossier du projet
    pause
    exit /b 1
)

echo 📂 Répertoire de travail: %CD%
echo.

:: ÉTAPE 1: Vérification de l'environnement
echo 🔍 ÉTAPE 1/6: Vérification de l'environnement
echo =============================================

:: Vérifier Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js non trouvé. Installez Node.js 18+ depuis https://nodejs.org
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
echo ✅ Node.js: !NODE_VERSION!

:: Vérifier npm
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ npm non trouvé
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('npm --version') do set NPM_VERSION=%%i
echo ✅ npm: v!NPM_VERSION!

:: Vérifier Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git non trouvé. Installez Git depuis https://git-scm.com
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('git --version') do set GIT_VERSION=%%i
echo ✅ Git: !GIT_VERSION!
echo.

:: ÉTAPE 2: Installation des dépendances
echo 📦 ÉTAPE 2/6: Installation des dépendances
echo ==========================================
echo Installation en cours...

call npm install
if %errorlevel% neq 0 (
    echo ❌ Erreur lors de l'installation des dépendances
    pause
    exit /b 1
)

echo ✅ Toutes les dépendances installées avec succès
echo.

:: ÉTAPE 3: Vérification du code
echo 🔍 ÉTAPE 3/6: Vérification du code
echo ==================================

echo Vérification ESLint...
call npm run lint
if %errorlevel% neq 0 (
    echo ⚠️ Avertissements détectés, mais on continue...
) else (
    echo ✅ Code conforme aux standards
)
echo.

:: ÉTAPE 4: Build de production
echo 🏗️ ÉTAPE 4/6: Build de production
echo =================================

echo Construction du projet pour la production...
call npm run build
if %errorlevel% neq 0 (
    echo ❌ Erreur lors du build de production
    echo Vérifiez les erreurs ci-dessus
    pause
    exit /b 1
)

echo ✅ Build de production réussi !
echo 📊 Le projet est prêt pour le déploiement
echo.

:: ÉTAPE 5: Initialisation Git
echo 📋 ÉTAPE 5/6: Initialisation Git
echo ================================

:: Vérifier si Git est déjà initialisé
if exist ".git" (
    echo ✅ Repository Git déjà initialisé
) else (
    echo Initialisation du repository Git...
    git init
    echo ✅ Repository Git initialisé
)

:: Ajouter tous les fichiers
echo Ajout des fichiers au repository...
git add .

:: Commit initial
git commit -m "🚀 NeoVision AI - Ready for production deployment" 2>nul
if %errorlevel% neq 0 (
    echo ✅ Pas de nouveaux changements à commiter
) else (
    echo ✅ Nouveaux changements commitées
)

:: Créer la branche main
git branch -M main

echo ✅ Repository Git configuré et prêt
echo.

:: ÉTAPE 6: Instructions finales
echo 🎯 ÉTAPE 6/6: Instructions de déploiement
echo ========================================
echo.
echo 🎉 FÉLICITATIONS ! Votre projet NeoVision AI est 100%% prêt !
echo.
echo 📋 PROCHAINES ÉTAPES (seulement 2 actions manuelles) :
echo.
echo 1️⃣  CRÉER LE REPOSITORY GITHUB:
echo    • Aller sur https://github.com/new
echo    • Nom du repository: neovision-ai-landing
echo    • Laisser en Public
echo    • NE PAS initialiser avec README (on a déjà tout)
echo    • Cliquer 'Create repository'
echo.
echo 2️⃣  CONNECTER ET POUSSER:
echo    Copier/coller ces commandes dans le terminal :
echo.
echo    git remote add origin https://github.com/[VOTRE-USERNAME]/neovision-ai-landing.git
echo    git push -u origin main
echo.
echo    ⚠️  Remplacez [VOTRE-USERNAME] par votre nom d'utilisateur GitHub
echo.
echo 3️⃣  DÉPLOIEMENT VERCEL AUTOMATIQUE:
echo    • Aller sur https://vercel.com
echo    • Se connecter avec GitHub
echo    • Cliquer 'New Project'
echo    • Sélectionner 'neovision-ai-landing'
echo    • Cliquer 'Deploy' → FINI ! 🚀
echo.
echo 🤖 NeoVision AI est prêt à révolutionner l'avenir de l'IA ! ✨
echo.
echo Appuyez sur une touche pour fermer...
pause >nul