source("renv/activate.R")
options(
  mc.cores = as.numeric(Sys.getenv("MAX_CORES", 4)),
  brms.backend = Sys.getenv("BRMS_BACKEND", "rstan"),
  brms.threads = as.numeric(Sys.getenv("BRMS_THREADS", 1))
)
