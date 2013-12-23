package factorial20;
use 5.16.0;

sub main {
    my $result = 1;
    for my $i (2..20) {
        $result *= $i;
    }
}

1;
