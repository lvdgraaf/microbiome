#' @title Core Taxa
#' @description Determine members of the core microbiota with given abundance
#' and prevalences
#' @inheritParams core
#' @return Vector of core members
#' @details For phyloseq object, lists taxa that are more prevalent with the
#'   given detection. For matrix, lists columns that satisfy
#'   these criteria.
#' @examples
#'   data(dietswap)
#'   a <- core_members(dietswap, 1, 95)
#' @aliases prevalent_taxa
#' @export
#' @references 
#'   A Salonen et al. The adult intestinal core microbiota is determined by 
#'   analysis depth and health status. Clinical Microbiology and Infection 
#'   18(S4):16 20, 2012. 
#'   To cite the microbiome R package, see citation('microbiome') 
#' @author Contact: Leo Lahti \email{microbiome-admin@@googlegroups.com}
#' @keywords utilities
core_members <- function(x, detection = 1, prevalence = 50, method = "standard", Nsample = NULL, bs.iter = 1000, I.max = NULL)  {

  Core <- NULL

  if (class(x) == "phyloseq") {
    x <- abundances(x)
  }

  if (method == "standard") {
    taxa <- names(which(prevalence(x, detection) > prevalence))
  } else if (method == "bootstrap") {
    # Core bootstrap analysis
    cb <- core_bootstrap(x, Nsample = Nsample,
       	  		    prevalence = prevalence,
                            bs.iter = bs.iter, 
		   	    detection = detection,
			    I.max = I.max)
    # Pick the taxa that have been identified in the robust core
    taxa <- as.character(subset(cb, Core == 1)$Name)
  }

  taxa

}

