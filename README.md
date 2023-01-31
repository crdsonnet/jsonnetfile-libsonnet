# package jsonnetfile

`jsonnetfile` can generate jsonnetfile.json for [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler)


## Install

```
jb install github.com/Duologic/jsonnetfile-libsonnet/jsonnetfile@master
```

## Usage

```jsonnet
local jsonnetfile = import "github.com/Duologic/jsonnetfile-libsonnet/jsonnetfile/main.libsonnet";

jsonnetfile.new(legacyImports=false)

```

## Index

* [`fn new(legacyImports=true)`](#fn-new)
* [`fn withDependencies(value)`](#fn-withdependencies)
* [`fn withDependenciesMixin(value)`](#fn-withdependenciesmixin)
* [`fn withLegacyImports(value)`](#fn-withlegacyimports)
* [`fn withVersion(value)`](#fn-withversion)
* [`obj dependencies`](#obj-dependencies)
  * [`fn withName(value)`](#fn-dependencieswithname)
  * [`fn withSingle(value)`](#fn-dependencieswithsingle)
  * [`fn withSource(value)`](#fn-dependencieswithsource)
  * [`fn withSourceMixin(value)`](#fn-dependencieswithsourcemixin)
  * [`fn withSum(value)`](#fn-dependencieswithsum)
  * [`fn withVersion(value)`](#fn-dependencieswithversion)
  * [`obj source`](#obj-dependenciessource)
    * [`fn withGit(value)`](#fn-dependenciessourcewithgit)
    * [`fn withGitMixin(value)`](#fn-dependenciessourcewithgitmixin)
    * [`fn withLocal(value)`](#fn-dependenciessourcewithlocal)
    * [`fn withLocalMixin(value)`](#fn-dependenciessourcewithlocalmixin)
    * [`obj git`](#obj-dependenciessourcegit)
      * [`fn withHost(value)`](#fn-dependenciessourcegitwithhost)
      * [`fn withRepo(value)`](#fn-dependenciessourcegitwithrepo)
      * [`fn withScheme(value)`](#fn-dependenciessourcegitwithscheme)
      * [`fn withSubdir(value)`](#fn-dependenciessourcegitwithsubdir)
      * [`fn withUser(value)`](#fn-dependenciessourcegitwithuser)
    * [`obj local`](#obj-dependenciessourcelocal)
      * [`fn withDirectory(value)`](#fn-dependenciessourcelocalwithdirectory)

## Fields

### fn new

```ts
new(legacyImports=true)
```

`new` creates a jsonnetfile object


### fn withDependencies

```ts
withDependencies(value)
```



### fn withDependenciesMixin

```ts
withDependenciesMixin(value)
```



### fn withLegacyImports

```ts
withLegacyImports(value)
```



### fn withVersion

```ts
withVersion(value)
```



### obj dependencies


#### fn dependencies.withName

```ts
withName(value)
```



#### fn dependencies.withSingle

```ts
withSingle(value)
```



#### fn dependencies.withSource

```ts
withSource(value)
```



#### fn dependencies.withSourceMixin

```ts
withSourceMixin(value)
```



#### fn dependencies.withSum

```ts
withSum(value)
```



#### fn dependencies.withVersion

```ts
withVersion(value)
```



#### obj dependencies.source


##### fn dependencies.source.withGit

```ts
withGit(value)
```



##### fn dependencies.source.withGitMixin

```ts
withGitMixin(value)
```



##### fn dependencies.source.withLocal

```ts
withLocal(value)
```



##### fn dependencies.source.withLocalMixin

```ts
withLocalMixin(value)
```



##### obj dependencies.source.git


###### fn dependencies.source.git.withHost

```ts
withHost(value)
```



###### fn dependencies.source.git.withRepo

```ts
withRepo(value)
```



###### fn dependencies.source.git.withScheme

```ts
withScheme(value)
```



###### fn dependencies.source.git.withSubdir

```ts
withSubdir(value)
```



###### fn dependencies.source.git.withUser

```ts
withUser(value)
```



##### obj dependencies.source.local


###### fn dependencies.source.local.withDirectory

```ts
withDirectory(value)
```


