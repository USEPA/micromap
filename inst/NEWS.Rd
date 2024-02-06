\name{NEWS}
\title{micromap News}

\section{CHANGES IN micromap VERSION 1.9.8 (Released 2024-01-26)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item None
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item Added GitHub URLs to DESCRIPTION
      \item Added tangle output from vignette
    }
  }
}

\section{CHANGES IN micromap VERSION 1.9.7 (Released 2023-04-25)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item None
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item Fixed missing exports
    }
  }
}

\section{CHANGES IN micromap VERSION 1.9.6 (Released 2023-04-24)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item Dependency on \code{maptools} was removed 
      \item Vignette information about rgdal or rgeos was removed
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None
    }
  }
}

\section{CHANGES IN micromap VERSION 1.9.5 (Released 2020-09-28)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item Added \code{sf} method dispatch for \code{mmplot} and \code{sf} dependency to the package.    
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item Added error message if \code{"median"} is a named column used in \code{stat.data} or \code{panel.data} input to \code{mmplot}.  This was creating an error in the plot call that was unclear.
    }
  }
}

\section{CHANGES IN micromap VERSION 1.9.4 (Released 2020-09-02)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item None    
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item Fix to CRS strings for stale sp data objects included with the package.  This was done in anticipation of updates to sp and rgdal.  This affects the \code{USstates}, \code{WSA3}, and \code{OrEcoLevel3} data objects used in the examples and the \code{txeco} data object used in the vignette.
      \item The package now requires R version >= 3.5 for compliance of data objects to version 3. 
      \item Added \code{default = TRUE} to \code{coord_cartesian()} on ggplot objects to prevent messaging on plot functions.
    }
  }
}

\section{CHANGES IN micromap VERSION 1.9.3 (Released 2018-02-05)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item trans argument added to mmplot for axis transformations.    
      \item mmplot includes a method for SpatialPolygonsDataFrame objects.
      \item Plot objects no longer open in a separate graphics window.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item Expanded color ramp to include all observations in a perceptual grouping.
      \item Fixed namespace conflicts between grid and ggplot 2.x.
      \item Font for text called explicitly as 'sans' to prevent warning of 'font family not found'.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.9.2 (Released 2015-02-06)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item None.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item  Revised the DESCRIPTION file to avoid errors for functions imported
        from other packages.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.9.1 (Released 2015-01-23)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item  Revised the CITATION file to reference the article in the Journal
        of Statistical Software.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.9 (Released 2014-05-27)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item  Added an index.html file to the doc directory so that files in the
        directory can be viewed from the package help page.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.8 (Released 2014-03-20)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item  Created a print method for objects of class mm (micromap).
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.7 (Released 2014-01-08)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item  Added shading options for micromaps.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}


\section{CHANGES IN micromap VERSION 1.6 (Released 2013-05-31)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item Renamed the statesShapefile dataset to USstates.

      \item Created a list of variables that are defined globally when the check
        tool is applied to the package.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}

\section{CHANGES IN micromap VERSION 1.5 (Released 2012-12-18)}{
  \subsection{NEW FEATURES}{
    \itemize{
      \item This is the original CRAN release of the package.
    }
  }

  \subsection{BUG FIXES}{
    \itemize{
      \item None.
    }
  }
}
