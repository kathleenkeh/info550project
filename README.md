## My project

For my project, I will analyze the `mtcars` data, like always. 

To analyze the data you will need to install some `R` packages. The required packages can be installed using `R` commands.

``` r
installed_pkgs <- row.names(installed.packages())
pkgs <- c("dplyr")
for(p in pkgs){
	if(!(p %in% installed_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, from the project folder you can run 

``` bash
Rscript -e "rmarkdown::render('report.Rmd')"
```

This will create a file called `report.html` output in your directory that contains the results.