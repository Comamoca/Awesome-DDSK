use warnings;
use strict;

use constant {
  DDSK => 0b011101110111,
  MASK => 0b111111111111,
};

my $buffer = 0;
my @ddsk = qw/ドド スコ/;

while ($buffer != DDSK) {
  my $index = rand(@ddsk);
  print $ddsk[$index];
  $buffer = ($buffer << 1) & MASK | $index;
}

print "ラブ注入♡\n";
