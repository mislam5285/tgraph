% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twin.R
\name{twin_plot}
\alias{twin_plot}
\title{Implements the TWIN method, producing a plot from which we determine the
relevant time step size in a dynamic network.}
\usage{
twin_plot(tgraph, tgraph_metric, agg_func, title_str, ylab, max_agg_step)
}
\arguments{
\item{tgraph}{a dynamic network}

\item{tgraph_metric}{a function mapping a dynamic network to a numeric value.}

\item{agg_func}{an aggregation function that takes two or more igraph graphs
and returns a single graph, e.g. union.}

\item{title_str}{the tile of the produced plot}
}
\value{
A max_step_size - length vector of tgraph_metric applied to the
 aggregations of tgraph.
}
\description{
This plot compares the compression ratio and variance of average degree
of the various dynamic networks that result aggregating the input network
at various time step sizes.
}
\examples{
dn <- uniform_rand_tgraph(t=12, n_vertices = 6, p_edge = 0.4)
triplicated_dn <- oversample_replicate(dn, 3)
twin_plot(triplicated_dn)
}
