$fn=30;
difference() {
	union() {
		cylinder(h=1, d=40, $fn=120);
		translate([5, -5, 0.3])
			rotate([20, 160]) cylinder(h=10, d=1);
		translate([5, 5, 0.3])
			rotate([-20, 160]) cylinder(h=10, d=1);
		translate([-5, 5, 0.3])
			rotate([-20, 200]) cylinder(h=10, d=1);
		translate([-5, -5, 0.3])
			rotate([20, 200]) cylinder(h=10, d=1);
	}
	translate([-15, -15, -9]) cube([30, 30, 1]);
}