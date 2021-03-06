% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hotplot.R
\name{hotplot}
\alias{hotplot}
\title{Univariate Bimodality Plot}
\usage{
hotplot(x, taxon, tipping.point = NULL, lims = NULL, shift = 0.001,
  log10 = TRUE)
}
\arguments{
\item{x}{\code{\link{phyloseq-class}} object}

\item{taxon}{Taxonomic group to visualize.}

\item{tipping.point}{Optional. Indicate critical point for abundance variations to be highlighted.}

\item{lims}{Optional. Figure X axis limits.}

\item{shift}{Small constant to avoid problems with zeroes in log10}

\item{log10}{Use log10 abundances for the OTU table and tipping point}
}
\value{
\code{\link{ggplot}} object
}
\description{
Coloured bimodality plot.
}
\examples{
  data(atlas1006)
  pseq <- transform(atlas1006, "compositional")
  # Set a tipping point manually
  tipp <- .3/100 # .3 percent relative abundance
  # Bimodality is often best visible at log10 relative abundances
  p <- hotplot(pseq, "Dialister", tipping.point = tipp, log10 = TRUE)
}
\author{
Contact: Leo Lahti \email{microbiome-admin@googlegroups.com}
}
\references{
See citation('microbiome')
}
\keyword{utilities}

