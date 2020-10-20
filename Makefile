## report.html  : Generate final analysis report.
report.html: wta_matches_2018.csv wta_matches_2019.csv wta_rankings_10s.csv report.Rmd
	Rscript -e "rmarkdown::render('report.Rmd', quiet = TRUE)"

## install      : Install required R packages. 
.PHONY: install
install: reportpackages.R
	chmod +x reportpackages.R && \
	Rscript reportpackages.R

## clean        : Remove compiled report.
.PHONY: clean
clean:
	rm report.html

# Phony rule for help documentation
.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<