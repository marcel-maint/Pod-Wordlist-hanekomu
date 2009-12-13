package Pod::Wordlist::hanekomu;
use 5.006;
use strict;
use warnings;
use Test::Spelling;
use utf8;
our $VERSION      = '0.02';
our @person_names = qw(
  Achim
  Adam
  Conway
  Damian
  Eilam
  Ekker
  Florian
  Grünauer
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
  AOP
  API
  AspectJ
  Babelfish
  CPAN
  Coro
  DateTime
  Django
  DBI
  EPP
  FirePHP
  Firefox
  MVC
  MakeMaker
  Markdown
  mkdn
  Middleware
  OO
  OOP
  PARC
  PHP
  PSGI
  ShipIt
  Spiffy
  svk
  W3CDTF
  XS
  YAML
);
our @stopwords = qw(
  administrativa
  backend
  behaviour
  blog
  blogs
  bugtracker
  callback
  callbacks
  chomp
  chomps
  configurator
  configurators
  crosscutting
  distname
  filename
  github
  homepage
  hostname
  indices
  init
  japanese
  Joseki
  middleware
  mixin
  monkeypatch
  monkeypatches
  monkeypatching
  munge
  namespace
  ok
  op
  pipe's
  placeholders
  plugins
  pointcut
  pointcuts
  prepends
  README
  redispatch
  reusability
  ref
  san
  segment's
  shipit
  startup
  stopword
  stopwords
  stringifies
  tokenizes
  unshifts
  username
  uuid
  whitelist
  whitelists
  wormhole
  vim
  yml
);

# dedup
my %words = map { $_ => 1 } @person_names, @tech_names, @stopwords;
add_stopwords(sort keys %words);
$ENV{LANG} = 'C';
1;
__END__

=head1 NAME

Pod::Wordlist::hanekomu - Add words for spell checking POD

=head1 SYNOPSIS

    use Test::Spelling;
    use Pod::Wordlist::hanekomu;
    all_pod_files_spelling_ok('lib');

=head1 DESCRIPTION

This module, when loaded, adds stopwords for POD spell checking, that is,
words that should be ignored by the spell check.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see L<http://search.cpan.org/dist/Pod-Wordlist-hanekomu/>.

The development version lives at L<http://github.com/hanekomu/pod-wordlist-hanekomu/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHORS

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2009 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
