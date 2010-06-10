use 5.008;
use strict;
use warnings;

package Pod::Wordlist::hanekomu;
# ABSTRACT: Add words for spell checking POD
use Test::Spelling;
use utf8;
our @person_names = qw(
  Achim
  Adam
  Conway
  Damian
  Eilam
  Ekker
  Florian
  Gruenauer
  Heinz
  Helmberger
  Hofstetter
  Marcel
  Mark
  Miyagawa
  Ran
  Ricardo
  Signes
  Takesako
  Tatsuhiko
);
our @tech_names = qw(
  AnyEvent
  AOP
  API
  AspectJ
  Babelfish
  CPAN
  Coro
  DateTime
  Django
  DBI
  DSL
  EPP
  FirePHP
  Firefox
  FIXME
  GraphViz
  HTTP
  IP
  IPv4
  IPv6
  MVC
  MakeMaker
  Markdown
  mkdn
  Middleware
  OO
  OOP
  PARC
  PHP
  Plack
  PSGI
  README
  ShipIt
  Spiffy
  SQL
  STDIN
  STDOUT
  STDERR
  svk
  TIMTOWTDI
  Unicode
  URI
  URIs
  W3CDTF
  XS
  YAML
  YAML's
);
our @stopwords = qw(
  adaptee
  adaptees
  administrativa
  afterwards
  array's
  backend
  behaviour
  blog
  blogs
  bugtracker
  bundle's
  callback
  callbacks
  callee
  chomp
  chomps
  configurator
  configurators
  crosscutting
  denormalized
  distname
  dotfile
  dotfiles
  filename
  formatter
  github
  hash's
  homepage
  hostname
  indices
  init
  japanese
  Joseki
  lookup
  lookups
  kwalitee
  marshalling
  metadata
  middleware
  mixin
  monkeypatch
  monkeypatches
  monkeypatching
  munge
  munger
  namespace
  namespaces
  nestable
  ok
  op
  pipe's
  placeholders
  pluggable
  plugin's
  plugins
  pointcut
  pointcuts
  prepends
  preprocessed
  redispatch
  reusability
  ref
  san
  segment's
  shipit
  startup
  storable
  stopword
  stopwords
  stringification
  stringifications
  stringifies
  stringify
  subdirectory
  subdirectories
  subobjects
  terminal's
  tokenizes
  toolchain
  unblessed
  unshifts
  username
  uuid
  value's
  variable's
  wellformedness
  whitelist
  whitelists
  workflow
  workflows
  wormhole
  vim
  yml
);

# dedup
my %words = map { $_ => 1 } @person_names, @tech_names, @stopwords;
add_stopwords(sort keys %words);
$ENV{LANG} = 'C';
1;

=head1 SYNOPSIS

    use Test::Spelling;
    use Pod::Wordlist::hanekomu;
    all_pod_files_spelling_ok('lib');

=head1 DESCRIPTION

This module, when loaded, adds stopwords for POD spell checking, that is,
words that should be ignored by the spell check.
