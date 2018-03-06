# Updates the submodules to the version used by master
update: sync
	@git submodule update --recursive

sync: init
	@git submodule sync --recursive

init:
	@git submodule init

# Echo the branches that the main git repo is on, as well as the HEAD of the submodules
branch:
	@echo repo: `git rev-parse --abbrev-ref HEAD`
	@git submodule foreach `git rev-parse --abbrev-ref HEAD`

.PHONY: update sync init branch
