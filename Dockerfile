# use rocker/tidyverse as the base image
FROM rocker/tidyverse

# install the R package dependencies
RUN R -e "install.packages(c('tidyverse', 'rmarkdown', 'knitr'))"

# copy the R markdown file into the container
COPY . /home/rstudio

# set the working directory
WORKDIR /home/rstudio

# run the R markdown file
CMD ["Rscript", "-e", "rmarkdown::render('Highest ollie clustering example.Rmd')"]

