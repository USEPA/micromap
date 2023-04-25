

#' Example Dataset: Education and Poverty Levels
#' 
#' A datset comparing education and poverty levels among the states.
#' 
#' 
#' @name edPov
#' @docType data
#' @format A data frame with 51 rows and the following 5 columns: \describe{
#' \item{state}{full state name.} \item{ed}{education rate.} \item{pov}{poverty
#' rate.} \item{region}{major us region.} \item{StateAb}{abbreviated state
#' name.} }
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(edPov)
#' head(edPov)
#' 
NULL





#' Internal lmplot Functions
#' 
#' These functions are internal lmplot functions.
#' 
#' These functions are not to be called by the user. Includes all_atts, all_attsb, all_equal2, axis_opts, CatMaps, create_DF_rank, create_DF_cat, dot_legend_att, dot_legend_build, graph_opts, list_att, make.string, plot_opts, RankMaps, subplot
#' 
#' @name internal
#' @aliases all_atts all_attsb all_equal2 axis_opts CatMaps create_DF_rank
#' create_DF_cat dot_legend_att dot_legend_build graph_opts list_att
#' make.string plot_opts RankMaps subplot
#' @keywords internal
NULL





#' Example Dataset: Lung Cancer Mortality
#' 
#' Lung mortality rates for all 50 states and Washington D.C.
#' 
#' 
#' @name lungMort
#' @docType data
#' @format A data frame with 51 rows and the following 14 columns: \describe{
#' \item{StateAb}{abbreviation of state name.} \item{Rate_95}{mortality rate
#' estimate for 1995.} \item{Count_95}{estimated number of cases in 1995.}
#' \item{Lower_95}{lower bound of a 95 percent confidence interval for 1995
#' mortality rate.} \item{Upper_95}{lower bound of a 95 percent confidence
#' interval for 1995 mortality rate.} \item{Pop_95}{population in 1995.}
#' \item{StdErr_95}{estimated stadard error of the estimated mortality rate in
#' 2000.} \item{Rate_00}{mortality rate estimate for 2000.}
#' \item{Count_00}{estimated number of cases in 2000.} \item{Lower_00}{lower
#' bound of a 95 percent confidence interval for 2000 mortality rate.}
#' \item{Upper_00}{lower bound of a 95 percent confidence interval for 2000
#' mortality rate.} \item{Pop_00}{population in 2000.}
#' \item{StdErr_00}{estimated stadard error of the estimated mortality rate in
#' 2000.} \item{State}{full state name.} }
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(lungMort)
#' head(lungMort)
#' 
NULL





#' Example Dataset: Oregon Level 3 Ecoregion Shapefile
#' 
#' An object of class 'SpatialPolygonsDataFrame' that was created from a
#' shapefile detailing boundaries of the level 3 ecoregion borders of Oregon.
#' 
#' 
#' @name OrEcoLevel3
#' @docType data
#' @format The format is: Formal class 'SpatialPointsDataFrame' [package "sp"].
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(OrEcoLevel3)
#' spplot(OrEcoLevel3, zcol="US_L3NAME", col.regions=rainbow(9, s=0.75))
#' 
NULL





#' Example Dataset: A Table of State Polygons
#' 
#' Polygon vertices for each state.
#' 
#' 
#' @name statesFlatfile
#' @docType data
#' @format A data frame with 434 rows and the following 4 columns: \describe{
#' \item{ID}{abbreviation or state name.} \item{coordsx}{x coordinates for each
#' polygon vertice.} \item{coordsy}{y coordinates for each polygon vertice.}
#' \item{poly}{individual polygon identifier within each state.} }
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(statesFlatfile)
#' head(statesFlatfile)
#' 
NULL





#' Example Dataset: U.S. States Polygons
#' 
#' An object of class 'SpatialPolygonsDataFrame' that was created from a
#' shapefile of U.S. state borders.
#' 
#' 
#' @name USstates
#' @docType data
#' @format The format is: Formal class 'SpatialPolygonsDataFrame' [package
#' "sp"].
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(USstates)
#' plot(USstates)
#' 
NULL





#' Example Dataset: Vegetation Coverage Percentages
#' 
#' A subset of a larger vegetation coverage analysis dataset.
#' 
#' 
#' @name vegCov
#' @docType data
#' @format A data frame with 12 rows and the following 13 columns: \describe{
#' \item{Type}{the population name.} \item{Subpopulation}{the subpopulation
#' name, either national or level 3 ecoregion.} \item{Indicator}{the ecological
#' variable (indicator)} \item{Category}{category of disturbance.}
#' \item{NResp}{sample size.} \item{Estimate.P}{estimated percentage of
#' vegetation coverage with a given classification.} \item{StdError.P}{standard
#' error of the percentage estimate.} \item{LCB95Pct.P}{lower bound of a 95
#' percent confidence interval for the estimated percentage.}
#' \item{UCB95Pct.P}{upper bound of a 95 percent confidence interval for the
#' estimated percentage.} \item{Estimate.U}{estimated area of vegetation
#' coverage with a given classification.} \item{StdError.U}{standard error of
#' the area estimate.} \item{LCB95Pct.U}{lower bound of a 95 percent confidence
#' interval for the estimated area.} \item{UCB95Pct.U}{upper bound of a 95
#' percent confidence interval for the estimated area.} }
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(vegCov)
#' head(vegCov)
#' 
NULL





#' Example Dataset: Major U.S. EcoRegions
#' 
#' An object of class 'SpatialPolygonsDataFrame' that was created from a
#' shapefile of the U.S. level 3 ecoregion boundaries.
#' 
#' 
#' @name WSA3
#' @docType data
#' @format The format is: Formal class 'SpatialPointsDataFrame' [package "sp"].
#' @note This is just an example data set.
#' @keywords datasets
#' @examples
#' 
#' data(WSA3)
#' spplot(WSA3, zcol="WSA_3_NM", col.regions=rainbow(3, s=0.75))
#' 
NULL



