/******************************************************************************

    Sprites collision version RASTER.
    
  ===> NEW: This version , change de animation when the sprite is in collision


    This means , the collision checking is doing into the RASTER INTERRUPT
    and in main loop we are doing other stuffs.

    NOTE: 
  -----------------------------------------------------------------------------
  |  The sprite movement is SLOW because we are using the print functions     |
  |  for printing the Y-X coords of player and enemies in collision time.     |
  |                                                                           |
  |  If you remove this, the sprite will fly. Anyway you can play with the    |
  |   "sleep_sprite" function .                                               |
  |                                                                           |
  -----------------------------------------------------------------------------

 */


/* Init position Player 1 to TOP */
lda #0
sta PLAYER_1_TANK_POSITION



/* Load map #0 */
print_map(0)


/* Global */
sprite_set_extra_colors(LIGHT_GREEN,GREEN)

/* Enable sprites */
sprite_enable_sprite(0) // Player 1 down
//sprite_enable_sprite(1) // Bullet Player 1


sprite_enable_sprite(2) // Player 2 Up
sprite_enable_sprite(3) // Bullet Player 2


/* Setup for sprite 1 PLAYER */
sprite_load_like_multicolor(0)
sprite_set_position(0,213,140)
sprite_set_color(0,GREEN)
sprite_set_frame_to_sprite(0,0) // $00c0 ... $00c1 ... $00c2 ...
/* Setup for sprite 1 */

/* Setup for sprite 2 Bullet Player 1 */
/*sprite_load_like_multicolor(1)
sprite_set_position(1,105,68)
sprite_set_color(1,YELLOW)
sprite_set_frame_to_sprite(24,1)*/
/* Setup for sprite 2 */


/* Setup for sprite 3 PLAYER 2 */
sprite_load_like_multicolor(2)
sprite_set_position(2,75,140)
sprite_set_color(2,BLUE)
sprite_set_frame_to_sprite(37,2)
/* Setup for sprite 3 */


/* Setup for sprite 4 ENEMY */
//sprite_load_like_multicolor(3)
//sprite_set_position(3,108,154)
//sprite_set_color(3,GREEN)
//sprite_set_frame_to_sprite(0,3)
/* Setup for sprite 4 */




/*  RASTER INTERRUPT */
jsr SPRITE_LIB.setupRasterInterrupt


/* MAIN LOOP.

    This is like a game loop

 */ 


simulate_game_loop:

        
    /* INIT SPRITE 0 animations.   
        This is the sprite_0 - animation 0. This is launched in the 
        raster interrupt
    */
    
    
    ldx #0

    lda sprite_animations_list_LO_table,x
    sta sprite_current_anim_LO_table,x

    lda sprite_animations_list_HI_table,x
    sta sprite_current_anim_HI_table,x
    

    jsr start_read_joystick


    /*****************************
        PRINT PLAYER COORDS
    ******************************/

    /*   Y   */
    
    lda SPRITE_CENTER_PLAYER_POS_Y
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(3,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
    
    
    /*  X */
    
    lda SPRITE_CENTER_PLAYER_POS_X
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(4,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
    


    /************************************************
        PRINT ENEMY COORDS VALUES IN COLLISION
    **************************************************/

        // Print position PLAYER 1
        lda PLAYER_1_TANK_POSITION
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(7,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)



    /* Print with sprite is in collision */

        /*
        lda SPRITE_IN_COLLISION
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(8,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
        */



jmp simulate_game_loop



/* Function to read the joystick port */
start_read_joystick:

    push_regs_to_stack()

    /* clean screen */
    jsr sleep_sprite

    /* read joystick positions */
    jsr JOYSTICK_LIB.read_joystick

    /* actions in each joystick position */

    lda JOYSTICK_POSITIONS
    and #JOY_GO_LEFT 
    beq check_joy_right 
    jsr joy_left

    check_joy_right:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_RIGHT
        beq check_joy_up
        jsr joy_right

    check_joy_up:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_UP
        beq check_joy_down
        jsr joy_up

    check_joy_down:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_DOWN
        beq check_joy_fire
        jsr joy_down

    check_joy_fire:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_FIRE
        beq end_read_joystick
        jsr joy_fire

    end_read_joystick:

pull_regs_from_stack()
rts


/*
/////////////////////////////////////////////
                Functions 
/////////////////////////////////////////////
*/
joy_up:

    lda #PLAYER_1_UP
    sta PLAYER_1_TANK_POSITION

    jsr SPRITE_LIB.sprite_0_decrement_y
    rts
    
joy_down:

    lda #PLAYER_1_DOWN
    sta PLAYER_1_TANK_POSITION

    jsr SPRITE_LIB.sprite_0_increment_y
    rts
    
joy_left:

    lda #PLAYER_1_LEFT
    sta PLAYER_1_TANK_POSITION

    jsr SPRITE_LIB.sprite_0_decrement_x
    rts
    
joy_right:

    lda #PLAYER_1_RIGHT
    sta PLAYER_1_TANK_POSITION

    jsr SPRITE_LIB.sprite_0_increment_x
    rts

joy_fire:

    push_regs_to_stack()

    sprite_load_like_multicolor(1)

    // Get Y and X from Player 1
    ldx #0
    lda sprites_coord_table_y,x // get Y player position
    ldx #1
    sta sprites_coord_table_y,x

    // Set Y to bullet player 1
    sta $d003 // save Y
    sec
    sbc #10  // substract 10 px to put the buller front the tank
    sta $d003 // mover el sprite bala en la misma Y del sprite player , 
              // para eso quitamos un poco para subirlo

    ldx #0
    lda sprites_coord_table_x,x // get X player position
    ldx #1
    sta sprites_coord_table_x,x
    sta $d002 // save Y

    sprite_enable_sprite(1)
    sprite_set_color(1,YELLOW)
    sprite_set_frame_to_sprite(74,1) // bullet frame

    pull_regs_from_stack()
    rts

sleep_sprite:

    push_regs_to_stack()

    ldx #25 //25
    sleep_sprite_outer_loop:
        ldy #25 //25
    sleep_sprite_inner_loop:
        nop
        dey
        bne sleep_sprite_inner_loop
        dex
        bne sleep_sprite_outer_loop
        
    pull_regs_from_stack()

rts    

