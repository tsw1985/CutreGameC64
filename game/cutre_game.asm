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

    /* Move bullets tanks */ 
    //jsr SPRITE_LIB.sprite_move_bullets_tank_1


    /* lag move sprite in screen */
    jsr sleep_sprite

    /*****************************
        PRINT PLAYER COORDS
    ******************************/

    /*   Y   */

.if(debug_mode == 1){

    // print demo A
    lda #1
    sta SCREEN_ROW_POS   // ( X position)
    lda #1
    sta SCREEN_COL_POS  // ( Y position)
    lda #1
    sta SCREEN_CHAR // write a A text example
    lda #YELLOW
    sta SCREEN_CHAR_COLOR
    jsr PRINT_LIB.print_char



    // print demo B
    lda #1
    sta SCREEN_COL_POS  // ( Y position)
    lda #22
    sta SCREEN_ROW_POS   // ( X position)
    lda #2
    sta SCREEN_CHAR // write a A text example
    lda #GREEN
    sta SCREEN_CHAR_COLOR
    jsr PRINT_LIB.print_char


    // print demo C
    lda #15
    sta SCREEN_COL_POS  // ( Y position)

    lda #12
    sta SCREEN_ROW_POS   // ( X position)
    lda #3
    sta SCREEN_CHAR // write a A text example
    lda #BROWN
    sta SCREEN_CHAR_COLOR
    jsr PRINT_LIB.print_char



    //---------
    
    lda SPRITE_CENTER_PLAYER_POS_Y
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(3,37,YELLOW,sum_res_0,sum_res_1,sum_res_2,sum_res_3)

    /*  X */
    lda SPRITE_CENTER_PLAYER_POS_X
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(4,37,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
    
    /************************************************
        PRINT ENEMY COORDS VALUES IN COLLISION
    **************************************************/

        /* Print with sprite is in collision */
        // Get screen char value
        lda PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(8,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)



        
        //print x
        //lda PLAYER_1_TANK_1_CANNON_TIP_X /* Punta del canon */
        lda PLAYER_1_TANK_1_LEFT_CHAIN_X  /* Cadena X izquierda */
        //lda PLAYER_1_TANK_1_RIGHT_CHAIN_X   /* Cadena X derecha */

        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(11,37,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


        //print y IN TEXT MODE COORDS
        //lda PLAYER_1_TANK_1_CANNON_TIP_Y /* Punta del canon */
        lda PLAYER_1_TANK_1_LEFT_CHAIN_Y  /* Cadena Y izquierda */
        //lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y   /* Cadena Y derecha */

        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(10,37,YELLOW,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


        
}

jmp simulate_game_loop



/* Function to read the joystick port */
start_read_joystick:

    push_regs_to_stack()

    /* lag move sprite in screen */
    //jsr sleep_sprite

    /* read joystick positions */
    jsr JOYSTICK_LIB.read_joystick

    /* actions in each joystick position */

    lda JOYSTICK_POSITIONS
    and #JOY_GO_LEFT 
    beq check_joy_right 
    jsr joy_left
    jmp check_joy_fire

    check_joy_right:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_RIGHT
        beq check_joy_up
        jsr joy_right
        jmp check_joy_fire

    check_joy_up:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_UP
        beq check_joy_down
        jsr joy_up
        jmp check_joy_fire

    check_joy_down:
        lda JOYSTICK_POSITIONS
        and #JOY_GO_DOWN
        beq check_joy_fire
        jsr joy_down
        jmp check_joy_fire

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

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING

    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq skip_joy_up

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // set new tank direction
    lda #PLAYER_UP
    sta PLAYER_1_TANK_FIRED_IN_UP


    /* Check CANNON TIP */
    lda #50
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #12
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_1_TANK_1_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_up
    
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #45
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
    lda #18
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_up
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #45
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #6
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_up
    /* End Check RIGHT chain */

    // ------------------ END CHECK COLLISIONS -----------------

    skip_joy_up:
        
        // move to left
        jsr SPRITE_LIB.sprite_0_decrement_y

    no_move_up:

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_up
rts


joy_left:


    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING

    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq skip_joy_left

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // set new tank direction
    lda #PLAYER_LEFT
    sta PLAYER_1_TANK_FIRED_IN_LEFT


    /* Check CANNON TIP */
    lda #40
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #24
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_1_TANK_1_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_left
    
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #34
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
    lda #18
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_left
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #45
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #18
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_left
    /* End Check RIGHT chain */
    

    // -------- END CHECK COLLISIONS
    

    // move to left
    skip_joy_left:

        jsr SPRITE_LIB.sprite_0_decrement_x

        
    no_move_left:

        // Rotamos el tanque lanzando la animacion
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_left

rts



joy_right:


    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING

    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq skip_joy_right

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // set new tank direction
    lda #PLAYER_RIGHT
    sta PLAYER_1_TANK_FIRED_IN_RIGHT


    /* Check CANNON TIP */
    lda #40
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #0
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_1_TANK_1_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_right
    
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #47
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
    lda #6
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_right
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #35
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #6
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_right
    /* End Check RIGHT chain */

    //-------- END CHECK COLLISION ---------


    skip_joy_right:

        // Move to right
        jsr SPRITE_LIB.sprite_0_increment_x

    no_move_right:


        // Rotamos el tanque lanzando la animacion
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_right
rts


    
joy_down:


    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING

    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq skip_joy_down

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // set new tank direction
    lda #PLAYER_DOWN
    sta PLAYER_1_TANK_FIRED_IN_DOWN



    /* Check CANNON TIP */
    lda #29
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #12
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_1_TANK_1_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_down
    
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #36
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
    lda #6
    sta PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_down
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #35
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #18
    sta PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_1

    // Get ROW and COL from last function
    lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_1_TANK_1_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_down
    /* End Check RIGHT chain */
    

    //---------- END CHECK COLLISION



    skip_joy_down:

        // Move to right
        jsr SPRITE_LIB.sprite_0_increment_y

        

    no_move_down:

        // Rotamos el tanque lanzando la animacion
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_down



rts



joy_fire:

    push_regs_to_stack()

    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq skip_fire


    sprite_load_like_multicolor(1)
    sprite_enable_sprite(1)
    sprite_set_color(1,YELLOW)
    sprite_set_frame_to_sprite(74,1) // bullet frame


    // Tank is firing
    lda #1
    sta PLAYER_1_TANK_IS_FIRING

    // Draw bullet
    jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_1

    skip_fire:

    pull_regs_from_stack()
    rts

sleep_sprite:

    push_regs_to_stack()

    .if(debug_mode == 0){    
        ldx #50
     }
    .if(debug_mode == 1){    
        ldx #40
    }

    sleep_sprite_outer_loop:
        .if(debug_mode == 0){    
            ldy #50
        }
        .if(debug_mode == 1){    
            ldy #40
        }
    sleep_sprite_inner_loop:
        nop
        dey
        bne sleep_sprite_inner_loop
        dex
        bne sleep_sprite_outer_loop
        
    pull_regs_from_stack()

rts    

