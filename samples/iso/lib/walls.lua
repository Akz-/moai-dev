----------------------------------------------------------------
-- Copyright (c) 2010-2011 Zipline Games, Inc. 
-- All Rights Reserved. 
-- http://getmoai.com
----------------------------------------------------------------

-- world unit is 45.25, 45.25, 36.5
FLOOR_UNIT = 45.25
WALL_UNIT = 36.75

local tileDeck = MOAITileDeck2D.new ()
tileDeck:setTexture ( "iso-grid.png" )
tileDeck:setSize ( 8, 8 )
tileDeck:setRect ( -0.5, 0.5, 0.5, -0.5 )

local grid = MOAIGrid.new ()
grid:setSize ( 20, 20, 32, 32 )

grid:setRow ( 1, 	0x01, 0x02, 0x03, 0x04, 0x01, 0x02, 0x03, 0x04, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04 )
grid:setRow ( 2, 	0x09, 0x0a, 0x1a, 0x1a, 0x1a, 0x1a, 0x0b, 0x0c, 0x01, 0x02, 0x1a, 0x1a, 0x1a, 0x1a, 0x03, 0x04, 0x09, 0x0a, 0x0b, 0x0c )
grid:setRow ( 3, 	0x19, 0x19, 0x09, 0x0a, 0x0b, 0x0c, 0x1b, 0x1b, 0x09, 0x0a, 0x0b, 0x0c, 0x09, 0x0a, 0x0b, 0x0c, 0x19, 0x19, 0x1b, 0x1b )
grid:setRow ( 4, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b )
grid:setRow ( 5, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b )
grid:setRow ( 6, 	0x11, 0x12, 0x19, 0x19, 0x1b, 0x1b, 0x13, 0x14, 0x19, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x1b, 0x11, 0x12, 0x13, 0x14 )
grid:setRow ( 7, 	0x00, 0x00, 0x11, 0x12, 0x13, 0x14, 0x00, 0x00, 0x11, 0x12, 0x13, 0x14, 0x11, 0x12, 0x13, 0x14, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 8, 	0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x00, 0x01, 0x02, 0x03, 0x04, 0x00, 0x05, 0x06, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 9, 	0x09, 0x0a, 0x03, 0x04, 0x01, 0x02, 0x0b, 0x0c, 0x05, 0x0b, 0x0c, 0x09, 0x0a, 0x06, 0x19, 0x1b, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 10, 	0x19, 0x19, 0x09, 0x0a, 0x0b, 0x0c, 0x1b, 0x1b, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x19, 0x1b, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 11, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x19, 0x1b, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 12, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x19, 0x1b, 0x1b, 0x19, 0x19, 0x1b, 0x12, 0x13, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 13, 	0x11, 0x12, 0x19, 0x19, 0x1b, 0x1b, 0x13, 0x14, 0x12, 0x13, 0x14, 0x11, 0x12, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 14, 	0x1c, 0x00, 0x11, 0x12, 0x13, 0x14, 0x00, 0x1c, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0x0d, 0x0e, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 15, 	0x09, 0x07, 0x04, 0x00, 0x00, 0x01, 0x08, 0x0c, 0x0d, 0x08, 0x0c, 0x09, 0x07, 0x0e, 0x15, 0x16, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 16, 	0x19, 0x19, 0x09, 0x07, 0x08, 0x0c, 0x1b, 0x1b, 0x15, 0x1b, 0x1b, 0x19, 0x19, 0x16, 0x15, 0x16, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 17, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x15, 0x1b, 0x1b, 0x19, 0x19, 0x16, 0x15, 0x16, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 18, 	0x19, 0x19, 0x19, 0x19, 0x1b, 0x1b, 0x1b, 0x1b, 0x15, 0x1b, 0x1b, 0x19, 0x19, 0x16, 0x1d, 0x1e, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 19, 	0x11, 0x12, 0x19, 0x19, 0x1b, 0x1b, 0x13, 0x14, 0x1d, 0x13, 0x14, 0x11, 0x12, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )
grid:setRow ( 20, 	0x00, 0x00, 0x11, 0x12, 0x13, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )

-- set up the grid deck
local gridDeck = MOAIGridDeck2D.new ()
gridDeck:setGrid ( grid )
gridDeck:setDeck ( tileDeck )
gridDeck:reserveBrushes ( 26 )

gridDeck:setBrush ( 1,		0x01, 0x01,			2, 6, 		-64, -192 )
gridDeck:setBrush ( 2,		0x03, 0x01,			2, 7, 		-64, -224 )
gridDeck:setBrush ( 3,		0x03, 0x01,			4, 7, 		-64, -224 )
gridDeck:setBrush ( 4,		0x05, 0x01,			2, 7, 		0, -224 )
gridDeck:setBrush ( 5,		0x07, 0x01,			2, 6, 		0, -192 )
gridDeck:setBrush ( 6,		0x09, 0x01,			4, 7, 		-64, -224 )
gridDeck:setBrush ( 7,		0x0d, 0x01,			4, 7, 		-64, -224 )
gridDeck:setBrush ( 8,		0x11, 0x01,			4, 6, 		-64, -192 )

gridDeck:setBrush ( 9,		0x01, 0x08,			2, 6, 		-64, -192 )
gridDeck:setBrush ( 10,		0x03, 0x09,			2, 6, 		-64, -192 )
gridDeck:setBrush ( 11,		0x03, 0x09,			2, 6, 		-64, -192 )
gridDeck:setBrush ( 12,		0x05, 0x09,			2, 6, 		0, -192 )
gridDeck:setBrush ( 13,		0x05, 0x09,			2, 6, 		0, -192 )
gridDeck:setBrush ( 14,		0x07, 0x08,			2, 6, 		0, -192 )
gridDeck:setBrush ( 15,		0x09, 0x08,			3, 6, 		-32, -192 )
gridDeck:setBrush ( 16,		0x0c, 0x08,			3, 6, 		-64, -192 )
gridDeck:setBrush ( 17,		0x0f, 0x08,			4, 5, 		-32, -160 )

gridDeck:setBrush ( 18,		0x01, 0x0e,			2, 6, 		-64, -192 )
gridDeck:setBrush ( 19,		0x03, 0x0f,			2, 7, 		-64, -192 )
gridDeck:setBrush ( 20,		0x03, 0x0f,			2, 7, 		-64, -192 )
gridDeck:setBrush ( 21,		0x05, 0x0f,			2, 7, 		0, -192 )
gridDeck:setBrush ( 22,		0x05, 0x0f,			2, 7, 		0, -192 )
gridDeck:setBrush ( 23,		0x07, 0x0e,			2, 6, 		0, -192 )
gridDeck:setBrush ( 24,		0x09, 0x0e,			3, 6, 		-32, -192 )
gridDeck:setBrush ( 25,		0x0c, 0x0e,			3, 6, 		-64, -192 )
gridDeck:setBrush ( 26,		0x0f, 0x0e,			4, 5, 		-32, -160 )

-- set the bounds override
local boundsDeck = MOAIBoundsDeck.new ()
boundsDeck:reserveBounds ( 11 )
boundsDeck:reserveIndices ( 26 )
gridDeck:setBoundsDeck ( boundsDeck )

function setBounds ( idx, x1, y1, z1, x2, y2, z2 )
	local f = FLOOR_UNIT * 0.99
	local w = WALL_UNIT
	boundsDeck:setBounds (  idx, f * x1, f * -y1, w * z1, f * x2, f * -y2, w *z2 )
end

setBounds ( 1,		-2, -2, 0,			0, 0, 4 )
setBounds ( 2,		-1, -2, 0,			0, 0, 4 )
setBounds ( 3,		-1, -2, 0,			0, -1, 4 )
setBounds ( 4,		-2, -1, 0,			-1, 0, 4 )
setBounds ( 5,		-2, -1, 0,			0, 0, 4 )
setBounds ( 6,		-1, -1, 0,			0, 0, 4 )

setBounds ( 7,		-0.5, -2, 0,		0, 0, 4 )
setBounds ( 8,		-0.5, -2, 0,		0, -0.5, 4 )
setBounds ( 9,		-2, -0.5, 0,		-0.5, 0, 4 )
setBounds ( 10,		-2, -0.5, 0,		0, 0, 4 )
setBounds ( 11,		-0.5, -0.5, 0,		0, 0, 4 )

boundsDeck:setIndex ( 1,	1 )
boundsDeck:setIndex ( 2,	1 )
boundsDeck:setIndex ( 3,	1 )
boundsDeck:setIndex ( 4,	1 )
boundsDeck:setIndex ( 5,	1 )
boundsDeck:setIndex ( 6,	1 )
boundsDeck:setIndex ( 7,	1 )
boundsDeck:setIndex ( 8,	1 )

boundsDeck:setIndex ( 9,	2 )
boundsDeck:setIndex ( 10,	2 )
boundsDeck:setIndex ( 11,	3 )
boundsDeck:setIndex ( 12,	4 )
boundsDeck:setIndex ( 13,	5 )
boundsDeck:setIndex ( 14,	5 )
boundsDeck:setIndex ( 15,	5 )
boundsDeck:setIndex ( 16,	2 )
boundsDeck:setIndex ( 17,	6 )

boundsDeck:setIndex ( 18,	7 )
boundsDeck:setIndex ( 19,	7 )
boundsDeck:setIndex ( 20,	8 )
boundsDeck:setIndex ( 21,	9 )
boundsDeck:setIndex ( 22,	10 )
boundsDeck:setIndex ( 23,	10 )
boundsDeck:setIndex ( 24,	10 )
boundsDeck:setIndex ( 25,	7 )
boundsDeck:setIndex ( 26,	11 )

function makeWallProp ( idx, x, y )

	local prop = MOAIProp.new ()
	prop:setDeck ( gridDeck )
	prop:setIndex ( idx )
	prop:setScl ( 1, -1, 1 )
	prop:setLoc ( FLOOR_UNIT * x, FLOOR_UNIT * y )
	prop:setBillboard ( true )
	return prop
end

function tileToWorld ( x, y, z )
	return x * FLOOR_UNIT, y * FLOOR_UNIT, z * WALL_UNIT
end