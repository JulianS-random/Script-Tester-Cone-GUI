-- Simple Anti-Cheat Bypass (String Encryption)

local function encryptString(str)  
  local encrypted = ""  
  for i = 1, #str do  
    encrypted = encrypted .. string.char(string.byte(str, i) + 5)  
  end  
  return encrypted  
end

local function decryptString(str)  
  local decrypted = ""  
  for i = 1, #str do  
    decrypted = decrypted .. string.char(string.byte(str, i) - 5)  
  end  
  return decrypted  
end

local encryptedScript = encryptString([[  
-- The round start detector script goes here.  
local function detectRoundStart()  
  -- Placeholder Round Start Detection  
  local loadingScreen = game.Workspace:FindFirstChild("LoadingScreen")  
  if loadingScreen then  
    print("Round start detected!")  
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
loadstring(decryptedScript)()  
