local WindUI = loadstring(gameHttpGet(httpsgithub.comFootagesusWindUIreleaseslatestdownloadmain.lua))()
local function gradient(text, startColor, endColor)
    local result, length = , #text
    for i = 1, length do
        local t = (i - 1)  math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R)  t)  255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G)  t)  255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B)  t)  255)
        result ..= (font color=rgb(%d, %d, %d)%sfont)format(r, g, b, textsub(i, i))
    end
    return result
end
local Window = WindUICreateWindow({
    Title = Tổng Hợp Script,
    Icon = door-closed,
    Author = by SuraKT,
    Folder = CloudHub,
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = Dark,
    User = {
        Enabled = false,
        Callback = function() print(clicked) end,
        Anonymous = false
    },
    SideBarWidth = 200,
    HasOutline = true,
})
WindowEditOpenButton({
    Title = Open Example UI,
    Icon = monitor,
    CornerRadius = UDim.new(0, 16),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromHex(FF0F7B), Color3.fromHex(F89B29)),
    Draggable = true,
})
local Tabs = {
    Script = WindowTab({ Title = Script, ShowTabTitle = true, Icon = code }),
    be = WindowDivider(),
    WindowTab = WindowTab({ Title = Cài Đặt, ShowTabTitle = true, Icon = settings }),
}
Tabs.WindowTabSection({ Title = Keybinds })

Tabs.WindowTabKeybind({
    Title = Phím Mở UI,
    Desc = Dành Cho Máy Tính,
    Value = P,
    Callback = function(v)
        WindowSetToggleKey(Enum.KeyCode[v])
    end
})
Tabs.WindowTabSection({ Title = Theme })

local themeValues = {}
for name, _ in pairs(WindUIGetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = Tabs.WindowTabDropdown({
    Title = Chọn Giao Diện,
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUISetTheme(theme)
    end
})
themeDropdownSelect(WindUIGetCurrentTheme())

local ToggleTransparency = Tabs.WindowTabToggle({
    Title = Trong Suốt Giao Diện,
    Callback = function(e)
        WindowToggleTransparency(e)
    end,
    Value = WindUIGetTransparency()
})
