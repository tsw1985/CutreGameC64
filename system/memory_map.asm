.label SCREEN_BACKGROUND_COLOR = $d021
.label SCREEN_BORDER_COLOR     = $d020
.label SCREEN_RAM              = $0400
.label SCREEN_COLOR_RAM        = $d800

/* CODE GAME MAPPING */
.label MAIN_CODE_ADDRESS       = $0810 // 2032 bytes for main loop code game
.label CHARSET_ATTRIB_ADDRESS  = $1000  
.label TILESET_ADDRESS		   = $1100  
.label VARIABLES_ADDRESS       = $1200  
.label SPRITES_ADDRESS		   = $2000 // 96 sprites free from $2000 to $3800 


.label CHARSET_ADDRESS		   = $3800  
.label TABLES_ADDRESS		   = $4000
.label LIBRARIES_ADDRESS	   = $4800   //$5000
.label MAP_ADDRESS			   = $9C7C