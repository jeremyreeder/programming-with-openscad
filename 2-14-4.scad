$fn=60;
sphere(d=3);
union() {
	translate([0, 0, 1.6]) sphere(d=2.25);
	translate([0, 0, 2.8]) sphere(d=1.75);
	translate([0, 0, 3]) cylinder(h=1.3, d=1);
	translate([0, 0, 3]) cylinder(h=0.65, d=1.3);
	translate([-0.3, -0.75, 3]) sphere(d=0.25);
	translate([0.3, -0.75, 3]) sphere(d=0.25);
	translate([0, -0.8, 2.75])
		rotate([90, 0]) cylinder(h=0.8, r1=0.15, r2=0);
}