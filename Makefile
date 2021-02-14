.PHONY: update_brewfile

update_brewfile:
	brew bundle dump --force
