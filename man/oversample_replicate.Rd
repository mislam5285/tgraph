% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tgraph_generators.R
\name{oversample_replicate}
\alias{oversample_replicate}
\title{Returns a copy of the input tgraph, but with each time step duplicated w
times}
\usage{
oversample_replicate(tgraph, w)
}
\arguments{
\item{tgraph}{a dynamic network}

\item{w}{the number of times each time step should be duplicated}
}
\value{
A dynamic network of length w * length(tgraph)
}
\description{
Returns a copy of the input tgraph, but with each time step duplicated w
times
}
\examples{
dn <- uniform_rand_tgraph(t=12, n_vertices = 6, p_edge = 0.4)
doubled_dn <- oversample_replicate(dn, 2)
}
