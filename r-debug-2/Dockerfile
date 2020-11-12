# To build from the parent directory:
#   docker build -t wch1/r-debug-2 r-debug-2

FROM wch1/r-debug-1

RUN /tmp/buildR.sh san
RUN RDsan -q -e 'install.packages(c("devtools", "Rcpp", "roxygen2", "testthat", "Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "tools", "utils","BH","checkmate","BH","checkmate","RcppEigen", "sitmo", "StanHeaders"))'
# sitmo, RcppEigen, StanHeaders can't install here with asan flags