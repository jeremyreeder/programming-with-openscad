$fn=60;

module post() {
	cylinder(h=20, d1=2, d2=0);
}

module hangout() {
	union() {
		mirror([0, 0, 1]) cylinder(h=4, d1=25, d2=2);
		cylinder(h=5, d1=25, d2=2);
		cylinder(h=5, d=20);
		translate([0, 0, 3]) cylinder(h=3, d1=25, d2=0);
		translate([0, 0, 3]) cylinder(h=2, d=22);
		translate([0, 0, 5]) cylinder(h=1, d=18);
		translate([0, 0, 6]) cylinder(h=3, d1=18, d2=0);
		translate([0, 0, 6]) cylinder(h=4, d1=0, d2=7);
		translate([0, 0, 10]) cylinder(h=1, d1=7, d2=0);
	}
}

module spire() {
	mirror([0, 0, -1]) cylinder(h=35, d=2);
}

union() {
	post();
	hangout();
	spire();
}