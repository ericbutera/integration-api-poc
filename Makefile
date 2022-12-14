.DEFAULT_GOAL := help

.PHONY: help
help: ## Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: ## Build
	docker compose build

.PHONY: test
test: ## Run tests; will emit success or failure
	docker compose up --exit-code-from scanner && \
	echo "success" || \
	echo "failure"
