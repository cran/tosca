% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mergeLDA.R
\name{mergeLDA}
\alias{mergeLDA}
\title{Preparation of Different LDAs For Clustering}
\usage{
mergeLDA(x)
}
\arguments{
\item{x}{A list of lda results.}
}
\value{
A matrix including all topics from all lda-results. The number of rows
is the number of topics, the number of columns is the number of words which
appear in all results.
}
\description{
Merges different lda-results to one matrix, including only the words which
appears in all lda-results.
}
\details{
The function is useful for merging lda-results prior to a cluster analysis with \code{\link{clusterTopics}}.
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

corpus <- cleanTexts(corpus)
wordlist <- makeWordlist(corpus$text)
ldaPrep <- LDAprep(text=corpus$text, vocab=wordlist$words)

LDA1 <- LDAgen(documents=ldaPrep, K = 3L, vocab=wordlist$words, num.words=3)
LDA2 <- LDAgen(documents=ldaPrep, K = 3L, vocab=wordlist$words, num.words=3)
mergeLDA(list(LDA1=LDA1, LDA2=LDA2))
}
\keyword{manip}
