

/* Init position Player 1 to TOP */
lda #PLAYER_UP
sta PLAYER_1_TANK_CURRENT_DIRECTION
sta PLAYER_1_TANK_FIRED_IN_UP // set cannon to fire up
jsr SPRITE_LIB.sprite_set_animation_rotate_tank_1_up // draw tank in up position



/* Init position Player 2 to TOP */
lda #PLAYER_DOWN
sta PLAYER_2_TANK_CURRENT_DIRECTION
sta PLAYER_2_TANK_FIRED_IN_DOWN // Set cannon to fire down
jsr SPRITE_LIB.sprite_set_animation_rotate_tank_2_down // draw tank in down position

/* Load map #0 */
print_map(0)

/* Global */
sprite_set_extra_colors(LIGHT_GREEN,GREEN)

/* Enable sprites */
sprite_enable_sprite(0) // Player 1 down
sprite_enable_sprite(2) // Player 2 Up

/* Setup for sprite PLAYER 1 */
sprite_load_like_multicolor(0)
sprite_set_position(0,213,140)
sprite_set_color(0,GREEN)
sprite_set_frame_to_sprite(0,0) // $00c0 ... $00c1 ... $00c2 ...

/* Setup for sprite PLAYER 2 */
sprite_load_like_multicolor(2)
sprite_set_position(2,75,140)
sprite_set_color(2,BLUE)
sprite_set_frame_to_sprite(37,2)

/*  RASTER INTERRUPT */
jsr SPRITE_LIB.setupRasterInterrupt



/* MAIN LOOP. This is like a game loop */ 
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

    /* Read Joysick 1 - GREEN TANK */
    jsr start_read_joystick_1

    /* Read Joysick 2 - GREEN + BLUE TANK */
    jsr start_read_joystick_2

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
    //lsr
    //lsr
    //lsr
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(3,37,YELLOW,sum_res_0,sum_res_1,sum_res_2,sum_res_3)

    /*  X */
    lda SPRITE_CENTER_PLAYER_POS_X
    //lsr
    //lsr
    //lsr
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
        /*
        // Get screen char value
        lda PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(8,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
        */



        /*
        //print x
        //lda PLAYER_1_TANK_1_CANNON_TIP_X // Punta del canon 
        lda PLAYER_1_TANK_1_LEFT_CHAIN_X   // Cadena X izquierda 
        //lda PLAYER_1_TANK_1_RIGHT_CHAIN_X   // Cadena X derecha 

        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(11,37,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


        //print y IN TEXT MODE COORDS
        //lda PLAYER_1_TANK_1_CANNON_TIP_Y // Punta del canon 
        lda PLAYER_1_TANK_1_LEFT_CHAIN_Y  // Cadena Y izquierda
        //lda PLAYER_1_TANK_1_RIGHT_CHAIN_Y   // Cadena Y derecha

        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(10,37,YELLOW,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
    */

        /* PRINT Y - X Bullet tank 1 */

        /*
        ldx #1 // sprite bullet tank 1
        lda sprites_coord_table_y,x

        // Get screen char value
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(8,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
        */


        //print x
        ldx #1 // sprite bullet tank 1
        lda sprites_coord_table_y,x
        
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(20,37,RED,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


        //print y IN TEXT MODE COORDS
        
        ldx #1 // sprite bullet tank 1
        lda sprites_coord_table_x,x
        
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(21,37,YELLOW,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
        


        // show char front bullet tank 1

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_1

        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(22,37,GREEN,sum_res_0,sum_res_1,sum_res_2,sum_res_3)
        
}



// if not GAME OVER , continue game , if not, reset it.

// end game to reset
    lda GAME_OVER
    cmp #1
    beq reset_game
    jmp continue_loop_game

    reset_game:

        //add delay to jump again to main code
        ldx #255
        outer_loop_reset_game:
            ldy #255
        inner_loop_reset_game:
            nop
            dey
            bne inner_loop_reset_game
            dex
            bne outer_loop_reset_game

        // when delay is done , reset the game
        jmp init_code

    continue_loop_game:


jmp simulate_game_loop


/* PLAYER 2 Using keyboard - Move tank 2*/
start_read_keyboard:
push_regs_to_stack()

    jsr INPUT_LIB.clear_key_pressed_table
    jsr INPUT_LIB.scan_only_pressed_keys //Value returned under PRESSED_KEY_TABLE


    ldx #KEY_Q
    lda PRESSED_KEY_TABLE,x
    beq check_down_key
    jsr KEYBOARD_LIB.keyboard_up
    jmp check_fire_key


    check_down_key:
        ldx #KEY_W
        lda PRESSED_KEY_TABLE,x
        beq check_left_key
        jsr KEYBOARD_LIB.keyboard_down
        jmp check_fire_key

    check_left_key:
        ldx #KEY_A
        lda PRESSED_KEY_TABLE,x
        beq check_right_key
        jsr KEYBOARD_LIB.keyboard_left
        jmp check_fire_key

    check_right_key:
        ldx #KEY_S  
        lda PRESSED_KEY_TABLE,x
        beq check_fire_key
        jsr KEYBOARD_LIB.keyboard_right
        jmp check_fire_key

    check_fire_key:
        ldx #KEY_D
        lda PRESSED_KEY_TABLE,x
        beq end_read_key
        jsr KEYBOARD_LIB.keyboard_fire
           
    
    end_read_key:
    

pull_regs_from_stack()
rts



/* Function to read the joystick port */
start_read_joystick_1:

    push_regs_to_stack()

    /* lag move sprite in screen */
    //jsr sleep_sprite

    /* read joystick positions */
    jsr JOYSTICK_LIB.read_joystick_port_1

    /* actions in each joystick position */

    lda JOYSTICK_POSITIONS_PORT_1
    and #JOY_GO_LEFT 
    beq check_joy_1_right 
    jsr JOYSTICK_LIB.joy_1_left
    jmp check_joy_1_fire

    check_joy_1_right:
        lda JOYSTICK_POSITIONS_PORT_1
        and #JOY_GO_RIGHT
        beq check_joy_1_up
        jsr JOYSTICK_LIB.joy_1_right
        jmp check_joy_1_fire

    check_joy_1_up:
        lda JOYSTICK_POSITIONS_PORT_1
        and #JOY_GO_UP
        beq check_joy_1_down
        jsr JOYSTICK_LIB.joy_1_up
        jmp check_joy_1_fire

    check_joy_1_down:
        lda JOYSTICK_POSITIONS_PORT_1
        and #JOY_GO_DOWN
        beq check_joy_1_fire
        jsr JOYSTICK_LIB.joy_1_down
        jmp check_joy_1_fire

    check_joy_1_fire:
        lda JOYSTICK_POSITIONS_PORT_1
        and #JOY_GO_FIRE
        beq end_read_joystick
        jsr JOYSTICK_LIB.joy_1_fire


    end_read_joystick:

pull_regs_from_stack()
rts





start_read_joystick_2:

    push_regs_to_stack()

    /* read joystick positions */
    jsr JOYSTICK_LIB.read_joystick_port_2

    /* actions in each joystick position */
    lda JOYSTICK_POSITIONS_PORT_2
    and #JOY_GO_LEFT 
    beq check_joy_2_right 
    jsr KEYBOARD_LIB.keyboard_left
    jmp check_joy_2_fire

    check_joy_2_right:
        lda JOYSTICK_POSITIONS_PORT_2
        and #JOY_GO_RIGHT
        beq check_joy_2_up
        jsr KEYBOARD_LIB.keyboard_right
        jmp check_joy_2_fire

    check_joy_2_up:
        lda JOYSTICK_POSITIONS_PORT_2
        and #JOY_GO_UP
        beq check_joy_2_down
        jsr KEYBOARD_LIB.keyboard_up
        jmp check_joy_2_fire

    check_joy_2_down:
        lda JOYSTICK_POSITIONS_PORT_2
        and #JOY_GO_DOWN
        beq check_joy_2_fire
        jsr KEYBOARD_LIB.keyboard_down
        jmp check_joy_2_fire

    check_joy_2_fire:
        lda JOYSTICK_POSITIONS_PORT_2
        and #JOY_GO_FIRE
        beq end_read_joystick_2
        jsr KEYBOARD_LIB.keyboard_fire

    end_read_joystick_2:

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

