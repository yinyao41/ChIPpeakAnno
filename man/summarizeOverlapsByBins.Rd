\name{summarizeOverlapsByBins}
\alias{summarizeOverlapsByBins}
\title{
    Perform overlap queries between reads and genomic features by bins
}
\description{
    summarizeOverlapsByBins extends \link[GenomicAlignments]{summarizeOverlaps} 
    by providing fixed window size and step to split each feature into bins and 
    then do queries. It will return counts by signalSummaryFUN, 
    which applied to bins in one feature, for each feature.
}
\usage{
summarizeOverlapsByBins(targetRegions, reads, 
                            windowSize=50, step=10, 
                            signalSummaryFUN=max, 
                            mode=countByOverlaps, ...)
}
\arguments{
  \item{targetRegions}{
    A \link[GenomicRanges]{GRanges} object of genomic regions of interest.
}
  \item{reads}{
    A \link[GenomicRanges]{GRanges}, \link[GenomicRanges]{GRangesList}
    \link[GenomicAlignments]{GAlignments}, 
    \link[GenomicAlignments]{GAlignmentsList}, 
    \link[GenomicAlignments]{GAlignmentPairs} or 
    \link[Rsamtools]{BamFileList} object that represents the data to be 
    counted by \code{\link[GenomicAlignments]{summarizeOverlaps}}.
  }
  \item{windowSize}{
    Size of windows
  }
  \item{step}{
    Step of windows
  }
  \item{signalSummaryFUN}{
    function, which will be applied to the bins in each feature.
  }
  \item{mode}{
    mode can be one of the pre-defined count methods. see \link[GenomicAlignments]{summarizeOverlaps}. default is countByOverlaps, alia of countOverlaps(features, reads, ignore.strand=ignore.strand)
  }
  \item{...}{
    Additional arguments passed to \code{\link[GenomicAlignments]{summarizeOverlaps}}. 
  }
}

\value{
A \link[SummarizedExperiment]{RangedSummarizedExperiment} object. The assays slot holds the counts, rowRanges holds the annotation from features.
}

\author{
    Jianhong Ou
}

\examples{
    fls <- list.files(system.file("extdata", package="GenomicAlignments"),
                  recursive=TRUE, pattern="*bam$", full=TRUE)
    names(fls) <- basename(fls)
    genes <- GRanges(
        seqnames = c(rep("chr2L", 4), rep("chr2R", 5), rep("chr3L", 2)),
        ranges = IRanges(c(1000, 3000, 4000, 7000, 2000, 3000, 3600, 
                           4000, 7500, 5000, 5400), 
                         width=c(rep(500, 3), 600, 900, 500, 300, 900, 
                                 300, 500, 500),
                         names=letters[1:11])) 
    se <- summarizeOverlapsByBins(genes, fls, windowSize=50, step=10)
}
\keyword{ misc }