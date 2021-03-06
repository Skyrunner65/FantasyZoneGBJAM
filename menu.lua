function menuload()
	if stage ~= nil then
		sx = 0
	else
		sx = 1
	end
	sy = 0
	sz = 0
	slives = 3
	sprice = 1
	ssound = true
	smusic = true
	keytype = 0 -- 1 for AZERTY, 2 for DVORAK
	layout = 0
	logo = love.graphics.newImage('/Sprites/Basics/Logo.png')
	cursor = love.graphics.newImage('/Sprites/Character/Opa-Opa.png')
end

function menuupdate()

end

function menudraw()
	love.graphics.draw(logo,5,0,0,1,1,0,0)
	love.graphics.draw(cursor,36,88 + (sx * 10))
	love.graphics.setColor(64,64,64)
	if sy == 0 then
		if stage ~= nil then
			love.graphics.print('CONTINUE', 60, 90)
		end
		love.graphics.print('START', 60, 100)
		love.graphics.print('OPTIONS', 60, 110)
		love.graphics.print('EXIT', 60, 120)
		love.graphics.print('MADE BY SKYRUNNER65', 10, 130)
		love.graphics.print('FRANCHISE BY SEGA', 20, 138)
	else
		if sz == 0 then
			love.graphics.print('SCREEN', 60, 90)
			love.graphics.print('AUDIO', 60, 100)
			love.graphics.print('GAME', 60, 110)
			love.graphics.print('CONTROLS', 60, 120)
		elseif sz == 1 then
			love.graphics.print('2X', 60, 90)
			love.graphics.print('3X (480P)', 60, 100)
			love.graphics.print('5X (720P)', 60, 110)
			love.graphics.print('7X (1080P)', 60, 120)
			love.graphics.print('FULLSCREEN', 60, 130)
		elseif sz == 2 then
			if smusic == true then
				love.graphics.print('MUSIC: YES', 60, 90)
			else
				love.graphics.print('MUSIC: NO', 60, 90)
			end
			if ssound == true then
				love.graphics.print('SOUND: YES', 60, 100)
			else
				love.graphics.print('SOUND: NO', 60, 100)
			end
		elseif sz == 3 then
			love.graphics.print('LIVES: '..slives, 60, 90)
			love.graphics.print('PRICES: '..(sprice + 1).."X", 60, 100)
		elseif sz == 4 then
			if keytype == 0 then
				love.graphics.print('KEYTYPE:QWERTY', 50, 90)
			elseif keytype == 1 then
				love.graphics.print('KEYTYPE:AZERTY', 50, 90)
			elseif keytype == 2 then
				love.graphics.print('KEYTYPE:DVORAK', 50, 90)
			end
			love.graphics.print('NEXT', 50, 100)
		elseif sz == 5 then
			love.graphics.print('LAYOUT 1', 0, 138)
			love.graphics.print('UP: '..controls[1][5], 0, 90)
			love.graphics.print('DOWN: '..controls[1][6], 0, 100)
			love.graphics.print('LEFT: '..controls[1][7], 0, 110)
			love.graphics.print('RIGHT: '..controls[1][8], 0, 120)
			love.graphics.print('A: '..controls[1][1], 80, 90)
			love.graphics.print('B: '..controls[1][2], 80, 100)
			love.graphics.print('START: '..controls[1][3], 80, 110)
			love.graphics.print('SELECT: '..controls[1][4], 80, 120)
			love.graphics.print('NEXT', 60, 130)
		elseif sz == 6 then
			love.graphics.print('LAYOUT 2', 0, 138)
			love.graphics.print('UP: '..controls[2][5], 0, 90)
			love.graphics.print('DOWN: '..controls[2][6], 0, 100)
			love.graphics.print('LEFT: '..controls[2][7], 0, 110)
			love.graphics.print('RIGHT: '..controls[2][8], 0, 120)
			love.graphics.print('A: '..controls[2][1], 80, 90)
			love.graphics.print('B: '..controls[2][2], 80, 100)
			love.graphics.print('START: '..controls[2][3], 80, 110)
			love.graphics.print('SELECT: '..controls[2][4], 80, 120)
			love.graphics.print('CONFIRM', 60, 130)
		end
	end
end