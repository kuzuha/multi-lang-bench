object Object_method_call {

  class Foo {
    def objectMethod: Unit = {}
  }

  val foo = new Foo

  def main: Unit = foo.objectMethod

}
