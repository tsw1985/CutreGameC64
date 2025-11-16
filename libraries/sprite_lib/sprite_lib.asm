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
        dec $d000
        lda $d000
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_1_decrement_x:
        push_regs_to_stack()
        ldx #1
        dec $d002
        lda $d002
        sta sprites_coord_table_x,x

        pull_regs_from_stack()
        rts

    sprite_2_decrement_x:
        push_regs_to_stack()
        ldx #2
        dec $d004
        lda $d004
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_3_decrement_x:
        push_regs_to_stack()
        ldx #3
        dec $d006
        lda $d006
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_4_decrement_x:
        push_regs_to_stack()
        ldx #4
        dec $d008
        lda $d008
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_5_decrement_x:
        push_regs_to_stack()
        ldx #5
        dec $d00a
        lda $d00a
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_6_decrement_x:
        push_regs_to_stack()
        ldx #6
        dec $d00c
        lda $d00c
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_7_decrement_x:
        push_regs_to_stack()
        ldx #7
        dec $d00e
        lda $d00e
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    /* ROW ++ */
    sprite_0_increment_x:
        push_regs_to_stack()
        ldx #0
        inc $d000
        lda $d000
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_1_increment_x:
        push_regs_to_stack()
        ldx #1
        inc $d002
        lda $d002
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_2_increment_x:
        push_regs_to_stack()
        ldx #2
        inc $d004
        lda $d004
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_3_increment_x:
        push_regs_to_stack()
        ldx #3
        inc $d006
        lda $d006
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts
    
    sprite_4_increment_x:
        push_regs_to_stack()
        ldx #4
        inc $d008
        lda $d008
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_5_increment_x:
        push_regs_to_stack()
        ldx #5
        inc $d00a
        lda $d00a
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_6_increment_x:
        push_regs_to_stack()
        ldx #6
        inc $d00c
        lda $d00c
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    sprite_7_increment_x:
        push_regs_to_stack()
        ldx #7
        inc $d00e
        lda $d00e
        sta sprites_coord_table_x,x
        pull_regs_from_stack()
        rts

    
    /* COL -- */
    sprite_0_decrement_y:
        push_regs_to_stack()
        ldx #0
        dec $d001
        lda $d001
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts


    sprite_1_decrement_y:
        push_regs_to_stack()
        ldx #1
        dec $d003
        lda $d003
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts
    
    sprite_2_decrement_y:
        push_regs_to_stack()
        ldx #2
        dec $d005
        lda $d005
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts
    
    sprite_3_decrement_y:
        push_regs_to_stack()
        ldx #3
        dec $d007
        lda $d007
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts
    sprite_4_decrement_y:
        push_regs_to_stack()
        ldx #4
        dec $d009
        lda $d009
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts
    
    sprite_5_decrement_y:
        push_regs_to_stack()
        ldx #5
        dec $d00b
        lda $d00b
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts

    sprite_6_decrement_y:
        push_regs_to_stack()
        ldx #6
        dec $d00d
        lda $d00d
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
        rts
    
    sprite_7_decrement_y:
        push_regs_to_stack()
        ldx #7
        dec $d00f
        lda $d00f
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    /* COL ++ */
    sprite_0_increment_y:
        push_regs_to_stack()
        ldx #0
        inc $d001
        lda $d001
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_1_increment_y:
        push_regs_to_stack()
        ldx #1
        inc $d003
        lda $d003
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_2_increment_y:
        push_regs_to_stack()
        ldx #2
        inc $d005
        lda $d005
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_3_increment_y:
        push_regs_to_stack()
        ldx #3
        inc $d007
        lda $d007
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_4_increment_y:
        push_regs_to_stack()
        ldx #4
        inc $d009
        lda $d009
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_5_increment_y:
        push_regs_to_stack()
        ldx #5
        inc $d00b
        lda $d00b
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_6_increment_y:
        push_regs_to_stack()
        ldx #6
        inc $d00d
        lda $d00d
        sta sprites_coord_table_y,x
        pull_regs_from_stack()
    rts

    sprite_7_increment_y:
        push_regs_to_stack()
        ldx #7
        inc $d00f
        lda $d00f
        sta sprites_coord_table_y,x
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



            // if it is sprite 0 ( player 1 tank ). We need check if it is in
            // movement, to allow increment next frame , the otherwise , we not
            // increment frame to animate
            lda SPRITE_INDEX_COUNTER_RASTER_LOOP
            cmp #0                                  // 0 is Player tank 1 SPRITE
            beq is_sprite_tank_1
            //jmp continue_default

            lda SPRITE_INDEX_COUNTER_RASTER_LOOP
            cmp #2                                  // 2 is Player tank 2 SPRITE
            beq is_sprite_tank_2
            jmp continue_default


            is_sprite_tank_1:

                // if sprite is in moving
                lda PLAYER_1_TANK_IS_IN_MOVING
                cmp #1
                beq player_1_is_in_moving
                jmp continue_put_animation_frame_in_screen

                player_1_is_in_moving:

                   /* if player 1 is in moving, we change the frame animation */
                    inc sprites_current_animation_index_position_table,x

                    /* Reset to 0 again the flag if tank is in movement.
                       When the player move the joystick again, this will be 1*/
                    lda #0
                    sta PLAYER_1_TANK_IS_IN_MOVING
                    jmp continue_put_animation_frame_in_screen


            is_sprite_tank_2:

                // if sprite is in moving
                lda PLAYER_2_TANK_IS_IN_MOVING
                cmp #1
                beq player_2_is_in_moving
                jmp continue_put_animation_frame_in_screen

                player_2_is_in_moving:

                   /* if player 1 is in moving, we change the frame animation */
                    inc sprites_current_animation_index_position_table,x

                    /* Reset to 0 again the flag if tank is in movement.
                       When the player move the joystick again, this will be 1*/
                    lda #0
                    sta PLAYER_2_TANK_IS_IN_MOVING
                    jmp continue_put_animation_frame_in_screen                


            continue_default:
                // default
                inc sprites_current_animation_index_position_table,x    


            continue_put_animation_frame_in_screen:

                // Finally we show this new slide (frame) of the animation in screen
                jmp put_animation_frame_in_screen
                

    reset_animation:

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

        //move tank bullets at same time
        jsr SPRITE_LIB.sprite_move_bullets_tank_1
        //check if bullet tank 1 impacted in tank 2
        jsr SPRITE_LIB.bullet_tank_1_impact_on_tank_2



        jsr SPRITE_LIB.sprite_move_bullets_tank_2
        jsr SPRITE_LIB.bullet_tank_2_impact_on_tank_1


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
            
            //jsr check_sprite_collisions


            cpy #8
            bne check_sprite_loop

        /* end Call to check collision in any sprite */


jmp INTERRUPT_RETURN // $ea81 - Return from interrupt



bullet_tank_1_impact_on_tank_2:
    push_regs_to_stack()

    lda #0
    sta SPRITE_CENTER_PLAYER_POS_X_BULLET_1
    sta SPRITE_CENTER_PLAYER_POS_Y_BULLET_1
    sta SPRITE_ENEMY_X_TANK_2
    sta SPRITE_ENEMY_Y_TANK_2
    sta SPRITE_ENEMY_X_PLUS_OFFSET_TANK_2
    sta SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_2



    // ========================================
    // PASO 1: Calcular centro de BULLET_1
    // ========================================
    //ldx #1                              // Sprite BULLET_1
    //lda sprites_coord_table_x,x
    lda SPRITE_1_MEM_X
    clc
    adc #12                             // Centro X (mitad de 21 = aprox 12)
    sta SPRITE_CENTER_PLAYER_POS_X_BULLET_1
    
    lda SPRITE_1_MEM_Y //sprites_coord_table_y,x
    clc
    adc #10                             // Centro Y (mitad de 24 = aprox 10)
    sta SPRITE_CENTER_PLAYER_POS_Y_BULLET_1

    // ========================================
    // PASO 2: Obtener límites de TANK_2
    // ========================================
    ldx #2                              // Sprite TANK_2
    lda sprites_coord_table_x,x
    sta SPRITE_ENEMY_X_TANK_2           // X izquierda
    clc
    adc #19//21                             // X derecha (ancho completo)
    sta SPRITE_ENEMY_X_PLUS_OFFSET_TANK_2
    
    lda sprites_coord_table_y,x
    sta SPRITE_ENEMY_Y_TANK_2           // Y superior
    clc
    adc #15//24                             // Y inferior (alto completo)
    sta SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_2

    // ========================================
    // PASO 3: Comprobar colisión en eje X
    // ========================================
    // ¿Centro bala >= X izquierda tanque?
    lda SPRITE_CENTER_PLAYER_POS_X_BULLET_1
    cmp SPRITE_ENEMY_X_TANK_2
    bcc no_collision                    // Si menor, no hay colisión
    
    // ¿Centro bala <= X derecha tanque?
    lda SPRITE_CENTER_PLAYER_POS_X_BULLET_1
    cmp SPRITE_ENEMY_X_PLUS_OFFSET_TANK_2
    beq check_y_axis                    // Si igual, seguir comprobando Y
    bcs no_collision                    // Si mayor, no hay colisión
    
    // ========================================
    // PASO 4: Comprobar colisión en eje Y
    // ========================================
check_y_axis:
    // ¿Centro bala >= Y superior tanque?
    lda SPRITE_CENTER_PLAYER_POS_Y_BULLET_1
    cmp SPRITE_ENEMY_Y_TANK_2
    bcc no_collision                    // Si menor, no hay colisión
    
    // ¿Centro bala <= Y inferior tanque?
    lda SPRITE_CENTER_PLAYER_POS_Y_BULLET_1
    cmp SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_2
    beq collision_detected              // Si igual, ¡colisión!
    bcs no_collision                    // Si mayor, no hay colisión
    
    // Si llegamos aquí es porque pasó todas las pruebas
collision_detected:
    
    inc $d020                           // Cambiar color del borde
    jmp end_check

no_collision:
    // No hubo colisión, no hacer nada

end_check:
    pull_regs_from_stack()
    rts



/********************************************************************************/
/*                       Check if bullet tank 2 impact in tank 1                */
/********************************************************************************/


bullet_tank_2_impact_on_tank_1:
    push_regs_to_stack()

    /*
        lda #0
    sta SPRITE_CENTER_PLAYER_POS_X_BULLET_1
    sta SPRITE_CENTER_PLAYER_POS_Y_BULLET_1
    sta SPRITE_ENEMY_X_TANK_2
    sta SPRITE_ENEMY_Y_TANK_2
    sta SPRITE_ENEMY_X_PLUS_OFFSET_TANK_2
    sta SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_2
    
    */


    lda #0
    sta SPRITE_CENTER_PLAYER_POS_X_BULLET_2
    sta SPRITE_CENTER_PLAYER_POS_Y_BULLET_2
    sta SPRITE_ENEMY_X_TANK_1
    sta SPRITE_ENEMY_Y_TANK_1
    sta SPRITE_ENEMY_X_PLUS_OFFSET_TANK_1
    sta SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_1



    // ========================================
    // PASO 1: Calcular centro de BULLET_2
    // ========================================
    //ldx #1                              // Sprite BULLET_1
    //lda sprites_coord_table_x,x
    lda SPRITE_3_MEM_X
    clc
    adc #12                             // Centro X (mitad de 21 = aprox 12)
    sta SPRITE_CENTER_PLAYER_POS_X_BULLET_2
    
    lda SPRITE_3_MEM_Y //sprites_coord_table_y,x
    clc
    adc #10                             // Centro Y (mitad de 24 = aprox 10)
    sta SPRITE_CENTER_PLAYER_POS_Y_BULLET_2

    // ========================================
    // PASO 2: Obtener límites de TANK_1
    // ========================================
    ldx #0                              // Sprite TANK_1
    lda sprites_coord_table_x,x
    sta SPRITE_ENEMY_X_TANK_1           // X izquierda
    clc
    adc #19//21                             // X derecha (ancho completo)
    sta SPRITE_ENEMY_X_PLUS_OFFSET_TANK_1
    
    lda sprites_coord_table_y,x
    sta SPRITE_ENEMY_Y_TANK_1           // Y superior
    clc
    adc #15//24                             // Y inferior (alto completo)
    sta SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_1

    // ========================================
    // PASO 3: Comprobar colisión en eje X
    // ========================================
    // ¿Centro bala >= X izquierda tanque?
    lda SPRITE_CENTER_PLAYER_POS_X_BULLET_2
    cmp SPRITE_ENEMY_X_TANK_1
    bcc no_collision_on_tank_1                    // Si menor, no hay colisión
    
    // ¿Centro bala <= X derecha tanque?
    lda SPRITE_CENTER_PLAYER_POS_X_BULLET_2
    cmp SPRITE_ENEMY_X_PLUS_OFFSET_TANK_1
    beq check_y_axis_on_tank_1                    // Si igual, seguir comprobando Y
    bcs no_collision_on_tank_1                    // Si mayor, no hay colisión
    
    // ========================================
    // PASO 4: Comprobar colisión en eje Y
    // ========================================
check_y_axis_on_tank_1:
    // ¿Centro bala >= Y superior tanque?
    lda SPRITE_CENTER_PLAYER_POS_Y_BULLET_2
    cmp SPRITE_ENEMY_Y_TANK_1
    bcc no_collision_on_tank_1                    // Si menor, no hay colisión
    
    // ¿Centro bala <= Y inferior tanque?
    lda SPRITE_CENTER_PLAYER_POS_Y_BULLET_2
    cmp SPRITE_ENEMY_Y_PLUS_OFFSET_TANK_1
    beq collision_detected_on_tank_1              // Si igual, ¡colisión!
    bcs no_collision_on_tank_1                    // Si mayor, no hay colisión
    
    // Si llegamos aquí es porque pasó todas las pruebas
collision_detected_on_tank_1:
    
    inc $d020                           // Cambiar color del borde
    jmp end_check_on_tank_1

no_collision_on_tank_1:
    // No hubo colisión, no hacer nada

end_check_on_tank_1:
    pull_regs_from_stack()
    rts







/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/*                       PLAYER 1 - TANK 1 FUNCTIONS                          */


/* Function to move the bullets of tank 1 - tank 2 */
sprite_move_bullets_tank_1:
push_regs_to_stack()


    lda PLAYER_1_TANK_IS_FIRING
    cmp #0
    beq skip_move_bullet_tank_1
    jmp start_move_bullet_tank_1

    skip_move_bullet_tank_1:
    jmp exit_move_bullet_tank_1

    start_move_bullet_tank_1:

        lda PLAYER_1_TANK_FIRED_IN_UP    /* UP */
        cmp #PLAYER_UP
        beq aux_move_bullet_to_up_player_1
        jmp check_move_bullet_to_down_player_1
    aux_move_bullet_to_up_player_1:
        jmp move_bullet_to_up


    check_move_bullet_to_down_player_1:
        lda PLAYER_1_TANK_FIRED_IN_DOWN  /* DOWN  */
        cmp #PLAYER_DOWN
        beq aux_move_bullet_to_down_player_1
        jmp check_move_bullet_to_left_player_1

    aux_move_bullet_to_down_player_1:
        jmp move_bullet_to_down


    check_move_bullet_to_left_player_1:
        lda PLAYER_1_TANK_FIRED_IN_LEFT  /* LEFT  */
        cmp #PLAYER_LEFT
        beq aux_move_bullet_to_left
        jmp check_move_bullet_to_right_player_1

    aux_move_bullet_to_left:
        jmp move_bullet_to_left


    check_move_bullet_to_right_player_1:
        lda PLAYER_1_TANK_FIRED_IN_RIGHT  /* RIGHT  */
        cmp #PLAYER_RIGHT
        beq aux_move_bullet_to_right

    aux_move_bullet_to_right:
        jmp move_bullet_to_right


    move_bullet_to_up:

        
        lda $d003 // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #70   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcc bullet_limit_top               // si la bala llega a 80 px de alto
        sec
        sbc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta $d003
        

        // save current Y in sprites coords table
        ldx #1
        lda $d003
        sec
        sbc #40 // 50
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_Y_TEMP


        // also save X
        lda $d002
        sec     // offset for bullet
        sbc #12
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_X_TEMP

        //load coords
        ldx #1
        lda BULLET_TANK_1_X_TEMP //sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_1
        
        lda BULLET_TANK_1_Y_TEMP //sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_1


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_1

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_1
        cmp #67
        bne go_to_default_up 
        //inc $d020 // change border color
        jmp bullet_limit_top

        go_to_default_up:

            //inc $d020

            //Check if impact
            

            //default
            jmp exit_move_bullet_tank_1

        bullet_limit_top:
            //finish fire
            lda #0
            sta PLAYER_1_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_1
            //sprite_disable_sprite(1)
            jmp exit_move_bullet_tank_1


    move_bullet_to_down:

        

        lda $d003 // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #225   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcs bullet_limit_bottom               // si la bala llega a 80 px de alto
        clc 
        adc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta $d003

        // save current Y in sprites coords table
        ldx #1
        lda $d003

        clc 
        adc #-40
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x

        // also save X
        lda $d002

        sec     // offset for bullet
        sbc #12
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x


        //load coords
        ldx #1
        lda BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_1
        
        lda BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_1


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_1

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_1
        cmp #67
        bne go_to_default_down 
        //inc $d020 // change border color
        jmp bullet_limit_bottom



        go_to_default_down:
            jmp exit_move_bullet_tank_1



        bullet_limit_bottom:
            
            //finish fire
            lda #0
            sta PLAYER_1_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_1
            //sprite_disable_sprite(1)
            //default
            jmp exit_move_bullet_tank_1


    move_bullet_to_left:
        
        lda $d002 // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #40   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcc bullet_limit_left               // si la bala llega a 80 px de alto
        sec
        sbc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta $d002

        // save current Y in sprites coords table
        ldx #1
        lda $d003
        
        sec //sec
        sbc #40 //10 //sbc #40 // 50
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x

        // also save X
        lda $d002
        sec    // offset for bullet
        sbc #15 //26 *****
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x


        //load coords
        ldx #1
        lda BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_1
        
        lda BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_1


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_1

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_1
        cmp #67
        bne go_to_default_left 
        //inc $d020 // change border color
        jmp bullet_limit_left


        go_to_default_left:
            jmp exit_move_bullet_tank_1


        bullet_limit_left:
            
            //finish fire
            lda #0
            sta PLAYER_1_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_1
            //sprite_disable_sprite(1)
            //default
            jmp exit_move_bullet_tank_1


    move_bullet_to_right:

        
        lda $d002 // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #254 // 240   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcs bullet_limit_right               // si la bala llega a 80 px de alto
        clc
        adc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta $d002
        

        // save current Y in sprites coords table
        ldx #1
        lda $d003
        
        sec //sec
        sbc #40
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x

        // also save X
        lda $d002
        sec    // offset for bullet
        sbc #8 // 
        lsr
        lsr
        lsr
        sta BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x


        //load coords
        ldx #1
        lda BULLET_TANK_1_X_TEMP//sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_1
        
        lda BULLET_TANK_1_Y_TEMP//sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_1


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_1

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_1
        cmp #67
        bne go_to_default_right 
        //inc $d020 // change border color
        jmp bullet_limit_right


        go_to_default_right:
            jmp exit_move_bullet_tank_1


        bullet_limit_right:

            //finish fire
            lda #0
            sta PLAYER_1_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_1
            //sprite_disable_sprite(1)
            //default
            jmp exit_move_bullet_tank_1


    exit_move_bullet_tank_1:


pull_regs_from_stack()
rts



/* This function draw the bullet of tank 1 front of it . Depending of tank
position */
sprite_draw_bullet_in_tank_player_1:
push_regs_to_stack()

    /* 1 - Copy coords of Tank 1 to his sprite bullet */
    jsr SPRITE_LIB.sprite_copy_coords_tank_1_to_his_bullet

    /* 2 - First step is check the position in the moment of user press fire 
    button*/
    lda PLAYER_1_TANK_FIRED_IN_UP    /* UP */
    cmp #PLAYER_UP
    beq draw_bullet_to_up

    lda PLAYER_1_TANK_FIRED_IN_DOWN  /* DOWN  */
    cmp #PLAYER_DOWN
    beq draw_bullet_to_down

    lda PLAYER_1_TANK_FIRED_IN_LEFT  /* LEFT  */
    cmp #PLAYER_LEFT
    beq draw_bullet_to_left

    lda PLAYER_1_TANK_FIRED_IN_RIGHT  /* RIGHT  */
    cmp #PLAYER_RIGHT
    beq draw_bullet_to_right


    draw_bullet_to_up:

        /* Load the current Y of sprite ( bullet ). */
        ldx #SPRITE_BULLET_TANK_1
        lda sprites_coord_table_y,x

        /* Put the bullet front the cannon . Move a little X*/
        /* Set Y to bullet player 1 - Sprite 1 . Rest a little bit Y */
        sec
        sbc #15
        sta SPRITE_1_MEM_Y           // save Y MEM of sprite 1
        
        ldx #SPRITE_BULLET_TANK_1        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet


    draw_bullet_to_down:

        /* Load the current Y of bullet. */
        ldx #SPRITE_BULLET_TANK_1
        lda sprites_coord_table_y,x

        /* Set Y to bullet player 1 */
        sta SPRITE_1_MEM_Y           // save Y MEM of sprite 1
        clc
        adc #15             // substract 10 px to put the buller front the tank
        sta SPRITE_1_MEM_Y           // mover el sprite bala en la misma Y del sprite 
                            // player , para eso quitamos un poco para subirlo
        

        ldx #SPRITE_BULLET_TANK_1        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet


    draw_bullet_to_left:

        /* Load the current Y of sprite 2 ( bullet ). */
        ldx #SPRITE_BULLET_TANK_1
        lda sprites_coord_table_y,x

        /* Set Y to bullet player 1 */
        sta SPRITE_1_MEM_Y           // save Y MEM of sprite 1
        clc
        adc #1                // substract 10 px to put the buller front the tank
        sta SPRITE_1_MEM_Y           // mover el sprite bala en la misma Y del sprite 

        /* X */
        ldx #SPRITE_BULLET_TANK_1
        lda sprites_coord_table_x,x
        sta SPRITE_1_MEM_X           // save Y MEM of sprite 1
        sec
        sbc #20                // substract 10 px to put the buller front the tank
        sta SPRITE_1_MEM_X           // mover el sprite bala en la misma Y del sprite 

        
        ldx #SPRITE_BULLET_TANK_1        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet


    draw_bullet_to_right:

        /* Load the current X of sprite 2 ( bullet ). */
        ldx #SPRITE_BULLET_TANK_1
        lda sprites_coord_table_x,x

        /* Set X to bullet player 1 */
        clc
        adc #20             // substract 10 px to put the buller front the tank
        sta SPRITE_1_MEM_X           // save Y MEM of sprite 1
        
        ldx #SPRITE_BULLET_TANK_1
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet

    exit_draw_bullet:
    
pull_regs_from_stack()
rts




/* Copy coords Y - X of tank 1 to sprite bullet */
sprite_copy_coords_tank_1_to_his_bullet:
push_regs_to_stack()

    /* Get Y from Tank 1 */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x // get Y player position to put this value
                                // in the Y of sprite 2 ( bullet)
    
    ldx #SPRITE_BULLET_TANK_1   
    sta sprites_coord_table_y,x // Save the position Y of Player in Y of bullet
    sta SPRITE_1_MEM_Y


    /* Get X from Tank 1 */
    /* Copy X from tank 1 */
    ldx #SPRITE_TANK_1       
    lda sprites_coord_table_x,x // get X player position to save it in sprite 2

    /* Paste X to bullet tank 1 */
    ldx #SPRITE_BULLET_TANK_1
    sta sprites_coord_table_x,x // Save the Player X in X of sprite 2 ( bullet )
    
    sta SPRITE_1_MEM_X          // writing the value directly in the Sprite 2 X
                                // position memory

pull_regs_from_stack()
rts


/* Reset to 0 sprite index Player 1 */
sprite_reset_0_sprite_index_player_1:
push_regs_to_stack()

    sei
    ldx #0
    lda #0 // Set to 0 this index in the table
    sta sprites_current_animation_index_position_table,x
    cli

pull_regs_from_stack()
rts


/* 
    Reset all fired positions
*/
sprite_reset_player_1_fire_directions:
push_regs_to_stack()

    lda #0
    sta PLAYER_1_TANK_FIRED_IN_RIGHT
    sta PLAYER_1_TANK_FIRED_IN_LEFT
    sta PLAYER_1_TANK_FIRED_IN_DOWN
    sta PLAYER_1_TANK_FIRED_IN_UP

pull_regs_from_stack()
rts





/* Check WALL collision TOP of TANK 1 , offset cannon:
    Y = 1  , X = 6

    Wall char value : d67 - $43

 */



/*
    Function to check CANNON TIP wall collision of tank 1.

    IN: 

        PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
        PLAYER_1_TANK_OFFSET_CANNON_TIP_X

    OUT:
        
        PLAYER_1_TANK_1_CANNON_TIP_Y
        PLAYER_1_TANK_1_CANNON_TIP_X
*/
check_wall_cannon_tip_collision_tank_1:
push_regs_to_stack()

    /* Checking Cannon TIP */ 
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_1_TANK_OFFSET_CANNON_TIP_Y
    lsr
    lsr
    lsr
    sta PLAYER_1_TANK_1_CANNON_TIP_Y


    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    // apply X offset to point to center of cannon
    sec
    sbc PLAYER_1_TANK_OFFSET_CANNON_TIP_X
    lsr
    lsr
    lsr
    sta PLAYER_1_TANK_1_CANNON_TIP_X
    /* end Checking Cannon TIP */ 

pull_regs_from_stack()
rts

/*
    Function to check LEFT CHAIN wall collision of tank 1.

    IN: 

        PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
        PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X

    OUT:
        
        PLAYER_1_TANK_1_LEFT_CHAIN_Y
        PLAYER_1_TANK_1_LEFT_CHAIN_X
*/
check_wall_left_chain_collision_tank_1:
push_regs_to_stack()


    /* Check left tank chain */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_1_TANK_OFFSET_LEFT_CHAIN_Y
    lsr
    lsr
    lsr
    sta PLAYER_1_TANK_1_LEFT_CHAIN_Y
    //sta SCREEN_ROW_POS   // ( Y position)


    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sec
    sbc PLAYER_1_TANK_OFFSET_LEFT_CHAIN_X
    lsr
    lsr
    lsr
    //sta SCREEN_COL_POS  // ( X position)
    sta PLAYER_1_TANK_1_LEFT_CHAIN_X
    /* end Check left tank chain */


pull_regs_from_stack()
rts


/*
    Function to check RIGHT CHAIN wall collision of tank 1.

    IN: 

        PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
        PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X

    OUT:
        
        PLAYER_1_TANK_1_RIGHT_CHAIN_Y
        PLAYER_1_TANK_1_RIGHT_CHAIN_X
*/

check_wall_right_chain_collision_tank_1:
push_regs_to_stack()

    /* Check RIGHT tank chain */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_Y
    lsr
    lsr
    lsr
    sta PLAYER_1_TANK_1_RIGHT_CHAIN_Y


    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sec
    sbc PLAYER_1_TANK_OFFSET_RIGHT_CHAIN_X
    lsr
    lsr
    lsr
    sta PLAYER_1_TANK_1_RIGHT_CHAIN_X
    /* end Check RIGHT tank chain */

pull_regs_from_stack()
rts

/*                  END  PLAYER 1 - TANK 1 FUNCTIONS                          */
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/



/******************************************************************************/
/*        START PLAYER 2 FUNCTIONS */
/******************************************************************************/
/* This function draw the bullet of tank 1 front of it . Depending of tank
position */
sprite_draw_bullet_in_tank_player_2:
push_regs_to_stack()

    /* 1 - Copy coords of Tank 1 to his sprite bullet */
    jsr SPRITE_LIB.sprite_copy_coords_tank_2_to_his_bullet

    /* 2 - First step is check the position in the moment of user press fire 
    button*/
    lda PLAYER_2_TANK_FIRED_IN_UP    /* UP */
    cmp #PLAYER_UP
    beq draw_bullet_to_up_player_2

    lda PLAYER_2_TANK_FIRED_IN_DOWN  /* DOWN  */
    cmp #PLAYER_DOWN
    beq draw_bullet_to_down_player_2

    lda PLAYER_2_TANK_FIRED_IN_LEFT  /* LEFT  */
    cmp #PLAYER_LEFT
    beq draw_bullet_to_left_player_2

    lda PLAYER_2_TANK_FIRED_IN_RIGHT  /* RIGHT  */
    cmp #PLAYER_RIGHT
    beq draw_bullet_to_right_player_2


    draw_bullet_to_up_player_2:

        /* Load the current Y of sprite ( bullet ). */
        ldx #SPRITE_BULLET_TANK_2
        lda sprites_coord_table_y,x

        /* Put the bullet front the cannon . Move a little X*/
        /* Set Y to bullet player 2 - Sprite 1 . Rest a little bit Y */
        sec
        sbc #15
        sta SPRITE_3_MEM_Y           // save Y MEM of sprite 1
        
        ldx #SPRITE_BULLET_TANK_2        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet_player_2


    draw_bullet_to_down_player_2:

        /* Load the current Y of bullet. */
        ldx #SPRITE_BULLET_TANK_2
        lda sprites_coord_table_y,x

        /* Set Y to bullet player 2 */
        sta SPRITE_3_MEM_Y           // save Y MEM of sprite 1
        clc
        adc #15             // substract 10 px to put the buller front the tank
        sta SPRITE_3_MEM_Y           // mover el sprite bala en la misma Y del sprite 
                            // player , para eso quitamos un poco para subirlo
        

        ldx #SPRITE_BULLET_TANK_2        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet_player_2


    draw_bullet_to_left_player_2:

        /* Load the current Y of sprite 2 ( bullet ). */
        ldx #SPRITE_BULLET_TANK_2
        lda sprites_coord_table_y,x

        /* Set Y to bullet player 2 */
        sta SPRITE_3_MEM_Y           // save Y MEM of sprite 1
        clc
        adc #1                // substract 10 px to put the buller front the tank
        sta SPRITE_3_MEM_Y           // mover el sprite bala en la misma Y del sprite 

        /* X */
        ldx #SPRITE_BULLET_TANK_2
        lda sprites_coord_table_x,x
        sta SPRITE_3_MEM_X           // save Y MEM of sprite 1
        sec
        sbc #20                // substract 10 px to put the buller front the tank
        sta SPRITE_3_MEM_X           // mover el sprite bala en la misma Y del sprite 

        
        ldx #SPRITE_BULLET_TANK_2        
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet_player_2


    draw_bullet_to_right_player_2:

        /* Load the current X of sprite 2 ( bullet ). */
        ldx #SPRITE_BULLET_TANK_2
        lda sprites_coord_table_x,x

        /* Set X to bullet player 2 */
        clc
        adc #20             // substract 10 px to put the buller front the tank
        sta SPRITE_3_MEM_X           // save Y MEM of sprite 1
        
        ldx #SPRITE_BULLET_TANK_2
        sta sprites_coord_table_y,x // save the current Y pos in Sprite 2 (bullet P1)
        jmp exit_draw_bullet_player_2

    exit_draw_bullet_player_2:
    
pull_regs_from_stack()
rts



/* Copy coords Y - X of tank 2 to sprite bullet */
sprite_copy_coords_tank_2_to_his_bullet:
push_regs_to_stack()

    /* Get Y from tank 2 */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x // get Y player position to put this value
                                // in the Y of sprite 2 ( bullet)
    
    ldx #SPRITE_BULLET_TANK_2   
    sta sprites_coord_table_y,x // Save the position Y of Player in Y of bullet
    sta SPRITE_3_MEM_Y


    /* Get X from tank 2 */
    /* Copy X from tank 2 */
    ldx #SPRITE_TANK_2       
    lda sprites_coord_table_x,x // get X player position to save it in sprite 2

    /* Paste X to bullet tank 2 */
    ldx #SPRITE_BULLET_TANK_2
    sta sprites_coord_table_x,x // Save the Player X in X of sprite 2 ( bullet )
    
    sta SPRITE_3_MEM_X          // writing the value directly in the Sprite 2 X
                                // position memory

pull_regs_from_stack()
rts


sprite_move_bullets_tank_2:
push_regs_to_stack()

/*
    lda PLAYER_2_TANK_FIRED_IN_UP    // UP
    cmp #PLAYER_UP
    beq move_bullet_to_up_player_2

    lda PLAYER_2_TANK_FIRED_IN_DOWN  // DOWN 
    cmp #PLAYER_DOWN
    beq move_bullet_to_down_player_2

    lda PLAYER_2_TANK_FIRED_IN_LEFT  // LEFT 
    cmp #PLAYER_LEFT
    beq move_bullet_to_left_player_2

    lda PLAYER_2_TANK_FIRED_IN_RIGHT  / RIGHT
    cmp #PLAYER_RIGHT
    beq move_bullet_to_right_player_2

    */

    lda PLAYER_2_TANK_IS_FIRING
    cmp #0
    beq skip_move_bullet_tank_2
    jmp start_move_bullet_tank_2

    skip_move_bullet_tank_2:
        jmp exit_move_bullet_tank_2_player_2

    start_move_bullet_tank_2:

        lda PLAYER_2_TANK_FIRED_IN_UP    /* UP */
        cmp #PLAYER_UP
        beq aux_move_bullet_to_up_player_2
        jmp check_move_bullet_to_down_player_2
    aux_move_bullet_to_up_player_2:
        jmp move_bullet_to_up_player_2


    check_move_bullet_to_down_player_2:
        lda PLAYER_2_TANK_FIRED_IN_DOWN  /* DOWN  */
        cmp #PLAYER_DOWN
        beq aux_move_bullet_to_down_player_2
        jmp check_move_bullet_to_left_player_2

    aux_move_bullet_to_down_player_2:
        jmp move_bullet_to_down_player_2


    check_move_bullet_to_left_player_2:
        lda PLAYER_2_TANK_FIRED_IN_LEFT  /* LEFT  */
        cmp #PLAYER_LEFT
        beq aux_move_bullet_to_left_player_2
        jmp check_move_bullet_to_right_player_2

    aux_move_bullet_to_left_player_2:
        jmp move_bullet_to_left_player_2


    check_move_bullet_to_right_player_2:
        lda PLAYER_2_TANK_FIRED_IN_RIGHT  /* RIGHT  */
        cmp #PLAYER_RIGHT
        beq aux_move_bullet_to_right_player_2

    aux_move_bullet_to_right_player_2:
        jmp move_bullet_to_right_player_2




    //normal
    move_bullet_to_up_player_2:

       
        lda SPRITE_3_MEM_Y // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #70   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcc bullet_limit_top_player_2               // si la bala llega a 80 px de alto
        sec
        sbc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta SPRITE_3_MEM_Y

        // save current Y in sprites coords table
        ldx #3
        lda SPRITE_3_MEM_Y

        sec
        sbc #40 // 50
        lsr
        lsr
        lsr
        sta sprites_coord_table_y,x

        // also save X
        lda SPRITE_3_MEM_X

        sec     // offset for bullet
        sbc #12
        lsr
        lsr
        lsr
        sta sprites_coord_table_x,x


        //load coords
        ldx #3
        lda sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_2
        
        lda sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_2


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_2

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_2
        cmp #67
        bne go_to_default_up_player_2 
        //inc $d020 // change border color
        jmp bullet_limit_top_player_2


        go_to_default_up_player_2:
            //default
            jmp exit_move_bullet_tank_2_player_2

        bullet_limit_top_player_2:

            //finish fire
            lda #0
            sta PLAYER_2_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_2
            //sprite_disable_sprite(3)
            jmp exit_move_bullet_tank_2_player_2


    //-------//

    move_bullet_to_down_player_2:


        

        lda SPRITE_3_MEM_Y // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #225   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcs bullet_limit_bottom_player_2               // si la bala llega a 80 px de alto
        clc 
        adc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta SPRITE_3_MEM_Y

        // save current Y in sprites coords table
        ldx #3
        lda SPRITE_3_MEM_Y

        clc 
        adc #-40
        lsr
        lsr
        lsr
        sta sprites_coord_table_y,x

        // also save X
        lda SPRITE_3_MEM_X

        sec     // offset for bullet
        sbc #12
        lsr
        lsr
        lsr
        sta sprites_coord_table_x,x


        //load coords
        ldx #3
        lda sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_2
        
        lda sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_2


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_2

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_2
        cmp #67
        bne go_to_default_down_player_2 
        //inc $d020 // change border color
        jmp bullet_limit_bottom_player_2



        go_to_default_down_player_2:
            jmp exit_move_bullet_tank_2_player_2



        // normal
        bullet_limit_bottom_player_2:
            
            //finish fire
            lda #0
            sta PLAYER_2_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_2
            
            //sprite_disable_sprite(3)

            jmp exit_move_bullet_tank_2_player_2


    /**************/
    /*    LEFT    */
    /**************/

    move_bullet_to_left_player_2:

        /*
        lda SPRITE_3_MEM_X // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #40   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcc bullet_limit_left_player_2               // si la bala llega a 80 px de alto
        sec
        sbc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta SPRITE_3_MEM_X
        jmp exit_move_bullet_tank_2_player_2
        */

        lda SPRITE_3_MEM_X // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #40   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcc bullet_limit_left_player_2               // si la bala llega a 80 px de alto
        sec
        sbc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta SPRITE_3_MEM_X

        // save current Y in sprites coords table
        ldx #3
        lda SPRITE_3_MEM_Y
        
        sec //sec
        sbc #40 //10 //sbc #40 // 50
        lsr
        lsr
        lsr
        sta sprites_coord_table_y,x

        // also save X
        lda SPRITE_3_MEM_X
        sec    // offset for bullet
        sbc #15 //26 *****
        lsr
        lsr
        lsr
        sta sprites_coord_table_x,x


        //load coords
        ldx #3
        lda sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_2
        
        lda sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_2


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_2

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_2
        cmp #67
        bne go_to_default_left_player_2 
        //inc $d020 // change border color
        jmp bullet_limit_left_player_2

        go_to_default_left_player_2:
            jmp exit_move_bullet_tank_2_player_2



        /* Normal left */
        bullet_limit_left_player_2:
            
            //finish fire
            lda #0
            sta PLAYER_2_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_2
            

            //sprite_disable_sprite(3)

            jmp exit_move_bullet_tank_2_player_2



    /******************/
    /*     RIGHT      */
    /******************/

    move_bullet_to_right_player_2:

        lda SPRITE_3_MEM_X // Comprobamos si la bala se sale de los bordes de pantalla
        cmp #254 // 240   // si llego al tope, o colisiona con alguna pared ( de momento 
                  // los limites de pantalla) desaparecemos bala player 1

        bcs bullet_limit_right_player_2               // si la bala llega a 80 px de alto
        clc
        adc #BULLET_SPEED                         // decrement Y of bullet sprite player 1
        sta SPRITE_3_MEM_X
        

        // save current Y in sprites coords table
        ldx #3
        lda SPRITE_3_MEM_Y
        
        sec //sec
        sbc #40
        lsr
        lsr
        lsr
        sta sprites_coord_table_y,x

        // also save X
        lda SPRITE_3_MEM_X
        sec    // offset for bullet
        sbc #8 // 
        lsr
        lsr
        lsr
        sta sprites_coord_table_x,x


        //load coords
        ldx #3
        lda sprites_coord_table_x,x
        sta SCREEN_COL_POS_SCREEN_CHAR_BULLET_TANK_2
        
        lda sprites_coord_table_y,x
        sta SCREEN_ROW_POS_SCREEN_CHAR_BULLET_TANK_2


        //detect if bullet collides with a brik
        jsr PRINT_LIB.get_char_value_from_video_memory_bullet_tank_2

        lda CURRENT_CHAR_IN_SCREEN_BULLET_TANK_2
        cmp #67
        bne go_to_default_right_player_2 
        //inc $d020 // change border color
        jmp bullet_limit_right_player_2


        go_to_default_right_player_2:
            jmp exit_move_bullet_tank_2_player_2




        bullet_limit_right_player_2:

            //finish fire
            lda #0
            sta PLAYER_2_TANK_IS_FIRING
            jsr SPRITE_LIB.sprite_draw_bullet_in_tank_player_2
            

            //sprite_disable_sprite(3)


            jmp exit_move_bullet_tank_2_player_2


    exit_move_bullet_tank_2_player_2:


pull_regs_from_stack()
rts






















sprite_reset_player_2_fire_directions:
push_regs_to_stack()

    lda #0
    sta PLAYER_2_TANK_FIRED_IN_RIGHT
    sta PLAYER_2_TANK_FIRED_IN_LEFT
    sta PLAYER_2_TANK_FIRED_IN_DOWN
    sta PLAYER_2_TANK_FIRED_IN_UP

pull_regs_from_stack()
rts


/*
    Function to check CANNON TIP wall collision of tank 2.

    IN: 

        PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
        PLAYER_2_TANK_OFFSET_CANNON_TIP_X

    OUT:
        
        PLAYER_2_TANK_2_CANNON_TIP_Y
        PLAYER_2_TANK_2_CANNON_TIP_X
*/
check_wall_cannon_tip_collision_tank_2:
push_regs_to_stack()

    /* Checking Cannon TIP */ 
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_2_TANK_OFFSET_CANNON_TIP_Y
    lsr
    lsr
    lsr
    sta PLAYER_2_TANK_2_CANNON_TIP_Y


    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    // apply X offset to point to center of cannon
    sec
    sbc PLAYER_2_TANK_OFFSET_CANNON_TIP_X
    lsr
    lsr
    lsr
    sta PLAYER_2_TANK_2_CANNON_TIP_X
    /* end Checking Cannon TIP */ 

pull_regs_from_stack()
rts

/*
    Function to check LEFT CHAIN wall collision of tank 2.

    IN: 

        PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
        PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X

    OUT:
        
        PLAYER_2_TANK_2_LEFT_CHAIN_Y
        PLAYER_2_TANK_2_LEFT_CHAIN_X
*/
check_wall_left_chain_collision_tank_2:
push_regs_to_stack()


    /* Check left tank chain */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_2_TANK_OFFSET_LEFT_CHAIN_Y
    lsr
    lsr
    lsr
    sta PLAYER_2_TANK_2_LEFT_CHAIN_Y
    //sta SCREEN_ROW_POS   // ( Y position)


    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sec
    sbc PLAYER_2_TANK_OFFSET_LEFT_CHAIN_X
    lsr
    lsr
    lsr
    //sta SCREEN_COL_POS  // ( X position)
    sta PLAYER_2_TANK_2_LEFT_CHAIN_X
    /* end Check left tank chain */


pull_regs_from_stack()
rts


/*
    Function to check RIGHT CHAIN wall collision of tank 2.

    IN: 

        PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
        PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X

    OUT:
        
        PLAYER_2_TANK_2_RIGHT_CHAIN_Y
        PLAYER_2_TANK_2_RIGHT_CHAIN_X
*/

check_wall_right_chain_collision_tank_2:
push_regs_to_stack()

    /* Check RIGHT tank chain */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x

    // apply Y offset to point to center of cannon
    sec
    sbc PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_Y
    lsr
    lsr
    lsr
    sta PLAYER_2_TANK_2_RIGHT_CHAIN_Y


    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sec
    sbc PLAYER_2_TANK_OFFSET_RIGHT_CHAIN_X
    lsr
    lsr
    lsr
    sta PLAYER_2_TANK_2_RIGHT_CHAIN_X
    /* end Check RIGHT tank chain */

pull_regs_from_stack()
rts


/******************************************************************************/
/*                     END PLAYER 2 FUNCITONS                                 */
/******************************************************************************/


/******************************************************************************/
/*              Check if tank 1 is in collision with tank 2                   */
/*                                                                            */ 
/*  OUT: PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2                             */
/******************************************************************************/
check_if_tank_1_collides_with_tank_2_in_up:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    dec PLAYER_1_TANK_1_CURRENT_Y
    //dec PLAYER_1_TANK_1_CURRENT_Y
    //dec PLAYER_1_TANK_1_CURRENT_Y
    //dec PLAYER_1_TANK_1_CURRENT_Y



    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x1 < x2 + 24 (izquierda de tank1 < derecha de tank2)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_2_in_up     // Si x2+24 < x1, no hay colisión
    
    // Comparación 2: x1 + 24 > x2 (derecha de tank1 > izquierda de tank2)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_2_in_up     // Si x1+24 < x2, no hay colisión
    beq no_collision_with_tank_2_in_up     // Si x1+24 = x2, no hay colisión
    
    // Comparación 3: y1 < y2 + 21 (arriba de tank1 < abajo de tank2)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                         // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_2_in_up     // Si y2+21 < y1, no hay colisión
    
    // Comparación 4: y1 + 21 > y2 (abajo de tank1 > arriba de tank2)
    lda PLAYER_1_TANK_1_CURRENT_Y    // ← ¡AQUÍ ESTABA EL ERROR! Era _X y debe ser _Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_2_in_up     // Si y1+21 < y2, no hay colisión
    beq no_collision_with_tank_2_in_up     // Si y1+21 = y2, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    no_collision_with_tank_2_in_up:
    
    pull_regs_from_stack()
rts


check_if_tank_1_collides_with_tank_2_in_down:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    inc PLAYER_1_TANK_1_CURRENT_Y
    //inc PLAYER_1_TANK_1_CURRENT_Y
    //inc PLAYER_1_TANK_1_CURRENT_Y
    //inc PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x1 < x2 + 24 (izquierda de tank1 < derecha de tank2)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_2_in_down     // Si x2+24 < x1, no hay colisión
    
    // Comparación 2: x1 + 24 > x2 (derecha de tank1 > izquierda de tank2)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_2_in_down     // Si x1+24 < x2, no hay colisión
    beq no_collision_with_tank_2_in_down     // Si x1+24 = x2, no hay colisión
    
    // Comparación 3: y1 < y2 + 21 (arriba de tank1 < abajo de tank2)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                         // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_2_in_down     // Si y2+21 < y1, no hay colisión
    
    // Comparación 4: y1 + 21 > y2 (abajo de tank1 > arriba de tank2)
    lda PLAYER_1_TANK_1_CURRENT_Y    // ← ¡AQUÍ ESTABA EL ERROR! Era _X y debe ser _Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_2_in_down     // Si y1+21 < y2, no hay colisión
    beq no_collision_with_tank_2_in_down     // Si y1+21 = y2, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    no_collision_with_tank_2_in_down:
    
    pull_regs_from_stack()
rts


check_if_tank_1_collides_with_tank_2_in_left:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    dec PLAYER_1_TANK_1_CURRENT_X
    //dec PLAYER_1_TANK_1_CURRENT_X
    //dec PLAYER_1_TANK_1_CURRENT_X
    //dec PLAYER_1_TANK_1_CURRENT_X


    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x1 < x2 + 24 (izquierda de tank1 < derecha de tank2)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_2_in_left     // Si x2+24 < x1, no hay colisión
    
    // Comparación 2: x1 + 24 > x2 (derecha de tank1 > izquierda de tank2)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_2_in_left     // Si x1+24 < x2, no hay colisión
    beq no_collision_with_tank_2_in_left     // Si x1+24 = x2, no hay colisión
    
    // Comparación 3: y1 < y2 + 21 (arriba de tank1 < abajo de tank2)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_2_in_left     // Si y2+21 < y1, no hay colisión
    
    // Comparación 4: y1 + 21 > y2 (abajo de tank1 > arriba de tank2)
    lda PLAYER_1_TANK_1_CURRENT_Y    // ← ¡AQUÍ ESTABA EL ERROR! Era _X y debe ser _Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_2_in_left     // Si y1+21 < y2, no hay colisión
    beq no_collision_with_tank_2_in_left     // Si y1+21 = y2, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    no_collision_with_tank_2_in_left:
    
    pull_regs_from_stack()
rts



check_if_tank_1_collides_with_tank_2_in_right:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    inc PLAYER_1_TANK_1_CURRENT_X
    //inc PLAYER_1_TANK_1_CURRENT_X
    //inc PLAYER_1_TANK_1_CURRENT_X


    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x1 < x2 + 24 (izquierda de tank1 < derecha de tank2)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_2_in_right     // Si x2+24 < x1, no hay colisión
    
    // Comparación 2: x1 + 24 > x2 (derecha de tank1 > izquierda de tank2)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_2_in_right     // Si x1+24 < x2, no hay colisión
    beq no_collision_with_tank_2_in_right     // Si x1+24 = x2, no hay colisión
    
    // Comparación 3: y1 < y2 + 21 (arriba de tank1 < abajo de tank2)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_2_in_right     // Si y2+21 < y1, no hay colisión
    
    // Comparación 4: y1 + 21 > y2 (abajo de tank1 > arriba de tank2)
    lda PLAYER_1_TANK_1_CURRENT_Y    // ← ¡AQUÍ ESTABA EL ERROR! Era _X y debe ser _Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_2_in_right     // Si y1+21 < y2, no hay colisión
    beq no_collision_with_tank_2_in_right     // Si y1+21 = y2, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    no_collision_with_tank_2_in_right:
    
    pull_regs_from_stack()
rts



check_if_tank_1_collides_with_tank_2_in_back_in_right:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    inc PLAYER_1_TANK_1_CURRENT_X
    //inc PLAYER_1_TANK_1_CURRENT_X
    //inc PLAYER_1_TANK_1_CURRENT_X


    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x1 < x2 + 24 (izquierda de tank1 < derecha de tank2)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #0                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_2_in_back_in_right     // Si x2+24 < x1, no hay colisión
    
    // Comparación 2: x1 + 24 > x2 (derecha de tank1 > izquierda de tank2)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                         // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_2_in_back_in_right     // Si x1+24 < x2, no hay colisión
    beq no_collision_with_tank_2_in_back_in_right     // Si x1+24 = x2, no hay colisión
    
    // Comparación 3: y1 < y2 + 21 (arriba de tank1 < abajo de tank2)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #0                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_2_in_back_in_right     // Si y2+21 < y1, no hay colisión
    
    // Comparación 4: y1 + 21 > y2 (abajo de tank1 > arriba de tank2)
    lda PLAYER_1_TANK_1_CURRENT_Y    // ← ¡AQUÍ ESTABA EL ERROR! Era _X y debe ser _Y
    clc
    adc #20                         // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_2_in_back_in_right     // Si y1+21 < y2, no hay colisión
    beq no_collision_with_tank_2_in_back_in_right     // Si y1+21 = y2, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_1_TANK_1_IN_COLLISION_WITH_TANK_2

    no_collision_with_tank_2_in_back_in_right:
    
    pull_regs_from_stack()
rts



//-------------------------------------------------------------------------------------------------------------/

/* Function to check collision between TANK 2 VS TANK 1*/
check_if_tank_2_collides_with_tank_1_in_up:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    dec PLAYER_2_TANK_2_CURRENT_Y
    //dec PLAYER_2_TANK_2_CURRENT_Y
    //dec PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x2 < x1 + 24 (izquierda de tank2 < derecha de tank1)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                         // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_1_in_up     // Si x1+24 < x2, no hay colisión
    
    // Comparación 2: x2 + 24 > x1 (derecha de tank2 > izquierda de tank1)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_1_in_up     // Si x2+24 < x1, no hay colisión
    beq no_collision_with_tank_1_in_up     // Si x2+24 = x1, no hay colisión
    
    // Comparación 3: y2 < y1 + 21 (arriba de tank2 < abajo de tank1)
    lda PLAYER_1_TANK_1_CURRENT_Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_1_in_up     // Si y1+21 < y2, no hay colisión
    
    // Comparación 4: y2 + 21 > y1 (abajo de tank2 > arriba de tank1)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_1_in_up     // Si y2+21 < y1, no hay colisión
    beq no_collision_with_tank_1_in_up     // Si y2+21 = y1, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    no_collision_with_tank_1_in_up:
    
    pull_regs_from_stack()
rts


check_if_tank_2_collides_with_tank_1_in_down:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    inc PLAYER_2_TANK_2_CURRENT_Y
    //inc PLAYER_2_TANK_2_CURRENT_Y
    //inc PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x2 < x1 + 24 (izquierda de tank2 < derecha de tank1)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_1_in_down     // Si x1+24 < x2, no hay colisión
    
    // Comparación 2: x2 + 24 > x1 (derecha de tank2 > izquierda de tank1)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_1_in_down     // Si x2+24 < x1, no hay colisión
    beq no_collision_with_tank_1_in_down     // Si x2+24 = x1, no hay colisión
    
    // Comparación 3: y2 < y1 + 21 (arriba de tank2 < abajo de tank1)
    lda PLAYER_1_TANK_1_CURRENT_Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_1_in_down     // Si y1+21 < y2, no hay colisión
    
    // Comparación 4: y2 + 21 > y1 (abajo de tank2 > arriba de tank1)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_1_in_down     // Si y2+21 < y1, no hay colisión
    beq no_collision_with_tank_1_in_down     // Si y2+21 = y1, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    no_collision_with_tank_1_in_down:
    
    pull_regs_from_stack()
rts


check_if_tank_2_collides_with_tank_1_in_left:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    dec PLAYER_2_TANK_2_CURRENT_X
    //dec PLAYER_2_TANK_2_CURRENT_X
    //dec PLAYER_2_TANK_2_CURRENT_X

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x2 < x1 + 24 (izquierda de tank2 < derecha de tank1)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_1_in_left     // Si x1+24 < x2, no hay colisión
    
    // Comparación 2: x2 + 24 > x1 (derecha de tank2 > izquierda de tank1)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_1_in_left     // Si x2+24 < x1, no hay colisión
    beq no_collision_with_tank_1_in_left     // Si x2+24 = x1, no hay colisión
    
    // Comparación 3: y2 < y1 + 21 (arriba de tank2 < abajo de tank1)
    lda PLAYER_1_TANK_1_CURRENT_Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_1_in_left     // Si y1+21 < y2, no hay colisión
    
    // Comparación 4: y2 + 21 > y1 (abajo de tank2 > arriba de tank1)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_1_in_left     // Si y2+21 < y1, no hay colisión
    beq no_collision_with_tank_1_in_left     // Si y2+21 = y1, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    no_collision_with_tank_1_in_left:
    
    pull_regs_from_stack()
rts


check_if_tank_2_collides_with_tank_1_in_right:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    inc PLAYER_2_TANK_2_CURRENT_X
    //inc PLAYER_2_TANK_2_CURRENT_X
    //inc PLAYER_2_TANK_2_CURRENT_X

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x2 < x1 + 24 (izquierda de tank2 < derecha de tank1)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #20                          // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_1_in_right     // Si x1+24 < x2, no hay colisión
    
    // Comparación 2: x2 + 24 > x1 (derecha de tank2 > izquierda de tank1)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_1_in_right     // Si x2+24 < x1, no hay colisión
    beq no_collision_with_tank_1_in_right     // Si x2+24 = x1, no hay colisión
    
    // Comparación 3: y2 < y1 + 21 (arriba de tank2 < abajo de tank1)
    lda PLAYER_1_TANK_1_CURRENT_Y
    clc
    adc #20                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_1_in_right     // Si y1+21 < y2, no hay colisión
    
    // Comparación 4: y2 + 21 > y1 (abajo de tank2 > arriba de tank1)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_1_in_right     // Si y2+21 < y1, no hay colisión
    beq no_collision_with_tank_1_in_right     // Si y2+21 = y1, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    no_collision_with_tank_1_in_right:
    
    pull_regs_from_stack()
rts




check_if_tank_2_collides_with_tank_1_in_back_in_right:
push_regs_to_stack()

    /* set to 0 the collision flag */
    lda #0
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    /* Get current Y,X of tank 2 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_2
    lda sprites_coord_table_y,x
    sta PLAYER_2_TANK_2_CURRENT_Y

    ldx #SPRITE_TANK_2
    lda sprites_coord_table_x,x
    sta PLAYER_2_TANK_2_CURRENT_X

    inc PLAYER_2_TANK_2_CURRENT_X
    //inc PLAYER_2_TANK_2_CURRENT_X
    //inc PLAYER_2_TANK_2_CURRENT_X

    /* Get current Y,X of tank 1 - SIN SUMAR NADA */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    sta PLAYER_1_TANK_1_CURRENT_Y

    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    sta PLAYER_1_TANK_1_CURRENT_X

    /* Las 4 comparaciones para detectar colisión */
    /* Usamos tamaño 24x21 (sprite completo) */
    
    // Comparación 1: x2 < x1 + 24 (izquierda de tank2 < derecha de tank1)
    lda PLAYER_1_TANK_1_CURRENT_X
    clc
    adc #0                         // x1 + 24 (derecha del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_X
    bcc no_collision_with_tank_1_in_back_in_right     // Si x1+24 < x2, no hay colisión
    
    // Comparación 2: x2 + 24 > x1 (derecha de tank2 > izquierda de tank1)
    lda PLAYER_2_TANK_2_CURRENT_X
    clc
    adc #20                          // x2 + 24 (derecha del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_X
    bcc no_collision_with_tank_1_in_back_in_right     // Si x2+24 < x1, no hay colisión
    beq no_collision_with_tank_1_in_back_in_right     // Si x2+24 = x1, no hay colisión
    
    // Comparación 3: y2 < y1 + 21 (arriba de tank2 < abajo de tank1)
    lda PLAYER_1_TANK_1_CURRENT_Y
    clc
    adc #0                          // y1 + 21 (abajo del tank 1)
    cmp PLAYER_2_TANK_2_CURRENT_Y
    bcc no_collision_with_tank_1_in_back_in_right     // Si y1+21 < y2, no hay colisión
    
    // Comparación 4: y2 + 21 > y1 (abajo de tank2 > arriba de tank1)
    lda PLAYER_2_TANK_2_CURRENT_Y
    clc
    adc #20                          // y2 + 21 (abajo del tank 2)
    cmp PLAYER_1_TANK_1_CURRENT_Y
    bcc no_collision_with_tank_1_in_back_in_right     // Si y2+21 < y1, no hay colisión
    beq no_collision_with_tank_1_in_back_in_right     // Si y2+21 = y1, no hay colisión
    
    // Si llegamos aquí, ¡HAY COLISIÓN!
    lda #1
    sta PLAYER_2_TANK_2_IN_COLLISION_WITH_TANK_1

    no_collision_with_tank_1_in_back_in_right:
    
    pull_regs_from_stack()
rts





























/* End functions to check collisions between TANK 2 VS TANK 1 */























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
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_y,x
    //clc 
    //adc #10   // add 10 to point to the center of the sprite player COLS
    sta SPRITE_CENTER_PLAYER_POS_Y

    /* set center X */
    ldx #SPRITE_TANK_1
    lda sprites_coord_table_x,x
    //clc 
    //adc #12 // add 12 to set the center of sprite player ROWS
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
sprite_set_animation_rotate_tank_1_up:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_up_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_up_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: RIGHT */
sprite_set_animation_rotate_tank_1_right:
push_regs_to_stack()

    ldx #0 // <--- Sprite 0 Player
    lda #<sprite_player_1_right_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_right_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: LEFT */
sprite_set_animation_rotate_tank_1_left:
push_regs_to_stack()

    ldx #SPRITE_TANK_1 // <--- Sprite 0 Player
    lda #<sprite_player_1_left_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_left_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: DOWN */
sprite_set_animation_rotate_tank_1_down:
push_regs_to_stack()

    ldx #SPRITE_TANK_1 // <--- Sprite 0 Player
    lda #<sprite_player_1_down_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_1_down_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts


/************************************************/
/*        ANIMATIONS PLAYER 2                   */
/************************************************/
sprite_set_animation_rotate_tank_2_up:
push_regs_to_stack()

    ldx #SPRITE_TANK_2 
    lda #<sprite_player_2_up_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_2_up_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: RIGHT */
sprite_set_animation_rotate_tank_2_right:
push_regs_to_stack()

    ldx #SPRITE_TANK_2 
    lda #<sprite_player_2_right_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_2_right_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: LEFT */
sprite_set_animation_rotate_tank_2_left:
push_regs_to_stack()

    ldx #SPRITE_TANK_2
    lda #<sprite_player_2_left_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_2_left_tank
    sta sprite_animations_list_HI_table,x

pull_regs_from_stack()
rts

/* Play animation rotation: DOWN */
sprite_set_animation_rotate_tank_2_down:
push_regs_to_stack()

    ldx #SPRITE_TANK_2
    lda #<sprite_player_2_down_tank
    sta sprite_animations_list_LO_table,x 
    lda #>sprite_player_2_down_tank
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





/******************************************************************************/
/*                    PLAYER 2 - KEYBOARD Movements                           */
/******************************************************************************/

































}