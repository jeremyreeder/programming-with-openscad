module base() {
	union() {
		translate([0, 0, 14])
			minkowski() {
				cube([60, 60, 20], center=true);
				sphere(r=4);
			}
			translate([-28, -34, 12])
				rotate([90, 0])
					linear_extrude(1.5) text("1st Place");
	}
}

module flare() {
	linear_extrude(2)
		translate([-50, -50]) square([100, 100]);
	translate([0, 0, 2])
		linear_extrude(8, scale=0.8)
			translate([-50, -50]) square([100, 100]);
}

module stem() {
	union() {
		translate([0, 0, 27])
			cylinder(h=7, r=24);
		translate([0, 0, 34])
			rotate_extrude()
				difference() {
					square([20, 40]);
					translate([20, 2]) circle(r=1);
					translate([20, 20]) circle(r=16);
					translate([20, 38]) circle(r=1);
				}
	}
}

module cup() {
	translate([0, 0, 140])
		resize([80, 80, 70])
			rotate_extrude()
				intersection() {
					difference() {
						circle(r=40);
						circle(r=37);
					}
					translate([0, -40]) square(40);
				}
}

union() {
	base();
	flare();
	stem();
	cup();
}