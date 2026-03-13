$fn=30;
$h=20;
$d=10;
difference() {
	cylinder(h=$h, d1=0, d2=$d);
	translate([0, 0, 2])
		cylinder(h=$h, d1=0, d2=$d);
}