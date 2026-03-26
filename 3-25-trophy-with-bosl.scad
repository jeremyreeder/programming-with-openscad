include <BOSL2/std.scad>

module flare() {
	linear_extrude(2)
		left(50) fwd(50) square(100);
	up(2)
		linear_extrude(8, scale=0.8)
			left(50) fwd(50) square(100);
}

module stem() {
	attachable() {
		rotate_extrude()
			difference() {
				square([20, 40], anchor);
				right(20) back(2) circle(r=1);
				right(20) back(20) circle(r=16);
				right(20) back(38) circle(r=1);
			}
		children();
	}
}

module cup() {
	zscale(7/4)
		difference() {
			sphere(r=40);
			sphere(r=37);
			cuboid([82, 82, 41], anchor=BOTTOM);
		}
}

module trophy() {
	cuboid([64, 64, 28], rounding=4) {
		position(BOTTOM)
			flare();
		up(4) attach(FRONT)
			linear_extrude(1.5) text("1st Place", anchor=CENTER);
		position(TOP)
			cyl(h=7, r=24, anchor=BOTTOM) {
				position(TOP) stem()
					position(TOP) up(106) cup();
			}
	}
}

trophy();