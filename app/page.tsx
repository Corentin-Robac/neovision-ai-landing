'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { ChevronDown, Rocket, Shield, Zap, Star } from 'lucide-react'

export default function FuturisticLanding() {
  const [mousePosition, setMousePosition] = useState({ x: 0, y: 0 })
  const [scrollY, setScrollY] = useState(0)

  useEffect(() => {
    const handleMouseMove = (e: MouseEvent) => {
      setMousePosition({ x: e.clientX, y: e.clientY })
    }

    const handleScroll = () => {
      setScrollY(window.scrollY)
    }

    window.addEventListener('mousemove', handleMouseMove)
    window.addEventListener('scroll', handleScroll)

    return () => {
      window.removeEventListener('mousemove', handleMouseMove)
      window.removeEventListener('scroll', handleScroll)
    }
  }, [])

  const ParticleField = () => {
    const particles = Array.from({ length: 50 }, (_, i) => (
      <div
        key={i}
        className="particle"
        style={{
          left: `${Math.random() * 100}%`,
          top: `${Math.random() * 100}%`,
          width: `${Math.random() * 4 + 2}px`,
          height: `${Math.random() * 4 + 2}px`,
          animationDelay: `${Math.random() * 6}s`,
          animationDuration: `${Math.random() * 3 + 3}s`,
        }}
      />
    ))
    return <div className="fixed inset-0 pointer-events-none z-0">{particles}</div>
  }

  const MouseFollower = () => (
    <div
      className="fixed pointer-events-none z-10 w-8 h-8 border border-cyan-500 rounded-full opacity-50 transition-all duration-300 ease-out"
      style={{
        left: mousePosition.x - 16,
        top: mousePosition.y - 16,
        boxShadow: '0 0 20px rgba(6, 182, 212, 0.5)',
      }}
    />
  )

  return (
    <main className="min-h-screen bg-black text-white overflow-x-hidden">
      <ParticleField />
      <MouseFollower />
      
      {/* Hero Section */}
      <section className="relative min-h-screen flex items-center justify-center cyber-grid">
        <div
          className="absolute inset-0 bg-gradient-to-br from-cyan-900/20 to-purple-900/20"
          style={{
            transform: `translateY(${scrollY * 0.5}px)`,
          }}
        />
        
        <div className="relative z-20 text-center px-6 max-w-6xl mx-auto">
          <h1 className="text-6xl md:text-8xl font-bold mb-8 neon-text animate-fade-in">
            NEO
            <span className="text-transparent bg-gradient-to-r from-cyan-400 to-blue-600 bg-clip-text animate-glow">
              VISION
            </span>
            <br />
            <span className="text-4xl md:text-6xl text-purple-400">
              AI
            </span>
          </h1>
          
          <p className="text-xl md:text-2xl mb-12 opacity-80 max-w-3xl mx-auto animate-fade-in" style={{ animationDelay: '0.3s' }}>
            Forgez l'avenir avec l'intelligence artificielle révolutionnaire. 
            Transformez vos données en insights puissants grâce à notre plateforme IA de nouvelle génération.
          </p>
          
          <div className="flex flex-col sm:flex-row gap-6 justify-center animate-fade-in" style={{ animationDelay: '0.6s' }}>
            <Button variant="neon" size="lg" className="text-lg px-8 py-4 h-auto">
              <Rocket className="mr-2 h-5 w-5" />
              Commencer l'Exploration
            </Button>
            <Button variant="outline" size="lg" className="text-lg px-8 py-4 h-auto border-cyan-500 hover:bg-cyan-500/10">
              Découvrir l'IA
            </Button>
          </div>
        </div>
        
        <div className="absolute bottom-8 left-1/2 transform -translate-x-1/2 animate-bounce">
          <ChevronDown className="h-8 w-8 text-cyan-400" />
        </div>
      </section>

      {/* Features Section */}
      <section className="py-24 px-6 relative">
        <div className="max-w-7xl mx-auto">
          <h2 className="text-5xl font-bold text-center mb-16 neon-text">
            Capacités Révolutionnaires
          </h2>
          
          <div className="grid md:grid-cols-3 gap-8">
            {[
              {
                icon: <Zap className="h-12 w-12" />,
                title: "IA Hyper-Rapide",
                description: "Traitement en temps réel grâce aux algorithmes neuraux quantiques de dernière génération"
              },
              {
                icon: <Shield className="h-12 w-12" />,
                title: "Sécurité Totale",
                description: "Protection militaire avec chiffrement blockchain et authentification biométrique"
              },
              {
                icon: <Star className="h-12 w-12" />,
                title: "Auto-Apprentissage",
                description: "Intelligence qui évolue et s'adapte à vos besoins en continu grâce au deep learning"
              }
            ].map((feature, index) => (
              <div
                key={index}
                className="gradient-border animate-fade-in animate-float"
                style={{ 
                  animationDelay: `${index * 0.2}s`,
                  animationDuration: `${3 + index * 0.5}s`
                }}
              >
                <div className="gradient-border-inner text-center h-full">
                  <div className="text-cyan-400 mb-6 flex justify-center">
                    {feature.icon}
                  </div>
                  <h3 className="text-2xl font-semibold mb-4 neon-text">
                    {feature.title}
                  </h3>
                  <p className="text-gray-300 leading-relaxed">
                    {feature.description}
                  </p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Tech Showcase */}
      <section className="py-24 px-6 bg-gradient-to-r from-cyan-950/30 to-purple-950/30">
        <div className="max-w-7xl mx-auto">
          <div className="grid lg:grid-cols-2 gap-16 items-center">
            <div>
              <h2 className="text-4xl font-bold mb-8 neon-text">
                Technologie Immersive
              </h2>
              <p className="text-xl mb-8 text-gray-300">
                Plongez dans un univers où les frontières digitales s'effacent. NeoVision fusionne 
                intelligence artificielle avancée et interface intuitive pour créer des expériences 
                qui redéfinissent le possible.
              </p>
              <div className="space-y-4">
                {[
                  "Processeurs neuraux quantiques",
                  "Réseaux de neurones auto-évolutifs", 
                  "Interface holographique adaptative",
                  "Authentification conscience-machine"
                ].map((tech, index) => (
                  <div key={index} className="flex items-center space-x-3">
                    <div className="w-2 h-2 bg-cyan-400 rounded-full animate-glow" />
                    <span className="text-gray-300">{tech}</span>
                  </div>
                ))}
              </div>
            </div>
            
            <div className="relative">
              <div className="bg-gradient-to-br from-cyan-600/20 to-purple-600/20 rounded-lg p-8 backdrop-blur-sm border border-cyan-500/30">
                <div className="grid grid-cols-2 gap-4 mb-6">
                  {Array.from({ length: 4 }, (_, i) => (
                    <div
                      key={i}
                      className="h-20 bg-gradient-to-br from-cyan-500/30 to-purple-500/30 rounded-lg animate-glow"
                      style={{ animationDelay: `${i * 0.5}s` }}
                    />
                  ))}
                </div>
                <div className="text-center">
                  <div className="text-2xl font-mono text-cyan-400 animate-glow">
                    NEOVISION ACTIF
                  </div>
                  <div className="text-sm text-gray-400 mt-2">
                    Tous les systèmes opérationnels
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-24 px-6 relative cyber-grid">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-5xl font-bold mb-8 neon-text">
            Prêt à Façonner l'Avenir ?
          </h2>
          <p className="text-xl mb-12 text-gray-300">
            Rejoignez les milliers d'innovateurs qui construisent déjà demain avec NeoVision AI.
          </p>
          <Button variant="neon" size="lg" className="text-xl px-12 py-6 h-auto">
            <Rocket className="mr-3 h-6 w-6" />
            Débuter l'Aventure
          </Button>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-12 px-6 border-t border-cyan-500/30">
        <div className="max-w-7xl mx-auto text-center">
          <p className="text-gray-400">
            © 2025 NeoVision AI. L'intelligence artificielle de demain, aujourd'hui.
          </p>
        </div>
      </footer>
    </main>
  )
}