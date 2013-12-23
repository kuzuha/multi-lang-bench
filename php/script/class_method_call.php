<?php

namespace class_method_call;

function main()
{
    foo::bar();
}

class foo
{
    public static function bar() {}
}
