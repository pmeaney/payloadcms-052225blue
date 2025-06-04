import type { Metadata } from 'next';
import { getServerSideURL } from './getURL';

const defaultOpenGraph: Metadata['openGraph'] = {
  type: 'website',
  description: 'A built with PayloadCMS and Next.js.',
  images: [
    {
      url: `${getServerSideURL()}/website-template-OG.webp`,
    },
  ],
  siteName: '',
  title: '',
};

export const mergeOpenGraph = (og?: Metadata['openGraph']): Metadata['openGraph'] => {
  return {
    ...defaultOpenGraph,
    ...og,
    images: og?.images ? og.images : defaultOpenGraph.images,
  };
};
