union() {
	$fn=25;
	$width=20;
	$bottom_cone_height=8;
	$rounded_top_height=2;
	$handle_height=4;
	union() {
		cylinder(h=$bottom_cone_height, d1=0, d2=$width);
		translate([0, 0, $bottom_cone_height])
			resize([0, 0, $rounded_top_height])
				difference() {
					sphere(d=$width);
					translate([0, 0, -$width/2-1])
						cylinder(h=$width/2+1, d=$width+2);
					}
		translate([0, 0, $bottom_cone_height])
			cylinder(h=$rounded_top_height+$handle_height, d=5);
	}
}