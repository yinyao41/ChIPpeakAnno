\name{condenseMatrixByColnames}
\Rdversion{1.1}
\alias{condenseMatrixByColnames}
\title{
condense matrix by colnames
}
\description{
condense matrix by colnames
}
\usage{
condenseMatrixByColnames(mx,iname,sep=";",cnt=FALSE)
}
\arguments{
  \item{mx}{a matrix to be condensed}
  \item{iname}{the name of the column to be condensed}
  \item{sep}{separator for condensed values,default ;}
  \item{cnt}{TRUE/FALSE specifying whether adding count column or not?}
}
\details{

}
\value{
dataframe of condensed matrix
}
\references{
}
\author{
Jianhong Ou, Lihua Julie Zhu
}
\note{
}

\seealso{

}
\examples{
a<-matrix(c(rep(rep(1:5,2),2),rep(1:10,2)),ncol=4)
colnames(a)<-c("con.1","con.2","index.1","index.2")
condenseMatrixByColnames(a,"con.1")
condenseMatrixByColnames(a,2)
}

\keyword{ misc }