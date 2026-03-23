$fn=60;
mirror([0, 0, -1]) cylinder(h=3, d=30);
difference() {
	cylinder(h=21, d1=30, d2=150);
	cylinder(h=21.01, d1=24, d2=144);
}