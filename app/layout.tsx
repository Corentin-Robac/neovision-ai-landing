import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'NeoVision AI - Forge the Future with Intelligence',
  description: 'Découvrez NeoVision, la plateforme d\'IA révolutionnaire qui transforme vos données en insights puissants. L\'avenir de l\'intelligence artificielle commence ici.',
  keywords: ['Intelligence Artificielle', 'IA', 'Machine Learning', 'Deep Learning', 'Futur', 'Technologie', 'Innovation', 'Data Science'],
  authors: [{ name: 'NeoVision Team' }],
  creator: 'NeoVision AI',
  publisher: 'NeoVision AI',
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
      'max-video-preview': -1,
      'max-image-preview': 'large',
      'max-snippet': -1,
    },
  },
  openGraph: {
    type: 'website',
    locale: 'fr_FR',
    alternateLocale: 'en_US',
    url: 'https://neovision-ai.vercel.app',
    title: 'NeoVision AI - L\'Intelligence Artificielle de Demain',
    description: 'Plateforme d\'IA révolutionnaire avec algorithmes neuraux quantiques et technologies immersives.',
    siteName: 'NeoVision AI',
    images: [
      {
        url: '/og-image.png',
        width: 1200,
        height: 630,
        alt: 'NeoVision AI - Plateforme Intelligence Artificielle',
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    site: '@neovisionai',
    creator: '@neovisionai',
    title: 'NeoVision AI - L\'IA de Demain',
    description: 'Découvrez la plateforme d\'intelligence artificielle qui révolutionne l\'analyse de données.',
    images: ['/og-image.png'],
  },
  alternates: {
    canonical: 'https://neovision-ai.vercel.app',
    languages: {
      'fr-FR': 'https://neovision-ai.vercel.app/fr',
      'en-US': 'https://neovision-ai.vercel.app/en',
    },
  },
  category: 'Technology',
  classification: 'Business',
  verification: {
    google: 'verification-token-google',
    other: {
      me: ['contact@neovision.ai'],
    },
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="fr" className="dark">
      <head>
        <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
        <link rel="icon" type="image/png" href="/favicon.png" />
        <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
        <link rel="manifest" href="/manifest.json" />
        <meta name="theme-color" content="#06b6d4" />
        <meta name="color-scheme" content="dark" />
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
        
        {/* Preconnect pour performance */}
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        
        {/* Schema.org markup pour SEO */}
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{
            __html: JSON.stringify({
              '@context': 'https://schema.org',
              '@type': 'Organization',
              name: 'NeoVision AI',
              description: 'Plateforme d\'intelligence artificielle révolutionnaire',
              url: 'https://neovision-ai.vercel.app',
              logo: 'https://neovision-ai.vercel.app/logo.png',
              foundingDate: '2025',
              industry: 'Artificial Intelligence',
              sameAs: [
                'https://twitter.com/neovisionai',
                'https://linkedin.com/company/neovisionai',
              ],
            }),
          }}
        />
      </head>
      <body className={inter.className}>
        {children}
        
        {/* Analytics Script (à configurer) */}
        {process.env.NODE_ENV === 'production' && (
          <>
            <script
              dangerouslySetInnerHTML={{
                __html: `
                  // Google Analytics ou autre analytics
                  console.log('🚀 NeoVision AI - Analytics loaded');
                `,
              }}
            />
          </>
        )}
      </body>
    </html>
  )
}