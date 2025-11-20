// DEBUG MODE
// ==========
.label debug_mode = 0; // 1 ON - 0 OFF

// SCREEN CONFIG
//=============
.label SCREEN_WIDTH            = 40 // Cols
.label SCREEN_HEIGHT           = 25 // Rows
.label SCREEN_SIZE             = SCREEN_WIDTH * SCREEN_HEIGHT
.label SCREEN_CONTROL_1        = $d011
.label SCREEN_CONTROL_2        = $d016


// Rooms:
//=======
.label MAP_WIDTH  = 16 // Tiles
.label MAP_HEIGHT = 12 // Tiles
.label MAP_SIZE   = MAP_WIDTH * MAP_HEIGHT


// Tanks Margin:
//=============
.label TANK_MARGIN_X = 15
.label TANK_MARGIN_Y = 13


// COLORS:
//========
.label BLACK  = $00
.label WHITE  = $01
.label RED    = $02
.label CYAN   = $03
.label PURPLE = $04
.label GREEN  = $05
.label BLUE   = $06
.label YELLOW = $07
.label ORANGE = $08
.label BROWN  = $09
.label PINK   = $0A
.label GREY   = $0C
.label LIGHT_GREEN = $0D
.label LIGHT_BLUE  = $0E
.label LIGHT_GRAY  = $0F
.label DARK_GRAY   = $0B
.label DEFAULT_SCREEN_BORDER_COLOR = BLACK
.label DEFAULT_SCREEN_BACKGROUND_COLOR = BLACK
.label DEFAULT_SCREEN_EXTRA_COLOR_1 = LIGHT_BLUE
.label DEFAULT_SCREEN_EXTRA_COLOR_2 = BROWN
.label SCREEN_EXTRA_COLOR_1 = $d022
.label SCREEN_EXTRA_COLOR_2 = $d023


// RASTER IRQ:
//===========
.label INTERRUPT_CONTROL_AND_STATUS1 = $dc0d
.label INTERRUPT_CONTROL_AND_STATUS2 = $dd0d
.label INTERRUPT_EXEC_ADDR1_SERVICE  = $0314
.label INTERRUPT_EXEC_ADDR2_SERVICE  = $0315
.label CURRENT_RASTER_LINE           = $d012
.label INTERRUPT_STATUS              = $d019
.label INTERRUPT_CONTROL             = $d01a
.label INTERRUPT_RETURN	             = $ea81

// SPRITE CONSTANTS:
//=================
.label SPRITE_HEIGHT = 21
.label SPRITE_WIDTH  = 24
.label SPRITE_CENTER_WIDTH_OFFSET  = 12 // 24px / 2 = 12
.label SPRITE_CENTER_HEIGHT_OFFSET = 10 // 21px / 2 = 10.5 ( 10 rounded )

// SPRITE COORDS MEMORY MAPS POSITIONS:
//====================================

// Y
.label SPRITE_0_MEM_Y = $d001
.label SPRITE_1_MEM_Y = $d003
.label SPRITE_2_MEM_Y = $d005
.label SPRITE_3_MEM_Y = $d007
.label SPRITE_4_MEM_Y = $d009
.label SPRITE_5_MEM_Y = $d00b
.label SPRITE_6_MEM_Y = $d00d
.label SPRITE_7_MEM_Y = $d00f

// X
.label SPRITE_0_MEM_X = $d000
.label SPRITE_1_MEM_X = $d002
.label SPRITE_2_MEM_X = $d004
.label SPRITE_3_MEM_X = $d006
.label SPRITE_4_MEM_X = $d008
.label SPRITE_5_MEM_X = $d00a
.label SPRITE_6_MEM_X = $d00c
.label SPRITE_7_MEM_X = $d00e

//GAME SPRITE CONSTANTS
//=====================

/* Chars Representations*/
.label BRIK = 67

/* Player 1 */
.label SPRITE_TANK_1 = 0
.label SPRITE_BULLET_TANK_1 = 1

/* Player 2 */
.label SPRITE_TANK_2 = 2
.label SPRITE_BULLET_TANK_2 = 3

.label DEAD_ANIMATION_SPEED = 10