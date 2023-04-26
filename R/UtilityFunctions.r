if(getRversion() >= "2.15.1")
   utils::globalVariables(c("color", "coordsx", "coordsy", "fill.color",
      "hole", "IDpoly", "pGrp", "pGrpOrd", "plot.height", "plot.width",
      "print.file", "region", "tmp.adj", "tmp.data", "tmp.data1", "tmp.data2",
      "tmp.data3", "tmp.data4", "tmp.data5", "tmp.data6", "tmp.data7",
      "tmp.label", "tmp.labels", "tmp.y", "textx", "texty", "xmax", "xmin",
      "ymax", "ymin"))

#' @importFrom stats aggregate median poly
NULL

#' @importFrom grDevices colorRampPalette dev.off gray jpeg pdf png postscript tiff
NULL

#' @export
all_atts <- function(a, att.name)
   unlist(unlist(a)[which(att.name==names(unlist(a)))])

#' @export
all_attsb <- function(a, att.name)
   as.logical(unlist(a)[which(att.name==names(unlist(a)))])

#' @export
all_equal2 <- function(v)
   all(unlist(sapply(1:length(v), function(x) v[x]==v[x:length(v)])))

#' @export
make.string <- function(vct) {
	rtn <- vct[1]
	if (length(vct) > 1) for(i in 2:length(vct)) rtn <- paste(rtn, vct[i],sep=", ")
	
	rtn
}






#' Substring Function
#' 
#' Mimics the Excel Function of the Same Name
#' 
#' 
#' @param txt string to be substringed.
#' @param i number of characters to substring.
#' @return A character value containing the substring.
#' @author Quinn Payton \email{Payton.Quinn@@epa.gov}
#' @export right
right <- function(txt, i)
   substring(txt, nchar(txt)-i+1)

#' @export
subplot <- function(x, y)
   viewport(layout.pos.row = x, layout.pos.col = y)





