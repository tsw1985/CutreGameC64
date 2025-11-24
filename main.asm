#import "/system/config.asm"
#import "/system/memory_map.asm"
#import "/includes/constants.asm"

BasicUpstart2(main)

*=MAIN_CODE_ADDRESS "Main Code"
#import "/includes/main_code.asm"

*=TILESET_ADDRESS "Tileset"
.import binary "/tileset/tilesethierba.bin"

*=CHARSET_ATTRIB_ADDRESS "Charset Attrib"
.import binary "/charset/charsethierbaattributes.bin"

*=VARIABLES_ADDRESS "Variables"
#import "/includes/variables.asm"

*=SPRITES_ADDRESS "Sprites"

.if(debug_mode == 1){
    .import binary "/sprites/tank_sprite_set_debug.bin"
}else{
    .import binary "/sprites/tank_sprite_set_final.bin"
}

*=CHARSET_ADDRESS "Charset"
.import binary "/charset/charsethierba.bin"

*=TABLES_ADDRESS "Tables"
#import "/includes/tables.asm"

*=LIBRARIES_ADDRESS "Libraries"
#import "/includes/libraries.asm"

*=MAP_ADDRESS "Maps"
.if(debug_mode == 1){
    .import binary "/maps/backgroundmap.bin"
}else{
    .import binary "/maps/maphierba.bin"
}


