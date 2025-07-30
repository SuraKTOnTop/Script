-- Load WindUI
local WindUI = loadstring(game:HttpGet("https://github.com/SuraKTOnTop/UI/main.lua"))()

-- Hàm gradient chữ (dự phòng nếu muốn dùng sau)
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

-- Tạo cửa sổ chính
local Window = WindUI:CreateWindow({
    Title = "Tổng Hợp Script",
    Icon = "door-closed",
    Author = "by SuraKT",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = false,
        Callback = function() print("clicked") end,
        Anonymous = false
    },
    SideBarWidth = 200,
    HasOutline = true,
})

-- Nút mở UI
Window:EditOpenButton({
    Title = "Open Example UI",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex("FF0F7B"), Color3.fromHex("F89B29")),
    Draggable = true,
})

-- Tabs
local Tabs = {
    Script = Window:Tab({ Title = "Script", ShowTabTitle = true, Icon = "code" }),
    be = Window:Divider(),
    WindowTab = Window:Tab({ Title = "Cài Đặt", ShowTabTitle = true, Icon = "settings" }),
}
Tabs.WindowTab:Section({ Title = "Keybinds" })

Tabs.WindowTab:Keybind({
    Title = "Phím Mở UI",
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
    Title = "Chọn Giao Diện",
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
    Title = "Trong Suốt Giao Diện",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})
