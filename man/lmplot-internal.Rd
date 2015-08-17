\name{lmplot-internal}
\alias{all_atts}
\alias{all_attsb}
\alias{all_equal2}
\alias{axis_opts}
\alias{CatMaps}
\alias{create_DF_rank}
\alias{create_DF_cat}
\alias{dot_legend_att}
\alias{dot_legend_build}
\alias{graph_opts}
\alias{list_att}
\alias{make.string}
\alias{plot_opts}
\alias{RankMaps}
\alias{subplot}
\title{Internal lmplot Functions}
\description{
  These functions are internal lmplot functions.
}
\usage{
all_atts(a, att.name)
all_attsb(a, att.name)
all_equal2(v)
axis_opts(i, pl, a, limsx=NA, limsy=NA, border=TRUE, expx=FALSE)
CatMaps(pl, p, mapDF, att)
create_DF_rank(data, ord.by, group, median.row=FALSE, rev.ord=FALSE,
   align="top")
create_DF_cat(data, grp.by, cat)
dot_legend_att(show=FALSE)
dot_legend_build(pl, p, DF, att)
graph_opts(i, pl, a)
list_att(panel.type)
make.string(vct)
plot_opts(i, pl, a)
RankMaps(pl, p, mapDF, att)
subplot(x, y)
}
\details{
  These functions are not to be called by the user.
}
\keyword{internal}
