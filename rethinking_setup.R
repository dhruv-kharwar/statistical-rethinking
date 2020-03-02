# SETUP
# Removing any pre-installed versions of Stan:
remove.packages("rstan")
if (file.exists(".RData")) file.remove(".RData")

# Installing RStan:
install.packages("rstan", repos = "https://cloud.r-project.org/", dependencies = TRUE)

# Checking C++ toolchain:
pkgbuild::has_build_tools(debug = TRUE)

# Installing rethinking:
install.packages(c("coda", "mvtnorm", "devtools"))
library(devtools)
devtools::install_github("rmcelreath/rethinking")