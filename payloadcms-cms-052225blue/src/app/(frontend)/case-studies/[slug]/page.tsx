// src/app/(frontend)/case-studies/[slug]/page.tsx
import type { Metadata } from 'next'
import configPromise from '@payload-config'
import { getPayload } from 'payload'
import { notFound } from 'next/navigation'

type Args = {
  params: Promise<{
    slug?: string
  }>
}

export default async function CaseStudy({ params: paramsPromise }: Args) {
  const { slug = '' } = await paramsPromise
  const payload = await getPayload({ config: configPromise, importMap: {} })

  const result = await payload.find({
    collection: 'case-studies',
    limit: 1,
    where: {
      slug: {
        equals: slug,
      },
    },
  })

  const caseStudy = result.docs?.[0]

  if (!caseStudy) {
    return notFound()
  }

  return (
    <div className="container py-24">
      <div className="max-w-4xl mx-auto">
        <h1 className="text-4xl font-bold mb-6">{caseStudy.title}</h1>
        
        {caseStudy.client && (
          <div className="mb-6">
            <span className="inline-block px-3 py-1 text-sm bg-blue-100 text-blue-800 rounded-full">
              {caseStudy.client}
            </span>
          </div>
        )}

        {caseStudy.summary && (
          <p className="text-xl text-gray-600 mb-8">{caseStudy.summary}</p>
        )}

        {caseStudy.content && (
          <div className="prose max-w-none">
            <div dangerouslySetInnerHTML={{ __html: caseStudy.content }} />
          </div>
        )}
      </div>
    </div>
  )
}

export async function generateMetadata({ params: paramsPromise }: Args): Promise<Metadata> {
  const { slug = '' } = await paramsPromise
  const payload = await getPayload({ config: configPromise, importMap: {} })

  const result = await payload.find({
    collection: 'case-studies',
    limit: 1,
    where: {
      slug: {
        equals: slug,
      },
    },
  })

  const caseStudy = result.docs?.[0]

  return {
    title: caseStudy?.title || 'Case Study',
    description: caseStudy?.summary || 'Case study details',
  }
}