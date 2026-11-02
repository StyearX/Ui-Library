local Library, SaveManager, InterfaceManager, Extension = loadstring(readfile("Fluents/Fluent.lua"))()

local Players: Players = game:GetService("Players")
local UserInputService: UserInputService = game:GetService("UserInputService")
local SoundService: SoundService = game:GetService("SoundService")
local HttpService: HttpService = game:GetService("HttpService")
local RunService: RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

Library:Configure({
	AnimationSpeed = 2,
	ReducedMotion = false,
	CallbackErrors = true,
	PageTransition = true,
	Intro = true,
})

local Window = Library:CreateWindow({
	Title = "Fluent Reimagined",
	SubTitle = Library.Version,
	TitleIcon = "tabler:layout-dashboard",
	SidebarTitle = "Home",
	Size = UDim2.fromOffset(760, 540),
	Theme = "Dark",
	Acrylic = true,
	Layout = "Fluent",
	NavPosition = "Top",
	IconStyle = "Plain",
	PanelDepth = 1,
	MinimizeKey = Enum.KeyCode.LeftControl,
})

local ThemeModes = { "Normal", "Light", "Dark" }
local ThemeModeIcons = {
	Normal = "tabler:contrast",
	Light = "rbxassetid://10734974297",
	Dark = "rbxassetid://10734897102",
}
local ThemeModeIndex = 1
local ThemeModeAction

ThemeModeAction = Window:AddBarButtonAction({
	Icon = ThemeModeIcons.Normal,
	Callback = function()
		if not Library:IsThemeModeAllowed() then
			Library:Notify({
				Title = "Theme Mode",
				Content = "Unavailable for the " .. Library.Theme .. " theme",
				Duration = 2,
			})
			return
		end
		ThemeModeIndex = ThemeModeIndex % #ThemeModes + 1
		local Mode = ThemeModes[ThemeModeIndex]
		Library:SetThemeMode(Mode)
		ThemeModeAction:SetIcon(ThemeModeIcons[Mode])
		Library:Notify({
			Title = "Theme Mode",
			Content = Mode,
			Duration = 2,
		})
	end,
})

Window:AddBarButtonToggle({
	Icon = "tabler:bell",
	Default = true,
	Callback = function(Value)
		Library:Toast(Value and "Alerts enabled" or "Alerts muted", 2)
	end,
})

local Navigator = {
	Components = Window:AddTabInHeader({ Title = "Components", Icon = "tabler:components", SidebarTitle = "Components" }),
	Settings = Window:AddTabInHeader({ Title = "Settings", Icon = "tabler:settings", SidebarTitle = "Settings" }),
}

local SubTabs = {
	Buttons = Navigator.Components:AddTab({ Title = "Buttons", Icon = "tabler:click" }),
	Inputs = Navigator.Components:AddTab({ Title = "Inputs", Icon = "tabler:forms" }),
	Selection = Navigator.Components:AddTab({ Title = "Selection", Icon = "tabler:list-check" }),
	Display = Navigator.Components:AddTab({ Title = "Display", Icon = "tabler:photo" }),
	Overlays = Navigator.Components:AddTab({ Title = "Overlays", Icon = "tabler:app-window" }),
	Appearance = Navigator.Settings:AddTab({ Title = "Appearance", Icon = "tabler:palette" }),
	Config = Navigator.Settings:AddTab({ Title = "Config", Icon = "tabler:folder" }),
}

Window:AddFooterButton({
	Title = "Unload",
	Icon = "tabler:power",
	Danger = true,
	Header = Navigator.Settings,
	Callback = function()
		Library:Destroy()
	end,
})

local BannerSection = SubTabs.Buttons:AddSection("Banner", { Icon = "tabler:layout-board" })

local Request = request or http_request or (syn and syn.request)

local function GetBody(Url)
	local Success, Body = pcall(function()
		if Request then
			return Request({ Url = Url, Method = "GET" }).Body
		end
		return game:HttpGet(Url, true)
	end)

	if Success and type(Body) == "string" and #Body > 0 then
		return Body
	end

	return nil
end

local function Fetch(Url)
	local Body = GetBody(Url)
	if not Body then
		return nil
	end

	local Success, Result = pcall(HttpService.JSONDecode, HttpService, Body)
	if Success then
		return Result
	end

	return nil
end

local function First(Response)
	return Response and Response.data and Response.data[1]
end

local function DownloadImage(Url, Name)
	local Body = Url and GetBody(Url)
	if not Body then
		return nil
	end

	local Path = "GameBanner_" .. Name .. ".png"
	if not pcall(writefile, Path, Body) then
		return nil
	end

	local Success, Asset = pcall(getcustomasset, Path)
	if Success then
		return Asset
	end

	return nil
end

local Banner = BannerSection:AddBanner("GameBanner", {
	Title = "Loading...",
	FooterLeft = "Place ID: " .. game.PlaceId,
	FooterRight = "Job ID: " .. game.JobId,
	Height = 210,
})

task.spawn(function()
	local Universe = Fetch(`https://apis.roblox.com/universes/v1/places/{game.PlaceId}/universe`)
	local UniverseId = Universe and Universe.universeId
	if not UniverseId then
		Banner:SetProperties({
			Title = "Unknown Game",
			Subtitle = "Failed to fetch game info",
		})
		return
	end

	local Details = First(Fetch(`https://games.roblox.com/v1/games?universeIds={UniverseId}`))
	local Icon = First(Fetch(`https://thumbnails.roblox.com/v1/games/icons?universeIds={UniverseId}&size=256x256&format=Png&isCircular=false`))
	local Cover = First(Fetch(`https://thumbnails.roblox.com/v1/games/multiget/thumbnails?universeIds={UniverseId}&countPerUniverse=1&size=768x432&format=Png&isCircular=false`))

	local IconUrl = Icon and Icon.imageUrl
	local CoverUrl = Cover and Cover.thumbnails and Cover.thumbnails[1] and Cover.thumbnails[1].imageUrl

	Banner:SetProperties({
		Title = Details and Details.name or "Unknown Game",
		Subtitle = Details and Details.creator and Details.creator.name or "Unknown Developer",
		Avatar = DownloadImage(IconUrl, "Icon"),
		Thumbnail = DownloadImage(CoverUrl, "Cover"),
	})
end)

local ParagraphSection = SubTabs.Buttons:AddSection("Paragraph", { Icon = "tabler:align-left" })

local DemoParagraph = ParagraphSection:AddParagraph({
	Title = "Default",
	Content = "Plain paragraph with tags and a badge.",
	Icon = "tabler:info-circle",
	Badge = { Text = "New", Color = "Accent" },
})
DemoParagraph:AddTag("Tag A")
DemoParagraph:AddTag({ Text = "Tag B" })

ParagraphSection:AddParagraph({ Title = "Note", Content = "Note variant.", Variant = "Note" })
ParagraphSection:AddParagraph({ Title = "Warning", Content = "Warning variant.", Variant = "Warning" })
ParagraphSection:AddParagraph({ Title = "Info", Content = "Info variant.", Variant = "Info" })
ParagraphSection:AddParagraph({ Title = "Success", Content = "Success variant.", Variant = "Success" })
ParagraphSection:AddParagraph({ Title = "Danger", Content = "Danger variant.", Variant = "Danger" })

local ButtonSection = SubTabs.Buttons:AddSection("Button", { Icon = "tabler:click" })

local ContextMenu = Window:Menu({
	Title = "Context Menu",
	Placement = "BottomRight",
	Width = 220,
})
local ContextSection = ContextMenu:AddSection("Actions")
ContextSection:AddButton({
	Title = "Copy Job Id",
	Icon = "tabler:copy",
	Callback = function()
		if setclipboard then
			setclipboard(tostring(game.JobId))
		end
		Library:Toast("Copied", 2)
	end,
})
ContextSection:AddButton({
	Title = "Rejoin",
	Icon = "tabler:refresh",
	Callback = function()
		Library:Toast("Rejoin requested", 2)
	end,
})

ButtonSection:AddButton({
	Title = "Row with menu",
	Description = "Opens a context menu.",
	Icon = "tabler:menu-2",
	Menu = ContextMenu,
	MenuPlacement = "BottomRight",
	Callback = function() end,
})

for _, Kind in { "Primary", "Tonal", "Danger", "Ghost", "Outline", "Accent" } do
	ButtonSection:AddButton({
		Title = Kind .. " pill",
		Description = "Variant = " .. Kind,
		Variant = Kind,
		ButtonText = Kind,
		ButtonIcon = "tabler:bolt",
		ButtonSize = "Md",
		Callback = function()
			Library:Toast(Kind .. " pressed", 2)
		end,
	})
end

for _, Size in { "Sm", "Md", "Lg" } do
	ButtonSection:AddButton({
		Title = "Pill size " .. Size,
		Variant = "Primary",
		ButtonText = Size,
		ButtonSize = Size,
		Callback = function() end,
	})
end

ButtonSection:AddButton({ Title = "Icon", Variant = "Icon", ButtonIcon = "tabler:star", Callback = function() end })
ButtonSection:AddButton({ Title = "IconTonal", Variant = "IconTonal", ButtonIcon = "tabler:heart", Callback = function() end })
ButtonSection:AddButton({ Title = "IconDanger", Variant = "IconDanger", ButtonIcon = "tabler:trash", IconSize = "Md", Callback = function() end })

for _, Kind in { "Wide", "WideTonal", "WideDanger", "WideOutline", "WideAccent" } do
	ButtonSection:AddButton({
		Title = Kind,
		Variant = Kind,
		ButtonIcon = "tabler:rocket",
		Callback = function()
			Library:Toast(Kind .. " pressed", 2)
		end,
	})
end

local LayoutSection = SubTabs.Buttons:AddSection("Space & Group", { Icon = "tabler:layout-rows" })

LayoutSection:AddSpace({ Height = 8 })
LayoutSection:AddGap({ Height = 4 })

local DemoGroup = LayoutSection:AddGroup({
	Title = "Group",
	Icon = "tabler:folders",
	Accordion = true,
	Collapsed = false,
	Spacing = 12,
	Gap = 8,
})
DemoGroup:AddToggle("GroupToggle", { Title = "Toggle inside group", Default = false })
DemoGroup:AddButton({ Title = "Button inside group", Callback = function() end })

local LockedGroup = LayoutSection:AddGroup({
	Title = "Locked group",
	Icon = "tabler:lock",
	Locked = true,
	LockedReason = "Locked for demo",
	Collapsed = true,
	Accordion = true,
})
LockedGroup:AddParagraph({ Title = "Hidden", Content = "Unlock to see." })

local ToggleSection = SubTabs.Inputs:AddSection("Toggle", { Icon = "tabler:toggle-left" })

local SwitchToggle = ToggleSection:AddToggle("DemoSwitch", {
	Title = "Switch",
	Description = "Default variant.",
	Default = true,
	Callback = function(Value)
		print("Switch:", Value)
	end,
})
SwitchToggle:OnChanged(function(Value)
	print("Switch changed:", Value)
end)

ToggleSection:AddToggle("DemoRadio", { Title = "Radio", Variant = "Radio", Default = false })
ToggleSection:AddToggle("DemoCheck", { Title = "Check", Variant = "Check", Default = true })

local SliderSection = SubTabs.Inputs:AddSection("Slider", { Icon = "tabler:adjustments-horizontal" })

local SliderVariants = {
	{ "Pill", 50 },
	{ "Wide", 30 },
	{ "Bubble", 70 },
	{ "Number", 20 },
	{ "Gradient", 40 },
}
for _, Entry in SliderVariants do
	SliderSection:AddSlider("DemoSlider" .. Entry[1], {
		Title = Entry[1],
		Description = "Variant = " .. Entry[1],
		Variant = Entry[1],
		Default = Entry[2],
		Min = 0,
		Max = 100,
		Rounding = 0,
		Suffix = "%",
		Callback = function(Value)
			print(Entry[1], Value)
		end,
	})
end
SliderSection:AddSlider("DemoSliderHue", {
	Title = "Hue",
	Variant = "Hue",
	Default = 180,
	Callback = function(Value)
		print("Hue", Value)
	end,
})
SliderSection:AddSlider("DemoSliderDecimal", {
	Title = "Decimal",
	Description = "Rounding = 2, Width = 180",
	Default = 0.5,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Width = 180,
})

local ChoiceSection = SubTabs.Inputs:AddSection("Segmented & Dropdown", { Icon = "tabler:selector" })

ChoiceSection:AddSegmented("DemoSegmented", {
	Title = "Segmented",
	Options = { "Low", "Medium", "High" },
	Default = "Medium",
	Callback = function(Value)
		print("Segmented:", Value)
	end,
})
ChoiceSection:AddSegmented("DemoSegmentedInline", {
	Title = "Segmented inline",
	Variant = "Inline",
	Height = 28,
	Options = { "A", "B", "C" },
	Default = "A",
})

ChoiceSection:AddDropdown("DemoDropdown", {
	Title = "Dropdown",
	Values = { "Alpha", "Beta", "Gamma", "Delta" },
	Default = 1,
	Callback = function(Value)
		print("Dropdown:", Value)
	end,
})
ChoiceSection:AddDropdown("DemoDropdownCompact", {
	Title = "Compact",
	Variant = "Compact",
	Values = { "One", "Two", "Three" },
	Default = 2,
})
ChoiceSection:AddDropdown("DemoDropdownSegmented", {
	Title = "Dropdown segmented",
	Variant = "Segmented",
	Values = { "Left", "Center", "Right" },
	Default = 1,
})
ChoiceSection:AddDropdown("DemoDropdownMulti", {
	Title = "Multi",
	Description = "Multi select, searchable, AllowNull.",
	Values = { "Apple", "Banana", "Cherry", "Durian", "Elderberry", "Fig" },
	Multi = true,
	Searchable = true,
	SearchPlaceholder = "Search fruit...",
	AllowNull = true,
	Default = { "Apple", "Cherry" },
	Width = 180,
	Callback = function(Value)
		print("Multi:", HttpService:JSONEncode(Value))
	end,
})
ChoiceSection:AddDropdown("DemoDropdownTags", {
	Title = "Dropdown with tags",
	Values = { "Stable", "Beta", "Nightly" },
	Default = 1,
	Tags = {
		Hot = { Text = "HOT", Color = Color3.fromRGB(239, 68, 68) },
		New = { Text = "NEW", Color = Color3.fromRGB(34, 197, 94) },
	},
	ItemTags = {
		Stable = "New",
		Nightly = { "Hot", "New" },
	},
})

local TextSection = SubTabs.Inputs:AddSection("Input & Keybind", { Icon = "tabler:keyboard" })

for _, Kind in { "Field", "Bordered", "Standard", "Inline", "Search", "PanelSearch" } do
	TextSection:AddInput("DemoInput" .. Kind, {
		Title = "Input " .. Kind,
		Variant = Kind,
		Default = "",
		Placeholder = Kind .. "...",
		Finished = false,
		Callback = function(Value)
			print(Kind, Value)
		end,
	})
end
TextSection:AddInput("DemoInputNumeric", {
	Title = "Numeric",
	Description = "Numeric = true, MaxLength = 6, Finished = true",
	Numeric = true,
	Finished = true,
	MaxLength = 6,
	Default = "100",
	Width = 140,
})

TextSection:AddKeybind("DemoKeybind", {
	Title = "Keybind",
	Default = "RightShift",
	Mode = "Toggle",
	Callback = function(Value)
		print("Keybind active:", Value)
	end,
	ChangedCallback = function(New)
		print("Keybind changed:", New)
	end,
})
TextSection:AddKeybind("DemoKeybindHold", { Title = "Hold mode", Variant = "Keycap", Default = "E", Mode = "Hold" })
TextSection:AddKeybind("DemoKeybindAlways", { Title = "Always mode", Variant = "Chip", Default = "Q", Mode = "Always" })

local ColorSection = SubTabs.Selection:AddSection("Colorpicker & Swatches", { Icon = "tabler:color-picker" })

local PickerVariants = {
	{ "Field", "Chromium" },
	{ "Swatch", "Fluent" },
	{ "Bar", "Wheel" },
	{ "Hex", "Chromium" },
}
for _, Entry in PickerVariants do
	ColorSection:AddColorpicker("DemoColor" .. Entry[1], {
		Title = "Colorpicker " .. Entry[1],
		Description = "PickerStyle = " .. Entry[2],
		Variant = Entry[1],
		PickerStyle = Entry[2],
		Default = Color3.fromRGB(88, 101, 242),
		Transparency = 0,
		Callback = function(Value)
			print(Entry[1], Value)
		end,
	})
end

local CheckSection = SubTabs.Selection:AddSection("CheckGroup", { Icon = "tabler:checkbox" })

CheckSection:AddCheckGroup("DemoCheckGroup", {
	Title = "CheckGroup",
	Options = { "ESP", "Aimbot", "Fly", "Noclip" },
	Default = { ESP = true },
	Callback = function(Value)
		print("CheckGroup:", HttpService:JSONEncode(Value))
	end,
})
CheckSection:AddCheckGroup("DemoCheckGroupSwitch", {
	Title = "CheckGroup (Switch)",
	Variant = "Switch",
	Options = { "Chams", "Tracers", "Names" },
	Default = { Names = true },
})

local ProgressSection = SubTabs.Selection:AddSection("Progress", { Icon = "tabler:progress" })

local DemoProgress = ProgressSection:AddProgress({
	Title = "Progress (Row)",
	Value = 35,
	Min = 0,
	Max = 100,
	Suffix = "%",
})
ProgressSection:AddProgress({ Title = "Progress (Thin)", Variant = "Thin", Value = 60 })
ProgressSection:AddProgress({ Title = "Progress (Inline)", Variant = "Inline", Value = 80, Width = 170 })
local IndeterminateProgress = ProgressSection:AddProgress({ Title = "Indeterminate", Indeterminate = true })

ProgressSection:AddButton({
	Title = "Animate progress",
	Variant = "Primary",
	ButtonText = "Run",
	Callback = function()
		task.spawn(function()
			IndeterminateProgress:SetIndeterminate(true)
			for Step = 0, 100, 5 do
				DemoProgress:SetValue(Step)
				task.wait(0.05)
			end
			IndeterminateProgress:SetIndeterminate(false)
			IndeterminateProgress:SetValue(100)
		end)
	end,
})

local ViewportSection = SubTabs.Display:AddSection("Viewport", { Icon = "tabler:3d-cube-sphere" })

local PreviewModel = Instance.new("Part")
PreviewModel.Name = "PreviewPart"
PreviewModel.Size = Vector3.new(4, 4, 4)
PreviewModel.Color = Color3.fromRGB(88, 101, 242)
PreviewModel.Material = Enum.Material.SmoothPlastic
PreviewModel.Anchored = true

local DemoViewport = ViewportSection:AddViewport("DemoViewport", {
	Title = "Viewport",
	Object = PreviewModel,
	Clone = true,
	Height = 220,
	Interactive = true,
	Focused = true,
	AutoRotate = true,
	AutoRotateSpeed = 0.5,
	Smooth = true,
	Inertia = true,
	ZoomingSlider = true,
	Ambient = Color3.fromRGB(120, 120, 140),
	LightColor = Color3.fromRGB(255, 255, 255),
	LightDirection = Vector3.new(-1, -1, -1),
	BackgroundColor = Color3.fromRGB(20, 20, 26),
})

ViewportSection:AddToggle("DemoViewportRotate", {
	Title = "Auto rotate",
	Default = true,
	Callback = function(Value)
		DemoViewport:SetAutoRotate(Value, 0.5)
	end,
})
ViewportSection:AddButton({
	Title = "Reset camera",
	Variant = "Tonal",
	ButtonText = "Reset",
	Callback = function()
		DemoViewport:Reset()
	end,
})

local NotifySection = SubTabs.Overlays:AddSection("Notify & Toast", { Icon = "tabler:bell-ringing" })

for _, Kind in { "Info", "Success", "Warning", "Error" } do
	NotifySection:AddButton({
		Title = "Notify " .. Kind,
		Variant = "Tonal",
		ButtonText = "Show",
		Callback = function()
			Library:Notify({
				Title = Kind,
				Content = "This is a " .. string.lower(Kind) .. " notification.",
				SubContent = "SubContent line",
				Type = Kind,
				Duration = 4,
			})
		end,
	})
end

NotifySection:AddButton({
	Title = "Toast",
	Variant = "Tonal",
	ButtonText = "Show",
	Callback = function()
		Library:Toast({
			Text = "Saved successfully",
			Duration = 3,
			Action = {
				Title = "Undo",
				Callback = function()
					print("Undo")
				end,
			},
		})
	end,
})

local DialogSection = SubTabs.Overlays:AddSection("Dialog, Modal & Menu", { Icon = "tabler:app-window" })

DialogSection:AddButton({
	Title = "Dialog",
	Description = "Window:Dialog with buttons.",
	Callback = function()
		Window:Dialog({
			Title = "Confirm",
			Content = "Are you sure you want to continue?",
			Buttons = {
				{ Title = "Confirm", Variant = "Primary", Callback = function() print("Confirmed") end },
				{ Title = "Cancel", Callback = function() print("Cancelled") end },
			},
		})
	end,
})

DialogSection:AddButton({
	Title = "Dialog with bars",
	Description = "Dialog with progress bars (SetBar).",
	Callback = function()
		local Dialog = Window:Dialog({
			Title = "Downloading",
			Content = "Please wait...",
			Bars = {
				{ Title = "Assets", Value = "0%" },
				{ Title = "Scripts", Value = "0%" },
			},
			Buttons = { { Title = "Close" } },
		})
		task.spawn(function()
			for Step = 0, 100, 10 do
				Dialog:SetBar(1, Step / 100, Step .. "%")
				Dialog:SetBar(2, math.min(1, Step / 80), math.min(100, math.floor(Step / 0.8)) .. "%")
				task.wait(0.15)
			end
		end)
	end,
})

DialogSection:AddButton({
	Title = "Paged dialog",
	Description = "Window:PagedDialog with headings and code blocks.",
	Callback = function()
		Window:PagedDialog({
			Title = "Getting started",
			Pages = {
				{
					Title = "Welcome",
					Blocks = {
						"Paged dialogs walk the user through steps.",
						{ Heading = "Tip" },
						"Use Next and Back to navigate.",
					},
				},
				{
					Title = "Example",
					Blocks = {
						"Copy this snippet:",
						{ Code = 'print("Hello, Fluent")' },
					},
				},
			},
			OnClose = function()
				print("Paged dialog closed")
			end,
		})
	end,
})

DialogSection:AddButton({
	Title = "Modal",
	Description = "Window:Modal with its own section and elements.",
	Callback = function()
		local Modal
		Modal = Window:Modal({
			Title = "Quick settings",
			Content = "Modal with form elements.",
			Closable = true,
			Dismissable = true,
			Build = function(Self)
				local Section = Self:AddSection("Options")
				Section:AddToggle("ModalToggle", { Title = "Enable feature", Default = true })
				Section:AddInput("ModalInput", { Title = "Name", Default = "", Placeholder = "Type here..." })
			end,
			Buttons = {
				{
					Title = "Apply",
					Variant = "Primary",
					Callback = function()
						print(HttpService:JSONEncode(Modal:GetValues()))
					end,
				},
				{ Title = "Cancel" },
			},
			OnClose = function()
				print("Modal closed")
			end,
		})
	end,
})

DialogSection:AddButton({
	Title = "Menu",
	Description = "Window:Menu opened from a button.",
	Variant = "Tonal",
	ButtonText = "Open",
	Menu = ContextMenu,
	MenuPlacement = "BottomRight",
	Callback = function() end,
})

SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:BuildConfigSection(SubTabs.Config)
SaveManager:SetFolder("Fluent Reimagined/Configs")

InterfaceManager:SetLibrary(Library)
InterfaceManager:SetFolder("Fluent Reimagined")
InterfaceManager:BuildInterfaceSection(SubTabs.Appearance)

Window:SelectTab(SubTabs.Buttons)

Library:Notify({
	Title = "Fluent Reimagined",
	Content = "All Things loaded.",
	Duration = 4,
})

SaveManager:LoadAutoloadConfig()

-- Ignore this shit
local SerpentAsset = "rbxassetid://75930056598380"
local EyeAsset = "rbxassetid://71720413139220"
local SoundIds = { "7127123605", "137566474343039", "438666542", "257001341", "257000833", "7127123554", "131607746976396", "97325669841459", "109312518223078" }

local function ToColor(Value)
    if typeof(Value) == "ColorSequence" then
        return Value.Keypoints[1].Value
    end
    return Value
end

local function ButtonGradient()
    local Theme = Library:GetThemeData(Library.Theme)
    local Main = ToColor(Theme.AcrylicMain)
    local Border = ToColor(Theme.AcrylicBorder)
    local Background = Theme.AcrylicGradient
    if typeof(Background) ~= "ColorSequence" then
        Background = ColorSequence.new(Main)
    end
    local Keypoints = Background.Keypoints
    local StartColor = Keypoints[1].Value
    local EndColor = Keypoints[#Keypoints].Value
    local Stroke = ColorSequence.new({
        ColorSequenceKeypoint.new(0, StartColor),
        ColorSequenceKeypoint.new(0.33, EndColor),
        ColorSequenceKeypoint.new(0.66, Border),
        ColorSequenceKeypoint.new(1, StartColor),
    })
    return { Background = Background, Stroke = Stroke }
end

local function GetEyeColor(Data)
    local Best, BestScore = Color3.new(1, 1, 1), -1
    for _, Sequence in ipairs({ Data.Background, Data.Stroke }) do
        for _, Key in ipairs(Sequence.Keypoints) do
            local Color = Key.Value
            local Max = math.max(Color.R, Color.G, Color.B)
            local Min = math.min(Color.R, Color.G, Color.B)
            local Saturation = Max > 0 and (Max - Min) / Max or 0
            local Score = Max * (0.4 + Saturation)
            if Score > BestScore then
                Best, BestScore = Color, Score
            end
        end
    end
    return Best
end

local function MakeDraggable(TopBarObject, Object, Locked)
    local Dragging = false
    local DragInput
    local DragStart
    local StartPosition
    local Holding = false
    local HoldTime = 1
    local MoveCancelThreshold = 6
    local HoldToken = 0

    Object:SetAttribute("Locked", Locked or false)

    local function Update(Input)
        if Object:GetAttribute("Locked") then
            return
        end
        local Delta = Input.Position - DragStart
        if Delta.Magnitude > MoveCancelThreshold then
            Object:SetAttribute("Dragged", true)
        end
        Object.Position = UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
    end

    local function ToggleLock()
        local NewState = not Object:GetAttribute("Locked")
        Object:SetAttribute("Locked", NewState)
        Object:SetAttribute("Dragged", true)
        Dragging = false
        Library:Notify({
            Title = NewState and "Button Locked" or "Button Unlocked",
            Content = NewState and "This button is now locked in place." or "This button can now be moved.",
            Duration = 2,
        })
    end

    TopBarObject.InputBegan:Connect(function(Input)
        if Input.UserInputType ~= Enum.UserInputType.MouseButton1 and Input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        Dragging = not Object:GetAttribute("Locked")
        Holding = true
        DragStart = Input.Position
        StartPosition = Object.Position
        Object:SetAttribute("Dragged", false)

        HoldToken += 1
        local Token = HoldToken

        task.delay(HoldTime, function()
            if Holding and Token == HoldToken then
                ToggleLock()
            end
        end)

        Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then
                Dragging = false
                Holding = false
            end
        end)
    end)

    TopBarObject.InputChanged:Connect(function(Input)
        if not DragStart then
            return
        end
        if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
            if (Input.Position - DragStart).Magnitude > MoveCancelThreshold then
                Holding = false
            end
            DragInput = Input
        end
    end)

    return UserInputService.InputChanged:Connect(function(Input)
        if Input == DragInput and Dragging then
            Update(Input)
        end
    end)
end

local OpenGui = Instance.new("ScreenGui")
OpenGui.Name = "openshit"
OpenGui.Parent = LocalPlayer.PlayerGui
OpenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OpenGui.ResetOnSpawn = false

local OpenButton = Instance.new("TextButton")
OpenButton.Name = "mainopen"
OpenButton.Parent = OpenGui
OpenButton.BackgroundTransparency = 1
OpenButton.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
OpenButton.Size = UDim2.new(0, 64, 0, 42)
OpenButton.Text = ""
OpenButton.Visible = true

local BackgroundImage = Instance.new("ImageLabel")
BackgroundImage.Name = "RotatingBackground"
BackgroundImage.Parent = OpenButton
BackgroundImage.Size = UDim2.new(2.3, 0, 2.3, 0)
BackgroundImage.Position = UDim2.new(0.5, 0, 0.5, 0)
BackgroundImage.AnchorPoint = Vector2.new(0.5, 0.5)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = SerpentAsset
BackgroundImage.SizeConstraint = Enum.SizeConstraint.RelativeXX
BackgroundImage.ZIndex = 0

local SerpentGradient = Instance.new("UIGradient")
SerpentGradient.Parent = BackgroundImage

local FrontImage = Instance.new("ImageLabel")
FrontImage.Name = "StaticIcon"
FrontImage.Parent = OpenButton
FrontImage.Size = UDim2.new(0.85, 0, 1, 0)
FrontImage.Position = UDim2.new(0.5, 0, 0.5, 0)
FrontImage.AnchorPoint = Vector2.new(0.5, 0.5)
FrontImage.BackgroundTransparency = 1
FrontImage.Image = EyeAsset
FrontImage.ZIndex = 1
FrontImage.ScaleType = Enum.ScaleType.Stretch

local FrontImageCorner = Instance.new("UICorner")
FrontImageCorner.CornerRadius = UDim.new(1, 0)
FrontImageCorner.Parent = FrontImage

local function RefreshColors()
    local Data = ButtonGradient()
    SerpentGradient.Color = Data.Stroke
    FrontImage.ImageColor3 = GetEyeColor(Data)
end

RefreshColors()

local ThemeConnection = Library.ThemeChanged:Connect(RefreshColors)

local Rotation = 0
local Speed = 90
local SpinToken = 0

local OpenConnection = RunService.Heartbeat:Connect(function(Delta)
    Rotation = (Rotation + Speed * Delta) % 360
    BackgroundImage.Rotation = Rotation

    SerpentGradient.Rotation = (SerpentGradient.Rotation + 60 * Delta) % 360
end)

local DragConnection = MakeDraggable(OpenButton, OpenButton, false)

local function PlaySound(SoundId)
    local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://" .. SoundId
    Sound.Parent = SoundService
    Sound:Play()
    Sound.Ended:Connect(function()
        Sound:Destroy()
    end)
end

local function SpinBurst()
    SpinToken += 1
    local Token = SpinToken

    local function SmoothSpeed(Target, Duration)
        local Start = Speed
        local Steps = 30
        for Index = 1, Steps do
            if Token ~= SpinToken then
                return false
            end
            Speed = Start + (Target - Start) * (Index / Steps)
            task.wait(Duration / Steps)
        end
        Speed = Target
        return true
    end

    if not SmoothSpeed(360, 0.4) then
        return
    end
    task.wait(0.5)
    if not SmoothSpeed(180, 0.4) then
        return
    end
    task.wait(0.3)
    SmoothSpeed(90, 0.4)
end

OpenButton.MouseButton1Click:Connect(function()
    if OpenButton:GetAttribute("Dragged") then
        return
    end
    PlaySound(SoundIds[math.random(#SoundIds)])
    Window:Minimize()
    task.spawn(SpinBurst)
end)

Library.Events.Unloading:Connect(function()
    ThemeConnection:Disconnect()
    OpenConnection:Disconnect()
    DragConnection:Disconnect()
    OpenGui:Destroy()
end)
