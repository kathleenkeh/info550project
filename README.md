## My project

For my project, I will analyze Women's Tennis Association (WTA) data. 

To analyze the data you will need to install some `R` packages. To install the required packages, from the project folder you can run

```bash
make install
```



## Execute the analysis

To execute the analysis, from the project folder you can run 

```bash
make report.html
```

This will create a file called `report.html` output in your directory that contains the results.




## Use Docker to execute the analysis

To pull the image from my DockerHub repository, you can run

```bash
docker pull kathleenkeh/info550project
```

Finally, to retrieve the final report from the image, you can mount your local directory to the directory in the container by running

```bash
docker run -v /insert/your/local/path/here/:/project/ kathleenkeh/info550project
```

Replace /insert/your/local/path/here/ with the local path to your clone of this repository (for example, /Users/kathleenkeh/Documents/info550project/) before running! The report will then be in the R subfolder (/insert/your/local/path/here/R). 