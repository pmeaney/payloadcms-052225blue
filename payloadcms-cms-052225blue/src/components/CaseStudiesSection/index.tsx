// src/components/CaseStudiesSection/index.tsx
import React from 'react'
import Link from 'next/link'

interface CaseStudiesSectionProps {
  caseStudies: any[]
}

export const CaseStudiesSection: React.FC<CaseStudiesSectionProps> = ({ caseStudies }) => {
  return (
    <section className="py-16 bg-gray-50">
      <div className="container">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-bold mb-4">Recent Case Studies</h2>
          <p className="text-lg text-gray-600 max-w-2xl mx-auto">
            Discover how we've helped our clients achieve their goals.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-12">
          {caseStudies.map((caseStudy) => (
            <div key={caseStudy.id} className="bg-white rounded-lg shadow-md p-6">
              <h3 className="text-xl font-semibold mb-3">{caseStudy.title}</h3>
              {caseStudy.client && (
                <div className="mb-3">
                  <span className="text-sm bg-blue-100 text-blue-800 px-2 py-1 rounded">
                    {caseStudy.client}
                  </span>
                </div>
              )}
              {caseStudy.summary && (
                <p className="text-gray-600 mb-4">{caseStudy.summary}</p>
              )}
              <Link 
                href={`/case-studies/${caseStudy.slug}`}
                className="text-blue-600 hover:text-blue-800 font-medium"
              >
                Read More
              </Link>
            </div>
          ))}
        </div>

        <div className="text-center">
          <Link
            href="/case-studies"
            className="inline-block px-6 py-3 bg-blue-600 text-white rounded-md hover:bg-blue-700"
          >
            View All Case Studies
          </Link>
        </div>
      </div>
    </section>
  )
}