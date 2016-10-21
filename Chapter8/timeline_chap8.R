library(timelineR)
library(xts)
library(pipeR)

#######################################
#CC14 - cluster_1 outbreak + sporadic
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001656","RL15001657", "RL15001658","RL15001659","RL15001660","RL15001661","RL15001662","RL15001663","RL15001664","RL15001665","RL15001666","RL15001667","RL15001668","RL15001589"),
    catego = c("outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","outbreak","sporadic"),
    color = c("red","red","red","red","red","red","red","red","red","red","red","red","red","red"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
    "2012-08-25",
    "2012-08-28",
    "2012-07-23",
    "2012-09-22",
    "2012-08-31",
    "2012-08-31",
    "2012-08-31",
    "2012-09-19",
    "2012-09-19",
    "2012-09-19",
    "2012-09-19",
    "2012-09-20",
    "2012-09-20",
    "2010-06-21"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 1000
) %>>%
  add_axis( ticks = 7  )
 
#######################################
#CC7 - cluster_5 sporadic 
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15003002","RL15003007", "RL15001566","RL15001568","RL15001572"),
    catego = c("sporadic-country Y","sporadic-country Y","sporadic-country T","sporadic-country T","sporadic-country T"),
    color = c("red","red","red","red","red"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
    "2010-04-23",
    "2010-10-01",
    "2010-04-12",
    "2010-07-26",
    "2011-11-01"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 750
) %>>%
  add_axis( ticks = 7  ) 

#######################################
#CC155 - cluster_3 sporadic + SMOKED FISH
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001560","RL15001415", "RL15000040","RL15000080","RL15000111","RL15000191","RL15000295","RL15000297","RL15000340"),
    catego = c("sporadic country Y","sporadic country A","smoked fish country F","smoked fish country U","smoked fish country U","smoked fish country W","smoked fish country K","smoked fish country K","smoked fish country J"),
    color = c("red","red","blue","blue","blue","blue","blue","blue","blue"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
   "2011-12-13",
    "2010-02-05",
    "2011-11-07",
    "2011-01-18",
    "2011-07-18",
    "2011-05-30",
    "2010-03-09",
    "2010-09-08",
    "2011-09-14"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 750
) %>>%
  add_axis( ticks = 7  ) 


  #######################################
#CC8 - cluster_6 sporadic + SMOKED FISH
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001561","RL15000088", "RL15000094","RL15000095","RL15000100","RL15000105","RL15000106","RL15000109","RL15000192","RL15000194","RL15000210","RL15000267","RL15000270","RL15000294"),
    catego = c("sporadic country Y","smoked fish country U","smoked fish country U","smoked fish country U","smoked fish country U","smoked fish country U","smoked fish country U","smoked fish country U","smoked fish country W","smoked fish country W","smoked fish country L","smoked fish country Q","smoked fish country Y","smoked fish country Q"),
    color = c("red","blue","blue","blue","blue","blue","blue","blue","blue","blue","blue","blue","blue","blue"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
   "2011-12-16",
    "2011-02-14",
    "2011-03-24",
    "2011-04-06",
    "2011-04-14",
    "2011-05-16",
     "2011-05-18",
      "2011-06-13",
    "2011-07-07",
    "2011-08-03",
    "2010-07-27",
    "2011-10-20",
    "2010-01-18",
     "2011-01-01"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 1000
) %>>%
  add_axis( ticks = 7  ) 



#######################################
#CC6 - cluster_7 sporadic + RTE meat
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001417","RL15001420", "RL15000520"),
    catego = c("sporadic country A","sporadic country A","RTE meat country A"),
    color = c("red","red","blue"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
    "2010-09-18",
    "2010-11-07",
    "2011-01-01"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 250
) %>>%
  add_axis( ticks = 7  ) 
  
  #######################################
#CC8 - cluster_3 sporadic + RTE meat
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001560","RL15001415"),
    catego = c("sporadic country Z","RTE meat country Z"),
    color = c("red","blue"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
    "2011-09-26",
    "2011-07-18"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 250
) %>>%
  add_axis( ticks = 7  )
  
  
  
#######################################
#CC59- cluster_2 sporadic + cheese
#######################################

alqb_xts <- as.xts(
  data.frame(
    RLnumber = c("RL15001379","RL15001383"),
    catego = c("sporadic country B","Cheese country B"),
    color = c("red","blue"),
    stringsAsFactors = FALSE
  ),
  order.by = as.Date(c(
    "2010-01-01",
    "2010-12-31"
  ))
)

colorJS <- htmlwidgets::JS("function(d){return d.color;}")

d3kit_timeline(
  alqb_xts,
  direction = "down",
  textFn = htmlwidgets::JS(
"
function(d){
    return d.RLnumber + ' - ' + d.catego;
}
"
  ),
  # color probably needs to be treated like the *Fn arguments
  #  for ultimate flexibility
  dotColor = colorJS,
  linkColor = colorJS,
  labelTextColor = "#FFF",
  labelBgColor = colorJS,
  dotRadius = 5,
  labella = list(maxPos = 600),
  margin = list(left = 20, right = 50, top = 20, bottom = 40),
  width = 1000,
  height = 250
) %>>%
  add_axis( ticks = 7  )