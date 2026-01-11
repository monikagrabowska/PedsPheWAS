\name{mapICDCodesToPedPhecodes}
\alias{mapICDCodesToPedPhecodes}
\title{Maps diagnosis codes to pediatric phecodes}

\description{
Called within the createPedPhenotypes() function. This function takes the codes in the id.vocab.code.index data frame passed into createPedPhenotypes() and maps them to pediatric phecodes. It returns a data frame with three columns: the id and index columns from the original id.vocab.code.index data frame, along with a new phecode column.}

\usage{
mapICDCodesToPedPhecodes(x)}

\arguments{
\item{input}{
The id.vocab.code.index data frame originally passed into the createPedPhenotypes() function.}

\item{vocabulary_map}{
Map used to translate diagnosis codes to pediatric phecodes. One of \code{"Peds-Phecodes"} (default, maps ICD-9-CM/ICD-10-CM/SNOMED CT codes to phecodes) or \code{"Peds-Phecodes-International"} (maps ICD-10 codes to phecodes).}
}

\value{
This function returns a dataframe containing the original id and index columns plus a new phecode column.}

\references{
\url{
https://github.com/PheWAS/PheWAS/blob/master/R/mapCodesToPhecodes.R}
\url{
https://github.com/PheWAS/PheWAS/blob/master/man/mapCodesToPhecodes.Rd}
}

\note{
Code adapted from the mapCodesToPhecodes() function in the original PheWAS R package.}
