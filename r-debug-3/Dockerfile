# To build from the parent directory:
#   docker build -t wch1/r-debug-3 r-debug-3

FROM wch1/r-debug-2

RUN /tmp/buildR.sh csan

# Modify the RDcsan script to increase stack size with `ulimit -Ss 131072`;
# otherwise we get these messages during package compilation:
# Error: compilation failed -  C stack usage  8042720 is too close to the limit at NULL
RUN sed -i 's/^#!\/bin\/bash/#!\/bin\/bash\nulimit -Ss 131072/' /usr/local/bin/RDcsan
# Increase stack size in .bashrc, so that it is picked up by RDscriptcsan.
RUN echo "\nulimit -Ss 131072" >> $HOME/.bashrc
RUN RDcsan -q -e 'install.packages("pak", repos = "https://r-lib.github.io/p/pak/dev")'
RUN RDcsan -q -e 'pak::pkg_install(c("devtools", "Rcpp", "cpp11", "decor", "roxygen2", "testthat", "memoise", "rmarkdown", "Matrix", "DT","covr","crayon","curl","data.table", "digest", "dplyr","ggrepel","gridExtra","htmltools","knitr","learnr","microbenchmark","nlme","remotes","rlang","rmarkdown","scales","shiny","stringi","testthat","tidyr","usethis","vdiffr","xgxr","pillar","tibble", "PreciseSums", "Rcpp", "RcppArmadillo", "assertthat", "backports", "checkmate", "cli", "dparser", "ggplot2", "inline", "lotri", "magrittr", "memoise", "methods", "rex", "symengine", "sys", "units", "tools", "utils","BH","checkmate","RcppEigen", "sitmo", "StanHeaders", "qs"))'
