{
  '#withDependencies': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'array' }], help: '' } },
  withDependencies(value): { dependencies: (if std.isArray(value)
                                            then value
                                            else [value]) },
  '#withDependenciesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'array' }], help: '' } },
  withDependenciesMixin(value): { dependencies+: (if std.isArray(value)
                                                  then value
                                                  else [value]) },
  dependencies+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withName(value): { name: value },
      '#withSingle': { 'function': { args: [{ default: true, enums: null, name: 'value', type: 'boolean' }], help: '' } },
      withSingle(value=true): { single: value },
      '#withSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
      withSource(value): { source: value },
      '#withSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
      withSourceMixin(value): { source+: value },
      source+:
        {
          '#withGit': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
          withGit(value): { source+: { git: value } },
          '#withGitMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
          withGitMixin(value): { source+: { git+: value } },
          git+:
            {
              '#withHost': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withHost(value): { source+: { git+: { Host: value } } },
              '#withRepo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withRepo(value): { source+: { git+: { Repo: value } } },
              '#withScheme': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withScheme(value): { source+: { git+: { Scheme: value } } },
              '#withSubdir': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withSubdir(value): { source+: { git+: { Subdir: value } } },
              '#withUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withUser(value): { source+: { git+: { User: value } } },
            },
          '#withLocal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
          withLocal(value): { source+: { 'local': value } },
          '#withLocalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: '' } },
          withLocalMixin(value): { source+: { 'local'+: value } },
          'local'+:
            {
              '#withDirectory': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
              withDirectory(value): { source+: { 'local'+: { directory: value } } },
            },
        },
      '#withSum': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withSum(value): { sum: value },
      '#withVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withVersion(value): { version: value },
    },
  '#withLegacyImports': { 'function': { args: [{ default: true, enums: null, name: 'value', type: 'boolean' }], help: '' } },
  withLegacyImports(value=true): { legacyImports: value },
  '#withVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'integer' }], help: '' } },
  withVersion(value): { version: value },
}
