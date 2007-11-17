#!perl

use strict;
use warnings;

use Test::More tests => 1;

BEGIN { use_ok("VS::Chart"); }

use VS::Chart;

my $chart = VS::Chart->new();
