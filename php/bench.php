<?php

namespace banch;

function execute($target, $count)
{
    require_once "script/$target.php";
    $func = "$target\\main";

    $start = microtime(true);

    for ($i=0; $i < $count; ++$i) {
        $func();
    }

    return microtime(true) - $start;
}

$count = $argv[1];
$targetList = array_slice($argv, 2);

$blank = execute('blank', $count);

foreach ($targetList as $target) {
    $time = execute($target, $count) - $blank;

    print "# $target\n";
    print "## $time\n";
}
