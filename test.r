library(istack)
library(ggplot2)
# library(devtools)
# setwd('/Users/gaot/Desktop/istack')

# cancer types and treatments
set.seed(2018-12-09)
cancers = simulate_cancers(15)

p = istack(cancers, 
           var = 'Disease', 
           group = 'Treatment', 
           icon = "https://upload.wikimedia.org/wikipedia/commons/d/d8/Person_icon_BLACK-01.svg",
           size = 0.025,
           asp = 3)

p + theme(panel.grid.major.x = element_line(colour = "grey", linetype = 'dashed')) +
  ggtitle('Cancer Treatments')

# mtcars
p = istack(mtcars, 
           var = 'carb', 
           group = 'gear', 
           icon = "https://upload.wikimedia.org/wikipedia/commons/7/7e/Car_icon_transparent.png",
           size = 0.12,
           asp = 1)

p + theme(panel.grid.major.y = element_line(colour = "grey", linetype = 'dashed')) + 
  coord_flip() + ggtitle('mtcars')
