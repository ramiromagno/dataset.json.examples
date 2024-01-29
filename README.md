
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dataset.json.examples <img src="man/figures/logo.svg" align="right" height="139" alt="" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ramiromagno/dataset.json.examples/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ramiromagno/dataset.json.examples/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`{dataset.json.examples}` is an R data package providing a set of
[Dataset-JSON](https://www.cdisc.org/dataset-json) files comprising SDTM
and ADaM datasets. Examples are originally from the
[DataExchange-DatasetJson/examples](https://github.com/cdisc-org/DataExchange-DatasetJson/tree/master/examples)repository.

## Installation

``` r
install.packages("dataset.json.examples", repos = "https://patterninstitute.r-universe.dev")
```

## Dataset-JSON files

`example_path()` returns the paths to the example Dataset-JSON files:

``` r
library(dataset.json.examples)
example_path()
#> # A tibble: 43 × 4
#>    name    file            rel_path             abs_path                        
#>    <chr>   <chr>           <chr>                <chr>                           
#>  1 adadas  adadas.json.xz  adam/adadas.json.xz  /home/rmagno/R/x86_64-pc-linux-…
#>  2 adae    adae.json.xz    adam/adae.json.xz    /home/rmagno/R/x86_64-pc-linux-…
#>  3 adcibc  adcibc.json.xz  adam/adcibc.json.xz  /home/rmagno/R/x86_64-pc-linux-…
#>  4 adlbc   adlbc.json.xz   adam/adlbc.json.xz   /home/rmagno/R/x86_64-pc-linux-…
#>  5 adlbcpv adlbcpv.json.xz adam/adlbcpv.json.xz /home/rmagno/R/x86_64-pc-linux-…
#>  6 adlbh   adlbh.json.xz   adam/adlbh.json.xz   /home/rmagno/R/x86_64-pc-linux-…
#>  7 adlbhpv adlbhpv.json.xz adam/adlbhpv.json.xz /home/rmagno/R/x86_64-pc-linux-…
#>  8 adlbhy  adlbhy.json.xz  adam/adlbhy.json.xz  /home/rmagno/R/x86_64-pc-linux-…
#>  9 adnpix  adnpix.json.xz  adam/adnpix.json.xz  /home/rmagno/R/x86_64-pc-linux-…
#> 10 adsl    adsl.json.xz    adam/adsl.json.xz    /home/rmagno/R/x86_64-pc-linux-…
#> # ℹ 33 more rows
```

Pick a specific path by dataset name:

``` r
example_path("adsl")
```

Examples files come in compressed xz format, use `unxz()` to easily
create uncompressed copies:

``` r
unxz(from = example_path("ae"), to = "ae.json")
```
