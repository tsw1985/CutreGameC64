KEYBOARD_LIB:
{

keyboard_up:
    push_regs_to_stack()

    /* Check if exists collision with tank 1 */
    jsr SPRITE_LIB.check_if_tank_2_collides_with_tank_1_in_up
    lda #1
    cmp PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1
    beq is_collision_up_tank_2  
    jmp normal_check_tank_2_up

    is_collision_up_tank_2:
        lda #1
        sta PLAYER_2_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_2_increment_y
        jsr SPRITE_LIB.sprite_2_increment_y
        jsr SPRITE_LIB.sprite_2_increment_y
        jsr SPRITE_LIB.sprite_2_increment_y
        jmp no_move_up

    normal_check_tank_2_up:
    /* End Check if exists collision with tank 1 */



     /* Check CANNON TIP */
    lda #50
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
    lda #12
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_2_TANK_2_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_up
    
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #45
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
    lda #18
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_up
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #45
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #6
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_up
    /* End Check RIGHT chain */

    // ------------------ END CHECK COLLISIONS -----------------

    
    

    lda #1
    sta PLAYER_2_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_2_decrement_y


    no_move_up:
        lda PLAYER_2_TANK_IS_FIRING
        cmp #1
        beq no_fire_up

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_2_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_2_up

        // set new tank direction
        lda #PLAYER_UP
        sta PLAYER_2_TANK_FIRED_IN_UP
    
    no_fire_up:

    pull_regs_from_stack()
rts


keyboard_down:
    push_regs_to_stack()


    /* Check if exists collision with tank 1 */
    jsr SPRITE_LIB.check_if_tank_2_collides_with_tank_1_in_down
    lda #1
    cmp PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1
    beq is_collision_down_tank_2
    jmp normal_check_tank_2_down

    is_collision_down_tank_2:
        lda #1
        sta PLAYER_2_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_2_decrement_y
        jsr SPRITE_LIB.sprite_2_decrement_y
        jsr SPRITE_LIB.sprite_2_decrement_y
        jsr SPRITE_LIB.sprite_2_decrement_y
        jsr SPRITE_LIB.sprite_2_decrement_y
        jmp no_move_down
    normal_check_tank_2_down:
    
    /* End Check if exists collision with tank 1 */



    /* Check CANNON TIP */
    lda #29
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
    lda #12
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_2_TANK_2_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_down
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #36
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
    lda #6
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_down
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #35
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #18
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_down
    /* End Check RIGHT chain */

    // ------------------ END CHECK COLLISIONS -----------------

    



    lda #1
    sta PLAYER_2_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_2_increment_y


    no_move_down:
        lda PLAYER_2_TANK_IS_FIRING
        cmp #1
        beq no_fire_down

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_2_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_2_down

        // set new tank direction
        lda #PLAYER_DOWN
        sta PLAYER_2_TANK_FIRED_IN_DOWN

    no_fire_down:

    pull_regs_from_stack()
rts

keyboard_left:
    push_regs_to_stack()


    /* Check if exists collision with tank 2 */
    jsr SPRITE_LIB.check_if_tank_1_collides_with_tank_2_in_left
    lda #1
    cmp PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2
    beq is_collision_left_tank_1
    jmp normal_check_tank_1_left

    is_collision_left_tank_1:
        lda #1
        sta PLAYER_2_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_2_increment_x
        jsr SPRITE_LIB.sprite_2_increment_x
        jsr SPRITE_LIB.sprite_2_increment_x
        jsr SPRITE_LIB.sprite_2_increment_x
        jsr SPRITE_LIB.sprite_2_increment_x
        jmp no_move_left
    normal_check_tank_1_left:
    /* End Check if exists collision with tank 2 */



    /* Check CANNON TIP */
    lda #40
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
    lda #24
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_2_TANK_2_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_left
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #34
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
    lda #18
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_left
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #45
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #18
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_left
    /* End Check RIGHT chain */

    // ------------------ END CHECK COLLISIONS -----------------

    


    lda #1
    sta PLAYER_2_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_2_decrement_x


    no_move_left:
        lda PLAYER_2_TANK_IS_FIRING
        cmp #1
        beq no_fire_left

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_2_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_2_left

        // set new tank direction
        lda #PLAYER_LEFT
        sta PLAYER_2_TANK_FIRED_IN_LEFT

    no_fire_left:
    pull_regs_from_stack()
rts


keyboard_right:
    
    push_regs_to_stack()


    /* Check if exists collision with tank 1 */
    jsr SPRITE_LIB.check_if_tank_2_collides_with_tank_1_in_right
    lda #1
    cmp PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1
    beq is_collision_right_tank_2
    jmp normal_check_tank_2_right

    is_collision_right_tank_2:
        lda #1
        sta PLAYER_2_TANK_IS_IN_MOVING
        jsr SPRITE_LIB.sprite_2_decrement_x
        jsr SPRITE_LIB.sprite_2_decrement_x
        jsr SPRITE_LIB.sprite_2_decrement_x
        jsr SPRITE_LIB.sprite_2_decrement_x
        jsr SPRITE_LIB.sprite_2_decrement_x
        jmp no_move_right
    normal_check_tank_2_right:
    /* End Check if exists collision with tank 1 */




    /* Check CANNON TIP */
    lda #40 // 40
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
    lda #-1  //0
    sta PLAYER_2_TANK_OFFSET_CANNON_TIP_X
    jsr SPRITE_LIB.check_wall_cannon_tip_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_CANNON_TIP_Y
    sta SCREEN_ROW_POS
    lda PLAYER_2_TANK_2_CANNON_TIP_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON    
    cmp #BRIK
    beq no_move_right
    /* End Check CANNON TIP */

    /*  Check LEFT chain */
    lda #47
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
    lda #6
    sta PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X
    jsr SPRITE_LIB.check_wall_left_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_LEFT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_LEFT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_right
    /* End check LEFT Chain */

    /* Check RIGHT chain */
    lda #35
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
    lda #6
    sta PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X
    jsr SPRITE_LIB.check_wall_right_chain_collision_tank_2

    // Get ROW and COL from last function
    lda PLAYER_2_TANK_2_RIGHT_CHAIN_Y
    sta SCREEN_ROW_POS

    lda PLAYER_2_TANK_2_RIGHT_CHAIN_X
    sta SCREEN_COL_POS

    // MODE FUNCTION TO MAIN GAME: Get char of screen
    jsr PRINT_LIB.get_char_value_from_video_memory
    lda CURRENT_CHAR_IN_SCREEN
    sta PLAYER_2_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
    cmp #BRIK
    beq no_move_right
    /* End Check RIGHT chain */

    // ------------------ END CHECK COLLISIONS -----------------

    




    lda #1
    sta PLAYER_2_TANK_IS_IN_MOVING
    jsr SPRITE_LIB.sprite_2_increment_x


    no_move_right:
        lda PLAYER_2_TANK_IS_FIRING
        cmp #1
        beq no_fire_right

        // Clean all flags fire directions. Where player fired.
        jsr SPRITE_LIB.sprite_reset_player_2_fire_directions

        // put animation
        jsr SPRITE_LIB.sprite_set_animation_rotate_tank_2_right

        // set new tank direction
        lda #PLAYER_RIGHT
        sta PLAYER_2_TANK_FIRED_IN_RIGHT

    no_fire_right:

    pull_regs_from_stack()
rts



keyboard_fire:
    push_regs_to_stack()

    lda PLAYER_2_TANK_IS_FIRING
    cmp #1
    beq skip_fire


    sprite_load_like_multicolor(3)
    sprite_enable_sprite(3)
    sprite_set_color(3,YELLOW)
    sprite_set_frame_to_sprite(74,3) // bullet frame


    // Tank is firing
    lda #1
    sta PLAYER_2_TANK_IS_FIRING

    // Draw bullet
    jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_2

    skip_fire:   



pull_regs_from_stack()
rts



}