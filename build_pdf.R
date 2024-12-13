# build the slides as a pdf
library("renderthis")
# Sys.setenv(CHROMOTE_CHROME="C:/Users/L107067/AppData/Local/Google/Chrome/Application/")
path_to_chrome <- "C:\\PROGRA~1\\Google\\Chrome\\APPLIC~1\\chrome.exe"
Sys.setenv(CHROMOTE_CHROME = path_to_chrome)
Sys.setenv(PAGEDOWN_CHROME = path_to_chrome)
# this works
renderthis::to_pdf(from = "index.Rmd", to = "marginal_raking_icsds2024.pdf")
# this doesn't work
renderthis::to_pdf(from = "index.Rmd", to = "marginal_raking_icsds2024.pdf",
                   complex_slides = TRUE, partial_slides = TRUE)
