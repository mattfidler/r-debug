# To build from the parent directory:
#   docker build -t wch1/r-debug r-debug

FROM wch1/r-debug-4

# RDthreadcheck: Make sure that R's memory management functions are called
# only from the main R thread.
RUN /tmp/buildR.sh threadcheck
RUN RDthreadcheck -q -e 'install.packages(c("devtools", "Rcpp", "roxygen2", "testthat", "Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "tools", "utils","BH","checkmate","RcppEigen", "sitmo", "StanHeaders"))'
