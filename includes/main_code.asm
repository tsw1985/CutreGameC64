// This is the entry point file . Execute kick assambler on main.asm
system_status: .byte 0
main:

    //Important init stack !!
    //if you want see your current screen on exit program 
    //or go to basic, comment it
    ldx #$ff
	txs       // Initialize system stack

    //start setup
    jsr SYSTEM.setup

init_code:

    //set GAME OVER to 0
    lda #0
    sta GAME_OVER

    //Your code here ...
    jsr PRINT_LIB.clean_screen

    #import "/game/cutre_game.asm"


    // uncommet in develop time
    //wait_until_press_any_key()


    // NOT REMOVEEE !!!
    //restore setup
    //jsr SYSTEM.restore_system
    //jsr PRINT_LIB.clean_screen

    //rts // exit to basic