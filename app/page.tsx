import { Button } from '@/components/ui/button'
import { ArrowRight, ArrowDown, Sparkles, Zap, Users, MessageSquare, Palette, Code, BarChart3, Megaphone, Brain, Target, Star, ExternalLink, Github, Linkedin, Mail, Calendar, ChevronRight } from 'lucide-react'

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-background">
      {/* Hero Section */}
      <section className="py-20 lg:py-32 px-4 relative overflow-hidden">
        <div className="container mx-auto max-w-7xl">
          <div className="grid lg:grid-cols-2 gap-12 items-center">
            <div className="space-y-8">
              <div className="space-y-4">
                <div className="inline-flex items-center space-x-2 bg-primary/10 text-primary px-3 py-1 rounded-full text-sm font-medium">
                  <Sparkles className="h-4 w-4" />
                  <span>Design × Code × IA</span>
                </div>
                <h1 className="text-4xl lg:text-6xl font-bold tracking-tight leading-tight">
                  J'assemble design, code & IA pour{' '}
                  <span className="text-primary">transformer des idées</span>{' '}
                  en produits.
                </h1>
                <p className="text-xl text-muted-foreground max-w-xl">
                  Créateur digital, j'explore les frontières entre créativité humaine et intelligence artificielle pour construire l'avenir du web.
                </p>
              </div>
              
              <div className="flex flex-col sm:flex-row gap-4">
                <Button size="lg" className="text-base group">
                  Découvrir mes projets
                  <ArrowDown className="ml-2 h-4 w-4 group-hover:translate-y-1 transition-transform" />
                </Button>
                <Button variant="outline" size="lg" className="text-base">
                  Explorer mes ressources IA
                  <ArrowRight className="ml-2 h-4 w-4" />
                </Button>
              </div>

              <div className="flex items-center space-x-6 pt-4">
                <div className="flex -space-x-2">
                  <div className="w-8 h-8 rounded-full bg-blue-500 border-2 border-background"></div>
                  <div className="w-8 h-8 rounded-full bg-green-500 border-2 border-background"></div>
                  <div className="w-8 h-8 rounded-full bg-purple-500 border-2 border-background"></div>
                  <div className="w-8 h-8 rounded-full bg-orange-500 border-2 border-background"></div>
                </div>
                <p className="text-sm text-muted-foreground">Approuvé par 200+ créateurs</p>
              </div>
            </div>

            {/* Dashboard Mockup Visuel */}
            <div className="relative">
              <div className="bg-card border rounded-2xl p-6 shadow-2xl">
                <div className="flex items-center justify-between mb-6">
                  <div className="flex items-center space-x-2">
                    <div className="w-3 h-3 bg-red-500 rounded-full"></div>
                    <div className="w-3 h-3 bg-yellow-500 rounded-full"></div>
                    <div className="w-3 h-3 bg-green-500 rounded-full"></div>
                  </div>
                  <div className="text-sm text-muted-foreground">Creative Dashboard</div>
                </div>
                
                <div className="space-y-4">
                  <div className="flex items-center justify-between p-3 bg-muted/50 rounded-lg">
                    <div className="flex items-center space-x-3">
                      <Brain className="h-5 w-5 text-blue-500" />
                      <span className="font-medium">AI Assistant</span>
                    </div>
                    <div className="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
                  </div>
                  
                  <div className="grid grid-cols-2 gap-3">
                    <div className="p-3 bg-gradient-to-br from-purple-50 to-purple-100 rounded-lg border">
                      <Palette className="h-5 w-5 text-purple-600 mb-2" />
                      <div className="text-sm font-medium">Design</div>
                      <div className="text-xs text-muted-foreground">12 projets</div>
                    </div>
                    <div className="p-3 bg-gradient-to-br from-blue-50 to-blue-100 rounded-lg border">
                      <Code className="h-5 w-5 text-blue-600 mb-2" />
                      <div className="text-sm font-medium">Développement</div>
                      <div className="text-xs text-muted-foreground">8 apps</div>
                    </div>
                  </div>
                  
                  <div className="flex items-center space-x-2 p-2 bg-primary/10 rounded-lg">
                    <Zap className="h-4 w-4 text-primary" />
                    <span className="text-sm">Workflow automatisé actif</span>
                  </div>
                </div>
              </div>

              {/* Cartes flottantes */}
              <div className="absolute -top-4 -right-4 bg-card border rounded-lg p-3 shadow-lg animate-pulse">
                <div className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-green-500 rounded-full"></div>
                  <span className="text-xs">IA Active</span>
                </div>
              </div>

              <div className="absolute -bottom-6 -left-6 bg-card border rounded-lg p-3 shadow-lg">
                <div className="text-xs text-muted-foreground">Dernière création</div>
                <div className="font-medium text-sm">SaaS Dashboard</div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Final */}
      <section className="py-20 px-4 bg-muted/30">
        <div className="container mx-auto max-w-4xl text-center">
          <h2 className="text-3xl lg:text-4xl font-bold mb-4">
            Prêt à collaborer ?
          </h2>
          <p className="text-xl text-muted-foreground max-w-2xl mx-auto mb-8">
            Que vous soyez recruteur, entrepreneur ou simplement curieux, 
            j'ai hâte d'échanger avec vous !
          </p>
          <Button size="lg" className="text-base">
            <MessageSquare className="mr-2 h-4 w-4" />
            Commencer la conversation
          </Button>
        </div>
      </section>

      {/* Footer */}
      <footer className="border-t py-8 px-4">
        <div className="container mx-auto max-w-6xl text-center text-muted-foreground">
          <p>© 2025 Corentin Robac. Fait avec ❤️ et beaucoup d'IA.</p>
        </div>
      </footer>
    </div>
  )
}