\name{convert2EntrezID}
\Rdversion{1.1}
\alias{convert2EntrezID}
\title{
Convert other common IDs to entrez gene ID.
}
\description{
Convert other common IDs such as ensemble gene id, gene symbol, 
refseq id to entrez gene ID leveraging organism annotation dataset. 
For example, org.Hs.eg.db is the dataset from orgs.Hs.eg.db package for human, 
while org.Mm.eg.db is the dataset from the org.Mm.eg.db package for mouse.
}
\usage{
convert2EntrezID(IDs, orgAnn, ID_type="ensembl_gene_id")
}
\arguments{
  \item{IDs}{a vector of IDs such as ensembl gene ids}
  \item{orgAnn}{organism annotation dataset such as org.Hs.eg.db}
  \item{ID_type}{type of ID: can be ensemble_gene_id, gene_symbol or refseq_id}
}
\value{
vector of entrez ids
}
\author{
Lihua Julie Zhu
}
\examples{
ensemblIDs = c("ENSG00000115956", "ENSG00000071082", "ENSG00000071054",
 "ENSG00000115594", "ENSG00000115594", "ENSG00000115598", "ENSG00000170417")
library(org.Hs.eg.db)
entrezIDs = convert2EntrezID(IDs=ensemblIDs, orgAnn="org.Hs.eg.db",
 ID_type="ensembl_gene_id")
}
\keyword{ misc }
