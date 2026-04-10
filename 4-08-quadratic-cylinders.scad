for(i=[1:1:10]) {
	height=i*i;
	x=5*i;
	translate([x, 0, 0]) cylinder(h=height, r=2);
}