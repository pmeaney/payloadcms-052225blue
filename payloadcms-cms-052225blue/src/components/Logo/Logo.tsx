import clsx from 'clsx'
import React from 'react'

interface Props {
  className?: string
  loading?: 'lazy' | 'eager'
  priority?: 'auto' | 'high' | 'low'
}

export const Logo = (props: Props) => {
  const { loading: loadingFromProps, priority: priorityFromProps, className } = props

  const loading = loadingFromProps || 'lazy'
  const priority = priorityFromProps || 'low'

  return (
    /* eslint-disable @next/next/no-img-element */
    <div className="flex flex-col-mt-2 w-full">
      <h1 className={clsx('text-[20px] text-white hover:text-green-200 font-extrabold pr-5', className)}>Patrick Meaney</h1>
      <h2 className={clsx('text-[20px] text-gray-300 hover:text-green-200', className)}>Full Stack | DevOps | MarTech</h2>
    </div>
    // <img
    //   alt="Payload Logo"
    //   width={193}
    //   height={34}
    //   loading={loading}
    //   fetchPriority={priority}
    //   decoding="async"
    //   className={clsx('max-w-[9.375rem] w-full h-[34px]', className)}
    //   src="https://raw.githubusercontent.com/payloadcms/payload/main/packages/ui/src/assets/payload-logo-light.svg"
    // />
  )
}
