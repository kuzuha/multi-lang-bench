class Object_method_call {
    static {
        foo = new Foo();
    }

    final static Foo foo;

    public static void main() {
        foo.objectMethod();
    }

    static class Foo {
        void objectMethod() {
        }
    }
}
