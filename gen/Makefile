GENERATOR_TYPE=ruby

ensure:
	yarn install

clean:
	rm -rf tmp

build: ensure
	yarn run -s oas generate -g "${GENERATOR_TYPE}" -c ./generator-config.json -t ./templates -o ./tmp/output -i "${OAS_SPEC_PATH}"

config-help: ensure
	yarn run -s oas config-help -g "${GENERATOR_TYPE}"

template-diff: ensure
	yarn run -s oas author template -g "${GENERATOR_TYPE}" -o ./tmp/oas-base-templates
	diff ./templates ./tmp/oas-base-templates > ./tmp/template-changes.diff
