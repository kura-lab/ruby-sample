rubocop-sample
===========

RuboCop Sample

### Install

```
$ gem install rubocop
```

### Generate auto config

```
$ rubocop --auto-gen-config
$ ls -a
.rubocop_todo.yml
```

The following is my default configuration.

```
inherit_from: .rubocop_todo.yml

# Ascii以外（マルチバイト）でのコメントを許可
AsciiComments:
  Enabled: false
```

### Check Coding Style

```
$ rubocop
```

Do auto-correct offenses.

```
$ rubocop -a
```
