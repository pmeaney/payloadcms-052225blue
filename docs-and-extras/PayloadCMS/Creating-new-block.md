## Here's a step-by-step guide to create a new CallToActionFullWidth block:

Here's an example for the steps to take to create a new CTA-- where its inner content is full width.
I'm providing this just as a note-to-self so I don't forget any steps for this sort of thing. 

  1. Create the new component files:
    - Copy src/blocks/CallToAction/Component.tsx to src/blocks/CallToActionFullWidth/Component.tsx
    - Copy src/blocks/CallToAction/config.ts to src/blocks/CallToActionFullWidth/config.ts
  2. Modify the new component files:
    - In Component.tsx: Update component name and remove the max-width constraint
    - In config.ts: Update slug, interfaceName, and labels
  3. Update src/blocks/RenderBlocks.tsx:
    - Import the new component
    - Add it to the blockComponents object
  4. Register in src/collections/Pages/index.ts:
    - Import the new block config
    - Add it to the blocks array in the layout field
  5. Update types (if needed):
    - Check if PayloadCMS auto-generates types or update manually

  The key is ensuring proper registration in both RenderBlocks.tsx and Pages/index.ts.