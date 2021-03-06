\name{featureAlignedHeatmap}
\alias{featureAlignedHeatmap}
\title{
    Heatmap representing signals in given ranges
}
\description{
    plot heatmap in the given feature ranges
}
\usage{
featureAlignedHeatmap(cvglists, feature.gr, upstream, downstream, 
             zeroAt, n.tile=100, 
             annoMcols=c(), sortBy=names(cvglists)[1],
             color=colorRampPalette(c("yellow", "red"))(50),
             lower.extreme, upper.extreme,
             margin=c(0.1, 0.01, 0.15, 0.1), gap=0.01, 
             newpage=TRUE, gp=gpar(fontsize=10),
             ...)
}
\arguments{
  \item{cvglists}{
    Output of \link{featureAlignedSignal} or a 
    list of \link[IRanges]{SimpleRleList} or \link[IRanges]{RleList}
}
  \item{feature.gr}{
    An object of \link[GenomicRanges]{GRanges} with identical width. 
    If the width equal to 1, you can use upstream and downstream to set
    the range for plot.
    If the width not equal to 1, you can use zeroAt to set the zero point
    of the heatmap.
  }
  \item{upstream, downstream}{upstream or dwonstream from the feature.gr.
  It must keep same as \link{featureAlignedSignal}. It is used for x-axis label.}
  \item{zeroAt}{zero point position of feature.gr}
  \item{n.tile}{The number of tiles to generate for each element of feature.gr, 
    default is 100}
  \item{annoMcols}{The columns of metadata of feature.gr that specifies the
  annotations shown of the right side of the heatmap.}
  \item{sortBy}{Sort the feature.gr by columns by annoMcols and then the signals
  of the given samples. Default is the first sample. Set to NULL to disable sort.
  }
  \item{color}{vector of colors used in heatmap}
  \item{lower.extreme, upper.extreme}{The lower and upper boundary value of 
  each samples}
  \item{margin}{Margin for of the plot region.}
  \item{gap}{Gap between each heatmap columns.}
  \item{newpage}{Call grid.newpage or not. Default, TRUE}
  \item{gp}{A gpar object can be used for text.}
  \item{...}{Not used.}
}
\value{
  invisible \link[grid]{gList} object.
}
\author{
  Jianhong Ou
}
\seealso{
  See Also as \link{featureAlignedSignal}, \link{featureAlignedDistribution}
}
\examples{
  cvglists <- list(A=RleList(chr1=Rle(sample.int(5000, 100), 
                                      sample.int(300, 100))), 
                   B=RleList(chr1=Rle(sample.int(5000, 100), 
                                      sample.int(300, 100))))
  feature.gr <- GRanges("chr1", IRanges(seq(1, 4900, 100), width=100))
  feature.gr$anno <- rep(c("type1", "type2"), c(25, 24))
  featureAlignedHeatmap(cvglists, feature.gr, zeroAt=50, annoMcols="anno")
}
\keyword{ misc }
