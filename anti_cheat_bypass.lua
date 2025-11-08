local function encryptString(str)  
    local encrypted = ""  
    for i = 1, #str do  
        encrypted = encrypted .. string.char(string.byte(str, i) + 5) -- Add 5 to each character's ASCII value  
    end  
    return encrypted  
end

local function decryptString(str)  
    local decrypted = ""  
    for i = 1, #str do  
        decrypted = decrypted .. string.char(string.byte(str, i) - 5) -- Subtract 5 from each character's ASCII value  
    end  
    return decrypted  
end

local encryptedScript = encryptString([[  
local function detectRoundStart()  
    local loadingScreen = game.Workspace:FindFirstChild("LoadingScreen")  
    if loadingScreen then  
        print("Round start detected (Loading Screen)!")  
        return true  
    end

    local roundStateAddress = 0xYourRoundStateAddressHere  
    local roundState = krnl.readMemory(roundStateAddress, "int")

    if roundState == 1 then  
        print("Round start detected (Memory)!")  
        return true  
    end

    return false  
end

while true do  
    if detectRoundStart() then  
        print("New round started!")  
        break  
    end  
    wait(1)  
end  
]])

local decryptedScript = decryptString(encryptedScript)  
loadstring(decryptedScript)() -- Execute the decrypted script  
