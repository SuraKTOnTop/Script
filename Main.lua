local scriptMap = {
    [126884695634066] = "GAG.lua",
    [2753915549] = "Blox%20Fruits.lua",
}
local file = scriptMap[game.PlaceId]
if file then
    local baseUrl = "https://raw.githubusercontent.com/SuraKTOnTop/Script/refs/heads/main/TongHop/"
    local url = baseUrl .. file
    loadstring(game:HttpGet(url))()
else
end
