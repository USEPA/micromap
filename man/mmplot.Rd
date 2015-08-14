\name{mmplot}
\alias{mmplot}
\alias{lmplot}
\alias{mmgroupedplot}
\alias{lmgroupedplot}
\title{
  Linked Micromaps
}
\description{
  Creates a linked micromap, displaying specified polygons and their associated
  statistical summary displays; differentianted by color.
}
\usage{
mmplot(stat.data, map.data=NULL, panel.types, panel.data, map.link=NULL,
  nPanels=length(panel.types), ord.by, rev.ord=FALSE, grouping,
  median.row= FALSE, vertical.align="top", median.color=gray(.5),
  median.text.color="black", median.text.size=1,
  median.text.label="Median",colors=brewer.pal(max(grouping), "Spectral"),
  map.all=FALSE, map.color2="lightgray", two.ended.maps=FALSE, print.file="no",
  print.res=300, panel.att=vector("list", nPanels), plot.header=NA,
  plot.header.size=NA, plot.header.color=NA, plot.footer=NA,
  plot.footer.size=NA, plot.footer.color=NA, plot.width=7, plot.height=7,
  map.spacing=1, plot.pGrp.spacing=1, plot.panel.spacing=1,
  plot.panel.margins=c(0,0,1,0))

lmplot(stat.data, map.data=NULL, panel.types, panel.data, map.link=NULL,
  nPanels=length(panel.types), ord.by, rev.ord=FALSE, grouping,
  median.row= FALSE, vertical.align="top", median.color=gray(.5),
  colors=brewer.pal(max(grouping), "Spectral"), map.all=FALSE,
  map.color2="lightgray", two.ended.maps=FALSE, print.file="no", print.res=300,
  panel.att=vector("list", nPanels), plot.header=NA, plot.header.size=NA,
  plot.header.color=NA, plot.footer=NA, plot.footer.size=NA,
  plot.footer.color=NA, plot.width=7, plot.height=7, map.spacing=1,
  plot.pGrp.spacing=1, plot.panel.spacing=1, plot.panel.margins=c(0,0,1,0), ...)

mmgroupedplot(stat.data, map.data, panel.types, panel.data, map.link=NULL,
  nPanels=length(panel.types), grp.by, cat, colors=brewer.pal(10, "Spectral"),
  map.color="lightyellow", map.all=FALSE, print.file="no", print.res=NA,
  panel.att=vector("list", nPanels), plot.header=NA, plot.header.size=NA,
  plot.header.color=NA, plot.footer=NA, plot.footer.size=NA,
  plot.footer.color=NA, plot.width=7, plot.height=7, map.spacing=1,
  plot.grp.spacing=1, plot.panel.spacing=1, plot.panel.margins=c(0,0,1,0))

lmgroupedplot(stat.data, map.data, panel.types, panel.data, map.link=NULL,
  nPanels=length(panel.types), grp.by, cat, colors=brewer.pal(10, "Spectral"),
  map.color="lightyellow", map.all=FALSE, print.file="no", print.res=NA,
  panel.att=vector("list", nPanels), plot.header=NA, plot.header.size=NA,
  plot.header.color=NA, plot.footer=NA, plot.footer.size=NA,
  plot.footer.color=NA, plot.width=7, plot.height=7, map.spacing=1,
  plot.grp.spacing=1, plot.panel.spacing=1, plot.panel.margins=c(0,0,1,0), ...)
}
\arguments{
  \item{stat.data}{
  table of statistics for display.
}
  \item{map.data}{
  table of polygons to be associated with each item in stat.data.
  }
  \item{panel.types}{
  vector of panel types to specify the layout of the plot (e.g. c('map',
  'labels', 'dot.cl')).
  }
  \item{panel.data}{
  a list (of lists) of data to be used with each panel (e.g. list(NA, 'Names',
  list('lower.bound','estimate','upper.bound')).
  }
  \item{map.link}{
  a vector with the name of the columns from stat.data and map.data,
  respectively, on which to join.
  }
  \item{nPanels}{
  the number of panels, which is not expected to be set by the user.  The
  default is the length of panel.types.
  }
  \item{ord.by, grp.by}{
  the column name from stat.data with which to order the lines of the output
  graphic for a standard lmPLot or identifier column on which to group the
  categorized lmPLot.
  }
  \item{rev.ord}{
  specifies whether the plot should be displayed in reverse order of the ranking
  column.  The default is FALSE.
  }
  \item{grouping}{
  the number of lines per perceptual group (for the standard lmplot only). Can
  be a single number to have the same numer in each group or a vector of numbers
  for unequal groupings.
  }
  \item{median.row}{
  specifies whether a median row should be included.  If an odd number of data
  lines are supplied, a data line itself will be used as the median, otherwise
  median entries will be calculated from the supplied data. Note that without a
  median row maps are forced into proper size.
  }
  \item{vertical.align}{
  controls vertical alignment of the median row.
  }
  \item{median.color}{
  specifies color of the median row.
  }
  \item{median.text.color}{
  specifies color of text in the median row.
  }
  \item{median.text.size}{
  specifies size of text in the median row.
  }
  \item{median.text.label}{
  specifies the label for text in the median row.
  }
  \item{cat}{
  category column within stats table for a categorization type lmplot.
  }
  \item{colors}{
  a vector of colors for each perceptual group.  The default is
  brewer.pal(max(grouping), 'Spectral') for lmplot and brewer.pal(10,
  'Spectral') for lmgroupedplot).
  }
  \item{map.color}{
  the color to fill in previously displayed polygons.
  }
  \item{map.all}{
  by default, lmplot will only plot the polygons associated with data in the
  stats table; map.all=TRUE will show all the polygons in the polygon table
  regardless of whether they are actively referred to.
  }
  \item{map.color2}{
  the color to fill in previously displayed polygons.
  }
  \item{two.ended.maps}{
  the resulting micromaps will highlight previously referenced polygons (see
  map.color2) up to the median perceptual group then switch to highlighting all
  polygons that are still to be referenced later.
  }
  \item{print.file}{
  name of the file being created. The extension (.pdf, .tiff, .jpeg, .png) tells
  lmplot which image creation tool to use.
  }
  \item{print.res}{
  the resolution of the image to use.
  }
  \item{panel.att}{
  a list of panel specific attributes to be altered (see lmplot documentation).
  }
  \item{plot.header}{
  the overall title to be placed on the lmPLot.
  }
  \item{plot.header.size}{
  size of the overall title to be placed on the lmPLot.
  }
  \item{plot.header.color}{
  color of the overall title to be placed on the lmPLot.
  }
  \item{plot.footer}{
  the overall footer to be placed under the lmPLot.
  }
  \item{plot.footer.size}{
  size of the overall footer to be placed under the lmPLot.
  }
  \item{plot.footer.color}{
  color of the overall footer to be placed under the lmPLot.
  }
  \item{plot.width}{
  width of the overall plot in inches. Defaults to 7.
  }
  \item{plot.height}{
  height of the overall plot in inches. Defaults to 7.
  }
  \item{map.spacing}{
  the vertical spacing between maps measured in lines. Perceptual group spacing
  does not affect map spacing so as to leave the maps as large as possible. The
  user can increase map spacing using this argument. Defaults to 1.
  }
  \item{plot.pGrp.spacing}{
  the vertical spacing between perceptual groups measured in lines. Defaults to
  1.
  }
  \item{plot.grp.spacing}{
  the vertical spacing between groups measured in lines. Defaults to 1.
  }
  \item{plot.panel.spacing}{
  the vertical spacing between panels measured in lines. Defaults to 1.
  }
  \item{plot.panel.margins}{
  the horizontal spacing between panels measured in lines. THIS IS LEGACY CODE
  AND SHOULD NOT BE USED.
  }
  \item{...}{
    Additional arguments.  (Currently ignored.)
  }
}
\value{
  A list of ggplot2 objects with entries for each individual panel.
}
\note{
  See the Introduction Guide for a full list of the options available for
  altering micromaps.
}
\author{
  Quinn Payton \email{Payton.Quinn@epa.gov}
}
\examples{
# intial example
data("USstates")
head(USstates@data )
statePolys <- create_map_table(USstates, 'ST')
head(statePolys)

\dontrun{
data("edPov")

# basic figure 1
lmplot(stat.data=edPov,
  	map.data=statePolys,
	panel.types=c('labels', 'dot', 'dot','map'),
	panel.data=list('state','pov','ed', NA),
	ord.by='pov',   
	grouping=5, median.row=TRUE,
	map.link=c('StateAb','ID'))

# publication figure 1a
lmplot(stat.data=edPov,  map.data=statePolys ,
	panel.types=c('labels', 'dot', 'dot','map'),
	panel.data=list('state','pov','ed', NA),
	ord.by='pov',  
	grouping=5, 
  	median.row=TRUE,
	map.link=c('StateAb','ID'),
	
  	plot.height=9,							
	colors=c('red','orange','green','blue','purple'), 
	map.color2='lightgray',
       
	panel.att=list(list(1, header='States', panel.width=.8, align='left', text.size=.9),
			list(2, header='Percent Living Below \n Poverty Level',
				graph.bgcolor='lightgray', point.size=1.5,
				xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
				xaxis.title='Percent'),
			list(3, header='Percent Adults With\n4+ Years of College',
				graph.bgcolor='lightgray', point.size=1.5,
				xaxis.ticks=list(0,20,30,40), xaxis.labels=list(0,20,30,40),
				xaxis.title='Percent'),
			list(4, header='Light Gray Means\nHighlighted Above',  
				inactive.border.color=gray(.7), inactive.border.size=2,	
				panel.width=.8)))

edPov$points <- 0	

# publication figure 1b
lmplot (stat.data=edPov, map.data=statePolys,
	panel.types=c('dot',  'labels', 'dot', 'dot', 'map'),
	panel.data=list('points', 'state', 'pov', 'ed', NA),
	map.link=c('StateAb','ID'),
	ord.by='pov', 
	grouping=5, 
	median.row=TRUE, 
	
	plot.height=9, 
	
	colors=c('red','orange','green','blue','purple'),
	map.color2='lightgray', 

	panel.att=list(list(1, panel.width=.15, point.type=20,
					graph.border.color='white',
					xaxis.text.display=FALSE, xaxis.line.display=FALSE,
					graph.grid.major=FALSE),
	
				list(2, header='States', panel.width=.8, 
					align='left', text.size=.9),

				list(3, header='Percent Living Below\nPoverty Level',
					graph.bgcolor='lightgray', point.size=1.5,
					xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
					xaxis.title='Percent'),

				list(4, header='Percent Adults With\n4+ Years of College',
					graph.bgcolor='lightgray', point.size=1.5,
					xaxis.ticks=list(20,30,40), xaxis.labels=list(20,30,40), 
					xaxis.title='Percent'),
	
				list(5, header='Light Gray Means\nHighlighted Above', 
					inactive.border.color=gray(.7), inactive.border.size=2, 
					panel.width=.8)))

# publication figure 1c
myPlot <- lmplot(stat.data=edPov, map.data=statePolys,
	panel.types=c('map', 'dot',  'labels', 'dot', 'dot'),
	panel.data=list(NA, 'points', 'state', 'pov', 'ed'),
	map.link=c('StateAb','ID'),
	ord.by='pov', 
	grouping=5, 
	median.row=TRUE,

	plot.height=9, 
	
	colors=c('red','orange','green','blue','purple'),
	map.color2='lightgray', 

	panel.att=list(list(2, panel.width=.15, point.type=20,
				graph.border.color='white',
				xaxis.text.display=FALSE, xaxis.line.display=FALSE,
				graph.grid.major=FALSE),

			list(3, header='States', panel.width=.8, 
				align='left', text.size=.9),

			list(4, header='Percent Living Below\nPoverty Level',
				graph.bgcolor='lightgray', point.size=1.5,
				xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
				xaxis.title='Percent'),

			list(5, header='Percent Adults With\n4+ Years of College',
				graph.bgcolor='lightgray', point.size=1.5,
				xaxis.ticks=list(20,30,40), xaxis.labels=list(20,30,40), 
				xaxis.title='Percent'),
	
			list(1, header='Light Gray Means\nHighlighted Above', 
				inactive.border.color=gray(.7), inactive.border.size=2, 
				panel.width=.8)))

print(myPlot, name='myExhibit.tiff', res=300)
}

}
\keyword{hplot}
