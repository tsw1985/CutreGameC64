.label debug_mode = 1; // 1 ON - 0 OFF

/* Init position Player 1 to TOP */
lda #PLAYER_UP
sta PLAYER_1_TANK_CURRENT_DIRECTION

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

    .if(debug_mode == 1){
    
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
    lda PLAYER_1_TANK_CURRENT_DIRECTION
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
}

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

    lda #PLAYER_UP
    sta PLAYER_1_TANK_NEW_DIRECTION
    jsr SPRITE_LIB.sprite_0_decrement_y
    rts

joy_right:

    // Ponemos nueva direccion a donde va a apuntar el tanke
    lda #PLAYER_RIGHT
    sta PLAYER_1_TANK_CURRENT_DIRECTION

    // Tanke EN ROTACION
    lda #1
    sta PLAYER_1_TANK_IS_ROTATING       
    
    // Rotamos el tanque lanzando la animacion
    jsr SPRITE_LIB.sprite_set_animation_rotate_tank_up_right    
        



rts
    
joy_down:

    lda #PLAYER_DOWN
    sta PLAYER_1_TANK_CURRENT_DIRECTION

    //jsr SPRITE_LIB.sprite_0_increment_y
    rts
    
joy_left:

    lda #PLAYER_LEFT
    sta PLAYER_1_TANK_CURRENT_DIRECTION
    //jsr SPRITE_LIB.sprite_0_decrement_x
    rts
    


joy_fire:

    push_regs_to_stack()

    sprite_load_like_multicolor(1)

    // Get Y and X from Player 1
    ldx #0 // <-- Sprite 0 . Is player
    lda sprites_coord_table_y,x // get Y player position to put this value
                                // in the Y of sprite 2 ( bullet)
    
    ldx #1 // <-- Sprite 1 . Player 1 bullet
    sta sprites_coord_table_y,x // Save the position Y of Player in Y of bullet


    ldx #0  // <--- Sprite 0 ( player )
    lda sprites_coord_table_x,x // get X player position to save it in sprite 2

    ldx #1  // <---- Sprite 1 ( bullet )
    sta sprites_coord_table_x,x // Save the Player X in X of sprite 2 ( bullet )
    sta $d002                   // writing the value directly in the Sprite 2 X
                                // position memory


    /* Move the bullet */
    ldx #1 // Load the current Y of sprite 2 ( bullet ). 
           // Was saved it a few lines ago
    lda sprites_coord_table_y,x

    // Set Y to bullet player 1
    sta $d003 // save Y
    sec
    sbc #10   // substract 10 px to put the buller front the tank
    sta $d003 // mover el sprite bala en la misma Y del sprite player , 
              // para eso quitamos un poco para subirlo
    
    sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)             
    /* End Move the bullet */

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

