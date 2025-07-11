; generated by build tools

	;---------------------------------------------------------------------------
	; scene ID
	;---------------------------------------------------------------------------
	dc.w	SCENE_ID_FLOOR06

	;---------------------------------------------------------------------------
	; tiles
	;---------------------------------------------------------------------------
	dc.w	$0014 ; tileset count - 1

	; tileset 0 - tiles start at [0] - tileset length [1]
	dc.l	TransparentTileTilesStart
	dc.l	TransparentTileTilesEnd

	; tileset 1 - tiles start at [1] - tileset length [24]
	dc.l	FrameTilesStart
	dc.l	FrameTilesEnd

	; tileset 2 - tiles start at [25] - tileset length [9]
	dc.l	OutdoorsTilesStart
	dc.l	OutdoorsTilesEnd

	; tileset 3 - tiles start at [2E] - tileset length [4]
	dc.l	FloorTile48TilesStart
	dc.l	FloorTile48TilesEnd

	; tileset 4 - tiles start at [32] - tileset length [8]
	dc.l	BarbellTilesStart
	dc.l	BarbellTilesEnd

	; tileset 5 - tiles start at [3A] - tileset length [6]
	dc.l	ExerciseBikeHighTilesStart
	dc.l	ExerciseBikeHighTilesEnd

	; tileset 6 - tiles start at [40] - tileset length [9]
	dc.l	ExerciseBikeLowTilesStart
	dc.l	ExerciseBikeLowTilesEnd

	; tileset 7 - tiles start at [49] - tileset length [1E]
	dc.l	GymMatTilesStart
	dc.l	GymMatTilesEnd

	; tileset 8 - tiles start at [67] - tileset length [1C]
	dc.l	WallMirrorTilesStart
	dc.l	WallMirrorTilesEnd

	; tileset 9 - tiles start at [83] - tileset length [4]
	dc.l	PunchingBagHighTilesStart
	dc.l	PunchingBagHighTilesEnd

	; tileset A - tiles start at [87] - tileset length [6]
	dc.l	PunchingBagLowTilesStart
	dc.l	PunchingBagLowTilesEnd

	; tileset B - tiles start at [8D] - tileset length [4]
	dc.l	RadioTilesStart
	dc.l	RadioTilesEnd

	; tileset C - tiles start at [91] - tileset length [6]
	dc.l	StairmasterHighTilesStart
	dc.l	StairmasterHighTilesEnd

	; tileset D - tiles start at [97] - tileset length [9]
	dc.l	StairmasterLowTilesStart
	dc.l	StairmasterLowTilesEnd

	; tileset E - tiles start at [A0] - tileset length [9]
	dc.l	TreadmillHighTilesStart
	dc.l	TreadmillHighTilesEnd

	; tileset F - tiles start at [A9] - tileset length [9]
	dc.l	TreadmillLowTilesStart
	dc.l	TreadmillLowTilesEnd

	; tileset 10 - tiles start at [B2] - tileset length [6]
	dc.l	WeightsTilesStart
	dc.l	WeightsTilesEnd

	; tileset 11 - tiles start at [B8] - tileset length [6]
	dc.l	Floor06OutdoorTreesTilesStart
	dc.l	Floor06OutdoorTreesTilesEnd

	; tileset 12 - tiles start at [BE] - tileset length [4]
	dc.l	Floor06OutdoorFenceLeftTilesStart
	dc.l	Floor06OutdoorFenceLeftTilesEnd

	; tileset 13 - tiles start at [C2] - tileset length [4]
	dc.l	Floor06OutdoorFenceRightTilesStart
	dc.l	Floor06OutdoorFenceRightTilesEnd

	; tileset 14 - tiles start at [C6] - tileset length [10]
	dc.l	Floor06OutdoorTileTilesStart
	dc.l	Floor06OutdoorTileTilesEnd

	;---------------------------------------------------------------------------
	; palettes
	;---------------------------------------------------------------------------
	dc.l	PaletteFloor06
	dc.l	PaletteOutdoor06
	dc.l	PaletteIndoor06
	dc.l	PalettePeople

	;---------------------------------------------------------------------------
	; scenery
	;---------------------------------------------------------------------------
	dc.w	$0020 ; scenery count - 1

	; outdoors - trees
	dc.l	Pattern24x16x320
	;		%pccvhnnnnnnnnnnn
	dc.w	%1010000010111000 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00000000+$00000000 ; initial drawing location

	; outdoors - fence - left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000010111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00000000+$01000000 ; initial drawing location

	; outdoors - fence - right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000011000010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$004C0000+$01000000 ; initial drawing location

	; outdoors - stone tile
	dc.l	Pattern32x32x320
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000011000110 ; vdp pattern
	dc.w	$0005 ; repeat=5
	dc.l	VDP_VRAM_WRITE_B+$00000000+$02000000 ; initial drawing location

	; floor
	dc.l	Pattern16x16x256
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000101110 ; vdp pattern
	dc.w	$0008 ; repeat=8
	dc.l	VDP_VRAM_WRITE_B+$00080000+$03000000 ; initial drawing location

	; frame - north west corner
	dc.l	PatternFrameNorthWestLow
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00040000+$01000000 ; initial drawing location

	; frame - north east corner
	dc.l	PatternFrameNorthEastLow
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00380000+$01000000 ; initial drawing location

	; frame - north center low
	dc.l	PatternFrameNorthCenterLow
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00180000+$01800000 ; initial drawing location

	; frame - north center high
	dc.l	PatternFrameNorthHigh
	;		%pccvhnnnnnnnnnnn
	dc.w	%1000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00180000+$01000000 ; initial drawing location

	; frame - south
	dc.l	PatternFrameSouth
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00040000+$0B800000 ; initial drawing location

	; frame - east
	dc.l	PatternFrameEast
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00480000+$03000000 ; initial drawing location

	; frame - west
	dc.l	PatternFrameWest
	;		%pccvhnnnnnnnnnnn
	dc.w	%0000000000000001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00040000+$03000000 ; initial drawing location

	; barbell
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000000110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$05800000 ; initial drawing location

	; exercise bike - left - high
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000000111010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00220000+$06000000 ; initial drawing location

	; exercise bike - right - high
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000000111010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00280000+$06000000 ; initial drawing location

	; exercise bike - left - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001000000 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00220000+$07000000 ; initial drawing location

	; exercise bike - right - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001000000 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00280000+$07000000 ; initial drawing location

	; gym mat - left
	dc.l	Pattern48x40
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001001001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000A0000+$03000000 ; initial drawing location

	; gym mat - right
	dc.l	Pattern48x40
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001001001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$03000000 ; initial drawing location

	; wall mirror - left
	dc.l	Pattern56x32
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001100111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00080000+$01000000 ; initial drawing location

	; wall mirror - right
	dc.l	Pattern56x32
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001100111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$01000000 ; initial drawing location

	; punching bag - high
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000010000011 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00160000+$05000000 ; initial drawing location

	; punching bag - low
	dc.l	Pattern16x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00160000+$06000000 ; initial drawing location

	; radio
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010001101 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00440000+$05800000 ; initial drawing location

	; stairmaster - left - high
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000010010001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00080000+$07800000 ; initial drawing location

	; stairmaster - right - high
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000010010001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000E0000+$07800000 ; initial drawing location

	; stairmaster - left - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010010111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00080000+$08800000 ; initial drawing location

	; stairmaster - right - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010010111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000E0000+$08800000 ; initial drawing location

	; treadmill - left - high
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000010100000 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$07800000 ; initial drawing location

	; treadmill - right - high
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000010100000 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00420000+$07800000 ; initial drawing location

	; treadmill - left - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010101001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$08800000 ; initial drawing location

	; treadmill - right - low
	dc.l	Pattern24x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010101001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00420000+$08800000 ; initial drawing location

	; weights
	dc.l	Pattern16x24
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00080000+$05800000 ; initial drawing location

	;---------------------------------------------------------------------------
	; text
	;---------------------------------------------------------------------------
	dc.w	$0001 ; text count

	dc.l	SceneTextFloor06
	dc.w	FONT_BASE_TILE+0000000000000000b ; vdp pattern
	dc.l	VDP_VRAM_WRITE_A+$00380000+$01800000 ; initial drawing location

	dc.l	SceneTextFloor06
	dc.w	FONT_BASE_TILE+0000000000000000b ; vdp pattern
	dc.l	VDP_VRAM_WRITE_A+$00160000+$01800000 ; initial drawing location

	;---------------------------------------------------------------------------
	; objects
	;---------------------------------------------------------------------------
	dc.w	OBJ_LIST_LENGTH-1 ; object count

	;---------------------------------------------------------------------------
	; word0=Object ID (0-65535)
	; word1[0-8]=x0 (0-511)
	; word1[9-15]=width (0-127)
	; word2[0-8]=y0 (0-512)
	; word2[9-15]=height (0-127)
	;---------------------------------------------------------------------------

	dc.w	OBJ_SCENE_FLOOR06_EQUIPMENT
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101110010100000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0100000011111001

	dc.w	OBJ_SCENE_FLOOR06_EQUIPMENT
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101111101101110
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0100000011111110

	dc.w	OBJ_SCENE_FLOOR06_EQUIPMENT
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0110000100001010
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0100000011100100

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	;---------------------------------------------------------------------------
	; collision data
	;---------------------------------------------------------------------------
	dc.l	Floor06CollisionStart ; location of collision data

	;---------------------------------------------------------------------------
	; exits: 0=south,1=north,2=west,3=east
	;---------------------------------------------------------------------------
	dc.w	SCENE_ID_FLOOR07
	dc.w	SCENE_ID_FLOOR07
	dc.w	SCENE_ID_FLOOR07
	dc.w	SCENE_ID_FLOOR07

	;---------------------------------------------------------------------------
	; npc locations
	;---------------------------------------------------------------------------
	dc.w	$0003 ; npc count - 1

	dc.w	$016C ; starting x location of npc0
	dc.w	$00B2 ; starting y location of npc0
	dc.w	DIRECTION_DOWN ; starting direction of npc0
	dc.w	$FFFF ; movement frequency of npc0
	dc.l	NullMovementStart ; location of movement pattern for npc0
	dc.w	(NullMovementEnd-NullMovementStart-1) ; movement pattern length

	dc.w	$0000 ; starting x location of npc1
	dc.w	$0000 ; starting y location of npc1
	dc.w	DIRECTION_DOWN ; starting direction of npc1
	dc.w	$FFFF ; movement frequency of npc1
	dc.l	NullMovementStart ; location of movement pattern for npc1
	dc.w	(NullMovementEnd-NullMovementStart-1) ; movement pattern length

	dc.w	$0000 ; starting x location of npc2
	dc.w	$0000 ; starting y location of npc2
	dc.w	DIRECTION_DOWN ; starting direction of npc2
	dc.w	$FFFF ; movement frequency of npc2
	dc.l	NullMovementStart ; location of movement pattern for npc2
	dc.w	(NullMovementEnd-NullMovementStart-1) ; movement pattern length

	dc.w	$0000 ; starting x location of npc3
	dc.w	$0000 ; starting y location of npc3
	dc.w	DIRECTION_DOWN ; starting direction of npc3
	dc.w	$FFFF ; movement frequency of npc3
	dc.l	NullMovementStart ; location of movement pattern for npc3
	dc.w	(NullMovementEnd-NullMovementStart-1) ; movement pattern length

	;---------------------------------------------------------------------------
	; bgm
	;---------------------------------------------------------------------------
	dc.l	BGM_Floor06 ; location of background music
