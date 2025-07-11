; generated by build tools

;###############################################################################
; constants for the base retail clerk game engine 
;###############################################################################
;
;-------------------------------------------------------------------------------
; action ids 
;-------------------------------------------------------------------------------
ACTION_INTERACT=$0000 ; interact with an object
ACTION_RESPOND=$0001 ; respond to a selection in a conversation dialog
ACTION_EXIT_SCENE=$0002 ; player is exiting the scene
ACTION_ENTER_SCENE=$0003 ; player is entering a scene
;
;-------------------------------------------------------------------------------
; game state flags
;-------------------------------------------------------------------------------
STATE_FLAG_VBLANK=$00 ; vblank flag
STATE_FLAG_PAUSED=$01 ; game is paused
STATE_FLAG_EXPLORING=$02 ; player is controlling the sprite on the map
STATE_FLAG_DIALOG=$03 ; player is interacting with a dialog
STATE_FLAG_ACTION=$04 ; there is an action queued
STATE_FLAG_SCRIPTED_EVENT=$05 ; a scripted event is running
STATE_FLAG_TITLE_SCREEN=$06 ; title screen is displaying
STATE_FLAG_EXITS_BLOCKED=$07 ; blocks sprite from leaving scene
STATE_FLAG_END_SCREEN=$08 ; end screen is displaying
STATE_FLAG_INTRO_SCREEN=$09 ; day intro screen is displaying
STATE_FLAG_STATUS_SCREEN=$0A ; status screen is displaying
; changed for Speedrun Tower only
STATE_FLAG_CHARACTER_SELECT_SCREEN=$0B ; character select screen is displaying
;STATE_FLAG_MALL_CLOSED,$0B,mall is closed for the night (unused in rc90)
STATE_FLAG_BASEMENT_OPEN=$C ; basement is accessible
STATE_FLAG_LOAD_MENU=$0D ; load menu is displaying
STATE_FLAG_FAST_TRAVEL_AVAILABLE=$0E ; whether fast-travel is available
STATE_FLAG_DEBUG_MENU=$0F ; debug menu is displaying
;
;-------------------------------------------------------------------------------
; font settings
;-------------------------------------------------------------------------------
FONT_BASE_TILE_LOW=FONT_VDP/$0020 ; base tile for dialogs (low)
FONT_BASE_TILE=FONT_BASE_TILE_LOW+$8000 ; base tile for dialogs
;
;-------------------------------------------------------------------------------
; dialog state flags
;-------------------------------------------------------------------------------
; high word of MEM_DIALOG_FLAGS is used to track the state
DIALOG_FLAG_OPTION_PERSIST_SELECTOR=$12 ; don't hide the selector after closing
DIALOG_FLAG_STYLE_TITLED=$13 ; show dialog with title
DIALOG_FLAG_STYLE_ITEM_MENU=$14 ; item menu dialog
DIALOG_FLAG_STYLE_MENU=$15 ; overworld menu style dialog
DIALOG_FLAG_STYLE_TEXT_4CHOICE=$16 ; dialog has text with selection at the end
DIALOG_FLAG_STYLE_TEXT_2CHOICE=$17 ; dialog has text with selection at the end
DIALOG_FLAG_STYLE_SIMPLE_TEXT=$18 ; dialog is a simple text dialog
DIALOG_FLAG_SELECTION_WAIT=$19 ; waiting for the player to make a selection 
DIALOG_FLAG_TEXT_OPENING=$1A ; dialog is opening
DIALOG_FLAG_TEXT_TITLE_DRAWING=$1B ; dialog title text is drawing
DIALOG_FLAG_TEXT_DRAWING=$1C ; dialog text is drawing
DIALOG_FLAG_TEXT_OPEN=$1D ; dialog is open
DIALOG_FLAG_TEXT_NEW_PAGE=$1E ; dialog text has another page
DIALOG_FLAG_TEXT_CLOSING=$1F ; dialog is closing
;
;-------------------------------------------------------------------------------
; dialog settings
;-------------------------------------------------------------------------------
DIALOG_PATTERN_SIZE=$0124 ; size of dialog pattern (#tiles*2+4 for loop ctrl)
DIALOG_BASE_TILE_LOW=FONT_BASE_TILE_LOW+$005F ; base tile for dialogs (low)
DIALOG_BASE_TILE=DIALOG_BASE_TILE_LOW+$8000 ; base tile for dialogs
DIALOG_ROWCOL=$0A900000 ; row 18 column 16
DIALOG_TEXT_AREA_ROWCOL=$0C100000 ; DIALOG_ROWCOL + 3 rows
DIALOG_TEXT_ROWCOL=$0C120000 ; DIALOG_ROWCOL + 3 rows + 1 column
DIALOG_TITLE_ROWCOL=$0B140000 ; DIALOG_ROWCOL + 1 row + 2 columns
DIALOG_FRAME_COUNT=$000B ; number of animation frames for dialogs
DIALOG_MENU_INIT_SELECTION_X=$C8 ; x coordinate of initial menu selection
DIALOG_MENU_INIT_SELECTION_Y=$140 ; y coordinate of initial menu selection
DIALOG_NO_RESPONSE=$FFFF ; no response or dialog cancelled 
;
;-------------------------------------------------------------------------------
; menu pages
;-------------------------------------------------------------------------------
MENU_PAGE_MAP=$0000
MENU_PAGE_STATUS=$0001
MENU_PAGE_DATA=$0002
MENU_PAGE_HELP=$0003
MAX_MENU_PAGE=MENU_PAGE_HELP
;
;-------------------------------------------------------------------------------
; scripted event commands
;-------------------------------------------------------------------------------
SCRIPTED_EVENT_END=$FFFF ; end of scripted event
SCRIPTED_EVENT_DIALOG=$EEEE ; show a dialog
SCRIPTED_EVENT_CHANGE_SPRITE=$DDDD ; change the moving sprite
SCRIPTED_EVENT_CHANGE_SCENE=$CCCC ; switch scenes
SCRIPTED_EVENT_CHANGE_PLAYER_SPRITE=$BBBB ; switch player sprites
SCRIPTED_EVENT_SET_PLAYER_SPRITE_X=$AAAA ; set player sprite X
SCRIPTED_EVENT_SET_PLAYER_SPRITE_Y=$9999 ; set player sprite Y
SCRIPTED_EVENT_SET_PLAYER_SPRITE_DIRECTION=$8888 ; set player direction
SCRIPTED_EVENT_FADE_BLACK=$7777 ; fade and blackout the palette
SCRIPTED_EVENT_DRAW_SCENE=$6666 ; draw scene
SCRIPTED_EVENT_TIMER=$5555 ; pause for a specified number of frames
SCRIPTED_EVENT_ENDGAME=$4444 ; end the game
;
;-------------------------------------------------------------------------------
; sprite data structure
;-------------------------------------------------------------------------------
STRUCT_SPRITE_ID=$0
STRUCT_SPRITE_X=$2
STRUCT_SPRITE_Y=$4
STRUCT_SPRITE_BASE_PATTERN=$6
STRUCT_SPRITE_DIRECTION=$8
STRUCT_SPRITE_FRAME=$A
STRUCT_SPRITE_STEP_COUNTER=$C
STRUCT_SPRITE_MOVEMENT_COUNTER=$E
STRUCT_SPRITE_MOVE_FREQUENCY=$10
STRUCT_SPRITE_MOVE_PATTERN=$12
STRUCT_SPRITE_MOVE_PATTERN_LENGTH=$16
STRUCT_SPRITE_MOVE_INDEX=$18
;
;-------------------------------------------------------------------------------
; sprite definition data structure
;-------------------------------------------------------------------------------
STRUCT_SPRITEDEF_Y=$0
STRUCT_SPRITEDEF_SIZE_LINK=$2
STRUCT_SPRITEDEF_PATTERN=$4
STRUCT_SPRITEDEF_X=$6
;
;-------------------------------------------------------------------------------
; directions
;-------------------------------------------------------------------------------
DIRECTION_DOWN=0000b ; 0
DIRECTION_UP=0001b ; 1
DIRECTION_LEFT=0010b ; 2
DIRECTION_RIGHT=0011b ; 3
DIRECTION_NULL=1111b ; used for movement patterns
;
;-------------------------------------------------------------------------------
; sprite settings
;-------------------------------------------------------------------------------
SPRITE_BASE_PATTERN=$6000+(SPRITE_VDP/$0020)
SPRITE_BASE_PATTERN_HIGH=$E000+(SPRITE_VDP/$0020)
SPRITE_TILESET_SIZE=$60 ; the size of the tileset used for sprites
SPRITE_TILESET_LWORDS=SPRITE_TILESET_SIZE*LWORDS_PER_TILE ; lwords in tileset
DEFAULT_SPRITE_HEIGHT=$0020 ; how many pixels tall a sprite is by default
DEFAULT_SPRITE_WIDTH=$0010 ; how many pixels wide a sprite is by default
SPRITE_FRAME_COUNT=$0003 ; how many animation frames there are for sprites
SPRITE_ANIMATION_STEPS=$0008 ; how many steps between animation frame changes
SPRITE_STEP_PIXELS=$0001 ; how many pixels to move on each sprite step
SPRITE_PLAYER_PATTERN=SPRITE_BASE_PATTERN+$1 ; base pattern for player sprite
SPRITE_PLAYER_HEIGHT=DEFAULT_SPRITE_HEIGHT ; player sprite height
SPRITE_PLAYER_WIDTH=DEFAULT_SPRITE_WIDTH ; player sprite 
SPRITE_PLAYER_INIT_X=$0114 ; starting x location of player sprite
SPRITE_PLAYER_INIT_Y=$00C0 ; starting y location of player sprite
SPRITE_DEF_WORD2_BASE=$0700 ; width
; used for sprite collision tests - top edge of bottom 1/2 of sprite
SPRITE_COLLISION_Y=(DEFAULT_SPRITE_HEIGHT-(DEFAULT_SPRITE_HEIGHT/2))
SPRITE_COLLISION_UP=SPRITE_STEP_PIXELS
SPRITE_COLLISION_DOWN=(DEFAULT_SPRITE_HEIGHT/2)+SPRITE_STEP_PIXELS
SPRITE_COLLISION_RIGHT=DEFAULT_SPRITE_WIDTH+SPRITE_STEP_PIXELS
SPRITE_COLLISION_LEFT=SPRITE_STEP_PIXELS
; screen & plane sizes
SPRITE_PLANE_PIXELS_X=$0200 ; width of sprite virtual plane
SPRITE_PLANE_PIXELS_Y=$0200 ; height of sprite virtual plane
SPRITE_PLANE_OFFSET_TOP=$0080 ; sprite plane top to display top edge
SPRITE_PLANE_OFFSET_LEFT=$0080 ; sprite plane left to display left edge
SPRITE_PLANE_OFFSET_BOTTOM=$00A0 ; sprite plane bottom to display bottom edge
SPRITE_PLANE_OFFSET_RIGHT=$0040 ; sprite plane right to display right edge
; other sprite/NPC settings
NPC_RECORD_SIZE=MEM_NPC1_SPRITE_ID-MEM_NPC0_SPRITE_ID
NPC_SPRITE_MOVE_STEPS=$0009; how many steps NPC sprites take when they move
NPC_BASE_TILE_INC=$0060 ; how many tiles to increment between NPCs
NPC0_BASE_PATTERN=(SPRITE_PLAYER_PATTERN+NPC_BASE_TILE_INC)
CHARACTER_DEFINITION_SIZE=LWORD_SIZE
;
;-------------------------------------------------------------------------------
; settings that effect the game speed that are changed for debugging
;-------------------------------------------------------------------------------
	if	_DEBUG_
DIALOG_UPDATE_FREQUENCY=$0000 ; how often to update dialog animation
SPRITE_MOVE_FREQUENCY=$0001 ; how many frames to wait between sprite moves
FADE_FRAME_DELAY=$0001 ; how many frames to wait between fade in/out
EVENT_FRAME_DELAY=$0008 ; delay used for scripted event scene changes
LEGAL_SCREEN_LOOP=$0001 ; how long to display the legal screen
CREDITS_SCREEN_LOOP=$0168 ; how long to display the credits screen
	else
DIALOG_UPDATE_FREQUENCY=$0002 ; how often to update dialog animation
SPRITE_MOVE_FREQUENCY=$0001 ; how many frames to wait between sprite moves
FADE_FRAME_DELAY=$0003 ; how many frames to wait between fade in/out
EVENT_FRAME_DELAY=$0009 ; delay used for scripted event scene changes
LEGAL_SCREEN_LOOP=$0100 ; how long to display the legal screen
CREDITS_SCREEN_LOOP=$0258 ; how long to display the credits screen
	endif
;
;-------------------------------------------------------------------------------
; map settings
;-------------------------------------------------------------------------------
MAP_MID_X=$100 ; mid-point of map - used for collision detection
; scene exit points
SCENE_EXIT_TOP=$0000+SPRITE_PLANE_OFFSET_TOP
SCENE_EXIT_BOTTOM=$00D0+SPRITE_PLANE_OFFSET_TOP
SCENE_EXIT_LEFT=$0000+SPRITE_PLANE_OFFSET_LEFT
SCENE_EXIT_RIGHT=$013A+SPRITE_PLANE_OFFSET_LEFT
; position where the player enters a scene
SCENE_ENTER_TOP=SPRITE_PLANE_OFFSET_TOP+$0010 ; modified for speedrun tower
SCENE_ENTER_BOTTOM=SPRITE_PLANE_OFFSET_TOP+DISPLAY_PIXELS_Y-$0010
SCENE_ENTER_LEFT=SPRITE_PLANE_OFFSET_LEFT+$0008
SCENE_ENTER_RIGHT=SPRITE_PLANE_OFFSET_LEFT+DISPLAY_PIXELS_X-$0008
;
;-------------------------------------------------------------------------------
; object/NPC list settings
;-------------------------------------------------------------------------------
OBJ_LIST_LENGTH=$000A ; max items in the object list
NPC_LIST_LENGTH=$0004 ; max items in the NPC list
NPC_LIST_LOOP_CTRL=$0001 ; (NPC_LIST_LENGTH/2)-1
OBJ_LIST_LOOP_CTRL=OBJ_LIST_LENGTH+NPC_LIST_LENGTH-1
OBJ_LIST_STRUCT_SIZE=$0006 ; size of the data structure for object list entries
;
;*******************************************************************************
; VDP/VRAM addresses
;*******************************************************************************
;
;-------------------------------------------------------------------------------
; these are based on registers 2,3,4,5,13 in data_VDPInit.X68
;-------------------------------------------------------------------------------
VDP_VRAM_WRITE_A=$40000003 ; register 2
VDP_VRAM_WRITE_HSCROLL=$7C000002 ; register 13
VDP_VRAM_WRITE_SPRITE=$78000002 ; register 5
VDP_VRAM_WRITE_B=$60000003 ; register 4
VDP_VRAM_WRITE_WINDOW=$60000002 ; register 3
VDP_VRAM_WRITE_VSCROLL=$40000010 ; vscroll write
;
;-------------------------------------------------------------------------------
; relative VPD memory locations
;-------------------------------------------------------------------------------
SCENE_VDP=$0000 ; write location for scene tiles
FONT_VDP=$6000 ; write location for font tiles
SPRITE_VDP=FONT_VDP+$0E00
PLAYER_SPRITE_VDP=SPRITE_VDP+$0020 ; write location for player sprite tiles
PLAYER_SPRITE_VDP_X=$780E0002 ; player sprite x vdp
PLAYER_SPRITE_VDP_Y=$78080002 ; player sprite y vdp
NPC0_SPRITE_VDP_X=PLAYER_SPRITE_VDP_X+$00080000 ; npc0 sprite x vdp
NPC0_SPRITE_VDP_Y=PLAYER_SPRITE_VDP_Y+$00080000 ; npc0 sprite y vdp
NPC1_SPRITE_VDP_X=NPC0_SPRITE_VDP_X+$00080000 ; npc1 sprite x vdp
NPC1_SPRITE_VDP_Y=NPC0_SPRITE_VDP_Y+$00080000 ; npc1 sprite y vdp
NPC2_SPRITE_VDP_X=NPC1_SPRITE_VDP_X+$00080000 ; npc2 sprite x vdp
NPC2_SPRITE_VDP_Y=NPC1_SPRITE_VDP_Y+$00080000 ; npc2 sprite y vdp
NPC3_SPRITE_VDP_X=NPC2_SPRITE_VDP_X+$00080000 ; npc3 sprite x vdp
NPC3_SPRITE_VDP_Y=NPC2_SPRITE_VDP_Y+$00080000 ; npc3 sprite y vdp
;
;-------------------------------------------------------------------------------
; status screen settings
;-------------------------------------------------------------------------------
STATUS_SCREEN_MAP_ICON_BASE_PATTERN=1000000000001111b
STATUS_SCREEN_MAP_ICON_STORY_EVENT_BASE_PATTERN=1000000000010001b
STATUS_SCREEN_MAP_ICON_OPTIONAL_EVENT_PATTERN=1000000000010000b
STATUS_SCREEN_OBJECTIVE_VDP=VDP_VRAM_WRITE_B+$00020000+$02000000
STATUS_SCREEN_INVENTORY_VDP=VDP_VRAM_WRITE_B+$00040000+$0B000000
STATUS_SCREEN_INVENTORY_DESCRIPTION_VDP=VDP_VRAM_WRITE_B+$002A0000+$0A000000
STATUS_SCREEN_SAVE0_VDP=VDP_VRAM_WRITE_B+$03800000+$00120000
STATUS_SCREEN_LOAD0_VDP=VDP_VRAM_WRITE_B+$08800000+$00120000
STATUS_SCREEN_INVENTORY_DESCRIPTION_ROWS=$0006
STATUS_SCREEN_INVENTORY_DESCRIPTION_COLS=$0011
;
;-------------------------------------------------------------------------------
; load screen settings
;-------------------------------------------------------------------------------
LOAD_SCREEN_SAVE0_VDP=VDP_VRAM_WRITE_B+$05000000+$00120000
;
;-------------------------------------------------------------------------------
; save game settings
;-------------------------------------------------------------------------------
SAVE_SIZE=$2000 ; max size of a save game slot
SAVE_GAME_START=MEM_OBJECTIVE ; start location of save game data
SAVE_GAME_END=MEM_ACTIVE_SCENE_EXIT_S ; end location of save game data
SAVE_DATA_LENGTH=SAVE_GAME_END-SAVE_GAME_START
;
;-------------------------------------------------------------------------------
; other display settings
;-------------------------------------------------------------------------------
ROW_HEIGHT=$800000 ; height of a tile row
PALETTE_SET_SIZE=$80 ; size of 4 palettes
;
;-------------------------------------------------------------------------------
; other settings
;-------------------------------------------------------------------------------
NPC_NAME_TABLE_SIZE=CharacterNameTableEnd-CharacterNameTableStart
MAX_ITEMS=$04 ; maximum number of items the player can carry
