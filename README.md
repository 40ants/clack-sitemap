<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-40README-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

# clack-sitemap - Sitemap generator for your site.

<a id="clack-sitemap-asdf-system-details"></a>

## CLACK-SITEMAP ASDF System Details

* Description: Sitemap generator for your site.
* Licence: Unlicense
* Author: Alexander Artemenko <svetlyak.40wt@gmail.com>
* Homepage: [https://40ants.com/clack-sitemap/][153b]
* Bug tracker: [https://github.com/40ants/clack-sitemap/issues][c765]
* Source control: [GIT][ea7f]
* Depends on: [anaphora][c9ae], [cl-sitemaps][dfc0], [cxml][6303], [function-cache][c2b5], [local-time][46a1], [quri][2103], [serapeum][c41d]

[![](https://github-actions.40ants.com/40ants/clack-sitemap/matrix.svg?only=ci.run-tests)][2869]

![](http://quickdocs.org/badge/clack-sitemap.svg)

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-40INSTALLATION-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Installation

You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :clack-sitemap)
```
<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-40USAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Usage

`TODO`: Write a library description. Put some examples here.

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-40API-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## API

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-40CLACK-SITEMAP-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### CLACK-SITEMAP

<a id="x-28-23A-28-2813-29-20BASE-CHAR-20-2E-20-22CLACK-SITEMAP-22-29-20PACKAGE-29"></a>

#### [package](e57b) `clack-sitemap`

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-7C-40CLACK-SITEMAP-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-NEWS-20FUNCTION-29"></a>

##### [function](8277) `clack-sitemap/builder:make-news` publication-name publication-lang article-title date &key access genres keywords stock-tickers

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-REF-20FUNCTION-29"></a>

##### [function](2b8f) `clack-sitemap/builder:make-ref` loc &key lastmod

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-URL-20FUNCTION-29"></a>

##### [function](abef) `clack-sitemap/builder:make-url` loc &key lastmod changefreq priority news

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-40CLACK-SITEMAP-2FBUILDER-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### CLACK-SITEMAP/BUILDER

<a id="x-28-23A-28-2821-29-20BASE-CHAR-20-2E-20-22CLACK-SITEMAP-2FBUILDER-22-29-20PACKAGE-29"></a>

#### [package](9dcc) `clack-sitemap/builder`

<a id="x-28CLACK-SITEMAP-DOCS-2FINDEX-3A-3A-7C-40CLACK-SITEMAP-2FBUILDER-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-NEWS-20FUNCTION-29"></a>

##### [function](8277) `clack-sitemap/builder:make-news` publication-name publication-lang article-title date &key access genres keywords stock-tickers

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-REF-20FUNCTION-29"></a>

##### [function](2b8f) `clack-sitemap/builder:make-ref` loc &key lastmod

<a id="x-28CLACK-SITEMAP-2FBUILDER-3AMAKE-URL-20FUNCTION-29"></a>

##### [function](abef) `clack-sitemap/builder:make-url` loc &key lastmod changefreq priority news

<a id="x-28CLACK-SITEMAP-2FBUILDER-3ARENDER-SITEMAP-20FUNCTION-29"></a>

##### [function](a7ab) `clack-sitemap/builder:render-sitemap` items &key stream base-url


[153b]: https://40ants.com/clack-sitemap/
[ea7f]: https://github.com/40ants/clack-sitemap
[2869]: https://github.com/40ants/clack-sitemap/actions
[9dcc]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/builder.lisp#L1
[a7ab]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/builder.lisp#L214
[abef]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/builder.lisp#L65
[2b8f]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/builder.lisp#L79
[8277]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/builder.lisp#L95
[e57b]: https://github.com/40ants/clack-sitemap/blob/b0b9fc1a62b8e8d0932b195f5e52d68f0ffaaaad/src/core.lisp#L1
[c765]: https://github.com/40ants/clack-sitemap/issues
[c9ae]: https://quickdocs.org/anaphora
[dfc0]: https://quickdocs.org/cl-sitemaps
[6303]: https://quickdocs.org/cxml
[c2b5]: https://quickdocs.org/function-cache
[46a1]: https://quickdocs.org/local-time
[2103]: https://quickdocs.org/quri
[c41d]: https://quickdocs.org/serapeum

* * *
###### [generated by [40ANTS-DOC](https://40ants.com/doc/)]