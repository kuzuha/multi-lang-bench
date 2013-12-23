<?php

namespace factorial20;

function main()
{
    $result = 1;
    for ($i = 2; $i <= 20; ++$i) {
        $result *= $i;
    }
}
