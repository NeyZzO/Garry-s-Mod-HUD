-- Fonts

surface.CreateFont( "police1", {
	font = "Big Shoulders Display", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 20,
	weight = 400,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )


-- Config

<<<<<<< HEAD

=======
>>>>>>> 1d5cbe66c138f10c52a2ca2ba8f56f972d8ae9a9
local text = true

-- Retirer le HUD de base 

hook.Add( "HUDShouldDraw", "DefautHUD", function( name )
    if ( name == "CHudHealth" or name == "CHudBattery" ) then
        return false
    end
end )

-- hud

hook.Add("HUDPaint", "MonHud", function()

    local health = LocalPlayer():Health()
    local armor = LocalPlayer():Armor()
    local bouffe = LocalPlayer():getDarkRPVar("Energy")
    local nomrp = LocalPlayer():Name()

    if health > 100 then health = 100 end
    if armor > 100 then armor = 100 end

    if health < 0 then health = 0 end
    if armor < 0 then armor = 0 end

    draw.RoundedBox(0, 15, ScrH() - 30, 300, 15 , Color(0,0,0, 200))
    draw.RoundedBox(0, 15, ScrH() - 30, health*3, 15 , Color(203, 67, 53))
    
    if armor > 0 then 

        draw.RoundedBox(0, 15, ScrH() - 50, 300, 15 , Color(0,0,0, 200))
        draw.RoundedBox(0, 15, ScrH() - 50, armor*3, 15 , Color(37, 192, 255))
        draw.RoundedBox(0, 15, ScrH() - 70, 300, 15 , Color(0,0,0, 200))
        draw.RoundedBox(0, 15, ScrH() - 70, bouffe*3, 15 , Color(255, 116, 37))
        if text = true then
            draw.SimpleText(armor, "police1", 155, ScrH() - 53.5, Color(255,255,255))
        end

    else

        draw.RoundedBox(0, 15, ScrH() - 50, 300, 15 , Color(0,0,0, 200))
        draw.RoundedBox(0, 15, ScrH() - 50, bouffe*3, 15 , Color(255, 116, 37))
        if text = true then
            draw.SimpleText(bouffe, "police1", 155, ScrH() - 53.5, Color(255,255,255))
        end

    
    end

   

    if text = true then
        draw.SimpleText(health, "police1", 155, ScrH() - 33.5, Color(255,255,255))
    end
    




end)

local function DisplayNotify(msg)
    local txt = msg:ReadString()
    GAMEMODE:AddNotify(txt, msg:ReadShort(), msg:ReadLong())
    surface.PlaySound("buttons/lightswitch2.wav")
    MsgC(Color(255, 20, 20, 255), "111", Color(200, 200, 200, 255), txt, "\n")
end




