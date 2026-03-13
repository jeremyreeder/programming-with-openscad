resize([40, 40, 40])
	union() {
		cube([4, 1, 1]);
		translate([0, -1, 0]) cube([3, 1, 1]);
		translate([0, -2, 0]) cube([2, 1, 1]);
		translate([0, -3, 0]) cube(1);
		translate([0, 0, 1]) cube([3, 1, 1]);
		translate([0, -1, 1]) cube([2, 1, 1]);
		translate([0, -2, 1]) cube(1);
		translate([0, 0, 2]) cube([2, 1, 1]);
		translate([0, -1, 2]) cube(1);
		translate([0, 0, 3]) cube(1);
	}