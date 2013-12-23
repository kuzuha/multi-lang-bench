package bench;
use 5.16.0;
use Module::Load;
use Time::HiRes qw(gettimeofday);

sub execute {
    my ($target, $count) = @_;

    load $target;
    my $start = gettimeofday;
    for (0..$count - 1) {
        $target->main();
    }
    gettimeofday - $start;
}

my $count = $ARGV[0];
my @target_list = @ARGV[1..$#ARGV];
my $blank = execute('blank', $count);

foreach my $target (@target_list) {
    my $time = execute($target, $count) - $blank;
    say "# $target";
    say "## $time";
}
