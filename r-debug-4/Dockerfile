# To build from the parent directory:
#   docker build -t wch1/r-debug-4 r-debug-4

FROM wch1/r-debug-3

# RDstrictbarrier: Make sure that R objects are protected properly.
RUN /tmp/buildR.sh strictbarrier
RUN RDstrictbarrier -q -e 'install.packages(c("devtools", "Rcpp", "roxygen2", "testthat", "Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "tools", "utils", "BH","checkmate","RcppEigen", "sitmo", "StanHeaders", "qs"))'
