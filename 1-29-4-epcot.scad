union() {
	$fn=120;
	$sphere_d=20;
	union() {
		translate([0, 0, $sphere_d/2])
			sphere(d=$sphere_d);
		cylinder(h=$sphere_d/2, d1=3/4*$sphere_d, d2=0);
	}
}