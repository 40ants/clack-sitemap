(defsystem "clack-sitemap-docs"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clack-sitemap/"
  :class :package-inferred-system
  :description "Provides documentation for clack-sitemap."
  :source-control (:git "https://github.com/40ants/clack-sitemap")
  :bug-tracker "https://github.com/40ants/clack-sitemap/issues"
  :pathname "docs"
  :depends-on ("clack-sitemap"
               "clack-sitemap-docs/index"))
