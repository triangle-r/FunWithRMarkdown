library(whisker)
data <- list(Hitter1 = "Sammy Sosa"
             , Hitter2 = "Pete Rose"
             , NameId1 = "sosasa01"
             , NameId2 = "rosepe01")

outFile <- whisker.render(readLines("Demos/Example_Whisker.Rmd"), data)
writeLines(outFile, "SosaVsRose.Rmd")
rmarkdown::render("SosaVsRose.Rmd", envir = new.env(), runtime = "static", quiet = TRUE)
