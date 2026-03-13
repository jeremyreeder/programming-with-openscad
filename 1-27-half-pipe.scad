difference() {
	$length=10;
	$width=9;
	$height=$length/2;
	cube([$width, $length, $height]);
	translate([$width/2, $length+1, $height])
		rotate([90, 0, 0])
			cylinder(h=$length+2, d=$width-2, $fn=30);
}