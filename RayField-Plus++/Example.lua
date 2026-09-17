local Rayfield = loadstring(readfile("Rayfield.luau"))()

task.wait(2)

Rayfield:AddTheme({
    Name = "Neon Void",

    CornerRoundness     = UDim.new(0, 20),
    ElementCornerRadius = UDim.new(0, 12),
    PillCornerRadius    = UDim.new(1, 0),

    WindowColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0,      Color3.fromRGB(6, 8, 14)),
        ColorSequenceKeypoint.new(0.9999, Color3.fromRGB(10, 14, 20)),
        ColorSequenceKeypoint.new(1,      Color3.fromRGB(14, 20, 26)),
    }),
    ShadowColor = Color3.fromRGB(4, 5, 8),

    ElementGradient                = Color3.fromRGB(16, 20, 26),
    ElementStroke                  = Color3.fromRGB(30, 40, 38),
    ElementStrokeGradient          = Color3.fromRGB(40, 55, 50),
    ElementStrokeHover             = Color3.fromRGB(70, 255, 190),
    ElementTransparency            = 0,
    ElementStrokeTransparency      = 0,
    ElementStrokeHoverTransparency = 0,
    ElementTextHoverColor          = Color3.fromRGB(255, 255, 255),

    TabColor      = Color3.fromRGB(230, 255, 245),
    TabBackground = Color3.fromRGB(18, 24, 30),
    TabStroke     = Color3.fromRGB(70, 255, 190),

    SliderBackground      = Color3.fromRGB(16, 20, 26),
    SliderBackgroundHover = Color3.fromRGB(24, 30, 38),
    SliderProgress        = Color3.fromRGB(70, 255, 190),
    SliderStroke          = Color3.fromRGB(255, 255, 255),
    SliderHandle          = Color3.fromRGB(255, 255, 255),

    ToggleTrack               = Color3.fromRGB(0, 0, 0),
    ToggleTrackTransparency   = 0.9,
    ToggleKnobOff             = Color3.fromRGB(255, 255, 255),
    ToggleKnobOffTransparency = 0.8,
    DarkToggleOverlay         = true,

    FieldBackground   = Color3.fromRGB(255, 255, 255),
    FieldTransparency = 0.92,
    FieldGlow         = Color3.fromRGB(70, 255, 190),
    PlaceholderColor  = Color3.fromRGB(150, 165, 160),
    SurfaceStroke     = Color3.fromRGB(255, 255, 255),

    NeutralButton       = Color3.fromRGB(22, 28, 34),
    NeutralButtonHover  = Color3.fromRGB(30, 38, 44),
    NeutralButtonStroke = Color3.fromRGB(255, 255, 255),

    ContentColor = Color3.fromRGB(190, 205, 200),
    TitlingColor = Color3.fromRGB(230, 255, 245),
    ActionColor  = Color3.fromRGB(255, 255, 255),

    AccentColor  = Color3.fromRGB(70, 255, 190),
    AccentStroke = Color3.fromRGB(140, 255, 220),
    AccentGlow   = 0.4,

    StatBackground    = Color3.fromRGB(12, 16, 20),
    DropdownHighlight = Color3.fromRGB(70, 255, 190),

    ErrorColor       = Color3.fromRGB(220, 70, 70),
    ErrorStrokeColor = Color3.fromRGB(255, 100, 100),

    Font      = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
    TitleFont = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold,   Enum.FontStyle.Normal),

    LiveAnimation = false,
})

local Window = Rayfield:CreateWindow({
    title         = "Example",
    subtitle      = "RayField Plus++",
    sidebarLayout = true,

    Size  = UDim2.fromOffset(640, 640),
    Font  = Enum.Font.Gotham,
    Theme = "Midnight",

    OpenButton = {
        Title    = "Plutonium",
        Subtitle = "Tap to open",
        Icons    = "rbxassetid://120122773078069",
    },

    UserInfo = {
        Title = "PlaceHolder",
        Icons = "rbxassetid://0",
    },

    configuration = {
        autoSave  = true,
        setFolder = "Plutonium/Config",
    },

    appearance = {
        setFolder = "Plutonium",
    },
})

local Home   = Window:CreateTab({ name = "Home",   icon = 93364949241311  })
local Combat = Window:CreateTab({ name = "Combat", icon = 84750991656135  })
local Fields = Window:CreateTab({ name = "Fields", icon = 100604009889706 })
local Stats  = Window:CreateTab({ name = "Stats",  icon = 85925158736685  })
local Layout = Window:CreateTab({ name = "Layout", icon = 84750991656135  })

Home:CreateSection({ name = "Gameplay" })

Home:CreateToggle({
    name     = "Auto Sprint",
    value    = true,
    callback = function(value) print("Auto Sprint:", value) end,
})

Home:CreateToggle({
    name        = "Reduced Motion",
    description = "Disables screen shake and camera effects.",
    callback    = function(value) print("Reduced Motion:", value) end,
})

Home:CreateSlider({
    name      = "Field of View",
    range     = { 70, 120 },
    increment = 1,
    value     = 90,
    suffix    = "°",
    callback  = function(value) workspace.CurrentCamera.FieldOfView = value end,
})

Home:CreateSwitch({ name = "Auto Loot", value = false, callback = function(value) print("Auto Loot:", value) end })

Home:CreateSection({ name = "Interface" })

Home:CreateToggle({ name = "Show FPS Counter" })

Home:CreateDropdown({
    name     = "Quality",
    options  = { "Low", "Medium", "High", "Ultra" },
    value    = "High",
    callback = function(value) print("Quality:", value) end,
})

Home:CreateSection({ name = "Feedback" })

Home:CreateButton({
    name     = "Send Notification",
    icon     = 93364949241311,
    callback = function()
        Window:Notify({
            title   = "Auto-saved",
            content = "Your configuration was saved.",
            icon    = 125823673784681,
        })
    end,
})

Home:CreateButton({
    name     = "Send Toast",
    icon     = 125823673784681,
    callback = function()
        Window:Toast({ title = "Saved", icon = 125823673784681 })
    end,
})

Home:CreateButton({
    name     = "Open Popup",
    icon     = 83277910885129,
    callback = function()
        Window:Popup({
            title   = "Reset everything?",
            content = "This clears every saved value. You can't undo it.",
            icon    = 83277910885129,
            options = {
                { text = "Cancel" },
                { text = "Reset", style = "danger" },
            },
        })
    end,
})

Combat:CreateSection({ name = "Aiming" })
Combat:CreateToggle({ name = "Aimbot", value = true })
Combat:CreateSlider({ name = "Smoothness", range = { 0, 100 }, value = 40, suffix = "%" })

Combat:CreateDropdown({
    name        = "Modules",
    description = "Pick any combination of modules to load.",
    multiSelect = true,
    options     = { "Aimbot", "ESP", "Triggerbot", "Fly" },
    value       = { "ESP" },
    placeholder = "None selected",
})

Fields:CreateSection({ name = "Setup" })

Fields:CreateInput({ name = "Player Name", placeholder = "Enter a name" })

Fields:CreateInput({
    name        = "Max Players",
    description = "Numeric only, commits on blur or Enter.",
    numeric     = true,
    value       = "16",
})

Fields:CreateKeybind({ name = "Sprint", value = Enum.KeyCode.LeftShift })

Fields:CreateKeybind({
    name     = "Zoom",
    value    = Enum.KeyCode.C,
    hold     = true,
    callback = function(holding) print("Zoom:", holding) end,
})

Fields:CreateKeybind({
    name         = "Menu Key",
    value        = Enum.KeyCode.RightControl,
    isMenuToggle = true,
})

Fields:CreateColorPicker({
    name  = "Highlight",
    color = Color3.fromRGB(96, 205, 255),
    alpha = 1,
})

Stats:CreateSection({ name = "Session" })

local Revenue = Stats:CreateStat({ name = "Revenue", prefix = "$",      value = 12400 })
local Kills   = Stats:CreateStat({ name = "Kills",   suffix = " kills", value = 128   })

Stats:CreateButton({
    name     = "Simulate Round",
    callback = function()
        Revenue:Set(Revenue.value + math.random(500, 3000))
        Kills:Set(Kills.value   + math.random(1, 20))
    end,
})

Layout:CreateSection({ name = "Loadout" })

local Grid        = Layout:CreateGroup()
local LeftColumn  = Grid:CreateGroup({ direction = "column" })
LeftColumn:CreateToggle({ name = "Aimbot",     flag = "LoadoutAimbot", value = true })
LeftColumn:CreateToggle({ name = "Triggerbot" })

local RightColumn = Grid:CreateGroup({ direction = "column" })
RightColumn:CreateToggle({ name = "ESP",     value = true })
RightColumn:CreateToggle({ name = "Tracers" })

Window:CreateSection({ name = "Reference" })

local TextTab = Window:CreateTab({ name = "Text", icon = 100604009889706 })
TextTab:CreateSection({ name = "Text elements" })

TextTab:CreateText({
    name = "Read this first",
    text = "Text carries a title, a body, or both. Either half can be left out.",
})
TextTab:CreateText({ name = "Heading only" })
TextTab:CreateText({ text = "Body only — evenly padded with no room held for a title." })
TextTab:CreateText({ name = "With an icon", text = "Any supported icon pack or Roblox asset id works here.", icon = 93364949241311 })

local Live = TextTab:CreateText({ name = "Live text", text = "Waiting." })
TextTab:CreateButton({ name = "Rewrite body",  callback = function() Live:Set("Rewritten at " .. os.date("%H:%M:%S") .. ".") end })
TextTab:CreateButton({ name = "Rewrite title", callback = function() Live:SetTitle("Retitled") end })

TextTab:CreateSection({ name = "Dividers" })

TextTab:CreateDivider()
TextTab:CreateDivider({ text = "or" })
TextTab:CreateDivider({ text = "spaced", spacing = 24 })
TextTab:CreateDivider({ line = false, spacing = 20 })

local Divider = TextTab:CreateDivider()
TextTab:CreateButton({ name = "Give divider a word", callback = function() Divider:Set("added later") end })
TextTab:CreateButton({ name = "Clear divider word",  callback = function() Divider:Set("") end })

TextTab:CreateSection({ name = "Icon packs" })
TextTab:CreateText({ name = "lucide/palette",     icon = "lucide/palette",     text = "lucide — clean stroke icons." })
TextTab:CreateText({ name = "gravity/home",        icon = "gravity/home",        text = "gravity — bold, rounded." })
TextTab:CreateText({ name = "solar/sun-bold",      icon = "solar/sun-bold",      text = "solar — linear, bold, broken, outline variants." })
TextTab:CreateText({ name = "sfsymbols/star.fill", icon = "sfsymbols/star.fill", text = "sfsymbols — Apple SF Symbols." })
TextTab:CreateText({ name = "craft/edit",          icon = "craft/edit",          text = "craft — productivity icons." })
TextTab:CreateText({ name = "geist/zap",           icon = "geist/zap",           text = "geist — Vercel, minimal and sharp." })
TextTab:CreateText({ name = "hero/shield-check",   icon = "hero/shield-check",   text = "hero — Tailwind Heroicons." })
TextTab:CreateText({ name = "gmi/search",          icon = "gmi/search",          text = "gmi — Google Material Icons." })
TextTab:CreateText({ name = "feather/feather",     icon = "feather/feather",     text = "feather — open-source minimal." })
TextTab:CreateText({ name = "Roblox asset id",     icon = 93364949241311,        text = "Plain numbers still work." })

local Language = Window:CreateTab({ name = "Language", icon = 100604009889706 })
Language:CreateSection({ name = "Localization" })

local LocaleIds = { English = "en", ["Français"] = "fr", ["Español"] = "es", ["Deutsch"] = "de" }
Language:CreateDropdown({
    name        = "Language",
    description = "Switches every localized label in place.",
    options     = { "English", "Français", "Español", "Deutsch" },
    value       = "English",
    forgetState = true,
    callback    = function(value)
        if value == "Deutsch" then
            Window:RegisterTranslations({
                de = {
                    ["Gameplay"]      = "Spiel",
                    ["Interface"]     = "Benutzeroberfläche",
                    ["Auto Sprint"]   = "Auto-Sprint",
                    ["Field of View"] = "Sichtfeld",
                    ["Player Name"]   = "Spielername",
                },
            })
        end
        Window:SetLocale(LocaleIds[value] or "en")
    end,
})

local WhatsNew = Window:CreateTab({ name = "What's New", icon = 93364949241311 })

WhatsNew:CreateSection({ name = "Progress" })

local Download = WhatsNew:CreateProgress({
    name   = "Download",
    range  = { 0, 100 },
    value  = 35,
    format = function(value, _, max) return string.format("%d of %d MB", value, max) end,
})

WhatsNew:CreateProgress({ name = "Setup",   steps = 5,   value = 2 })

WhatsNew:CreateProgress({ name = "Syncing", text  = "Please wait", indeterminate = true })

WhatsNew:CreateSlider({
    name        = "Download progress",
    range       = { 0, 100 },
    value       = 35,
    suffix      = "%",
    forgetState = true,
    callback    = function(value, dragging)
        Download:Set(value)
        Download:SetText(if dragging then "Downloading" else nil)
    end,
})

WhatsNew:CreateSection({ name = "Output" })

local Console = WhatsNew:CreateConsole({
    name     = "Console",
    text     = "-- output lands here",
    height   = 130,
    follow   = true,
    maxLines = 50,
})

WhatsNew:CreateButton({ name = "Log a line", callback = function() Console:Append(string.format("[%s] player joined", os.date("%H:%M:%S"))) end })

local ConsoleGroup = WhatsNew:CreateGroup()
ConsoleGroup:CreateButton({ name = "Copy",  callback = function() Window:Notify({ title = if Console:Copy() then "Copied" else "No clipboard here" }) end })
ConsoleGroup:CreateButton({ name = "Clear", callback = function() Console:Clear() end })

WhatsNew:CreateSection({ name = "Locking" })

local Lockable = WhatsNew:CreateToggle({
    name        = "Auto Farm",
    description = "Lock this and it dims, stops taking input, never fires its callback.",
    value       = false,
    forgetState = true,
    callback    = function(state) print("never runs while locked", state) end,
})

WhatsNew:CreateToggle({
    name        = "Lock Auto Farm",
    value       = false,
    forgetState = true,
    callback    = function(state)
        if state then Lockable:Lock("Needs a premium key") else Lockable:Unlock() end
    end,
})

local Api = Window:CreateTab({ name = "Window API", icon = 84750991656135 })

Api:CreateSection({ name = "Theme" })

Api:CreateDropdown({
    name     = "Theme",
    options  = { "Dark", "Blood Red", "Amethyst", "Rose", "Frost", "Cobalt", "Ember", "Gold", "Midnight", "Neon Void" },
    value    = "Midnight",
    callback = function(value) Window:ChangeTheme(value) end,
})

Api:CreateButton({
    name     = "Apply One-off Theme Table",
    callback = function()
        Window:ChangeTheme({
            AccentColor = Color3.fromRGB(80, 220, 140),
            WindowColor = Color3.fromRGB(15, 20, 18),
        })
    end,
})

Api:CreateToggle({
    name     = "Window Transparency",
    callback = function(value) Window:ToggleWindowTransparency(value) end,
})

Api:CreateSection({ name = "Tags" })

local BetaTag = Window:CreateTag({ text = "BETA", color = Color3.fromRGB(255, 175, 15) })
Api:CreateButton({ name = "Recolor Tag", callback = function() BetaTag:SetColor(Color3.fromRGB(80, 200, 255)) end })
Api:CreateButton({ name = "Remove Tag",  callback = function() BetaTag:Remove() end })

Api:CreateSection({ name = "Window state" })

Api:CreateButton({
    name     = "Hide Window (auto-reopens in 2s)",
    callback = function()
        Window:Hide()
        task.delay(2, function() Window:Show() end)
    end,
})
Api:CreateButton({ name = "Toggle Minimise", callback = function() Window:ToggleMinimise() end })

Api:CreateButton({
    name     = "Set Profile Text",
    callback = function() Window:SetProfile("Online — " .. os.date("%H:%M:%S")) end,
})

Api:CreateSection({ name = "Flags" })

Api:CreateButton({
    name     = "Read LoadoutAimbot Flag",
    callback = function()
        Window:Notify({ title = "LoadoutAimbot = " .. tostring(Window:Get("LoadoutAimbot")) })
    end,
})
Api:CreateButton({
    name     = "Flip LoadoutAimbot Flag",
    callback = function() Window:Set("LoadoutAimbot", not Window:Get("LoadoutAimbot")) end,
})

Api:CreateSection({ name = "Raw themed instances" })

local Swatch = Window:Create("Frame", {
    Size        = UDim2.fromOffset(0, 28),
    AutomaticSize = Enum.AutomaticSize.X,
    LayoutOrder = 9999,
    Parent      = Api.tabPage,
}, {
    BackgroundColor3 = "AccentColor",
})
Window:Create("UICorner", { CornerRadius = UDim.new(0, 6), Parent = Swatch })

Api:CreateButton({ name = "Destroy Swatch", callback = function() Window:DestroySubtree(Swatch) end })

Api:CreateSection({ name = "Connections" })

local Heartbeats = 0
local HeartbeatStat = Api:CreateStat({ name = "Heartbeats", value = 0 })
local HeartbeatConnection = Window:Connect(game:GetService("RunService").Heartbeat, function()
    Heartbeats += 1
    if Heartbeats % 30 == 0 then HeartbeatStat:Set(Heartbeats) end
end)
Api:CreateButton({
    name     = "Disconnect Heartbeat Counter",
    callback = function() Window:Disconnect(HeartbeatConnection) end,
})

Api:CreateSection({ name = "Custom translator" })

Api:CreateToggle({
    name     = "Prefix Labels via Translator",
    callback = function(value)
        Window:SetTranslator(function(text, localeId)
            if value and localeId == "en" then return "» " .. text end
            return text
        end)
    end,
})

Api:CreateSection({ name = "Teardown" })

Api:CreateButton({ name = "Unload Window", callback = function() Window:Unload() end })

Window:Navigate("Home")
    
