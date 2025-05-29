// src/app/(frontend)/case-studies/page.tsx
import type { Metadata } from 'next'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import Link from 'next/link';

export default async function Page() {
  const payload = await getPayload({ config: configPromise, importMap: {} })

  const caseStudies = await payload.find({
    collection: 'case-studies',
    limit: 12,
    where: {
      _status: {
        equals: 'published',
      },
    },
  })

  const sectionRootUrl = '/case-studies'
  return (
    <div className="container py-24">
      <h1 className="text-4xl font-bold mb-8">Case Studies</h1>
      <p className="text-lg text-gray-600 mb-12">
        Explore our portfolio of successful projects.
      </p>
      
      <div className="grid gap-8">
        {caseStudies.docs.map((study: any) => {
          // console.log('study.slug', study.slug)
          return (<div key={study.id} className="border rounded-lg p-6">
              <Link href={`${sectionRootUrl}/${study.slug}`}>
            <h2 className="text-2xl font-semibold mb-4">
              {study.title}
              </h2>
              </Link>
            {study.excerpt && (
              <p className="text-gray-600">{study.excerpt}</p>
            )}
          </div>)
        })}
      </div>
    </div>
  )
}

export function generateMetadata(): Metadata {
  return {
    title: 'Case Studies',
    description: 'Explore our portfolio of successful projects.',
  }
}