<?php

require_once 'Conf/resource.php';

if (file_exists('Conf/resource.php')) {
    include_once 'Conf/resource.php';
} elseif (file_exists('../Conf/resource.php')) {
    include_once '../Conf/resource.php';}

function outside($class_name)
{
    if (file_exists('Entity/' . $class_name . '.php')) {
        include_once 'Entity/' . $class_name . '.php';
    }
}
function inside($class_name)
{
    if (file_exists('../Entity/' . $class_name . '.php')) {
        require_once '../Entity/' . $class_name . '.php';
    }
}
spl_autoload_register('outside');
spl_autoload_register('inside');
