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


    /* Print Player Scores */
    locate_text(1,34,YELLOW)
    print_text(player_1_str)

    
    /* End Print Player Scores */


    lda SCORE_PLAYER_1
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3

    //calculate sum
    print_calculation_result(2,34,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)

    locate_text(5,34,YELLOW)
    print_text(player_2_str)

    lda SCORE_PLAYER_2
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3

    //calculate sum
    print_calculation_result(6,34,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


    // Credits

    locate_text(17,33,BLUE)
    print_text(credits_str)

    locate_text(19,33,WHITE)
    print_text(author_str)

    locate_text(21,33,WHITE)
    print_text(help_str)

    locate_text(24,35,YELLOW)
    print_text(year_str)











    #import "/game/cutre_game.asm"


    // uncommet in develop time
    //wait_until_press_any_key()


    // NOT REMOVEEE !!!
    //restore setup
    //jsr SYSTEM.restore_system
    //jsr PRINT_LIB.clean_screen

    //rts // exit to basic