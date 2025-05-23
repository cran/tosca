% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/removeXML.R
\name{removeXML}
\alias{removeXML}
\alias{removeUmlauts}
\alias{removeHTML}
\title{Removes XML/HTML Tags and Umlauts}
\usage{
removeXML(x)

removeUmlauts(x)

removeHTML(
  x,
  dec = TRUE,
  hex = TRUE,
  entity = TRUE,
  symbolList = c(1:4, 9, 13, 15, 16),
  delete = TRUE,
  symbols = FALSE
)
}
\arguments{
\item{x}{Character: Vector or list of character vectors.}

\item{dec}{Logical: If \code{TRUE} HTML-entities in decimal-style would be resolved.}

\item{hex}{Logical: If \code{TRUE} HTML-entities in hexadecimal-style would be resolved.}

\item{entity}{Logical: If \code{TRUE} HTML-entities in text-style would be resolved.}

\item{symbolList}{numeric vector to chhose from the 16 ISO-8859 Lists (ISO-8859 12 did not exists and is empty).}

\item{delete}{Logical: If \code{TRUE} all not resolved HTML-entities would bei deleted?}

\item{symbols}{Logical: If \code{TRUE} most symbols from ISO-8859 would be not resolved (DEC: 32:64, 91:96, 123:126, 160:191, 215, 247, 818, 8194:8222, 8254, 8291, 8364, 8417, 8470).}
}
\value{
Adjusted character string or list, depending on input.
}
\description{
Removes XML tags (removeXML), remove or resolve HTML tags (removeHTML) and changes german umlauts in a standardized form (removeUmlauts).
}
\details{
The decision which u.type is used should consider the language of the corpus, because in some languages the replacement of umlauts can change the meaning of a word.
To change which columns are used by removeXML use argument xmlAction in \code{\link{readTextmeta}}.
}
\examples{
xml <- "<text>Some <b>important</b> text</text>"
removeXML(xml)

x <- "&#x00f8; &#248; &oslash;"
removeHTML(x=x, symbolList = 1, dec=TRUE, hex=FALSE, entity=FALSE, delete = FALSE)
removeHTML(x=x, symbolList = c(1,3))

y <- c("Bl\UFChende Apfelb\UE4ume")
removeUmlauts(y)

}
\keyword{manip}
