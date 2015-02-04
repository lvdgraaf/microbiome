-   microbiome R package
    -   Example workflows
    -   Installation, example data sets and preprocessing
    -   Visualization and related tools
    -   Clustering
    -   Microbiota composition
    -   Linear models, comparisons, and association studies
    -   Other statistical analysis
    -   Miscellaneous
    -   Licensing and Citations
    -   References
    -   Session info

<!--
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteIndexEntry{microbiome tutorial}
  %\usepackage[utf8]{inputenc}
-->


microbiome R package
====================

The microbiome package contains general-purpose tools for
microarray-based analysis of microbiome profiling data sets.

### Example workflows

-   [Minimal example](Template.Rmd)
-   [Atlas](Atlas.Rmd)

### Installation, example data sets and preprocessing

-   [Installation](Installation.Rmd)
-   [Data](Data.Rmd)
-   [RPA](RPA.Rmd)
-   [Preprocessing](Preprocessing.Rmd)
-   [Phylogeny](Phylogeny.Rmd)

### Visualization and related tools

-   [Barplots](Barplots.Rmd)
-   [Boxplots](Boxplots.Rmd)
-   [Heatmaps](Heatmap.Rmd)
-   [Matrix visualization](Matrix-visualization.Rmd)
-   [Motion charts](Motionchart.Rmd)
-   [Ordination](Projections.Rmd)
-   [Oligo heatmap](Oligoheatmap.Rmd)
-   [Cross hybridization](Crosshyb.Rmd)

### Clustering

-   [Bimodality](Bimodality.Rmd)
-   [Clustering](Clustering.Rmd)
-   [Distance metrics](Metrics.Rmd)

### Microbiota composition

-   [Core microbiota](Core.Rmd)
-   [Diversity](Diversity.Rmd)
-   [Probe level studies](Probelevel.Rmd)
-   [Stability](Stability.Rmd)

### Linear models, comparisons, and association studies

-   [Linear models](limma.Rmd)
-   [Pairwise comparisons](Comparisons.Rmd)
-   [Cross correlations](Crosscorrelation.Rmd)

### Other statistical analysis

-   [ROC curves](ROC.Rmd)
-   [RDA](RDA.Rmd)

### Miscellaneous

-   [leaveout](leaveout.Rmd)
-   [misc](misc.Rmd)

### Licensing and Citations

This work can be freely used, modified and distributed under the
[Two-clause FreeBSD license](http://en.wikipedia.org/wiki/BSD_licenses).

Kindly cite the work as 'Leo Lahti and Jarkko Salojarvi (2014).
microbiome R package. URL: <http://microbiome.github.com>'.

### References

The package utilizes tools from a number of other CRAN and Bioconductor
extensions, including:

-   df2json (Caballero, 2013)
-   rjson (Couture-Beil, 2014)
-   ade4 (Dray and Dufour, 2007; Chessel, Dufour, and Thioulouse, 2004;
    Dray, Dufour, and Chessel, 2007)
-   mixOmics (Dejean, Gonzalez, Monget, et al., 2014)
-   RCurl (Temple Lang, 2014)
-   vegan (Oksanen, Blanchet, Kindt, et al., 2015)
-   reshape (Wickham and Hadley, 2007)
-   WGCNA (Langfelder and Horvath, 2008; Langfelder and Horvath, 2012)
-   ggplot2 (Wickham, 2009)
-   RPA (Lahti, Torrente, Elo, et al., 2013)
-   minet (Meyer, Lafitte, and Bontempi, 2008)
-   fastcluster (Müllner, 2013)

The preprocessing of HITChip data is based on RPA [(Lahti, Torrente,
Elo, et al., 2013); (Lahti, Elo, Aittokallio, et al., 2011)]

-   L. Lahti et al. Analysis of Probe Reliability in Differential Gene
    Expression Studies with Short Oligonucleotide Arrays. [TCBB/IEEE
    8(1):217-225,
    2011](http://www.computer.org/portal/web/csdl/doi/10.1109/TCBB.2009.38)
    Lahti11rpa

-   L. Lahti et al. Associations between the human intestinal
    microbiota, Lactobacillus rhamnosus GG and serum lipids indicated by
    integrated analysis of high-throughput profiling data. [PeerJ 1:e32,
    2013](http://dx.doi.org/10.7717/peerj.32). Lahti13provasI

-   R Core Team (2013). R: A language and environment for statistical
    computing. R Foundation for Statistical Computing, Vienna, Austria.
    [ISBN 3-900051-07-0](http://www.R-project.org/)

-   W. N. Venables and B. D. Ripley (2002) Modern Applied Statistics
    with S. Fourth Edition. Springer, New York. ISBN 0-387-95457-0

-   H. Wickham (2011). The Split-Apply-Combine Strategy for Data
    Analysis. [Journal of Statistical Software, 40(1),
    1-29](http://www.jstatsoft.org/v40/i01/)

### Session info

This vignette was created with

    sessionInfo()

    ## R version 3.1.2 (2014-10-31)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] knitcitations_1.0.5 rmarkdown_0.3.10   
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] bibtex_0.4.0      digest_0.6.4      evaluate_0.5.5   
    ##  [4] formatR_1.0       htmltools_0.2.6   httr_0.5         
    ##  [7] knitr_1.8         lubridate_1.3.3   memoise_0.2.1    
    ## [10] plyr_1.8.1        Rcpp_0.11.3       RCurl_1.95-4.3   
    ## [13] RefManageR_0.8.45 RJSONIO_1.3-0     stringr_0.6.2    
    ## [16] tools_3.1.2       XML_3.98-1.1      yaml_2.1.13