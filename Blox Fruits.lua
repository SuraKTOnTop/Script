-- Load WindUI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- Hàm gradient chữ
local function gradient(text, startColor, endColor)
    local result, length = "", #text
    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result ..= ("<font color=\"rgb(%d, %d, %d)\">%s</font>"):format(r, g, b, text:sub(i, i))
    end
    return result
end
local Window = WindUI:CreateWindow({
    Title = "WindUI Library",
    Icon = "door-closed",
    Author = "Sura",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function() print("clicked") end,
        Anonymous = true
    },
    SideBarWidth = 200,
    HasOutline = true,
    KeySystem = {
        Key = { "1234", "5678" },
        SaveKey = true
    },
})

Window:EditOpenButton({
    Title = "Open Example UI",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
    Draggable = true,
})
local Tabs = {
    Script = Window:Tab({ Title = "Script", ShowTabTitle = true }),
    be = Window:Divider(),
    WindowTab = Window:Tab({ Title = "Cài Đặt", ShowTabTitle = true }),}
Tabs.Script:Button({
    Title = "Redz Hub",
    Callback = function()
        WindUI:Notify({
            Title = "Vui Lòng Chờ...",
            Content = "...",
            Icon = "loader",
            Duration = 1,
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
        WindUI:Notify({
            Title = "Đã Chạy Thành Công.",
            Content = "Chúc bạn chơi Game vui vẻ.",
            Icon = "tick",
            Duration = 2,
        })
    end
})
Tabs.Script:Button({
    Title = "W-Azure",
    Callback = function()
        WindUI:Notify({
            Title = "Vui Lòng Chờ...",
            Content = "...",
            Icon = "loader",
            Duration = 1,
        })
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        WindUI:Notify({
            Title = "Đã Chạy Thành Công.",
            Content = "Chúc bạn chơi Game vui vẻ.",
            Icon = "tick",
            Duration = 2,
        })
    end
})
Tabs.Script:Button({
    Title = "SpeedHubX",
    Callback = function()
        WindUI:Notify({
            Title = "Vui Lòng Chờ...",
            Content = "...",
            Icon = "loader",
            Duration = 1,
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        WindUI:Notify({
            Title = "Đã Chạy Thành Công.",
            Content = "Chúc bạn chơi Game vui vẻ.",
            Icon = "tick",
            Duration = 2,
        })
    end
})
Tabs.Script:Button({
    Title = "HoHo Hub",
    Callback = function()
        WindUI:Notify({
            Title = "Vui Lòng Chờ...",
            Content = "...",
            Icon = "loader",
            Duration = 1,
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        WindUI:Notify({
            Title = "Đã Chạy Thành Công.",
            Content = "Chúc bạn chơi Game vui vẻ.",
            Icon = "tick",
            Duration = 2,
        })
    end
})
Tabs.WindowTab:Section({ Title = "Keybinds" })
Tabs.WindowTab:Keybind({
    Title = "Keybind",
    Desc = "Dành Cho Máy Tính",
    Value = "P",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})
Tabs.WindowTab:Section({ Title = "Theme" })
local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = Tabs.WindowTab:Dropdown({
    Title = "Chọn Theme",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = Tabs.WindowTab:Toggle({
    Title = "Trong Suốt Cửa Sổ",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})
