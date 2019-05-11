letter = "";
divider = 1;

if (total_income < 1000) {
	letter = "";
	divider = 1;
} else if (total_income >= 1000 && total_income < 1000000) { 
	letter = "K"; 
	divider = 1000;
} else if (total_income < 1000000000) { 
	letter = "M"; 
	divider = 1000000;
} else { 
	letter = "B"; 
	divider = 1000000000;
}

draw_set_halign(fa_center);

draw_text_ext_transformed(sprite_width / 2, y + 5, "Goal: 100B, Income: "+string_format(total_income/divider, 3, 2)+letter, 2, 1920, 5, 5, 0);