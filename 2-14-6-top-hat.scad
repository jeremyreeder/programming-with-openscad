$fn=60;
minkowski() {
	union() {
		cylinder(h=0.5, d=24);
		translate([0, 0, 0.5]) cylinder(h=10, d1=16, d2=20);
	}
	sphere(d=1, $fn=24);
}