#!/usr/bin/perl

use strict;
use warnings;

use Getopt::Long;
use IO::All;

my $output_fn;

GetOptions(
    'o=s' => \$output_fn,
);

my $input_fn = shift;

my $xhtml_trans = <<'EOF';
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
EOF

my $text = io()->file($input_fn)->slurp();
$text =~ s{^<\?xml version[^\n]+\n}{}ms;
$text =~ s{<!DOCTYPE.*?>}{$xhtml_trans}ms;
$text =~ s{<style.*?</style>[^\n]*\n}{}ms;

io()->file($output_fn)->print($text);
