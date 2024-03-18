## smell-e analyses

- Pre-registration: <https://osf.io/6hjax>
- Data: <https://osf.io/n8gm3/>

## Reproduce this

From the command line:

```bash
git clone https://github.com/mvuorre/smell-e.git
cd smell-e
make # requires GNU Make (https://www.gnu.org/software/make/)
```

Or, in an IDE like RStudio: First, ensure that your current working directory is the project root. It is best to download the whole project directory so that you have the dependencies. If you use RStudio, open up the relevant R Project file in RStudio.

Then, make sure that you have the required R packages installed. We use [renv](https://rstudio.github.io/renv/articles/collaborating.html) to ensure that you can install and use the exact same versions of the packages. To install those packages, execute `renv::restore()` in the R console (you only need to do this once).

You can now load the required packages (click "Code" to show code here, and in code blocks in the rest of the document). (Note that the MCMC program Stan may have some problems on Windows computers; see [here](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Windows) for more information.)