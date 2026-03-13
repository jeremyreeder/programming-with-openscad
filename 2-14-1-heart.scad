$fn=60;
union() {
	hull() {
		translate([-7, 0]) cylinder(h=1, r=10);
		translate([0, -20]) cylinder(h=1, r=2);
	}
	hull() {
		translate([7, 0]) cylinder(h=1, r=10);
		translate([0, -20]) cylinder(h=1, r=2);
	}
}