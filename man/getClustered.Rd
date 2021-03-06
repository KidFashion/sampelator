% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sampelatorFunctions.R
\name{getClustered}
\alias{getClustered}
\title{Calculate design statistics for cluster sampling}
\usage{
getClustered(purpose = c("estimation", "testing"), sampleSize = NA,
  desiredDifference = NA, power = NA, typeIerror, clusterVariance,
  clusterSize, designEffect = NA, sampleVariance,
  conditionalPrevalence = NA, correlation = NA, populationSize = NA,
  adjustFinitePopulation = FALSE, inflationFactor = NA,
  exactProduct = TRUE)
}
\arguments{
\item{purpose}{character string, the purpose of the study is one of 
"estimation" or "testing"}

\item{sampleSize}{integer, the total sample size; default is NA}

\item{desiredDifference}{numeric, for "estimation" the desired margin of error,
i.e. half width of the desired confidence interval or for "testing" the 
true difference in means that is tested; default is NA}

\item{power}{numeric, statistical power to detect the predefined difference 
"desiredDifference" when purpose is "testing"; default is NA}

\item{typeIerror}{numeric, the type I error}

\item{clusterVariance}{numeric, estimated variance between the cluster means}

\item{clusterSize}{integer, (average) size of the clusters}

\item{designEffect}{numeric (vector), the design effect, i.e. the ratio of 
the sample mean variances under simple random sampling and cluster sampling;
default is NA}

\item{sampleVariance}{numeric, estimated element variance in simple random
sampling design}

\item{conditionalPrevalence}{numeric, conditional prevalence of the outcome
given a random effect of zero (to calculate designEffect); default is NA}

\item{correlation}{numeric, the within-cluster correlation; default is NA.
if NA, correlation is estimated based on approximation using clusterVariance
and clusterSize (to calculate designEffect)}

\item{populationSize}{numeric, the population size; default is NA}

\item{adjustFinitePopulation}{boolean, adjust for finite population?; 
default is FALSE}

\item{inflationFactor}{numeric, the inflation factor with which the uncorrected
sample size should be multiplied to account e.g. for missingness;
default is NA}

\item{exactProduct}{boolean, if TRUE the sampleSize is exactly the product of
numberClusters and clusterSize; if FALSE the sampleSize may be smaller than
the product of numberClusters and clusterSize; default is TRUE}
}
\value{
a list with two dataframes: one with sampleAllocation info 
(availableClusters, numberClusters); one with design statistics
(numberClusters, sampleSize, desiredDifference, power)
}
\description{
Calculate design statistics for cluster sampling
}

