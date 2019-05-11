c_letter = "";
c_divider = 1;

r_letter = "";
r_divider = 1;

if (cost < 1000) {
	c_letter = "";
	c_divider = 1;
} else if (cost >= 1000 && cost < 1000000) { 
	c_letter = "K"; 
	c_divider = 1000;
} else if (cost < 1000000000) { 
	c_letter = "M"; 
	c_divider = 1000000;
} else { 
	c_letter = "B"; 
	c_divider = 1000000000;
}

if (r_income < 1000) {
	r_letter = "";
	r_divider = 1;
} else if (r_income >= 1000 && r_income < 1000000) { 
	r_letter = "K"; 
	r_divider = 1000;
} else if (r_income < 1000000000) { 
	r_letter = "M"; 
	r_divider = 1000000;
} else { 
	r_letter = "B"; 
	r_divider = 1000000000;
}

draw_set_halign(fa_left);

draw_text(x + sprite_width + 3, y + 22, "x"+string(number));
draw_text(x + sprite_width + 3, y + 42, "Costs: " + string(floor(cost/c_divider))+c_letter);
draw_text(x + sprite_width + 3, y + 62, "Income: "+string_format(r_income/r_divider, 3, 2)+r_letter);