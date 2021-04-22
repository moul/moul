all: readme calendars

README: ../README.md
calendars: ../calendar.svg

##

print:
	go run github.com/muesli/markscribe README.md.tpl

.PHONY: ../README.md
../README.md:
	go run github.com/muesli/markscribe -write ../README.md README.md.tpl

.PHONY: ../calendar.svg
../calendar.svg:
	bundle exec githubchart -u moul > ../calendar.svg

nix:
	nix-shell --run 'make all'
