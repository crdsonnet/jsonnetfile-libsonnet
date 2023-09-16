local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

(import './raw.libsonnet')
+ (import './veneer.libsonnet')
+ {
  '#'::
    d.pkg(
      name='jsonnetfile',
      url='github.com/crdsonnet/jsonnetfile-libsonnet/jsonnetfile',
      help=|||
        `jsonnetfile` can generate jsonnetfile.json for [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler)
      |||,
      filename=std.thisFile,
    )
    + d.package.withUsageTemplate(|||
      local %(name)s = import "%(import)s";

      jsonnetfile.new(legacyImports=false)
    |||),
}
