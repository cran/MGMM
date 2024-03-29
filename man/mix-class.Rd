% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01_Class.R
\docType{class}
\name{mix-class}
\alias{mix-class}
\title{Mixture Model Class}
\description{
Defines a class to hold Gaussian Mixture Models.
}
\section{Slots}{

\describe{
\item{\code{Assignments}}{Maximum a posteriori assignments.}

\item{\code{Completed}}{Completed data, with missing values imputed to their
posterior expectations.}

\item{\code{Components}}{Number of components.}

\item{\code{Covariances}}{List of fitted cluster covariance matrices.}

\item{\code{Data}}{Original data, with missing values present.}

\item{\code{Density}}{Density of each component at each example.}

\item{\code{Means}}{List of fitted cluster means.}

\item{\code{Objective}}{Final value of the EM objective.}

\item{\code{Proportions}}{Fitted cluster proportions.}

\item{\code{Responsibilities}}{Posterior membership probabilities for each example.}
}}

