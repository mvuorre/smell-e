all: renv render

renv: renv.lock
		Rscript -e "renv::restore()"

render: index.qmd
		quarto render $<

clean:
	rm -rf *_files *_cache