(defsystem "clack-sitemap-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/clack-sitemap/"
  :class :package-inferred-system
  :description "Provides CI settings for clack-sitemap."
  :source-control (:git "https://github.com/40ants/clack-sitemap")
  :bug-tracker "https://github.com/40ants/clack-sitemap/issues"
  :pathname "src"
  :depends-on ("40ants-ci"
               "clack-sitemap-ci/ci"))
