update:
	git pull
	git checkout build
	sh scripts/update.sh
	git add *.sty *.cfg *.clo *.cls *.def
	git commit -m "Update templates"
	git push

.PHONY: update
