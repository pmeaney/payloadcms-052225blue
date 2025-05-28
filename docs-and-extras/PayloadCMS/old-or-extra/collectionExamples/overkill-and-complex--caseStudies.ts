import { CollectionConfig } from 'payload/types';

// Import your existing blocks
import { ArchiveBlock } from '../blocks/ArchiveBlock/config';
import { Banner } from '../blocks/Banner/config';
import { CallToAction } from '../blocks/CallToAction/config';
import { Code } from '../blocks/Code/config';
import { Content } from '../blocks/Content/config';
import { FormBlock } from '../blocks/Form/config';
import { MediaBlock } from '../blocks/MediaBlock/config';
import { RelatedPosts } from '../blocks/RelatedPosts/config';

// Import field configurations
import { slugField } from '../fields/slug';
import { formatSlug } from '../hooks/formatSlug';

export const CaseStudies: CollectionConfig = {
  slug: 'case-studies',
  admin: {
    useAsTitle: 'title',
    group: 'Content',
    defaultColumns: ['title', 'client', 'publishedAt', 'status'],
    preview: (doc) => {
      return `${process.env.PAYLOAD_PUBLIC_SERVER_URL}/case-studies/${doc.slug}`;
    },
  },
  access: {
    read: () => true, // Public reading access
    create: ({ req: { user } }) => !!user, // Only authenticated users can create
    update: ({ req: { user } }) => !!user, // Only authenticated users can update
    delete: ({ req: { user } }) => !!user, // Only authenticated users can delete
  },
  hooks: {
    beforeChange: [
      ({ data, req, operation }) => {
        if (operation === 'create' && req.user) {
          data.author = req.user.id;
        }
      },
    ],
  },
  versions: {
    drafts: {
      autosave: {
        interval: 100, // Auto-save every 100ms when editing
      },
    },
  },
  fields: [
    {
      type: 'tabs',
      tabs: [
        {
          label: 'Content',
          fields: [
            // Basic Information
            {
              name: 'title',
              type: 'text',
              required: true,
              admin: {
                description: 'The main title of your case study',
              },
            },
            {
              name: 'summary',
              type: 'textarea',
              required: true,
              admin: {
                description: 'Brief summary of the case study (also used for SEO description and card previews)',
              },
            },
            slugField(),

            // Client and Project Information
            {
              name: 'client',
              type: 'text',
              required: true,
              admin: {
                description: 'Client or company name',
              },
            },
            {
              name: 'industry',
              type: 'select',
              options: [
                { label: 'Technology', value: 'technology' },
                { label: 'Healthcare', value: 'healthcare' },
                { label: 'Finance', value: 'finance' },
                { label: 'E-commerce', value: 'ecommerce' },
                { label: 'Education', value: 'education' },
                { label: 'Manufacturing', value: 'manufacturing' },
                { label: 'Real Estate', value: 'real-estate' },
                { label: 'Non-profit', value: 'non-profit' },
                { label: 'Government', value: 'government' },
                { label: 'Other', value: 'other' },
              ],
              admin: {
                description: 'Industry or sector of the client',
              },
            },
            {
              name: 'projectType',
              type: 'select',
              hasMany: true,
              options: [
                { label: 'Web Development', value: 'web-development' },
                { label: 'Mobile App', value: 'mobile-app' },
                { label: 'UI/UX Design', value: 'ui-ux-design' },
                { label: 'Data Analytics', value: 'data-analytics' },
                { label: 'API Integration', value: 'api-integration' },
                { label: 'E-commerce', value: 'ecommerce' },
                { label: 'Custom Software', value: 'custom-software' },
                { label: 'Consulting', value: 'consulting' },
                { label: 'Migration', value: 'migration' },
                { label: 'Optimization', value: 'optimization' },
              ],
              admin: {
                description: 'Type(s) of work performed',
              },
            },
            {
              name: 'projectDuration',
              type: 'text',
              admin: {
                description: 'e.g., "3 months", "6 weeks", "Ongoing"',
              },
            },
            {
              name: 'teamSize',
              type: 'text',
              admin: {
                description: 'e.g., "5 developers", "Small team (3-5)", "Large team (10+)"',
              },
            },

            // Visual Elements
            {
              name: 'featuredImage',
              type: 'upload',
              relationTo: 'media',
              required: true,
              admin: {
                description: 'Main featured image for the case study (used in listings and social sharing)',
              },
            },
            {
              name: 'gallery',
              type: 'array',
              admin: {
                description: 'Additional images showcasing the project',
              },
              fields: [
                {
                  name: 'image',
                  type: 'upload',
                  relationTo: 'media',
                  required: true,
                },
                {
                  name: 'caption',
                  type: 'text',
                  admin: {
                    description: 'Optional caption for this image',
                  },
                },
              ],
            },

            // Key Results/Metrics
            {
              name: 'keyResults',
              type: 'array',
              admin: {
                description: 'Quantifiable results and achievements',
              },
              fields: [
                {
                  name: 'metric',
                  type: 'text',
                  required: true,
                  admin: {
                    description: 'e.g., "Performance Improvement", "User Engagement", "Cost Reduction"',
                  },
                },
                {
                  name: 'value',
                  type: 'text',
                  required: true,
                  admin: {
                    description: 'e.g., "75%", "$50,000", "3x faster"',
                  },
                },
                {
                  name: 'description',
                  type: 'textarea',
                  admin: {
                    description: 'Brief explanation of this result',
                  },
                },
              ],
            },

            // Technologies Used
            {
              name: 'technologies',
              type: 'array',
              admin: {
                description: 'Technologies, frameworks, and tools used in this project',
              },
              fields: [
                {
                  name: 'category',
                  type: 'select',
                  options: [
                    { label: 'Frontend', value: 'frontend' },
                    { label: 'Backend', value: 'backend' },
                    { label: 'Database', value: 'database' },
                    { label: 'Cloud/Infrastructure', value: 'cloud' },
                    { label: 'Analytics', value: 'analytics' },
                    { label: 'Design', value: 'design' },
                    { label: 'Testing', value: 'testing' },
                    { label: 'Other', value: 'other' },
                  ],
                  required: true,
                },
                {
                  name: 'name',
                  type: 'text',
                  required: true,
                  admin: {
                    description: 'e.g., "React", "Node.js", "PostgreSQL", "AWS"',
                  },
                },
                {
                  name: 'purpose',
                  type: 'text',
                  admin: {
                    description: 'Optional: Why this technology was chosen',
                  },
                },
              ],
            },
          ],
        },
        {
          label: 'Case Study Content',
          fields: [
            // Main Content Blocks
            {
              name: 'content',
              type: 'blocks',
              blocks: [
                Content,
                MediaBlock,
                Code,
                CallToAction,
                Banner,
                FormBlock,
                RelatedPosts,
                ArchiveBlock,
              ],
              admin: {
                description: 'The main content of your case study. Use different blocks to structure your narrative.',
              },
            },
          ],
        },
        {
          label: 'Client Testimonial',
          fields: [
            {
              name: 'testimonial',
              type: 'group',
              fields: [
                {
                  name: 'quote',
                  type: 'textarea',
                  admin: {
                    description: 'Client testimonial or quote about the project',
                  },
                },
                {
                  name: 'author',
                  type: 'text',
                  admin: {
                    description: 'Name of the person who gave the testimonial',
                  },
                },
                {
                  name: 'title',
                  type: 'text',
                  admin: {
                    description: 'Job title of the testimonial author',
                  },
                },
                {
                  name: 'company',
                  type: 'text',
                  admin: {
                    description: 'Company name (if different from client name)',
                  },
                },
                {
                  name: 'photo',
                  type: 'upload',
                  relationTo: 'media',
                  admin: {
                    description: 'Optional photo of the testimonial author',
                  },
                },
              ],
            },
          ],
        },
        {
          label: 'Settings',
          fields: [
            // Publication Settings
            {
              name: 'status',
              type: 'select',
              options: [
                { label: 'Draft', value: 'draft' },
                { label: 'Published', value: 'published' },
                { label: 'Archived', value: 'archived' },
              ],
              defaultValue: 'draft',
              required: true,
            },
            {
              name: 'publishedAt',
              type: 'date',
              admin: {
                position: 'sidebar',
                date: {
                  pickerAppearance: 'dayAndTime',
                },
                description: 'When this case study was/will be published',
              },
              hooks: {
                beforeChange: [
                  ({ siblingData, value }) => {
                    if (siblingData._status === 'published' && !value) {
                      return new Date();
                    }
                    return value;
                  },
                ],
              },
            },
            {
              name: 'featured',
              type: 'checkbox',
              defaultValue: false,
              admin: {
                description: 'Mark as featured case study (appears prominently in listings)',
              },
            },
            {
              name: 'author',
              type: 'relationship',
              relationTo: 'users',
              admin: {
                position: 'sidebar',
                description: 'Author of this case study',
              },
            },

            // Categories and Tags
            {
              name: 'categories',
              type: 'relationship',
              relationTo: 'categories',
              hasMany: true,
              admin: {
                description: 'Categorize this case study for better organization',
              },
            },
            {
              name: 'tags',
              type: 'array',
              admin: {
                description: 'Tags for filtering and search',
              },
              fields: [
                {
                  name: 'tag',
                  type: 'text',
                  required: true,
                },
              ],
            },

            // Related Content
            {
              name: 'relatedCaseStudies',
              type: 'relationship',
              relationTo: 'case-studies',
              hasMany: true,
              maxRows: 3,
              admin: {
                description: 'Related case studies to show at the end of this one',
              },
            },
            {
              name: 'relatedPosts',
              type: 'relationship',
              relationTo: 'posts',
              hasMany: true,
              maxRows: 3,
              admin: {
                description: 'Related blog posts to cross-promote',
              },
            },
          ],
        },
      ],
    },
  ],
};