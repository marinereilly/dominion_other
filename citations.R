library(tidyverse)
library(lubridate)
library(cowplot)
library(RColorBrewer)
library(viridis)


sink("test.bib")
out <- sapply(names(sessionInfo()$otherPkgs), 
              function(x) print(citation(x), style = "Bibtex"))



