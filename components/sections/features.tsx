import { Card, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Brain, Zap, Shield, Sparkles } from "lucide-react"

const features = [
  {
    icon: Brain,
    title: "Analyse prédictive",
    description: "Transformez vos données en décisions éclairées.",
  },
  {
    icon: Zap,
    title: "Automatisation rapide",
    description: "Optimisez vos workflows grâce à l'IA.",
  },
  {
    icon: Shield,
    title: "Sécurité avancée",
    description: "Protégez vos informations sensibles.",
  },
  {
    icon: Sparkles,
    title: "Interface intuitive",
    description: "Une expérience fluide et moderne.",
  },
]

export function Features() {
  return (
    <section className="py-20 px-4">
      <div className="container mx-auto max-w-6xl">
        <h2 className="text-3xl lg:text-4xl font-bold text-center mb-12">
          Fonctionnalités clés
        </h2>
        <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {features.map((feature, idx) => (
            <Card key={idx} className="text-center">
              <CardHeader className="items-center">
                <feature.icon className="h-10 w-10 mb-4 text-primary" />
                <CardTitle>{feature.title}</CardTitle>
                <CardDescription>{feature.description}</CardDescription>
              </CardHeader>
            </Card>
          ))}
        </div>
      </div>
    </section>
  )
}
