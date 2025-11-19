#import "sound_macros/sound_lib_macros.asm"

SOUND_LIB:
{

play_sound:

    push_regs_to_stack()

        // Frecuencia MUY ALTA (agudo)
        lda #$00
        sta $d400      // LO byte
        lda #$80       // HI byte = $8000 (32768)
        sta $d401      
        
        // O incluso más alto:
        // lda #$FF
        // sta $d400
        // lda #$FF      // = $FFFF (máximo)
        // sta $d401
        
        lda #$00       
        sta $d405      
        lda #$F0       
        sta $d406      
        
        lda #$0f
        sta $d418      
        
        lda #$81       // Noise
        sta $d404      

        ldx #$00
        ldy #$08
    delay_outer:
        dex
        bne delay_outer
        dey
        bne delay_outer
        
        lda #$80
        sta $d404

        ldx #$00
    delay_off:
        dex
        bne delay_off


pull_regs_from_stack()
rts



play_explosion:
    push_regs_to_stack()

    // ===== FASE 1: IMPACTO INICIAL (ruido blanco agudo) =====
    
    // Frecuencia alta inicial
    lda #$00
    sta $d400      
    lda #$60       // Frecuencia media-alta
    sta $d401      
    
    // ADSR rápido para el impacto
    lda #$00       // Attack instantáneo
    sta $d405      
    lda #$F8       // Sustain alto, Release medio
    sta $d406      
    
    lda #$0f       // Volumen máximo
    sta $d418      
    
    lda #$81       // NOISE + Gate
    sta $d404      

    // Delay corto para impacto inicial
    ldx #$00
    ldy #$06
delay1:
    dex
    bne delay1
    dey
    bne delay1

    // ===== FASE 2: BARRIDO DESCENDENTE (explosión expandiéndose) =====
    
    ldx #$60       // Empezar desde frecuencia alta
sweep_down:
    stx $d401      // Bajar frecuencia gradualmente
    
    // Mini delay entre cada paso
    ldy #$80
mini_delay:
    dey
    bne mini_delay
    
    dex
    cpx #$10       // Hasta frecuencia grave
    bne sweep_down

    // ===== FASE 3: RETUMBO GRAVE FINAL =====
    
    lda #$00
    sta $d400
    lda #$08       // Frecuencia muy grave (retumbo)
    sta $d401
    
    lda #$0A       // Decay más lento
    sta $d405
    lda #$A4       // Sustain medio, Release largo
    sta $d406

    // Delay largo para el retumbo final
    ldx #$00
    ldy #$20
delay_final:
    dex
    bne delay_final
    dey
    bne delay_final
    
    // Apagar sonido
    lda #$80       // Gate OFF
    sta $d404
    
    lda #$00       // Silencio total
    sta $d418

    pull_regs_from_stack()
    rts





stop_sound:
push_regs_to_stack()

    lda #$00
    sta $d404      // Disable channel 2


pull_regs_from_stack()
rts













}