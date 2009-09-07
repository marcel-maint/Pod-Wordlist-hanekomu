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

author_requires 'ShipIt';
author_requires 'ShipIt::Step::DistClean';
author_requires 'ShipIt::Step::DistTestExtra';
author_requires 'ShipIt::Step::Manifest';
author_requires 'ShipIt::Step::Twitter';
author_requires 'Test::Compile';
author_requires 'Test::Perl::Critic';
author_requires 'Test::Pod';
author_requires 'Test::Spelling';
author_requires 'Pod::Wordlist::hanekomu';
author_requires 'Test::Pod::Coverage';
# author_requires 'Test::Kwalitee';   # Attempt to free unreferenced scalar
author_requires 'Test::YAML::Meta';
author_requires 'Test::Portability::Files';
author_requires 'Test::Synopsis';

auto_install;
auto_include;
WriteAll;
