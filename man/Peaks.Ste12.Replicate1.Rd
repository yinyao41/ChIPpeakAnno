\name{Peaks.Ste12.Replicate1}
\alias{Peaks.Ste12.Replicate1}
\docType{data}
\title{
 Ste12-binding sites from biological replicate 1 in yeast (see reference)
}
\description{
 Ste12-binding sites from biological replicate 1 in yeast (see reference)
}
\usage{data(Peaks.Ste12.Replicate1)}
\format{
  RangedData with slot rownames containing the ID of peak as character, slot 
  start containing the start position of the peak, slot end containing the 
  end position of the peak and space containing the chromosome where the peak 
  is located.
}
\references{
Philippe Lefranois, Ghia M Euskirchen, Raymond K Auerbach, Joel Rozowsky, 
Theodore Gibson, Christopher M Yellman, Mark Gerstein  and Michael Snyder 
(2009) Efficient yeast ChIP-Seq using multiplex short-read DNA sequencing 
BMC Genomics 10:37
}
\examples{
data(Peaks.Ste12.Replicate1)
str(Peaks.Ste12.Replicate1)
}
\keyword{datasets}
