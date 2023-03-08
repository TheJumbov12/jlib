-- By re-loading this file without restarting your server, this will break certain commands.
JTime = nil
JDm = nil
Funfacts = {"Sharks don't have bones","Marie Curie's notebooks are still radioactive.", "IKEA consumes about 1 percent of the world's lumber.", "Chinese checkers was invented in Germany.", "When asked if Abe had any hobbies, Mary Todd Lincoln said, “Cats.”", "The average American typically eats between 3000 and 5000 calories at Thanksgiving dinner."}
function GamerNotallowed()
    MsgC( Color( 100, 220, 100, 200 ), "/!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//\n")
    MsgC( Color( 100, 220, 100, 200 ), "/!/This command can only be used via the server console/!/\n")
    MsgC( Color( 100, 220, 100, 200 ), "/!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//!//\n")
end
GamemodeLoaded = engine.ActiveGamemode()
local rand = ( Funfacts[ math.random( 0 , #Funfacts ) ] )
 concommand.Add( "jaddonsinfo", function(self)
    if SERVER then
        print("Listing server info:")
        print("IP:", game.GetIPAddress())
        print("Map:", game.GetMap())
        print("Gamemode:", GamemodeLoaded)
        print("Now listing addons:")
        print("J-Lib")
        print(Jlib)
        print("J-Time")
        print(JTime)
        print("J-Deathmatch")
        print(JDm)
        print(( Funfacts[ math.random( 0 , #Funfacts ) ] ))
        print("----")
    else
        GamerNotallowed()
    end
 end)

Map = game.GetMap()

if GamemodeLoaded == "sandbox" then
    
end


function Lykanisamanchild( ply )
    if CLIENT then
        Clienttime = os.date()
    end
end
 NR = "Not Released"
 Rel = "Released"
 NIns = "Not Installed"
 Ins = "Installed"
 DPV = "Developer Preview"

--[[ Lastknownplayer = net.Receive("Lykanisdumb")

 concommand.Add("checklastplayerjoin", function ()
    print("Last known player:\n")
    print(Lastknownplayer)
 end) ]]
--[[  concommand.Add( "gamermodeurge", function()
    if CLIENT then
        local Frame = vgui.Create( "DFrame" )
        Frame:SetPos( 5, 5 ) 
        Frame:SetSize( ScrW() * 0.208, ScrH() * 0.277 )
        Frame:Center()
        Frame:SetTitle( "Name window" ) 
        Frame:SetVisible( true ) 
        Frame:SetDraggable( false ) 
        Frame:ShowCloseButton( true ) 
        Frame:MakePopup()
    else
        print("This can only be used via in-game console")
    end
end) ]]


hook.Add( "Initialize", "GamerWaitEnforcer", function()
	print( "Waited for gamemode to init." )
    if JTime == nil then
        JTime = NIns
    end
    if JTime == true then
        JTime = Ins
    end
    if JDm == nil then
        JDm = NR
    end
    if JDm == true then
        JDm = Ins
    end
    Jlib = Ins
end )

-- Lykan is a man-child.
-- A little man lives within this very file. You may not be able to see him, but you can hear him if you read between the lines. 
-- The little man works for a compony, that compony runs this very code, he runs up and down this code to run it. 
-- He thinks about who wrote this code, he wounders how hard they worked to get where they are. 
-- The little man then relizes that the code he is running was stolen from the person who made it. That upseted the little man.
-- Do you want to make the little man sad?