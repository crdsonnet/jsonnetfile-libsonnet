local jutils = import 'github.com/Duologic/jsonnet-libsonnet/utils.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local schema = import 'schema.json';

local ast =
  jutils.get(
    crdsonnet.schema.render(
      'jsonnetfile',
      schema,
      crdsonnet.processor.new()
      + crdsonnet.processor.withRenderEngineType('ast')
    ),
    'jsonnetfile',
    default=error "can't get ast",
  ).expr;

ast.toString(break='\n')
