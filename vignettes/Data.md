---
title: "Data"
author: "Leo Lahti"
date: "2017-03-05"
bibliography: 
- bibliography.bib
- references.bib
output: 
  rmarkdown::html_vignette
---
<!--
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteIndexEntry{microbiome tutorial - data}
  %\usepackage[utf8]{inputenc}
  %\VignetteEncoding{UTF-8}  
-->


## Importing and processing microbiome data in R

[Importing microbiome profiling data from standard formats (mothur, qiime etc.)](http://joey711.github.io/phyloseq/import-data) (independent phyloseq R package).

[Filtering, subsetting and other data processing examples](Preprocessing.md).


## Microbiome example data sets

### Intestinal microbiota profiling of 1006 Western adults

[The HITChip Atlas](Atlas.md) data set is available via the microbiome R package in phyloseq format, and via [Data Dryad](http://doi.org/10.5061/dryad.pk75d) in tabular format. This data set from [Lahti et al. Nat. Comm. 5:4344, 2014](http://www.nature.com/ncomms/2014/140708/ncomms5344/full/ncomms5344.html) comes with 130 genus-like taxonomic groups across 1006 western adults with no reported health complications. Some subjects have also short time series. Load the data in R with:


```r
library(microbiome)
data(atlas1006) 
print(atlas1006)
```

```
## phyloseq-class experiment-level object
## otu_table()   OTU Table:         [ 130 taxa and 1172 samples ]
## sample_data() Sample Data:       [ 1172 samples by 10 sample variables ]
## tax_table()   Taxonomy Table:    [ 130 taxa by 2 taxonomic ranks ]
```


### Diet swap between Rural and Western populations

A two-week diet swap study between western (USA) and traditional
(rural Africa) diets, reported in [O'Keefe et al. Nat. Comm. 6:6342,
2015](http://dx.doi.org/10.1038/ncomms7342). The data is also
available for download from [Data
Dryad](http://dx.doi.org/10.5061/dryad.1mn1n). Load in R with:


```r
data(dietswap)
print(dietswap)
```

```
## phyloseq-class experiment-level object
## otu_table()   OTU Table:         [ 130 taxa and 222 samples ]
## sample_data() Sample Data:       [ 222 samples by 8 sample variables ]
## tax_table()   Taxonomy Table:    [ 130 taxa by 2 taxonomic ranks ]
```


### Intestinal microbiota versus blood metabolites

Data set from [Lahti et al. PeerJ 1:e32,
2013](https://peerj.com/articles/32/) characterizes associations
between human intestinal microbiota and blood serum lipids. Note that
this data set contains an additional data matrix of lipid
species. Load the data in R with:


```r
data(peerj32)
print(names(peerj32))
```

```
## [1] "lipids"   "microbes" "meta"     "phyloseq"
```


