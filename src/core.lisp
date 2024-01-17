(uiop:define-package #:clack-sitemap
  (:use #:cl)
  (:nicknames #:clack-sitemap/core)
  (:import-from #:clack-sitemap/builder
                #:make-url
                #:make-news
                #:make-ref)
  (:export #:make-url
           #:make-news
           #:make-ref))
(in-package #:clack-sitemap)
