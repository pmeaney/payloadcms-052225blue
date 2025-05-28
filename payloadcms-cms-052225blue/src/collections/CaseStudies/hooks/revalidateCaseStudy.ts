import type { CollectionAfterChangeHook, CollectionAfterDeleteHook } from 'payload';

import { revalidatePath, revalidateTag } from 'next/cache';

import type { CaseStudy } from '../../../payload-types';

export const revalidateCaseStudy: CollectionAfterChangeHook<CaseStudy> = ({
  doc,
  previousDoc,
  req: { payload, context },
}) => {
  if (!context.disableRevalidate) {
    if (doc._status === 'published') {
      const path = `/case-studies/${doc.slug}`;

      payload.logger.info(`Revalidating case study at path: ${path}`);

      revalidatePath(path);
      revalidateTag('case-studies-sitemap');
    }

    // If the case study was previously published, we need to revalidate the old path
    if (previousDoc._status === 'published' && doc._status !== 'published') {
      const oldPath = `/case-studies/${previousDoc.slug}`;

      payload.logger.info(`Revalidating old case study at path: ${oldPath}`);

      revalidatePath(oldPath);
      revalidateTag('case-studies-sitemap');
    }
  }
  return doc;
};

export const revalidateDelete: CollectionAfterDeleteHook<CaseStudy> = ({ doc, req: { context } }) => {
  if (!context.disableRevalidate) {
    const path = `/case-studies/${doc?.slug}`;

    revalidatePath(path);
    revalidateTag('case-studies-sitemap');
  }

  return doc;
};