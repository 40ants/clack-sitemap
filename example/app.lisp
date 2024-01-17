(uiop:define-package #:clack-sitemap-example/app
  (:use #:cl)
  (:import-from #:lack)
  (:import-from #:clack
                #:clackup)
  (:import-from #:clack-sitemap
                #:make-news
                #:make-url
                #:make-ref)
  (:export #:start
           #:stop))
(in-package #:clack-sitemap-example/app)


(defvar *handler* nil)


(defun main-app (env)
  (declare (ignore env))
  '(200 (:content-type "text/plain")
    ("Hello, this is the main app!")))


(defun create-sitemap ()
  (list (make-url "https://40ants.com/"
                  :changefreq :monthly
                  :priority 0.8)
        (make-url "https://40ants.com/blog/"
                  :changefreq :daily
                  :priority 0.9)
        (make-url "https://40ants.com/blog/some-post"
                  :changefreq :daily
                  :priority 0.9
                  :news (make-news "40Ants Blog" "en"
                                   "New Lisp Library Released"
                                   "2023-11-22"
                                   :keywords '("lisp" "library" "release")))))

(defun create-sitemap-index ()
  (list (make-ref "/sitemap-archive.xml")
        (make-ref "/sitemap-new-items.xml"
                  :lastmod (local-time:now))))


(defun start (&key (port 8080))
  (stop)
  
  (setf *handler*
        (clackup
         (lack:builder
          (:sitemap #'create-sitemap
           :path "/sitemap.xml"
           :cache-timeout 1)
          (:sitemap #'create-sitemap-index
           :path "/sitemap-index.xml"
           :cache-timeout 1)
          #'main-app)
         :port port))
  (values))


(defun stop ()
  (when *handler*
    (clack:stop *handler*)
    (setf *handler* nil))
  (values))

