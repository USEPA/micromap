#' Linked Micromaps
#'
#' Creates a linked micromap, displaying specified polygons and their associated statistical summary displays; differentiated by color.
#' 
#' @param stat.data table of statistics for display
#' @param map.data table of polygons to be associated with each item in stat.data.
#' @param panel.types vector of panel types to specify the layout of the plot (e.g. c('map', 'labels', 'dot.cl'))
#' @param panel.data a list (of lists) of data to be used with each panel (e.g. list(NA, 'Names', list('lower.bound','estimate','upper.bound')).
#' @param map.link a vector with the name of the columns from stat.data and map.data, respectively, on which to join.
#' @param nPanels the number of panels, which is not expected to be set by the user.  The default is the length of panel.types.
#' @param ord.by The column name from stat.data with which to order the lines of the output graphic for a standard lmPLot or identifier column on which to group the categorized lmPLot.
#' @param grp.by The column name from stat.data with which to order the lines of the output graphic for a standard lmPLot or identifier column on which to group the categorized lmPLot.
#' @param rev.ord specifies whether the plot should be displayed in reverse order of the ranking column. The default is FALSE.
#' @param grouping the number of lines per perceptual group (for the standard lmplot only). Can be a single number to have the same numer in each group or a vector of numbers for unequal groupings.
#' @param median.row specifies whether a median row should be included.  If an odd number of data lines are supplied, a data line itself will be used as the median, otherwise median entries will be calculated from the supplied data. Note that without a median row maps are forced into proper size.
#' @param vertical.align controls vertical alignment of the median row.
#' @param median.color specifies color of the median row.
#' @param median.text.color specifies color of text in the median row.
#' @param median.text.size specifies size of text in the median row.
#' @param median.text.label specifies the label for text in the median row.
#' @param cat category column within stats table for a categorization type lmplot.
#' @param colors a vector of colors for the perceptual groups.  The default is brewer.pal(max(grouping), 'Spectral') for lmplot and brewer.pal(10, 'Spectral') for lmgroupedplot).  The colors are passed to \code{\link[grDevices]{colorRampPalette}} to create a continuous color vector equal in length to the groupings. 
#' @param map.color the color to fill in previously displayed polygons.
#' @param map.all by default, lmplot will only plot the polygons associated with data in the stats table; map.all = TRUE will show all the polygons in the polygon table regardless of whether they are actively referred to.
#' @param map.color2 the color to fill in previously displayed polygons.
#' @param trans chr string for axis transformations, passed to \code{\link[ggplot2]{scale_x_continuous}}.  Acceptable values are "asn", "atanh", "boxcox", "exp", "identity", "log", "log10", "log1p", "log2", "logit", "probability", "probit", "reciprocal", "reverse" or "sqrt".  One value will be recycled to all panels as needed, otherwise one per panel can be used in a combined string. Applies only to panels with axes.
#' @param two.ended.maps the resulting micromaps will highlight previously referenced polygons (see map.color2) up to the median perceptual group then switch to highlighting all polygons that are still to be referenced later.
#' @param print.file name of the file being created. The extension (.pdf, .tiff, .jpeg, .png) tells lmplot which image creation tool to use.
#' @param print.res the resolution of the image to use.
#' @param panel.att a list of panel specific attributes to be altered (see lmplot documentation).
#' @param plot.header the overall title to be placed on the lmPLot.
#' @param plot.header.size size of the overall title to be placed on the lmPLot.
#' @param plot.header.color color of the overall title to be placed on the lmPLot.
#' @param plot.footer the overall footer to be placed under the lmPLot.
#' @param plot.footer.size size of the overall footer to be placed under the lmPLot.
#' @param plot.footer.color color of the overall footer to be placed under the lmPLot.
#' @param plot.width width of the overall plot in inches. Defaults to 7.
#' @param plot.height height of the overall plot in inches. Defaults to 7.
#' @param map.spacing the vertical spacing between maps measured in lines. Perceptual group spacing does not affect map spacing so as to leave the maps as large as possible. The user can increase map spacing using this argument. Defaults to 1.
#' @param plot.pGrp.spacing the vertical spacing between perceptual groups measured in lines. Defaults to 1.
#' @param plot.grp.spacing the vertical spacing between groups measured in lines. Defaults to 1.   
#' @param plot.panel.spacing the vertical spacing between panels measured in lines. Defaults to 1.
#' @param plot.panel.margins the horizontal spacing between panels measured in lines. THIS IS LEGACY CODE AND SHOULD NOT BE USED.
#' @param ... Additional arguments passed to or from other methods.
#'   
#' @return A list of ggplot2 objects with entries for each individual panel.
#' 
#' @note See the Introduction Guide for a full list of the options available for altering micromaps.
#'
#' @author Quinn Payton \email{Payton.Quinn@@epa.gov}
#' 
#' @keywords hplot
#' 
#' @aliases mmplot lmplot mmgroupedplot lmgroupedplot
#' 
#' @name mmplot
#' 
#' @examples
#' # initial example
#' 
#' data("USstates")
#' head(USstates@@data)
#' statePolys <- create_map_table(USstates, 'ST')
#' head(statePolys)
#' 
#' data("edPov")
#' 
#' # basic figure 1
#' lmplot(stat.data = edPov,
#'   	map.data = statePolys,
#' 	panel.types = c('labels', 'dot', 'dot','map'),
#' 	panel.data = list('state','pov','ed', NA),
#' 	ord.by = 'pov',   
#' 	grouping = 5, median.row = TRUE,
#' 	map.link = c('StateAb','ID'))
#' 
#' \dontrun{
#' # publication figure 1a
#' lmplot(stat.data = edPov,  map.data = statePolys ,
#' 	panel.types = c('labels', 'dot', 'dot','map'),
#' 	panel.data = list('state','pov','ed', NA),
#' 	ord.by = 'pov',  
#' 	grouping = 5, 
#'   	median.row = TRUE,
#' 	map.link = c('StateAb','ID'),
#' 	
#'   	plot.height = 9,							
#' 	colors = c('red','orange','green','blue','purple'), 
#' 	map.color2 = 'lightgray',
#'        
#' 	panel.att = list(
#' 	    list(1, header = 'States', panel.width = .8, align = 'left', 
#' 	      text.size = .9),
#' 			list(2, header = 'Percent Living Below \n Poverty Level',
#' 				graph.bgcolor = 'lightgray', point.size = 1.5,
#' 				xaxis.ticks = list(10,15,20), xaxis.labels = list(10,15,20),
#' 				xaxis.title = 'Percent'),
#' 			list(3, header = 'Percent Adults With\n4+ Years of College',
#' 				graph.bgcolor = 'lightgray', point.size = 1.5,
#' 				xaxis.ticks = list(0,20,30,40), xaxis.labels = list(0,20,30,40),
#' 				xaxis.title = 'Percent'),
#' 			list(4, header = 'Light Gray Means\nHighlighted Above',  
#' 				inactive.border.color = gray(.7), inactive.border.size = 2,	
#' 				panel.width = .8)))
#' 
#' edPov$points <- 0	
#' 
#' # publication figure 1b
#' lmplot (stat.data = edPov, map.data = statePolys,
#' 	panel.types = c('dot',  'labels', 'dot', 'dot', 'map'),
#' 	panel.data = list('points', 'state', 'pov', 'ed', NA),
#' 	map.link = c('StateAb','ID'),
#' 	ord.by = 'pov', 
#' 	grouping = 5, 
#' 	median.row = TRUE, 
#' 	
#' 	plot.height = 9, 
#' 	
#' 	colors = c('red','orange','green','blue','purple'),
#' 	map.color2 = 'lightgray', 
#' 
#' 	panel.att = list(list(1, panel.width = .15, point.type = 20,
#' 					graph.border.color = 'white',
#' 					xaxis.text.display = FALSE, xaxis.line.display = FALSE,
#' 					graph.grid.major = FALSE),
#' 	
#' 				list(2, header = 'States', panel.width = .8, 
#' 					align = 'left', text.size = .9),
#' 
#' 				list(3, header = 'Percent Living Below\nPoverty Level',
#' 					graph.bgcolor = 'lightgray', point.size = 1.5,
#' 					xaxis.ticks = list(10,15,20), 
#' 					xaxis.labels = list(10,15,20),
#' 					xaxis.title = 'Percent'),
#' 
#' 				list(4, header = 'Percent Adults With\n4+ Years of College',
#' 					graph.bgcolor = 'lightgray', point.size = 1.5,
#' 					xaxis.ticks = list(20,30,40), 
#' 					xaxis.labels = list(20,30,40), 
#' 					xaxis.title = 'Percent'),
#' 	
#' 				list(5, header = 'Light Gray Means\nHighlighted Above', 
#' 					inactive.border.color = gray(.7), inactive.border.size = 2, 
#' 					panel.width = .8)))
#'
#' # publication figure 1c
#' myPlot <- lmplot(stat.data = edPov, map.data = statePolys,
#' 	panel.types = c('map', 'dot',  'labels', 'dot', 'dot'),
#' 	panel.data = list(NA, 'points', 'state', 'pov', 'ed'),
#' 	map.link = c('StateAb','ID'),
#' 	ord.by = 'pov', 
#' 	grouping = 5, 
#' 	median.row = TRUE,
#' 
#' 	plot.height = 9, 
#' 	
#' 	colors = c('red','orange','green','blue','purple'),
#' 	map.color2 = 'lightgray', 
#' 
#' 	panel.att = list(list(2, panel.width = .15, point.type = 20,
#' 				graph.border.color = 'white',
#' 				xaxis.text.display = FALSE, xaxis.line.display = FALSE,
#' 				graph.grid.major = FALSE),
#' 
#' 			list(3, header = 'States', panel.width = .8, 
#' 				align = 'left', text.size = .9),
#' 
#' 			list(4, header = 'Percent Living Below\nPoverty Level',
#' 				graph.bgcolor = 'lightgray', point.size = 1.5,
#' 				xaxis.ticks = list(10,15,20), xaxis.labels = list(10,15,20),
#' 				xaxis.title = 'Percent'),
#' 
#' 			list(5, header = 'Percent Adults With\n4+ Years of College',
#' 				graph.bgcolor = 'lightgray', point.size = 1.5,
#' 				xaxis.ticks = list(20,30,40), 
#' 				xaxis.labels = list(20,30,40), 
#' 				xaxis.title = 'Percent'),
#' 	
#' 			list(1, header = 'Light Gray Means\nHighlighted Above', 
#' 				inactive.border.color = gray(.7), inactive.border.size = 2, 
#' 				panel.width = .8)))
#' 
#' print(myPlot, name = 'myExhibit.tiff', res = 300)
#' }
mmplot <- function(map.data, ...) UseMethod('mmplot')


#' @rdname mmplot
#' 
#' @export
#' 
#' @method mmplot SpatialPolygonsDataFrame
mmplot.SpatialPolygonsDataFrame <- function(map.data, ...){
  
  # separate map.data and stat.data from the combined input
  # put in format used by the default method
  map.data@data$ID <- row.names(map.data@data)
  stat.data <- map.data@data   
  map.data <- create_map_table(map.data, IDcolumn = 'ID')
  map.link <- c('ID', 'ID')
  
  # use default method
  mmplot.default(map.data, stat.data, map.link = map.link, ...)
  
}

#' @rdname mmplot
#' 
#' @export
#' 
#' @method mmplot default
mmplot.default <- function(map.data, 
                           stat.data, 
                           panel.types, 
                           panel.data, 		
                           map.link,				
                           nPanels = length(panel.types),	
                           ord.by, rev.ord = FALSE,	
                           grouping, 		
                           median.row = FALSE, 		
                           vertical.align = 'top',
                           median.color = gray(.5),
                           median.text.color = 'black',
                           median.text.size = 1,
                           median.text.label = 'Median',
                           colors = brewer.pal(max(grouping), "Spectral"),	
                           map.all = FALSE, 
                           map.color2 = 'lightgray',
                           two.ended.maps = FALSE,
                           trans = 'identity', 
                           print.file = 'no', print.res = 300,
                           panel.att = vector("list", nPanels),
                           plot.header = NA,
                           plot.header.size = NA,
                           plot.header.color = NA,
                           plot.footer = NA,
                           plot.footer.size = NA,
                           plot.footer.color = NA,
                           plot.width = 7,
                           plot.height = 7,
                           map.spacing = 1,
                           plot.pGrp.spacing = 1,
                           plot.panel.spacing = 1,
                           plot.panel.margins = c(0,0,1,0), 
                           ...
){		
  
  # rename function inputs
  dStats <- stat.data
  dMap <- map.data
  
  # get plot colors, add median if supplied
  colors = colorRampPalette(colors)(max(grouping))
  if(median.row) colors <- c(colors, median.color) 
  
  pps = plot.panel.spacing*.05
  
  ###################################
  ## create attribute object/list ###
  ##################################
  
  # Set "plot wide" options first
  plot.atts <- list(						
    plot.pGrp.spacing = plot.pGrp.spacing*.05,
    plot.panel.margins = plot.panel.margins,
    ord.by = ord.by, 
    grouping = grouping, 
    colors = colors,
    map.spacing = map.spacing*.025,
    plot.width = plot.width,
    plot.height = plot.height,
    median.row = median.row
  )			
  
  # grab default attribute lists for each panel
  a <- vector("list", nPanels)
  for(p in 1:nPanels) {	
    att.name <- paste(panel.types[p],'_att',sep = '')				# <panel type>.att is the name of the function that creates the 
    att.function <- paste(panel.types[p],'_att()',sep = '')			# 	default attribute list. we check that it exists then run it
    if(exists(att.name)) a[[p]] <- eval(parse(text = att.function)) else a[[p]] <- eval(parse(text = standard_att))
  }
  
  a <- append(a, plot.atts)
  
  # check trans argument, recycle trans if only one value
  withax <- which(!panel.types %in% c('dot_legend', 'map', 'labels'))
  if(length(trans) == 1) 
    trans <- rep(trans, length(withax))
  if(length(trans) != length(withax))
    stop('trans argument must have length equal to 1 or number of plots with axes')
  
  # assign trans to the attributes  
  for(ax in seq_along(withax)) a[[withax[ax]]]$trans <- paste0('"', trans[ax], '"')
  
  # panel data must be specified for every panel type so 
  #	we include it in our attribute list here
  for(j in 1:length(panel.types)) a[[j]] <- append(a[[j]], list(panel.data = unlist(panel.data[[j]])))
  
  # all additional specified attributes are now dealt with
  # this loops through each sub list of the panel.att list, then loops through its entries, matching 
  # 	the names with those in the "a" object. The stored values in "a" are replaced with the users inputs
  for(j in 1:length(panel.att)){	
    k <- unlist(panel.att[[j]][1], use.names = FALSE)		# the first entry specifies which panel (i.e. which sublist) is being modified
    
    allnames <- names(panel.att[[j]])[-1]			# grab the names of the sublist entries
    for(s in allnames){	# s = 'header'
      
      w <- match(s, names(a[[k]]))							# match the names to those in "a"
      if(is.na(w)) w <- match(paste('panel.',s,sep = ''), names(a[[k]]))	# the "panel." part of the attribute name is somewhat 
      #	implies so a user may have left it off 
      
      # replace the attribute or warn that no attribute by that name was found										
      if(!is.na(w)) a[[k]][[w]] <- unlist(panel.att[[j]][s], use.names = FALSE) else warning(paste('"',s,'"',' is not a recognized attribute for panel type ','"',panel.types[j],'"', sep = ''), call. = FALSE, immediate. = TRUE)
    }	
    
    if(!is.null(k)){
      w <- match('left.margin', names(a[[k]]))
      if(!is.na(w) & !is.na(a[[k]][[w]])) 	a[[k]]$panel.margins[4] <- a[[k]]$panel.margins[4] + a[[k]][[w]]
      w <- match('right.margin', names(a[[k]]))
      if(!is.na(w) & !is.na(a[[k]][[w]])) 	a[[k]]$panel.margins[2] <- a[[k]]$panel.margins[2] + a[[k]][[w]]
    }
    
  }
  
  
  ### several median options to carry over to the map panel
  a$median.text.color <- median.text.color
  a$median.text.size <- median.text.size
  a$median.text.label <- median.text.label
  
  
  ### There are several artifact map arguments that can 
  ###   be translated to the new way of doing things
  if(any(panel.types == 'map')){
    ww <- which(panel.types == 'map')
    if(map.all == TRUE) a[[ww]]$map.all <- T
    if(!map.color2 == 'lightgray') a[[ww]]$inactive.border.color <- map.color2
    if(two.ended.maps == TRUE) a[[ww]]$fill.regions <- "two ended"
  }
  
  if(any(panel.types == 'dot_legend')) a[[which(panel.types == 'dot_legend')]]$panel.width <- a[[which(panel.types == 'dot_legend')]]$panel.width * .2
  
  ####################################################
  ### Warnings for misspecified attributes
  ####################################################
  
  # There are various differences in panel specifications that might screw up vertical alignment among the panels
  #   We warn users that they've screwed up here:
  if(!all_equal2(all_atts(a, 'panel.margins1')) | !all_equal2(all_atts(a, 'panel.margins3'))) warning("top and bottom panel margins should be equal in order for panels to align correctly", call. = FALSE, immediate. = TRUE)
  if(!all_equal2(all_atts(a, 'panel.header.size'))) warning("header sizes should be equal in order for panels to align correctly", call. = FALSE, immediate. = TRUE)
  if(!all_equal2(all_atts(a, 'xaxis.title.size'))) warning("x axis title sizes should be equal in order for panels to align correctly", call. = FALSE, immediate. = TRUE)
  
  if(!(all_atts(a, 'fill.regions') %in% c('aggregate','two ended','with data'))) stop("fill.regions must specified as either 'aggregate', 'two ended', or 'with data'", call. = FALSE, immediate. = TRUE)
  
  ##########################
  ## data reorganization ###
  ##########################
  # move dStats into the DF variable, add an overall rank column, a perceptual group column based on ranks, a
  # 	within perceptual group ranking, and a column specifying if any entry row should be the median row 												
  DF <- create_DF_rank(dStats, ord.by, grouping, median.row, rev.ord, vertical.align)
  
  # add entries in the attribute list so that information about the median can be passed 
  # 	among all the panel building and cleaning functions
  if(any(DF$median)){
    a$m.pGrp <- DF$pGrp[DF$median]
    a$m.rank <- DF$rank[DF$median]
  } else {
    a$m.rank <- max(DF$rank+1)/2
    a$m.pGrp <- DF$pGrp[DF$rank == floor(a$m.rank)] + .5
  }
  
  # Many panel plotting functions add extra columns to the DF table. This is
  #   created here as a reference to default back to after each panel is conctructed
  DF.hold <- DF
  a$ncols <- ncol(DF.hold)	# so we can keep track of how many extra columns have been added		
  # for now, this is only used in "assimilate.plot" function
  
  
  # Rearrange the map data table, with a rank, pGrp, and pGrpOrd column
  if(!is.null(map.data) & any(panel.types == 'map')){
    # clear out any NA rows
    dMap <- dMap[!(is.na(dMap$coordsx)|is.na(dMap$coordsy)),]
    
    # if map.all is not specified we remove all polygons from mapDF that
    # 	which are not linked to the stat table
    w <- match(dMap[,map.link[2]], unique(DF[,map.link[1]]))
    if(!a[[which(panel.types == 'map')]]$map.all) mapDF <- dMap[!is.na(w),] else mapDF <- dMap
    
    # make sure there is a hole and plug column. If not, just insert dummy columns 
    if(!'hole'%in%names(mapDF)) mapDF$hole <- 0
    if(!'plug'%in%names(mapDF)) mapDF$plug <- 0
    
    # link the pGrp and rank columns for plot order and facetting and
    #  make sure they're numeric    
    tmpDF <- unique(DF[,c('pGrp','rank', map.link[1])])
    w <- match(mapDF[,map.link[2]], tmpDF[,map.link[1]])
    mapDF <- cbind(pGrp = tmpDF$pGrp[w],rank = tmpDF$rank[w], mapDF)
    mapDF$pGrp <- as.numeric(mapDF$pGrp)
    mapDF$rank <- as.numeric(mapDF$rank)
    
    # link the pGrpOrd column for plot order and facetting
    tmpDF <- unique(DF[,c('pGrpRank', map.link[1])])
    w <- match(mapDF[,map.link[2]], tmpDF[,map.link[1]])
    mapDF <- cbind(pGrpOrd = tmpDF$pGrpRank[w], mapDF)
    mapDF$pGrpOrd <- as.numeric(mapDF$pGrpOrd)
    
    mapPanelWidth <- as.numeric(a[[which(panel.types == 'map')]]$panel.width)
    totalUnitWidth = pps * (length(all_atts(a,'panel.width'))+1) + sum(as.numeric(all_atts(a,'panel.width')))
    
    mapPanelHeight <- max(DF$pGrpOrd[!is.na(DF$pGrpOrd)])+1
    totalUnitHeight = max(DF$pGrp[!is.na(DF$pGrp)]) * mapPanelHeight + median.row*1					
    
    ns <- max(unlist(lapply(all_atts(a, 'panel.header'), function(x) length(strsplit(x, '\n')[[1]])))) 
    adj.plot.height <- plot.height - 
      ns*.2 + 							# header lines
      any(!is.na(all_atts(a, 'xaxis.title')))*.1 +
      .2 + .5							# top & bottom margin
    
    plot.h2w.ratio <- (mapPanelHeight/totalUnitHeight * adj.plot.height) / (mapPanelWidth/totalUnitWidth * plot.width)
    
    
    # change coordinates to align properly with other panels
    nYrows <- diff(range(mapDF$pGrpOrd[!is.na(mapDF$pGrpOrd)]) + c(-1,1) * .5)  
    nXcols <- nYrows/plot.h2w.ratio		# *mapPanelWidth  
    
    limitingAxis <- ifelse(diff(range(mapDF$coordsy)) / diff(range(mapDF$coordsx)) > 
                             plot.h2w.ratio, 'y','x')
    
    if(limitingAxis == 'y'){
      redFact <- diff(range(mapDF$coordsy))/nYrows 
      mapDF$coordsy <- (mapDF$coordsy - median(range(mapDF$coordsy)))/diff(range(mapDF$coordsy))*nYrows
      mapDF$coordsx <-   (mapDF$coordsx - median(range(mapDF$coordsx)))/redFact 
    }
    if(limitingAxis == 'x'){
      redFact <- diff(range(mapDF$coordsx))/nXcols 
      mapDF$coordsx <- (mapDF$coordsx - median(range(mapDF$coordsx)))/diff(range(mapDF$coordsx))*nXcols
      mapDF$coordsy <-   (mapDF$coordsy - median(range(mapDF$coordsy)))/redFact 
    }
    
    a[[which(panel.types == 'map')]]$bdrCoordsy <- c(-1,1) * 6/10 * nYrows 
    a[[which(panel.types == 'map')]]$bdrCoordsx <- c(-1,1) * 6/10 * nXcols/2
    
    rm(tmpDF)
  }
  
  
  # set up a list to store plot objects to be created later
  # 	note: each panel in the plot is a "ggplot object" 
  plots <- vector("list", nPanels)
  
  ###############################
  ##### create plot objects #####
  ###############################
  
  # each section builds a plot object of the specified type
  for(p in 1:nPanels){	
    
    if(panel.types[p] == 'map'){
      
      plots[[p]]  <- RankMaps(plots[[p]], p, mapDF, a)
      
      
    } else if(exists(as.character(paste(panel.types[p],'_build',sep = '')))) {	# all graph types should have a function by the 
      # same name. first we check to see if such a function does
      # in fact exist, if so we use "eval(parse(..." to call it
      
      plots[[p]] <- eval(parse(text = paste(panel.types[p],'_build(plots[[p]], p, DF, a)',sep = '')))
      
    } else {
      
      stop(paste("unknown panel type -- '",panel.types[p],"'", sep = ''))		# if no such function exists, lmPlot2 throws in the towel
      
    }		
    
    # reset DF table (delete added tmp.data columns and what not)
    DF <- DF.hold	
  }
  
  
  
  ##############################
  ##### construct the plot #####
  ##############################
  lwidth <- pps
  for(w in 1:length(all_atts(a,'panel.width'))) lwidth <- c(lwidth, all_atts(a,'panel.width')[w], pps)
  
  # sets layout according to specified widths in function arguments
  lmLayout <- grid.layout(nrow = 1, ncol = length(lwidth), 
                          widths = unit(lwidth, rep("null", length(lwidth))), 
                          heights = unit(rep(1, length(lwidth)), rep("null", length(lwidth))))
  plots$layout <- lmLayout
  plots$plot.width <- plot.width
  plots$plot.height <- plot.height
  
  class(plots) <- "mm"
  
  if(print.file == "no") print.file <- NULL
  print(plots, name = print.file, res = print.res)
  
  # invisibly return the list of ggplot objects 
  invisible(plots)
  
} 

# the printing function
print.mm <- function(x, name = NULL, res = 300, ...){
  plobject <- x
  file.name <- print.file <- name
  recognized.print.type <- FALSE
  if(!is.null(name)) recognized.print.type <- right(print.file,3) %in% right(c('.pdf','.tiff','.tif','.jpeg','.jpg','.png','.ps'),3)
  
  #   if(!recognized.print.type) {
  #     if(.Platform$OS.type = =  "windows") options(device = "windows")
  #     dev.new(width = plobject$plot.width, height = plobject$plot.height)
  #   }
  
  if(!is.null(name)){
    if(right(print.file,4) == '.pdf') 	pdf(print.file, width = plobject$plot.width, height = plobject$plot.height)
    if(right(print.file,5) == '.tiff') 	tiff(print.file, width = plobject$plot.width, height = plobject$plot.height, units = 'in', res = res)
    if(right(print.file,4) == '.tif') 	tiff(print.file, width = plobject$plot.width, height = plobject$plot.height, units = 'in', res = res)
    if(right(print.file,5) == '.jpeg') 	jpeg(print.file, width = plobject$plot.width, height = plobject$plot.height, units = 'in', res = res)
    if(right(print.file,4) == '.jpg') 	jpeg(print.file, width = plobject$plot.width, height = plobject$plot.height, units = 'in', res = res)
    if(right(print.file,4) == '.png') 	png(print.file, width = plobject$plot.width, height = plobject$plot.height, units = 'in', res = res)
    if(right(print.file,3) == '.ps') 		postscript(print.file, width = plobject$plot.width, height = plobject$plot.height)
    
    if(!recognized.print.type) print("Warning: printing file type not recognized")
  }
  
  grid.newpage()
  pushViewport(viewport(layout = plobject$layout))
  suppressWarnings(for(p in 1:(length(plobject)-3)) print(plobject[[p]], vp = subplot(1, p*2)))
  
  if(recognized.print.type & !is.null(name)) dev.off()
}
