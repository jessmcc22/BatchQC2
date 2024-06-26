% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/negative_binomial_check.R
\name{nb_proportion}
\alias{nb_proportion}
\title{This function determines the proportion of p-values below a specific value
and compares to the previously determined threshold of 0.42 for extreme low
values.}
\usage{
nb_proportion(p_val_table, low_pval = 0.01, threshold = 0.42)
}
\arguments{
\item{p_val_table}{table of p-values from the nb test}

\item{low_pval}{value of the p-value cut off to use in proportion}

\item{threshold}{the value to compare the p-values to}
}
\value{
a statement about whether DESeq2 is appropriate to use for analysis
}
\description{
This function determines the proportion of p-values below a specific value
and compares to the previously determined threshold of 0.42 for extreme low
values.
}
\examples{
# example code
library(scran)
se <- mockSCE()
nb_results <- goodness_of_fit_DESeq2(se = se, count_matrix = "counts",
  condition = "Treatment", batch = "Mutation_Status")
nb_proportion(nb_results, low_pval = 0.01, threshold = 0.42)
}
