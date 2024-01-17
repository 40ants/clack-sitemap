(uiop:define-package #:clack-sitemap/middleware
  (:use #:cl)
  (:nicknames #:lack.middleware.sitemap)
  (:import-from #:serapeum
                #:soft-list-of)
  (:import-from #:function-cache)
  (:import-from #:cl-sitemaps
                #:sitemap-url)
  (:import-from #:clack-sitemap/builder
                #:render-sitemap
                #:render-sitemap-index)
  (:import-from #:quri
                #:render-uri))
(in-package #:clack-sitemap/middleware)


(defvar *default-path* "/sitemap.xml")

(defvar *default-cache-timeout* 60)

(defvar *default-content-type* "application/xml")


(defun full-url (env)
  (render-uri
   (quri:make-uri :scheme (getf env :url-scheme)
                  :host (getf env :server-name)
                  :port (getf env :server-port 80)
                  :path (getf env :request-uri)
                  :query (getf env :query-string))))


(defun sitemap-middleware-builder (app sitemap-items &key
                                                       (path *default-path*)
                                                       (cache-timeout *default-cache-timeout*)
                                                       (content-type *default-content-type*))
  (check-type sitemap-items
              (or (soft-list-of sitemap-url)
                  symbol
                  function))
  
  (labels ((build-sitemap ()
             (etypecase sitemap-items
               (list sitemap-items)
               (symbol
                (funcall (symbol-function sitemap-items)))
               (function
                (funcall (the function sitemap-items)))))

           (render-sitemap-to-string (base-url)
             (with-output-to-string (s)
               (let ((items (build-sitemap)))
                 (typecase (first items)
                   (sitemap-url
                    (render-sitemap items
                                    :stream s
                                    :base-url base-url))
                   (t
                    (render-sitemap-index items
                                          :stream s
                                          :base-url base-url)))))))
    (let ((cache (make-instance 'function-cache:thunk-cache
                                :timeout cache-timeout
                                :body-fn #'render-sitemap-to-string)))
      (labels ((cached-sitemap (base-url)
                 (function-cache::cacher cache (list base-url)))
               (sitemap-middleware (env)
                 (let ((path-info (getf env :path-info))
                       (base-url (full-url env)))
                   (cond
                     ((string-equal path-info path)
                      (list 200
                            (list :content-type content-type)
                            (list (cached-sitemap base-url))))
                     (t
                      (funcall (the function app) env))))))
        #'sitemap-middleware))))


(defparameter *lack-middleware-sitemap* #'sitemap-middleware-builder)

