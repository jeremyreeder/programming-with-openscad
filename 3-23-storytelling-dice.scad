$fn=60;
text1="Yes";
text2="No";
text3="Maybe";
text4="Maybe";
text5="No";
text6="Yes";
monospace_font="Courier";

module emboss_top(label) {
	translate([-3.75, -2.5, 4.5])
		linear_extrude(2)
			resize([7, 5])
				translate([1, 1])
					text(label, font=monospace_font);
}

module emboss_front(label) {
	rotate([90, 0]) emboss_top(label);
}

module emboss_left(label) {
	rotate([0, -90]) emboss_top(label);
}

module emboss_right(label) {
	rotate([0, 90]) emboss_top(label);
}

module emboss_back(label) {
	rotate([-90, 0]) emboss_top(label);
}

module emboss_bottom(label) {
	rotate([180, 0]) emboss_top(label);
}

difference() {
	// blank die
	minkowski() {
		cube(8, center=true);
		sphere(d=1.8);
	}
	emboss_top(text1);
	emboss_front(text2);
	emboss_left(text3);
	emboss_right(text4);
	emboss_back(text5);
	emboss_bottom(text6);
}