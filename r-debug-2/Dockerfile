# To build from the parent directory:
#   docker build -t wch1/r-debug-2 r-debug-2

FROM wch1/r-debug-1

RUN /tmp/buildR.sh san
RUN RDsan -q -e 'install.packages("pak", repos = "https://r-lib.github.io/p/pak/dev")'
RUN RDsan -q -e 'pak::pkg_install(c("devtools", "Rcpp", "cpp11", "decor", "roxygen2", "testthat", "memoise", "rmarkdown","Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "tools", "utils","BH","checkmate","BH","checkmate", "qs", "sitmo","RcppEigen", "RcppArmadillo", "StanHeaders"))'
# sitmo, RcppEigen, StanHeaders can't install here with asan flags
## Only used for building
RUN rm ~/.R/Makevars
# Use RD
# RUN RD -q -e 'withr::with_libpaths("/usr/local/RD/lib/R/library", install.packages(c("sitmo", "RcppEigen", "RcppArmadillo"))'
# Use RDsan for the StanHeaders dependency
# RUN RDsan -q -e 'install.packages(c("StanHeaders"))'
