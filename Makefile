OS := $(shell uname -s)

ifeq ($(OS),Linux)
SHELL := /bin/bash
endif

sync:
ifeq ($(OS),Linux)
	@echo "➡ Запускаю Bash-скрипт"
	bash ./push_pull.ssh
else
	@echo "➡ Запускаю PowerShell-скрипт"
	pwsh ./push_pull.ps1
endif