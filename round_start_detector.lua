-- Round Start Detector Script

local function detectRoundStart()  
  -- Replace this with your actual round start detection logic.  
  -- This is a placeholder - you'll need to observe the game  
  -- and determine how to detect the start of a round.  
  -- Example: Check for a UI element appearing, an event firing, etc.

  -- Placeholder: Checks for a loading screen named "LoadingScreen"  
  local loadingScreen = game.Workspace:FindFirstChild("LoadingScreen")  
  if loadingScreen then  
    print("Round start detected!")  
    return true  -- Round started  
  end

  return false -- Round hasn't started  
end

while true do  
  if detectRoundStart() then  
    print("New round started!")  
    -- Add your auto-farm logic here (later)  
    break -- Exit loop once round start is detected, you can remove this if you want the script to continually detect  
  end  
  wait(1) -- Check every 1 second  
end  
