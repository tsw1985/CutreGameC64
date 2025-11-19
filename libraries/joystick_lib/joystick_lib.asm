/*
    JOYSTICK_POSITIONS_PORT_1 : This is the global variable where is set the bits to
                         know with joystick position is used.
*/
JOYSTICK_LIB:
{
    read_joystick_port_1:

    push_regs_to_stack()    

    /* reset to 0 current positions in joystick */
    lda #0
    sta JOYSTICK_POSITIONS_PORT_1
    // Reset to 0 tank is dead
    //sta TANK_1_DEAD

    input_left_check:
        lda #JOY_GO_LEFT        // mask left movement
        bit JOYSTICK_PORT_1             // bitwise "and" with joystick port 1
        bne input_right_check // if not active (==1),go to input_right_check
        lda JOYSTICK_POSITIONS_PORT_1
        ora #JOY_GO_LEFT
        sta JOYSTICK_POSITIONS_PORT_1
    
    input_right_check:
        lda #JOY_GO_RIGHT        // mask left movement (8 == bit 4 == )
        bit JOYSTICK_PORT_1             // bitwise "and" with joystick port 1
        bne input_up_check    // if not active (==1), go to .input_up_check
        lda JOYSTICK_POSITIONS_PORT_1
        ora #JOY_GO_RIGHT
        sta JOYSTICK_POSITIONS_PORT_1
    
    input_up_check:
        lda #JOY_GO_UP         // mask left movement (1 == bit 1 == )
        bit JOYSTICK_PORT_1              // bitwise "and" with joystick port 1
        bne input_down_check   // if not active (==1),goto input_down_check
        lda JOYSTICK_POSITIONS_PORT_1
        ora #JOY_GO_UP
        sta JOYSTICK_POSITIONS_PORT_1
    
    input_down_check:
        lda #JOY_GO_DOWN         // mask left movement (2 == bit 2 == )
        bit JOYSTICK_PORT_1              // bitwise "and" with joystick port 1
        bne input_fire_check   // if not active (==1), go to fire_check
        lda JOYSTICK_POSITIONS_PORT_1
        ora #JOY_GO_DOWN
        sta JOYSTICK_POSITIONS_PORT_1
    
    input_fire_check:
        lda #JOY_GO_FIRE         // mask left movement (16 == bit 5 == )
        bit JOYSTICK_PORT_1              // bitwise "and" with joystick port 1
        bne finish_read_stick  // if not active (==1),go to finish checking
        lda JOYSTICK_POSITIONS_PORT_1
        ora #JOY_GO_FIRE
        sta JOYSTICK_POSITIONS_PORT_1

    finish_read_stick:
        
    pull_regs_from_stack()

rts



read_joystick_port_2:

    push_regs_to_stack()    

    /* reset to 0 current positions in joystick */
    lda #0
    sta JOYSTICK_POSITIONS_PORT_2

    


    input_left_check_2:
        lda #JOY_GO_LEFT        // mask left movement
        bit JOYSTICK_PORT_2             // bitwise "and" with joystick port 1
        bne input_right_check_2 // if not active (==1),go to input_right_check
        lda JOYSTICK_POSITIONS_PORT_2
        ora #JOY_GO_LEFT
        sta JOYSTICK_POSITIONS_PORT_2
    
    input_right_check_2:
        lda #JOY_GO_RIGHT        // mask left movement (8 == bit 4 == )
        bit JOYSTICK_PORT_2             // bitwise "and" with joystick port 1
        bne input_up_check_2    // if not active (==1), go to .input_up_check
        lda JOYSTICK_POSITIONS_PORT_2
        ora #JOY_GO_RIGHT
        sta JOYSTICK_POSITIONS_PORT_2
    
    input_up_check_2:
        lda #JOY_GO_UP         // mask left movement (1 == bit 1 == )
        bit JOYSTICK_PORT_2              // bitwise "and" with joystick port 1
        bne input_down_check_2   // if not active (==1),goto input_down_check
        lda JOYSTICK_POSITIONS_PORT_2
        ora #JOY_GO_UP
        sta JOYSTICK_POSITIONS_PORT_2
    
    input_down_check_2:
        lda #JOY_GO_DOWN         // mask left movement (2 == bit 2 == )
        bit JOYSTICK_PORT_2              // bitwise "and" with joystick port 1
        bne input_fire_check_2   // if not active (==1), go to fire_check
        lda JOYSTICK_POSITIONS_PORT_2
        ora #JOY_GO_DOWN
        sta JOYSTICK_POSITIONS_PORT_2
    
    input_fire_check_2:
        lda #JOY_GO_FIRE         // mask left movement (16 == bit 5 == )
        bit JOYSTICK_PORT_2              // bitwise "and" with joystick port 1
        bne finish_read_stick_2  // if not active (==1),go to finish checking
        lda JOYSTICK_POSITIONS_PORT_2
        ora #JOY_GO_FIRE
        sta JOYSTICK_POSITIONS_PORT_2

    finish_read_stick_2:
        
    pull_regs_from_stack()

rts




/*
/////////////////////////////////////////////
                Functions 
/////////////////////////////////////////////
*/
joy_1_up:

    push_regs_to_stack()

    // Reset to 0 tank is dead
    lda #0
    sta TANK_1_DEAD

    jsr SPRITE_LIB.sprite_reset_default_tank_1_speed


    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    cmp #211
    bcs set_tank_1_to_limit_up
    jmp check_cannon_tip_tank_1_up
     
    set_tank_1_to_limit_up:
        ldx #SPRITE_TANK_1
        lda #211
        sta sprites_coord_table_y,x
        sta $d001 // set limit in Sprit 1 X

    
    check_cannon_tip_tank_1_up:
 
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


    /* Check if exists collision with tank 2 */
    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_up
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_up_tank_1  
    jmp normal_check_tank_1_up

    is_collision_up_tank_1:


        // TODO : Check if we Y is in the LIMIT of game
        // if NOT , do not increment Y - X

        lda #1
        sta PLAYER_1_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_0_increment_y
        jsr SPRITE_LIB.sprite_0_increment_y
        jsr SPRITE_LIB.sprite_0_increment_y
        jsr SPRITE_LIB.sprite_0_increment_y
        jsr SPRITE_LIB.sprite_0_increment_y
        jmp no_move_up
    normal_check_tank_1_up:
    /* End Check if exists collision with tank 2 */



    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_decrement_y


    no_move_up:
        lda PLAYER_1_TANK_IS_FIRING
        cmp #1
        beq no_fire_up

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_1_up

        // set new tank direction
        lda #PLAYER_UP
        sta PLAYER_1_TANK_FIRED_IN_UP
    
    no_fire_up:

    pull_regs_from_stack()
rts


joy_1_left:

    push_regs_to_stack()

    lda #0
    sta TANK_1_DEAD

    jsr SPRITE_LIB.sprite_reset_default_tank_1_speed

   
    /* Check CANNON TIP */
    lda #40
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #26 // 24
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


     /* Check if exists collision with tank 2 */
    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_left
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_left_tank_1
    jmp normal_check_tank_1_left

    is_collision_left_tank_1:

        lda #1
        sta PLAYER_1_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_0_increment_x
        jsr SPRITE_LIB.sprite_0_increment_x
        jsr SPRITE_LIB.sprite_0_increment_x
        jsr SPRITE_LIB.sprite_0_increment_x
        jsr SPRITE_LIB.sprite_0_increment_x
        jmp no_move_left
    normal_check_tank_1_left:
    /* End Check if exists collision with tank 2 */



    

    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_decrement_x


    no_move_left:
        lda PLAYER_1_TANK_IS_FIRING
        cmp #1
        beq no_fire_left

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_1_left

        // set new tank direction
        lda #PLAYER_LEFT
        sta PLAYER_1_TANK_FIRED_IN_LEFT

    no_fire_left:
    pull_regs_from_stack()
rts


joy_1_right:

    push_regs_to_stack()

    lda #0
    sta TANK_1_DEAD

    jsr SPRITE_LIB.sprite_reset_default_tank_1_speed


    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    cmp #50
    bcc set_tank_1_to_limit_left
    jmp check_cannon_tip_tank_1_right

     
    set_tank_1_to_limit_left:
        ldx #SPRITE_TANK_1
        lda #50
        sta sprites_coord_table_x,x
        sta $d000 // set limit in Sprit 1 X

    
    check_cannon_tip_tank_1_right:

    /* Check CANNON TIP */
    lda #40
    sta PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lda #-4
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
    beq no_move_right_aux //no_move_right
    jmp continue_with_left_chain_tank_1
    no_move_right_aux:
    jmp no_move_right

    /* End Check CANNON TIP */

    continue_with_left_chain_tank_1:

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


    /* Check if exists collision with tank 2 */
    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_right
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_right_tank_1


    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_back_in_right
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_right_tank_1




    jmp normal_check_tank_1_right

    is_collision_right_tank_1:

        lda #1
        sta PLAYER_1_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_0_decrement_x
        jsr SPRITE_LIB.sprite_0_decrement_x
        jsr SPRITE_LIB.sprite_0_decrement_x
        jsr SPRITE_LIB.sprite_0_decrement_x
        jsr SPRITE_LIB.sprite_0_decrement_x


        jmp no_move_right
    normal_check_tank_1_right:
    /* End Check if exists collision with tank 2 */



    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_increment_x


    no_move_right:
        lda PLAYER_1_TANK_IS_FIRING
        cmp #1
        beq no_fire_right

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_1_right

        // set new tank direction
        lda #PLAYER_RIGHT
        sta PLAYER_1_TANK_FIRED_IN_RIGHT

    no_fire_right:
    pull_regs_from_stack()
rts



joy_1_down:

    push_regs_to_stack()

    lda #0
    sta TANK_1_DEAD

    jsr SPRITE_LIB.sprite_reset_default_tank_1_speed
    

    
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


    /* Check if exists collision with tank 2 */
    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_down
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_down_tank_1


    /*jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_back_in_right
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_down_tank_1*/





    
    jmp normal_check_tank_1_down

    is_collision_down_tank_1:

        lda #1
        sta PLAYER_1_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_0_decrement_y
        jsr SPRITE_LIB.sprite_0_decrement_y
        jsr SPRITE_LIB.sprite_0_decrement_y
        jsr SPRITE_LIB.sprite_0_decrement_y
        jsr SPRITE_LIB.sprite_0_decrement_y

        jmp no_move_down
    normal_check_tank_1_down:
    
    /* End Check if exists collision with tank 2 */


    


    lda #1
    sta PLAYER_1_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_0_increment_y


    no_move_down:
        lda PLAYER_1_TANK_IS_FIRING
        cmp #1
        beq no_fire_down

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_1_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_1_down

        // set new tank direction
        lda #PLAYER_DOWN
        sta PLAYER_1_TANK_FIRED_IN_DOWN

    no_fire_down:

    pull_regs_from_stack()
rts


joy_1_fire:

    push_regs_to_stack()

    // If tank is dead , is not allowed fire
    lda TANK_1_DEAD
    cmp #1
    beq skip_fire

    lda #0
    sta TANK_1_DEAD
    jsr SPRITE_LIB.sprite_reset_default_tank_1_speed
    

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