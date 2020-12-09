# To build from the parent directory:
#   docker build -t wch1/r-debug-1 r-debug-1

FROM wch1/r-devel

# RDvalgrind: Install R-devel with valgrind level 2 instrumentation
RUN /tmp/buildR.sh valgrind
RUN RDvalgrind -q -e 'install.packages(c("devtools", "Rcpp", "roxygen2", "testthat", "Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "BH","checkmate","RcppEigen", "sitmo", "StanHeaders", "qs"))'