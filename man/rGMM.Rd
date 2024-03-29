% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_DataGen.R
\name{rGMM}
\alias{rGMM}
\title{Generate Data from Gaussian Mixture Models}
\usage{
rGMM(n, d = 2, k = 1, pi = NULL, miss = 0, means = NULL, covs = NULL)
}
\arguments{
\item{n}{Observations (rows).}

\item{d}{Observation dimension (columns).}

\item{k}{Number of mixture components. Defaults to 1.}

\item{pi}{Mixture proportions. If omitted, components are assumed
equiprobable.}

\item{miss}{Proportion of elements missing, \eqn{miss\in[0,1)}.}

\item{means}{Either a prototype mean vector, or a list of mean vectors. Defaults
to the zero vector.}

\item{covs}{Either a prototype covariance matrix, or a list of covariance
matrices. Defaults to the identity matrix.}
}
\value{
Numeric matrix with observations as rows. Row numbers specify the
  true cluster assignments.
}
\description{
Generates an \eqn{n\times d} matrix of multivariate normal random vectors
with observations (examples) as rows. If \eqn{k=1}, all observations belong to the same
cluster. If \eqn{k>1} the observations are generated via two-step procedure.
First, the cluster membership is drawn from a multinomial distribution, with
mixture proportions specified by \code{pi}. Conditional on cluster
membership, the observation is drawn from a multivariate normal distribution,
with cluster-specific mean and covariance. The cluster means are provided
using \code{means}, and the cluster covariance matrices are provided using
\code{covs}. If \eqn{miss>0}, missingness is introduced, completely at random, by
setting that proportion of elements in the data matrix to \code{NA}.
}
\examples{
set.seed(100)
# Single component without missingness.
# Bivariate normal observations.
cov <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)
data <- rGMM(n = 1e3, d = 2, k = 1, means = c(2, 2), covs = cov)

# Single component with missingness.
# Trivariate normal observations.
mean_list <- list(c(-2, -2, -2), c(2, 2, 2))
cov <- matrix(c(1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1), nrow = 3)
data <- rGMM(n = 1e3, d = 3, k = 2, means = mean_list, covs = cov)

# Two components without missingness.
# Trivariate normal observations.
mean_list <- list(c(-2, -2, -2), c(2, 2, 2))
cov <- matrix(c(1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1), nrow = 3)
data <- rGMM(n = 1e3, d = 3, k = 2, means = mean_list, covs = cov)

# Four components with missingness.
# Bivariate normal observations.
mean_list <- list(c(2, 2), c(2, -2), c(-2, 2), c(-2, -2))
cov <- 0.5 * diag(2)
data <- rGMM(
n = 1000, 
d = 2, 
k = 4, 
pi = c(0.35, 0.15, 0.15, 0.35), 
miss = 0.1, 
means = mean_list, 
covs = cov)
}
\seealso{
For estimation, see \code{\link{FitGMM}}.
}
