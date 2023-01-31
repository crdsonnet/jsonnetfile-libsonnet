local crdsonnet = import 'github.com/Duologic/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local schema = import 'schema.json';

local render = 'dynamic';

local parsed = crdsonnet.fromSchema(
  'jsonnetfile',
  schema,
  render=render
);

(
  if render == 'dynamic'
  then parsed.jsonnetfile
  else parsed + '.jsonnetfile'
)
+ (
  if render == 'dynamic'
  then import 'veneer.libsonnet'
  else importstr 'veneer.libsonnet'
)
+ (
  if render == 'dynamic'
  then {
    '#'::
      d.pkg(
        name='jsonnetfile',
        url='github.com/Duologic/jsonnetfile-libsonnet/jsonnetfile',
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
  else ''  // don't bother with docs for static rendering
)
