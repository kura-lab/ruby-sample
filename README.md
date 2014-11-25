ruby-sample
===========

Ruby Sample Code

### Install

Use rbenv and install ruby in CentOS.

* http://qiita.com/inouet/items/478f4228dbbcd442bfe8

Note: At first, git clone rbenv.git before ruby-build.git

### Version

```
$ ruby -v
ruby 1.9.3p551 (2014-11-13 revision 48407) [x86_64-linux]
```

### gem

How to install a gem package.

```
$ gem install xxx
// execute rehash if install a new command with rbenv
$ rbenv rehash
```

See installed gem.

```
$ gem list
```

Search gem package.

```
$ gem query -ra -n "rails"
```
