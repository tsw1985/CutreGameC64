#import "/system/config.asm"
#import "/system/memory_map.asm"
#import "/includes/constants.asm"

BasicUpstart2(main)

*=MAIN_CODE_ADDRESS "Main Code"
#import "/includes/main_code.asm"


*=TILESET_ADDRESS "Tileset"
//.import binary "/tileset/tileset.bin"
.import binary "/tileset/cutregametileset.bin"


*=CHARSET_ATTRIB_ADDRESS "Charset Attrib"
//.import binary "/charset/cutregametilesetattr.bin"
.import binary "/charset/charsetAttrib.bin"


*=VARIABLES_ADDRESS "Variables"
#import "/includes/variables.asm"


*=SPRITES_ADDRESS "Sprites"
.import binary "/sprites/tank_sprite_set.bin"


*=CHARSET_ADDRESS "Charset"
.import binary "/charset/cutregamecharset.bin"
//.import binary "/charset/charsetcutregame.bin"


*=TABLES_ADDRESS "Tables"
#import "/includes/tables.asm"

*=LIBRARIES_ADDRESS "Libraries"
#import "/includes/libraries.asm"


*=MAP_ADDRESS "Maps"
.import binary "/maps/backgroundmap.bin"


//*=MAPS_COLOR_ADDRESS "Maps Colors"
//.import binary "/maps/colormap.bin"

