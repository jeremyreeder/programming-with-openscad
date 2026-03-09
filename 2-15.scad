$fn=60;
difference() {
	// blank die
	minkowski() {
		cube(8, center=true);
		sphere(d=1.8);
	}
	
	// one pip on top
	translate([0, 0, 4.5]) cylinder(d=1.8, h=1.5);
	
	// two pips on front
	rotate([90, 0]) {
		translate([-2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);

		translate([2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
	}
	
	// three pips on left
	rotate([0, -90]) {
		translate([-2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([0, 0, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
	}
	
	// four pips on right
	rotate([0, 90]) {
		translate([-2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([-2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
	}
	
	// five pips on back
	rotate([-90, 0]) {
		translate([0, 0, 4.5]) cylinder(d=1.8, h=1.5);
		translate([-2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([-2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
	}
	
	// six pips on bottom
	rotate([180, 0]) {
		translate([-2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([-2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([-2.5, 0, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, 0, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, -2.5, 4.5]) cylinder(d=1.8, h=1.5);
		translate([2.5, 2.5, 4.5]) cylinder(d=1.8, h=1.5);
	}
}