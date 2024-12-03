all: renv render-html render-exclude render-include

renv: renv.lock
		Rscript -e "renv::restore()"

render-html: index.qmd
		make clean
		quarto render $< -P exclude:FALSE -t html

render-include: index.qmd
		make clean
		quarto render $< -P exclude:FALSE -t docx -o analysis.docx --no-cache

render-exclude: index.qmd
		make clean
		quarto render $< -P exclude:TRUE -t docx -o analysis-excluded.docx --no-cache

clean:
	rm -rf *_files *_cache