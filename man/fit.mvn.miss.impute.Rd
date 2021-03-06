% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/04_Single_MVN.R
\name{fit.mvn.miss.impute}
\alias{fit.mvn.miss.impute}
\title{Imputation for a Single Component Multivariate Normal with Missingness.}
\usage{
fit.mvn.miss.impute(split_data, theta)
}
\arguments{
\item{split_data}{Data partitioned by missingness.}

\item{theta}{List containing the `mean` and `cov`.}
}
\value{
Data.matrix, in the same order as the original data, with missing values
  imputed to their expectations.
}
\description{
Imputation for a Single Component Multivariate Normal with Missingness.
}
