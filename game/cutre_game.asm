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


/* Load map #0 */
print_map(0)


/* Global */
sprite_set_extra_colors(LIGHT_GREEN,GREEN)

/* Enable sprites */
sprite_enable_sprite(0) // Player 1 down
//sprite_enable_sprite(1) // Bullet Player 1


sprite_enable_sprite(2) // Player 2 Up
sprite_enable_sprite(3) // Bullet Player 2
//sprite_enable_sprite(4)
//sprite_enable_sprite(5)
//sprite_enable_sprite(6)
//sprite_enable_sprite(7)


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
sprite_set_color(2,GREEN)
sprite_set_frame_to_sprite(12,2)
/* Setup for sprite 3 */


/* Setup for sprite 4 ENEMY */
//sprite_load_like_multicolor(3)
//sprite_set_position(3,108,154)
//sprite_set_color(3,GREEN)
//sprite_set_frame_to_sprite(0,3)
/* Setup for sprite 4 */


/* Setup for sprite 5 ENEMY */
//sprite_load_like_multicolor(4)
//sprite_set_position(4,170,62)
//sprite_set_color(4,ORANGE)
//sprite_set_frame_to_sprite(0,4)
/* Setup for sprite 5 */


/* Setup for sprite 6 ENEMY */
//sprite_load_like_multicolor(5)
//sprite_set_position(5,200,215)
//sprite_set_color(5,LIGHT_BLUE)
//sprite_set_frame_to_sprite(0,5)
/* Setup for sprite 6 */


/* Setup for sprite 7 ENEMY */
//sprite_load_like_multicolor(6)
//sprite_set_position(6,165,230)
//sprite_set_color(6,GRAY)
//sprite_set_frame_to_sprite(0,6)
/* Setup for sprite 7 */

/* Setup for sprite 8 ENEMY */
//sprite_load_like_multicolor(7)
//sprite_set_position(7,200,120)
//sprite_set_color(7,BLACK)
//sprite_set_frame_to_sprite(0,7)
/* Setup for sprite 7 */


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

    print_enemy_values:
        lda SPRITE_TEMP_Y
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(6,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


        lda SPRITE_TEMP_X
        sta sum_res_0
        lda #0
        sta sum_res_1
        sta sum_res_2
        sta sum_res_3
        print_calculation_result(7,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)



    /* Print with sprite is in collision */
    lda SPRITE_IN_COLLISION
    sta sum_res_0
    lda #0
    sta sum_res_1
    sta sum_res_2
    sta sum_res_3
    print_calculation_result(8,37,WHITE,sum_res_0,sum_res_1,sum_res_2,sum_res_3)


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
    jsr SPRITE_LIB.sprite_0_decrement_y
    rts
    
joy_down:
    jsr SPRITE_LIB.sprite_0_increment_y
    rts
    
joy_left:
    jsr SPRITE_LIB.sprite_0_decrement_x
    rts
    
joy_right:
    jsr SPRITE_LIB.sprite_0_increment_x
    rts

joy_fire:

    push_regs_to_stack()

    sprite_load_like_multicolor(1)

    ldx #0
    lda sprites_coord_table_y,x // get Y player position
    ldx #1
    sta sprites_coord_table_y,x

    sta $d003 // save Y
    sec
    sbc #50
    sta $d003 // mover el sprite bala en la misma Y del sprite player , para eso quitamos un poco para subirlo

    ldx #0
    lda sprites_coord_table_x,x // get Y player position
    ldx #1
    sta sprites_coord_table_x,x
    sta $d002 // save Y

    sprite_enable_sprite(1)
    sprite_set_color(1,YELLOW)
    sprite_set_frame_to_sprite(24,1)

    pull_regs_from_stack()
    rts

sleep_sprite:

    push_regs_to_stack()

    ldx #25 //50
    sleep_sprite_outer_loop:
        ldy #25 //50
    sleep_sprite_inner_loop:
        nop
        dey
        bne sleep_sprite_inner_loop
        dex
        bne sleep_sprite_outer_loop
        
    pull_regs_from_stack()

rts    









/* 

    Function:

        Check a target sprite if have a collision.
        
        IN:
        
            SPRITE_TO_CHECK

*/
check_sprite_collisions:
push_regs_to_stack()

    /* Reset local variables */
    lda #0
    sta SPRITE_CENTER_PLAYER_POS_Y
    sta SPRITE_CENTER_PLAYER_POS_X
    sta SPRITE_ENEMY_Y_PLUS_OFFSET
    sta SPRITE_ENEMY_X_PLUS_OFFSET
    sta SPRITE_ENEMY_Y
    sta SPRITE_ENEMY_X

    /* 
      The SPRITE 0 , is the player. We need calculate the center of the sprite.
      This center of the sprite , if it is into the retangle of the enemy sprite,
      this is a collision

    */

    /* set center Y */
    ldx #0
    lda sprites_coord_table_y,x
    clc 
    adc #10   // add 10 to point to the center of the sprite player COLS
    sta SPRITE_CENTER_PLAYER_POS_Y

    /* set center X */
    ldx #0
    lda sprites_coord_table_x,x
    clc 
    adc #12 // add 12 to set the center of sprite player ROWS
    sta SPRITE_CENTER_PLAYER_POS_X
    

    /* Now is time to set the limit coordinates values load the SPRITE to check 
    the collision, it is saved in variable SPRITE_TO_CHECK */

    lda SPRITE_TO_CHECK  
    tax   // transfer the value storaged in reg A to reg X

    /* Enemy X + offset X*/
    lda sprites_coord_table_x,x
    sta SPRITE_ENEMY_X
    clc
    adc #SPRITE_WIDTH // 24
    sta SPRITE_ENEMY_X_PLUS_OFFSET

    /* Enemy Y + offset Y*/
    lda sprites_coord_table_y,x
    sta SPRITE_ENEMY_Y
    clc
    adc #SPRITE_HEIGHT // 21
    sta SPRITE_ENEMY_Y_PLUS_OFFSET

    /**************************************************/
    /*            Start comparations                  */
    /**************************************************/
    // If Player_X >= Enemy_X
    lda SPRITE_CENTER_PLAYER_POS_X
    cmp SPRITE_ENEMY_X
    //bcc sprite_no_hit  // if is LESS means X is between the X and X + offset of rectangle
    bcs continue_check_1
    jmp sprite_no_hit

    continue_check_1:

        // IF Player_X <= Enemy_X + Sprite_width
        lda SPRITE_CENTER_PLAYER_POS_X
        cmp SPRITE_ENEMY_X_PLUS_OFFSET
        //bcs sprite_no_hit
        bcc continue_check_2
        jmp sprite_no_hit

    continue_check_2:

        // Start comparations
        // If Player_Y >= Enemy_Y
        lda SPRITE_CENTER_PLAYER_POS_Y
        cmp SPRITE_ENEMY_Y
        //bcc sprite_no_hit  // if is LESS means X is between the X and X + offset of rectangle
        bcs continue_check_3
        jmp sprite_no_hit

    continue_check_3:

        // IF Player_Y <= Enemy_Y + Sprite_height
        lda SPRITE_CENTER_PLAYER_POS_Y
        cmp SPRITE_ENEMY_Y_PLUS_OFFSET
        //bcs sprite_no_hit
        bcc change_border_color
        jmp sprite_no_hit

    change_border_color:

    

        //If exists collision , increment border color
        // change color ,save temp values and allow print
        inc $d020 // change border color

        /* Play sound */
        jsr SOUND_LIB.play_sound



        /* Save positions of enemy Y-X for print them in the main loop */
        lda SPRITE_ENEMY_Y
        sta SPRITE_TEMP_Y
        lda SPRITE_ENEMY_X
        sta SPRITE_TEMP_X

        /* Save the sprite in collision. Here we save the sprite index in
           collision */
        stx SPRITE_IN_COLLISION

        //---------------
        // Set the sprite in collision mode
        lda #1
        sta sprites_state_table,x

        /* Change sprite to "dead mode". To achieve this we must change the
           pointers to point to a new animation list. 
           
           The tables "sprite_animations_list_LO_table" basically are a list
           of animations lists.


            Here we are setting the ADDRESS LOW AND HIGHT byte of the dead
            animation to the target sprite ( sprite with collision ).

            Remember, the tables : sprite_animations_list_LO_table and 
            sprite_animations_list_HI_table , each entry is a SPRITE INDEX,and
            each sprite index point to a animation.

        */
        lda sprite_dead_list_LO_table,x
        sta sprite_animations_list_LO_table,x
        
        sta sprite_current_anim_LO_table,x 
        lda sprite_dead_list_HI_table,x

        sta sprite_animations_list_HI_table,x
        sta sprite_current_anim_HI_table,x 


        /* Set to 1 ignore  */
        lda IGNORE_RESET_ANIMATION_INDEX_TABLE,x
        cmp #1
        beq ignore_reset_animation_index

        //------- put the new animation inmediatly !
        // Put speed in dead mode sprite animation
        lda #4
        sta sprites_rasters_limit_table,x


        //Save the current index before reset it to 0
        lda sprites_current_animation_index_position_table,x
        sta sprites_current_animation_index_position_table_backup,x


        //Save the current raster counter before collision
        lda sprites_raster_counters_table,x
        sta sprites_raster_counters_table_backup,x


        lda #0
        sta sprites_current_animation_index_position_table,x
        sta sprites_raster_counters_table,x
        //------- end put the new animation inmediatly !



        // ---- set to 1 to avoid reset always the animation index to 0        
        lda #1
        sta IGNORE_RESET_ANIMATION_INDEX_TABLE,x

        ignore_reset_animation_index:

        jmp exit_check_collision


    sprite_no_hit:

        // if no hit, reset border color to default
        //lda #LIGHT_BLUE
        //sta $d020

        jsr SOUND_LIB.stop_sound

        // Solo restaurar si estaba en colisión
        lda sprites_state_table,x
        cmp #1
        //bne exit_check_collision
        beq skip_exit_check_collision
        jmp exit_check_collision
        
        skip_exit_check_collision:



        // Put the sprite in normal state

        /* Set sprite to normal animation and retet if from zero. 
        To achive this, we get the original values of the HI and LO (pointer) 
        saved into the backup tables.  */

        lda #0
        sta sprites_state_table,x
        lda sprite_animations_list_LO_table_backup,x
        sta sprite_animations_list_LO_table,x
        sta sprite_current_anim_LO_table,x

        lda sprite_animations_list_HI_table_backup,x
        sta sprite_animations_list_HI_table,x
        sta sprite_current_anim_HI_table,x

        /* also we must set again the default speed of the animations. Also
        saved in the backup tables. */
        lda sprites_rasters_limit_table_backup,x
        sta sprites_rasters_limit_table,x



        /* Put again the sprite in the frame before the collision. To achieve 
        this we need get the backup value. This value is the last index frame
        in the sprite animation before the collision with the player.
        
        We need substract 1 because this save the current value , always is +1.
         */
        lda sprites_current_animation_index_position_table_backup,x
        //sec
        //sbc #1  
        sta sprites_current_animation_index_position_table,x

        /* set to 0 the values to ignore put again the same animation in 
         collision, the otherwise , always start the "dead animation" from 0
         in collision condition */

        lda SPRITE_INDEX_POINTER 
        clc
        adc sprites_current_animation_index_position_table,x //  #0
        sta SPRITE_FRAME_POINTER

        // Ignore Sprite 0
            cpx #1   
            bne x_enemy_2

            /* Put again the last value of the raster counter for the sprite.
               In this point we need put the raster counter to the limit. Why?
               Because like it is, we set the raster_counter for this sprite
               to the limit, then, the sprite animation play faster again.

               The otherwise exists a small delay until the raster counter for
               this sprite is finished. We substract -1 because is need for the
               comparation "raster_counter" in the raster interruption.
            */
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_1
            jmp end_reset_cases

        x_enemy_2:   // Enemy sprite
            cpx #2
            bne x_enemy_3
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_2
            jmp end_reset_cases

        x_enemy_3:
            cpx #3
            bne x_enemy_4
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_3
            jmp end_reset_cases
        x_enemy_4:
            cpx #4
            bne x_enemy_5
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_4
            jmp end_reset_cases
        x_enemy_5:
            cpx #5
            bne x_enemy_6
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_5
            jmp end_reset_cases
        x_enemy_6:
            cpx #6
            bne x_enemy_7
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_6
            jmp end_reset_cases
        x_enemy_7:
            cpx #7
            bne end_reset_cases
            lda sprites_rasters_limit_table,x
            sec
            sbc #1
            sta sprites_raster_counters_table,x // set counter to limit - 1
            jsr SPRITE_LIB.set_frame_to_sprite_7

        end_reset_cases:

        lda #0
        sta IGNORE_RESET_ANIMATION_INDEX_TABLE,x
        
    
    exit_check_collision:

pull_regs_from_stack()
rts