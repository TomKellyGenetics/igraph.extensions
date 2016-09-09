igraph.extensions
=========

The igraph.extensions are a set of packages that add additional functionality to igraph R package. This metapackage makes it convenient to install and load the set of packages and their dependencies in a single command.

See the relevant documentation and vignettes for the extensions or the http://igraph.org/r/doc/ website for the original igraph package.

Installation
------------

You can install these pacakges from github with:

``` r
# install.packages("devtools")
devtools::install_github("TomKellyGenetics/igraph.extensions")
```

This will install the set packages of that you are often used together:

-   `plot.igraph`, for custom plotting of directed graphs with multiple edge states (activator/inhibitor arrows).
-   `info.centrality`, for computing information centrality of vertices or networks and the network efficiency metric required to do so.
-   `pathway.structure.permutation`, for testing the relationships between node states or annotations (e.g., gene function or significance).
-   `graphsim`, for simulating continous multi-variate normal data (e.g., gene expression) from a graph network (e.g., gene regulation pathhway), includes options for derving sigma matrix from various derived adjacency or distance matrices and negative correlations/covariances for inhibitor edge states.

This also installs dependancies for these packages including:

-   Working with graph objects:

    -   `igraph`

-   Linear algebra operations:

    -   `Matrix`
    -   `matrixcalc`

-   Multivariate normal simulations

    -   `mvtnorm`

Usage
-----

These packages can be loaded them explicitly with `library()`.

```r
library("igraph")
library("plot.igraph")
library("graphsim")
```

However, more conveniently, all required packages can be loaded together with `library("igraph.extensions")` with a summary of the packages you have loaded:

``` r
library("igraph.extensions")
#> Attaching package: ‘igraph’
#> 
#> The following objects are masked from ‘package:stats’:
#> 
#>     decompose, spectrum
#> 
#> The following object is masked from ‘package:base’:
#> 
#>     union
#> 
#> Loading igraph
#> Loading igraph.extensions: plot.igraph
#> Loading igraph.extensions: info.centrality
#> Loading igraph.extensions: pathway.structure.permutation
#> Loading igraph.extensions: graphsim
```

Note that only particular functions are imported from `matrixcalc` to avoid conflicts.
