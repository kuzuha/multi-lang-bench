package class_method_call;

sub main {
    class_method_call::foo::bar();
}

package class_method_call::foo;

sub bar {}

1;
