(defsystem "lack.middleware.sitemap"
    :description "Sitemap generator for your Clack site."
    :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
    :license "Unlicense"
    :homepage "https://40ants.com/clack-sitemap/"
    :source-control (:git "https://github.com/40ants/clack-sitemap")
    :bug-tracker "https://github.com/40ants/clack-sitemap/issues"
    :pathname "src"
    ;; This is just a proxy-system to make Lack builder able to
    ;; find the middleware by name.
    :depends-on ("clack-sitemap"))
