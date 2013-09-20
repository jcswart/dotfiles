<?php

$contents = file_get_contents($argv[1]);

$lines = explode("\n", $contents);

$res = array_filter($lines, function($line) {
	if (stripos($line, ' function ') !== false) {
		return true;
	}
	return false;
});

$clean = array_map(function($x) {
	$strip = str_replace(' function ', ' ', $x);
	$rem   = str_replace('{', '', $strip);
	$rem2  = str_replace('}', '', $rem);
	$split = explode(' ', $rem2);
	$filt  = array_filter($split);
	return array('access' => trim($filt[0]), 'name' => $filt[1]);
}, $res);

$pub = array_filter($clean, function($res) {
	if ($res['access'] == 'public') {
		return true;
	}
	return false;
});

$pro = array_filter($clean, function($res) {
	if ($res['access'] == 'protected') {
		return true;
	}
	return false;
});

printf("\n--%s--\n", basename($argv[1]));
printf("public\n");
foreach ($pub as $p) {
    printf("\t%s\n", trim($p['name']));
}

printf("protected\n");
foreach ($pro as $p) {
    printf("\t%s\n", trim($p['name']));
}
