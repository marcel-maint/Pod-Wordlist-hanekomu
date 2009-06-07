use inc::Module::Install;
include 'Module::AutoInstall';

name 'Pod-Wordlist-hanekomu';
all_from 'lib/Pod/Wordlist/hanekomu.pm';
perl_version '5.006';

homepage 'http://search.cpan.org/dist/Pod-Wordlist-hanekomu/';
bugtracker 'http://rt.cpan.org/Public/Dist/Display.html?Name=Pod-Wordlist-hanekomu';
repository 'http://github.com/hanekomu/pod-wordlist-hanekomu/tree/master';

requires 'Test::Spelling';
requires 'Pod::Wordlist';

test_requires 'Test::More' => '0.70';
extra_tests;

auto_install;
auto_include;
WriteAll;
