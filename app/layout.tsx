import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'NeoVision AI - Intelligence Artificielle',
  description: 'Découvrez NeoVision, la plateforme d\'IA qui transforme vos données en insights puissants.',
  keywords: ['Intelligence Artificielle', 'IA', 'Machine Learning', 'Data Science'],
  authors: [{ name: 'NeoVision Team' }],
  openGraph: {
    title: 'NeoVision AI - Intelligence Artificielle',
    description: 'La plateforme d\'IA qui révolutionne votre approche des données',
    type: 'website',
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="fr">
      <body className={inter.className}>{children}</body>
    </html>
  )
}