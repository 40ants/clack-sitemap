(uiop:define-package #:clack-sitemap-tests/core
  (:use #:cl)
  (:import-from #:rove
                #:deftest
                #:ok
                #:testing))
(in-package #:clack-sitemap-tests/core)


(deftest test-example ()
  (ok t "Replace this test with something useful."))
