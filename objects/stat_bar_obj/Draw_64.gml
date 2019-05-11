draw_set_halign(fa_center);

draw_text_ext_transformed(322, 60, string(floor(global.money/m_divider))+m_letter, 2, 300, 5, 5, 0);
draw_text_ext_transformed(797, 60, string(floor(global.watchers/w_divider))+w_letter, 2, 300, 5, 5, 0);
draw_text_ext_transformed(1277, 60, string(floor(global.influence/i_divider))+i_letter, 2, 300, 5, 5, 0);
draw_text_ext_transformed(1764, 60, string(global.conversion_rate)+"/s", 2, 300, 3, 3, 0);