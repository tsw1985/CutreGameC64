// -------------- ALL STRINGS TEXT TO SHOW ---------------------
// string text must be wrotten in lowercase
// DO NOT FORGET ADD \$00 at the end of the string

number_to_print_str:   .fill 10,0 
keys_buffer:           .fill 5, 0 // do not override , this is the end of string
space_4_str:      .text @"    \$00"
space_5_str:      .text @"leftn\$00"
calc_offset_str:  .text @"offset:\$00"
coor_y_str:       .text @"y:\$00"
coor_x_str:       .text @"x:\$00"
cursor_index_str: .text @"cur index:\$00"
cursor_col_str:   .text @"cur col:\$00"