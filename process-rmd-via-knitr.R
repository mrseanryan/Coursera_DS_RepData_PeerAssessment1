# Script to take the Rmd file and render it to HTML (this can also be done directly in R Studio IDE).
source("utils/utils.download.R")
source("utils/utils.print.R")

# Load the knitr package
# install_if_missing("knitr")
install_if_missing("rmarkdown") # required by knitr
library(rmarkdown)

print_section("Render Rmd -> HTML")

setwd(".")

# Render the R Markdown file
rmd_filepath <- "PA1_template.Rmd"
html_filename <- "PA1_template.html"

rmarkdown::render(rmd_filepath,
                  output_file = html_filename,
                  output_dir = ".")

browseURL(html_filename)
