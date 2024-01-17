(defsystem "clack-sitemap-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clack-sitemap/"
  :class :package-inferred-system
  :description "Provides tests for clack-sitemap."
  :source-control (:git "https://github.com/40ants/clack-sitemap")
  :bug-tracker "https://github.com/40ants/clack-sitemap/issues"
  :pathname "t"
  :depends-on ("clack-sitemap-tests/core")
  :perform (test-op (op c)
                    (unless (symbol-call :rove :run c)
                      (error "Tests failed"))))
