use strict;
use Test::More tests => 3;

use utf8;
use Text::LBSV;

my $lbsv = Text::LBSV->new(
    hoge => 'foo',
    bar  => 'baz',
);

my $line = $lbsv->to_s;

is $line, "hoge:foo\abar:baz";

my $p = Text::LBSV->new;
is($p->parse_line($line)->{hoge}, 'foo');
is($p->parse_line($line)->{bar}, 'baz');
