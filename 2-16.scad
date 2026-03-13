module right_half()
	union() {
		difference() {
			cube([90, 180, 15]);
			translate([6, 6, 6]) cube([78, 168, 10]);
		}
		translate([0, 90])
			difference() {
				cube([60, 90, 75]);
				translate([6, 6, 5]) cube([48, 78, 71]);
				translate([60, 0]) sphere(r=35, $fn=60);
			}
	}

module left_half()
	mirror([90, 0, 0]) right_half();

union() {
	left_half();
	right_half();
}