#import "sprite_macros/sprite_lib_macros.asm"

SPRITE_LIB:
{

    /*
        This functions increment and decrement de X and Y position for each
        sprite. 0 to 7 ( 8 Sprites )
    */
    /* ROW -- */
    sprite_0_decrement_x:
        push_regs_to_stack()
        ldx #0
        dec sprites_coord_table_x,x
        dec $d000
        pull_regs_from_stack()
        rts

    sprite_1_decrement_x:
        push_regs_to_stack()
        ldx #1
        dec sprites_coord_table_x,x
        dec $d002
        pull_regs_from_stack()
        rts

    sprite_2_decrement_x:
        push_regs_to_stack()
        ldx #2
        dec sprites_coord_table_x,x
        dec $d004
        pull_regs_from_stack()
        rts

    sprite_3_decrement_x:
        push_regs_to_stack()
        ldx #3
        dec sprites_coord_table_x,x
        dec $d006
        pull_regs_from_stack()
        rts

    sprite_4_decrement_x:
        push_regs_to_stack()
        ldx #4
        dec sprites_coord_table_x,x
        dec $d008
        pull_regs_from_stack()
        rts

    sprite_5_decrement_x:
        push_regs_to_stack()
        ldx #5
        dec sprites_coord_table_x,x
        dec $d00a
        pull_regs_from_stack()
        rts

    sprite_6_decrement_x:
        push_regs_to_stack()
        ldx #6
        dec sprites_coord_table_x,x
        dec $d00c
        pull_regs_from_stack()
        rts

    sprite_7_decrement_x:
        push_regs_to_stack()
        ldx #7
        dec sprites_coord_table_x,x
        dec $d00e
        pull_regs_from_stack()
        rts

    /* ROW ++ */
    sprite_0_increment_x:
        push_regs_to_stack()
        ldx #0
        inc sprites_coord_table_x,x
        inc $d000
        pull_regs_from_stack()
        rts

    sprite_1_increment_x:
        push_regs_to_stack()
        ldx #1
        inc sprites_coord_table_x,x
        inc $d002
        pull_regs_from_stack()
        rts

    sprite_2_increment_x:
        push_regs_to_stack()
        ldx #2
        inc sprites_coord_table_x,x
        inc $d004
        pull_regs_from_stack()
        rts

    sprite_3_increment_x:
        push_regs_to_stack()
        ldx #3
        inc sprites_coord_table_x,x
        inc $d006
        pull_regs_from_stack()
        rts
    
    sprite_4_increment_x:
        push_regs_to_stack()
        ldx #4
        inc sprites_coord_table_x,x
        inc $d008
        pull_regs_from_stack()
        rts

    sprite_5_increment_x:
        push_regs_to_stack()
        ldx #5
        inc sprites_coord_table_x,x
        inc $d00a
        pull_regs_from_stack()
        rts

    sprite_6_increment_x:
        push_regs_to_stack()
        ldx #6
        inc sprites_coord_table_x,x
        inc $d00c
        pull_regs_from_stack()
        rts

    sprite_7_increment_x:
        push_regs_to_stack()
        ldx #7
        inc sprites_coord_table_x,x
        inc $d00e
        pull_regs_from_stack()
        rts

    
    /* COL -- */
    sprite_0_decrement_y:
        push_regs_to_stack()
        ldx #0
        dec sprites_coord_table_y,x
        dec $d001
        pull_regs_from_stack()
        rts


    sprite_1_decrement_y:
        push_regs_to_stack()
        ldx #1
        dec sprites_coord_table_y,x
        dec $d003
        pull_regs_from_stack()
        rts
    
    sprite_2_decrement_y:
        push_regs_to_stack()
        ldx #2
        dec sprites_coord_table_y,x
        dec $d005
        pull_regs_from_stack()
        rts
    
    sprite_3_decrement_y:
        push_regs_to_stack()
        ldx #3
        dec sprites_coord_table_y,x
        dec $d007
        pull_regs_from_stack()
        rts
    sprite_4_decrement_y:
        push_regs_to_stack()
        ldx #4
        dec sprites_coord_table_y,x
        dec $d009
        pull_regs_from_stack()
        rts
    
    sprite_5_decrement_y:
        push_regs_to_stack()
        ldx #5
        dec sprites_coord_table_y,x
        dec $d00b
        pull_regs_from_stack()
        rts

    sprite_6_decrement_y:
        push_regs_to_stack()
        ldx #6
        dec sprites_coord_table_y,x
        dec $d00d
        pull_regs_from_stack()
        rts
    
    sprite_7_decrement_y:
        push_regs_to_stack()
        ldx #7
        dec sprites_coord_table_y,x
        dec $d00f
        pull_regs_from_stack()
    rts

    /* COL ++ */
    sprite_0_increment_y:
        push_regs_to_stack()
        ldx #0
        inc sprites_coord_table_y,x
        inc $d001
        pull_regs_from_stack()
    rts

    sprite_1_increment_y:
        push_regs_to_stack()
        ldx #1
        inc sprites_coord_table_y,x
        inc $d003
        pull_regs_from_stack()
    rts

    sprite_2_increment_y:
        push_regs_to_stack()
        ldx #2
        inc sprites_coord_table_y,x
        inc $d005
        pull_regs_from_stack()
    rts

    sprite_3_increment_y:
        push_regs_to_stack()
        ldx #3
        inc sprites_coord_table_y,x
        inc $d007
        pull_regs_from_stack()
    rts

    sprite_4_increment_y:
        push_regs_to_stack()
        ldx #4
        inc sprites_coord_table_y,x
        inc $d009
        pull_regs_from_stack()
    rts

    sprite_5_increment_y:
        push_regs_to_stack()
        ldx #5
        inc sprites_coord_table_y,x
        inc $d00b
        pull_regs_from_stack()
    rts

    sprite_6_increment_y:
        push_regs_to_stack()
        ldx #6
        inc sprites_coord_table_y,x
        inc $d00d
        pull_regs_from_stack()
    rts

    sprite_7_increment_y:
        push_regs_to_stack()
        ldx #7
        inc sprites_coord_table_y,x
        inc $d00f
        pull_regs_from_stack()
    rts


/*
    Enable sprite : 
    --------------
        IN : SPRITE_TO_ENABLE in binary
        Each bit in 1 means sprite to enable

*/
enable_sprite:

    push_regs_to_stack()

    lda $d015             // position to enable - disable sprites
    ora SPRITE_TO_ENABLE  // set to 1 the target sprites
    sta $d015             // save the enables sprites

    pull_regs_from_stack()
    rts

/*
    Disable sprite : 
    ----------------
        IN : SPRITE_TO_ENABLE in binary
        Each bit in 0 means sprite to disable

*/
disable_sprite:
    push_regs_to_stack()
    lda $d015             // position to enable - disable sprites
    and SPRITE_TO_ENABLE  // set to 0 the target sprites
    sta $d015             // save the enables sprites
    pull_regs_from_stack()
    rts

/*
    Set frames to sprites:
    ----------------------
        
        This function set a sprite data pointer ( where is the sprite picture
        data) to a sprite target

        IN: SPRITE_FRAME_POINTER ( address where is the sprite draw data)
        Each address : $07f8 , $07f9 , $07fa ... this is the pointer (address) 
        to set wich image to load for each sprite
*/
set_frame_to_sprite_0:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07f8   
    pull_regs_from_stack()
    rts

set_frame_to_sprite_1:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07f9
    pull_regs_from_stack()
    rts

set_frame_to_sprite_2:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07fa
    pull_regs_from_stack()
    rts

set_frame_to_sprite_3:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07fb
    pull_regs_from_stack()
    rts

set_frame_to_sprite_4:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07fc
    pull_regs_from_stack()
    rts

set_frame_to_sprite_5:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07fd
    pull_regs_from_stack()
    rts

set_frame_to_sprite_6:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07fe
    pull_regs_from_stack()
    rts

set_frame_to_sprite_7:
    push_regs_to_stack()
    lda SPRITE_FRAME_POINTER
    sta $07ff
    pull_regs_from_stack()
    rts



/* 

Function:

Get SPRITE_PAD index in a sprite animation. A animation is a list of bytes.
Each byte have a value, this value is a INDEX in the spritepad program pallete.

For example, we have a list of frames to play the animation. This animation is
a player jump. This secuence are the frames : 0-1-2-3 and the value 255 means
"end of animation".

So, with this function we access to this value in this list. Imagine this like
a List.

    int[] player_jump = new int[3];
    player_jump[0] = 1  // Frame 1 ...
    player_jump[1] = 2  // Frame 2 ...
    player_jump[2] = 3  // Frame 3 ...
    player_jump[3] = 255

    PARAMS:
    =======

        IN:
            ANIMATION_FRAMES_LIST_LO: Low byte of this animation list
            ANIMATION_FRAMES_LIST_HI: Hight byte of this animation list
            SPRITE_ANIMATION_VALUE_OFFSET: Index position in this list

            SPRITE_INDEX_COUNTER_RASTER_LOOP

        OUT:
            SPRITE_PAD_INDEX: The value in this list for the given index.

 */ 
sprite_get_current_index_sprite_pad_value_animation:

    push_regs_to_stack()

    /*lda ANIMATION_FRAMES_LIST_LO
    sta ZERO_PAGE_SPRITE_LOW_BYTE

    lda ANIMATION_FRAMES_LIST_HI
    sta ZERO_PAGE_SPRITE_HIGHT_BYTE*/

    ldx SPRITE_INDEX_COUNTER_RASTER_LOOP
    lda sprite_current_anim_LO_table,x
    sta ZERO_PAGE_SPRITE_LOW_BYTE

    lda sprite_current_anim_HI_table,x
    sta ZERO_PAGE_SPRITE_HIGHT_BYTE



    ldy SPRITE_ANIMATION_VALUE_OFFSET //This value move to the right X positions
                                      //in the current sprite_animation list.

                  //Is like do in a array -> array[SPRITE_ANIMATION_VALUE_OFFSET
                  //This value is saved in Y register and used in the custom 
                  //address created using the ZERO_PAGE bellow


    lda (ZERO_PAGE_SPRITE_LOW_BYTE),y // get the value of this item in the list
                                      // using a INDIRECT ADDRESSING with the ZP 
    sta SPRITE_PAD_INDEX    // returned value wich contains the value of the
                            // target sprite into the sprite pad pallete

    pull_regs_from_stack()
    rts


/*----------------------------------------------------------*/
/* RASTER CODE */
/*----------------------------------------------------------*/


/* SETUP RASTER */
setupRasterInterrupt:

    push_regs_to_stack()

    sei // Disable system interrupts

    lda #%01111111 // Turn off the CIA timer interrupt
    sta INTERRUPT_CONTROL_AND_STATUS1 // $dc0d
    sta INTERRUPT_CONTROL_AND_STATUS2 // $dd0d

    // Setup Raster Interrupt

    lda #%01111111 // Clear high bit of raster line
    and SCREEN_CONTROL_1 // $d011
    sta SCREEN_CONTROL_1 // $d011

    lda #250 // Set raster interrupt to trigger on line 250
    sta CURRENT_RASTER_LINE // $d012

    lda #<SPRITE_LIB.actions_in_raster // Set pointer for raster interrupt
    sta INTERRUPT_EXEC_ADDR1_SERVICE // $0314
    lda #>SPRITE_LIB.actions_in_raster
    sta INTERRUPT_EXEC_ADDR2_SERVICE // $0315

    lda #%00000001 // Enable raster interrupt
    sta INTERRUPT_CONTROL // $d01a

    cli // Enable system interrupts

    pull_regs_from_stack()
    rts


enableRasterInterrupt:
	lda #%00000101
	sta INTERRUPT_CONTROL
	rts


disableRasterInterrupt:
	lda #%00000100
	sta INTERRUPT_CONTROL
	rts


/* RASTER EXECUTION CODE*/
actions_in_raster:

    inc INTERRUPT_STATUS // $d019 - Set bit 0 in Interrupt Status Register to 
                         // acknowledge raster interrupt

    // X Register contains the number of SPRITE to retrieve in each iteration
    // it is like : for ( int x = 0 ; x < 8 ; x++ )
    ldx #0

    sprites_loop:

        stx SPRITE_INDEX_COUNTER_RASTER_LOOP
       
        inc sprites_raster_counters_table,x /* Increment the value of the 
                                     iteration counter for the current sprite */
       
        lda sprites_raster_counters_table,x /*Load in A the current incremented 
                                           value */

        cmp sprites_rasters_limit_table,x  /* Check if the sprite counter == 
                                              sprite limit */
       
        beq process_this_sprite /* If it is in the limit, this means we must 
                                  move to the next frame in this animation */
        jmp go_to_next_sprite /* If is NOT in the limit,go to next frame (X++)*/

        process_this_sprite:

            /* CHECK IF PLAYER BALA -----------------*/
            // Player 1 fire bullet
            lda $d003 // save Y
            cmp #80  // si llego al tope, desaparecemos bala player 1
            bcc hide_bullet_player_1
            sec
            sbc #10 // decrement Y of bullet sprite player 1
            sta $d003
            jmp ignore_disable_bullet_player_1

            hide_bullet_player_1:
                sprite_disable_sprite(1)

            ignore_disable_bullet_player_1:
            /* END CHECK IF PLAYER BALA -----------------*/


            /* ??? Change to next frame in the animnation */

            // Get the LO and HI bytes values of the associated animation list
            // for this current sprite.

            lda sprite_animations_list_LO_table,x
            sta sprite_current_anim_LO_table,x

            lda sprite_animations_list_HI_table,x
            sta sprite_current_anim_HI_table,x

            // Once we have the address of this list ...
            lda sprites_current_animation_index_position_table,x


            // We save the value in the next variable ...
            // (SPRITE_ANIMATION_VALUE_OFFSET)
            // Then we call to the next function to get the sprited_pad index
            // value and point to this picture in the sprites memory. This index
            // is returned in SPRITE_PAD_INDEX from this function...
            
            sta SPRITE_ANIMATION_VALUE_OFFSET
            jsr SPRITE_LIB.sprite_get_current_index_sprite_pad_value_animation

            // But , if SPRITE_PAD_INDEX have the value 255, this means we are 
            // in the final of the animation , and we must reset to 0 
            // the sprites_current_animation_index_position_table, because we
            // need start to count again from 0   
            
            lda SPRITE_PAD_INDEX
            cmp #255
            beq reset_animation

            // So , if we are NOT in the final of the animation, 
            // we increment this value in the table, 
            inc sprites_current_animation_index_position_table,x    

            continue_put_animation_frame_in_screen:

                // Finally we show this new slide (frame) of the animation in screen
                jmp put_animation_frame_in_screen
                

    reset_animation:

        /********************* ROTATE TANK ********************/
        // Si es el Sprite 0 y esta en rotacion, ponemos el tanque a la derecha
        lda SPRITE_INDEX_COUNTER_RASTER_LOOP
        cmp #0  // <---- Sprite 0 Tank 1
        beq is_sprite_tank_1
        jmp not_is_sprite_tank_1

        is_sprite_tank_1:
            // ¿ estaba en rotacion ?
            lda PLAYER_1_TANK_IS_ROTATING        
            cmp #1   // ¿ Estaba en rotacion ? Si , ya termino , por lo ponemos el tanque a la derecha
            beq set_tank_to_position
            jmp not_set_tank_to_position


        set_tank_to_position:
            // Ponemos animacion a la derecha
            jsr SPRITE_LIB.sprite_set_animation_rotate_tank_right
            
            //Pasamos a otro sprite
            jmp go_to_next_sprite

        not_set_tank_to_position:
        not_is_sprite_tank_1:
        /********************* END ROTATE TANK ********************/
        
        reset_index_sprite_index_table:
        
        lda #0 // Set to 0 this index in the table
        sta sprites_current_animation_index_position_table,x
       
        // Once we have rested this value, we must force to point to the first
        // animation frame. To get this goal , we must use our function
        // "sprite_get_current_index_sprite_pad_value_animation" , and the with
        // with INDEX (SPRITE_PAD_INDEX) match with the first animation of the
        // current sprite, the IN param for this function is 
        // "SPRITE_ANIMATION_VALUE_OFFSET"

        sta SPRITE_ANIMATION_VALUE_OFFSET
        jsr SPRITE_LIB.sprite_get_current_index_sprite_pad_value_animation
        

        // Finally we increment the value of: 
        // "sprites_current_animation_index_position_table" to show the next
        // frame of this sprite in the next iteration of the loop. With this
        // we create the ilusion of a infinity animation loop
        inc sprites_current_animation_index_position_table,x
        


    put_animation_frame_in_screen:
        
        // If we are NOT in the LIMIT of the animation list ( final slide )
        // We must access where start the sprites blocks in memory , this is
        // SPRITES_ADDRESS / 64 decimal = SPRITES_ADDRESS / $40
        // Each sprite are 64 bytes, so we must move us by 64 bytes
        
        // So to put the next slide of the animation sprite for the current
        // sprite, we must access to this SPRITE_INDEX_POINTER and ADD this
        // offset. This offset is the value of SPRITE_PAD_INDEX. This is the
        // position of the sprite in the pallette of SPRITE PAD Windows Program
        lda SPRITE_INDEX_POINTER 
        clc
        adc SPRITE_PAD_INDEX
        sta SPRITE_FRAME_POINTER
       
        // Finally, is missing only check if the X Register is pointing to
        // the sprite 0,1,2 and so on until 8. Finally we call to the function
        // set_frame_to_sprite_X to the this SPRITE_FRAME_POINTER in the
        // target address sprite pointer.

        // This is the SPRITE PLAYER ( this is player by default )
        // get currents X-Y Positions of the sprite player
        // SPRITE_PLAYER_POS_X
        // SPRITE_PLAYER_POS_Y

        cpx #0
        bne x_1



        jsr SPRITE_LIB.set_frame_to_sprite_0
        jmp reset_sprite_raster_counter_in_current_sprite

        x_1:  // sprite 2 : Bullet Player 1
            cpx #1   
            bne x_2
            jsr SPRITE_LIB.set_frame_to_sprite_1
            jmp reset_sprite_raster_counter_in_current_sprite

        x_2:   // Enemy sprite
            cpx #2
            bne x_3
            jsr SPRITE_LIB.set_frame_to_sprite_2
            jmp reset_sprite_raster_counter_in_current_sprite

        x_3:
            cpx #3
            bne x_4
            jsr SPRITE_LIB.set_frame_to_sprite_3
            jmp reset_sprite_raster_counter_in_current_sprite
        x_4:
            cpx #4
            bne x_5
            jsr SPRITE_LIB.set_frame_to_sprite_4
            jmp reset_sprite_raster_counter_in_current_sprite
        x_5:
            cpx #5
            bne x_6
            jsr SPRITE_LIB.set_frame_to_sprite_5
            jmp reset_sprite_raster_counter_in_current_sprite
        x_6:
            cpx #6
            bne x_7
            jsr SPRITE_LIB.set_frame_to_sprite_6
            jmp reset_sprite_raster_counter_in_current_sprite
        x_7:
            cpx #7
            bne reset_sprite_raster_counter_in_current_sprite
            jsr SPRITE_LIB.set_frame_to_sprite_7
       
        reset_sprite_raster_counter_in_current_sprite:
        lda #0
        sta sprites_raster_counters_table,x

    go_to_next_sprite:

        inx
        cpx #8
        // If the loop is in the last sprite ( X == 8 )        
        // we leave the interruption if not , we continue the loop iteration
        beq exit_sprites_loop
        jmp sprites_loop

        exit_sprites_loop:


        /* Call to check collision in any sprite */
        /* This loop is execute in the last part of the RASTER Interrupt.
           Here we retrieve each sprite ( from 1 to 7. Sprite 0 is player )
           To check if the CENTER of sprite 0 is into the rectangle of enemy
           sprite
        */
        ldy #0
        check_sprite_loop:
            iny
            sty SPRITE_TO_CHECK
            
            jsr check_sprite_collisions


            cpy #8
            bne check_sprite_loop

        /* end Call to check collision in any sprite */


jmp INTERRUPT_RETURN // $ea81 - Return from interrupt




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

    lda #1  // Player 1 bullet sprite  // SPRITE_TO_CHECK  
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


        /* CODE FOR COLLISION . COMMENTED AT THE MOMENT TO ALLOW SEE Y X */

        //If exists collision , increment border color
        // change color ,save temp values and allow print
        //inc $d020 // change border color

        /* Play sound */
        //jsr SOUND_LIB.play_sound

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


        /* CODE FOR CHANGING ANIMATION !!!!!! */
        //lda sprite_dead_list_LO_table,x
        //sta sprite_animations_list_LO_table,x //<-- X = sprite target
        
        //sta sprite_current_anim_HI_table,x 
        //lda sprite_dead_list_HI_table,x

        //sta sprite_animations_list_HI_table,x
        //sta sprite_current_anim_HI_table,x 


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


/* Block player 1 movements */
block_player_1_movements:
    push_regs_to_stack()

    // Block movements of player 1 because here is a rotation
    lda #PLAYER_NOT_ALLOWED_MOVE
    sta PLAYER_1_ALLOWED_MOVE

    pull_regs_from_stack()
rts


/* Unblock player 1 movements */
enable_player_1_movements:
    push_regs_to_stack()

    // Block movements of player 1 because here is a rotation
    lda #PLAYER_ALLOWED_MOVE
    sta PLAYER_1_ALLOWED_MOVE

    pull_regs_from_stack()
rts




/**********************************/
/*          ANIMATIONS            */
/**********************************/
/* Play animation rotation: UP */
sprite_set_animation_rotate_tank_up:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_up_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_up_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: RIGHT */
sprite_set_animation_rotate_tank_right:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_right_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_right_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts



/* Play animation rotation: LEFT */
sprite_set_animation_rotate_tank_left:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_left_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_left_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation: DOWN */
sprite_set_animation_rotate_tank_down:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_down_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_down_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts




/* Play animation rotation : TOP -> RIGHT  */
sprite_set_animation_rotate_tank_up_right:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_up_right_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_up_right_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation : TOP -> LEFT  */
sprite_set_animation_rotate_tank_up_left:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_up_left_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_up_left_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation : RIGHT -> UP  */
sprite_set_animation_rotate_tank_right_up:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_right_up_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_right_up_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation : RIGHT -> DOWN  */
sprite_set_animation_rotate_tank_right_down:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_right_down_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_right_down_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation : LEFT -> UP  */
sprite_set_animation_rotate_tank_left_up:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_left_up_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_left_up_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation : LEFT -> DOWN  */
sprite_set_animation_rotate_tank_left_down:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_left_down_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_left_down_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/* Play animation rotation : DOWN -> LEFT */
sprite_set_animation_rotate_tank_down_left:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_down_left_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_down_left_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation : DOWN -> RIGHT */
sprite_set_animation_rotate_tank_down_right:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_animation_down_right_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_animation_down_right_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts







































}