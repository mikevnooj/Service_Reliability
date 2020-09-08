# this renders the rmarkdown file for the Service_Reliability report.
# This is the script that will be run in the windows tasks scheduler.

Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")

rmarkdown::render(input = "C:/Users/Michael.Nugent/Documents/Projects/R_Projects/nooj/Reporting/Daily/Service_Reliability/src/r/Service_Reliability.Rmd"
                  ,output_file = paste0(format(Sys.Date(), "%Y%m%d"), " Service Reliability Report",'.html')
                  ,output_dir = "C:/Users/Michael.Nugent/Documents/Projects/R_Projects/nooj/Reporting/Daily/Service_Reliability/output/html") 

file.copy(
  from = paste0(
    "C:/Users/Michael.Nugent/Documents/Projects/R_Projects/nooj/Reporting/Daily/Service_Reliability/output/html/"
    ,paste0(
      format(Sys.Date(), "%Y%m%d")
      , " Service Reliability Report",'.html'
    )#end paste0
  )#end paste0
  ,to = "//iptc-prtsvr1/shared/Transportation Management/Service Reliability Reports"
)
