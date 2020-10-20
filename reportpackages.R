installed_pkgs <- row.names(installed.packages())
pkgs <- c("dplyr")
for(p in pkgs){
  if(!(p %in% installed_pkgs)){
    install.packages(p)
  }
}