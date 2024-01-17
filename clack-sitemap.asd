#-asdf3.1 (error "clack-sitemap requires ASDF 3.1 because for lower versions pathname does not work for package-inferred systems.")
(defsystem "clack-sitemap"
  :description "Sitemap generator for your site."
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clack-sitemap/"
  :source-control (:git "https://github.com/40ants/clack-sitemap")
  :bug-tracker "https://github.com/40ants/clack-sitemap/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :depends-on ("clack-sitemap/core"
               "clack-sitemap/middleware")
  :in-order-to ((test-op (test-op "clack-sitemap-tests"))))
