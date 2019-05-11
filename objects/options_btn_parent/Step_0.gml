if (global.money < cost) {
	disabled = true;
	image_alpha = 0.5;
} else {
	disabled = false;
	image_alpha = true;
}

r_income = number * income * global.influence;

sec_check++;
sec_check %= 60;

if (sec_check == 0) {
	global.money += r_income;
}