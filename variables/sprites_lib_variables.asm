/* Variables to save the position tank player 1 */
PLAYER_1_TANK_CURRENT_DIRECTION: .byte PLAYER_UP

/* Variables to save the NEW position tank player 1 */
PLAYER_1_TANK_NEW_DIRECTION: .byte PLAYER_UP 
PLAYER_1_TANK_IS_ROTATING:   .byte 0

/* Variables to save the position when the player press fire button */
PLAYER_1_TANK_FIRED_IN_RIGHT: .byte 0
PLAYER_1_TANK_FIRED_IN_LEFT:  .byte 0
PLAYER_1_TANK_FIRED_IN_DOWN:  .byte 0
PLAYER_1_TANK_FIRED_IN_UP:    .byte 0
PLAYER_1_TANK_IS_FIRING: .byte 0

/* Variable to check if the player tank 1 is in moving */
PLAYER_1_TANK_IS_IN_MOVING: .byte 0


/* Variable to save the current screen char from cannon of tank 1 */
PLAYER_1_TANK_CURRENT_CHAR_TANK_FRONT_CANNON: .byte 0


PLAYER_1_TANK_1_CURRENT_Y: .byte 0
PLAYER_1_TANK_1_CURRENT_X: .byte 0




/* Variable to set if the player 1 can move. This is used in the moment of
animation rotation. We want block the sprite movement in this rotation move.
0 = true
1 = false
 */
PLAYER_1_ALLOWED_MOVE: .byte PLAYER_ALLOWED_MOVE




/*
    ------------- PLAYER 2 -------------
 */


/* PLAYER 2 */
PLAYER_2_TANK_POSITION: .byte PLAYER_DOWN


/* Pointer where start the sprites information, the pictures.
Each sprite are 64 bytes. */
SPRITE_INDEX_POINTER: .byte SPRITES_ADDRESS / $40  //  ( $3000 / 64 )


/* Values to save the current coords Y-X of a sprite player. Byte default 
is the sprite 0 */
SPRITE_CENTER_PLAYER_POS_X: .byte 0
SPRITE_CENTER_PLAYER_POS_Y: .byte 0

/* Variable to save the sprite index to check the collision on it */
SPRITE_TO_CHECK: .byte 0

/* Variable to save the wich sprite is in collision.
The default value is in 255 because the sprites are from 0 to 7 ( 8 sprites )
 */
SPRITE_IN_COLLISION: .byte 255

/* This variables are use to save the current value of other sprites 
( not player), can be a sprite enemy for example */
SPRITE_ENEMY_X: .byte 0
SPRITE_ENEMY_X_PLUS_OFFSET: .byte 0

SPRITE_ENEMY_Y: .byte 0
SPRITE_ENEMY_Y_PLUS_OFFSET: .byte 0

/* INDEX SPRITE   */
SPRITE_INDEX_COUNTER: .byte 0


/* SPRITE INDEX COUNTER IN RASTER INTERRUPT */
SPRITE_INDEX_COUNTER_RASTER_LOOP: .byte 0


/* TEMP VARIABLES for print the enemy Y-X values */
SPRITE_TEMP_Y: .byte 0
SPRITE_TEMP_X: .byte 0

/* SPRITE_FRAME_POINTER: Value used to point to a sprite in a sprite pointer */
SPRITE_FRAME_POINTER: .byte 0 

/* SPRITE_TO_ENABLE: Value to select a sprite and enable it. Used in 
macro "sprite_enable_sprite" */
SPRITE_TO_ENABLE:     .byte 0



/* IGNORE RESET ANIMATION INDEX TO 0. This table is used in collision function.
This is used to avoid reset always to 0 the reset animation index. In a 
collision , we can need set other animation. If we do not use this table for
each sprite, in the function check collision, we will see always the frame 0
in the new animation. For example , if the player shut a bullet to a 
"enemy collision", we need show other animation with the enemy in dead */
IGNORE_RESET_ANIMATION_INDEX_TABLE: 
.byte 0  // Sprite 0
.byte 0  // Sprite 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0


IGNORE_RESET_ANIMATION_NO_COLLISION_INDEX_TABLE: 
.byte 0  // Sprite 0
.byte 0  // Sprite 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0



/* SPRITE_COLOR: Value to set a sprite color */
SPRITE_COLOR:         .byte 0

/* TODO: move to a table*/ 
SPRITE_Y_POS:         .byte 0
SPRITE_X_POS:         .byte 0


/* SPRITE_PAD_INDEX: Returned value index in the sprite pad pallete. 
   Used in function: sprite_get_current_index_sprite_pad_value_animation */
SPRITE_PAD_INDEX:      .byte 0

/* SPRITE_ANIMATION_VALUE_OFFSET: Value used into the function
"sprite_get_current_index_sprite_pad_value_animation" , to move us in a 
sprite animation list */
SPRITE_ANIMATION_VALUE_OFFSET: .byte 0

/* ANIMATION_FRAMES_LIST_LO and ANIMATION_FRAMES_LIST_HI:

Values with contains the LOW and HIGHT bytes of a animation list address.
They are used in function "sprite_get_current_index_sprite_pad_value_animation"
to create the ZP pointer used in this function */
ANIMATION_FRAMES_LIST_LO: .byte 0
ANIMATION_FRAMES_LIST_HI: .byte 0

/******************************************************************************/
/* SPRITE TABLES */
/*  This 2 tables are main list where are listed all animations. We get the
    HI and LOW bytes to create a address in the ZERO PAGE using: 
    
        - ZERO_PAGE_SPRITE_HIGHT_BYTE
        - ZERO_PAGE_SPRITE_LOW_BYTE

    The limit list is 8 Sprites.


    THE ORDER HERE IS VERY IMPORTANT !!!!! for testing Im using the same
    animation list but the order of LO_table and HI_table must equal. The
    unique diference will be the < > symbol

*******************************************************************************/
sprite_animations_list_LO_table:
    .byte <sprite_player_1_up_tank  // Animation for sprite 1
    .byte <sprite_player_1_bullet_tank  // Animation for sprite 2
    .byte <sprite_player_2_down_tank  // Animation for sprite 3
    .byte 0  // Animation for sprite 4
    .byte 0  // Animation for sprite 5
    .byte 0  // Animation for sprite 6
    .byte 0  // Animation for sprite 7
    .byte 0  // Animation for sprite 8

    
sprite_animations_list_HI_table:
    .byte >sprite_player_1_up_tank  // Animation for sprite 1
    .byte >sprite_player_1_bullet_tank// Animation for sprite 2
    .byte >sprite_player_2_down_tank  // Animation for sprite 3
    .byte 0  // Animation for sprite 4
    .byte 0  // Animation for sprite 5
    .byte 0  // Animation for sprite 6
    .byte 0  // Animation for sprite 7
    .byte 0  // Animation for sprite 8

sprite_animations_list_LO_table_backup:
    .byte <sprite_player_1_up_tank  // Animation for sprite 1
    .byte <sprite_player_1_bullet_tank  // Animation for sprite 2
    .byte <sprite_player_2_down_tank  // Animation for sprite 3
    .byte 0  // Animation for sprite 4
    .byte 0  // Animation for sprite 5
    .byte 0  // Animation for sprite 6
    .byte 0  // Animation for sprite 7
    .byte 0  // Animation for sprite 8

    
sprite_animations_list_HI_table_backup:
    .byte >sprite_player_1_up_tank  // Animation for sprite 1
    .byte >sprite_player_1_bullet_tank  // Animation for sprite 2
    .byte >sprite_player_2_down_tank  // Animation for sprite 3
    .byte 0  // Animation for sprite 4
    .byte 0  // Animation for sprite 5
    .byte 0  // Animation for sprite 6
    .byte 0  // Animation for sprite 7
    .byte 0  // Animation for sprite 8


/* DEAD ANIMATION FOR EACH SPRITE  */
sprite_dead_list_LO_table:
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead
    .byte <sprite_animation_dead

    
sprite_dead_list_HI_table:
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead
    .byte >sprite_animation_dead



/* SPRITE STATE TABLE: 
    0 = normal
    1 = in collision
    2 = dead  
*/    
sprites_state_table:
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0


/*
    This tables are used to set the coords for each sprite
*/
/* SPRITES COORDS Y */
sprites_coord_table_y:
    .byte 0  // coor Y for sprite 1
    .byte 0  // coor Y for sprite 2
    .byte 0  // coor Y for sprite 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0

/* SPRITES COORDS X */
sprites_coord_table_x:
    .byte 0  // coor X for sprite 1
    .byte 0  // coor X for sprite 2
    .byte 0  // coor X for sprite 3
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0



/* 
This table is used to set a raster iterations limit for each sprite. This means,
for example if the sprite 0 is in 20 called raster interruptions, we must change
the frame in the current animation, this is move the the next item in the
animation list.
*/
sprites_rasters_limit_table:
    .byte 1 // Speed for Sprite 1
    .byte 1 // Speed for Sprite 2 Bullet Player 1
    .byte 40 // Speed for Sprite 3
    .byte 50 // Speed for Sprite 4
    .byte 25 // Speed for Sprite 5
    .byte 15 // Speed for Sprite 6
    .byte 8 // Speed for Sprite 7
    .byte 4 // Speed for Sprite 8


sprites_rasters_limit_table_backup:
    .byte 1 // Speed for Sprite 1
    .byte 1 // Speed for Sprite 2 Bullet Player 1
    .byte 40 // Speed for Sprite 3
    .byte 50 // Speed for Sprite 4
    .byte 25 // Speed for Sprite 5
    .byte 15 // Speed for Sprite 6
    .byte 8 // Speed for Sprite 7
    .byte 4 // Speed for Sprite 8



/* This table is used to save in each SPRITE how many iterations of the
RASTER INTERRUPT are done. It is to save the counter , like a variable 
"counter" in any hight language level */
sprites_raster_counters_table:
    .byte 0  // current frame counter sprite 1
    .byte 0  // current frame counter sprite 2
    .byte 0  // current frame counter sprite 3
    .byte 0  // current frame counter sprite 4
    .byte 0  // current frame counter sprite 5
    .byte 0  // current frame counter sprite 6
    .byte 0  // current frame counter sprite 7
    .byte 0  // current frame counter sprite 8



sprites_raster_counters_table_backup:
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0


/* 

    In this table is saved the number of frame of the animation list associated
    for each frame. This means, if the animation list have 8 frames , in each
    position in this table we save the current frame ( index ) of this list.

    For example ,in sprite 1 ( 3 ) . Save the current animation frame index 
    showed in screen

*/
sprites_current_animation_index_position_table:
    .byte 0  // current animation frame index sprite 1
    .byte 0  // current animation frame index sprite 2
    .byte 0  // current animation frame index sprite 3
    .byte 0  // current animation frame index sprite 4
    .byte 0  // current animation frame index sprite 5
    .byte 0  // current animation frame index sprite 6
    .byte 0  // current animation frame index sprite 7
    .byte 0  // current animation frame index sprite 8

sprites_current_animation_index_position_table_backup:
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0







/*

    Tables to point to a animation in sprites

*/

sprite_current_anim_LO_table: 
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0

sprite_current_anim_HI_table: 
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0


/* ************************************************** */
/*            Individual animations                   */
/* ************************************************** */

/* Animation full: count 1 to 10 */
sprite_animation_dead:
    .byte 9   // Frame 0 in Sprite pad
    .byte 10  // Frame 1 in Sprite pad
    .byte 255 // Finish animation


/* Player 1 UP */
sprite_player_1_up_tank:
    .byte 0   // Frame 0 in Sprite pad
    .byte 76
    .byte 255

/* Player 1 DOWN */
sprite_player_1_down_tank:
    .byte 37   // Frame 0 in Sprite pad
    .byte 78
    .byte 255

/* Player 1 LEFT */
sprite_player_1_left_tank:
    .byte 19   // Frame 0 in Sprite pad
    .byte 77
    .byte 255

/* Player 1 RIGHT */
sprite_player_1_right_tank:
    .byte 8   // Frame 0 in Sprite pad
    .byte 75
    .byte 255








/* Player 1 UP  + RIGHT*/
sprite_player_1_up_and_right_tank:
    .byte 4   // Frame 0 in Sprite pad
    .byte 255




/* Player 1 DOWN + RIGHT*/
sprite_player_1_down_and_right_tank:
    .byte 33   // Frame 0 in Sprite pad
    .byte 255




/* Player 1 DOWN + LEFT */
sprite_player_1_down_and_left_tank:
    .byte 51   // Frame 0 in Sprite pad
    .byte 255


/* Player 1 UP  + LEFT */
sprite_player_1_up_and_left_tank:
    .byte 15   // Frame 0 in Sprite pad
    .byte 255





/* Player 1 : Animation UP to RIGHT  */
sprite_player_1_animation_up_right_tank:
    .byte 0   
    .byte 1   
    .byte 2   
    .byte 3   
    .byte 4   
    .byte 5   
    .byte 6   
    .byte 7   
    .byte 8   
    .byte 255        


/* Player 1 : Animation UP to LEFT  */
sprite_player_1_animation_up_left_tank:
    .byte 11   
    .byte 12   
    .byte 13   
    .byte 14   
    .byte 15   
    .byte 16   
    .byte 17   
    .byte 18   
    .byte 19   
    .byte 255


/* Player 1 : Animation RIGHT to UP */
sprite_player_1_animation_right_up_tank:
    .byte 20
    .byte 21
    .byte 22
    .byte 23
    .byte 24
    .byte 25
    .byte 26
    .byte 27
    .byte 28
    .byte 255


/* Player 1 : Animation RIGHT to DOWN  */
sprite_player_1_animation_right_down_tank:
    .byte 29
    .byte 30
    .byte 31
    .byte 32
    .byte 33
    .byte 34
    .byte 35
    .byte 36
    .byte 37
    .byte 255




/* Player 1 : Animation LEFT to UP  */
sprite_player_1_animation_left_up_tank:

    .byte 38
    .byte 39
    .byte 40
    .byte 41
    .byte 42
    .byte 43
    .byte 44
    .byte 45
    .byte 46
    .byte 255


/* Player 1 : Animation LEFT to DOWN  */
sprite_player_1_animation_left_down_tank:
    .byte 47
    .byte 48
    .byte 49
    .byte 50
    .byte 51
    .byte 52
    .byte 53
    .byte 54
    .byte 55
    .byte 255


/* Player 1 : Animation DOWN to LEFT  */
sprite_player_1_animation_down_left_tank:
    .byte 56
    .byte 57
    .byte 58
    .byte 59
    .byte 60
    .byte 61
    .byte 62
    .byte 63
    .byte 64
    .byte 255

/* Player 1 : Animation DOWN to RIGHT  */
sprite_player_1_animation_down_right_tank:

    .byte 65
    .byte 66
    .byte 67
    .byte 68
    .byte 69
    .byte 70
    .byte 71
    .byte 72
    .byte 73
    .byte 255


sprite_player_2_down_tank:
    .byte 37   // Frame 0 in Sprite pad
    .byte 255


sprite_player_1_bullet_tank:
    .byte 79   // Frame 0 in Sprite pad
    .byte 255    

sprite_player_2_up_bullet_tank:
    .byte 75   // Frame 0 in Sprite pad
    .byte 255    

