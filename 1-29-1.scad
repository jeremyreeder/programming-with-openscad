union() {
	$fn=50;
	$thickness=1.5;
	cylinder(h=$thickness, d=12);
	translate([-5, 6, 0])
		cylinder(h=$thickness, d=6);
	translate([5, 6, 0])
		cylinder(h=$thickness, d=6);
}