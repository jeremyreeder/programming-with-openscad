union() {
	$fn=50;
	$height=9;
	$diameter=20;
	union() {
		cylinder(h=$height, d1=$diameter, d2=0);
		cylinder(h=$height, d1=0, d2=$diameter);
	}
}