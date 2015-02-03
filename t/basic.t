use v6;
use Test;
plan 1;
use Code::Walker;

my $code = 'my $x; $x++; say $x;';

my $walker  = Code::Walker.new;
my $results = $walker.walk($code);

# not a real test
ok $results.output;

done();
