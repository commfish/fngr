% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tickr.R
\name{tickr}
\alias{tickr}
\title{Adjust axis tick marks and labels}
\usage{
tickr(data, var, to = 5, start = NULL, end = NULL)
}
\arguments{
\item{data}{= input dataframe}

\item{var}{= variable of interest e.g., year}

\item{to}{= step increase desired e.g., every 5 years}

\item{start}{= adjust the start value}

\item{end}{= adjust the end vlaue}
}
\value{
tickr
}
\description{
Adjust axis tick marks and labels
}
\examples{

data.frame(year = 1970:2019,
catch = rnorm(50, 10, 2)) -> df

xaxis <- tickr(df, year, 10)

df \%>\%
  ggplot(aes(year, catch)) +
  geom_point() +
  scale_x_continuous(labels = xaxis$labels, breaks = xaxis$breaks)

theme_set(theme_sleek(base_size = 12, base_family = "Bookman"))

}
