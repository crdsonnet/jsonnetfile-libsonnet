generator/schema.json:
	cd go && go run . > ../generator/schema.json

jsonnetfile/raw.libsonnet:
	jsonnet -J generator/vendor -S generator/main.libsonnet | jsonnetfmt - > jsonnetfile/raw.libsonnet

README.md:
	cd jsonnetfile && \
	jsonnet -J vendor -S -c -m .. \
			--exec "(import 'doc-util/main.libsonnet').render(import 'main.libsonnet')"
