if (global.money < 1000) {
	m_letter = "";
	m_divider = 1;
} else if (global.money >= 1000 && global.money < 1000000) { 
	m_letter = "K"; 
	m_divider = 1000;
} else if (global.money < 1000000000) { 
	m_letter = "M"; 
	m_divider = 1000000;
} else { 
	m_letter = "B"; 
	m_divider = 1000000000;
}

if (global.watchers < 1000) {
	w_letter = "";
	w_divider = 1;
} else if (global.watchers >= 1000 && global.watchers < 1000000) { 
	w_letter = "K"; 
	w_divider = 1000;
} else if (global.watchers < 1000000000) { 
	w_letter = "M"; 
	w_divider = 1000000;
} else { 
	w_letter = "B"; 
	w_divider = 1000000000;
}

if (global.influence < 1000) {
	i_letter = "";
	i_divider = 1;
} else if (global.influence >= 1000 && global.influence < 1000000) { 
	i_letter = "K"; 
	i_divider = 1000;
} else if (global.influence < 1000000000) { 
	i_letter = "M"; 
	i_divider = 1000000;
} else { 
	i_letter = "B"; 
	i_divider = 1000000000;
}

sec_check++;
sec_check %= 10;

if (sec_check == 0) { 
	global.influence = global.watchers / 100;
	global.conversion_rate = global.influence / 10;
	global.watchers += global.conversion_rate; 
}

if (global.money >= global.goal) room_goto_previous();