## report.html  : Generate final analysis report.
report.html: data/wta_matches_2018.csv data/wta_matches_2019.csv data/wta_rankings_10s.csv R/report.Rmd
	Rscript -e "rmarkdown::render('R/report.Rmd', quiet = TRUE)"

## install      : Install required R packages. 
.PHONY: install
install: R/reportpackages.R
	chmod +x R/reportpackages.R && \
	Rscript R/reportpackages.R

## clean        : Remove compiled report.
.PHONY: clean
clean:
	rm R/report.html

# Phony rule for help documentation
.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<