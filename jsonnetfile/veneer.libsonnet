{
  local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet',
  '#new':: d.fn(
    help=|||
      `new` creates a jsonnetfile object
    |||,
    args=[
      d.arg('legacyImports', d.T.bool, true),
    ]
  ),
  new(legacyImports=true):
    self.withVersion(1)
    + self.withLegacyImports(legacyImports)
    + self.withDependencies([]),
}
