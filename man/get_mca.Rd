% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_mca.R
\name{get_mca}
\alias{get_mca}
\alias{get_mca_var}
\alias{get_mca_ind}
\title{Extract the results for individuals/variables - MCA}
\usage{
get_mca(res.mca, element = c("var", "ind", "mca.cor", "quanti.sup"))

get_mca_var(res.mca, element = c("var", "mca.cor", "quanti.sup"))

get_mca_ind(res.mca)
}
\arguments{
\item{res.mca}{an object of class MCA [FactoMineR], acm [ade4], expoOutput/epMCA [ExPosition].}

\item{element}{the element to subset from the output. Possible values are 
"var" for variables, "ind" for individuals, "mca.cor" for correlation
between variables and principal dimensions, "quanti.sup" for quantitative supplementary variables.}
}
\value{
a list of matrices containing the results for the active 
  individuals/variable categories including : \item{coord}{coordinates for 
  the individuals/variable categories} \item{cos2}{cos2 for the 
  individuals/variable categories} \item{contrib}{contributions of the 
  individuals/variable categories} \item{inertia}{inertia of the 
  individuals/variable categories}
}
\description{
Extract all the results (coordinates, squared cosine and 
  contributions) for the active individuals/variable categories from Multiple
  Correspondence Analysis (MCA) outputs.\cr\cr \itemize{ \item get_mca(): 
  Extract the results for variables and individuals \item get_mca_ind(): 
  Extract the results for individuals only \item get_mca_var(): Extract the 
  results for variables only }
}
\examples{
\donttest{
# Multiple Correspondence Analysis
# ++++++++++++++++++++++++++++++
# Install and load FactoMineR to compute MCA
# install.packages("FactoMineR")
library("FactoMineR")
data(poison)
poison.active <- poison[1:55, 5:15]
head(poison.active[, 1:6])
res.mca <- MCA(poison.active, graph=FALSE)
 
 # Extract the results for variable categories
 var <- get_mca_var(res.mca)
 print(var)
 head(var$coord) # coordinates of variables
 head(var$cos2) # cos2 of variables
 head(var$contrib) # contributions of variables
 
 # Extract the results for individuals
 ind <- get_mca_ind(res.mca)
 print(ind)
 head(ind$coord) # coordinates of individuals
 head(ind$cos2) # cos2 of individuals
 head(ind$contrib) # contributions of individuals
 
 # You can also use the function get_mca()
 get_mca(res.mca, "ind") # Results for individuals
 get_mca(res.mca, "var") # Results for variable categories
 }
 
}
\references{
http://www.sthda.com/english/
}
\author{
Alboukadel Kassambara \email{alboukadel.kassambara@gmail.com}
}
