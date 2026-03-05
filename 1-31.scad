$fn=60;
union() {
	difference() {
		cylinder(h=2, d=80);
		difference() {
			translate([0, -3, -1]) cylinder(h=4, d=64);
			translate([0, 18, -2]) cylinder(h=6, d=90);
		}
		translate([-12, 14, -1])
			difference() {
				cylinder(h=4, d=18);
				translate([0, -7, -1]) cylinder(h=6, d=10);
			}
		translate([12, 14, -1])
			difference() {
				cylinder(h=4, d=18);
				translate([0, -7, -1]) cylinder(h=6, d=10);
			}
	}
	translate([0, 40])
		difference() {
			cylinder(h=2, d=16);
			translate([0, 0, -1]) cylinder(h=4, d=8);
		}
}