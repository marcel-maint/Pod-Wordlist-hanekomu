package Pod::Wordlist::hanekomu;

use strict;
use warnings;
use Test::Spelling;
use utf8;

our $VERSION = '0.01';

our @stopwords = qw(
    AOP
    API
    Achim
    Adam
    AspectJ
    CPAN
    Conway
    Coro
    Damian
    DateTime
    Eilam
    Ekker
    FirePHP
    Firefox
    Florian
    Grünauer
    Heinz
    Helmberger
    Hofstetter
    MVC
    Marcel
    Mark
    Middleware
    Miyagawa
    OO
    OOP
    PARC
    PHP
    Ran
    ShipIt
    Spiffy
    Takesako
    Tatsuhiko
    W3CDTF
    YAML
    administrativa
    behaviour
    blog
    blogs
    callback
    callbacks
    chomp
    chomps
    configurator
    configurators
    crosscutting
    distname
    github
    init
    monkeypatch
    monkeypatches
    monkeypatching
    op
    pipe's
    placeholders
    pointcut
    pointcuts
    redispatch
    ref
    san
    segment's
    shipit
    stopword
    stopwords
    tokenizes
    unshifts
    username
    whitelist
    whitelists
    wormhole
    yml
);

add_stopwords(@stopwords);
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
site near you. Or see L<http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

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

