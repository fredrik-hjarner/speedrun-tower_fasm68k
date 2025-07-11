; generated by build tools

;*******************************************************************************
; global mega drive constants
;*******************************************************************************
;
;-------------------------------------------------------------------------------
; 68k memory map
;-------------------------------------------------------------------------------
CTRL_1_DATA=$00A10003
CTRL_2_DATA=$00A10005
CTRL_X_DATA=$00A10007
CTRL_1_CONTROL=$00A10009
CTRL_2_CONTROL=$00A1000B
CTRL_X_CONTROL=$00A1000D
REG_HWVERSION=$00A10001
REG_TMS=$00A14000
PSG_INPUT=$00C00011
RAM_START=$00FF0000
VDP_DATA=$00C00000
VDP_CONTROL=$00C00004
VDP_COUNTER=$00C00008
Z80_ADDRESS_SPACE=$00A10000
Z80_BUS=$00A11100
Z80_RESET=$00A11200
;
;-------------------------------------------------------------------------------
; VDP access modes
;-------------------------------------------------------------------------------
VDP_CRAM_READ=$20000000
VDP_CRAM_WRITE=$C0000000
VDP_VRAM_READ=$00000000
VDP_VRAM_WRITE=$40000000
VDP_VSRAM_READ=$10000000
VDP_VSRAM_WRITE=$14000000
;
;-------------------------------------------------------------------------------
; VDP status
;-------------------------------------------------------------------------------
VDP_STATUS_FIFO_EMPTY=$0200
VDP_STATUS_FIFO_FULL=$0100
VDP_STATUS_VINT_PENDING=$0080
VDP_STATUS_SPRITE_OVERFLOW=$0040
VDP_STATUS_SPRITE_COLLISION=$0020
VDP_STATUS_ODD_FRAME=$0010
VDP_STATUS_VBLANK=$0008
VDP_STATUS_HBLANK=$0004
VDP_STATUS_DMA=$0002
VDP_STATUS_PAL=$0001
;
;-------------------------------------------------------------------------------
; buttons
;-------------------------------------------------------------------------------
BUTTON_UP=00000001b
BUTTON_DOWN=00000010b
BUTTON_LEFT=00000100b
BUTTON_RIGHT=00001000b
BUTTON_B=00010000b
BUTTON_C=00100000b
BUTTON_A=01000000b
BUTTON_START=10000000b
BUTTON_Z=00000001b
BUTTON_Y=00000010b
BUTTON_X=00000100b
BUTTON_MODE=00001000b
DPAD_PRESSED=BUTTON_UP+BUTTON_DOWN+BUTTON_LEFT+BUTTON_RIGHT
;
;-------------------------------------------------------------------------------
; SRAM addresses
;-------------------------------------------------------------------------------
SRAM_START=$200001 ; SRAM start address
SRAM_END=$20FFFF ; SRAM end address
SRAM_LOCK=$A130F1 ; address of lock bit
;
;-------------------------------------------------------------------------------
; other constants
;-------------------------------------------------------------------------------
WORD_SIZE=$2
LWORD_SIZE=$4
LWORDS_PER_TILE=$8 ; how many lwords of data in each tile
VDP_PLANE_PIXELS_X=$0200 ; width of VDP plane
VDP_PLANE_PIXELS_Y=$0100 ; height of VDP plane
DISPLAY_PIXELS_X=$0140 ; width of physical display
DISPLAY_PIXELS_Y=$00E0 ; height of physical display
