all: renv html pdf

renv: renv.lock
		Rscript -e "renv::restore()"

html: index.qmd
		quarto render $< -t html

pdf: index.qmd
		quarto render $< -t pdf