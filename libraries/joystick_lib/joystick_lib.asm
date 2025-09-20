/*
    JOYSTICK_POSITIONS : This is the global variable where is set the bits to
                         know with joystick position is used.
*/
JOYSTICK_LIB:
{
    read_joystick:

    push_regs_to_stack()    

    /* reset to 0 current positions in joystick */
    lda #0
    sta JOYSTICK_POSITIONS

    input_left_check:
        lda #%00000100        // mask left movement
        bit $DC00             // bitwise "and" with joystick port 1
        bne input_right_check // if not active (==1),go to input_right_check
        lda JOYSTICK_POSITIONS
        ora #%00000100
        sta JOYSTICK_POSITIONS
    
    input_right_check:
        lda #%00001000        // mask left movement (8 == bit 4 == )
        bit $DC00             // bitwise "and" with joystick port 1
        bne input_up_check    // if not active (==1), go to .input_up_check
        lda JOYSTICK_POSITIONS
        ora #%00001000
        sta JOYSTICK_POSITIONS
    
    input_up_check:
        lda #%00000001         // mask left movement (1 == bit 1 == )
        bit $DC00              // bitwise "and" with joystick port 1
        bne input_down_check   // if not active (==1),goto input_down_check
        lda JOYSTICK_POSITIONS
        ora #%00000001
        sta JOYSTICK_POSITIONS
    
    input_down_check:
        lda #%00000010         // mask left movement (2 == bit 2 == )
        bit $DC00              // bitwise "and" with joystick port 1
        bne input_fire_check   // if not active (==1), go to fire_check
        lda JOYSTICK_POSITIONS
        ora #%00000010
        sta JOYSTICK_POSITIONS
    
    input_fire_check:
        lda #%00010000         // mask left movement (16 == bit 5 == )
        bit $DC00              // bitwise "and" with joystick port 1
        bne finish_read_stick  // if not active (==1),go to finish checking
        lda JOYSTICK_POSITIONS
        ora #%00010000
        sta JOYSTICK_POSITIONS

    finish_read_stick:
        
    pull_regs_from_stack()

rts




/*
/////////////////////////////////////////////
                Functions 
/////////////////////////////////////////////
*/
joy_up:

    push_regs_to_stack()

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

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_decrement_y


    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq no_move_up

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // put animation
    jsr SPRITE_LIB.sprite_set_animation_rotate_tank_up

    // set new tank direction
    lda #PLAYER_UP
    sta PLAYER_1_TANK_FIRED_IN_UP

    no_move_up:

    pull_regs_from_stack()
rts


joy_left:
    push_regs_to_stack()

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

    // ------------------ END CHECK COLLISIONS -----------------

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_decrement_x


    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq no_move_left

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // put animation
    jsr SPRITE_LIB.sprite_set_animation_rotate_tank_left

    // set new tank direction
    lda #PLAYER_LEFT
    sta PLAYER_1_TANK_FIRED_IN_LEFT

    no_move_left:

    pull_regs_from_stack()
rts


joy_right:

    push_regs_to_stack()

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

    // ------------------ END CHECK COLLISIONS -----------------

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_increment_x


    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq no_move_right

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // put animation
    jsr SPRITE_LIB.sprite_set_animation_rotate_tank_right

    // set new tank direction
    lda #PLAYER_RIGHT
    sta PLAYER_1_TANK_FIRED_IN_RIGHT

    no_move_right:

    pull_regs_from_stack()
rts



joy_down:

    push_regs_to_stack()

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

    // ------------------ END CHECK COLLISIONS -----------------

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_increment_y


    lda PLAYER_1_TANK_IS_FIRING
    cmp #1
    beq no_move_down

    // Clean all flags fire directions. Where player fired.
    jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

    // put animation
    jsr SPRITE_LIB.sprite_set_animation_rotate_tank_down

    // set new tank direction
    lda #PLAYER_DOWN
    sta PLAYER_1_TANK_FIRED_IN_DOWN

    no_move_down:

    pull_regs_from_stack()
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


























}