% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanTexts.R
\name{cleanTexts}
\alias{cleanTexts}
\title{Data Preprocessing}
\usage{
cleanTexts(
  object,
  text,
  sw = "en",
  paragraph = FALSE,
  lowercase = TRUE,
  rmPunctuation = TRUE,
  rmNumbers = TRUE,
  checkUTF8 = TRUE,
  ucp = TRUE
)
}
\arguments{
\item{object}{\code{\link{textmeta}} object}

\item{text}{Not necassary if \code{object} is specified, else should be
\code{object\$text}: List of article texts.}

\item{sw}{Character: Vector of stopwords. If the vector is of length
one, \code{sw} is interpreted as argument for \code{\link[tm]{stopwords}} from the tm package.}

\item{paragraph}{Logical: Should be set to \code{TRUE} if one article is a
list of character strings, representing the paragraphs.}

\item{lowercase}{Logical: Should be set to \code{TRUE} if all letters should
be coerced to lowercase.}

\item{rmPunctuation}{Logical: Should be set to \code{TRUE} if punctuation should
be removed from articles.}

\item{rmNumbers}{Logical: Should be set to \code{TRUE} if numbers should
be removed from articles.}

\item{checkUTF8}{Logical: Should be set to \code{TRUE} if articles should
be tested on UTF-8 - which is package standard.}

\item{ucp}{Logical: ucp option for \code{\link[tm]{removePunctuation}} from the tm package. Runs remove punctuation twice (ASCII and Unicode).}
}
\value{
A \code{\link{textmeta}} object or a list (if \code{object} is not specified) containing the preprocessed articles.
}
\description{
Removes punctuation, numbers and stopwords, changes letters into lowercase
and tokenizes.
}
\details{
Removes punctuation, numbers and stopwords, change into lowercase letters
and tokenization. Additional some cleaning steps: remove empty words /
paragraphs / article.
}
\examples{
texts <- list(A="Give a Man a Fish, and You Feed Him for a Day.
Teach a Man To Fish, and You Feed Him for a Lifetime",
B="So Long, and Thanks for All the Fish",
C="A very able manipulative mathematician, Fisher enjoys a real mastery
in evaluating complicated multiple integrals.")

corpus <- textmeta(meta=data.frame(id=c("A", "B", "C", "D"),
title=c("Fishing", "Don't panic!", "Sir Ronald", "Berlin"),
date=c("1885-01-02", "1979-03-04", "1951-05-06", "1967-06-02"),
additionalVariable=1:4, stringsAsFactors=FALSE), text=texts)

cleanTexts(object=corpus)

texts <- list(A=c("Give a Man a Fish, and You Feed Him for a Day.",
"Teach a Man To Fish, and You Feed Him for a Lifetime"),
B="So Long, and Thanks for All the Fish",
C=c("A very able manipulative mathematician,",
"Fisher enjoys a real mastery in evaluating complicated multiple integrals."))

cleanTexts(text=texts, sw = "en", paragraph = TRUE)

}
\keyword{manip}
