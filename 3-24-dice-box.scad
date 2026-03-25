clearance = 0.1;

module outer_rectangle() {
	square([130, 70]);
}

module inner_rectangle() {
	offset(-5) outer_rectangle();
}

module box() {
	union() {
		linear_extrude(5) outer_rectangle();
		translate([0, 0, 5])
			linear_extrude(35)
				difference() {
					outer_rectangle();
					inner_rectangle();
				}
	}
}

module lid() {
	difference() {
		union() {
			linear_extrude(5) outer_rectangle();
			translate([0, 0, 5])
				linear_extrude(5)
					offset(-clearance) inner_rectangle();
		}
		translate([115, 30])
			mirror([1, 0, 0]) text("Storytelling Dice");
	}
}

box();
translate([0, -80]) lid();