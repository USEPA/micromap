## ----setup, echo = F, cache = F---------------------------------------------------------------------------------------------------------
library(knitr)
# set global chunk options
opts_chunk$set(fig.path = '', fig.align = 'center', fig.show = 'hold',message = F, results = 'asis',dev = 'pdf',dev.args=list(family='serif'), fig.pos = '!ht', warning = F)
options(replace.assign=TRUE,width=60)


## ----micromap-1a------------------------------------------------------------------------------------------------------------------------
library(micromap)
data("edPov") 
head(edPov)


## ----micromap-1b------------------------------------------------------------------------------------------------------------------------
data("USstates") 
head(USstates@data)


## ----micromap-1c------------------------------------------------------------------------------------------------------------------------
statePolys <- create_map_table(USstates, IDcolumn="ST") 
head(statePolys) 


## ----fig1-------------------------------------------------------------------------------------------------------------------------------
mmplot(stat.data=edPov,map.data=statePolys,
  panel.types=c("labels", "dot","dot", "map"),
  panel.data=list("state","pov","ed", NA),
  ord.by="pov", grouping=5,
  median.row=T,
  map.link=c("StateAb","ID"),
  print.file="fig1.jpeg",print.res=100
) 


## ----micromap-1d,echo=TRUE,eval=FALSE---------------------------------------------------------------------------------------------------
## list(1, align="left")
## list(2, graph.bgcolor="lightgray")
## list(3, graph.bgcolor="lightgray")


## ----micromap-1e,echo=TRUE,eval=FALSE---------------------------------------------------------------------------------------------------
## list(list(1, align="left"), list(2, graph.bgcolor="lightgray"),
##      list(3, graph.bgcolor="lightgray"))


## ----label=fig2-------------------------------------------------------------------------------------------------------------------------
mmplot(stat.data=edPov, map.data=statePolys,
panel.types=c("labels", "dot", "dot","map"),
panel.data=list("state","pov","ed", NA),
ord.by="pov", grouping=5,
median.row=T,
map.link=c("StateAb","ID"),
plot.height=9,
colors=c("red","orange","green","blue","purple"),
panel.att=list(list(1, header="States",
panel.width=.8, 
align="left", text.size=.9),
list(2, header="Percent Living Below \n Poverty Level",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
xaxis.title="Percent"),
list(3, header="Percent Adults With\n4+ Years of College",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(20,30,40), xaxis.labels=list(20,30,40),
xaxis.title="Percent"),
list(4, header="Light Gray Means\nHighlighted Above",
inactive.fill="lightgray",
inactive.border.color=gray(.7), inactive.border.size=2,
panel.width=.8)), print.file="fig2.jpeg", 
print.res=100) 


## ----label=fig3-------------------------------------------------------------------------------------------------------------------------
mmplot(stat.data=edPov,map.data=statePolys,
panel.types=c("dot_legend","labels","dot","dot","map"),
panel.data=list(NA,"state","pov","ed",NA),
map.link=c("StateAb","ID"),
ord.by="pov", 
grouping=5, 
median.row=T,
plot.height=9, 
colors=c("red","orange","green","blue","purple"),
panel.att=list(list(1, point.type=20, point.border=TRUE),
list(2, header="States", panel.width=.8, 
align="left", text.size=.9),
list(3, header="Percent Living Below\nPoverty Level",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
xaxis.title="Percent"),
list(4, header="Percent Adults With\n4+ Years of College",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(20,30,40), xaxis.labels=list(20,30,40), 
xaxis.title="Percent", left.margin=-.8, right.margin=0),
list(5, header="Light Gray Means\nHighlighted Above",
inactive.fill="lightgray",     
inactive.border.color=gray(.7), inactive.border.size=2, 
panel.width=.8)),
print.file="fig3.jpeg",print.res=100)


## ----label=fig4-------------------------------------------------------------------------------------------------------------------------
mmplot(stat.data=edPov,map.data=statePolys,
panel.types=c("map","dot_legend","labels","dot","dot"),
panel.data=list(NA,NA,"state","pov","ed"),
map.link=c("StateAb","ID"),
ord.by="pov", 
grouping=5, 
median.row=T,
plot.height=9, 
colors=c("red","orange","green","blue","purple"),
panel.att=list(list(2, point.type=20,
point.border=TRUE),
list(3, header="States", panel.width=.8, 
align="left", text.size=.9),
list(4, header="Percent Living Below\nPoverty Level",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(10,15,20), xaxis.labels=list(10,15,20),
xaxis.title="Percent"),
list(5, header="Percent Adults With\n4+ Years of College",
graph.bgcolor="lightgray", point.size=1.5,
xaxis.ticks=list(20,30,40), xaxis.labels=list(20,30,40), 
xaxis.title="Percent"),
list(1, header="Light Gray Means\nHighlighted Above",
inactive.fill="lightgray",     
inactive.border.color=gray(.7), inactive.border.size=2, 
panel.width=.8)),
print.file="fig4.jpeg",print.res=100)


## ----micromap-5a------------------------------------------------------------------------------------------------------------------------
data(lungMort)
myStats <- lungMort
head(myStats)


## ----micromap-5b------------------------------------------------------------------------------------------------------------------------
myStats <- subset(myStats, !StateAb=="DC")


## ----micromap-5c------------------------------------------------------------------------------------------------------------------------
myNewStats <- create_DF_rank(myStats, ord.by="Rate_00", group=5)
head(myNewStats)


## ----micromap-5d, label=fig5------------------------------------------------------------------------------------------------------------
library(ggplot2)
library(grid)
### ggplot2 code:
ggplot(myNewStats) +
  geom_segment(aes(x=Rate_95, y=-pGrpOrd,
  xend=Rate_00, yend=-pGrpOrd, colour=factor(color)),
  arrow=arrow(length=unit(0.1,"cm"))) +
  facet_grid(pGrp~., scales="free_y") +
  scale_colour_manual(values=c("red","orange","green","blue","purple"),
  guide="none")
ggsave(file="fig5.jpeg", dpi=300)


## ----micromap-5e------------------------------------------------------------------------------------------------------------------------
myAtts <- sample_att()
myNumber <- 1


## ----micromap-5f------------------------------------------------------------------------------------------------------------------------
myAtts$colors <- c("red","orange","green","blue","purple")
myAtts[[myNumber]]$panel.data <- c("Rate_95","Rate_00")


## ----micromap-5g------------------------------------------------------------------------------------------------------------------------
myColors <- myAtts$colors 
  # pulls color out of the plot level 
  # section of the "myAtts" attributes list
myColumns <- myAtts[[myNumber]]$panel.data 
  # looks in the panel level section numbered 
  # "myNumber" of the "myAtts" attributes list


## ----micromap-5h, fig=TRUE--------------------------------------------------------------------------------------------------------------
myNewStats$data1 <- myNewStats[, myColumns[1]]
myNewStats$data2 <- myNewStats[, myColumns[2]]
myPanel <- ggplot(myNewStats) +
  geom_segment(aes(x=data1, y=-pGrpOrd,
  xend= data2, yend=-pGrpOrd, colour=factor(color)),
  arrow=arrow(length=unit(0.1,"cm"))) +
  facet_grid(pGrp~.) +
  scale_colour_manual(values=myColors,
  guide="none")
myPanel


## ----micromap-5i, label=fig6------------------------------------------------------------------------------------------------------------
assimilatePlot(myPanel, myNumber, myAtts)
ggsave(file="fig6.jpeg", dpi=300)


## ----micromap-5j, fig=TRUE--------------------------------------------------------------------------------------------------------------
arrow_plot_build <- function(myPanel, myNumber, myNewStats, myAtts){
  myColors <- myAtts$colors
  myColumns <- myAtts[[myNumber]]$panel.data
  myNewStats$data1 <- myNewStats[, myColumns[1]]
  myNewStats$data2 <- myNewStats[, myColumns[2]]
  myPanel <- ggplot(myNewStats) +
  geom_segment(aes(x=data1, y=-pGrpOrd,
  xend= data2, yend=-pGrpOrd,
  colour=factor(color)),
  arrow=arrow(length=unit(0.1,"cm"))) +
  facet_grid(pGrp~.) +
  scale_colour_manual(values=myColors, guide="none")
  myPanel <- assimilatePlot(myPanel, myNumber, myAtts)
  }
myPanel


## ----micromap-5k, fig=TRUE--------------------------------------------------------------------------------------------------------------
arrow_plot_build <- function(myPanel, myNumber, myNewStats, myAtts){
  myColors <- myAtts$colors
  myColumns <- myAtts[[myNumber]]$panel.data
  myNewStats$data1 <- myNewStats[, myColumns[1]]
  myNewStats$data2 <- myNewStats[, myColumns[2]]
  myNewStats <- alterForMedian(myNewStats, myAtts)
  myPanel <- ggplot(myNewStats) +
  geom_segment(aes(x=data1, y=-pGrpOrd,
  xend= data2, yend=-pGrpOrd,
  colour=factor(color)),
  arrow=arrow(length=unit(0.1,"cm"))) +
  facet_grid(pGrp~., space="free", scales="free_y") +
  scale_colour_manual(values=myColors, guide="none")
  myPanel <- assimilatePlot(myPanel, myNumber, myAtts)
  }
myPanel


## ----micromap-5l------------------------------------------------------------------------------------------------------------------------
myPanelAtts <- standard_att()
myPanelAtts <- append(myPanelAtts,
list(line.width=1, tip.length=1))


## ----micromap-5m------------------------------------------------------------------------------------------------------------------------
arrow_plot_att <- function(){
  myPanelAtts <- standard_att()
  myPanelAtts <- append(myPanelAtts,
  list(line.width=1, tip.length=1))
}


## ----micromap-5n, fig=TRUE--------------------------------------------------------------------------------------------------------------
arrow_plot_build <- function(myPanel, myNumber, myNewStats, myAtts){
  myColors <- myAtts$colors
  myColumns <- myAtts[[myNumber]]$panel.data
  myLineWidth <- myAtts[[myNumber]]$line.width 
  # Again, note that these are stored in the panel level section of the
  myTipLength <- myAtts[[myNumber]]$tip.length # attributes object
  myNewStats$data1 <- myNewStats[, myColumns[1]]
  myNewStats$data2 <- myNewStats[, myColumns[2]]
  myNewStats <- alterForMedian(myNewStats, myAtts)
  myPanel <- ggplot(myNewStats) +
  geom_segment(aes(x=data1, y=-pGrpOrd,
  xend= data2, yend=-pGrpOrd,
  colour=factor(color)),
  arrow=arrow(length=unit(0.1*myTipLength,"cm")), 
  size=myLineWidth) +
  facet_grid(pGrp~., space="free", scales="free_y") +
  scale_colour_manual(values=myColors, guide="none")
  myPanel <- assimilatePlot(myPanel, myNumber, myAtts)
  }
myPanel


## ----label=fig7-------------------------------------------------------------------------------------------------------------------------
mmplot(stat.data=myStats,
map.data=statePolys,
panel.types=c("map","labels", "arrow_plot"),
panel.data=list(NA,"State", list("Rate_95","Rate_00")),
ord.by="Rate_00",
grouping=5,
map.link=c("StateAb","ID"),
panel.att=list(list(3, line.width=1.25, tip.length=1.5)), 
print.file="fig7.jpeg", print.res=100) 


## ----label=fig8-------------------------------------------------------------------------------------------------------------------------
data(lungMort)
myStats <- lungMort
mmplot(stat.data=myStats,
map.data=statePolys,
panel.types=c("map", "dot_legend", "labels", "dot_cl", "arrow_plot"),
panel.data=list(NA,
"points",
"State",
list("Rate_00","Lower_00","Upper_00"),
list("Rate_95","Rate_00")),
ord.by="Rate_00", grouping=5,
median.row=T,
map.link=c("StateAb","ID"),
plot.height=10,
colors=c("red","orange","green","blue","purple"),
panel.att=list(list(1, header="Light Gray Means\n Highlighted Above",
map.all=TRUE,
fill.regions="two ended",
inactive.fill="lightgray",                    
inactive.border.color=gray(.7),
inactive.border.size=2,
panel.width=1),
list(2, point.type=20,
point.border=TRUE),
list(3, header="U.S. \nStates ",
panel.width=.8,
align="left", text.size=.9),
list(4, header="State 2000\n Rate and 95% CI",
graph.bgcolor="lightgray",
xaxis.ticks=list(20,30,40,50),
xaxis.labels=list(20,30,40,50),
xaxis.title="Deaths per 100,000"),
list(5, header="State Rate Change\n 1995-99 to 2000-04",
line.width=1.25, tip.length=1.5,
graph.bgcolor="lightgray",
xaxis.ticks=list(20,30,40,50),
xaxis.labels=list(20,30,40,50),
xaxis.title="Deaths per 100,000")),
print.file="fig8.jpeg", print.res=100) 


## ----micromap-6a------------------------------------------------------------------------------------------------------------------------
library(micromap)
data("vegCov")
head(vegCov, n = 9)


## ----micromap-6b------------------------------------------------------------------------------------------------------------------------
data("WSA3")
print(WSA3@data)


## ----micromap-6c------------------------------------------------------------------------------------------------------------------------
wsa.polys<-create_map_table(WSA3)
head(wsa.polys)


## ----micrmap-6d-------------------------------------------------------------------------------------------------------------------------
national.polys<-subset(wsa.polys, hole==0 & plug==0)
national.polys<-transform(national.polys, ID="National", region=4,
poly=region*1000 + poly)
head(national.polys)
wsa.polys<-rbind(wsa.polys,national.polys)
head(wsa.polys)
str(wsa.polys)


## ----label=fig9-------------------------------------------------------------------------------------------------------------------------
mmgroupedplot(stat.data=vegCov,
              map.data=wsa.polys,
              panel.types=c("map", "labels", "bar_cl", "bar_cl"),
              panel.data=list(NA,"Category",
                              list("Estimate.P","LCB95Pct.P","UCB95Pct.P"),
                              list("Estimate.U","LCB95Pct.U","UCB95Pct.U")),
              panel.att=list(list(2, panel.width = 1.5)),
              grp.by="Subpopulation",
              cat="Category",
              map.link=c("Subpopulation", "ID"),
              plot.width = 9,
              print.file="fig9.jpeg",print.res=100)


## ----label=fig10------------------------------------------------------------------------------------------------------------------------
mmgroupedplot(stat.data= vegCov,
map.data= wsa.polys,
panel.types=c("map", "labels", "bar_cl", "bar_cl"),
panel.data=list(NA,"Category",
list("Estimate.P","LCB95Pct.P","UCB95Pct.P"),
list("Estimate.U","LCB95Pct.U","UCB95Pct.U")),
grp.by="Subpopulation",
cat="Category",
colors=c("red3","green3","lightblue"),
map.link=c("Subpopulation", "ID"),
map.color="orange3",
plot.grp.spacing=2,
plot.width=7,
plot.height=4,
panel.att=list(list(1, header="Region", header.size=1.5,
panel.width=.75),
list(2, header="Category",
header.size=1.5,
panel.width=2),
list(3, header="Percent", header.size=1.5,
graph.bgcolor="lightgray",
xaxis.title="percent",
xaxis.ticks=list(0,20,40,60),
xaxis.labels=list(0,20,40,60)),
list(4, header="Unit", header.size=1.5,
graph.bgcolor="lightgray",
xaxis.title="thousands",
xaxis.ticks=list(0,200000,350000,550000),
xaxis.labels=list(0,200,350,550))),
print.file="fig10.jpeg",print.res=100)


## ----micromap-7a------------------------------------------------------------------------------------------------------------------------
library(sf)
nc <- st_read(system.file("shape/nc.shp", package="sf"), quiet=T)
head(nc)


## ----fig11------------------------------------------------------------------------------------------------------------------------------
mmplot(map.data=nc,
       panel.types=c("labels", "dot","dot", "map"),
       panel.data=list("NAME","SID74","SID79", NA),
       ord.by="SID74", grouping=10,
       median.row=F,
       print.file="fig11.jpeg",
       print.res=100, 
       plot.height=9, 
       plot.width=6, 
       panel.att=list(list(1, text.size=0.6))
) 

