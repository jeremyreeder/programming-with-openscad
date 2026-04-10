for(faces=[3:1:16]) {
	$fn = faces;
	x = 10*faces;
	translate([x, 0, 0]) sphere(r=5);
	echo("faces:", faces, "x-position:", x);
}