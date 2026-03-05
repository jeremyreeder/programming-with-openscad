$fn=60;
$clearance=0.2;
union() {
	translate([-20, -30]) cube([95, 60, 4]);
	cylinder(h=8, r=10);
	translate([45, 0]) cylinder(h=8, r=20);
}
translate([0, 75])
	difference() {
		translate([-20, -30]) cube([95, 60, 4]);
		translate([0, 0, -1]) cylinder(h=6, r=10+$clearance);
		translate([45, 0, -1]) cylinder(h=6, r=20+$clearance);
	}