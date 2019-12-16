
local web_ui

function OnPackageStart()
    local width, height = GetScreenSize()

    web_ui = CreateWebUI(width / 4, height / 15, width / 4 , height / 4, 4, 120);
    LoadWebFile(web_ui, "http://asset/tablet/client/tablet/index.html");
    SetWebAlignment(web_ui, 0.0, 0.0);
    SetWebAnchors(web_ui, 0.0, 0.0, 1.0, 1.0);
	SetWebVisibility(web_ui, WEB_HIDDEN)
end
AddEvent("OnPackageStart", OnPackageStart)

function OnPackageStop()
	DestroyWebUI(web_ui)
end

AddEvent("OnPackageStop", OnPackageStop)


function OnKeyPress(key)
	if key == "F1" then
        local visibility = GetWebVisibility(web_ui)
        if visibility == WEB_HIDDEN then
            SetIgnoreLookInput(true)
            SetIgnoreMoveInput(true)
            ShowMouseCursor(true)
            SetInputMode(INPUT_GAMEANDUI)
            SetWebVisibility(web_ui, WEB_VISIBLE)
           
        end
        if visibility == WEB_VISIBLE then
            SetIgnoreLookInput(false)
            SetIgnoreMoveInput(false)
            ShowMouseCursor(false)
            SetInputMode(INPUT_GAME)
            SetWebVisibility(web_ui, WEB_HIDDEN)

        end
    end
end
AddEvent("OnKeyPress", OnKeyPress)
