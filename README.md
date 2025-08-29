# 🚀 NeoVision AI - Landing Page Futuriste

Une landing page futuriste pour une plateforme d'intelligence artificielle révolutionnaire, construite avec Next.js et Shadcn/UI.

## 🎯 À propos de NeoVision AI

NeoVision AI est une plateforme d'intelligence artificielle de nouvelle génération qui transforme vos données en insights puissants grâce à des algorithmes neuraux quantiques et des technologies immersives.

## ✨ Fonctionnalités

- 🌟 **Design futuriste** avec thème sombre cyan/purple
- ⚡ **Animations dynamiques** (particules, néon, parallax, float)
- 🎨 **Effets visuels immersifs** (glassmorphisme, gradients, glow)
- 🖱️ **Interactions avancées** (curseur personnalisé, hover effects)
- 📱 **Responsive design** optimisé pour tous les appareils
- 🚀 **Performances optimales** avec Next.js 14

## 🛠️ Technologies

- **Framework:** Next.js 14 (App Router)
- **Styling:** Tailwind CSS + CSS personnalisé
- **UI Components:** Shadcn/UI
- **Icons:** Lucide React
- **Animations:** Tailwind Animate + CSS Keyframes
- **Deployment:** Vercel-ready

## 📦 Installation

```bash
# Cloner le projet
git clone [URL_REPO]
cd neovision-ai-landing

# Installer les dépendances
npm install

# Lancer en mode développement
npm run dev
```

Ouvrez [http://localhost:3000](http://localhost:3000) pour voir l'application.

## 📜 Scripts disponibles

- `npm run dev` - Serveur de développement
- `npm run build` - Build pour production
- `npm run start` - Serveur de production
- `npm run lint` - Vérification du code

## 🎨 Personnalisation

### Couleurs du thème
Le thème utilise principalement les couleurs cyan et purple. Vous pouvez modifier les couleurs dans :
- `app/globals.css` - Variables CSS et animations
- `tailwind.config.js` - Configuration Tailwind
- Composants individuels

### Contenu
Modifiez le contenu dans `app/page.tsx` :
- Textes de la landing page
- Fonctionnalités présentées
- Animations et interactions

## 🚀 Déploiement

### Déploiement automatique avec Vercel
1. Connectez votre repository à [Vercel](https://vercel.com)
2. Vercel détecte automatiquement Next.js
3. Déploiement automatique à chaque push sur `main`

### Déploiement manuel
```bash
# Build du projet
npm run build

# Avec Vercel CLI
npm i -g vercel
vercel --prod

# Ou utilisez le script
chmod +x deploy.sh
./deploy.sh
```

## 📁 Structure du projet

```
neovision-ai-landing/
├── app/
│   ├── globals.css       # Styles + animations personnalisées
│   ├── layout.tsx        # Layout principal + metadata
│   └── page.tsx          # Landing page principale
├── components/
│   └── ui/
│       └── button.tsx    # Composant Button avec variant "neon"
├── lib/
│   └── utils.ts          # Utilitaires (fonction cn)
├── .github/workflows/    # CI/CD GitHub Actions
├── .vercel/             # Configuration Vercel
└── configuration files   # Next.js, Tailwind, TypeScript, etc.
```

## 🎯 Sections de la Landing Page

### 1. Hero Section
- Titre dynamique "NEOVISION AI"
- Animation de particules en arrière-plan
- Curseur personnalisé avec effet glow
- Boutons CTA avec animations

### 2. Capacités Révolutionnaires
- 3 cartes avec effets glassmorphisme
- IA Hyper-Rapide, Sécurité Totale, Auto-Apprentissage
- Animations de flottement décalées

### 3. Technologie Immersive
- Section avec grid responsive
- Liste des technologies avec points lumineux
- Panneau de contrôle animé "NEOVISION ACTIF"

### 4. Call-to-Action Final
- Section avec grille cyber en arrière-plan
- Bouton principal avec effet néon

## 🔧 Personnalisation Avancée

### Ajouter de nouvelles animations
Modifiez `tailwind.config.js` pour ajouter des keyframes personnalisées :

```javascript
keyframes: {
  "custom-animation": {
    "0%": { /* styles */ },
    "100%": { /* styles */ }
  }
}
```

### Modifier les effets de particules
Dans `app/page.tsx`, ajustez les paramètres du `ParticleField` :
- Nombre de particules (actuellement 50)
- Tailles et positions aléatoires
- Durée et délais d'animation

### Personnaliser les couleurs néon
Dans `app/globals.css`, modifiez les variables CSS pour les effets néon :
- `.neon-text` pour les textes brillants
- `@keyframes pulse-neon` pour les pulsations
- `.gradient-border` pour les bordures

## 🌟 Fonctionnalités Interactives

- **Parallax Scroll** : Arrière-plan qui bouge avec le scroll
- **Mouse Follower** : Curseur personnalisé qui suit la souris
- **Hover Effects** : Effets au survol des boutons et cartes
- **Animations on Scroll** : Éléments qui apparaissent progressivement
- **Responsive Animations** : S'adaptent à la taille d'écran

## 🔍 SEO et Performance

### Metadata optimisé
- Titre et description personnalisés
- Open Graph tags pour les réseaux sociaux
- Keywords pertinents pour l'IA

### Optimisations Performance
- Next.js App Router pour des performances optimales
- Composants optimisés avec React
- Images et assets optimisés automatiquement
- CSS critical path optimisé

## 🚀 Prochaines Étapes

1. **Repository GitHub** : Créer et pousser le code
2. **Déploiement Vercel** : Connecter pour déploiement automatique
3. **Domaine personnalisé** : Configurer votre nom de domaine
4. **Analytics** : Ajouter Google Analytics ou Vercel Analytics
5. **Contact Form** : Intégrer un formulaire de contact
6. **Blog** : Ajouter une section blog/actualités IA

## 📞 Support

Pour toute question ou personnalisation, n'hésitez pas à :
- Consulter la documentation Next.js
- Explorer les composants Shadcn/UI
- Tester les animations en local

---

**NeoVision AI** - L'intelligence artificielle de demain, aujourd'hui. 🤖✨