; generated by build tools

	;---------------------------------------------------------------------------
	; scene ID
	;---------------------------------------------------------------------------
	dc.w	SCENE_ID_FLOOR07

	;---------------------------------------------------------------------------
	; tiles
	;---------------------------------------------------------------------------
	dc.w	$0017 ; tileset count - 1

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
	dc.l	FloorTile04TilesStart
	dc.l	FloorTile04TilesEnd

	; tileset 4 - tiles start at [32] - tileset length [14]
	dc.l	MainframeTilesStart
	dc.l	MainframeTilesEnd

	; tileset 5 - tiles start at [46] - tileset length [6]
	dc.l	TVNewsTilesStart
	dc.l	TVNewsTilesEnd

	; tileset 6 - tiles start at [4C] - tileset length [6]
	dc.l	TVMapTilesStart
	dc.l	TVMapTilesEnd

	; tileset 7 - tiles start at [52] - tileset length [4]
	dc.l	ChairRedBackTilesStart
	dc.l	ChairRedBackTilesEnd

	; tileset 8 - tiles start at [56] - tileset length [4]
	dc.l	ChairRedRightLowTilesStart
	dc.l	ChairRedRightLowTilesEnd

	; tileset 9 - tiles start at [5A] - tileset length [2]
	dc.l	ChairRedRightHighTilesStart
	dc.l	ChairRedRightHighTilesEnd

	; tileset A - tiles start at [5C] - tileset length [4]
	dc.l	ChairRedLeftLowTilesStart
	dc.l	ChairRedLeftLowTilesEnd

	; tileset B - tiles start at [60] - tileset length [2]
	dc.l	ChairRedLeftHighTilesStart
	dc.l	ChairRedLeftHighTilesEnd

	; tileset C - tiles start at [62] - tileset length [4]
	dc.l	ChairBlueBackTilesStart
	dc.l	ChairBlueBackTilesEnd

	; tileset D - tiles start at [66] - tileset length [4]
	dc.l	ChairBlueRightLowTilesStart
	dc.l	ChairBlueRightLowTilesEnd

	; tileset E - tiles start at [6A] - tileset length [2]
	dc.l	ChairBlueRightHighTilesStart
	dc.l	ChairBlueRightHighTilesEnd

	; tileset F - tiles start at [6C] - tileset length [4]
	dc.l	ChairBlueLeftLowTilesStart
	dc.l	ChairBlueLeftLowTilesEnd

	; tileset 10 - tiles start at [70] - tileset length [2]
	dc.l	ChairBlueLeftHighTilesStart
	dc.l	ChairBlueLeftHighTilesEnd

	; tileset 11 - tiles start at [72] - tileset length [C]
	dc.l	TwoPCsTilesStart
	dc.l	TwoPCsTilesEnd

	; tileset 12 - tiles start at [7E] - tileset length [6]
	dc.l	TableBlueTopTilesStart
	dc.l	TableBlueTopTilesEnd

	; tileset 13 - tiles start at [84] - tileset length [3]
	dc.l	TableBlueLowerTilesStart
	dc.l	TableBlueLowerTilesEnd

	; tileset 14 - tiles start at [87] - tileset length [6]
	dc.l	Floor07OutdoorTreesTilesStart
	dc.l	Floor07OutdoorTreesTilesEnd

	; tileset 15 - tiles start at [8D] - tileset length [4]
	dc.l	Floor07OutdoorFenceLeftTilesStart
	dc.l	Floor07OutdoorFenceLeftTilesEnd

	; tileset 16 - tiles start at [91] - tileset length [4]
	dc.l	Floor07OutdoorFenceRightTilesStart
	dc.l	Floor07OutdoorFenceRightTilesEnd

	; tileset 17 - tiles start at [95] - tileset length [10]
	dc.l	Floor07OutdoorTileTilesStart
	dc.l	Floor07OutdoorTileTilesEnd

	;---------------------------------------------------------------------------
	; palettes
	;---------------------------------------------------------------------------
	dc.l	PaletteFloor07
	dc.l	PaletteOutdoor07
	dc.l	PaletteIndoor07
	dc.l	PalettePeople

	;---------------------------------------------------------------------------
	; scenery
	;---------------------------------------------------------------------------
	dc.w	$0036 ; scenery count - 1

	; outdoors - trees
	dc.l	Pattern24x16x320
	;		%pccvhnnnnnnnnnnn
	dc.w	%1010000010000111 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00000000+$00000000 ; initial drawing location

	; outdoors - fence - left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000010001101 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$00000000+$01000000 ; initial drawing location

	; outdoors - fence - right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000010010001 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$004C0000+$01000000 ; initial drawing location

	; outdoors - stone tile
	dc.l	Pattern32x32x320
	;		%pccvhnnnnnnnnnnn
	dc.w	%0010000010010101 ; vdp pattern
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

	; mainframe
	dc.l	Pattern32x40
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000000110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000A0000+$01000000 ; initial drawing location

	; tv with news
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001000110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$01800000 ; initial drawing location

	; tv with map
	dc.l	Pattern24x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001001100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$00420000+$01800000 ; initial drawing location

	; table - top left - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$000A0000+$05000000 ; initial drawing location

	; table - top left - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000A0000+$06000000 ; initial drawing location

	; pcs - top left table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$04800000 ; initial drawing location

	; pcs - top left table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$05000000 ; initial drawing location

	; table - top center left - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$001A0000+$05000000 ; initial drawing location

	; table - top center left - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001A0000+$06000000 ; initial drawing location

	; pcs - top center left table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$04800000 ; initial drawing location

	; pcs - top center left table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$05000000 ; initial drawing location

	; table - top center right - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$002A0000+$05000000 ; initial drawing location

	; table - top center right - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002A0000+$06000000 ; initial drawing location

	; pcs - top center right table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$04800000 ; initial drawing location

	; pcs - top center right table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$05000000 ; initial drawing location

	; table - top right - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$003A0000+$05000000 ; initial drawing location

	; table - top right - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$06000000 ; initial drawing location

	; pcs - top right table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$04800000 ; initial drawing location

	; pcs - top right table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$05000000 ; initial drawing location

	; table - bottom left - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$000A0000+$08000000 ; initial drawing location

	; table - bottom left - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000A0000+$09000000 ; initial drawing location

	; pcs - bottom left table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$07800000 ; initial drawing location

	; pcs - bottom left table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$08000000 ; initial drawing location

	; table - bottom center left - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$001A0000+$08000000 ; initial drawing location

	; table - bottom center left - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001A0000+$09000000 ; initial drawing location

	; pcs - bottom center left table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$07800000 ; initial drawing location

	; pcs - bottom center left table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$08000000 ; initial drawing location

	; table - bottom center right - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$002A0000+$08000000 ; initial drawing location

	; table - bottom center right - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002A0000+$09000000 ; initial drawing location

	; pcs - bottom center right table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$07800000 ; initial drawing location

	; pcs - bottom center right table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$08000000 ; initial drawing location

	; table - bottom right - top section
	dc.l	PatternTableBlueTop
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001111110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_B+$003A0000+$08000000 ; initial drawing location

	; table - bottom right - lower section
	dc.l	PatternTableBlueLower
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000010000100 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003A0000+$09000000 ; initial drawing location

	; pcs - bottom right table - high
	dc.l	Pattern32x8
	;		%pccvhnnnnnnnnnnn
	dc.w	%1100000001110010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$07800000 ; initial drawing location

	; pcs - bottom right table - low
	dc.l	Pattern32x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001110110 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$08000000 ; initial drawing location

	; red chair - bottom right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$09800000 ; initial drawing location

	; blue chair - bottom center right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001100010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$09800000 ; initial drawing location

	; red chair - bottom center left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$09800000 ; initial drawing location

	; red chair - bottom left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$09800000 ; initial drawing location

	; red chair - top right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$003C0000+$06800000 ; initial drawing location

	; red chair - top center right
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$002C0000+$06800000 ; initial drawing location

	; red chair - top center left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001010010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$001C0000+$06800000 ; initial drawing location

	; blue chair - top left
	dc.l	Pattern16x16
	;		%pccvhnnnnnnnnnnn
	dc.w	%0100000001100010 ; vdp pattern
	dc.w	$0000 ; repeat=0
	dc.l	VDP_VRAM_WRITE_A+$000C0000+$06800000 ; initial drawing location

	;---------------------------------------------------------------------------
	; text
	;---------------------------------------------------------------------------
	dc.w	$0001 ; text count

	dc.l	SceneTextFloor07
	dc.w	FONT_BASE_TILE+0000000000000000b ; vdp pattern
	dc.l	VDP_VRAM_WRITE_A+$00380000+$01800000 ; initial drawing location

	dc.l	SceneTextFloor07
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

	dc.w	OBJ_SCENE_FLOOR07_TVS
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0110110101101010
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010100010011010

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000010101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000011010000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000010101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000100000000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000011101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000011010000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000011101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000100000000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000100101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000011010000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000100101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000100000000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000101101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000011010000

	dc.w	OBJ_SCENE_FLOOR07_DESK
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0101000101101000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0010000100000000

	dc.w	OBJ_NOTHING
	;		%wwwwwwwxxxxxxxxx
	dc.w	%0000000000000000
	;		%hhhhhhhyyyyyyyyy
	dc.w	%0000000000000000

	;---------------------------------------------------------------------------
	; collision data
	;---------------------------------------------------------------------------
	dc.l	Floor07CollisionStart ; location of collision data

	;---------------------------------------------------------------------------
	; exits: 0=south,1=north,2=west,3=east
	;---------------------------------------------------------------------------
	dc.w	SCENE_ID_FLOOR08
	dc.w	SCENE_ID_FLOOR08
	dc.w	SCENE_ID_FLOOR08
	dc.w	SCENE_ID_FLOOR08

	;---------------------------------------------------------------------------
	; npc locations
	;---------------------------------------------------------------------------
	dc.w	$0003 ; npc count - 1

	dc.w	$00B8 ; starting x location of npc0
	dc.w	$00A4 ; starting y location of npc0
	dc.w	DIRECTION_UP ; starting direction of npc0
	dc.w	$FFFF ; movement frequency of npc0
	dc.l	NullMovementStart ; location of movement pattern for npc0
	dc.w	(NullMovementEnd-NullMovementStart-1) ; movement pattern length

	dc.w	$00D0 ; starting x location of npc1
	dc.w	$00A4 ; starting y location of npc1
	dc.w	DIRECTION_LEFT ; starting direction of npc1
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
	dc.l	BGM_Floor07 ; location of background music
