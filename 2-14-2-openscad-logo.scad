$fn=30;
difference() {
	sphere(d=10);
	cylinder(h=15, d=5, center=true);
	rotate([90, 0]) cylinder(h=15, d=5, center=true);
	rotate([0, 90]) #cylinder(h=15, d=5, center=true);
}