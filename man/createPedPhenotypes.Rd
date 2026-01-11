\name{createPedPhenotypes}
\alias{createPedPhenotypes}
\title{Create pediatric phenotypes}

\description{
This function translates diagnosis codes into pediatric phecodes using either the \code{"Peds-Phecodes"} or \code{"Peds-Phecodes-International"} vocabulary map. It takes in a data frame with four columns: id, vocabulary_id (specified as "ICD9CM"/"ICD10CM"/"SNOMEDCT_US" if using the \code{"Peds-Phecodes"} map and "ICD10" if using the \code{"Peds-Phecodes-International"} map), code, and index. The function returns a data frame with boolean phenotypes for the individuals in the input file – the first column contains the individual IDs and the remaining columns indicate case/control/exclude status for each of the pediatric phecodes (case = TRUE, control = FALSE, exclude = NA).}

\usage{
createPedPhenotypes(x)}

\arguments{
\item{id.vocab.code.index}{
A data frame with four columns: id, vocabulary_id, code, and index. The vocabulary_id values must match those supported by the selected vocabulary_map. The code column must be a character column to ensure proper mapping to phecodes. Leading and trailing zeros should be preserved for ICD codes in the code column. The index can be a code count or a diagnosis date. If dates are supplied, only distinct ICD code/date pairs are counted for an individual.}

\item{id.sex}{
A data frame with two columns: id and sex (specified as "M" or "F"). Needed for proper evaluation of the sex-specific pediatric phecodes.}

\item{min.code.count}{
The minimum ICD code count for an individual to be considered a case (default = 2).}

\item{full.population.ids}{
A list of IDs for the complete population. This is needed to ascertain control status for individuals with no ICD codes in the input data frame. By default, uses the number of unique person IDs in the id.vocab.code.index data frame.}

\item{vocabulary_map}{
Map used to translate diagnosis codes to pediatric phecodes. One of \code{"Peds-Phecodes"} (default, maps ICD-9-CM/ICD-10-CM/SNOMED CT codes to phecodes) or \code{"Peds-Phecodes-International"} (maps ICD-10 codes to phecodes).}
}

\value{
The function returns a data frame with boolean phenotypes for the individuals in the input file – the first column contains the individual IDs and the remaining columns indicate case/control/exclude status for each of the pediatric phecodes (case = TRUE, control = FALSE, exclude = NA).}

\references{
\url{
https://github.com/PheWAS/PheWAS/blob/master/R/createPhenotypes.R}
\url{
https://github.com/PheWAS/PheWAS/blob/master/man/createPhenotypes.Rd}
}
