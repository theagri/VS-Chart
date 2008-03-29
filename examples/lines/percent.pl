#!/usr/bin/perl

use strict;
use warnings;

use VS::Chart;
use Date::Simple;

# Create charting object
my $chart = VS::Chart->new(
    line_width => 1,
    y_label_fmt => "%d %%",
    x_ticks => 1,
);

$chart->add(Date::Simple->new("2000-01-01"), 20);
$chart->add(Date::Simple->new("2001-01-01"), 65);
$chart->add(Date::Simple->new("2002-01-01"), 15);

$chart->set("max" => 100);
$chart->set("min" => -100);

$chart->render(type => 'line', as => 'png', to => 'lines_percent.png');
