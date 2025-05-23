% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeWordlist.R
\name{makeWordlist}
\alias{makeWordlist}
\title{Counts Words in Text Corpora}
\usage{
makeWordlist(text, k = 100000L, ...)
}
\arguments{
\item{text}{List of texts.}

\item{k}{Integer: How many texts should be processed at once (RAM
usage)?}

\item{...}{further arguments for the sort function. Often you
want to set \code{method = "radix"}.}
}
\value{
\item{words}{An alphabetical list of the words in the corpus}
\item{wordtable}{A frequency table of the words in the corpus}
}
\description{
Creates a wordlist and a frequency table.
}
\details{
This function helps, if \code{table(x)} needs too much RAM.
}
\examples{
texts <- list(A="Give a Man a Fish, and You Feed Him for a Day.
Teach a Man To Fish, and You Feed Him for a Lifetime",
B="So Long, and Thanks for All the Fish",
C="A very able manipulative mathematician, Fisher enjoys a real mastery
in evaluating complicated multiple integrals.")

texts <- cleanTexts(text=texts)
makeWordlist(text=texts, k = 2L)

}
\keyword{manip}
