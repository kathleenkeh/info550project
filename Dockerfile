FROM rocker/tidyverse

## installing R package needed for analysis
RUN Rscript -e "install.packages('tidyverse')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

# Trying to fix error
RUN apt-get update && apt-get install libxt6 libxt-dev

# make container entry point bash
CMD make -C project report.html