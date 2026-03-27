all: final_report.html

output/raw_data.rds: R/01_load_data.R data/lung_cancer_data.csv
	Rscript R/01_load_data.R

output/clean_data.rds: R/02_clean_data.R output/raw_data.rds
	Rscript R/02_clean_data.R

output/table1.rds: R/03_make_table.R output/clean_data.rds
	Rscript R/03_make_table.R

output/figure1.png: R/04_make_figure.R output/clean_data.rds
	Rscript R/04_make_figure.R

output/model.rds: R/05_model.R output/clean_data.rds
	Rscript R/05_model.R

final_report.html: final_report.Rmd output/table1.rds output/figure1.png output/model.rds
	Rscript -e "rmarkdown::render('final_report.Rmd')"

clean:
	rm -f output/*.rds output/*.png final_report.html