	;---------------------------------------------------------------------------
	; reusable code for the retail clerk series of games
	;---------------------------------------------------------------------------
	; i/o
	include	'io/sub_ReadJoypads.X68'
	include 'io/sub_SaveLoad.X68'	
	; graphics
	include	'graphics/sub_BuildVRAMWriteAddress.X68'
	include	'graphics/sub_ClearVRAM.X68'
	include	'graphics/sub_DrawTileset.X68'
	include	'graphics/sub_FadeInFadeOut.X68'
	include	'graphics/sub_LoadPalettes.X68'
	include	'graphics/sub_LoadTiles.X68'
	; event handling
	include	'event/sub_BuildActionTableOffset.X68'
	include 'event/sub_FindActionTarget.X68'
	include	'event/sub_ProcessAction.X68'
	include	'event/sub_ProcessIntroScreen.X68'
	include 'event/sub_ProcessScriptedEvent.X68'
	include	'event/sub_QueueScriptedEvent.X68'
	; sprite handling
	include	'sprite/sub_FixSprites.X68'
	include	'sprite/sub_FlipSpriteMapPosition.X68'
	include	'sprite/sub_LoadPlayerSprite.X68'
	include	'sprite/sub_LoadSpriteTiles.X68'
	include	'sprite/sub_MovePlayer.X68'
	include	'sprite/sub_MoveSprite.X68'
	include	'sprite/sub_OrderSprites.X68'
	include	'sprite/sub_ReloadSpriteTiles.X68'
	include	'sprite/sub_SetActiveSpriteMapRowCol.X68'
	include	'sprite/sub_SetDefaultSpriteOrder.X68'
	include	'sprite/sub_SetSpriteLink.X68'
	include	'sprite/sub_SetSpriteLinks.X68'
	include	'sprite/sub_SetSpritePattern.X68'
	include	'sprite/sub_StopSprite.X68'
	include	'sprite/sub_TestSpriteCollision.X68'
	include	'sprite/sub_UpdateSpriteSortTable.X68'
	; scene handling
	include 'scene/sub_BuildNPCObjectList.X68'
	include 'scene/sub_DrawScene.X68'
	include 'scene/sub_LoadScene.X68'
	include 'scene/sub_ReloadCurrentScene.X68'
	; dialog handling
	include	'dialog/sub_ClearDialog.X68'
	include	'dialog/sub_ProcessDialog.X68'
	include	'dialog/sub_ResetDialog.X68'
	include	'dialog/sub_SetDialogOpening.X68'
	include	'dialog/sub_ShowInteractDialog.X68'
	; inventory handling
	include	'inventory/sub_ClearPlayerInventory.X68'
	include	'inventory/sub_Inventory.X68'
