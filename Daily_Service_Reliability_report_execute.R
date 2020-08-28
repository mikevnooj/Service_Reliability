# this renders the rmarkdown file for the Service_Reliability report.
# This is the script that will be run in the windows tasks scheduler.

rmarkdown::render(input = 'c:/users/scarter/downloads/R_Projects/OTP/Service_Reliability.Rmd', 
                  output_file = paste0(format(Sys.Date(), "%Y%m%d"), " Service Reliability Report",'.html')) 
