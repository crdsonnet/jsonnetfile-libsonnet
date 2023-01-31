jsonnetfile/schema.json:
	cd go && go run . > ../jsonnetfile/schema.json

README.md:
	cd jsonnetfile && \
	jsonnet -J vendor -S -c -m .. \
			--exec "(import 'doc-util/main.libsonnet').render(import 'main.libsonnet')"
