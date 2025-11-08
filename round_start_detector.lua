-- Script to detect the start of a round in Forsaken (Krnl Executor)

local function detectRoundStart()  
    -- UI Element Monitoring (Example)  
    local loadingScreen = game.Workspace:FindFirstChild("LoadingScreen") -- Replace "LoadingScreen" with the actual name  
    if loadingScreen then  
        print("Round start detected (Loading Screen)!")  
        return true  
    end

    -- Memory Monitoring (Using Krnl)  
    local roundStateAddress = 0xYourRoundStateAddressHere -- Replace with the actual memory address  
    local roundState = krnl.readMemory(roundStateAddress, "int") -- Read as integer (adjust type if necessary)

    if roundState == 1 then -- Replace 1 with the actual value indicating a round start  
        print("Round start detected (Memory)!")  
        return true  
    end

    return false  
end

while true do  
    if detectRoundStart() then  
        print("New round started!")  
        -- Call your main auto-farm function here  
        break -- Break out of the loop after detecting one round start  
    end  
    wait(1) -- Check every 1 second  
end  
