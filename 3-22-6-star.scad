module tip() {
	polygon([[-6.5, 0], [6.5, 0], [0, 20]]);
}

module star() {
	union() {
		tip();
		rotate(72) tip();
		rotate(144) tip();
		rotate(216) tip();
		rotate(288) tip();
	}
}

star();