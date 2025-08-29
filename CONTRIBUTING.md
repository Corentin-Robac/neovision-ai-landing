# 🤝 Guide de Contribution - NeoVision AI

Merci de votre intérêt pour contribuer à NeoVision AI ! Ce guide vous aidera à démarrer.

## 🚀 Démarrage Rapide

1. **Fork** le repository
2. **Clone** votre fork localement
3. **Installer** les dépendances : `npm install`
4. **Lancer** le dev server : `npm run dev`
5. **Créer** une nouvelle branche : `git checkout -b feature/ma-fonctionnalite`

## 📋 Standards de Code

### Style de Code
- Utiliser TypeScript pour tous les nouveaux fichiers
- Suivre les conventions ESLint configurées
- Utiliser Tailwind CSS pour le styling
- Préférer les composants fonctionnels avec hooks

### Structure des Commits
```
type(scope): description courte

Description plus détaillée si nécessaire

- Changement 1
- Changement 2
```

**Types de commits:**
- `feat`: Nouvelle fonctionnalité
- `fix`: Correction de bug
- `docs`: Documentation
- `style`: Changements de style/format
- `refactor`: Refactorisation de code
- `perf`: Amélioration de performance
- `test`: Ajout/modification de tests

### Exemples:
```bash
git commit -m "feat(animations): ajouter effet parallax sur hero section"
git commit -m "fix(responsive): corriger affichage mobile des cartes"
git commit -m "docs(readme): mettre à jour guide d'installation"
```

## 🎨 Guidelines Design

### Thème Couleurs
- **Primary**: Cyan (#06b6d4)
- **Secondary**: Purple (#8b5cf6)
- **Background**: Black (#000000)
- **Text**: White/Gray variants

### Animations
- Utiliser les classes Tailwind existantes en priorité
- Les animations custom dans `globals.css`
- Durée recommandée: 300ms-600ms
- Easing: `ease-out` pour les interactions

### Responsive
- Mobile-first approach
- Breakpoints: `sm:`, `md:`, `lg:`, `xl:`
- Tester sur mobile, tablet, desktop

## 🔧 Développement

### Structure des Fichiers
```
app/
├── globals.css          # Styles globaux + animations
├── layout.tsx           # Layout principal
└── page.tsx            # Landing page

components/
├── ui/                 # Composants Shadcn/UI
└── custom/            # Composants personnalisés

lib/
└── utils.ts           # Utilitaires partagés
```

### Ajout de Nouvelles Fonctionnalités

1. **Créer une branche** : `git checkout -b feature/nom-feature`
2. **Développer** la fonctionnalité
3. **Tester** localement : `npm run dev`
4. **Build** : `npm run build`
5. **Lint** : `npm run lint`
6. **Commit** et **push**
7. **Créer une Pull Request**

### Composants UI

Utiliser Shadcn/UI en priorité :
```bash
# Ajouter un nouveau composant
npx shadcn@latest add [component-name]
```

Pour les composants personnalisés :
- Les placer dans `components/custom/`
- Utiliser TypeScript
- Exporter par défaut
- Documenter les props

## 🧪 Tests et Qualité

### Before Pull Request
- [ ] `npm run dev` fonctionne sans erreur
- [ ] `npm run build` réussit
- [ ] `npm run lint` passe sans erreur
- [ ] Test responsive sur mobile/desktop
- [ ] Performance acceptable (pas de lag)

### Performance Checklist
- Optimiser les images (utiliser Next/Image)
- Lazy loading pour les composants lourds
- Minimiser les re-renders inutiles
- Vérifier les Web Vitals

## 🔄 Pull Request Process

1. **Titre clair** : `feat: ajouter section témoignages clients`
2. **Description détaillée** avec captures d'écran si UI
3. **Lien** vers issue si applicable
4. **Checklist** des tests effectués

### Template PR
```markdown
## 📋 Résumé
Brève description des changements

## 🎯 Type de changement
- [ ] Nouvelle fonctionnalité
- [ ] Correction de bug
- [ ] Amélioration performance
- [ ] Documentation

## ✅ Tests
- [ ] Testé localement
- [ ] Responsive vérifié
- [ ] Build réussi
- [ ] Lint passé

## 📷 Captures d'écran
(Si changements UI)
```

## 🎯 Idées de Contributions

### Fonctionnalités Faciles
- Ajout d'animations CSS
- Amélioration responsive
- Nouvelles icônes Lucide
- Optimisation performance

### Fonctionnalités Moyennes
- Nouveau composant UI
- Section supplémentaire
- Formulaire de contact
- Mode sombre/clair

### Fonctionnalités Avancées
- Intégration CMS
- Système d'authentification
- Dashboard admin
- Analytics avancés

## 💡 Besoin d'Aide ?

- Consulter la [documentation Next.js](https://nextjs.org/docs)
- Explorer les [composants Shadcn/UI](https://ui.shadcn.com)
- Regarder les [exemples Tailwind](https://tailwindui.com)
- Ouvrir une [issue](https://github.com/[USERNAME]/neovision-ai-landing/issues) pour poser une question

## 🌟 Recognition

Tous les contributeurs seront ajoutés dans le README principal. Merci pour votre contribution à NeoVision AI !

---

**Happy Coding!** 🚀 Construisons ensemble l'IA de demain.