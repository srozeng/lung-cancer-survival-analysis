FROM rocker/tidyverse:4.5.1

RUN apt-get update && apt-get install -y pandoc

RUN mkdir /home/rstudio/project
WORKDIR /home/rstudio/project

COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN mkdir -p renv/.cache
ENV RENV_PATHS_CACHE renv/.cache

RUN Rscript -e "renv::restore(prompt = FALSE)"

COPY Makefile Makefile
COPY final_report.Rmd final_report.Rmd
COPY R R
COPY data data

RUN mkdir -p report

CMD make && cp final_report.html report/final_report.html