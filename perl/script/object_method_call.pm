package object_method_call;

my $obj = object_method_call::foo->new;

sub main {
    $obj->bar();
}

package object_method_call::foo;

sub new {
    bless {}, shift;
}

sub bar {}

1;
