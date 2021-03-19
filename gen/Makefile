GENERATOR_TYPE=ruby

ensure:
	yarn install

build: ensure
	yarn run -s oas generate -g "${GENERATOR_TYPE}" -t ./templates -o ./tmp/output

config-help: ensure
	yarn run -s oas config-help -g "${GENERATOR_TYPE}"

template-diff: ensure
	yarn run -s oas author template -g "${GENERATOR_TYPE}" -o ./oas-base-templates
	diff ./templates ./oas-base-templates > template-changes.diff
	rm -rf ./oas-base-templates
