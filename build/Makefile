all: readme calendars

readme: ../README.md
calendars: ../calendar.svg
calendars.deps:
	bundle install


##

print:
	go run github.com/muesli/markscribe README.md.tpl

.PHONY: ../README.md
../README.md:
	go run github.com/muesli/markscribe -write ../README.md README.md.tpl

.PHONY: ../calendar.svg
../calendar.svg:
	bundle exec githubchart -u moul | xmllint --format - > ../calendar.svg

nix:
	nix-shell --run 'make all'
