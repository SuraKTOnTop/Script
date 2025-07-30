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
Tabs.ScriptSection({ Title = Grow A Garden (Cần Get Key) })

Tabs.ScriptButton({
    Title = SpeedHubX,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(httpsraw.githubusercontent.comAhmadV99Speed-Hub-XmainSpeed%20Hub%20X.lua, true))()
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})

Tabs.ScriptButton({
    Title = ThunderZ Hub,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(httpsraw.githubusercontent.comThundarZWelcomerefsheadsmainMainScriptMain.lua, true))()
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})

Tabs.ScriptButton({
    Title = NoLag Hub,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGetAsync(httpsraw.githubusercontent.comNoLag-idNo-Lag-HUBrefsheadsmainLoaderLoaderV1.lua))()
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})

Tabs.ScriptButton({
    Title = Nat Hub,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(httpsraw.githubusercontent.comArdyBotzzNatHubrefsheadsmasterNatHub.lua))();
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})

Tabs.ScriptButton({
    Title = Limit Hub,
    Desc = Không Dùng Được Cho Xeno,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(('httpsraw.githubusercontent.comFakeModzLimitHubrefsheadsmainLimitHub_Luarmor_E.lua')))()
    end
})
Tabs.ScriptButton({
    Title = OMG Hub,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(httpsraw.githubusercontent.comOmgshitScriptsmainMainLoader.lua))()
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})
Tabs.ScriptSection({ Title = Grow A Garden (Không Cần Get Key) })
Tabs.ScriptButton({
    Title = ThanHub,
    Callback = function()
        WindUINotify({
            Title = Vui Lòng Chờ...,
            Content = ...,
            Icon = loader,
            Duration = 1,
        })
        loadstring(gameHttpGet(httpsraw.githubusercontent.comthantzythanhubrefsheadsmainthanv1))()
        WindUINotify({
            Title = Đã Chạy Thành Công.,
            Content = Chúc bạn chơi Game vui vẻ.,
            Icon = tick,
            Duration = 2,
        })
    end
})
-- Nội dung tab Cài Đặt
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
