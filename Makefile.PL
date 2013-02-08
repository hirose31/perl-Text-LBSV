use inc::Module::Install;
name 'Text-LBSV';
all_from 'lib/Text/LBSV.pm';
readme_from 'lib/Text/LBSV.pm';

requires 'Tie::IxHash';
requires 'Project::Libs';
requires 'UNIVERSAL::require';
requires 'YAML::Tiny::Color';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';

install_script 'bin/lbsview';

auto_set_repository;
auto_include;
WriteAll;
