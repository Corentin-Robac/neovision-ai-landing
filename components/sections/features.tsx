import { Card, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Sparkles, Bot, ClipboardList, Megaphone } from "lucide-react"

const features = [
  {
    icon: Sparkles,
    title: "Design & UX",
    description: "Expériences élégantes et intuitives.",
  },
  {
    icon: Bot,
    title: "Développement & Automations",
    description: "Des sites et workflows boostés à l’IA.",
  },
  {
    icon: ClipboardList,
    title: "Stratégie & gestion de projet",
    description: "Vision produit, organisation, efficacité.",
  },
  {
    icon: Megaphone,
    title: "Communication & marketing",
    description: "Du branding à la croissance organique.",
  },
]

export function Features() {
  return (
    <section className="py-20 px-4">
      <div className="container mx-auto max-w-6xl">
        <h2 className="text-3xl lg:text-4xl font-bold text-center mb-12">
          Compétences
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
