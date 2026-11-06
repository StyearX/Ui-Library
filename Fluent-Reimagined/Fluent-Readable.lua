--!optimize 2
--!native
-- This Thing is Readable Version. The version you are using is the Minify version of the code with dark lua to change the file size to the smallest possible size without damaging the code
-- Code write By StyearX And Other niggas friends 🫩
local fuck = cloneref or clonereference or function(Object: any): any
	return Object
end

local function GetService(Name: string): any
	local Service = game:GetService(Name)
	local Success, Result = pcall(fuck, Service)
	return if Success then Result else Service
end

local CoreGui: CoreGui = GetService("CoreGui")
local GuiService: GuiService = GetService("GuiService")
local HttpService: HttpService = GetService("HttpService")
local Lighting: Lighting = GetService("Lighting")
local Players: Players = GetService("Players")
local RunService: RunService = GetService("RunService")
local TextService: TextService = GetService("TextService")
local TweenService: TweenService = GetService("TweenService")
local UserInputService: UserInputService = GetService("UserInputService")
local Workspace: Workspace = GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local RenderStepped = RunService.RenderStepped
local PreRender = RunService.PreRender
local Heartbeat = RunService.Heartbeat
local ProtectGui = protectgui or (syn and syn.protect_gui) or function() end

-- Theme important variables 
-- Never Delete This Shit this is important code, you are stupid human if you delete this
local Themes = {
	Names = {
		"Dark",
		"Light",
		"Wine",
		"Persian",
		"Royal Gold",
		"Cyber",
		"Sunset",
		"Cyberpunk",
		"Emerald",
		"Amethyst",
		"Ocean",
		"Rose Quartz",
		"Greenish",
		"Azure",
		"Mocha",
		"Crimson",
		"Vivid",
		"Uranus",
		"Cells",
	},
	Dark = {
		Name = "Dark",
		Accent = Color3.fromRGB(212, 212, 216),
		AccentText = Color3.fromRGB(13, 20, 24),
		AcrylicMain = Color3.fromRGB(13, 14, 14),
		AcrylicBorder = Color3.fromRGB(32, 33, 33),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(16, 17, 17), Color3.fromRGB(13, 14, 14)),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(255, 255, 255),
		Tab = Color3.fromRGB(236, 236, 238),
		Element = Color3.fromRGB(19, 20, 20),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(255, 255, 255),
		InElementBorder = Color3.fromRGB(255, 255, 255),
		ToggleSlider = Color3.fromRGB(120, 120, 128),
		ToggleToggled = Color3.fromRGB(54, 209, 125),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(236, 236, 238),
		DropdownFrame = Color3.fromRGB(236, 236, 238),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(34, 35, 35), Color3.fromRGB(14, 15, 15)),
		DropdownBorder = Color3.fromRGB(255, 255, 255),
		DropdownOption = Color3.fromRGB(236, 236, 238),
		Keybind = Color3.fromRGB(236, 236, 238),
		Input = Color3.fromRGB(236, 236, 238),
		InputFocused = Color3.fromRGB(24, 25, 25),
		InputIndicator = Color3.fromRGB(212, 212, 216),
		Dialog = ColorSequence.new(Color3.fromRGB(23, 25, 25), Color3.fromRGB(3, 3, 3)),
		DialogHolder = Color3.fromRGB(24, 25, 25),
		DialogHolderLine = Color3.fromRGB(255, 255, 255),
		DialogButton = Color3.fromRGB(236, 236, 238),
		DialogButtonBorder = Color3.fromRGB(255, 255, 255),
		DialogBorder = Color3.fromRGB(255, 255, 255),
		DialogInput = Color3.fromRGB(236, 236, 238),
		DialogInputLine = Color3.fromRGB(212, 212, 216),
		Text = Color3.fromRGB(236, 236, 238),
		TextSecondary = Color3.fromRGB(182, 182, 185),
		SubText = Color3.fromRGB(150, 150, 154),
		Hover = Color3.fromRGB(255, 255, 255),
		HoverTransparency = 0.945,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(255, 255, 255),
		PressedTransparency = 0.906,
		Locked = Color3.fromRGB(19, 20, 20),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(212, 212, 216),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(236, 236, 238),
		FillButtonText = Color3.fromRGB(13, 14, 14),
		ToastBackground = Color3.fromRGB(236, 236, 238),
		ToastText = Color3.fromRGB(13, 14, 14),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(236, 236, 238),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(23, 25, 25), Color3.fromRGB(3, 3, 3)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(34, 35, 35), Color3.fromRGB(14, 15, 15)),
		PickerBorder = Color3.fromRGB(255, 255, 255),
	},
	Light = {
		Name = "Light",
		Accent = Color3.fromRGB(0, 0, 0),
		AccentText = Color3.fromRGB(255, 255, 255),
		AcrylicMain = Color3.fromRGB(247, 247, 247),
		AcrylicBorder = Color3.fromRGB(217, 217, 217),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(247, 247, 247)),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(0, 0, 0),
		Tab = Color3.fromRGB(0, 0, 0),
		Element = Color3.fromRGB(255, 255, 255),
		ElementTransparency = 0.25,
		ElementBorder = Color3.fromRGB(0, 0, 0),
		InElementBorder = Color3.fromRGB(0, 0, 0),
		ToggleSlider = Color3.fromRGB(120, 120, 128),
		ToggleToggled = Color3.fromRGB(0, 0, 0),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(0, 0, 0),
		DropdownFrame = Color3.fromRGB(0, 0, 0),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(252, 252, 252), Color3.fromRGB(232, 232, 232)),
		DropdownBorder = Color3.fromRGB(0, 0, 0),
		DropdownOption = Color3.fromRGB(0, 0, 0),
		Keybind = Color3.fromRGB(0, 0, 0),
		Input = Color3.fromRGB(0, 0, 0),
		InputFocused = Color3.fromRGB(242, 242, 242),
		InputIndicator = Color3.fromRGB(0, 0, 0),
		Dialog = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(237, 237, 237)),
		DialogHolder = Color3.fromRGB(242, 242, 242),
		DialogHolderLine = Color3.fromRGB(0, 0, 0),
		DialogButton = Color3.fromRGB(0, 0, 0),
		DialogButtonBorder = Color3.fromRGB(0, 0, 0),
		DialogBorder = Color3.fromRGB(0, 0, 0),
		DialogInput = Color3.fromRGB(0, 0, 0),
		DialogInputLine = Color3.fromRGB(0, 0, 0),
		Text = Color3.fromRGB(0, 0, 0),
		TextSecondary = Color3.fromRGB(63, 63, 63),
		SubText = Color3.fromRGB(119, 119, 119),
		Hover = Color3.fromRGB(0, 0, 0),
		HoverTransparency = 0.945,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(0, 0, 0),
		PressedTransparency = 0.898,
		Locked = Color3.fromRGB(255, 255, 255),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(0, 0, 0),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(0, 0, 0),
		FillButtonText = Color3.fromRGB(247, 247, 247),
		ToastBackground = Color3.fromRGB(0, 0, 0),
		ToastText = Color3.fromRGB(247, 247, 247),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(0, 0, 0),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(237, 237, 237)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(252, 252, 252), Color3.fromRGB(232, 232, 232)),
		PickerBorder = Color3.fromRGB(0, 0, 0),
	},
	Wine = {
		Name = "Wine",
		Accent = Color3.fromRGB(240, 222, 190),
		AccentText = Color3.fromRGB(60, 12, 24),
		AcrylicMain = Color3.fromRGB(92, 26, 40),
		AcrylicBorder = Color3.fromRGB(140, 24, 48),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(156, 28, 56)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(92, 26, 40)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(62, 14, 26)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(196, 30, 62),
		Tab = Color3.fromRGB(245, 230, 204),
		Element = Color3.fromRGB(114, 34, 52),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(196, 30, 62),
		InElementBorder = Color3.fromRGB(196, 30, 62),
		ToggleSlider = Color3.fromRGB(150, 110, 116),
		ToggleToggled = Color3.fromRGB(220, 20, 60),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(245, 230, 204),
		DropdownFrame = Color3.fromRGB(245, 230, 204),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(150, 44, 68), Color3.fromRGB(117, 37, 55)),
		DropdownBorder = Color3.fromRGB(196, 30, 62),
		DropdownOption = Color3.fromRGB(245, 230, 204),
		Keybind = Color3.fromRGB(245, 230, 204),
		Input = Color3.fromRGB(245, 230, 204),
		InputFocused = Color3.fromRGB(132, 42, 62),
		InputIndicator = Color3.fromRGB(238, 70, 100),
		Dialog = ColorSequence.new(Color3.fromRGB(110, 29, 46), Color3.fromRGB(76, 22, 33)),
		DialogHolder = Color3.fromRGB(132, 42, 62),
		DialogHolderLine = Color3.fromRGB(196, 30, 62),
		DialogButton = Color3.fromRGB(245, 230, 204),
		DialogButtonBorder = Color3.fromRGB(196, 30, 62),
		DialogBorder = Color3.fromRGB(196, 30, 62),
		DialogInput = Color3.fromRGB(245, 230, 204),
		DialogInputLine = Color3.fromRGB(238, 70, 100),
		Text = Color3.fromRGB(250, 238, 216),
		TextSecondary = Color3.fromRGB(222, 200, 184),
		SubText = Color3.fromRGB(184, 146, 148),
		Hover = Color3.fromRGB(250, 238, 216),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(250, 238, 216),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(114, 34, 52),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(240, 222, 190),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(255, 92, 92),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(240, 222, 190),
		FillButtonText = Color3.fromRGB(60, 12, 24),
		ToastBackground = Color3.fromRGB(245, 230, 204),
		ToastText = Color3.fromRGB(70, 14, 28),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(30, 0, 8),
		ScrollBar = Color3.fromRGB(245, 230, 204),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(110, 29, 46), Color3.fromRGB(76, 22, 33)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(150, 44, 68), Color3.fromRGB(117, 37, 55)),
		PickerBorder = Color3.fromRGB(196, 30, 62),
	},
	Persian = {
		Name = "Persian",
		Accent = Color3.fromRGB(65, 105, 225),
		AccentText = Color3.fromRGB(248, 248, 255),
		AcrylicMain = Color3.fromRGB(39, 24, 126),
		AcrylicBorder = Color3.fromRGB(28, 16, 98),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(72, 54, 186)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(39, 24, 126)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 14, 94)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(110, 140, 240),
		Tab = Color3.fromRGB(254, 253, 247),
		Element = Color3.fromRGB(54, 38, 150),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(110, 140, 240),
		InElementBorder = Color3.fromRGB(110, 140, 240),
		ToggleSlider = Color3.fromRGB(140, 136, 200),
		ToggleToggled = Color3.fromRGB(65, 105, 225),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(254, 253, 247),
		DropdownFrame = Color3.fromRGB(254, 253, 247),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(68, 49, 187), Color3.fromRGB(58, 43, 152)),
		DropdownBorder = Color3.fromRGB(110, 140, 240),
		DropdownOption = Color3.fromRGB(254, 253, 247),
		Keybind = Color3.fromRGB(254, 253, 247),
		Input = Color3.fromRGB(254, 253, 247),
		InputFocused = Color3.fromRGB(64, 48, 168),
		InputIndicator = Color3.fromRGB(110, 140, 240),
		Dialog = ColorSequence.new(Color3.fromRGB(42, 24, 146), Color3.fromRGB(34, 21, 109)),
		DialogHolder = Color3.fromRGB(64, 48, 168),
		DialogHolderLine = Color3.fromRGB(110, 140, 240),
		DialogButton = Color3.fromRGB(254, 253, 247),
		DialogButtonBorder = Color3.fromRGB(110, 140, 240),
		DialogBorder = Color3.fromRGB(110, 140, 240),
		DialogInput = Color3.fromRGB(254, 253, 247),
		DialogInputLine = Color3.fromRGB(110, 140, 240),
		Text = Color3.fromRGB(248, 248, 255),
		TextSecondary = Color3.fromRGB(236, 234, 226),
		SubText = Color3.fromRGB(168, 164, 222),
		Hover = Color3.fromRGB(254, 253, 247),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(254, 253, 247),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(54, 38, 150),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(65, 105, 225),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(65, 105, 225),
		FillButtonText = Color3.fromRGB(248, 248, 255),
		ToastBackground = Color3.fromRGB(254, 253, 247),
		ToastText = Color3.fromRGB(39, 24, 126),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(8, 4, 40),
		ScrollBar = Color3.fromRGB(254, 253, 247),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(42, 24, 146), Color3.fromRGB(34, 21, 109)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(68, 49, 187), Color3.fromRGB(58, 43, 152)),
		PickerBorder = Color3.fromRGB(110, 140, 240),
	},
	["Royal Gold"] = {
		Name = "Royal Gold",
		Accent = Color3.fromRGB(255, 215, 0),
		AccentText = Color3.fromRGB(40, 26, 2),
		AcrylicMain = Color3.fromRGB(74, 50, 6),
		AcrylicBorder = Color3.fromRGB(122, 86, 12),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 78, 8)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(74, 50, 6)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(46, 30, 3)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(236, 169, 39),
		Tab = Color3.fromRGB(250, 240, 208),
		Element = Color3.fromRGB(98, 68, 10),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(236, 169, 39),
		InElementBorder = Color3.fromRGB(236, 169, 39),
		ToggleSlider = Color3.fromRGB(160, 132, 80),
		ToggleToggled = Color3.fromRGB(255, 215, 0),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(250, 240, 208),
		DropdownFrame = Color3.fromRGB(250, 240, 208),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(137, 96, 16), Color3.fromRGB(98, 69, 14)),
		DropdownBorder = Color3.fromRGB(236, 169, 39),
		DropdownOption = Color3.fromRGB(250, 240, 208),
		Keybind = Color3.fromRGB(250, 240, 208),
		Input = Color3.fromRGB(250, 240, 208),
		InputFocused = Color3.fromRGB(116, 82, 16),
		InputIndicator = Color3.fromRGB(255, 215, 0),
		Dialog = ColorSequence.new(Color3.fromRGB(95, 63, 5), Color3.fromRGB(55, 37, 4)),
		DialogHolder = Color3.fromRGB(116, 82, 16),
		DialogHolderLine = Color3.fromRGB(236, 169, 39),
		DialogButton = Color3.fromRGB(250, 240, 208),
		DialogButtonBorder = Color3.fromRGB(236, 169, 39),
		DialogBorder = Color3.fromRGB(236, 169, 39),
		DialogInput = Color3.fromRGB(250, 240, 208),
		DialogInputLine = Color3.fromRGB(255, 215, 0),
		Text = Color3.fromRGB(255, 248, 226),
		TextSecondary = Color3.fromRGB(232, 216, 176),
		SubText = Color3.fromRGB(188, 164, 112),
		Hover = Color3.fromRGB(255, 244, 214),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(255, 244, 214),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(98, 68, 10),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(255, 215, 0),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(255, 215, 0),
		FillButtonText = Color3.fromRGB(40, 26, 2),
		ToastBackground = Color3.fromRGB(255, 248, 226),
		ToastText = Color3.fromRGB(52, 34, 2),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(24, 14, 0),
		ScrollBar = Color3.fromRGB(250, 240, 208),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(95, 63, 5), Color3.fromRGB(55, 37, 4)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(137, 96, 16), Color3.fromRGB(98, 69, 14)),
		PickerBorder = Color3.fromRGB(236, 169, 39),
	},
	Cyber = {
		Name = "Cyber",
		Accent = Color3.fromRGB(166, 255, 0),
		AccentText = Color3.fromRGB(14, 20, 4),
		AcrylicMain = Color3.fromRGB(30, 34, 38),
		AcrylicBorder = Color3.fromRGB(52, 60, 50),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 48, 54)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(30, 34, 38)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 23, 26)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(166, 255, 0),
		Tab = Color3.fromRGB(222, 232, 224),
		Element = Color3.fromRGB(42, 48, 54),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(166, 255, 0),
		InElementBorder = Color3.fromRGB(166, 255, 0),
		ToggleSlider = Color3.fromRGB(112, 122, 118),
		ToggleToggled = Color3.fromRGB(166, 255, 0),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(222, 232, 224),
		DropdownFrame = Color3.fromRGB(222, 232, 224),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(63, 71, 80), Color3.fromRGB(45, 51, 57)),
		DropdownBorder = Color3.fromRGB(166, 255, 0),
		DropdownOption = Color3.fromRGB(222, 232, 224),
		Keybind = Color3.fromRGB(222, 232, 224),
		Input = Color3.fromRGB(222, 232, 224),
		InputFocused = Color3.fromRGB(54, 61, 68),
		InputIndicator = Color3.fromRGB(166, 255, 0),
		Dialog = ColorSequence.new(Color3.fromRGB(39, 44, 50), Color3.fromRGB(21, 24, 27)),
		DialogHolder = Color3.fromRGB(54, 61, 68),
		DialogHolderLine = Color3.fromRGB(166, 255, 0),
		DialogButton = Color3.fromRGB(222, 232, 224),
		DialogButtonBorder = Color3.fromRGB(166, 255, 0),
		DialogBorder = Color3.fromRGB(166, 255, 0),
		DialogInput = Color3.fromRGB(222, 232, 224),
		DialogInputLine = Color3.fromRGB(166, 255, 0),
		Text = Color3.fromRGB(228, 236, 230),
		TextSecondary = Color3.fromRGB(176, 186, 180),
		SubText = Color3.fromRGB(124, 134, 128),
		Hover = Color3.fromRGB(166, 255, 0),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(166, 255, 0),
		PressedTransparency = 0.86,
		Locked = Color3.fromRGB(42, 48, 54),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(166, 255, 0),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(166, 255, 0),
		FillButtonText = Color3.fromRGB(14, 20, 4),
		ToastBackground = Color3.fromRGB(228, 236, 230),
		ToastText = Color3.fromRGB(20, 24, 26),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(222, 232, 224),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(39, 44, 50), Color3.fromRGB(21, 24, 27)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(63, 71, 80), Color3.fromRGB(45, 51, 57)),
		PickerBorder = Color3.fromRGB(166, 255, 0),
	},
	Sunset = {
		Name = "Sunset",
		Accent = Color3.fromRGB(196, 76, 8),
		AccentText = Color3.fromRGB(255, 247, 232),
		AcrylicMain = Color3.fromRGB(240, 212, 166),
		AcrylicBorder = Color3.fromRGB(214, 150, 92),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 105, 30)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 212, 166)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 243, 222)),
		}),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(110, 46, 12),
		Tab = Color3.fromRGB(78, 34, 10),
		Element = Color3.fromRGB(255, 246, 230),
		ElementTransparency = 0.25,
		ElementBorder = Color3.fromRGB(110, 46, 12),
		InElementBorder = Color3.fromRGB(110, 46, 12),
		ToggleSlider = Color3.fromRGB(150, 110, 80),
		ToggleToggled = Color3.fromRGB(196, 76, 8),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(78, 34, 10),
		DropdownFrame = Color3.fromRGB(78, 34, 10),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(253, 240, 218), Color3.fromRGB(248, 224, 181)),
		DropdownBorder = Color3.fromRGB(110, 46, 12),
		DropdownOption = Color3.fromRGB(78, 34, 10),
		Keybind = Color3.fromRGB(78, 34, 10),
		Input = Color3.fromRGB(78, 34, 10),
		InputFocused = Color3.fromRGB(250, 232, 200),
		InputIndicator = Color3.fromRGB(196, 76, 8),
		Dialog = ColorSequence.new(Color3.fromRGB(244, 221, 182), Color3.fromRGB(237, 204, 149)),
		DialogHolder = Color3.fromRGB(250, 232, 200),
		DialogHolderLine = Color3.fromRGB(110, 46, 12),
		DialogButton = Color3.fromRGB(78, 34, 10),
		DialogButtonBorder = Color3.fromRGB(110, 46, 12),
		DialogBorder = Color3.fromRGB(110, 46, 12),
		DialogInput = Color3.fromRGB(78, 34, 10),
		DialogInputLine = Color3.fromRGB(196, 76, 8),
		Text = Color3.fromRGB(70, 30, 8),
		TextSecondary = Color3.fromRGB(110, 56, 22),
		SubText = Color3.fromRGB(140, 92, 56),
		Hover = Color3.fromRGB(110, 46, 12),
		HoverTransparency = 0.945,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(110, 46, 12),
		PressedTransparency = 0.898,
		Locked = Color3.fromRGB(255, 246, 230),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(196, 76, 8),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(220, 38, 38),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(196, 76, 8),
		FillButtonText = Color3.fromRGB(255, 247, 232),
		ToastBackground = Color3.fromRGB(70, 30, 8),
		ToastText = Color3.fromRGB(255, 243, 222),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(90, 40, 0),
		ScrollBar = Color3.fromRGB(78, 34, 10),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(244, 221, 182), Color3.fromRGB(237, 204, 149)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(253, 240, 218), Color3.fromRGB(248, 224, 181)),
		PickerBorder = Color3.fromRGB(110, 46, 12),
	},
	Emerald = {
		Name = "Emerald",
		Accent = Color3.fromRGB(52, 211, 153),
		AccentText = Color3.fromRGB(4, 32, 22),
		AcrylicMain = Color3.fromRGB(10, 38, 30),
		AcrylicBorder = Color3.fromRGB(22, 74, 58),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 62, 48)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 38, 30)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 24, 19)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(52, 211, 153),
		Tab = Color3.fromRGB(218, 242, 230),
		Element = Color3.fromRGB(18, 58, 46),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(52, 211, 153),
		InElementBorder = Color3.fromRGB(52, 211, 153),
		ToggleSlider = Color3.fromRGB(110, 150, 134),
		ToggleToggled = Color3.fromRGB(52, 211, 153),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(218, 242, 230),
		DropdownFrame = Color3.fromRGB(218, 242, 230),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(30, 93, 73), Color3.fromRGB(21, 61, 48)),
		DropdownBorder = Color3.fromRGB(52, 211, 153),
		DropdownOption = Color3.fromRGB(218, 242, 230),
		Keybind = Color3.fromRGB(218, 242, 230),
		Input = Color3.fromRGB(218, 242, 230),
		InputFocused = Color3.fromRGB(26, 76, 60),
		InputIndicator = Color3.fromRGB(52, 211, 153),
		Dialog = ColorSequence.new(Color3.fromRGB(13, 55, 43), Color3.fromRGB(6, 22, 17)),
		DialogHolder = Color3.fromRGB(26, 76, 60),
		DialogHolderLine = Color3.fromRGB(52, 211, 153),
		DialogButton = Color3.fromRGB(218, 242, 230),
		DialogButtonBorder = Color3.fromRGB(52, 211, 153),
		DialogBorder = Color3.fromRGB(52, 211, 153),
		DialogInput = Color3.fromRGB(218, 242, 230),
		DialogInputLine = Color3.fromRGB(52, 211, 153),
		Text = Color3.fromRGB(226, 246, 237),
		TextSecondary = Color3.fromRGB(176, 214, 196),
		SubText = Color3.fromRGB(122, 166, 146),
		Hover = Color3.fromRGB(226, 246, 237),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(226, 246, 237),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(18, 58, 46),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(52, 211, 153),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(52, 211, 153),
		FillButtonText = Color3.fromRGB(4, 32, 22),
		ToastBackground = Color3.fromRGB(226, 246, 237),
		ToastText = Color3.fromRGB(10, 38, 30),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(218, 242, 230),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(13, 55, 43), Color3.fromRGB(6, 22, 17)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(30, 93, 73), Color3.fromRGB(21, 61, 48)),
		PickerBorder = Color3.fromRGB(52, 211, 153),
	},
	Amethyst = {
		Name = "Amethyst",
		Accent = Color3.fromRGB(192, 132, 252),
		AccentText = Color3.fromRGB(34, 12, 60),
		AcrylicMain = Color3.fromRGB(44, 22, 74),
		AcrylicBorder = Color3.fromRGB(88, 52, 134),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(72, 38, 118)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(44, 22, 74)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(28, 12, 50)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(192, 132, 252),
		Tab = Color3.fromRGB(238, 228, 252),
		Element = Color3.fromRGB(62, 34, 100),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(192, 132, 252),
		InElementBorder = Color3.fromRGB(192, 132, 252),
		ToggleSlider = Color3.fromRGB(144, 120, 176),
		ToggleToggled = Color3.fromRGB(192, 132, 252),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(238, 228, 252),
		DropdownFrame = Color3.fromRGB(238, 228, 252),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(89, 52, 141), Color3.fromRGB(71, 42, 109)),
		DropdownBorder = Color3.fromRGB(192, 132, 252),
		DropdownOption = Color3.fromRGB(238, 228, 252),
		Keybind = Color3.fromRGB(238, 228, 252),
		Input = Color3.fromRGB(238, 228, 252),
		InputFocused = Color3.fromRGB(80, 48, 124),
		InputIndicator = Color3.fromRGB(192, 132, 252),
		Dialog = ColorSequence.new(Color3.fromRGB(53, 25, 91), Color3.fromRGB(35, 17, 58)),
		DialogHolder = Color3.fromRGB(80, 48, 124),
		DialogHolderLine = Color3.fromRGB(192, 132, 252),
		DialogButton = Color3.fromRGB(238, 228, 252),
		DialogButtonBorder = Color3.fromRGB(192, 132, 252),
		DialogBorder = Color3.fromRGB(192, 132, 252),
		DialogInput = Color3.fromRGB(238, 228, 252),
		DialogInputLine = Color3.fromRGB(192, 132, 252),
		Text = Color3.fromRGB(244, 236, 255),
		TextSecondary = Color3.fromRGB(206, 188, 230),
		SubText = Color3.fromRGB(154, 132, 186),
		Hover = Color3.fromRGB(244, 236, 255),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(244, 236, 255),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(62, 34, 100),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(192, 132, 252),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(192, 132, 252),
		FillButtonText = Color3.fromRGB(34, 12, 60),
		ToastBackground = Color3.fromRGB(244, 236, 255),
		ToastText = Color3.fromRGB(44, 22, 74),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(238, 228, 252),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(53, 25, 91), Color3.fromRGB(35, 17, 58)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(89, 52, 141), Color3.fromRGB(71, 42, 109)),
		PickerBorder = Color3.fromRGB(192, 132, 252),
	},
	Ocean = {
		Name = "Ocean",
		Accent = Color3.fromRGB(45, 212, 220),
		AccentText = Color3.fromRGB(2, 30, 38),
		AcrylicMain = Color3.fromRGB(8, 36, 48),
		AcrylicBorder = Color3.fromRGB(20, 76, 94),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 80, 102)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(8, 36, 48)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(4, 22, 32)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(45, 212, 220),
		Tab = Color3.fromRGB(216, 240, 246),
		Element = Color3.fromRGB(16, 58, 76),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(45, 212, 220),
		InElementBorder = Color3.fromRGB(45, 212, 220),
		ToggleSlider = Color3.fromRGB(110, 150, 162),
		ToggleToggled = Color3.fromRGB(45, 212, 220),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(216, 240, 246),
		DropdownFrame = Color3.fromRGB(216, 240, 246),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(26, 90, 117), Color3.fromRGB(20, 63, 82)),
		DropdownBorder = Color3.fromRGB(45, 212, 220),
		DropdownOption = Color3.fromRGB(216, 240, 246),
		Keybind = Color3.fromRGB(216, 240, 246),
		Input = Color3.fromRGB(216, 240, 246),
		InputFocused = Color3.fromRGB(24, 76, 98),
		InputIndicator = Color3.fromRGB(45, 212, 220),
		Dialog = ColorSequence.new(Color3.fromRGB(10, 50, 67), Color3.fromRGB(5, 23, 31)),
		DialogHolder = Color3.fromRGB(24, 76, 98),
		DialogHolderLine = Color3.fromRGB(45, 212, 220),
		DialogButton = Color3.fromRGB(216, 240, 246),
		DialogButtonBorder = Color3.fromRGB(45, 212, 220),
		DialogBorder = Color3.fromRGB(45, 212, 220),
		DialogInput = Color3.fromRGB(216, 240, 246),
		DialogInputLine = Color3.fromRGB(45, 212, 220),
		Text = Color3.fromRGB(226, 246, 250),
		TextSecondary = Color3.fromRGB(172, 210, 222),
		SubText = Color3.fromRGB(120, 162, 176),
		Hover = Color3.fromRGB(226, 246, 250),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(226, 246, 250),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(16, 58, 76),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(45, 212, 220),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(45, 212, 220),
		FillButtonText = Color3.fromRGB(2, 30, 38),
		ToastBackground = Color3.fromRGB(226, 246, 250),
		ToastText = Color3.fromRGB(8, 36, 48),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(216, 240, 246),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(10, 50, 67), Color3.fromRGB(5, 23, 31)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(26, 90, 117), Color3.fromRGB(20, 63, 82)),
		PickerBorder = Color3.fromRGB(45, 212, 220),
	},
	["Rose Quartz"] = {
		Name = "Rose Quartz",
		Accent = Color3.fromRGB(190, 40, 90),
		AccentText = Color3.fromRGB(255, 246, 248),
		AcrylicMain = Color3.fromRGB(253, 236, 240),
		AcrylicBorder = Color3.fromRGB(232, 190, 204),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 246, 248)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(253, 236, 240)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(248, 220, 230)),
		}),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(74, 28, 44),
		Tab = Color3.fromRGB(80, 30, 48),
		Element = Color3.fromRGB(255, 250, 251),
		ElementTransparency = 0.25,
		ElementBorder = Color3.fromRGB(74, 28, 44),
		InElementBorder = Color3.fromRGB(74, 28, 44),
		ToggleSlider = Color3.fromRGB(160, 120, 134),
		ToggleToggled = Color3.fromRGB(190, 40, 90),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(80, 30, 48),
		DropdownFrame = Color3.fromRGB(80, 30, 48),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(254, 247, 249), Color3.fromRGB(247, 213, 223)),
		DropdownBorder = Color3.fromRGB(74, 28, 44),
		DropdownOption = Color3.fromRGB(80, 30, 48),
		Keybind = Color3.fromRGB(80, 30, 48),
		Input = Color3.fromRGB(80, 30, 48),
		InputFocused = Color3.fromRGB(250, 230, 236),
		InputIndicator = Color3.fromRGB(190, 40, 90),
		Dialog = ColorSequence.new(Color3.fromRGB(255, 254, 255), Color3.fromRGB(251, 218, 225)),
		DialogHolder = Color3.fromRGB(250, 230, 236),
		DialogHolderLine = Color3.fromRGB(74, 28, 44),
		DialogButton = Color3.fromRGB(80, 30, 48),
		DialogButtonBorder = Color3.fromRGB(74, 28, 44),
		DialogBorder = Color3.fromRGB(74, 28, 44),
		DialogInput = Color3.fromRGB(80, 30, 48),
		DialogInputLine = Color3.fromRGB(190, 40, 90),
		Text = Color3.fromRGB(74, 28, 44),
		TextSecondary = Color3.fromRGB(112, 58, 78),
		SubText = Color3.fromRGB(150, 104, 120),
		Hover = Color3.fromRGB(74, 28, 44),
		HoverTransparency = 0.945,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(74, 28, 44),
		PressedTransparency = 0.898,
		Locked = Color3.fromRGB(255, 250, 251),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(190, 40, 90),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(220, 38, 38),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(190, 40, 90),
		FillButtonText = Color3.fromRGB(255, 246, 248),
		ToastBackground = Color3.fromRGB(74, 28, 44),
		ToastText = Color3.fromRGB(253, 236, 240),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(80, 20, 40),
		ScrollBar = Color3.fromRGB(80, 30, 48),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(255, 254, 255), Color3.fromRGB(251, 218, 225)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(254, 247, 249), Color3.fromRGB(247, 213, 223)),
		PickerBorder = Color3.fromRGB(74, 28, 44),
	},
	Cyberpunk = {
		Name = "Cyberpunk",
		Accent = Color3.fromRGB(255, 230, 0),
		AccentText = Color3.fromRGB(13, 14, 18),
		AcrylicMain = Color3.fromRGB(12, 10, 22),
		AcrylicBorder = Color3.fromRGB(51, 45, 18),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 12, 56)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 10, 22)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 32, 44)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(255, 230, 0),
		Tab = Color3.fromRGB(240, 236, 255),
		Element = Color3.fromRGB(26, 18, 46),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(255, 230, 0),
		InElementBorder = Color3.fromRGB(255, 230, 0),
		ToggleSlider = Color3.fromRGB(120, 120, 128),
		ToggleToggled = Color3.fromRGB(0, 240, 255),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(240, 236, 255),
		DropdownFrame = Color3.fromRGB(240, 236, 255),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(52, 41, 77), Color3.fromRGB(34, 28, 50)),
		DropdownBorder = Color3.fromRGB(255, 230, 0),
		DropdownOption = Color3.fromRGB(240, 236, 255),
		Keybind = Color3.fromRGB(240, 236, 255),
		Input = Color3.fromRGB(240, 236, 255),
		InputFocused = Color3.fromRGB(43, 35, 63),
		InputIndicator = Color3.fromRGB(255, 230, 0),
		Dialog = ColorSequence.new(Color3.fromRGB(19, 16, 37), Color3.fromRGB(4, 4, 8)),
		DialogHolder = Color3.fromRGB(43, 35, 63),
		DialogHolderLine = Color3.fromRGB(255, 230, 0),
		DialogButton = Color3.fromRGB(240, 236, 255),
		DialogButtonBorder = Color3.fromRGB(255, 230, 0),
		DialogBorder = Color3.fromRGB(255, 230, 0),
		DialogInput = Color3.fromRGB(240, 236, 255),
		DialogInputLine = Color3.fromRGB(255, 230, 0),
		Text = Color3.fromRGB(240, 236, 255),
		TextSecondary = Color3.fromRGB(176, 173, 190),
		SubText = Color3.fromRGB(126, 123, 138),
		Hover = Color3.fromRGB(255, 230, 0),
		HoverTransparency = 0.922,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(255, 230, 0),
		PressedTransparency = 0.851,
		Locked = Color3.fromRGB(26, 18, 46),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(255, 230, 0),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(240, 236, 255),
		FillButtonText = Color3.fromRGB(12, 10, 22),
		ToastBackground = Color3.fromRGB(240, 236, 255),
		ToastText = Color3.fromRGB(12, 10, 22),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(240, 236, 255),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(19, 16, 37), Color3.fromRGB(4, 4, 8)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(52, 41, 77), Color3.fromRGB(34, 28, 50)),
		PickerBorder = Color3.fromRGB(255, 230, 0),
	},

	["Greenish"] = {
		Name = "Greenish",
		Accent = Color3.fromRGB(34, 120, 70),
		AccentText = Color3.fromRGB(240, 252, 244),
		AcrylicMain = Color3.fromRGB(226, 240, 229),
		AcrylicBorder = Color3.fromRGB(170, 204, 180),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(242, 251, 244)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(226, 240, 229)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(210, 231, 216)),
		}),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(24, 58, 36),
		Tab = Color3.fromRGB(30, 66, 42),
		Element = Color3.fromRGB(246, 252, 248),
		ElementTransparency = 0.25,
		ElementBorder = Color3.fromRGB(24, 58, 36),
		InElementBorder = Color3.fromRGB(24, 58, 36),
		ToggleSlider = Color3.fromRGB(120, 156, 130),
		ToggleToggled = Color3.fromRGB(34, 120, 70),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(30, 66, 42),
		DropdownFrame = Color3.fromRGB(30, 66, 42),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(227, 241, 231), Color3.fromRGB(201, 227, 208)),
		DropdownBorder = Color3.fromRGB(24, 58, 36),
		DropdownOption = Color3.fromRGB(30, 66, 42),
		Keybind = Color3.fromRGB(30, 66, 42),
		Input = Color3.fromRGB(30, 66, 42),
		InputFocused = Color3.fromRGB(214, 234, 220),
		InputIndicator = Color3.fromRGB(34, 120, 70),
		Dialog = ColorSequence.new(Color3.fromRGB(239, 247, 241), Color3.fromRGB(213, 233, 217)),
		DialogHolder = Color3.fromRGB(214, 234, 220),
		DialogHolderLine = Color3.fromRGB(24, 58, 36),
		DialogButton = Color3.fromRGB(30, 66, 42),
		DialogButtonBorder = Color3.fromRGB(24, 58, 36),
		DialogBorder = Color3.fromRGB(24, 58, 36),
		DialogInput = Color3.fromRGB(30, 66, 42),
		DialogInputLine = Color3.fromRGB(34, 120, 70),
		Text = Color3.fromRGB(20, 52, 32),
		TextSecondary = Color3.fromRGB(56, 98, 70),
		SubText = Color3.fromRGB(96, 138, 110),
		Hover = Color3.fromRGB(24, 58, 36),
		HoverTransparency = 0.945,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(24, 58, 36),
		PressedTransparency = 0.898,
		Locked = Color3.fromRGB(246, 252, 248),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(34, 120, 70),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(220, 38, 38),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(34, 120, 70),
		FillButtonText = Color3.fromRGB(240, 252, 244),
		ToastBackground = Color3.fromRGB(24, 58, 36),
		ToastText = Color3.fromRGB(226, 240, 229),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(20, 60, 36),
		ScrollBar = Color3.fromRGB(30, 66, 42),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(239, 247, 241), Color3.fromRGB(213, 233, 217)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(227, 241, 231), Color3.fromRGB(201, 227, 208)),
		PickerBorder = Color3.fromRGB(24, 58, 36),
	},

	["Azure"] = {
		Name = "Azure",
		Accent = Color3.fromRGB(0, 127, 255),
		AccentText = Color3.fromRGB(245, 250, 255),
		AcrylicMain = Color3.fromRGB(8, 24, 52),
		AcrylicBorder = Color3.fromRGB(24, 70, 130),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(14, 50, 100)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(8, 24, 52)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 15, 34)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(0, 127, 255),
		Tab = Color3.fromRGB(214, 232, 255),
		Element = Color3.fromRGB(14, 40, 80),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(0, 127, 255),
		InElementBorder = Color3.fromRGB(0, 127, 255),
		ToggleSlider = Color3.fromRGB(100, 132, 180),
		ToggleToggled = Color3.fromRGB(0, 127, 255),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(214, 232, 255),
		DropdownFrame = Color3.fromRGB(214, 232, 255),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(23, 65, 123), Color3.fromRGB(18, 47, 87)),
		DropdownBorder = Color3.fromRGB(0, 127, 255),
		DropdownOption = Color3.fromRGB(214, 232, 255),
		Keybind = Color3.fromRGB(214, 232, 255),
		Input = Color3.fromRGB(214, 232, 255),
		InputFocused = Color3.fromRGB(22, 56, 104),
		InputIndicator = Color3.fromRGB(0, 127, 255),
		Dialog = ColorSequence.new(Color3.fromRGB(9, 32, 71), Color3.fromRGB(5, 16, 34)),
		DialogHolder = Color3.fromRGB(22, 56, 104),
		DialogHolderLine = Color3.fromRGB(0, 127, 255),
		DialogButton = Color3.fromRGB(214, 232, 255),
		DialogButtonBorder = Color3.fromRGB(0, 127, 255),
		DialogBorder = Color3.fromRGB(0, 127, 255),
		DialogInput = Color3.fromRGB(214, 232, 255),
		DialogInputLine = Color3.fromRGB(0, 127, 255),
		Text = Color3.fromRGB(228, 240, 255),
		TextSecondary = Color3.fromRGB(172, 200, 236),
		SubText = Color3.fromRGB(120, 154, 200),
		Hover = Color3.fromRGB(228, 240, 255),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(228, 240, 255),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(14, 40, 80),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(0, 127, 255),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(0, 127, 255),
		FillButtonText = Color3.fromRGB(245, 250, 255),
		ToastBackground = Color3.fromRGB(228, 240, 255),
		ToastText = Color3.fromRGB(8, 24, 52),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(214, 232, 255),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(9, 32, 71), Color3.fromRGB(5, 16, 34)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(23, 65, 123), Color3.fromRGB(18, 47, 87)),
		PickerBorder = Color3.fromRGB(0, 127, 255),
	},

	["Mocha"] = {
		Name = "Mocha",
		Accent = Color3.fromRGB(222, 170, 120),
		AccentText = Color3.fromRGB(40, 24, 14),
		AcrylicMain = Color3.fromRGB(34, 24, 20),
		AcrylicBorder = Color3.fromRGB(92, 64, 48),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 44, 36)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(34, 24, 20)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 16, 13)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(222, 170, 120),
		Tab = Color3.fromRGB(246, 232, 218),
		Element = Color3.fromRGB(50, 36, 30),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(222, 170, 120),
		InElementBorder = Color3.fromRGB(222, 170, 120),
		ToggleSlider = Color3.fromRGB(140, 116, 100),
		ToggleToggled = Color3.fromRGB(222, 170, 120),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(246, 232, 218),
		DropdownFrame = Color3.fromRGB(246, 232, 218),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(79, 57, 47), Color3.fromRGB(53, 39, 32)),
		DropdownBorder = Color3.fromRGB(222, 170, 120),
		DropdownOption = Color3.fromRGB(246, 232, 218),
		Keybind = Color3.fromRGB(246, 232, 218),
		Input = Color3.fromRGB(246, 232, 218),
		InputFocused = Color3.fromRGB(66, 48, 40),
		InputIndicator = Color3.fromRGB(222, 170, 120),
		Dialog = ColorSequence.new(Color3.fromRGB(47, 33, 27), Color3.fromRGB(21, 15, 12)),
		DialogHolder = Color3.fromRGB(66, 48, 40),
		DialogHolderLine = Color3.fromRGB(222, 170, 120),
		DialogButton = Color3.fromRGB(246, 232, 218),
		DialogButtonBorder = Color3.fromRGB(222, 170, 120),
		DialogBorder = Color3.fromRGB(222, 170, 120),
		DialogInput = Color3.fromRGB(246, 232, 218),
		DialogInputLine = Color3.fromRGB(222, 170, 120),
		Text = Color3.fromRGB(246, 234, 222),
		TextSecondary = Color3.fromRGB(208, 184, 164),
		SubText = Color3.fromRGB(156, 132, 114),
		Hover = Color3.fromRGB(246, 234, 222),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(246, 234, 222),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(50, 36, 30),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(222, 170, 120),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(222, 170, 120),
		FillButtonText = Color3.fromRGB(40, 24, 14),
		ToastBackground = Color3.fromRGB(246, 234, 222),
		ToastText = Color3.fromRGB(34, 24, 20),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(246, 232, 218),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(47, 33, 27), Color3.fromRGB(21, 15, 12)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(79, 57, 47), Color3.fromRGB(53, 39, 32)),
		PickerBorder = Color3.fromRGB(222, 170, 120),
	},

	["Crimson"] = {
		Name = "Crimson",
		Accent = Color3.fromRGB(240, 56, 72),
		AccentText = Color3.fromRGB(255, 244, 245),
		AcrylicMain = Color3.fromRGB(20, 10, 12),
		AcrylicBorder = Color3.fromRGB(96, 24, 34),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 14, 20)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 10, 12)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 6, 8)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(240, 56, 72),
		Tab = Color3.fromRGB(250, 228, 230),
		Element = Color3.fromRGB(32, 16, 19),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(240, 56, 72),
		InElementBorder = Color3.fromRGB(240, 56, 72),
		ToggleSlider = Color3.fromRGB(130, 100, 106),
		ToggleToggled = Color3.fromRGB(240, 56, 72),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(250, 228, 230),
		DropdownFrame = Color3.fromRGB(250, 228, 230),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(61, 28, 35), Color3.fromRGB(32, 15, 19)),
		DropdownBorder = Color3.fromRGB(240, 56, 72),
		DropdownOption = Color3.fromRGB(250, 228, 230),
		Keybind = Color3.fromRGB(250, 228, 230),
		Input = Color3.fromRGB(250, 228, 230),
		InputFocused = Color3.fromRGB(46, 22, 27),
		InputIndicator = Color3.fromRGB(240, 56, 72),
		Dialog = ColorSequence.new(Color3.fromRGB(34, 16, 20), Color3.fromRGB(6, 3, 4)),
		DialogHolder = Color3.fromRGB(46, 22, 27),
		DialogHolderLine = Color3.fromRGB(240, 56, 72),
		DialogButton = Color3.fromRGB(250, 228, 230),
		DialogButtonBorder = Color3.fromRGB(240, 56, 72),
		DialogBorder = Color3.fromRGB(240, 56, 72),
		DialogInput = Color3.fromRGB(250, 228, 230),
		DialogInputLine = Color3.fromRGB(240, 56, 72),
		Text = Color3.fromRGB(248, 234, 236),
		TextSecondary = Color3.fromRGB(206, 170, 176),
		SubText = Color3.fromRGB(156, 122, 128),
		Hover = Color3.fromRGB(248, 234, 236),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(248, 234, 236),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(32, 16, 19),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(240, 56, 72),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(240, 56, 72),
		FillButtonText = Color3.fromRGB(255, 244, 245),
		ToastBackground = Color3.fromRGB(248, 234, 236),
		ToastText = Color3.fromRGB(20, 10, 12),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(250, 228, 230),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(34, 16, 20), Color3.fromRGB(6, 3, 4)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(61, 28, 35), Color3.fromRGB(32, 15, 19)),
		PickerBorder = Color3.fromRGB(240, 56, 72),
	},

	["Vivid"] = {
		Name = "Vivid",
		Accent = Color3.fromRGB(112, 96, 236),
		AccentText = Color3.fromRGB(12, 8, 40),
		AcrylicMain = Color3.fromRGB(24, 17, 64),
		AcrylicBorder = Color3.fromRGB(52, 36, 118),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(52, 36, 118)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(24, 17, 64)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 5, 28)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(112, 96, 236),
		Tab = Color3.fromRGB(226, 222, 255),
		Element = Color3.fromRGB(40, 30, 98),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(112, 96, 236),
		InElementBorder = Color3.fromRGB(112, 96, 236),
		ToggleSlider = Color3.fromRGB(104, 98, 158),
		ToggleToggled = Color3.fromRGB(112, 96, 236),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(226, 222, 255),
		DropdownFrame = Color3.fromRGB(226, 222, 255),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(58, 44, 132), Color3.fromRGB(38, 28, 92)),
		DropdownBorder = Color3.fromRGB(112, 96, 236),
		DropdownOption = Color3.fromRGB(226, 222, 255),
		Keybind = Color3.fromRGB(226, 222, 255),
		Input = Color3.fromRGB(226, 222, 255),
		InputFocused = Color3.fromRGB(50, 38, 114),
		InputIndicator = Color3.fromRGB(112, 96, 236),
		Dialog = ColorSequence.new(Color3.fromRGB(30, 21, 80), Color3.fromRGB(10, 7, 34)),
		DialogHolder = Color3.fromRGB(50, 38, 114),
		DialogHolderLine = Color3.fromRGB(112, 96, 236),
		DialogButton = Color3.fromRGB(226, 222, 255),
		DialogButtonBorder = Color3.fromRGB(112, 96, 236),
		DialogBorder = Color3.fromRGB(112, 96, 236),
		DialogInput = Color3.fromRGB(226, 222, 255),
		DialogInputLine = Color3.fromRGB(112, 96, 236),
		Text = Color3.fromRGB(236, 233, 255),
		TextSecondary = Color3.fromRGB(186, 180, 232),
		SubText = Color3.fromRGB(136, 129, 190),
		Hover = Color3.fromRGB(236, 233, 255),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(236, 233, 255),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(40, 30, 98),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(112, 96, 236),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(73, 59, 178),
		FillButtonText = Color3.fromRGB(245, 243, 255),
		ToastBackground = Color3.fromRGB(236, 233, 255),
		ToastText = Color3.fromRGB(12, 8, 40),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(226, 222, 255),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(30, 21, 80), Color3.fromRGB(10, 7, 34)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(58, 44, 132), Color3.fromRGB(38, 28, 92)),
		PickerBorder = Color3.fromRGB(112, 96, 236),
	},

	["Uranus"] = {
		Name = "Uranus",
		Accent = Color3.fromRGB(116, 179, 186),
		AccentText = Color3.fromRGB(9, 31, 35),
		AcrylicMain = Color3.fromRGB(14, 38, 42),
		AcrylicBorder = Color3.fromRGB(44, 101, 110),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 72, 79)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14, 38, 42)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 24, 27)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(116, 179, 186),
		Tab = Color3.fromRGB(222, 240, 242),
		Element = Color3.fromRGB(22, 56, 62),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(116, 179, 186),
		InElementBorder = Color3.fromRGB(116, 179, 186),
		ToggleSlider = Color3.fromRGB(91, 138, 145),
		ToggleToggled = Color3.fromRGB(116, 179, 186),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(222, 240, 242),
		DropdownFrame = Color3.fromRGB(222, 240, 242),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(36, 86, 93), Color3.fromRGB(24, 60, 66)),
		DropdownBorder = Color3.fromRGB(116, 179, 186),
		DropdownOption = Color3.fromRGB(222, 240, 242),
		Keybind = Color3.fromRGB(222, 240, 242),
		Input = Color3.fromRGB(222, 240, 242),
		InputFocused = Color3.fromRGB(30, 72, 79),
		InputIndicator = Color3.fromRGB(116, 179, 186),
		Dialog = ColorSequence.new(Color3.fromRGB(16, 44, 49), Color3.fromRGB(7, 22, 25)),
		DialogHolder = Color3.fromRGB(30, 72, 79),
		DialogHolderLine = Color3.fromRGB(116, 179, 186),
		DialogButton = Color3.fromRGB(222, 240, 242),
		DialogButtonBorder = Color3.fromRGB(116, 179, 186),
		DialogBorder = Color3.fromRGB(116, 179, 186),
		DialogInput = Color3.fromRGB(222, 240, 242),
		DialogInputLine = Color3.fromRGB(116, 179, 186),
		Text = Color3.fromRGB(230, 244, 245),
		TextSecondary = Color3.fromRGB(170, 208, 212),
		SubText = Color3.fromRGB(120, 164, 170),
		Hover = Color3.fromRGB(230, 244, 245),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(230, 244, 245),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(22, 56, 62),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(116, 179, 186),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(116, 179, 186),
		FillButtonText = Color3.fromRGB(9, 31, 35),
		ToastBackground = Color3.fromRGB(230, 244, 245),
		ToastText = Color3.fromRGB(9, 31, 35),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(222, 240, 242),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(16, 44, 49), Color3.fromRGB(7, 22, 25)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(36, 86, 93), Color3.fromRGB(24, 60, 66)),
		PickerBorder = Color3.fromRGB(116, 179, 186),
	},

	["Cells"] = {
		Name = "Cells",
		Accent = Color3.fromRGB(176, 62, 60),
		AccentText = Color3.fromRGB(250, 244, 242),
		AcrylicMain = Color3.fromRGB(41, 5, 5),
		AcrylicBorder = Color3.fromRGB(116, 107, 103),
		AcrylicGradient = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(76, 10, 9)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(41, 5, 5)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(22, 3, 3)),
		}),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(176, 62, 60),
		Tab = Color3.fromRGB(232, 232, 230),
		Element = Color3.fromRGB(64, 36, 34),
		ElementTransparency = 0.35,
		ElementBorder = Color3.fromRGB(176, 62, 60),
		InElementBorder = Color3.fromRGB(176, 62, 60),
		ToggleSlider = Color3.fromRGB(155, 151, 147),
		ToggleToggled = Color3.fromRGB(162, 28, 26),
		ToggleSliderTransparency = 0.72,
		SliderRail = Color3.fromRGB(232, 232, 230),
		DropdownFrame = Color3.fromRGB(232, 232, 230),
		DropdownHolder = ColorSequence.new(Color3.fromRGB(71, 46, 44), Color3.fromRGB(25, 3, 3)),
		DropdownBorder = Color3.fromRGB(176, 62, 60),
		DropdownOption = Color3.fromRGB(232, 232, 230),
		Keybind = Color3.fromRGB(232, 232, 230),
		Input = Color3.fromRGB(232, 232, 230),
		InputFocused = Color3.fromRGB(78, 56, 54),
		InputIndicator = Color3.fromRGB(176, 62, 60),
		Dialog = ColorSequence.new(Color3.fromRGB(60, 8, 7), Color3.fromRGB(16, 2, 2)),
		DialogHolder = Color3.fromRGB(78, 56, 54),
		DialogHolderLine = Color3.fromRGB(176, 62, 60),
		DialogButton = Color3.fromRGB(232, 232, 230),
		DialogButtonBorder = Color3.fromRGB(176, 62, 60),
		DialogBorder = Color3.fromRGB(176, 62, 60),
		DialogInput = Color3.fromRGB(232, 232, 230),
		DialogInputLine = Color3.fromRGB(176, 62, 60),
		Text = Color3.fromRGB(232, 232, 230),
		TextSecondary = Color3.fromRGB(180, 177, 174),
		SubText = Color3.fromRGB(136, 129, 125),
		Hover = Color3.fromRGB(232, 232, 230),
		HoverTransparency = 0.93,
		HoverChange = 0.04,
		Pressed = Color3.fromRGB(232, 232, 230),
		PressedTransparency = 0.88,
		Locked = Color3.fromRGB(64, 36, 34),
		LockedTransparency = 0.55,
		Focused = Color3.fromRGB(176, 62, 60),
		FocusedTransparency = 0.15,
		Danger = Color3.fromRGB(239, 68, 68),
		Warning = Color3.fromRGB(245, 158, 11),
		Success = Color3.fromRGB(34, 197, 94),
		Info = Color3.fromRGB(67, 150, 250),
		FillButton = Color3.fromRGB(176, 62, 60),
		FillButtonText = Color3.fromRGB(250, 244, 242),
		ToastBackground = Color3.fromRGB(232, 232, 230),
		ToastText = Color3.fromRGB(41, 5, 5),
		Overlay = Color3.fromRGB(0, 0, 0),
		OverlayTransparency = 0.46,
		Shadow = Color3.fromRGB(0, 0, 0),
		ScrollBar = Color3.fromRGB(232, 232, 230),
		ScrollBarTransparency = 0.88,
		PickerDialog = ColorSequence.new(Color3.fromRGB(60, 8, 7), Color3.fromRGB(16, 2, 2)),
		PickerPanel = ColorSequence.new(Color3.fromRGB(71, 46, 44), Color3.fromRGB(25, 3, 3)),
		PickerBorder = Color3.fromRGB(176, 62, 60),
	},

	Aliases = {
		Mint = "Uranus",
	},
}

Themes["Mint"] = Themes["Uranus"]

local Elements

local Library = {
	Version = "2.3.0",
	ThemeMode = "Normal",

	Config = {
		AnimationSpeed = 1,
		ReducedMotion = false,
		PageTransition = true,
		ResizeMode = "Outline",
		CallbackErrors = true,
		Intro = true,
		IntroTimeout = 20,
		Marquee = true,
	},

	IntroActive = false,
	LockInside = false,
	OpenFrames = {},
	HoveredRows = {},
	Options = {},
	Themes = Themes.Names,

	Window = nil,
	WindowFrame = nil,
	Unloaded = false,

	Theme = "Light",
	DialogOpen = false,
	DialogHosts = {},
	UseAcrylic = false,
	Acrylic = false,
	Transparency = false,
	ColorfulIcons = false,
	IconHue = 0,
	IconStyle = "Plain",
	PanelDepth = 1,
	HoverStyle = "Full",
	Layout = "Fluent",
	NavPosition = "Top",
	NavLabelMode = "Hover",
	NotificationPosition = "Bottom Right",
	Shadows = setmetatable({}, { __mode = "k" }),
	PanelAlpha = 1,
	PanelFills = setmetatable({}, { __mode = "k" }),
	MinimizeKeybind = nil,
	MinimizeKey = Enum.KeyCode.LeftControl,
	UnloadCallbacks = {},
	IconDefaults = {},
	IconPalette = {
		Color3.fromRGB(10, 132, 255),
		Color3.fromRGB(191, 90, 242),
		Color3.fromRGB(255, 159, 10),
		Color3.fromRGB(48, 209, 88),
		Color3.fromRGB(255, 69, 58),
		Color3.fromRGB(100, 210, 255),
		Color3.fromRGB(255, 55, 95),
		Color3.fromRGB(255, 214, 10),
		Color3.fromRGB(94, 92, 230),
	},
	PanelBackings = setmetatable({}, { __mode = "k" }),
	PanelLayers = setmetatable({}, { __mode = "k" }),
}

local Signal
do
	local Connection = {}
	Connection.__index = Connection

	function Connection.new(Signal, Handler)
		return setmetatable({
			Signal = Signal,
			Connected = true,
			Handler = Handler,
			Next = nil,
		}, Connection)
	end

	function Connection:Disconnect()
		if not self.Connected then
			return
		end
		self.Connected = false

		local Signal = self.Signal
		local Previous = nil
		local Node = Signal.Head
		while Node do
			if Node == self then
				if Previous then
					Previous.Next = Node.Next
				else
					Signal.Head = Node.Next
				end
				if Signal.Tail == Node then
					Signal.Tail = Previous
				end
				break
			end
			Previous = Node
			Node = Node.Next
		end
	end

	Signal = {}
	Signal.__index = Signal

	function Signal.new()
		return setmetatable({
			Head = nil,
			Tail = nil,
			Threads = {},
		}, Signal)
	end

	function Signal:Fire(...)
		local Last = self.Tail
		local Node = self.Head
		while Node do
			local Following = Node.Next
			if Node.Connected then
				Node.Handler(...)
			end
			if Node == Last then
				break
			end
			Node = Following
		end

		local Threads = self.Threads
		if #Threads > 0 then
			self.Threads = {}
			for _, Thread in Threads do
				task.spawn(Thread, ...)
			end
		end
	end

	function Signal:Connect(Handler)
		local Node = Connection.new(self, Handler)
		if self.Tail then
			self.Tail.Next = Node
		else
			self.Head = Node
		end
		self.Tail = Node
		return Node
	end

	function Signal:Wait()
		table.insert(self.Threads, coroutine.running())
		return coroutine.yield()
	end

	function Signal:DisconnectAll()
		local Node = self.Head
		while Node do
			Node.Connected = false
			Node = Node.Next
		end
		self.Head = nil
		self.Tail = nil
	end
end

export type MotorState = {
	Complete: boolean,
	Value: number,
	Velocity: number?,
}

export type MotorGoal = {
	TargetValue: number,
	Step: (self: MotorGoal, State: MotorState, DeltaTime: number) -> MotorState,
}

export type SpringOptions = {
	Frequency: number?,
	DampingRatio: number?,
}

export type TweenOptions = {
	Duration: number?,
	EasingStyle: Enum.EasingStyle?,
	EasingDirection: Enum.EasingDirection?,
}

export type OscillateOptions = {
	Amplitude: number?,
	Frequency: number?,
	Duration: number?,
}

local Flipper
do
	local MaxDeltaTime = 1 / 20
	local VelocityThreshold = 0.001
	local PositionThreshold = 0.001
	local Epsilon = 0.0001
	local TwoPi = math.pi * 2

	local Linear = {}
	Linear.__index = Linear

	function Linear.new(TargetValue: number, Options: { Velocity: number? }?): MotorGoal
		assert(TargetValue, "Missing argument #1: TargetValue")

		return setmetatable({
			TargetValue = TargetValue,
			Velocity = Options and Options.Velocity or 1,
		}, Linear) :: any
	end

	function Linear:Step(State: MotorState, DeltaTime: number): MotorState
		local Position = State.Value
		local Goal = self.TargetValue
		local Distance = DeltaTime * self.Velocity
		local Remaining = math.abs(Goal - Position)

		if Distance >= Remaining then
			State.Value = Goal
			State.Velocity = 0
			State.Complete = true
		else
			State.Value = Position + Distance * (Goal > Position and 1 or -1)
			State.Velocity = self.Velocity
			State.Complete = false
		end

		return State
	end

	local Instant = {}
	Instant.__index = Instant

	function Instant.new(TargetValue: number): MotorGoal
		return setmetatable({
			TargetValue = TargetValue,
		}, Instant) :: any
	end

	function Instant:Step(State: MotorState): MotorState
		State.Value = self.TargetValue
		State.Velocity = 0
		State.Complete = true
		return State
	end

	local Spring = {}
	Spring.__index = Spring

	function Spring.new(TargetValue: number, Options: SpringOptions?): MotorGoal
		assert(TargetValue, "Missing argument #1: TargetValue")

		return setmetatable({
			TargetValue = TargetValue,
			Frequency = Options and Options.Frequency or 4,
			DampingRatio = Options and Options.DampingRatio or 1,
		}, Spring) :: any
	end

	function Spring:Step(State: MotorState, DeltaTime: number): MotorState
		local Damping: number = self.DampingRatio
		local Frequency: number = self.Frequency * TwoPi
		local Goal: number = self.TargetValue
		local Position0: number = State.Value
		local Velocity0: number = State.Velocity or 0

		local Offset = Position0 - Goal
		local Decay = math.exp(-Damping * Frequency * DeltaTime)
		local Position1: number, Velocity1: number

		if Damping == 1 then
			local Scaled = Frequency * DeltaTime
			Position1 = (Offset * (1 + Scaled) + Velocity0 * DeltaTime) * Decay + Goal
			Velocity1 = (Velocity0 * (1 - Scaled) - Offset * (Frequency * Scaled)) * Decay
		elseif Damping < 1 then
			local Root = math.sqrt(1 - Damping * Damping)
			local Phase = Frequency * Root * DeltaTime
			local Cosine = math.cos(Phase)
			local Sine = math.sin(Phase)

			local ZTerm
			if Root > Epsilon then
				ZTerm = Sine / Root
			else
				local A = DeltaTime * Frequency
				local RootSquared = Root * Root
				ZTerm = A + ((A * A) * RootSquared * RootSquared / 20 - RootSquared) * (A * A * A) / 6
			end

			local YTerm
			if Frequency * Root > Epsilon then
				YTerm = Sine / (Frequency * Root)
			else
				local B = Frequency * Root
				local BSquared = B * B
				YTerm = DeltaTime + ((DeltaTime * DeltaTime) * BSquared * BSquared / 20 - BSquared) * (DeltaTime * DeltaTime * DeltaTime) / 6
			end

			Position1 = (Offset * (Cosine + Damping * ZTerm) + Velocity0 * YTerm) * Decay + Goal
			Velocity1 = (Velocity0 * (Cosine - ZTerm * Damping) - Offset * (ZTerm * Frequency)) * Decay
		else
			local Root = math.sqrt(Damping * Damping - 1)
			local Root1 = -Frequency * (Damping - Root)
			local Root2 = -Frequency * (Damping + Root)

			local Coefficient2 = (Velocity0 - Offset * Root1) / (2 * Frequency * Root)
			local Coefficient1 = Offset - Coefficient2

			local Exponent1 = Coefficient1 * math.exp(Root1 * DeltaTime)
			local Exponent2 = Coefficient2 * math.exp(Root2 * DeltaTime)

			Position1 = Exponent1 + Exponent2 + Goal
			Velocity1 = Exponent1 * Root1 + Exponent2 * Root2
		end

		local Complete = math.abs(Velocity1) < VelocityThreshold and math.abs(Position1 - Goal) < PositionThreshold

		State.Complete = Complete
		State.Value = Complete and Goal or Position1
		State.Velocity = Complete and 0 or Velocity1

		return State
	end

	local Tween = {}
	Tween.__index = Tween

	function Tween.new(TargetValue: number, Options: TweenOptions?): MotorGoal
		assert(TargetValue, "Missing argument #1: TargetValue")

		return setmetatable({
			TargetValue = TargetValue,
			Duration = math.max(if Options and Options.Duration then Options.Duration else 0.25, Epsilon),
			EasingStyle = if Options and Options.EasingStyle then Options.EasingStyle else Enum.EasingStyle.Quad,
			EasingDirection = if Options and Options.EasingDirection
				then Options.EasingDirection
				else Enum.EasingDirection.Out,
			Elapsed = 0,
			Origin = nil,
		}, Tween) :: any
	end

	function Tween:Step(State: MotorState, DeltaTime: number): MotorState
		local Origin: number? = self.Origin
		if Origin == nil then
			Origin = State.Value
			self.Origin = Origin
		end

		self.Elapsed += DeltaTime
		local Alpha = math.min(self.Elapsed / self.Duration, 1)
		local Eased = TweenService:GetValue(Alpha, self.EasingStyle, self.EasingDirection)
		local Value = (Origin :: number) + (self.TargetValue - (Origin :: number)) * Eased

		if Alpha >= 1 then
			State.Value = self.TargetValue
			State.Velocity = 0
			State.Complete = true
		else
			State.Velocity = (Value - State.Value) / math.max(DeltaTime, Epsilon)
			State.Value = Value
			State.Complete = false
		end

		return State
	end

	local Delay = {}
	Delay.__index = Delay

	function Delay.new(Seconds: number, Goal: MotorGoal): MotorGoal
		assert(Goal, "Missing argument #2: Goal")

		return setmetatable({
			TargetValue = Goal.TargetValue,
			Seconds = math.max(Seconds, 0),
			Goal = Goal,
			Elapsed = 0,
		}, Delay) :: any
	end

	function Delay:Step(State: MotorState, DeltaTime: number): MotorState
		if self.Elapsed < self.Seconds then
			self.Elapsed += DeltaTime
			State.Complete = false
			return State
		end

		return self.Goal:Step(State, DeltaTime)
	end

	local Sequence = {}
	Sequence.__index = Sequence

	function Sequence.new(Goals: { MotorGoal }): MotorGoal
		assert(type(Goals) == "table" and #Goals > 0, "Missing argument #1: Goals")

		return setmetatable({
			TargetValue = Goals[#Goals].TargetValue,
			Goals = Goals,
			Index = 1,
		}, Sequence) :: any
	end

	function Sequence:Step(State: MotorState, DeltaTime: number): MotorState
		self.Goals[self.Index]:Step(State, DeltaTime)

		if State.Complete and self.Index < #self.Goals then
			self.Index += 1
			State.Complete = false
		end

		return State
	end

	local Oscillate = {}
	Oscillate.__index = Oscillate

	function Oscillate.new(Center: number, Options: OscillateOptions?): MotorGoal
		assert(Center, "Missing argument #1: Center")

		return setmetatable({
			TargetValue = Center,
			Amplitude = if Options and Options.Amplitude then Options.Amplitude else 1,
			Frequency = if Options and Options.Frequency then Options.Frequency else 1,
			Duration = if Options then Options.Duration else nil,
			Elapsed = 0,
		}, Oscillate) :: any
	end

	function Oscillate:Step(State: MotorState, DeltaTime: number): MotorState
		self.Elapsed += DeltaTime

		if self.Duration and self.Elapsed >= self.Duration then
			State.Value = self.TargetValue
			State.Velocity = 0
			State.Complete = true
			return State
		end

		local Phase = self.Elapsed * self.Frequency * TwoPi
		State.Value = self.TargetValue + math.sin(Phase) * self.Amplitude
		State.Velocity = math.cos(Phase) * self.Amplitude * self.Frequency * TwoPi
		State.Complete = false

		return State
	end

	local Queue: { any } = {}
	local Driver: RBXScriptConnection? = nil

	local function Tick(DeltaTime: number)
		DeltaTime = math.min(DeltaTime, MaxDeltaTime)

		local Count = #Queue
		local Write = 0

		for Read = 1, Count do
			local Motor = Queue[Read]
			if Motor.Running then
				local Success, Failure = pcall(Motor.Step, Motor, DeltaTime)
				if not Success then
					Motor.Running = false
					Library:Alert("Motor step failed: " .. tostring(Failure), "Error")
				end
			end

			if Motor.Running then
				Write += 1
				Queue[Write] = Motor
			else
				Motor.Queued = false
			end
		end

		local Total = #Queue
		for Read = Count + 1, Total do
			local Motor = Queue[Read]
			if Motor.Running then
				Write += 1
				Queue[Write] = Motor
			else
				Motor.Queued = false
			end
		end

		for Index = Total, Write + 1, -1 do
			Queue[Index] = nil
		end

		if Write == 0 and Driver then
			Driver:Disconnect()
			Driver = nil
		end
	end

	local BaseMotor = {}
	BaseMotor.__index = BaseMotor
	BaseMotor.MotorType = "Base"

	function BaseMotor.new()
		return setmetatable({
			StepSignal = Signal.new(),
			StartSignal = Signal.new(),
			CompleteSignal = Signal.new(),
			Running = false,
			Queued = false,
		}, BaseMotor)
	end

	function BaseMotor:OnStep(Handler: (Value: any) -> ())
		return self.StepSignal:Connect(Handler)
	end

	function BaseMotor:OnStart(Handler: () -> ())
		return self.StartSignal:Connect(Handler)
	end

	function BaseMotor:OnComplete(Handler: () -> ())
		return self.CompleteSignal:Connect(Handler)
	end

	function BaseMotor:Start()
		if self.Running then
			return
		end
		self.Running = true

		if not self.Queued then
			self.Queued = true
			table.insert(Queue, self)
		end

		if not Driver then
			Driver = RenderStepped:Connect(Tick)
		end
	end

	function BaseMotor:Stop()
		self.Running = false
	end

	function BaseMotor:IsRunning(): boolean
		return self.Running
	end

	function BaseMotor:Destroy()
		self.Running = false
		self.StepSignal:DisconnectAll()
		self.StartSignal:DisconnectAll()
		self.CompleteSignal:DisconnectAll()
	end

	function BaseMotor.Step() end
	function BaseMotor.GetValue() end
	function BaseMotor.SetGoal() end

	function BaseMotor:__tostring()
		return "Motor"
	end

	local function IsMotor(Value: any): (boolean, string?)
		if type(Value) ~= "table" then
			return false
		end

		local Class = getmetatable(Value)
		if type(Class) == "table" and rawget(Class, "MotorType") and Class.MotorType ~= "Base" then
			return true, Class.MotorType
		end

		return false
	end

	local SingleMotor = setmetatable({}, BaseMotor)
	SingleMotor.__index = SingleMotor
	SingleMotor.MotorType = "Single"

	function SingleMotor.new(InitialValue: number, UseImplicitConnections: boolean?)
		assert(InitialValue, "Missing argument #1: InitialValue")
		assert(typeof(InitialValue) == "number", "InitialValue must be a number!")

		local self = setmetatable(BaseMotor.new(), SingleMotor)

		self.UseImplicitConnections = UseImplicitConnections ~= false
		self.Goal = nil
		self.State = {
			Complete = true,
			Value = InitialValue,
			Velocity = 0,
		}

		return self
	end

	function SingleMotor:Step(DeltaTime: number): boolean
		local State = self.State
		if State.Complete then
			return true
		end

		self.Goal:Step(State, DeltaTime)

		if self.StepSignal.Head then
			self.StepSignal:Fire(State.Value)
		end

		if State.Complete then
			if self.UseImplicitConnections then
				self:Stop()
			end

			self.CompleteSignal:Fire()
		end

		return State.Complete
	end

	function SingleMotor:GetValue(): number
		return self.State.Value
	end

	function SingleMotor:SetGoal(Goal: MotorGoal)
		self.State.Complete = false
		self.Goal = Goal

		self.StartSignal:Fire()

		if self.UseImplicitConnections then
			self:Start()
		end
	end

	function SingleMotor:__tostring()
		return "Motor(Single)"
	end

	function BaseMotor:Wait()
		if self.Running then
			self.CompleteSignal:Wait()
		end
	end

	function SingleMotor:Tween(Target: number, Options: TweenOptions?)
		self:SetGoal(Tween.new(Target, Options))
		return self
	end

	function SingleMotor:Spring(Target: number, Options: SpringOptions?)
		self:SetGoal(Spring.new(Target, Options))
		return self
	end

	function SingleMotor:Snap(Target: number)
		self:SetGoal(Instant.new(Target))
		return self
	end

	function SingleMotor:Bind(Target: Instance, Property: string)
		return self:OnStep(function(Value: number)
			(Target :: any)[Property] = Value
		end)
	end

	local GroupMotor = setmetatable({}, BaseMotor)
	GroupMotor.__index = GroupMotor
	GroupMotor.MotorType = "Group"

	local function ToMotor(Value: any)
		if IsMotor(Value) then
			return Value
		end

		local ValueType = typeof(Value)

		if ValueType == "number" then
			return SingleMotor.new(Value, false)
		elseif ValueType == "table" then
			return GroupMotor.new(Value, false)
		end

		Library:Alert(string.format("Unable to convert %q to motor; type %s is unsupported", tostring(Value), ValueType), "Error")
		return SingleMotor.new(0, false)
	end

	function GroupMotor.new(InitialValues: { [any]: any }, UseImplicitConnections: boolean?)
		assert(InitialValues, "Missing argument #1: InitialValues")
		assert(typeof(InitialValues) == "table", "InitialValues must be a table!")
		assert(
			not InitialValues.Step,
			'InitialValues contains disallowed property "Step". Did you mean to put a table of values here?'
		)

		local self = setmetatable(BaseMotor.new(), GroupMotor)

		self.UseImplicitConnections = UseImplicitConnections ~= false
		self.Complete = true
		self.Motors = {}

		for Key, Value in InitialValues do
			self.Motors[Key] = ToMotor(Value)
		end

		return self
	end

	function GroupMotor:Step(DeltaTime: number): boolean
		if self.Complete then
			return true
		end

		local AllMotorsComplete = true

		for _, Motor in self.Motors do
			if not Motor:Step(DeltaTime) then
				AllMotorsComplete = false
			end
		end

		if self.StepSignal.Head then
			self.StepSignal:Fire(self:GetValue())
		end

		if AllMotorsComplete then
			if self.UseImplicitConnections then
				self:Stop()
			end

			self.Complete = true
			self.CompleteSignal:Fire()
		end

		return AllMotorsComplete
	end

	function GroupMotor:SetGoal(Goals: { [any]: any })
		assert(not Goals.Step, 'Goals contains disallowed property "Step". Did you mean to put a table of goals here?')

		self.Complete = false
		self.StartSignal:Fire()

		for Key, Goal in Goals do
			local Motor = assert(self.Motors[Key], string.format("Unknown motor for key %s", tostring(Key)))
			Motor:SetGoal(Goal)
		end

		if self.UseImplicitConnections then
			self:Start()
		end
	end

	function GroupMotor:GetValue(): { [any]: any }
		local Values = {}

		for Key, Motor in self.Motors do
			Values[Key] = Motor:GetValue()
		end

		return Values
	end

	function GroupMotor:Destroy()
		BaseMotor.Destroy(self)

		for _, Motor in self.Motors do
			Motor:Destroy()
		end
	end

	function GroupMotor:__tostring()
		return "Motor(Group)"
	end

	local function Bind(Target: Instance, Property: string, Initial: number?)
		local Motor = SingleMotor.new(Initial or (Target :: any)[Property])
		Motor:Bind(Target, Property)
		return Motor
	end

	Flipper = table.freeze({
		SingleMotor = SingleMotor,
		GroupMotor = GroupMotor,

		Instant = Instant,
		Linear = Linear,
		Spring = Spring,
		Tween = Tween,
		Delay = Delay,
		Sequence = Sequence,
		Oscillate = Oscillate,

		Bind = Bind,
		IsMotor = IsMotor,
	})
end

export type ThemeMode = "Normal" | "Light" | "Dark"
export type ResolvedMode = "Light" | "Dark"
export type ThemeData = { [string]: any }

type KeySet = { [string]: boolean }
type ModeTable<Value> = { Light: Value, Dark: Value }
type SaturationRule = { Scale: number, Maximum: number }
type LightnessRule = { Base: number, Slope: number }
type ContrastRequirement = { Back: string, Minimum: number }
type CacheEntry = { Source: ThemeData, Result: ThemeData }
type ThemeCache = { [string]: { [string]: CacheEntry } }
type ColorTransform = (Color3) -> Color3

type ResolverTuning = {
	NeutralSaturationThreshold: number,
	NativeLuminanceSplit: number,
	AccentMinimumContrast: number,
	StatusMinimumContrast: number,
	TextMinimumContrast: number,
	AccentMatchDistance: number,
	MainGradientSpreadLimit: number,
	GradientSpreadLimit: number,
	GradientSpreadFactor: number,
	FlipVibranceGain: number,
	FlipDesaturation: number,
	FlipMinLightness: number,
	FlipMaxLightness: number,
	InkMaxSaturation: number,
	InkSaturationScale: number,
	InkMinLightness: number,
	InkMaxLightness: number,
}

type ResolverKeySets = {
	Preserved: KeySet,
	Status: KeySet,
	Surface: KeySet,
	Accent: KeySet,
	Ink: KeySet,
	ContrastPairs: { [string]: string },
}

type ResolverRules = {
	SurfaceSaturation: ModeTable<SaturationRule>,
	SurfaceLightness: ModeTable<LightnessRule>,
	NeutralAccentLightness: ModeTable<number>,
	SurfaceOffsets: ModeTable<{ [string]: number }>,
	ModeTransparency: ModeTable<{ [string]: number }>,
	ReadableText: { [string]: ContrastRequirement },
}

local ColorMath = {
	AchromaticThreshold = 0.00001,
	DarkBackgroundLuminance = 0.18,
	ContrastSearchSteps = 40,
	ContrastSearchStep = 0.025,
}

function ColorMath.ToHsl(Color: Color3): (number, number, number)
	local Red, Green, Blue = Color.R, Color.G, Color.B
	local Brightest = math.max(Red, Green, Blue)
	local Darkest = math.min(Red, Green, Blue)
	local Lightness = (Brightest + Darkest) / 2
	local ChannelRange = Brightest - Darkest

	if ChannelRange < ColorMath.AchromaticThreshold then
		return 0, 0, Lightness
	end

	local Saturation = math.clamp(ChannelRange / (1 - math.abs(2 * Lightness - 1)), 0, 1)
	local HueSextant: number
	if Brightest == Red then
		HueSextant = ((Green - Blue) / ChannelRange) % 6
	elseif Brightest == Green then
		HueSextant = (Blue - Red) / ChannelRange + 2
	else
		HueSextant = (Red - Green) / ChannelRange + 4
	end

	return HueSextant / 6, Saturation, Lightness
end

function ColorMath.FromHsl(Hue: number, Saturation: number, Lightness: number): Color3
	local Chroma = (1 - math.abs(2 * Lightness - 1)) * Saturation
	local HueSector = Hue * 6
	local SecondaryChroma = Chroma * (1 - math.abs(HueSector % 2 - 1))
	local SectorIndex = math.floor(HueSector) % 6
	local Red, Green, Blue = 0, 0, 0

	if SectorIndex == 0 then
		Red, Green = Chroma, SecondaryChroma
	elseif SectorIndex == 1 then
		Red, Green = SecondaryChroma, Chroma
	elseif SectorIndex == 2 then
		Green, Blue = Chroma, SecondaryChroma
	elseif SectorIndex == 3 then
		Green, Blue = SecondaryChroma, Chroma
	elseif SectorIndex == 4 then
		Red, Blue = SecondaryChroma, Chroma
	else
		Red, Blue = Chroma, SecondaryChroma
	end

	local MatchOffset = Lightness - Chroma / 2
	return Color3.new(
		math.clamp(Red + MatchOffset, 0, 1),
		math.clamp(Green + MatchOffset, 0, 1),
		math.clamp(Blue + MatchOffset, 0, 1)
	)
end

function ColorMath.PerceivedLuminance(Color: Color3): number
	return 0.2126 * Color.R + 0.7152 * Color.G + 0.0722 * Color.B
end

function ColorMath.ChannelDistance(ColorA: Color3, ColorB: Color3): number
	local RedDistance = math.abs(ColorA.R - ColorB.R)
	local GreenDistance = math.abs(ColorA.G - ColorB.G)
	local BlueDistance = math.abs(ColorA.B - ColorB.B)
	return RedDistance + GreenDistance + BlueDistance
end

function ColorMath.LinearizeChannel(Channel: number): number
	if Channel <= 0.04045 then
		return Channel / 12.92
	end
	return ((Channel + 0.055) / 1.055) ^ 2.4
end

function ColorMath.RelativeLuminance(Color: Color3): number
	local Linearize = ColorMath.LinearizeChannel
	return 0.2126 * Linearize(Color.R) + 0.7152 * Linearize(Color.G) + 0.0722 * Linearize(Color.B)
end

function ColorMath.ContrastRatio(ColorA: Color3, ColorB: Color3): number
	local Lighter = ColorMath.RelativeLuminance(ColorA)
	local Darker = ColorMath.RelativeLuminance(ColorB)
	if Lighter < Darker then
		Lighter, Darker = Darker, Lighter
	end
	return (Lighter + 0.05) / (Darker + 0.05)
end

function ColorMath.EnsureContrast(Color: Color3, Background: Color3, MinimumRatio: number): Color3
	if ColorMath.ContrastRatio(Color, Background) >= MinimumRatio then
		return Color
	end

	local Hue, Saturation, Lightness = ColorMath.ToHsl(Color)
	local BackgroundLuminance = ColorMath.RelativeLuminance(Background)
	local BackgroundIsLight = BackgroundLuminance > ColorMath.DarkBackgroundLuminance
	local Direction = if BackgroundIsLight then -1 else 1

	for _ = 1, ColorMath.ContrastSearchSteps do
		Lightness = math.clamp(Lightness + Direction * ColorMath.ContrastSearchStep, 0, 1)
		local Candidate = ColorMath.FromHsl(Hue, Saturation, Lightness)
		if ColorMath.ContrastRatio(Candidate, Background) >= MinimumRatio then
			return Candidate
		end
	end

	return if Direction > 0 then Color3.new(1, 1, 1) else Color3.new(0, 0, 0)
end

table.freeze(ColorMath)

local ThemeResolver = {
	ModeNames = { Normal = "Normal", Light = "Light", Dark = "Dark" } :: { [string]: ThemeMode },
	ModeBlacklist = { Dark = true, Light = true } :: KeySet,
	Cache = { Light = {}, Dark = {} } :: ThemeCache,

	InkDark = Color3.fromRGB(14, 15, 16),
	InkLight = Color3.fromRGB(246, 246, 247),

	Tuning = {
		NeutralSaturationThreshold = 0.15,
		NativeLuminanceSplit = 0.5,
		AccentMinimumContrast = 3,
		StatusMinimumContrast = 3,
		TextMinimumContrast = 4.5,
		AccentMatchDistance = 0.06,
		MainGradientSpreadLimit = 0.06,
		GradientSpreadLimit = 0.05,
		GradientSpreadFactor = 0.6,
		FlipVibranceGain = 1.4,
		FlipDesaturation = 0.4,
		FlipMinLightness = 0.05,
		FlipMaxLightness = 0.96,
		InkMaxSaturation = 0.5,
		InkSaturationScale = 0.7,
		InkMinLightness = 0.06,
		InkMaxLightness = 0.94,
	} :: ResolverTuning,

	KeySets = {
		Preserved = {
			Name = true,
			Danger = true,
			Warning = true,
			Success = true,
			Info = true,
			Overlay = true,
			Shadow = true,
		},

		Status = {
			Danger = true,
			Warning = true,
			Success = true,
			Info = true,
		},

		Surface = {
			AcrylicMain = true,
			AcrylicGradient = true,
			AcrylicBorder = true,
			Dialog = true,
			Element = true,
			DropdownHolder = true,
			InputFocused = true,
			DialogHolder = true,
			PickerDialog = true,
			PickerPanel = true,
			Locked = true,
		},

		Accent = {
			Accent = true,
			ToggleToggled = true,
			FillButton = true,
			InputIndicator = true,
			DialogInputLine = true,
			Focused = true,
		},

		Ink = {
			TitleBarLine = true,
			Tab = true,
			ElementBorder = true,
			InElementBorder = true,
			SliderRail = true,
			DropdownFrame = true,
			DropdownBorder = true,
			DropdownOption = true,
			Keybind = true,
			Input = true,
			DialogHolderLine = true,
			DialogButton = true,
			DialogButtonBorder = true,
			DialogBorder = true,
			DialogInput = true,
			Text = true,
			TextSecondary = true,
			SubText = true,
			Hover = true,
			Pressed = true,
			ScrollBar = true,
			ToastBackground = true,
			PickerBorder = true,
		},

		ContrastPairs = {
			AccentText = "Accent",
			FillButtonText = "FillButton",
			ToastText = "ToastBackground",
		},
	} :: ResolverKeySets,

	Rules = {
		SurfaceSaturation = {
			Light = { Scale = 0.95, Maximum = 0.6 },
			Dark = { Scale = 0.85, Maximum = 0.5 },
		},

		SurfaceLightness = {
			Light = { Base = 0.93, Slope = -0.05 },
			Dark = { Base = 0.075, Slope = 0.04 },
		},

		NeutralAccentLightness = {
			Light = 0.1,
			Dark = 0.85,
		},

		SurfaceOffsets = {
			Light = {
				AcrylicBorder = -0.1,
				Element = 0.025,
				Locked = 0.025,
				DropdownHolder = 0.04,
				InputFocused = 0.04,
				Dialog = 0.03,
				DialogHolder = -0.02,
				PickerDialog = 0.03,
				PickerPanel = -0.03,
			},
			Dark = {
				AcrylicBorder = 0.085,
				Element = 0.03,
				Locked = 0.03,
				DropdownHolder = 0.06,
				InputFocused = 0.06,
				Dialog = 0.02,
				DialogHolder = 0.06,
				PickerDialog = 0.02,
				PickerPanel = 0.05,
			},
		},

		ModeTransparency = {
			Light = {
				HoverTransparency = 0.925,
				PressedTransparency = 0.86,
				ScrollBarTransparency = 0.78,
				LockedTransparency = 0.5,
				FocusedTransparency = 0.18,
			},
			Dark = {
				HoverTransparency = 0.94,
				PressedTransparency = 0.9,
				ScrollBarTransparency = 0.86,
				LockedTransparency = 0.55,
				FocusedTransparency = 0.15,
			},
		},

		ReadableText = {
			Text = { Back = "AcrylicMain", Minimum = 9 },
			TextSecondary = { Back = "AcrylicMain", Minimum = 5.5 },
			SubText = { Back = "AcrylicMain", Minimum = 4 },
		},
	} :: ResolverRules,
}

function ThemeResolver.IsColor(Value: any): boolean
	return typeof(Value) == "Color3"
end

function ThemeResolver.IsSequence(Value: any): boolean
	return typeof(Value) == "ColorSequence"
end

function ThemeResolver.IsExplicitKey(Key: string): boolean
	local KeySets = ThemeResolver.KeySets
	return KeySets.Preserved[Key]
		or KeySets.Surface[Key]
		or KeySets.Accent[Key]
		or KeySets.Ink[Key]
		or KeySets.ContrastPairs[Key] ~= nil
end

function ThemeResolver.DetectNativeMode(Theme: ThemeData): ResolvedMode
	local Luminance = ColorMath.PerceivedLuminance(Theme.AcrylicMain)
	return if Luminance < ThemeResolver.Tuning.NativeLuminanceSplit then "Dark" else "Light"
end

function ThemeResolver.PickReadableInk(Background: Color3): Color3
	local DarkRatio = ColorMath.ContrastRatio(Background, ThemeResolver.InkDark)
	local LightRatio = ColorMath.ContrastRatio(Background, ThemeResolver.InkLight)
	return if DarkRatio >= LightRatio then ThemeResolver.InkDark else ThemeResolver.InkLight
end

function ThemeResolver.FlipLightness(Color: Color3): Color3
	local Tuning = ThemeResolver.Tuning
	local Hue, Saturation, Lightness = ColorMath.ToHsl(Color)

	local Vibrance = math.clamp(Saturation * Tuning.FlipVibranceGain, 0, 1)
	local FlipStrength = 1 - Vibrance * (1 - math.abs(2 * Lightness - 1))
	local MirroredLightness = math.clamp(
		1 - Lightness,
		Tuning.FlipMinLightness,
		Tuning.FlipMaxLightness
	)

	return ColorMath.FromHsl(
		Hue,
		Saturation * (1 - Tuning.FlipDesaturation * FlipStrength),
		Lightness + (MirroredLightness - Lightness) * FlipStrength
	)
end

function ThemeResolver.SurfaceSaturation(Mode: ResolvedMode, Saturation: number): number
	local Rule = ThemeResolver.Rules.SurfaceSaturation[Mode]
	return math.min(Saturation * Rule.Scale, Rule.Maximum)
end

function ThemeResolver.SurfaceLightness(Mode: ResolvedMode, Saturation: number): number
	local Rule = ThemeResolver.Rules.SurfaceLightness[Mode]
	return Rule.Base + Rule.Slope * Saturation
end

function ThemeResolver.DeriveInkColor(Color: Color3, Hue: number, Saturation: number): Color3
	local Tuning = ThemeResolver.Tuning
	local _, _, Lightness = ColorMath.ToHsl(Color)

	return ColorMath.FromHsl(
		Hue,
		math.min(Saturation, Tuning.InkMaxSaturation) * Tuning.InkSaturationScale,
		math.clamp(1 - Lightness, Tuning.InkMinLightness, Tuning.InkMaxLightness)
	)
end

function ThemeResolver.DeriveAccentColor(
	Color: Color3,
	Mode: ResolvedMode,
	Background: Color3
): Color3
	local Hue, Saturation = ColorMath.ToHsl(Color)

	if Saturation < ThemeResolver.Tuning.NeutralSaturationThreshold then
		local NeutralLightness = ThemeResolver.Rules.NeutralAccentLightness[Mode]
		Color = ColorMath.FromHsl(Hue, Saturation, NeutralLightness)
	end

	return ColorMath.EnsureContrast(Color, Background, ThemeResolver.Tuning.AccentMinimumContrast)
end

function ThemeResolver.MapSequence(
	Sequence: ColorSequence,
	Transform: ColorTransform
): ColorSequence
	local Keypoints = {}
	for Index, Keypoint in Sequence.Keypoints do
		Keypoints[Index] = ColorSequenceKeypoint.new(Keypoint.Time, Transform(Keypoint.Value))
	end
	return ColorSequence.new(Keypoints)
end

function ThemeResolver.AverageSequenceLightness(Sequence: ColorSequence): number
	local TotalLightness = 0
	for _, Keypoint in Sequence.Keypoints do
		local _, _, Lightness = ColorMath.ToHsl(Keypoint.Value)
		TotalLightness += Lightness
	end
	return TotalLightness / #Sequence.Keypoints
end

function ThemeResolver.ReshadeSequence(
	Sequence: ColorSequence,
	Mode: ResolvedMode,
	TargetLightness: number,
	CenterLightness: number,
	SpreadLimit: number
): ColorSequence
	local SpreadFactor = ThemeResolver.Tuning.GradientSpreadFactor

	return ThemeResolver.MapSequence(Sequence, function(Color: Color3): Color3
		local Hue, Saturation, Lightness = ColorMath.ToHsl(Color)
		local RawSpread = (Lightness - CenterLightness) * SpreadFactor
		local Spread = math.clamp(RawSpread, -SpreadLimit, SpreadLimit)

		return ColorMath.FromHsl(
			Hue,
			ThemeResolver.SurfaceSaturation(Mode, Saturation),
			math.clamp(TargetLightness + Spread, 0, 1)
		)
	end)
end

function ThemeResolver.DeriveSurfaces(Source: ThemeData, Derived: ThemeData, Mode: ResolvedMode)
	local Tuning = ThemeResolver.Tuning
	local Offsets = ThemeResolver.Rules.SurfaceOffsets[Mode]
	local MainHue, MainSaturation, MainLightness = ColorMath.ToHsl(Source.AcrylicMain)
	local BaseSaturation = ThemeResolver.SurfaceSaturation(Mode, MainSaturation)
	local BaseLightness = ThemeResolver.SurfaceLightness(Mode, MainSaturation)

	Derived.AcrylicMain = ColorMath.FromHsl(MainHue, BaseSaturation, BaseLightness)

	for Key in ThemeResolver.KeySets.Surface do
		local Value = Source[Key]
		if Key == "AcrylicMain" or Value == nil then
			continue
		end

		local TargetLightness = BaseLightness + (Offsets[Key] or 0)

		if ThemeResolver.IsSequence(Value) then
			local IsMainGradient = Key == "AcrylicGradient"
			local CenterLightness = if IsMainGradient
				then MainLightness
				else ThemeResolver.AverageSequenceLightness(Value)
			local SpreadLimit = if IsMainGradient
				then Tuning.MainGradientSpreadLimit
				else Tuning.GradientSpreadLimit

			Derived[Key] = ThemeResolver.ReshadeSequence(
				Value,
				Mode,
				TargetLightness,
				CenterLightness,
				SpreadLimit
			)
		elseif ThemeResolver.IsColor(Value) then
			local ClampedLightness = math.clamp(TargetLightness, 0, 1)
			Derived[Key] = ColorMath.FromHsl(MainHue, BaseSaturation, ClampedLightness)
		end
	end
end

function ThemeResolver.DeriveAccents(Source: ThemeData, Derived: ThemeData, Mode: ResolvedMode)
	for Key in ThemeResolver.KeySets.Accent do
		local Value = Source[Key]
		if ThemeResolver.IsColor(Value) then
			Derived[Key] = ThemeResolver.DeriveAccentColor(Value, Mode, Derived.AcrylicMain)
		end
	end
end

function ThemeResolver.DeriveInks(Source: ThemeData, Derived: ThemeData)
	local MatchDistance = ThemeResolver.Tuning.AccentMatchDistance
	local SurfaceHue, SurfaceSaturation = ColorMath.ToHsl(Source.AcrylicMain)

	for Key in ThemeResolver.KeySets.Ink do
		local Value = Source[Key]
		if not ThemeResolver.IsColor(Value) then
			continue
		end

		if ColorMath.ChannelDistance(Value, Source.Accent) < MatchDistance then
			Derived[Key] = Derived.Accent
		else
			Derived[Key] = ThemeResolver.DeriveInkColor(Value, SurfaceHue, SurfaceSaturation)
		end
	end
end

function ThemeResolver.DeriveFlippedColors(Source: ThemeData, Derived: ThemeData)
	for Key, Value in Source do
		if not ThemeResolver.IsExplicitKey(Key) and ThemeResolver.IsColor(Value) then
			Derived[Key] = ThemeResolver.FlipLightness(Value)
		end
	end
end

function ThemeResolver.ApplyModeTransparency(Derived: ThemeData, Mode: ResolvedMode)
	for Key, Value in ThemeResolver.Rules.ModeTransparency[Mode] do
		Derived[Key] = Value
	end
end

function ThemeResolver.EnforceStatusContrast(Derived: ThemeData)
	local MinimumRatio = ThemeResolver.Tuning.StatusMinimumContrast

	for Key in ThemeResolver.KeySets.Status do
		local Value = Derived[Key]
		if ThemeResolver.IsColor(Value) then
			Derived[Key] = ColorMath.EnsureContrast(Value, Derived.AcrylicMain, MinimumRatio)
		end
	end
end

function ThemeResolver.EnforceReadableText(Derived: ThemeData)
	for Key, Requirement in ThemeResolver.Rules.ReadableText do
		local Value = Derived[Key]
		local Background = Derived[Requirement.Back]

		if ThemeResolver.IsColor(Value) and ThemeResolver.IsColor(Background) then
			Derived[Key] = ColorMath.EnsureContrast(Value, Background, Requirement.Minimum)
		end
	end
end

function ThemeResolver.EnforceContrastPairs(Derived: ThemeData)
	local MinimumRatio = ThemeResolver.Tuning.TextMinimumContrast

	for TextKey, BackgroundKey in ThemeResolver.KeySets.ContrastPairs do
		local Text = Derived[TextKey]
		local Background = Derived[BackgroundKey]
		if not ThemeResolver.IsColor(Background) then
			continue
		end

		local NeedsInk = not ThemeResolver.IsColor(Text)
			or ColorMath.ContrastRatio(Text, Background) < MinimumRatio

		if NeedsInk then
			Derived[TextKey] = ThemeResolver.PickReadableInk(Background)
		end
	end
end

function ThemeResolver.Derive(Source: ThemeData, Mode: ResolvedMode): ThemeData
	local Derived = table.clone(Source)

	ThemeResolver.DeriveSurfaces(Source, Derived, Mode)
	ThemeResolver.DeriveAccents(Source, Derived, Mode)
	ThemeResolver.DeriveInks(Source, Derived)
	ThemeResolver.DeriveFlippedColors(Source, Derived)
	ThemeResolver.ApplyModeTransparency(Derived, Mode)
	ThemeResolver.EnforceStatusContrast(Derived)
	ThemeResolver.EnforceReadableText(Derived)
	ThemeResolver.EnforceContrastPairs(Derived)

	return Derived
end

function ThemeResolver.Resolve(Name: string, Mode: ThemeMode): ThemeData?
	local Source: ThemeData? = Themes[Name]
	if not Source or ThemeResolver.ModeBlacklist[Name] then
		return Source
	end

	local ModeCache = ThemeResolver.Cache[Mode]
	if not ModeCache or ThemeResolver.DetectNativeMode(Source) == Mode then
		return Source
	end

	local CachedEntry = ModeCache[Name]
	if CachedEntry and CachedEntry.Source == Source then
		return CachedEntry.Result
	end

	local Derived = ThemeResolver.Derive(Source, Mode :: ResolvedMode)
	ModeCache[Name] = { Source = Source, Result = Derived }
	return Derived
end

function ThemeResolver.Clear(Name: string?)
	for _, ModeCache in ThemeResolver.Cache do
		if Name then
			ModeCache[Name] = nil
		else
			table.clear(ModeCache)
		end
	end
end

table.freeze(ThemeResolver)

Library.ClearThemeCache = ThemeResolver.Clear
Library.ThemeModeBlacklist = ThemeResolver.ModeBlacklist

type Props = { [string]: any }
type ThemeTag = { [string]: string }
type Registered = { Properties: ThemeTag, Stamp: number? }
type SetValue = (value: number, ignore: boolean?) -> ()

local InstantGoal: any = nil

-- Ui blur write by styear
local UiBlur = (function()
	local AssetService = game:GetService("AssetService")
	local RunService = game:GetService("RunService")
	local TweenService = game:GetService("TweenService")

	type Props = {
		Blur: number,
		Brightness: number,
		Contrast: number,
		Grayscale: number,
		HueRotate: number,
		Invert: number,
		Opacity: number,
		Saturate: number,
		Sepia: number,
		Tint: Color3,
		TintTransparency: number,
		Noise: number,
	}

	type Matrix = { number }
	type Tick = () -> boolean
	type Channel = { number }

	type Work = {
		Width: number,
		Height: number,
		Red: Channel,
		Green: Channel,
		Blue: Channel,
		Alpha: Channel?,
	}

	type Cover = {
		Width: number,
		Height: number,
	}

	local UiBlur = {}

	UiBlur.Settings = {
		SliceBudget = 0.005,
		RasterSize = 288,
		RasterBudget = 0.02,
		FirstSliceBudget = 0.02,
		MaxPixels = 100000,
		SigmaTarget = 1.5,
		PreviewWindow = 0.2,
		PreviewFactor = 1,
		MaxCachedFactors = 6,
		NoiseTileSize = 256,
		NoiseAssetId = 93229664903102 :: number?,
	}

	local Defaults: Props = {
		Blur = 0,
		Brightness = 1,
		Contrast = 1,
		Grayscale = 0,
		HueRotate = 0,
		Invert = 0,
		Opacity = 1,
		Saturate = 1,
		Sepia = 0,
		Tint = Color3.new(1, 1, 1),
		TintTransparency = 1,
		Noise = 0,
	}

	local Ranges: { [string]: { number } } = {
		Blur = { 0, 200 },
		Brightness = { 0, 10 },
		Contrast = { 0, 10 },
		Grayscale = { 0, 1 },
		HueRotate = { -3600, 3600 },
		Invert = { 0, 1 },
		Opacity = { 0, 1 },
		Saturate = { 0, 10 },
		Sepia = { 0, 1 },
		TintTransparency = { 0, 1 },
		Noise = { 0, 1 },
	}

	local PixelProps: { [string]: boolean } = {
		Blur = true,
		Brightness = true,
		Contrast = true,
		Grayscale = true,
		HueRotate = true,
		Invert = true,
		Saturate = true,
		Sepia = true,
	}

	local SpecialProps: { [string]: boolean } = {
		Backdrop = true,
		Enabled = true,
		Parent = true,
	}

	local function Compose(After: Matrix, Before: Matrix): Matrix
		local Result = table.create(12)
		for Row = 0, 2 do
			local Offset = Row * 4
			local A1, A2, A3, A4 = After[Offset + 1], After[Offset + 2], After[Offset + 3], After[Offset + 4]
			for Column = 1, 4 do
				local Value = A1 * Before[Column] + A2 * Before[4 + Column] + A3 * Before[8 + Column]
				if Column == 4 then
					Value += A4
				end
				Result[Offset + Column] = Value
			end
		end
		return Result
	end

	local function BuildMatrix(Values: Props): (Matrix, boolean)
		local Result: Matrix = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0 }
		local IsIdentity = true

		if Values.Brightness ~= 1 then
			local Amount = Values.Brightness
			Result = Compose({ Amount, 0, 0, 0, 0, Amount, 0, 0, 0, 0, Amount, 0 }, Result)
			IsIdentity = false
		end

		if Values.Contrast ~= 1 then
			local Amount = Values.Contrast
			local Offset = 0.5 - 0.5 * Amount
			Result = Compose({ Amount, 0, 0, Offset, 0, Amount, 0, Offset, 0, 0, Amount, Offset }, Result)
			IsIdentity = false
		end

		if Values.Grayscale ~= 0 then
			local Keep = 1 - math.clamp(Values.Grayscale, 0, 1)
			Result = Compose({
				0.2126 + 0.7874 * Keep, 0.7152 - 0.7152 * Keep, 0.0722 - 0.0722 * Keep, 0,
				0.2126 - 0.2126 * Keep, 0.7152 + 0.2848 * Keep, 0.0722 - 0.0722 * Keep, 0,
				0.2126 - 0.2126 * Keep, 0.7152 - 0.7152 * Keep, 0.0722 + 0.9278 * Keep, 0,
			}, Result)
			IsIdentity = false
		end

		if Values.HueRotate ~= 0 then
			local Angle = math.rad(Values.HueRotate)
			local Cos, Sin = math.cos(Angle), math.sin(Angle)
			Result = Compose({
				0.213 + Cos * 0.787 - Sin * 0.213, 0.715 - Cos * 0.715 - Sin * 0.715, 0.072 - Cos * 0.072 + Sin * 0.928, 0,
				0.213 - Cos * 0.213 + Sin * 0.143, 0.715 + Cos * 0.285 + Sin * 0.140, 0.072 - Cos * 0.072 - Sin * 0.283, 0,
				0.213 - Cos * 0.213 - Sin * 0.787, 0.715 - Cos * 0.715 + Sin * 0.715, 0.072 + Cos * 0.928 + Sin * 0.072, 0,
			}, Result)
			IsIdentity = false
		end

		if Values.Invert ~= 0 then
			local Amount = math.clamp(Values.Invert, 0, 1)
			local Scale = 1 - 2 * Amount
			Result = Compose({ Scale, 0, 0, Amount, 0, Scale, 0, Amount, 0, 0, Scale, Amount }, Result)
			IsIdentity = false
		end

		if Values.Saturate ~= 1 then
			local Amount = math.max(Values.Saturate, 0)
			Result = Compose({
				0.213 + 0.787 * Amount, 0.715 - 0.715 * Amount, 0.072 - 0.072 * Amount, 0,
				0.213 - 0.213 * Amount, 0.715 + 0.285 * Amount, 0.072 - 0.072 * Amount, 0,
				0.213 - 0.213 * Amount, 0.715 - 0.715 * Amount, 0.072 + 0.928 * Amount, 0,
			}, Result)
			IsIdentity = false
		end

		if Values.Sepia ~= 0 then
			local Keep = 1 - math.clamp(Values.Sepia, 0, 1)
			Result = Compose({
				0.393 + 0.607 * Keep, 0.769 - 0.769 * Keep, 0.189 - 0.189 * Keep, 0,
				0.349 - 0.349 * Keep, 0.686 + 0.314 * Keep, 0.168 - 0.168 * Keep, 0,
				0.272 - 0.272 * Keep, 0.534 - 0.534 * Keep, 0.131 + 0.869 * Keep, 0,
			}, Result)
			IsIdentity = false
		end

		return Result, IsIdentity
	end

	local function BoxesForGauss(Sigma: number, Passes: number): { number }
		local IdealWidth = math.sqrt((12 * Sigma * Sigma / Passes) + 1)
		local Lower = math.floor(IdealWidth)
		if Lower % 2 == 0 then
			Lower -= 1
		end
		local Upper = Lower + 2
		local IdealCount = (12 * Sigma * Sigma - Passes * Lower * Lower - 4 * Passes * Lower - 3 * Passes) / (-4 * Lower - 4)
		local Count = math.floor(IdealCount + 0.5)
		local Sizes = table.create(Passes)
		for Index = 1, Passes do
			Sizes[Index] = if Index <= Count then Lower else Upper
		end
		return Sizes
	end

	local function BoxBlurHorizontal(
		SourceR: Channel,
		SourceG: Channel,
		SourceB: Channel,
		TargetR: Channel,
		TargetG: Channel,
		TargetB: Channel,
		Width: number,
		Height: number,
		Radius: number,
		CheckTick: Tick
	): boolean
		local Inverse = 1 / (Radius + Radius + 1)
		local Last = Width - 1
		for Y = 0, Height - 1 do
			if Y % 8 == 0 and not CheckTick() then
				return false
			end
			local Row = Y * Width + 1
			local SumR, SumG, SumB = 0, 0, 0
			for Offset = -Radius, Radius do
				local Index = Row + math.clamp(Offset, 0, Last)
				SumR += SourceR[Index]
				SumG += SourceG[Index]
				SumB += SourceB[Index]
			end
			for X = 0, Last do
				local Index = Row + X
				TargetR[Index] = SumR * Inverse
				TargetG[Index] = SumG * Inverse
				TargetB[Index] = SumB * Inverse
				local AddIndex = Row + math.min(X + Radius + 1, Last)
				local SubIndex = Row + math.max(X - Radius, 0)
				SumR += SourceR[AddIndex] - SourceR[SubIndex]
				SumG += SourceG[AddIndex] - SourceG[SubIndex]
				SumB += SourceB[AddIndex] - SourceB[SubIndex]
			end
		end
		return true
	end

	local function BoxBlurVertical(
		SourceR: Channel,
		SourceG: Channel,
		SourceB: Channel,
		TargetR: Channel,
		TargetG: Channel,
		TargetB: Channel,
		Width: number,
		Height: number,
		Radius: number,
		CheckTick: Tick
	): boolean
		local Inverse = 1 / (Radius + Radius + 1)
		local Last = Height - 1
		local SumsR, SumsG, SumsB = table.create(Width, 0), table.create(Width, 0), table.create(Width, 0)
		for Offset = -Radius, Radius do
			local RowStart = math.clamp(Offset, 0, Last) * Width
			for Column = 1, Width do
				local Index = RowStart + Column
				SumsR[Column] += SourceR[Index]
				SumsG[Column] += SourceG[Index]
				SumsB[Column] += SourceB[Index]
			end
		end
		for Y = 0, Last do
			if Y % 8 == 0 and not CheckTick() then
				return false
			end
			local RowStart = Y * Width
			local AddStart = math.min(Y + Radius + 1, Last) * Width
			local SubStart = math.max(Y - Radius, 0) * Width
			for Column = 1, Width do
				local SumR, SumG, SumB = SumsR[Column], SumsG[Column], SumsB[Column]
				local Index = RowStart + Column
				TargetR[Index] = SumR * Inverse
				TargetG[Index] = SumG * Inverse
				TargetB[Index] = SumB * Inverse
				local AddIndex = AddStart + Column
				local SubIndex = SubStart + Column
				SumsR[Column] = SumR + (SourceR[AddIndex] - SourceR[SubIndex])
				SumsG[Column] = SumG + (SourceG[AddIndex] - SourceG[SubIndex])
				SumsB[Column] = SumB + (SourceB[AddIndex] - SourceB[SubIndex])
			end
		end
		return true
	end

	local function GaussianBlur(
		Red: Channel,
		Green: Channel,
		Blue: Channel,
		Width: number,
		Height: number,
		Sigma: number,
		CheckTick: Tick
	): boolean
		local Total = Width * Height
		local ScratchR, ScratchG, ScratchB = table.create(Total, 0), table.create(Total, 0), table.create(Total, 0)
		for _, Size in BoxesForGauss(Sigma, 3) do
			local Radius = (Size - 1) // 2
			if Radius >= 1 then
				if not BoxBlurHorizontal(Red, Green, Blue, ScratchR, ScratchG, ScratchB, Width, Height, Radius, CheckTick) then
					return false
				end
				if not BoxBlurVertical(ScratchR, ScratchG, ScratchB, Red, Green, Blue, Width, Height, Radius, CheckTick) then
					return false
				end
			end
		end
		return true
	end

	local function BlurChannel(Channel: Channel, Width: number, Height: number, Sigma: number, CheckTick: Tick): boolean
		local Scratch = table.create(Width * Height, 0)
		local LastX, LastY = Width - 1, Height - 1
		for _, Size in BoxesForGauss(Sigma, 3) do
			local Radius = (Size - 1) // 2
			if Radius >= 1 then
				local Inverse = 1 / (Radius + Radius + 1)
				for Y = 0, LastY do
					if Y % 8 == 0 and not CheckTick() then
						return false
					end
					local Row = Y * Width + 1
					local Sum = 0
					for Offset = -Radius, Radius do
						Sum += Channel[Row + math.clamp(Offset, 0, LastX)]
					end
					for X = 0, LastX do
						Scratch[Row + X] = Sum * Inverse
						Sum += Channel[Row + math.min(X + Radius + 1, LastX)] - Channel[Row + math.max(X - Radius, 0)]
					end
				end
				local Sums = table.create(Width, 0)
				for Offset = -Radius, Radius do
					local RowStart = math.clamp(Offset, 0, LastY) * Width
					for Column = 1, Width do
						Sums[Column] += Scratch[RowStart + Column]
					end
				end
				for Y = 0, LastY do
					if Y % 8 == 0 and not CheckTick() then
						return false
					end
					local RowStart = Y * Width
					local AddStart = math.min(Y + Radius + 1, LastY) * Width
					local SubStart = math.max(Y - Radius, 0) * Width
					for Column = 1, Width do
						local Sum = Sums[Column]
						Channel[RowStart + Column] = Sum * Inverse
						Sums[Column] = Sum + (Scratch[AddStart + Column] - Scratch[SubStart + Column])
					end
				end
			end
		end
		return true
	end

	local MarkDirty: (any) -> ()

	local Backdrop = {}
	Backdrop.__index = Backdrop

	function Backdrop.new(Area: GuiObject, Image: EditableImage): any
		return setmetatable({
			Area = Area,
			Image = Image,
			SourceWidth = Image.Size.X,
			SourceHeight = Image.Size.Y,
			Elements = {},
			OwnsImage = false,
			Pixels = nil :: buffer?,
			HasAlpha = false,
			WorkCache = {} :: { [number]: Work },
			CacheCount = 0,
			Generation = 0,
		}, Backdrop)
	end

	function Backdrop.FromPixels(Area: GuiObject, Pixels: buffer, Width: number, Height: number): any
		return setmetatable({
			Area = Area,
			Image = nil,
			SourceWidth = Width,
			SourceHeight = Height,
			Elements = {},
			OwnsImage = false,
			Static = true,
			Pixels = Pixels,
			HasAlpha = true,
			WorkCache = {} :: { [number]: Work },
			CacheCount = 0,
			Generation = 0,
		}, Backdrop)
	end

	function Backdrop.FromImageLabel(Label: ImageLabel | ImageButton): any
		assert(
			typeof(Label) == "Instance" and (Label:IsA("ImageLabel") or Label:IsA("ImageButton")),
			"Backdrop must be an ImageLabel or ImageButton"
		)
		local ImageSource = Label.ImageContent
		local Image: EditableImage
		local OwnsImage = false
		if ImageSource.SourceType == Enum.ContentSourceType.Object and ImageSource.Object then
			Image = ImageSource.Object :: EditableImage
		else
			if ImageSource.SourceType == Enum.ContentSourceType.None and Label.Image ~= "" then
				ImageSource = Content.fromUri(Label.Image)
			end
			Image = AssetService:CreateEditableImageAsync(ImageSource)
			OwnsImage = true
		end
		local Result = Backdrop.new(Label, Image)
		Result.OwnsImage = OwnsImage
		return Result
	end

	function Backdrop.GetWork(Self: any, Factor: number, CheckTick: Tick): Work?
		local Cached = Self.WorkCache[Factor]
		if Cached then
			return Cached
		end

		local Generation = Self.Generation
		local HasAlpha: boolean = Self.HasAlpha
		local Width, Height = Self.SourceWidth, Self.SourceHeight
		if not Self.Pixels then
			Self.Pixels = Self.Image:ReadPixelsBuffer(Vector2.zero, Vector2.new(Width, Height))
		end
		local Pixels: buffer = Self.Pixels

		local WorkWidth, WorkHeight = math.max(1, math.ceil(Width / Factor)), math.max(1, math.ceil(Height / Factor))
		local Total = WorkWidth * WorkHeight
		local Red, Green, Blue = table.create(Total, 0), table.create(Total, 0), table.create(Total, 0)
		local Alpha: Channel? = if HasAlpha then table.create(Total, 0) else nil
		local Normalize = 1 / 255
		local NormalizeSquared = Normalize * Normalize

		if Factor == 1 and Alpha then
			for Index = 0, Total - 1 do
				if Index % 4096 == 0 and not CheckTick() then
					return nil
				end
				local Offset = Index * 4
				local Opacity = buffer.readu8(Pixels, Offset + 3) * Normalize
				Alpha[Index + 1] = Opacity
				Red[Index + 1] = buffer.readu8(Pixels, Offset) * Normalize * Opacity
				Green[Index + 1] = buffer.readu8(Pixels, Offset + 1) * Normalize * Opacity
				Blue[Index + 1] = buffer.readu8(Pixels, Offset + 2) * Normalize * Opacity
			end
		elseif Factor == 1 then
			for Index = 0, Total - 1 do
				if Index % 4096 == 0 and not CheckTick() then
					return nil
				end
				local Offset = Index * 4
				Red[Index + 1] = buffer.readu8(Pixels, Offset) * Normalize
				Green[Index + 1] = buffer.readu8(Pixels, Offset + 1) * Normalize
				Blue[Index + 1] = buffer.readu8(Pixels, Offset + 2) * Normalize
			end
		else
			local Step = math.max(1, Factor // 4)
			for WorkY = 0, WorkHeight - 1 do
				if not CheckTick() then
					return nil
				end
				local StartY = WorkY * Factor
				local StopY = math.min(Height, StartY + Factor)
				for WorkX = 0, WorkWidth - 1 do
					local StartX = WorkX * Factor
					local StopX = math.min(Width, StartX + Factor)
					local SumR, SumG, SumB, SumA, Count = 0, 0, 0, 0, 0
					for SampleY = StartY, StopY - 1, Step do
						local RowOffset = SampleY * Width
						for SampleX = StartX, StopX - 1, Step do
							local Offset = (RowOffset + SampleX) * 4
							if Alpha then
								local Opacity = buffer.readu8(Pixels, Offset + 3)
								SumR += buffer.readu8(Pixels, Offset) * Opacity
								SumG += buffer.readu8(Pixels, Offset + 1) * Opacity
								SumB += buffer.readu8(Pixels, Offset + 2) * Opacity
								SumA += Opacity
							else
								SumR += buffer.readu8(Pixels, Offset)
								SumG += buffer.readu8(Pixels, Offset + 1)
								SumB += buffer.readu8(Pixels, Offset + 2)
							end
							Count += 1
						end
					end
					local Index = WorkY * WorkWidth + WorkX + 1
					if Alpha then
						local Scale = NormalizeSquared / Count
						Red[Index], Green[Index], Blue[Index] = SumR * Scale, SumG * Scale, SumB * Scale
						Alpha[Index] = SumA * Normalize / Count
					else
						local Scale = Normalize / Count
						Red[Index], Green[Index], Blue[Index] = SumR * Scale, SumG * Scale, SumB * Scale
					end
				end
			end
		end

		local Result: Work = {
			Width = WorkWidth,
			Height = WorkHeight,
			Red = Red,
			Green = Green,
			Blue = Blue,
			Alpha = Alpha,
		}

		if Generation == Self.Generation then
			if Self.CacheCount >= UiBlur.Settings.MaxCachedFactors then
				table.clear(Self.WorkCache)
				Self.CacheCount = 0
			end
			Self.WorkCache[Factor] = Result
			Self.CacheCount += 1
		end

		return Result
	end

	function Backdrop.Invalidate(Self: any)
		if not Self.Static then
			Self.SourceWidth, Self.SourceHeight = Self.Image.Size.X, Self.Image.Size.Y
			Self.Pixels = nil
		end
		Self.Generation += 1
		Self.CacheCount = 0
		table.clear(Self.WorkCache)
		for Element in Self.Elements do
			MarkDirty(Element)
		end
	end

	function Backdrop.Destroy(Self: any)
		for Element in table.clone(Self.Elements) do
			local State = Element.State
			State.Source = nil
			State.Cover = nil
			State.Version += 1
			State.Image.Visible = false
		end
		table.clear(Self.Elements)
		table.clear(Self.WorkCache)
		Self.Pixels = nil
		if Self.OwnsImage and Self.Image then
			Self.Image:Destroy()
		end
	end

	UiBlur.Backdrop = Backdrop

	local function EvalColor(Sequence: ColorSequence, Time: number): Color3
		local Keypoints = Sequence.Keypoints
		for Index = 1, #Keypoints - 1 do
			local First, Second = Keypoints[Index], Keypoints[Index + 1]
			if Time <= Second.Time then
				local Span = Second.Time - First.Time
				local Fraction = if Span > 0 then (Time - First.Time) / Span else 0
				return First.Value:Lerp(Second.Value, math.clamp(Fraction, 0, 1))
			end
		end
		return Keypoints[#Keypoints].Value
	end

	local function EvalNumber(Sequence: NumberSequence, Time: number): number
		local Keypoints = Sequence.Keypoints
		for Index = 1, #Keypoints - 1 do
			local First, Second = Keypoints[Index], Keypoints[Index + 1]
			if Time <= Second.Time then
				local Span = Second.Time - First.Time
				local Fraction = if Span > 0 then (Time - First.Time) / Span else 0
				return First.Value + (Second.Value - First.Value) * math.clamp(Fraction, 0, 1)
			end
		end
		return Keypoints[#Keypoints].Value
	end

	local ImageCache: { [string]: { Pixels: buffer, Width: number, Height: number } } = {}
	local ImageCacheKeys: { string } = {}
	local ImageFailed: { [string]: number } = {}
	local ImageReadSide = 512
	local RetryAfter = 8
	local ImageCacheLimit = 3
	local ImageMaxPixels = 4194304
	local MinImageSide = 48

	local function HasVisiblePixels(Pixels: buffer, Width: number, Height: number): boolean
		local Total = Width * Height
		local Step = math.max(1, Total // 1024)
		for Index = 0, Total - 1, Step do
			if buffer.readu32(Pixels, Index * 4) // 16777216 > 0 then
				return true
			end
		end
		return false
	end

	local function RememberImage(Key: string, Pixels: buffer, Width: number, Height: number)
		if #ImageCacheKeys >= ImageCacheLimit then
			local Oldest = table.remove(ImageCacheKeys, 1)
			if Oldest then
				ImageCache[Oldest] = nil
			end
		end
		table.insert(ImageCacheKeys, Key)
		ImageCache[Key] = { Pixels = Pixels, Width = Width, Height = Height }
	end

	local function ReadImagePixels(Label: ImageLabel | ImageButton): (buffer?, number, number)
		local Success, Pixels, Width, Height = pcall(function()
			local Source = Label.ImageContent
			if Source.SourceType == Enum.ContentSourceType.Object and Source.Object then
				local Live = Source.Object :: EditableImage
				local Size = Live.Size
				if Size.X < 1 or Size.Y < 1 or Size.X * Size.Y > ImageMaxPixels then
					return nil, 0, 0
				end
				return Live:ReadPixelsBuffer(Vector2.zero, Size), Size.X, Size.Y
			end

			local Key = Label.Image
			if Key == "" or (ImageFailed[Key] and os.clock() - ImageFailed[Key] < RetryAfter) then
				return nil, 0, 0
			end
			local Cached = ImageCache[Key]
			if Cached then
				return Cached.Pixels, Cached.Width, Cached.Height
			end

			local Loaded = AssetService:CreateEditableImageAsync(Content.fromUri(Key))
			local Size = Loaded.Size
			if Size.X < 1 or Size.Y < 1 then
				Loaded:Destroy()
				ImageFailed[Key] = os.clock()
				return nil, 0, 0
			end
			local Longest = math.max(Size.X, Size.Y)
			if Longest > ImageReadSide then
				local Ratio = ImageReadSide / Longest
				pcall(function()
					Loaded:Resize(Vector2.new(math.max(1, math.floor(Size.X * Ratio)), math.max(1, math.floor(Size.Y * Ratio))))
				end)
				Size = Loaded.Size
			end
			if Size.X * Size.Y > ImageMaxPixels then
				Loaded:Destroy()
				ImageFailed[Key] = os.clock()
				return nil, 0, 0
			end
			local Buffer = Loaded:ReadPixelsBuffer(Vector2.zero, Size)
			Loaded:Destroy()
			if not HasVisiblePixels(Buffer, Size.X, Size.Y) then
				ImageFailed[Key] = os.clock()
				return nil, 0, 0
			end
			RememberImage(Key, Buffer, Size.X, Size.Y)
			return Buffer, Size.X, Size.Y
		end)

		if Success and Pixels then
			return Pixels, Width, Height
		end
		if not Success and Label.Image ~= "" then
			ImageFailed[Label.Image] = os.clock()
		end
		return nil, 0, 0
	end

	local function FindGradient(Object: Instance): UIGradient?
		for _, Child in Object:GetChildren() do
			if Child:IsA("UIGradient") and Child.Enabled then
				return Child
			end
		end
		return nil
	end

	local GradientSteps = 64
	local PictureCoverage = 0.6

	function UiBlur.Rasterize(Area: GuiObject, Config: { [string]: any }?): any
		local Settings = Config or {}
		local Exclude: { [Instance]: boolean } = Settings.Exclude or {}
		local Walk: Instance = Settings.Walk or Area
		local MaxShapes: number = Settings.MaxShapes or 4000
		local AreaPosition, AreaSize = Area.AbsolutePosition, Area.AbsoluteSize
		if AreaSize.X < 1 or AreaSize.Y < 1 then
			return nil
		end

		local Scale = math.min(1, (Settings.MaxSize or UiBlur.Settings.RasterSize) / math.max(AreaSize.X, AreaSize.Y))
		local Width = math.max(1, math.ceil(AreaSize.X * Scale))
		local Height = math.max(1, math.ceil(AreaSize.Y * Scale))
		local Total = Width * Height
		local InverseScale = 1 / Scale

		local Budget = UiBlur.Settings.RasterBudget
		local SliceStart = os.clock()
		local function Pace()
			if os.clock() - SliceStart > Budget then
				task.wait()
				SliceStart = os.clock()
			end
		end

		local Success, Result = pcall(function()
			local Red, Green, Blue, Alpha = table.create(Total, 0), table.create(Total, 0), table.create(Total, 0), table.create(Total, 0)
			local Count = 0
			local Recorded: { any } = {}
			local Underlay: { any }? = nil

			local function PixelBounds(Left: number, Top: number, Right: number, Bottom: number, Clip: { number })
				Left, Top = math.max(Left, Clip[1]), math.max(Top, Clip[2])
				Right, Bottom = math.min(Right, Clip[3]), math.min(Bottom, Clip[4])
				return math.max(math.floor(Left * Scale), 0),
					math.max(math.floor(Top * Scale), 0),
					math.min(math.ceil(Right * Scale), Width),
					math.min(math.ceil(Bottom * Scale), Height)
			end

			local function Fill(
				Left: number,
				Top: number,
				Right: number,
				Bottom: number,
				Clip: { number },
				Color: Color3,
				Strength: number
			)
				if Strength <= 0.01 then
					return
				end
				local PxLeft, PxTop, PxRight, PxBottom = PixelBounds(Left, Top, Right, Bottom, Clip)
				if PxRight <= PxLeft or PxBottom <= PxTop then
					return
				end
				Strength = math.min(Strength, 1)
				if not Underlay and #Recorded < 96 then
					table.insert(Recorded, {
						Left = Left,
						Top = Top,
						Right = Right,
						Bottom = Bottom,
						Clip = { Clip[1], Clip[2], Clip[3], Clip[4] },
						Color = Color,
						Strength = Strength,
					})
				end
				local Keep = 1 - Strength
				local SourceR, SourceG, SourceB = Color.R * Strength, Color.G * Strength, Color.B * Strength
				for Y = PxTop, PxBottom - 1 do
					Pace()
					local Row = Y * Width + 1
					for Index = Row + PxLeft, Row + PxRight - 1 do
						Red[Index] = SourceR + Red[Index] * Keep
						Green[Index] = SourceG + Green[Index] * Keep
						Blue[Index] = SourceB + Blue[Index] * Keep
						Alpha[Index] = Strength + Alpha[Index] * Keep
					end
				end
				Count += 1
			end

			local function FillGradient(
				Left: number,
				Top: number,
				Right: number,
				Bottom: number,
				Clip: { number },
				Base: Color3,
				Strength: number,
				Gradient: UIGradient
			)
				local PxLeft, PxTop, PxRight, PxBottom = PixelBounds(Left, Top, Right, Bottom, Clip)
				if PxRight <= PxLeft or PxBottom <= PxTop then
					return
				end

				if not Underlay and #Recorded < 96 then
					table.insert(Recorded, {
						Left = Left,
						Top = Top,
						Right = Right,
						Bottom = Bottom,
						Clip = { Clip[1], Clip[2], Clip[3], Clip[4] },
						Color = Base,
						Strength = Strength,
						Gradient = Gradient:Clone(),
					})
				end

				local Angle = math.rad(Gradient.Rotation)
				local Cos, Sin = math.cos(Angle), math.sin(Angle)
				local BoxWidth, BoxHeight = Right - Left, Bottom - Top
				local Extent = math.max(BoxWidth * math.abs(Cos) + BoxHeight * math.abs(Sin), 1)
				local Offset = Gradient.Offset
				local Shift = Offset.X * BoxWidth * Cos + Offset.Y * BoxHeight * Sin
				local CenterX, CenterY = Left + BoxWidth * 0.5, Top + BoxHeight * 0.5

				local LutR, LutG, LutB, LutA = {}, {}, {}, {}
				local Any = false
				for Step = 0, GradientSteps do
					local Time = Step / GradientSteps
					local Tone = EvalColor(Gradient.Color, Time)
					local Power = math.clamp(Strength * (1 - EvalNumber(Gradient.Transparency, Time)), 0, 1)
					if Power > 0.01 then
						Any = true
					end
					LutR[Step + 1] = Base.R * Tone.R * Power
					LutG[Step + 1] = Base.G * Tone.G * Power
					LutB[Step + 1] = Base.B * Tone.B * Power
					LutA[Step + 1] = Power
				end
				if not Any then
					return
				end

				local StepX = Cos * InverseScale / Extent
				for Y = PxTop, PxBottom - 1 do
					Pace()
					local Row = Y * Width + 1
					local AreaY = (Y + 0.5) * InverseScale - CenterY
					local Time = 0.5 + (((PxLeft + 0.5) * InverseScale - CenterX) * Cos + AreaY * Sin - Shift) / Extent
					for Index = Row + PxLeft, Row + PxRight - 1 do
						local Slot = math.floor(Time * GradientSteps + 0.5)
						if Slot < 0 then
							Slot = 0
						elseif Slot > GradientSteps then
							Slot = GradientSteps
						end
						Slot += 1
						local Power = LutA[Slot]
						if Power > 0 then
							local Keep = 1 - Power
							Red[Index] = LutR[Slot] + Red[Index] * Keep
							Green[Index] = LutG[Slot] + Green[Index] * Keep
							Blue[Index] = LutB[Slot] + Blue[Index] * Keep
							Alpha[Index] = Power + Alpha[Index] * Keep
						end
						Time += StepX
					end
				end
				Count += 1
			end

			local function FillImage(
				Label: ImageLabel | ImageButton,
				Left: number,
				Top: number,
				Right: number,
				Bottom: number,
				Clip: { number },
				Opacity: number
			)
				local Strength = (1 - Label.ImageTransparency) * Opacity
				if Strength <= 0.01 then
					return
				end
				local ScaleType = Label.ScaleType
				if ScaleType ~= Enum.ScaleType.Crop and ScaleType ~= Enum.ScaleType.Fit and ScaleType ~= Enum.ScaleType.Stretch then
					return false
				end
				if Label.ImageRectSize ~= Vector2.zero then
					return false
				end

				local Pixels, ImageWidth, ImageHeight = ReadImagePixels(Label)
				if not Pixels then
					return false
				end

				local BoxWidth, BoxHeight = Right - Left, Bottom - Top
				local DrawLeft, DrawTop, DrawWidth, DrawHeight = Left, Top, BoxWidth, BoxHeight
				if ScaleType ~= Enum.ScaleType.Stretch then
					local FitX, FitY = BoxWidth / ImageWidth, BoxHeight / ImageHeight
					local Ratio = if ScaleType == Enum.ScaleType.Crop then math.max(FitX, FitY) else math.min(FitX, FitY)
					DrawWidth, DrawHeight = ImageWidth * Ratio, ImageHeight * Ratio
					DrawLeft, DrawTop = Left + (BoxWidth - DrawWidth) * 0.5, Top + (BoxHeight - DrawHeight) * 0.5
				end
				if DrawWidth < 1 or DrawHeight < 1 then
					return
				end

				local VisibleClip = {
					math.max(Clip[1], Left, DrawLeft),
					math.max(Clip[2], Top, DrawTop),
					math.min(Clip[3], Right, DrawLeft + DrawWidth),
					math.min(Clip[4], Bottom, DrawTop + DrawHeight),
				}
				local PxLeft, PxTop, PxRight, PxBottom = PixelBounds(VisibleClip[1], VisibleClip[2], VisibleClip[3], VisibleClip[4], VisibleClip)
				if PxRight <= PxLeft or PxBottom <= PxTop then
					return
				end

				local Tint = Label.ImageColor3
				local MapX, MapY = ImageWidth / DrawWidth, ImageHeight / DrawHeight
				local LastX, LastY = ImageWidth - 1, ImageHeight - 1
				local Normalize = 1 / 255

				for Y = PxTop, PxBottom - 1 do
					Pace()
					local SourceY = math.clamp(math.floor(((Y + 0.5) * InverseScale - DrawTop) * MapY), 0, LastY)
					local SourceRow = SourceY * ImageWidth
					local Row = Y * Width + 1
					for X = PxLeft, PxRight - 1 do
						local SourceX = math.clamp(math.floor(((X + 0.5) * InverseScale - DrawLeft) * MapX), 0, LastX)
						local Packed = buffer.readu32(Pixels, (SourceRow + SourceX) * 4)
						local Power = (Packed // 16777216) * Normalize * Strength
						if Power > 0.004 then
							local Keep = 1 - Power
							local Index = Row + X
							Red[Index] = (Packed % 256) * Normalize * Tint.R * Power + Red[Index] * Keep
							Green[Index] = ((Packed // 256) % 256) * Normalize * Tint.G * Power + Green[Index] * Keep
							Blue[Index] = ((Packed // 65536) % 256) * Normalize * Tint.B * Power + Blue[Index] * Keep
							Alpha[Index] = Power + Alpha[Index] * Keep
						end
					end
				end
				Count += 1
			end

			if Settings.BaseColor then
				Fill(0, 0, AreaSize.X, AreaSize.Y, { 0, 0, AreaSize.X, AreaSize.Y }, Settings.BaseColor, 1 - (Settings.BaseTransparency or 0))
			end

			local Painted: { [Instance]: { [any]: boolean } } = {}
			local Pictures: { any } = {}

			local function Visit(Object: Instance, Clip: { number }, Opacity: number)
				if Count >= MaxShapes or Exclude[Object] or Object.Name == "UiBlurLayer" then
					return
				end

				local ChildClip = Clip
				local ChildOpacity = Opacity

				if Object:IsA("GuiObject") then
					if not Object.Visible then
						return
					end
					local Position = Object.AbsolutePosition - AreaPosition
					local Size = Object.AbsoluteSize
					local Left, Top = Position.X, Position.Y
					local Right, Bottom = Left + Size.X, Top + Size.Y

					if Object:IsA("CanvasGroup") then
						ChildOpacity = Opacity * (1 - Object.GroupTransparency)
						if ChildOpacity <= 0.02 then
							return
						end
					end

					if Object.BackgroundTransparency < 1 then
						local Strength = (1 - Object.BackgroundTransparency) * ChildOpacity
						local Gradient = FindGradient(Object)
						if Gradient then
							FillGradient(Left, Top, Right, Bottom, Clip, Object.BackgroundColor3, Strength, Gradient)
						else
							Fill(Left, Top, Right, Bottom, Clip, Object.BackgroundColor3, Strength)
						end
					end

					if Object:IsA("TextLabel") or Object:IsA("TextButton") or Object:IsA("TextBox") then
						if Object.Text ~= "" and Object.TextTransparency < 1 then
							local Bounds = Object.TextBounds
							local TextWidth = math.min(Bounds.X, Size.X)
							local TextHeight = math.min(Bounds.Y * 0.65, Size.Y)
							local OffsetX = if Object.TextXAlignment == Enum.TextXAlignment.Left
								then 0
								elseif Object.TextXAlignment == Enum.TextXAlignment.Right then Size.X - TextWidth
								else (Size.X - TextWidth) / 2
							local OffsetY = if Object.TextYAlignment == Enum.TextYAlignment.Top
								then 0
								elseif Object.TextYAlignment == Enum.TextYAlignment.Bottom then Size.Y - TextHeight
								else (Size.Y - TextHeight) / 2
							Fill(
								Left + OffsetX,
								Top + OffsetY,
								Left + OffsetX + TextWidth,
								Top + OffsetY + TextHeight,
								Clip,
								Object.TextColor3,
								(1 - Object.TextTransparency) * ChildOpacity * 0.45
							)
						end
					elseif Object:IsA("ImageLabel") or Object:IsA("ImageButton") then
						local Source = Object.ImageContent
						local Live = if Source.SourceType == Enum.ContentSourceType.Object then Source.Object else nil
						local Identity: any = Live or (if Object.Image ~= "" then Object.Image else nil)
						if
							Identity ~= nil
							and Object.ImageTransparency < 1
							and (Size.X < MinImageSide or Size.Y < MinImageSide)
						then
							Fill(
								Left + Size.X * 0.15,
								Top + Size.Y * 0.15,
								Right - Size.X * 0.15,
								Bottom - Size.Y * 0.15,
								Clip,
								Object.ImageColor3,
								(1 - Object.ImageTransparency) * ChildOpacity * 0.45
							)
						elseif
							Identity ~= nil
							and Object.ImageTransparency < 1
							and Size.X >= MinImageSide
							and Size.Y >= MinImageSide
						then
							local Parent = Object.Parent :: Instance
							local Seen = Painted[Parent]
							if not Seen then
								Seen = {}
								Painted[Parent] = Seen
							end
							if not Seen[Identity] then
								Seen[Identity] = true
								if FillImage(Object, Left, Top, Right, Bottom, Clip, ChildOpacity) == false then
									local CoversArea = Size.X >= AreaSize.X * PictureCoverage
										and Size.Y >= AreaSize.Y * PictureCoverage
									if CoversArea and Object.Image ~= "" and #Pictures < 2 then
										if not Underlay then
											Underlay = Recorded
											for Index = 1, Total do
												Red[Index], Green[Index], Blue[Index], Alpha[Index] = 0, 0, 0, 0
											end
											Count = 0
										end
										table.insert(Pictures, {
											Left = Left,
											Top = Top,
											Width = Size.X,
											Height = Size.Y,
											Clip = { Clip[1], Clip[2], Clip[3], Clip[4] },
											Image = Object.Image,
											ScaleType = Object.ScaleType,
											Color = Object.ImageColor3,
											Strength = (1 - Object.ImageTransparency) * ChildOpacity,
										})
									else
										local Base = Object.ImageColor3
										Fill(
											Left,
											Top,
											Right,
											Bottom,
											Clip,
											Color3.new(Base.R * 0.4, Base.G * 0.4, Base.B * 0.42),
											(1 - Object.ImageTransparency) * ChildOpacity * 0.55
										)
									end
								end
							end
						end
					end

					if Object.ClipsDescendants or Object:IsA("CanvasGroup") then
						ChildClip = {
							math.max(Clip[1], Left),
							math.max(Clip[2], Top),
							math.min(Clip[3], Right),
							math.min(Clip[4], Bottom),
						}
					end
				end

				local Children = {}
				for Index, Child in Object:GetChildren() do
					if Child:IsA("GuiObject") then
						table.insert(Children, { Child = Child, Order = Index, Layer = Child.ZIndex })
					end
				end
				table.sort(Children, function(A, B)
					if A.Layer ~= B.Layer then
						return A.Layer < B.Layer
					end
					return A.Order < B.Order
				end)
				for _, Entry in Children do
					Visit(Entry.Child, ChildClip, ChildOpacity)
				end
			end

			Visit(Walk, { 0, 0, AreaSize.X, AreaSize.Y }, 1)

			local Pixels = buffer.create(Total * 4)
			for Index = 1, Total do
				if Index % 8192 == 0 then
					Pace()
				end
				local Coverage = Alpha[Index]
				local PackedR, PackedG, PackedB, PackedA = 0, 0, 0, 0
				if Coverage > 0.0005 then
					local Inverse = 1 / Coverage
					PackedR = math.floor(math.clamp(Red[Index] * Inverse, 0, 1) * 255 + 0.5)
					PackedG = math.floor(math.clamp(Green[Index] * Inverse, 0, 1) * 255 + 0.5)
					PackedB = math.floor(math.clamp(Blue[Index] * Inverse, 0, 1) * 255 + 0.5)
					PackedA = math.floor(math.clamp(Coverage, 0, 1) * 255 + 0.5)
				end
				buffer.writeu32(Pixels, (Index - 1) * 4, PackedR + PackedG * 256 + PackedB * 65536 + PackedA * 16777216)
			end

			local Created = Backdrop.FromPixels(Area, Pixels, Width, Height)
			Created.Pictures = Pictures
			Created.Underlay = Underlay or {}
			return Created
		end)

		if Success then
			return Result
		end
		Library:Alert("UiBlur: rasterize failed - " .. tostring(Result))
		return nil
	end

	function UiBlur.Signature(Walk: Instance, Exclude: { [Instance]: boolean }?): number
		local Skip = Exclude or {}
		local Acc, Seen = 0, 0
		local SliceStart = os.clock()
		local TextClasses = { TextLabel = true, TextButton = true, TextBox = true }
		local ImageClasses = { ImageLabel = true, ImageButton = true }
		local function Mix(Value: number)
			Acc = (Acc * 31 + math.floor(Value * 1000)) % 2147483629
		end
		local function Visit(Object: Instance)
			if Seen > 6000 or Skip[Object] or Object.Name == "UiBlurLayer" then
				return
			end
			Seen += 1
			if Seen % 48 == 0 and os.clock() - SliceStart > 0.004 then
				task.wait()
				SliceStart = os.clock()
			end
			local Children = nil
			if Object:IsA("GuiObject") then
				if not Object.Visible then
					Mix(-1)
					return
				end
				local Color = Object.BackgroundColor3
				Mix(Color.R + Color.G * 3 + Color.B * 7 + Object.BackgroundTransparency * 11)
				local Position, Size = Object.AbsolutePosition, Object.AbsoluteSize
				Mix(Position.X + Position.Y * 5 + Size.X * 13 + Size.Y * 17)
				local ClassName = Object.ClassName
				if TextClasses[ClassName] then
					local Text = Object.TextColor3
					Mix(#Object.Text + Text.R + Text.G * 3 + Text.B * 7 + Object.TextTransparency * 11)
				elseif ImageClasses[ClassName] then
					local Tint = Object.ImageColor3
					Mix(#Object.Image + Tint.R + Tint.G * 3 + Tint.B * 7 + Object.ImageTransparency * 11)
				end
				if ClassName == "CanvasGroup" then
					Mix(Object.GroupTransparency * 19)
				end
				Children = Object:GetChildren()
				local Gradient = nil
				for _, Child in Children do
					if Child.ClassName == "UIGradient" and Child.Enabled then
						Gradient = Child
						break
					end
				end
				if Gradient then
					local Keypoints = Gradient.Color.Keypoints
					for _, Key in Keypoints do
						Mix(Key.Value.R + Key.Value.G * 3 + Key.Value.B * 7)
					end
					Mix(Gradient.Rotation)
				end
			end
			for _, Child in Children or Object:GetChildren() do
				Visit(Child)
			end
		end
		Visit(Walk)
		return Acc
	end

	function UiBlur.FromImage(Label: ImageLabel, Config: { [string]: any }?): (any, string?)
		local Settings = Config or {}
		local AreaSize = Label.AbsoluteSize
		if AreaSize.X < 1 or AreaSize.Y < 1 then
			return nil, "size"
		end
		local Pixels, ImageWidth, ImageHeight = ReadImagePixels(Label)
		if not Pixels then
			return nil, "pixels"
		end

		local Scale = math.min(1, (Settings.MaxSize or 384) / math.max(AreaSize.X, AreaSize.Y))
		local Width = math.max(1, math.ceil(AreaSize.X * Scale))
		local Height = math.max(1, math.ceil(AreaSize.Y * Scale))
		local InverseScale = 1 / Scale
		local ScaleType = Label.ScaleType
		local BoxWidth, BoxHeight = AreaSize.X, AreaSize.Y
		local IsTile = ScaleType == Enum.ScaleType.Tile
		local DrawLeft, DrawTop, DrawWidth, DrawHeight = 0, 0, BoxWidth, BoxHeight
		if ScaleType == Enum.ScaleType.Crop or ScaleType == Enum.ScaleType.Fit then
			local FitX, FitY = BoxWidth / ImageWidth, BoxHeight / ImageHeight
			local Ratio = if ScaleType == Enum.ScaleType.Crop then math.max(FitX, FitY) else math.min(FitX, FitY)
			DrawWidth, DrawHeight = ImageWidth * Ratio, ImageHeight * Ratio
			DrawLeft, DrawTop = (BoxWidth - DrawWidth) * 0.5, (BoxHeight - DrawHeight) * 0.5
		end
		local TileSize = Label.TileSize
		local TileWidth = math.max(TileSize.X.Scale * BoxWidth + TileSize.X.Offset, 1)
		local TileHeight = math.max(TileSize.Y.Scale * BoxHeight + TileSize.Y.Offset, 1)
		local MapX, MapY = ImageWidth / DrawWidth, ImageHeight / DrawHeight
		local LastX, LastY = ImageWidth - 1, ImageHeight - 1

		local Output = buffer.create(Width * Height * 4)
		local Budget = UiBlur.Settings.RasterBudget
		local SliceStart = os.clock()
		for Y = 0, Height - 1 do
			if os.clock() - SliceStart > Budget then
				task.wait()
				SliceStart = os.clock()
			end
			local AreaY = (Y + 0.5) * InverseScale
			local RowOffset = Y * Width
			for X = 0, Width - 1 do
				local AreaX = (X + 0.5) * InverseScale
				local Packed = 0
				local SourceX, SourceY
				if IsTile then
					SourceX = math.floor((AreaX % TileWidth) / TileWidth * ImageWidth)
					SourceY = math.floor((AreaY % TileHeight) / TileHeight * ImageHeight)
				else
					local OffsetX, OffsetY = AreaX - DrawLeft, AreaY - DrawTop
					if OffsetX >= 0 and OffsetY >= 0 and OffsetX < DrawWidth and OffsetY < DrawHeight then
						SourceX = math.floor(OffsetX * MapX)
						SourceY = math.floor(OffsetY * MapY)
					end
				end
				if SourceX then
					SourceX = math.clamp(SourceX, 0, LastX)
					SourceY = math.clamp(SourceY, 0, LastY)
					Packed = buffer.readu32(Pixels, (SourceY * ImageWidth + SourceX) * 4)
				end
				buffer.writeu32(Output, (RowOffset + X) * 4, Packed)
			end
		end

		return Backdrop.FromPixels(Label, Output, Width, Height), nil
	end

	local BackdropCache = setmetatable({}, { __mode = "k" })
	local BackdropPending: { [any]: boolean } = {}
	local DefaultBackdrop: any = nil

	local function ResolveBackdrop(Value: any): any
		if getmetatable(Value) == Backdrop then
			return Value
		end
		local Cached = BackdropCache[Value]
		if Cached then
			return Cached
		end
		if BackdropPending[Value] then
			while BackdropPending[Value] do
				task.wait()
			end
			return BackdropCache[Value]
		end
		BackdropPending[Value] = true
		local Success, Result = pcall(Backdrop.FromImageLabel, Value)
		BackdropPending[Value] = nil
		if not Success then
			Library:Alert("UiBlur: invalid Backdrop - " .. tostring(Result))
			return nil
		end
		BackdropCache[Value] = Result
		return Result
	end

	function UiBlur.SetDefaultBackdrop(Value: any)
		DefaultBackdrop = Value
	end

	local NoiseImage: EditableImage? = nil

	local function GetNoiseContent(): Content
		local Settings = UiBlur.Settings
		if Settings.NoiseAssetId then
			return Content.fromAssetId(Settings.NoiseAssetId)
		end
		if not NoiseImage then
			local Size = Settings.NoiseTileSize
			local Image = AssetService:CreateEditableImage({ Size = Vector2.new(Size, Size) })
			local Pixels = buffer.create(Size * Size * 4)
			local Generator = Random.new(1337)
			for Index = 0, Size * Size - 1 do
				local Sample = Generator:NextInteger(0, 255)
				local Shade = if Sample >= 128 then 255 else 0
				local Alpha = math.min(255, math.floor(math.abs(Sample - 127.5) * 2))
				buffer.writeu32(Pixels, Index * 4, Shade + Shade * 256 + Shade * 65536 + Alpha * 16777216)
			end
			Image:WritePixelsBuffer(Vector2.zero, Vector2.new(Size, Size), Pixels)
			NoiseImage = Image
		end
		return Content.fromObject(NoiseImage :: EditableImage)
	end

	local Element = {}
	local Active: { [any]: boolean } = {}
	local LoopConnection: RBXScriptConnection? = nil

	function MarkDirty(Self: any)
		local State = Self.State
		State.Dirty = true
		State.LastChange = os.clock()
	end

	local function Cancel(Self: any)
		Self.State.Version += 1
	end

	local function ClampProp(Key: string, Value: number): number
		local Range = Ranges[Key]
		if Range then
			return math.clamp(Value, Range[1], Range[2])
		end
		return Value
	end

	local function ApplyVisuals(Self: any)
		local State, Values = Self.State, Self.Props
		State.Layer.Visible = State.Enabled and Values.Opacity > 0.01
		State.Layer.GroupTransparency = 1 - Values.Opacity
		State.Image.ImageTransparency = 0
		State.TintFrame.BackgroundColor3 = Values.Tint
		State.TintFrame.BackgroundTransparency = Values.TintTransparency
		State.TintFrame.Visible = Values.TintTransparency < 1
		if Values.Noise > 0 then
			if not State.NoiseReady then
				State.NoiseLabel.ImageContent = GetNoiseContent()
				State.NoiseReady = true
			end
			State.NoiseLabel.ImageTransparency = 1 - Values.Noise
			State.NoiseLabel.Visible = true
		else
			State.NoiseLabel.Visible = false
		end
	end

	local function AttachParent(Self: any, Parent: GuiObject?)
		local State = Self.State
		if Parent ~= nil then
			assert(typeof(Parent) == "Instance" and Parent:IsA("GuiObject"), "UiBlur.Parent must be a GuiObject")
		end
		Cancel(Self)
		State.Parent = Parent
		State.Layer.Parent = Parent
		if State.Corner then
			State.Corner:Destroy()
			State.Corner = nil
		end
		if Parent then
			local Corner = Parent:FindFirstChildOfClass("UICorner")
			if Corner then
				State.Corner = Corner:Clone()
				State.Corner.Parent = State.Layer
			end
			MarkDirty(Self)
		end
	end

	local function AttachBackdrop(Self: any, Value: any)
		local State = Self.State
		Cancel(Self)
		State.BackdropValue = Value
		State.BackdropToken += 1
		local Token = State.BackdropToken
		if State.Source then
			State.Source.Elements[Self] = nil
			State.Source = nil
		end
		State.Cover = nil
		if Value == nil then
			State.Image.Visible = false
			return
		end
		task.spawn(function()
			local Source = ResolveBackdrop(Value)
			if Source and State.Alive and State.BackdropToken == Token then
				State.Source = Source
				Source.Elements[Self] = true
				MarkDirty(Self)
			end
		end)
	end

	local PictureRings = {
		{ Count = 6, Scale = 0.5, Phase = 30 },
		{ Count = 6, Scale = 1, Phase = 0 },
	}

	local function PictureKey(Source: any): string
		if not Source then
			return ""
		end
		local Parts: { string } = {}
		for _, Entry in Source.Underlay or {} do
			local Tone = if Entry.Gradient then tostring(Entry.Gradient.Color.Keypoints[1].Value) .. Entry.Gradient.Rotation else ""
			table.insert(Parts, string.format("U%.1f,%.1f,%.1f,%.1f,%.2f,%s,%s", Entry.Left, Entry.Top, Entry.Right, Entry.Bottom, Entry.Strength, tostring(Entry.Color), Tone))
		end
		for _, Entry in Source.Pictures or {} do
			table.insert(Parts, string.format("P%.1f,%.1f,%.1f,%.1f,%.2f,%s,%s,%s", Entry.Left, Entry.Top, Entry.Width, Entry.Height, Entry.Strength, Entry.Image, tostring(Entry.ScaleType), tostring(Entry.Color)))
		end
		return table.concat(Parts, "|")
	end

	local function SyncPictures(Self: any, Values: Props)
		local State = Self.State
		local Source, Holder = State.Source, State.Pictures
		if State.PictureSource ~= Source then
			State.PictureSource = Source
			local Key = PictureKey(Source)
			if State.PictureKey ~= Key then
				State.PictureKey = Key
				State.PictureCopies = {}
				Holder:ClearAllChildren()
				for _, Entry in (Source and Source.Underlay) or {} do
					local Clip = Entry.Clip
					local Clipper = Instance.new("Frame")
					Clipper.BackgroundTransparency = 1
					Clipper.BorderSizePixel = 0
					Clipper.ClipsDescendants = true
					Clipper.Position = UDim2.fromOffset(Clip[1], Clip[2])
					Clipper.Size = UDim2.fromOffset(math.max(Clip[3] - Clip[1], 0), math.max(Clip[4] - Clip[2], 0))
					Clipper.Parent = Holder

					local Block = Instance.new("Frame")
					Block.BorderSizePixel = 0
					Block.BackgroundColor3 = Entry.Color
					Block.BackgroundTransparency = 1 - math.clamp(Entry.Strength, 0, 1)
					Block.Position = UDim2.fromOffset(Entry.Left - Clip[1], Entry.Top - Clip[2])
					Block.Size = UDim2.fromOffset(Entry.Right - Entry.Left, Entry.Bottom - Entry.Top)
					Block.Parent = Clipper
					if Entry.Gradient then
						Entry.Gradient.Parent = Block
					end
				end
				for _, Entry in (Source and Source.Pictures) or {} do
					local Clip = Entry.Clip
					local Clipper = Instance.new("Frame")
					Clipper.BackgroundTransparency = 1
					Clipper.BorderSizePixel = 0
					Clipper.ClipsDescendants = true
					Clipper.Position = UDim2.fromOffset(Clip[1], Clip[2])
					Clipper.Size = UDim2.fromOffset(math.max(Clip[3] - Clip[1], 0), math.max(Clip[4] - Clip[2], 0))
					Clipper.Parent = Holder

					local Group = Instance.new("CanvasGroup")
					Group.BackgroundTransparency = 1
					Group.BorderSizePixel = 0
					Group.Position = UDim2.fromOffset(Entry.Left - Clip[1], Entry.Top - Clip[2])
					Group.Size = UDim2.fromOffset(Entry.Width, Entry.Height)
					Group.GroupTransparency = 1 - math.clamp(Entry.Strength, 0, 1)
					Group.Parent = Clipper

					local Index = 0
					local function Copy(X: number, Y: number)
						Index += 1
						local Label = Instance.new("ImageLabel")
						Label.BackgroundTransparency = 1
						Label.BorderSizePixel = 0
						Label.Image = Entry.Image
						Label.ScaleType = Entry.ScaleType
						Label.ImageColor3 = Entry.Color
						Label.ImageTransparency = 1 - 1 / Index
						Label.Size = UDim2.fromScale(1, 1)
						Label.ZIndex = Index
						Label.Parent = Group
						table.insert(State.PictureCopies, { Label = Label, X = X, Y = Y })
					end
					Copy(0, 0)
					for _, Ring in PictureRings do
						for Step = 0, Ring.Count - 1 do
							local Angle = math.rad(Ring.Phase + Step * 360 / Ring.Count)
							Copy(math.cos(Angle) * Ring.Scale, math.sin(Angle) * Ring.Scale)
						end
					end
				end
			else
				for _, Entry in (Source and Source.Underlay) or {} do
					if Entry.Gradient then
						Entry.Gradient:Destroy()
						Entry.Gradient = nil
					end
				end
			end
		end
		local Radius = Values.Blur * 1.5
		for _, Item in State.PictureCopies do
			Item.Label.Position = UDim2.fromOffset(Item.X * Radius, Item.Y * Radius)
		end
	end

	local function PlaceImage(Self: any)
		local State = Self.State
		local Cover: Cover? = State.Cover
		local Frame, Source = State.Parent, State.Source
		if not Cover or not Frame or not Source then
			return
		end
		local FramePosition = Frame.AbsolutePosition
		local AreaPosition = Source.Area.AbsolutePosition
		local Position = UDim2.fromOffset(AreaPosition.X - FramePosition.X, AreaPosition.Y - FramePosition.Y)
		local Size = UDim2.fromOffset(Cover.Width, Cover.Height)
		local PictureSize = UDim2.fromOffset(Source.Area.AbsoluteSize.X, Source.Area.AbsoluteSize.Y)
		if State.PlacedPosition ~= Position then
			State.PlacedPosition = Position
			State.Pictures.Position = Position
		end
		if State.PlacedSize ~= PictureSize then
			State.PlacedSize = PictureSize
			State.Pictures.Size = PictureSize
		end
		local Image: ImageLabel = State.Image
		if Image.Position ~= Position then
			Image.Position = Position
		end
		if Image.Size ~= Size then
			Image.Size = Size
		end
		if not Image.Visible then
			Image.Visible = true
		end
	end

	local function Process(Self: any)
		local State = Self.State
		if State.Busy or not State.Alive then
			return
		end
		State.Busy = true
		State.Dirty = false
		local Version = State.Version

		local Success, Message = pcall(function()
			local Settings = UiBlur.Settings
			local Source = State.Source
			if not State.Parent or not Source then
				return
			end

			local Values: Props = table.clone(Self.Props)
			SyncPictures(Self, Values)
			local SliceStart = os.clock()
			local Budget = if State.Cover == nil then Settings.FirstSliceBudget else Settings.SliceBudget
			local function CheckTick(): boolean
				if os.clock() - SliceStart > Budget then
					task.wait()
					SliceStart = os.clock()
				end
				return State.Alive and State.Version == Version
			end

			local Preview = State.Cover ~= nil and os.clock() - State.LastChange < Settings.PreviewWindow
			State.WasPreview = Preview

			local AreaSize = Source.Area.AbsoluteSize
			local SourceWidth, SourceHeight = Source.SourceWidth, Source.SourceHeight
			local ScaleX, ScaleY = SourceWidth / AreaSize.X, SourceHeight / AreaSize.Y

			local SigmaSource = Values.Blur * (ScaleX + ScaleY) * 0.5
			local Wanted = math.max(1, math.floor(SigmaSource / Settings.SigmaTarget))
			if Preview then
				Wanted *= Settings.PreviewFactor
			end
			Wanted = math.max(Wanted, math.ceil(math.sqrt(SourceWidth * SourceHeight / Settings.MaxPixels)))
			local Factor = 1
			while Factor < Wanted do
				Factor *= 2
			end

			local Work = Source:GetWork(Factor, CheckTick) :: Work?
			if not Work then
				return
			end

			local WorkWidth, WorkHeight = Work.Width, Work.Height
			local Total = WorkWidth * WorkHeight
			local Red, Green, Blue = table.clone(Work.Red), table.clone(Work.Green), table.clone(Work.Blue)
			local Alpha: Channel? = if Work.Alpha then table.clone(Work.Alpha) else nil

			local SigmaWork = SigmaSource / Factor
			if SigmaWork >= 0.35 then
				if not GaussianBlur(Red, Green, Blue, WorkWidth, WorkHeight, SigmaWork, CheckTick) then
					return
				end
				if Alpha and not BlurChannel(Alpha, WorkWidth, WorkHeight, SigmaWork, CheckTick) then
					return
				end
			end

			local ColorMatrix, IsIdentity = BuildMatrix(Values)
			local M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12 = table.unpack(ColorMatrix, 1, 12)
			local Output = buffer.create(Total * 4)
			local OpaqueAlpha = 255 * 16777216
			local WriteOffset = 0

			for Index = 1, Total do
				if Index % 8192 == 0 and not CheckTick() then
					return
				end
				local R, G, B = Red[Index], Green[Index], Blue[Index]
				local PackedA = OpaqueAlpha
				if Alpha then
					local Opacity = Alpha[Index]
					local Inverse = if Opacity > 0.001 then 1 / Opacity else 0
					R, G, B = R * Inverse, G * Inverse, B * Inverse
					PackedA = math.floor(math.clamp(Opacity, 0, 1) * 255 + 0.5) * 16777216
				end
				if not IsIdentity then
					R, G, B = M1 * R + M2 * G + M3 * B + M4, M5 * R + M6 * G + M7 * B + M8, M9 * R + M10 * G + M11 * B + M12
				end
				local PackedR = math.floor(math.clamp(R, 0, 1) * 255 + 0.5)
				local PackedG = math.floor(math.clamp(G, 0, 1) * 255 + 0.5)
				local PackedB = math.floor(math.clamp(B, 0, 1) * 255 + 0.5)
				buffer.writeu32(Output, WriteOffset, PackedR + PackedG * 256 + PackedB * 65536 + PackedA)
				WriteOffset += 4
			end

			if not CheckTick() then
				return
			end

			local WorkSize = Vector2.new(WorkWidth, WorkHeight)
			if not State.Output or State.OutputWidth ~= WorkWidth or State.OutputHeight ~= WorkHeight then
				local Created = AssetService:CreateEditableImage({ Size = WorkSize })
				Created:WritePixelsBuffer(Vector2.zero, WorkSize, Output)
				local Previous = State.Output
				State.Output = Created
				State.OutputWidth, State.OutputHeight = WorkWidth, WorkHeight
				State.Image.ImageContent = Content.fromObject(Created)
				if Previous then
					task.delay(0.15, function()
						Previous:Destroy()
					end)
				end
			else
				State.Output:WritePixelsBuffer(Vector2.zero, WorkSize, Output)
			end

			State.Cover = {
				Width = WorkWidth * Factor / ScaleX,
				Height = WorkHeight * Factor / ScaleY,
			}
			PlaceImage(Self)
		end)

		State.Busy = false
		if not Success then
			Library:Alert("UiBlur: processing failed - " .. tostring(Message))
		end
	end

	local function Update(Self: any)
		local State = Self.State
		local Frame, Source = State.Parent, State.Source
		if not State.Enabled or not Frame or not Source or not Frame.Visible then
			return
		end
		if not Source.Area.Parent then
			return
		end

		local AreaSize = Source.Area.AbsoluteSize
		if AreaSize.X < 1 or AreaSize.Y < 1 or Frame.AbsoluteSize.X < 1 or Frame.AbsoluteSize.Y < 1 then
			return
		end

		if AreaSize ~= State.LastAreaSize then
			State.LastAreaSize = AreaSize
			MarkDirty(Self)
		end

		PlaceImage(Self)

		if State.Busy then
			return
		end

		local Settings = UiBlur.Settings
		local NeedsRefine = State.WasPreview and os.clock() - State.LastChange >= Settings.PreviewWindow
		if State.Dirty or NeedsRefine or not State.Cover then
			task.spawn(Process, Self)
		end
	end

	local function StartLoop()
		if LoopConnection then
			return
		end
		LoopConnection = PreRender:Connect(function()
			for Item in Active do
				Update(Item)
			end
		end)
	end

	local function StopLoopIfIdle()
		if LoopConnection and next(Active) == nil then
			LoopConnection:Disconnect()
			LoopConnection = nil
		end
	end

	Element.__index = function(Self: any, Key: string): any
		local Method = Element[Key]
		if Method ~= nil then
			return Method
		end
		if Defaults[Key :: any] ~= nil then
			return Self.Props[Key]
		end
		local State = Self.State
		if Key == "Parent" then
			return State.Parent
		elseif Key == "Backdrop" then
			return State.BackdropValue
		elseif Key == "Enabled" then
			return State.Enabled
		elseif Key == "ClassName" then
			return "UiBlur"
		end
		return nil
	end

	Element.__newindex = function(Self: any, Key: string, Value: any)
		if Defaults[Key :: any] ~= nil or SpecialProps[Key] then
			Element.Set(Self, { [Key] = Value })
		else
			error(("%s is not a valid member of UiBlur"):format(tostring(Key)), 2)
		end
	end

	function Element.Set(Self: any, Values: { [string]: any })
		local State, Props = Self.State, Self.Props
		local PixelChanged = false

		for Key, Value in Values do
			if Key == "Parent" then
				AttachParent(Self, Value)
			elseif Key == "Backdrop" then
				AttachBackdrop(Self, Value)
			elseif Key == "Enabled" then
				State.Enabled = Value == true
				if State.Enabled then
					MarkDirty(Self)
				end
			else
				local Default = (Defaults :: any)[Key]
				if Default == nil then
					Library:Alert(("UiBlur: %s is not a valid property"):format(tostring(Key)))
				else
					if typeof(Default) == "number" then
						Value = ClampProp(Key, tonumber(Value) or Default)
					end
					if Props[Key] ~= Value then
						Props[Key] = Value
						if PixelProps[Key] then
							PixelChanged = true
						end
					end
				end
			end
		end

		ApplyVisuals(Self)
		if PixelChanged then
			MarkDirty(Self)
		end
	end

	function Element.IsReady(Self: any): boolean
		return Self.State.Cover ~= nil and Self.State.Image.Visible
	end

	function Element.Tween(
		Self: any,
		Goal: { [string]: any },
		Duration: number?,
		Style: Enum.EasingStyle?,
		Direction: Enum.EasingDirection?
	)
		local State = Self.State
		State.TweenId += 1
		local Id = State.TweenId
		if not Duration or Duration <= 0 then
			Element.Set(Self, Goal)
			return
		end

		local Start = {}
		for Key in Goal do
			Start[Key] = Self.Props[Key]
		end

		task.spawn(function()
			local Elapsed = 0
			while State.Alive and State.TweenId == Id do
				Elapsed += PreRender:Wait()
				local Progress = math.min(Elapsed / Duration, 1)
				local Alpha = TweenService:GetValue(
					Progress,
					Style or Enum.EasingStyle.Quad,
					Direction or Enum.EasingDirection.Out
				)
				local Step = {}
				for Key, Target in Goal do
					local From = Start[Key]
					if From == nil then
						Step[Key] = Target
					elseif typeof(From) == "Color3" then
						Step[Key] = From:Lerp(Target, Alpha)
					else
						Step[Key] = From + (Target - From) * Alpha
					end
				end
				Element.Set(Self, Step)
				if Progress >= 1 then
					break
				end
			end
		end)
	end

	function Element.Destroy(Self: any)
		local State = Self.State
		if not State.Alive then
			return
		end
		State.Alive = false
		State.Version += 1
		State.TweenId += 1
		Active[Self] = nil
		if State.Source then
			State.Source.Elements[Self] = nil
		end
		StopLoopIfIdle()
		if State.Output then
			State.Output:Destroy()
			State.Output = nil
		end
		if State.OwnedSource then
			State.OwnedSource:Destroy()
			State.OwnedSource = nil
		end
		State.Layer:Destroy()
	end

	function UiBlur.new(): any
		assert(RunService:IsClient(), "UiBlur only runs on the client")

		local Layer = Instance.new("CanvasGroup")
		Layer.Name = "UiBlurLayer"
		Layer.BackgroundTransparency = 1
		Layer.BorderSizePixel = 0
		Layer.Size = UDim2.fromScale(1, 1)
		Layer.ZIndex = 0
		Layer.Active = false
		Layer.Selectable = false

		local Image = Instance.new("ImageLabel")
		Image.Name = "Backdrop"
		Image.BackgroundTransparency = 1
		Image.BorderSizePixel = 0
		Image.ScaleType = Enum.ScaleType.Stretch
		Image.ZIndex = 1
		Image.Visible = false
		Image.Parent = Layer

		local Pictures = Instance.new("Frame")
		Pictures.Name = "Pictures"
		Pictures.BackgroundTransparency = 1
		Pictures.BorderSizePixel = 0
		Pictures.ZIndex = 0
		Pictures.Parent = Layer

		local TintFrame = Instance.new("Frame")
		TintFrame.Name = "Tint"
		TintFrame.BorderSizePixel = 0
		TintFrame.Size = UDim2.fromScale(1, 1)
		TintFrame.ZIndex = 2
		TintFrame.Parent = Layer

		local TileSize = UiBlur.Settings.NoiseTileSize
		local NoiseLabel = Instance.new("ImageLabel")
		NoiseLabel.Name = "Noise"
		NoiseLabel.BackgroundTransparency = 1
		NoiseLabel.BorderSizePixel = 0
		NoiseLabel.Size = UDim2.fromScale(1, 1)
		NoiseLabel.ScaleType = Enum.ScaleType.Tile
		NoiseLabel.TileSize = UDim2.fromOffset(TileSize, TileSize)
		NoiseLabel.ZIndex = 3
		NoiseLabel.Visible = false
		NoiseLabel.Parent = Layer

		local Self = setmetatable({
			Props = table.clone(Defaults),
			State = {
				Layer = Layer,
				Image = Image,
				Pictures = Pictures,
				PictureSource = nil,
				PictureCopies = {},
				TintFrame = TintFrame,
				NoiseLabel = NoiseLabel,
				NoiseReady = false,
				Parent = nil,
				Source = nil,
				BackdropValue = nil,
				BackdropToken = 0,
				Corner = nil,
				Output = nil,
				OutputWidth = 0,
				OutputHeight = 0,
				Cover = nil,
				LastAreaSize = Vector2.zero,
				Enabled = true,
				Dirty = true,
				WasPreview = false,
				LastChange = 0,
				Busy = false,
				Version = 0,
				TweenId = 0,
				Alive = true,
			},
		}, Element)

		Layer.Destroying:Connect(function()
			Element.Destroy(Self)
		end)

		Active[Self] = true
		StartLoop()
		ApplyVisuals(Self)

		if DefaultBackdrop ~= nil then
			AttachBackdrop(Self, DefaultBackdrop)
		end

		return Self
	end

	return UiBlur
end)()

local Creator = {
	Registry = setmetatable({}, { __mode = "k" }) :: { [Instance]: Registered },
	Icons = setmetatable({}, { __mode = "k" }),
	Texts = setmetatable({}, { __mode = "k" }),
	Signals = {} :: { RBXScriptConnection },
	TransparencyMotors = setmetatable({}, { __mode = "k" }) :: { [any]: boolean },
	ClassAliases = {
		Corner = "UICorner",
		Gradient = "UIGradient",
		Stroke = "UIStroke",
		Padding = "UIPadding",
		Scale = "UIScale",
		ListLayout = "UIListLayout",
		GridLayout = "UIGridLayout",
		TableLayout = "UITableLayout",
		PageLayout = "UIPageLayout",
		FlexItem = "UIFlexItem",
		AspectRatio = "UIAspectRatioConstraint",
		SizeConstraint = "UISizeConstraint",
		TextSizeConstraint = "UITextSizeConstraint",
	} :: { [string]: string },
	DefaultProperties = {
		ScreenGui = {
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
		Frame = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
		ScrollingFrame = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
			ScrollBarImageColor3 = Color3.new(0, 0, 0),
		},
		TextLabel = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 1,
			TextSize = 14,
		},
		TextButton = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			AutoButtonColor = false,
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 14,
		},
		TextBox = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			ClearTextOnFocus = false,
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 14,
		},
		ImageLabel = {
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
		ImageButton = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			AutoButtonColor = false,
		},
		CanvasGroup = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		},
	} :: { [string]: Props },
}

local SpringOptions = { Frequency = 8 }
local PruneThreshold = 256

local function PruneSignals()
	local signals = Creator.Signals
	local write = 0

	for read = 1, #signals do
		local connection = signals[read]
		if not connection.Connected then
			continue
		end
		write += 1
		signals[write] = connection
	end

	for index = #signals, write + 1, -1 do
		signals[index] = nil
	end

	PruneThreshold = math.max(256, write * 2)
end

function Creator.AddSignal(signal: RBXScriptSignal, callback: (...any) -> ()): RBXScriptConnection
	local signals = Creator.Signals
	if #signals >= PruneThreshold then
		PruneSignals()
	end

	local connection = signal:Connect(callback)
	signals[#signals + 1] = connection
	return connection
end

Creator.Surfaces = setmetatable({}, { __mode = "k" })

function Creator.RegisterSurface(Root: GuiObject): GuiObject
	Creator.Surfaces[Root] = true
	return Root
end

function Creator.GetSurface(Object: Instance): GuiObject?
	local Current: Instance? = Object
	while Current do
		if Creator.Surfaces[Current] then
			return Current :: GuiObject
		end
		Current = Current.Parent
	end
	return nil
end

local HoverStates = setmetatable({}, { __mode = "k" })

local HoverEnterDelay = 0.03
local HoverLeaveDelay = 0.06
local HoverPollInterval = 0.05
local HoverCoverStrikes = 2

local function IsShown(Object: GuiObject): boolean
	local Current: Instance? = Object
	while Current do
		if Current:IsA("GuiObject") and not Current.Visible then
			return false
		end
		if Current:IsA("LayerCollector") then
			return not Current:IsA("ScreenGui") or Current.Enabled
		end
		Current = Current.Parent
	end
	return false
end

local ActiveTouch: InputObject? = nil
local FrozenInputs: { [InputObject]: boolean } = {}
local SurfaceCovered = setmetatable({}, { __mode = "k" })
local CoverConnection: RBXScriptConnection? = nil
local ActiveHovers = setmetatable({}, { __mode = "k" })
local LastTouchPoint: Vector2? = nil
local LastTouchClock = 0
local PressState = setmetatable({}, { __mode = "k" })
local UpHandlers = setmetatable({}, { __mode = "k" })

Creator.SurfaceLocks = setmetatable({}, { __mode = "k" })

function Creator.GetPointer(Object: Instance?, Input: InputObject?): Vector2
	local Touch: InputObject? = nil
	if Input == nil or Input.UserInputType == Enum.UserInputType.Touch then
		Touch = Input or ActiveTouch
	end
	if
		Touch
		and Touch.UserInputState ~= Enum.UserInputState.End
		and Touch.UserInputState ~= Enum.UserInputState.Cancel
	then
		return Vector2.new(Touch.Position.X, Touch.Position.Y)
	end
	if
		Input == nil
		and LastTouchPoint
		and (not UserInputService.MouseEnabled or os.clock() - LastTouchClock < 0.75)
	then
		return LastTouchPoint
	end
	local Mouse = UserInputService:GetMouseLocation()
	local Gui = Object and Object:FindFirstAncestorOfClass("ScreenGui")
	if Gui and not Gui.IgnoreGuiInset then
		Mouse -= GuiService:GetGuiInset()
	end
	return Mouse
end

local function RectContains(Object: GuiObject, Point: Vector2, Margin: number?): boolean
	local Extra = Margin or 0
	local Position, Size = Object.AbsolutePosition, Object.AbsoluteSize
	return Point.X >= Position.X - Extra
		and Point.X <= Position.X + Size.X + Extra
		and Point.Y >= Position.Y - Extra
		and Point.Y <= Position.Y + Size.Y + Extra
end

local function VisibleRect(Object: GuiObject): (Vector2, Vector2)
	local Position, Size = Object.AbsolutePosition, Object.AbsoluteSize
	local Left, Top = Position.X, Position.Y
	local Right, Bottom = Left + Size.X, Top + Size.Y
	local Current = Object.Parent
	while Current and not Current:IsA("LayerCollector") do
		if Current:IsA("GuiObject") and (Current.ClipsDescendants or Current:IsA("CanvasGroup")) then
			local ClipPosition, ClipSize = Current.AbsolutePosition, Current.AbsoluteSize
			Left = math.max(Left, ClipPosition.X)
			Top = math.max(Top, ClipPosition.Y)
			Right = math.min(Right, ClipPosition.X + ClipSize.X)
			Bottom = math.min(Bottom, ClipPosition.Y + ClipSize.Y)
		end
		Current = Current.Parent
	end
	return Vector2.new(Left, Top), Vector2.new(Right, Bottom)
end

local function PointerInside(Object: GuiObject, Input: InputObject?): boolean
	if
		Input
		and Input.UserInputType == Enum.UserInputType.Touch
		and (Input.UserInputState == Enum.UserInputState.End or Input.UserInputState == Enum.UserInputState.Cancel)
	then
		return false
	end
	local Point = Creator.GetPointer(Object, Input)
	local Min, Max = VisibleRect(Object)
	return Point.X >= Min.X - 1 and Point.X <= Max.X + 1 and Point.Y >= Min.Y - 1 and Point.Y <= Max.Y + 1
end

local function ChainOf(Object: Instance): { Instance }
	local Chain = {}
	local Current: Instance? = Object
	while Current do
		table.insert(Chain, 1, Current)
		Current = Current.Parent
	end
	return Chain
end

local function OrderOf(Chain: { Instance }, Depth: number): (number, number)
	local Node = Chain[Depth]
	local Parent = Node.Parent
	local Index = if Parent then (table.find(Parent:GetChildren(), Node) or 0) else 0
	local Layer = 0
	for Step = Depth, #Chain do
		local Current = Chain[Step]
		if Current:IsA("GuiObject") then
			Layer = Current.ZIndex
			break
		end
	end
	return Layer, Index
end

local function DrawsAbove(First: Instance, Second: Instance): boolean
	if First:IsDescendantOf(Second) then
		return true
	end
	if Second:IsDescendantOf(First) then
		return false
	end
	local ChainA, ChainB = ChainOf(First), ChainOf(Second)
	local Depth = 1
	while ChainA[Depth] and ChainA[Depth] == ChainB[Depth] do
		Depth += 1
	end
	local NodeA, NodeB = ChainA[Depth], ChainB[Depth]
	if not NodeA or not NodeB then
		return false
	end
	if NodeA:IsA("ScreenGui") and NodeB:IsA("ScreenGui") and NodeA.DisplayOrder ~= NodeB.DisplayOrder then
		return NodeA.DisplayOrder > NodeB.DisplayOrder
	end
	local LayerA, IndexA = OrderOf(ChainA, Depth)
	local LayerB, IndexB = OrderOf(ChainB, Depth)
	if LayerA ~= LayerB then
		return LayerA > LayerB
	end
	return IndexA > IndexB
end

function Creator.TopSurface(Point: Vector2): GuiObject?
	local Top: GuiObject? = nil
	for Surface in next, Creator.Surfaces do
		if Surface.Parent and IsShown(Surface) and RectContains(Surface, Point) then
			if not Top or DrawsAbove(Surface, Top) then
				Top = Surface
			end
		end
	end
	return Top
end

local function BlocksInput(Hit: GuiObject): boolean
	if Hit.BackgroundTransparency < 0.98 then
		return true
	end
	if Hit:IsA("ViewportFrame") then
		return true
	end
	if Hit:IsA("ImageLabel") then
		return Hit.Image ~= "" and Hit.ImageTransparency < 0.98
	end
	if Hit:IsA("TextLabel") then
		return Hit.Text ~= "" and Hit.TextTransparency < 0.98
	end
	return false
end

local function IsPointerless(): boolean
	local Last = UserInputService:GetLastInputType()
	return Last == Enum.UserInputType.Keyboard
		or (Last.Value >= Enum.UserInputType.Gamepad1.Value and Last.Value <= Enum.UserInputType.Gamepad8.Value)
end

function Creator.IsOccluded(Object: GuiObject, Point: Vector2?): boolean
	if not Object.Parent or IsPointerless() then
		return false
	end

	local Pointer = Point or Creator.GetPointer(Object)
	local Min, Max = VisibleRect(Object)
	if Pointer.X < Min.X - 1 or Pointer.X > Max.X + 1 or Pointer.Y < Min.Y - 1 or Pointer.Y > Max.Y + 1 then
		return false
	end

	local Own = Creator.GetSurface(Object)
	if Own then
		local Top = Creator.TopSurface(Pointer)
		if Top and Top ~= Own then
			return true
		end
	end

	local Gui = Object:FindFirstAncestorOfClass("ScreenGui")
	local Container = Gui and Gui.Parent
	if not Container or not Container:IsA("BasePlayerGui") then
		return false
	end
	local Success, Hits = pcall(Container.GetGuiObjectsAtPosition, Container, Pointer.X, Pointer.Y)
	if not Success then
		return false
	end
	for _, Hit in Hits do
		if Hit == Object or Hit:IsDescendantOf(Object) then
			return false
		end
		if
			not Hit:IsAncestorOf(Object)
			and Creator.GetSurface(Hit) ~= Own
			and RectContains(Hit, Pointer, 1)
			and (Hit.Active or Hit:IsA("GuiButton") or Hit:IsA("TextBox") or BlocksInput(Hit))
		then
			return true
		end
	end
	return false
end

function Creator.IsTopmost(Object: GuiObject, Point: Vector2?): boolean
	local Pointer = Point or Creator.GetPointer(Object)
	local Min, Max = VisibleRect(Object)
	if Pointer.X < Min.X - 1 or Pointer.X > Max.X + 1 or Pointer.Y < Min.Y - 1 or Pointer.Y > Max.Y + 1 then
		return true
	end

	local Own = Creator.GetSurface(Object)
	if Own then
		local Top = Creator.TopSurface(Pointer)
		if Top and Top ~= Own then
			return false
		end
	end

	local Gui = Object:FindFirstAncestorOfClass("ScreenGui")
	local Container = Gui and Gui.Parent
	if not Container or not Container:IsA("BasePlayerGui") then
		return true
	end

	local Success, Hits = pcall(Container.GetGuiObjectsAtPosition, Container, Pointer.X, Pointer.Y)
	if not Success then
		return true
	end
	for _, Hit in Hits do
		if Hit == Object or Hit:IsDescendantOf(Object) then
			return true
		end
		if RectContains(Hit, Pointer, 1) and not Hit:IsAncestorOf(Object) then
			if Hit.Active or Hit:IsA("GuiButton") or Hit:IsA("TextBox") then
				return false
			end
			if Creator.GetSurface(Hit) ~= Own and BlocksInput(Hit) then
				return false
			end
		end
	end
	return true
end

function Creator.AcceptsInput(Object: GuiObject, Input: InputObject?): boolean
	return Creator.IsTopmost(Object, Creator.GetPointer(Object, Input))
end

local function RunRelease(Object: Instance)
	local List = UpHandlers[Object]
	if List then
		for _, Handler in List do
			pcall(Handler)
		end
	end
	local Hover = HoverStates[Object]
	if Hover and not Hover.Hovered and Hover.Reset then
		Hover.Reset()
	end
end

local function FlushPresses()
	for Object, State in next, PressState do
		PressState[Object] = nil
		if not State.Released then
			RunRelease(Object)
		end
	end
end

local function CancelWithin(Surface: GuiObject)
	for Object, State in next, PressState do
		if Object == Surface or Object:IsDescendantOf(Surface) then
			PressState[Object] = nil
			if not State.Released then
				RunRelease(Object)
			end
		end
	end
	for Object in next, ActiveHovers do
		if Object == Surface or Object:IsDescendantOf(Surface) then
			local State = HoverStates[Object]
			if State then
				State.Inside = false
				State.Reset()
			else
				ActiveHovers[Object] = nil
			end
		end
	end
end

local function ApplySurfaceState(Surface: GuiObject)
	local Allowed = not Creator.SurfaceLocks[Surface] and not SurfaceCovered[Surface]
	if Surface.Interactable ~= Allowed then
		pcall(function()
			Surface.Interactable = Allowed
		end)
	end
end

function Creator.SetSurfaceLock(Surface: GuiObject, Locked: boolean)
	Creator.SurfaceLocks[Surface] = if Locked then true else nil
	ApplySurfaceState(Surface)
end

local function SyncCoverLoop() end

local function ReleaseCovers()
	for Surface in next, SurfaceCovered do
		SurfaceCovered[Surface] = nil
		ApplySurfaceState(Surface)
	end
	SyncCoverLoop()
end

function Creator.ArbitrateSurfaces(Input: InputObject?)
	local Point = Creator.GetPointer(nil, Input)
	local Top = Creator.TopSurface(Point)
	for Surface in next, Creator.Surfaces do
		local Covered = false
		if Top and Top ~= Surface and not Surface:IsAncestorOf(Top) then
			Covered = Surface.Parent ~= nil and IsShown(Surface) and RectContains(Surface, Point)
		end
		if (SurfaceCovered[Surface] == true) ~= Covered then
			SurfaceCovered[Surface] = if Covered then true else nil
			if Covered then
				CancelWithin(Surface)
			end
			ApplySurfaceState(Surface)
		end
	end
	SyncCoverLoop()
end

local function PurgeFrozen()
	for Input in next, FrozenInputs do
		if Input.UserInputState == Enum.UserInputState.End or Input.UserInputState == Enum.UserInputState.Cancel then
			FrozenInputs[Input] = nil
		end
	end
end

local function StepCovers()
	PurgeFrozen()
	if next(FrozenInputs) then
		return
	end
	if ActiveTouch == nil and not UserInputService.MouseEnabled then
		ReleaseCovers()
	else
		Creator.ArbitrateSurfaces(nil)
	end
end

function SyncCoverLoop()
	if next(SurfaceCovered) then
		if not CoverConnection then
			CoverConnection = Creator.AddSignal(PreRender, StepCovers)
		end
	elseif CoverConnection then
		CoverConnection:Disconnect()
		CoverConnection = nil
	end
end

Creator.AddSignal(UserInputService.InputBegan, function(Input)
	local Type = Input.UserInputType
	if Type == Enum.UserInputType.Touch then
		ActiveTouch = Input
		LastTouchPoint = Vector2.new(Input.Position.X, Input.Position.Y)
		LastTouchClock = os.clock()
	end
	if Type == Enum.UserInputType.Touch or Type == Enum.UserInputType.MouseButton1 then
		Creator.ArbitrateSurfaces(if Type == Enum.UserInputType.Touch then Input else nil)
		FrozenInputs[Input] = true
	end
end)

Creator.AddSignal(UserInputService.InputChanged, function(Input)
	if Input.UserInputType == Enum.UserInputType.Touch then
		LastTouchPoint = Vector2.new(Input.Position.X, Input.Position.Y)
		LastTouchClock = os.clock()
	end
	PurgeFrozen()
	if next(FrozenInputs) then
		return
	end
	local Type = Input.UserInputType
	if Type == Enum.UserInputType.MouseMovement or Type == Enum.UserInputType.MouseWheel then
		Creator.ArbitrateSurfaces(nil)
	elseif Type == Enum.UserInputType.Touch then
		Creator.ArbitrateSurfaces(Input)
	end
end)

Creator.AddSignal(UserInputService.InputEnded, function(Input)
	if Input.UserInputType == Enum.UserInputType.Touch then
		LastTouchPoint = Vector2.new(Input.Position.X, Input.Position.Y)
		LastTouchClock = os.clock()
	end
	if Input == ActiveTouch then
		ActiveTouch = nil
	end
	if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
		task.defer(FlushPresses)
	end
	if FrozenInputs[Input] then
		FrozenInputs[Input] = nil
		if Input.UserInputType == Enum.UserInputType.Touch then
			ReleaseCovers()
		else
			Creator.ArbitrateSurfaces(nil)
		end
	end
end)

Creator.AddSignal(UserInputService.WindowFocusReleased, function()
	table.clear(FrozenInputs)
	ActiveTouch = nil
	ReleaseCovers()
	FlushPresses()
end)

local Scrollers = setmetatable({}, { __mode = "k" })

function Creator.GuardScroller(Frame: ScrollingFrame)
	if Scrollers[Frame] then
		return
	end
	local Entry = { Held = false, Previous = true, Last = 0 }
	Scrollers[Frame] = Entry

	local function Restore()
		if Entry.Held then
			Entry.Held = false
			Frame.ScrollingEnabled = Entry.Previous
		end
	end

	local function Check(Input: InputObject, Force: boolean)
		local Now = os.clock()
		if not Force and Now - Entry.Last < 0.05 then
			return
		end
		Entry.Last = Now
		if Creator.AcceptsInput(Frame, Input) then
			Restore()
		elseif not Entry.Held then
			Entry.Held = true
			Entry.Previous = Frame.ScrollingEnabled
			Frame.ScrollingEnabled = false
		end
	end

	Creator.AddSignal(Frame.InputBegan, function(Input)
		local Type = Input.UserInputType
		if Type == Enum.UserInputType.Touch or Type == Enum.UserInputType.MouseButton1 then
			Check(Input, true)
		end
	end)
	Creator.AddSignal(Frame.InputChanged, function(Input)
		local Type = Input.UserInputType
		if Type == Enum.UserInputType.MouseWheel then
			Check(Input, true)
		elseif Type == Enum.UserInputType.MouseMovement or Type == Enum.UserInputType.Touch then
			Check(Input, false)
		end
	end)
	Creator.AddSignal(Frame.MouseLeave, Restore)
	Creator.AddSignal(Frame:GetPropertyChangedSignal("Visible"), Restore)
end
local function GetHoverState(Object: GuiObject)
	local State = HoverStates[Object]
	if State then
		return State
	end

	State = {
		Enter = {},
		Leave = {},
		Inside = false,
		Hovered = false,
		Input = nil,
		Last = 0,
		EnterToken = 0,
		LeaveToken = 0,
		PollToken = 0,
		Strikes = 0,
		X = 0,
		Y = 0,
	}
	HoverStates[Object] = State

	local function Fire(List)
		for _, Callback in List do
			Callback(State.X, State.Y)
		end
	end

	local function Drop()
		State.PollToken += 1
		State.EnterToken += 1
		State.LeaveToken += 1
		State.Strikes = 0
		ActiveHovers[Object] = nil
		if State.Hovered then
			State.Hovered = false
			Fire(State.Leave)
		end
	end

	function State.Reset()
		State.PollToken += 1
		State.EnterToken += 1
		State.LeaveToken += 1
		State.Strikes = 0
		ActiveHovers[Object] = nil
		State.Hovered = false
		Fire(State.Leave)
	end

	local function Covered(): boolean
		return not Creator.IsTopmost(Object, Creator.GetPointer(Object, State.Input))
	end

	local function Poll()
		State.PollToken += 1
		local Token = State.PollToken
		task.spawn(function()
			while State.Hovered and State.PollToken == Token do
				task.wait(HoverPollInterval)
				if not State.Hovered or State.PollToken ~= Token then
					return
				end
				if not Object.Parent or not IsShown(Object) or not PointerInside(Object, State.Input) then
					Drop()
					return
				end
				if Covered() then
					State.Strikes += 1
					if State.Strikes >= HoverCoverStrikes then
						Drop()
						return
					end
				else
					State.Strikes = 0
				end
			end
		end)
	end

	local function Confirm()
		if State.Hovered or not State.Inside then
			return
		end
		if not IsShown(Object) or not PointerInside(Object, State.Input) or Covered() then
			return
		end
		State.Hovered = true
		State.Strikes = 0
		ActiveHovers[Object] = Drop
		Fire(State.Enter)
		Poll()
	end

	local function Request()
		if State.Hovered then
			return
		end
		State.EnterToken += 1
		local Token = State.EnterToken
		task.delay(HoverEnterDelay, function()
			if State.EnterToken == Token then
				Confirm()
			end
		end)
	end

	Creator.AddSignal(Object.MouseEnter, function(X, Y)
		State.Inside = true
		State.X, State.Y = X, Y
		State.LeaveToken += 1
		Request()
	end)

	Creator.AddSignal(Object.MouseLeave, function(X, Y)
		State.Inside = false
		State.X, State.Y = X, Y
		State.EnterToken += 1
		if not State.Hovered then
			return
		end
		State.LeaveToken += 1
		local Token = State.LeaveToken
		task.delay(HoverLeaveDelay, function()
			if State.LeaveToken ~= Token or State.Inside or not State.Hovered then
				return
			end
			if Object.Parent and IsShown(Object) and PointerInside(Object, State.Input) and not Covered() then
				State.Inside = true
				return
			end
			Drop()
		end)
	end)

	Creator.AddSignal(Object.MouseMoved, function(X, Y)
		State.X, State.Y = X, Y
		if State.Hovered then
			return
		end
		local Now = os.clock()
		if Now - State.Last < 0.04 then
			return
		end
		State.Last = Now
		State.Inside = true
		Request()
	end)

	Creator.AddSignal(Object.InputBegan, function(Input)
		if
			Input.UserInputType == Enum.UserInputType.Touch
			or Input.UserInputType == Enum.UserInputType.MouseMovement
		then
			State.Input = Input
		end
	end)

	Creator.AddSignal(Object.InputEnded, function(Input)
		if Input.UserInputType == Enum.UserInputType.Touch and Input == State.Input then
			State.Inside = false
			Drop()
		end
	end)

	return State
end

Creator.AddSignal(UserInputService.InputEnded, function(Input)
	if Input.UserInputType ~= Enum.UserInputType.Touch then
		return
	end
	for Object, Drop in next, ActiveHovers do
		local State = HoverStates[Object]
		if State and State.Input == Input then
			State.Inside = false
			Drop()
		end
	end
end)

Creator.AddSignal(UserInputService.WindowFocusReleased, function()
	for Object, Drop in next, ActiveHovers do
		local State = HoverStates[Object]
		if State then
			State.Inside = false
		end
		Drop()
	end
end)
function Creator.OnHoverEnter(Object: GuiObject, Callback: (...any) -> ())
	table.insert(GetHoverState(Object).Enter, Callback)
end

function Creator.OnHoverLeave(Object: GuiObject, Callback: (...any) -> ())
	table.insert(GetHoverState(Object).Leave, Callback)
end

function Creator.AddGuarded(Object: GuiButton, Event: string, Callback: (...any) -> ()): RBXScriptConnection
	local Signal = (Object :: any)[Event]
	if Event == "MouseButton1Down" then
		return Creator.AddSignal(Signal, function(...)
			local Args = table.pack(...)
			task.defer(function()
				if not Object.Parent or not Creator.AcceptsInput(Object) then
					return
				end
				PressState[Object] = { Released = false }
				Callback(table.unpack(Args, 1, Args.n))
			end)
		end)
	elseif Event == "MouseButton1Up" then
		local List = UpHandlers[Object]
		if not List then
			List = {}
			UpHandlers[Object] = List
			Object.Destroying:Connect(function()
				UpHandlers[Object] = nil
				PressState[Object] = nil
			end)
		end
		table.insert(List, Callback)
		return Creator.AddSignal(Signal, function(...)
			local State = PressState[Object]
			if State then
				State.Released = true
			elseif Creator.IsOccluded(Object) then
				return
			end
			Callback(...)
		end)
	end
	return Creator.AddSignal(Signal, function(...)
		if Creator.IsOccluded(Object) then
			return
		end
		Callback(...)
	end)
end

function Creator.Disconnect()
	local signals = Creator.Signals
	for index = #signals, 1, -1 do
		signals[index]:Disconnect()
		signals[index] = nil
	end
	PruneThreshold = 256
end

function Creator.GetThemeProperty(Property: string): any
	local Theme = ThemeResolver.Resolve(Library.Theme, Library.ThemeMode)
	local Value = Theme and Theme[Property]
	if Value == nil then
		return Themes.Dark[Property]
	end
	return Value
end

local GradientLayers = setmetatable({}, { __mode = "k" })

local function ApplySequence(Object: any, Value: ColorSequence)
	local Layer = GradientLayers[Object]
	if not Layer then
		local Host = Object
		if Object:IsA("CanvasGroup") then
			Host = Instance.new("Frame")
			Host.Name = "ThemePaint"
			Host.Size = UDim2.fromScale(1, 1)
			Host.BorderSizePixel = 0
			Host.ZIndex = 0
			Host.BackgroundTransparency = Object.BackgroundTransparency
			Object.BackgroundTransparency = 1
			Host.Parent = Object
		end
		local Gradient = Instance.new("UIGradient")
		Gradient.Name = "ThemeGradient"
		Gradient.Rotation = 60
		Gradient.Parent = Host
		Layer = { Host = Host, Gradient = Gradient }
		GradientLayers[Object] = Layer
	end
	Layer.Host.BackgroundColor3 = Color3.new(1, 1, 1)
	Layer.Gradient.Color = Value
end

local function ClearSequence(Object: any)
	local Layer = GradientLayers[Object]
	if not Layer then
		return
	end
	GradientLayers[Object] = nil
	if Layer.Host ~= Object then
		Object.BackgroundTransparency = Layer.Host.BackgroundTransparency
		Layer.Host:Destroy()
	else
		Layer.Gradient:Destroy()
	end
end

local function ApplyProperty(Object: any, Property: string, Value: any)
	local IsGradientColor = Property == "Color" and Object:IsA("UIGradient")

	if typeof(Value) == "ColorSequence" and not IsGradientColor then
		if Property == "BackgroundColor3" then
			ApplySequence(Object, Value)
			return
		end
		Value = Value.Keypoints[1].Value
	elseif Property == "BackgroundColor3" and GradientLayers[Object] then
		ClearSequence(Object)
	end

	if IsGradientColor and typeof(Value) == "Color3" then
		Value = ColorSequence.new(Value)
	end

	if Object[Property] ~= Value then
		Object[Property] = Value
	end
end

local function ApplyTheme(Object: Instance, Properties: ThemeTag, ResolvedTheme: any?)
	local Theme = ResolvedTheme or ThemeResolver.Resolve(Library.Theme, Library.ThemeMode)
	local Fallback = Themes.Dark
	for Property, ThemeKey in Properties do
		local Value = Theme and Theme[ThemeKey]
		if Value == nil then
			Value = Fallback[ThemeKey]
		end
		pcall(ApplyProperty, Object, Property, Value)
	end
end

local ThemeRun = 0
local ThemeStamp = 0
local ThemeDone: { () -> () } = {}
local ThemeBudget = 0.006

function Creator.UpdateTheme(OnDone: (() -> ())?)
	ThemeRun += 1
	ThemeStamp += 1
	local Run = ThemeRun
	local Stamp = ThemeStamp
	if OnDone then
		table.insert(ThemeDone, OnDone)
	end

	local Background = Library.Background
	if Background and Background.Hold then
		Background:Hold(0.6)
	end

	local Motors = Creator.TransparencyMotors
	if next(Motors) then
		local InstantGoal = Flipper.Instant.new(Creator.GetThemeProperty("HoverTransparency"))
		for Motor in Motors do
			Motor:SetGoal(InstantGoal)
		end
	end

	local ActiveTheme = ThemeResolver.Resolve(Library.Theme, Library.ThemeMode)

	local Pending, Count = {}, 0
	for Object in Creator.Registry do
		Count += 1
		Pending[Count] = Object
	end

	local Index = 1
	local function ProcessBatch(): boolean
		local Deadline = os.clock() + ThemeBudget
		while Index <= Count do
			local Object = Pending[Index]
			Index += 1
			local Data = Creator.Registry[Object]
			if Data and Data.Stamp ~= Stamp then
				Data.Stamp = Stamp
				pcall(ApplyTheme, Object, Data.Properties, ActiveTheme)
			end
			if Index % 24 == 0 and os.clock() > Deadline then
				return false
			end
		end
		return true
	end

	local function Finish()
		for Object, Data in Creator.Registry do
			if Data.Stamp ~= ThemeStamp then
				Data.Stamp = ThemeStamp
				pcall(ApplyTheme, Object, Data.Properties, ActiveTheme)
			end
		end
		if Library.ThemeChanged then
			Library.ThemeChanged:Fire(Library.Theme)
		end
		local Callbacks = ThemeDone
		ThemeDone = {}
		for _, Callback in Callbacks do
			Callback()
		end
	end

	if ProcessBatch() then
		Finish()
		return
	end

	task.spawn(function()
		repeat
			Heartbeat:Wait()
			if Run ~= ThemeRun then
				return
			end
		until ProcessBatch()
		Finish()
	end)
end

function Creator.AddThemeObject<T>(Object: T & Instance, Properties: ThemeTag): T & Instance
	Creator.Registry[Object] = { Properties = Properties, Stamp = ThemeStamp }
	ApplyTheme(Object, Properties)
	return Object
end

function Creator.RemoveThemeObject(object: Instance)
	Creator.Registry[object] = nil
end

function Creator.RemoveTag(object: Instance)
	Creator.Registry[object] = nil
end

function Creator.SetImage(object: any, value: any)
	if type(value) == "table" then
		object.Image = value.Image
		object.ImageRectOffset = value.ImageRectOffset
		object.ImageRectSize = value.ImageRectSize
		return
	end

	object.Image = value or ""
	if object.ImageRectSize ~= Vector2.zero then
		object.ImageRectOffset = Vector2.zero
		object.ImageRectSize = Vector2.zero
	end
end

function Creator.OverrideTag<T>(Object: T & Instance, Properties: ThemeTag): T & Instance
	local Data = Creator.Registry[Object]
	if not Data then
		return Creator.AddThemeObject(Object, Properties)
	end

	local Merged = Data.Properties
	for Property in Merged do
		if Properties[Property] == nil then
			Merged = table.clone(Merged)
			for NewProperty, NewKey in Properties do
				Merged[NewProperty] = NewKey
			end
			break
		end
	end
	if Merged == Data.Properties then
		Merged = Properties
	end

	Data.Properties = Merged
	Data.Stamp = ThemeStamp
	ApplyTheme(Object, Merged)
	return Object
end

local TagCache: { [string]: { [string]: ThemeTag } } = {}

local function SharedTag(Property: string, Key: string): ThemeTag
	local ByProperty = TagCache[Property]
	if not ByProperty then
		ByProperty = {}
		TagCache[Property] = ByProperty
	end
	local Tag = ByProperty[Key]
	if not Tag then
		Tag = table.freeze({ [Property] = Key })
		ByProperty[Key] = Tag
	end
	return Tag
end

function Creator.RegisterAlias(alias: string, className: string)
	Creator.ClassAliases[alias] = className
end

function Creator.New(className: string, properties: Props?, children: { Instance }?): any
	if className == "UiBlur" then
		local Blur = UiBlur.new()
		if properties then
			local Clean = {}
			for Name, Value in properties do
				if Name ~= "ThemeTag" and Name ~= "Name" then
					Clean[Name] = Value
				end
			end
			Blur:Set(Clean)
		end
		return Blur
	end

	local resolved = Creator.ClassAliases[className] or className

	local ok, object = pcall(Instance.new, resolved)
	if not ok then
		Library:Alert(`Creator.New: invalid ClassName '{className}'`, "Error")
		object = Instance.new("Frame")
		resolved = "Frame"
	end
	local instance = object :: any

	local defaults = Creator.DefaultProperties[resolved]
	if defaults then
		for name, value in defaults do
			if properties == nil or properties[name] == nil then
				instance[name] = value
			end
		end
	end

	local parent: Instance? = nil
	local themeTag: ThemeTag? = nil
	local iconData: any = nil

	if properties then
		for name, value in properties do
			if name == "ThemeTag" then
				themeTag = value
			elseif name == "Parent" then
				parent = value
			elseif name == "Name" then

				instance.Name = instance.ClassName
			elseif name == "Image" and type(value) == "table" then
				iconData = value
			else
				instance[name] = value
			end
		end
	end

	if iconData then
		Creator.SetImage(instance, iconData)
	end

	if children then
		for _, child in children do
			child.Parent = instance
		end
	end

	if themeTag then
		Creator.AddThemeObject(instance, themeTag)
	end

	if resolved == "ScrollingFrame" then
		Creator.GuardScroller(instance)
	end

	if parent then
		instance.Parent = parent
	end

	return instance
end

function Creator.SpringMotor(
	initial: number,
	target: Instance,
	prop: string,
	ignoreDialogCheck: boolean?,
	resetOnThemeChange: boolean?
): (any, SetValue)
	local motor = Flipper.SingleMotor.new(initial)
	motor:OnStep(function(value: number)
		(target :: any)[prop] = value
	end)

	if resetOnThemeChange then
		Creator.TransparencyMotors[motor] = true
	end

	local checkDialog = if ignoreDialogCheck then false else prop == "BackgroundTransparency"

	local function setValue(value: number, ignore: boolean?)
		if checkDialog and not ignore and Library:IsBlockedAt(target) then
			return
		end
		if Library.Config.ReducedMotion then
			motor:SetGoal(Flipper.Instant.new(value))
		else
			motor:SetGoal(Flipper.Spring.new(value, SpringOptions))
		end
	end

	return motor, setValue
end

function Creator.Debounce<T...>(callback: (T...) -> (), delay: number): (T...) -> ()
	local pending: thread? = nil

	return function(...: T...)
		if pending then
			task.cancel(pending)
		end

		local args = table.pack(...)
		pending = task.delay(delay, function()
			pending = nil
			callback(table.unpack(args, 1, args.n))
		end)
	end
end

function Creator.Throttle<T...>(callback: (T...) -> any, interval: number): (T...) -> any
	local last = 0

	return function(...: T...)
		local now = os.clock()
		if now - last >= interval then
			last = now
			return callback(...)
		end
		return nil
	end
end

function Creator.Reset()
	Creator.Disconnect()
	table.clear(Creator.Registry)
	table.clear(Creator.TransparencyMotors)
end

function Creator.Tween(Object, Time, Goal, Style, Direction)
	local Tween = TweenService:Create(
		Object,
		TweenInfo.new(Time, Style or Enum.EasingStyle.Quart, Direction or Enum.EasingDirection.Out),
		Goal
	)
	Tween:Play()
	return Tween
end

function Creator.ShiftHue(Color, Degrees)
	if not Degrees or Degrees == 0 then
		return Color
	end
	local Hue, Saturation, Value = Color:ToHSV()
	return Color3.fromHSV((Hue + Degrees / 360) % 1, Saturation, Value)
end

function Creator.TagIcon(Image, Key, Color)
	Creator.Icons[Image] = { Key = Key, Color = Color }
	Creator.ApplyIcon(Image)
end

function Creator.ApplyIcon(Image)
	local Entry = Creator.Icons[Image]
	if not Entry then
		return
	end
	if Entry.Color and Library.ColorfulIcons then
		Creator.RemoveTag(Image)
		Image.ImageColor3 = Creator.ShiftHue(Entry.Color, Library.IconHue)
	elseif Entry.Force then
		Creator.RemoveTag(Image)
		Image.ImageColor3 = Entry.Force
	else
		Creator.OverrideTag(Image, SharedTag("ImageColor3", Entry.Key))
	end
end

function Creator.TagText(Object, Key, Color, Dim)
	Creator.Texts[Object] = { Key = Key, Color = Color, Dim = Dim }
	Creator.ApplyText(Object)
end

function Creator.ApplyText(Object)
	local Entry = Creator.Texts[Object]
	if not Entry then
		return
	end
	if Entry.Color and Library.ColorfulIcons then
		Creator.RemoveTag(Object)
		local Color = Creator.ShiftHue(Entry.Color, Library.IconHue)
		if Entry.Dim then
			Color = Color:Lerp(Color3.new(0, 0, 0), 0.35)
		end
		Object.TextColor3 = Color
	elseif Entry.Force then
		Creator.RemoveTag(Object)
		Object.TextColor3 = Entry.Force
	else
		Creator.OverrideTag(Object, SharedTag("TextColor3", Entry.Key))
	end
end

Creator.Marquees = setmetatable({}, { __mode = "k" })

local MarqueeActive = {}
local MarqueeConnection: RBXScriptConnection? = nil
local MarqueeSpeed = 36
local MarqueePause = 1.2

local function MarqueeOffset(Entry: any): number
	local Travel = Entry.Distance / MarqueeSpeed
	local Cycle = (MarqueePause + Travel) * 2
	local Time = Entry.Time % Cycle
	if Time < MarqueePause then
		return 0
	elseif Time < MarqueePause + Travel then
		return (Time - MarqueePause) * MarqueeSpeed
	elseif Time < MarqueePause * 2 + Travel then
		return Entry.Distance
	end
	return Entry.Distance - (Time - MarqueePause * 2 - Travel) * MarqueeSpeed
end

local function MarqueeStep(DeltaTime: number)
	local HasActive = false
	for Label, Entry in MarqueeActive do
		HasActive = true
		if Label:IsDescendantOf(game) then
			Entry.Time += DeltaTime
			local Offset = -math.floor(MarqueeOffset(Entry))
			if Entry.AppliedOffset ~= Offset then
				Entry.AppliedOffset = Offset
				Entry.Text.Position = UDim2.fromOffset(Offset, 0)
			end
		end
	end
	if not HasActive and MarqueeConnection then
		MarqueeConnection:Disconnect()
		MarqueeConnection = nil
	end
end

local function MarqueeSync(Entry: any)
	local Label = Entry.Label
	local Text = Entry.Text
	if not Text then
		return
	end
	Text.Text = Label.Text
	Text.FontFace = Label.FontFace
	Text.TextSize = Label.TextSize
	Text.RichText = Label.RichText
	Text.TextColor3 = Label.TextColor3
	Text.TextYAlignment = Label.TextYAlignment
	if Entry.Active then
		local Current = Label.TextTransparency
		if Current ~= 1 then
			Entry.Intended = Current
			Label.TextTransparency = 1
		end
		Text.TextTransparency = Entry.Intended
	end
end

local function MarqueeBuild(Entry: any)
	if Entry.Clip then
		return
	end
	local Label = Entry.Label
	Entry.Clip = Creator.New("Frame", {
		Name = "Marquee",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Parent = Label,
	})
	Entry.Text = Creator.New("TextLabel", {
		Name = "MarqueeText",
		Size = UDim2.fromScale(0, 1),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = false,
		TextTruncate = Enum.TextTruncate.None,
		Parent = Entry.Clip,
	})
	for _, Property in { "TextColor3", "TextTransparency", "FontFace", "TextSize", "RichText" } do
		Creator.AddSignal(Label:GetPropertyChangedSignal(Property), function()
			MarqueeSync(Entry)
		end)
	end
end

local function MarqueeSet(Entry: any, Overflow: boolean, Full: number, Width: number)
	local Label = Entry.Label
	if Overflow then
		MarqueeBuild(Entry)
		Entry.Distance = Full - Width + 4
		if not Entry.Active then
			Entry.Active = true
			Entry.Time = 0
			Entry.Intended = Label.TextTransparency
			Entry.Clip.Visible = true
			MarqueeActive[Label] = Entry
		end
		MarqueeSync(Entry)
		if not (MarqueeConnection and MarqueeConnection.Connected) then
			MarqueeConnection = Creator.AddSignal(Heartbeat, MarqueeStep)
		end
	elseif Entry.Active then
		Entry.Active = false
		MarqueeActive[Label] = nil
		Entry.Clip.Visible = false
		Label.TextTransparency = Entry.Intended
	end
end

local function MarqueeMeasure(Entry: any)
	Entry.Pending = false
	local Label = Entry.Label
	if not Label.Parent then
		return
	end
	local Width = Label.AbsoluteSize.X
	local Full = 0
	local Overflow = false
	local Allowed = not Entry.Off
		and Library.Config.Marquee
		and Width > 0
		and Label.Text ~= ""
		and not Label.TextWrapped
		and Label.AutomaticSize ~= Enum.AutomaticSize.X
	if Allowed then
		local Font = Label.FontFace
		local Key = Label.Text
			.. "|"
			.. Label.TextSize
			.. "|"
			.. Font.Family
			.. "|"
			.. Font.Weight.Value
			.. "|"
			.. Font.Style.Value
			.. "|"
			.. tostring(Label.RichText)
		if Entry.Key == Key and Entry.Full then
			Full = Entry.Full
			Overflow = Full > Width + 1
		else
			local Params = Instance.new("GetTextBoundsParams")
			Params.Text = Label.Text
			Params.Font = Font
			Params.Size = Label.TextSize
			Params.Width = 100000
			Params.RichText = Label.RichText
			local Success, Bounds = pcall(TextService.GetTextBoundsAsync, TextService, Params)
			if Success then
				Full = Bounds.X
				Overflow = Full > Width + 1
				Entry.Key = Key
				Entry.Full = Full
			end
		end
	end
	MarqueeSet(Entry, Overflow, Full, Width)
end

local function MarqueeQueue(Entry: any)
	if Entry.Pending then
		return
	end
	if Library:IsWindowBusy() then
		Library.DeferredMarquee[Entry] = true
		return
	end
	Entry.Pending = true
	task.defer(MarqueeMeasure, Entry)
end

Creator.QueueMarquee = MarqueeQueue

function Creator.Marquee(Label: any, Enabled: boolean?)
	local Entry = Creator.Marquees[Label]
	if not Entry then
		Entry = { Label = Label, Time = 0, Distance = 0, Pending = false, Active = false, Intended = 0 }
		Creator.Marquees[Label] = Entry
		for _, Property in { "Text", "FontFace", "TextSize" } do
			Creator.AddSignal(Label:GetPropertyChangedSignal(Property), function()
				MarqueeSync(Entry)
				MarqueeQueue(Entry)
			end)
		end
		Creator.AddSignal(Label:GetPropertyChangedSignal("AbsoluteSize"), function()
			MarqueeQueue(Entry)
		end)
	end
	Entry.Off = Enabled == false
	MarqueeQueue(Entry)
	return Entry
end

function Creator.RefreshMarquee()
	for _, Entry in Creator.Marquees do
		MarqueeQueue(Entry)
	end
end

Creator.Hooks = setmetatable({}, { __mode = "k" })

function Creator.RefreshIcons(ThemeOnly: boolean?)
	for _, Hook in next, Creator.Hooks do
		Hook()
	end
	for Image, Entry in next, Creator.Icons do
		if Image.Parent and not Entry.Locked and (not ThemeOnly or Entry.Force) then
			Creator.ApplyIcon(Image)
		end
	end
	for Object, Entry in next, Creator.Texts do
		if Object.Parent and (not ThemeOnly or Entry.Force) then
			Creator.ApplyText(Object)
		end
	end
end

function Creator.BindDrag(Target, OnDrag, OnEnd, Options)
	local Threshold = Options and Options.Threshold or 0
	local TapTime = Options and Options.TapTime or 0.3

	local ActiveInput
	local Owner = {}
	local Pending = false
	local StartPos = Vector2.zero
	local StartTime = 0
	local LastPos = Vector2.zero

	local function Update(Position)
		local SizeX = math.max(Target.AbsoluteSize.X, 1)
		local SizeY = math.max(Target.AbsoluteSize.Y, 1)
		local X = math.clamp((Position.X - Target.AbsolutePosition.X) / SizeX, 0, 1)
		local Y = math.clamp((Position.Y - Target.AbsolutePosition.Y) / SizeY, 0, 1)
		OnDrag(X, Y)
	end

	local function Release()
		if Creator.ActiveDrag == Owner then
			Creator.ActiveDrag = nil
		end
		ActiveInput = nil
		Pending = false
	end

	local function Finish()
		if not ActiveInput then
			return
		end

		local WasPending = Pending
		local IsTap = WasPending and os.clock() - StartTime <= TapTime
		Release()

		if WasPending then
			if IsTap then
				Update(LastPos)
				if OnEnd then
					OnEnd()
				end
			end
			return
		end

		if OnEnd then
			OnEnd()
		end
	end

	local function Move(Position)
		LastPos = Position
		if not Pending then
			Update(Position)
			return
		end

		local Delta = Position - StartPos
		if ActiveInput.UserInputType == Enum.UserInputType.Touch and math.abs(Delta.Y) > math.abs(Delta.X) then
			if math.abs(Delta.Y) >= Threshold then
				Release()
			end
			return
		end

		if math.abs(Delta.X) >= Threshold then
			Pending = false
			Update(Position)
		end
	end

	Creator.AddSignal(Target.InputBegan, function(Input)
		if
			Input.UserInputType == Enum.UserInputType.MouseButton1
			or Input.UserInputType == Enum.UserInputType.Touch
		then
			if ActiveInput then
				return
			end

			local Current = Creator.ActiveDrag
			if Current and Current ~= Owner then
				local Holder = Current.Input
				if Holder and Holder.UserInputState ~= Enum.UserInputState.End then
					return
				end
			end

			local Position = Vector2.new(Input.Position.X, Input.Position.Y)
			local AbsPos, AbsSize = Target.AbsolutePosition, Target.AbsoluteSize
			if
				Position.X < AbsPos.X
				or Position.X > AbsPos.X + AbsSize.X
				or Position.Y < AbsPos.Y
				or Position.Y > AbsPos.Y + AbsSize.Y
			then
				return
			end

			if not Creator.AcceptsInput(Target, Input) then
				return
			end

			Owner.Input = Input
			Creator.ActiveDrag = Owner
			ActiveInput = Input
			LastPos = Position

			if Threshold > 0 then
				Pending = true
				StartPos = Position
				StartTime = os.clock()
			else
				Pending = false
				Update(Position)
			end

			local Changed
			Changed = Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					Changed:Disconnect()
					if ActiveInput == Input then
						Finish()
					end
				end
			end)
		end
	end)

	Creator.AddSignal(UserInputService.InputChanged, function(Input)
		if not ActiveInput then
			return
		end

		if
			Input.UserInputType == Enum.UserInputType.MouseMovement
			or (Input.UserInputType == Enum.UserInputType.Touch and Input == ActiveInput)
		then
			Move(Vector2.new(Input.Position.X, Input.Position.Y))
		end
	end)

	Creator.AddSignal(UserInputService.InputEnded, function(Input)
		if ActiveInput and (Input == ActiveInput or Input.UserInputType == Enum.UserInputType.MouseButton1) then
			Finish()
		end
	end)
end

local New = Creator.New

local DropdownFolders = setmetatable({}, { __mode = "k" })

function Library:GetDropdownFolder(Gui: ScreenGui?)
	Gui = Gui or Library.GUI
	local Folder = DropdownFolders[Gui]
	if Folder and Folder.Parent == Gui then
		return Folder
	end
	Folder = New("Folder", { Parent = Gui })
	DropdownFolders[Gui] = Folder
	return Folder
end

local Fonts = {
	Regular = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Medium = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
	SemiBold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
	Bold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
	Mono = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
}

local GUI = New("ScreenGui", {
	Name = "Fluent",
	DisplayOrder = 999,
	IgnoreGuiInset = true,
	Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or CoreGui,
})
ProtectGui(GUI)
Library.GUI = GUI
Library.ThemeChanged = Signal.new()
Library.ConfigChanged = Signal.new()
Library.Flipper = Flipper
Library.Signal = Signal
Library.Layers = {}
Library.UiBlur = UiBlur
Library.BlurEnabled = true
Library.BlurFailures = 0
Library.BlurArea = New("Frame", {
	Name = "BlurArea",
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Active = false,
	ZIndex = 0,
	Parent = GUI,
})

Library.ActiveBlurs = 0

local function RegionShown(Object: GuiObject): boolean
	local Current: Instance? = Object
	while Current do
		if Current:IsA("GuiObject") and not Current.Visible then
			return false
		end
		if Current:IsA("ScreenGui") then
			return Current.Enabled and Object.AbsoluteSize.X >= 1 and Object.AbsoluteSize.Y >= 1
		end
		Current = Current.Parent
	end
	return false
end

Library.FollowingBlurs = 0

local function FollowBlur(State: any, Following: boolean, Duration: number)
	if (State.Following == true) == Following then
		return
	end
	State.Following = Following
	Library.FollowingBlurs = math.max(Library.FollowingBlurs + (if Following then 1 else -1), 0)
	local Background = Library.Background
	if Background and Background.FollowDialog then
		Background:FollowDialog(Library.FollowingBlurs > 0, Duration)
	end
end

local function CountBlur(State: any, Counted: boolean)
	if (State.Counted == true) == Counted then
		return
	end
	State.Counted = Counted
	Library.ActiveBlurs = math.max(Library.ActiveBlurs + (if Counted then 1 else -1), 0)
	local Background = Library.Background
	if Background and Background.SetDialogActive then
		Background:SetDialogActive(Library.ActiveBlurs > 0)
	end
end

function Library:CaptureBlur(Blur: any?, Done: (any?) -> (), Options: { [string]: any }?)
	local Region = Options and Options.Region
	if not Blur or not Region or not self.BlurEnabled or self.BlurFailures >= 2 then
		Done(nil)
		return
	end

	local State = Blur.State
	State.CaptureId = (State.CaptureId or 0) + 1
	State.Released = false
	local Id = State.CaptureId

	Done(nil)
	CountBlur(State, true)

	task.defer(function()
		local function Stale()
			return not State.Alive or State.Released or State.CaptureId ~= Id
		end
		if Stale() then
			return
		end
		local Shown = RegionShown(Region)
		local Settle = 0
		while not Stale() and not Shown and Settle < 10 do
			Settle += task.wait(0.1)
			Shown = RegionShown(Region)
		end
		if Stale() then
			return
		end
		local Source = if Shown then UiBlur.Rasterize(Region, Options) else nil
		if Source and not Stale() and not RegionShown(Region) then
			Source:Destroy()
			Source = nil
			while not Stale() and not RegionShown(Region) and Settle < 10 do
				Settle += task.wait(0.1)
			end
			if not Stale() and RegionShown(Region) then
				Source = UiBlur.Rasterize(Region, Options)
			end
		end
		if Stale() then
			if Source then
				Source:Destroy()
			end
			return
		end
		if not Source then
			self.BlurFailures += 1
			CountBlur(State, false)
			return
		end
		self.BlurFailures = 0
		local Previous = State.OwnedSource
		State.OwnedSource = Source
		Blur.Backdrop = Source
		if Previous and Previous ~= Source then
			Previous:Destroy()
		end
		local Waited = 0
		while not Stale() and not Blur:IsReady() and Waited < 2 do
			Waited += task.wait()
		end
		if not Stale() then
			CountBlur(State, true)
			Blur:Tween({ Opacity = 1 }, 0.18)
			FollowBlur(State, true, 0.18)
		end

		local Exclude = Options and Options.Exclude
		local Last = UiBlur.Signature(Region, Exclude)
		while not Stale() do
			task.wait(0.3)
			if Stale() or not Region.Parent then
				break
			end
			if not RegionShown(Region) then
				continue
			end
			local Now = UiBlur.Signature(Region, Exclude)
			if Now ~= Last then
				task.wait(0.25)
				if Stale() or not RegionShown(Region) then
					continue
				end
				local Again = UiBlur.Signature(Region, Exclude)
				if Again ~= Now then
					continue
				end
				Last = Now
				local Fresh = UiBlur.Rasterize(Region, Options)
				if Stale() then
					if Fresh then
						Fresh:Destroy()
					end
					break
				end
				if Fresh and not RegionShown(Region) then
					Fresh:Destroy()
					Fresh = nil
					Last = -1
				end
				if Fresh then
					local Old = State.OwnedSource
					State.OwnedSource = Fresh
					Blur.Backdrop = Fresh
					if Old and Old ~= Fresh then
						Old:Destroy()
					end
				end
			end
		end
	end)
end

function Library:ReleaseBlur(Blur: any?, Source: any?, Keep: boolean?)
	local State = Blur and Blur.State
	local Owned = nil
	if State then
		State.Released = true
		State.CaptureId = (State.CaptureId or 0) + 1
		Owned = State.OwnedSource
		State.OwnedSource = nil
		local ReleaseId = State.CaptureId
		task.delay(0.25, function()
			if State.CaptureId == ReleaseId then
				CountBlur(State, false)
			end
		end)
	end
	if Blur then
		Blur:Tween({ Opacity = 0 }, 0.15)
	end
	if State then
		FollowBlur(State, false, 0.15)
	end
	task.delay(0.3, function()
		if Blur and not Keep then
			Blur:Destroy()
		end
		if Source then
			Source:Destroy()
		end
		if Owned then
			Owned:Destroy()
		end
	end)
end

function Library:BlurScreen(Config: { [string]: any }?): any
	local Settings = Config or {}
	local Holder = New("Frame", {
		Name = "ScreenBlur",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Active = Settings.Block == true,
		ZIndex = Settings.ZIndex or 1,
		Visible = false,
		Parent = self.GUI,
	})
	local Blur = New("UiBlur", {
		Parent = Holder,
		Blur = Settings.Blur or 8,
		Brightness = Settings.Brightness or 0.9,
		Saturate = Settings.Saturate or 1.1,
		Tint = Settings.Tint or Color3.new(0, 0, 0),
		TintTransparency = Settings.TintTransparency or 0.7,
		Opacity = 0,
	})
	local Object = { Holder = Holder, Blur = Blur, Shown = false, Source = nil :: any }

	function Object:Show()
		if Object.Shown then
			return
		end
		Object.Shown = true
		Holder.Visible = true
		Library:CaptureBlur(Blur, function(Source)
			if not Object.Shown then
				Library:ReleaseBlur(Blur, Source, true)
				return
			end
			Object.Source = Source
		end, {
			Region = Library.BlurArea,
			Walk = Library.GUI,
			Exclude = { [Holder] = true, [Library.BlurArea] = true },
			BaseColor = Settings.BaseColor,
		})
	end

	function Object:Hide()
		if not Object.Shown then
			return
		end
		Object.Shown = false
		Library:ReleaseBlur(Blur, Object.Source, true)
		Object.Source = nil
		task.delay(0.3, function()
			if not Object.Shown then
				Holder.Visible = false
			end
		end)
	end

	function Object:Destroy()
		Object:Hide()
		task.delay(0.4, function()
			Blur:Destroy()
			Holder:Destroy()
		end)
	end

	return Object
end
Library.Events = {
	WindowCreated = Signal.new(),
	TabAdded = Signal.new(),
	TabRemoved = Signal.new(),
	TabSelected = Signal.new(),
	SectionAdded = Signal.new(),
	ElementAdded = Signal.new(),
	ActionAdded = Signal.new(),
	Unloading = Signal.new(),
	IntroFinished = Signal.new(),
}

function Library:GetEvent(Name: string)
	assert(type(Name) == "string" and Name ~= "", "GetEvent - Expected an event name")

	local Event = Library.Events[Name]
	if not Event then
		Event = Signal.new()
		Library.Events[Name] = Event
	end

	return Event
end

function Library:On(Name: string, Handler: (...any) -> ())
	assert(type(Handler) == "function", "On - Handler must be a function")

	return Library:GetEvent(Name):Connect(function(...)
		local Success, Problem = pcall(Handler, ...)
		if not Success then
			Library:Alert(`Event "{Name}" handler error: {tostring(Problem)}`, "Error")
		end
	end)
end

function Library:Emit(Name: string, ...: any)
	Library:GetEvent(Name):Fire(...)
end

function Library:CreateLayer(Name: string, Order: number?)
	assert(type(Name) == "string" and Name ~= "", "CreateLayer - Expected a layer name")

	local Existing = Library.Layers[Name]
	if Existing and Existing.Parent then
		return Existing
	end

	local Layer = Creator.New("ScreenGui", {
		Name = `FluentLayer_{Name}`,
		DisplayOrder = Order or 1001,
		IgnoreGuiInset = true,
		ResetOnSpawn = false,
		Parent = GUI.Parent,
	})
	ProtectGui(Layer)
	Library.Layers[Name] = Layer

	return Layer
end

function Library:RemoveLayer(Name: string): boolean
	local Layer = Library.Layers[Name]
	if not Layer then
		return false
	end

	Library.Layers[Name] = nil
	Layer:Destroy()
	return true
end

local LastError = nil
local LastErrorTime = 0

function Library:SafeCallback(Function, ...)
	if not Function then
		return
	end

	local Success, Result = pcall(Function, ...)
	if Success then
		return
	end

	local Message = tostring(Result)
	local Now = os.clock()
	if Message == LastError and Now - LastErrorTime < 1 then
		return
	end
	LastError = Message
	LastErrorTime = Now

	if not Library.Config.CallbackErrors then
		return
	end

	local _, Index = Message:find(":%d+: ")

	return Library:InternalNotify({
		Title = "Interface",
		Content = "Callback error",
		SubContent = Index and Message:sub(Index + 1) or Message,
		Duration = 5,
		Type = "Error",
	})
end

function Library:Round(Number, Factor)
	if not Factor or Factor <= 0 then
		return math.floor(Number)
	end

	local Scale = 10 ^ Factor
	local Scaled = Number * Scale
	local Truncated = Scaled >= 0 and math.floor(Scaled + 1e-7) or math.ceil(Scaled - 1e-7)
	return Truncated / Scale
end

local function Resolve(Icon, Context, Config)
	if Icon == nil or Icon == "" then
		return nil
	end
	if type(Icon) == "string" then
		local Override = Config and Config.IconPack
		if type(Override) == "string" then
			Override = { Pack = Override, Variant = Config.IconVariant, Size = Config.IconSize }
		end

		local Data = Library:GetIconData(Icon, nil, nil, Context, Override)
		if Data then
			if Data.ImageRectSize == Vector2.zero then
				return Data.Image
			end
			return Data
		end
	end
	if type(Icon) == "number" then
		return "rbxassetid://" .. Icon
	end
	if type(Icon) == "string" and (Icon:find("rbxassetid") or Icon:find("rbxasset") or Icon:find("http")) then
		return Icon
	end
	return nil
end

-- Lucide or something o Algo 
local Icons = {
	["lucide-accessibility"] = "rbxassetid://10709751939",
	["lucide-activity"] = "rbxassetid://10709752035",
	["lucide-air-vent"] = "rbxassetid://10709752131",
	["lucide-airplay"] = "rbxassetid://10709752254",
	["lucide-alarm-check"] = "rbxassetid://10709752405",
	["lucide-alarm-clock"] = "rbxassetid://10709752630",
	["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
	["lucide-alarm-minus"] = "rbxassetid://10709752732",
	["lucide-alarm-plus"] = "rbxassetid://10709752825",
	["lucide-album"] = "rbxassetid://10709752906",
	["lucide-alert-circle"] = "rbxassetid://10709752996",
	["lucide-alert-octagon"] = "rbxassetid://10709753064",
	["lucide-alert-triangle"] = "rbxassetid://10709753149",
	["lucide-align-center"] = "rbxassetid://10709753570",
	["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
	["lucide-align-center-vertical"] = "rbxassetid://10709753421",
	["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
	["lucide-align-end-vertical"] = "rbxassetid://10709753808",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
	["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
	["lucide-align-justify"] = "rbxassetid://10709759610",
	["lucide-align-left"] = "rbxassetid://10709759764",
	["lucide-align-right"] = "rbxassetid://10709759895",
	["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
	["lucide-align-start-vertical"] = "rbxassetid://10709760244",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
	["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
	["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
	["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
	["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
	["lucide-anchor"] = "rbxassetid://10709761530",
	["lucide-angry"] = "rbxassetid://10709761629",
	["lucide-annoyed"] = "rbxassetid://10709761722",
	["lucide-aperture"] = "rbxassetid://10709761813",
	["lucide-apple"] = "rbxassetid://10709761889",
	["lucide-archive"] = "rbxassetid://10709762233",
	["lucide-archive-restore"] = "rbxassetid://10709762058",
	["lucide-armchair"] = "rbxassetid://10709762327",
	["lucide-arrow-big-down"] = "rbxassetid://10747796644",
	["lucide-arrow-big-left"] = "rbxassetid://10709762574",
	["lucide-arrow-big-right"] = "rbxassetid://10709762727",
	["lucide-arrow-big-up"] = "rbxassetid://10709762879",
	["lucide-arrow-down"] = "rbxassetid://10709767827",
	["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
	["lucide-arrow-down-left"] = "rbxassetid://10709767656",
	["lucide-arrow-down-right"] = "rbxassetid://10709767750",
	["lucide-arrow-left"] = "rbxassetid://10709768114",
	["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
	["lucide-arrow-left-right"] = "rbxassetid://10709768019",
	["lucide-arrow-right"] = "rbxassetid://10709768347",
	["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
	["lucide-arrow-up"] = "rbxassetid://10709768939",
	["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
	["lucide-arrow-up-down"] = "rbxassetid://10709768538",
	["lucide-arrow-up-left"] = "rbxassetid://10709768661",
	["lucide-arrow-up-right"] = "rbxassetid://10709768787",
	["lucide-asterisk"] = "rbxassetid://10709769095",
	["lucide-at-sign"] = "rbxassetid://10709769286",
	["lucide-award"] = "rbxassetid://10709769406",
	["lucide-axe"] = "rbxassetid://10709769508",
	["lucide-axis-3d"] = "rbxassetid://10709769598",
	["lucide-baby"] = "rbxassetid://10709769732",
	["lucide-backpack"] = "rbxassetid://10709769841",
	["lucide-baggage-claim"] = "rbxassetid://10709769935",
	["lucide-banana"] = "rbxassetid://10709770005",
	["lucide-banknote"] = "rbxassetid://10709770178",
	["lucide-bar-chart"] = "rbxassetid://10709773755",
	["lucide-bar-chart-2"] = "rbxassetid://10709770317",
	["lucide-bar-chart-3"] = "rbxassetid://10709770431",
	["lucide-bar-chart-4"] = "rbxassetid://10709770560",
	["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
	["lucide-barcode"] = "rbxassetid://10747360675",
	["lucide-baseline"] = "rbxassetid://10709773863",
	["lucide-bath"] = "rbxassetid://10709773963",
	["lucide-battery"] = "rbxassetid://10709774640",
	["lucide-battery-charging"] = "rbxassetid://10709774068",
	["lucide-battery-full"] = "rbxassetid://10709774206",
	["lucide-battery-low"] = "rbxassetid://10709774370",
	["lucide-battery-medium"] = "rbxassetid://10709774513",
	["lucide-beaker"] = "rbxassetid://10709774756",
	["lucide-bed"] = "rbxassetid://10709775036",
	["lucide-bed-double"] = "rbxassetid://10709774864",
	["lucide-bed-single"] = "rbxassetid://10709774968",
	["lucide-beer"] = "rbxassetid://10709775167",
	["lucide-bell"] = "rbxassetid://10709775704",
	["lucide-bell-minus"] = "rbxassetid://10709775241",
	["lucide-bell-off"] = "rbxassetid://10709775320",
	["lucide-bell-plus"] = "rbxassetid://10709775448",
	["lucide-bell-ring"] = "rbxassetid://10709775560",
	["lucide-bike"] = "rbxassetid://10709775894",
	["lucide-binary"] = "rbxassetid://10709776050",
	["lucide-bitcoin"] = "rbxassetid://10709776126",
	["lucide-bluetooth"] = "rbxassetid://10709776655",
	["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
	["lucide-bluetooth-off"] = "rbxassetid://10709776344",
	["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
	["lucide-bold"] = "rbxassetid://10747813908",
	["lucide-bomb"] = "rbxassetid://10709781460",
	["lucide-bone"] = "rbxassetid://10709781605",
	["lucide-book"] = "rbxassetid://10709781824",
	["lucide-book-open"] = "rbxassetid://10709781717",
	["lucide-bookmark"] = "rbxassetid://10709782154",
	["lucide-bookmark-minus"] = "rbxassetid://10709781919",
	["lucide-bookmark-plus"] = "rbxassetid://10709782044",
	["lucide-bot"] = "rbxassetid://10709782230",
	["lucide-box"] = "rbxassetid://10709782497",
	["lucide-box-select"] = "rbxassetid://10709782342",
	["lucide-boxes"] = "rbxassetid://10709782582",
	["lucide-briefcase"] = "rbxassetid://10709782662",
	["lucide-brush"] = "rbxassetid://10709782758",
	["lucide-bug"] = "rbxassetid://10709782845",
	["lucide-building"] = "rbxassetid://10709783051",
	["lucide-building-2"] = "rbxassetid://10709782939",
	["lucide-bus"] = "rbxassetid://10709783137",
	["lucide-cake"] = "rbxassetid://10709783217",
	["lucide-calculator"] = "rbxassetid://10709783311",
	["lucide-calendar"] = "rbxassetid://10709789505",
	["lucide-calendar-check"] = "rbxassetid://10709783474",
	["lucide-calendar-check-2"] = "rbxassetid://10709783392",
	["lucide-calendar-clock"] = "rbxassetid://10709783577",
	["lucide-calendar-days"] = "rbxassetid://10709783673",
	["lucide-calendar-heart"] = "rbxassetid://10709783835",
	["lucide-calendar-minus"] = "rbxassetid://10709783959",
	["lucide-calendar-off"] = "rbxassetid://10709788784",
	["lucide-calendar-plus"] = "rbxassetid://10709788937",
	["lucide-calendar-range"] = "rbxassetid://10709789053",
	["lucide-calendar-search"] = "rbxassetid://10709789200",
	["lucide-calendar-x"] = "rbxassetid://10709789407",
	["lucide-calendar-x-2"] = "rbxassetid://10709789329",
	["lucide-camera"] = "rbxassetid://10709789686",
	["lucide-camera-off"] = "rbxassetid://10747822677",
	["lucide-car"] = "rbxassetid://10709789810",
	["lucide-carrot"] = "rbxassetid://10709789960",
	["lucide-cast"] = "rbxassetid://10709790097",
	["lucide-charge"] = "rbxassetid://10709790202",
	["lucide-check"] = "rbxassetid://10709790644",
	["lucide-check-circle"] = "rbxassetid://10709790387",
	["lucide-check-circle-2"] = "rbxassetid://10709790298",
	["lucide-check-square"] = "rbxassetid://10709790537",
	["lucide-chef-hat"] = "rbxassetid://10709790757",
	["lucide-cherry"] = "rbxassetid://10709790875",
	["lucide-chevron-down"] = "rbxassetid://10709790948",
	["lucide-chevron-first"] = "rbxassetid://10709791015",
	["lucide-chevron-last"] = "rbxassetid://10709791130",
	["lucide-chevron-left"] = "rbxassetid://10709791281",
	["lucide-chevron-right"] = "rbxassetid://10709791437",
	["lucide-chevron-up"] = "rbxassetid://10709791523",
	["lucide-chevrons-down"] = "rbxassetid://10709796864",
	["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
	["lucide-chevrons-left"] = "rbxassetid://10709797151",
	["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
	["lucide-chevrons-right"] = "rbxassetid://10709797382",
	["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
	["lucide-chevrons-up"] = "rbxassetid://10709797622",
	["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
	["lucide-chrome"] = "rbxassetid://10709797725",
	["lucide-circle"] = "rbxassetid://10709798174",
	["lucide-circle-dot"] = "rbxassetid://10709797837",
	["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
	["lucide-circle-slashed"] = "rbxassetid://10709798100",
	["lucide-citrus"] = "rbxassetid://10709798276",
	["lucide-clapperboard"] = "rbxassetid://10709798350",
	["lucide-clipboard"] = "rbxassetid://10709799288",
	["lucide-clipboard-check"] = "rbxassetid://10709798443",
	["lucide-clipboard-copy"] = "rbxassetid://10709798574",
	["lucide-clipboard-edit"] = "rbxassetid://10709798682",
	["lucide-clipboard-list"] = "rbxassetid://10709798792",
	["lucide-clipboard-signature"] = "rbxassetid://10709798890",
	["lucide-clipboard-type"] = "rbxassetid://10709798999",
	["lucide-clipboard-x"] = "rbxassetid://10709799124",
	["lucide-clock"] = "rbxassetid://10709805144",
	["lucide-clock-1"] = "rbxassetid://10709799535",
	["lucide-clock-10"] = "rbxassetid://10709799718",
	["lucide-clock-11"] = "rbxassetid://10709799818",
	["lucide-clock-12"] = "rbxassetid://10709799962",
	["lucide-clock-2"] = "rbxassetid://10709803876",
	["lucide-clock-3"] = "rbxassetid://10709803989",
	["lucide-clock-4"] = "rbxassetid://10709804164",
	["lucide-clock-5"] = "rbxassetid://10709804291",
	["lucide-clock-6"] = "rbxassetid://10709804435",
	["lucide-clock-7"] = "rbxassetid://10709804599",
	["lucide-clock-8"] = "rbxassetid://10709804784",
	["lucide-clock-9"] = "rbxassetid://10709804996",
	["lucide-cloud"] = "rbxassetid://10709806740",
	["lucide-cloud-cog"] = "rbxassetid://10709805262",
	["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
	["lucide-cloud-fog"] = "rbxassetid://10709805477",
	["lucide-cloud-hail"] = "rbxassetid://10709805596",
	["lucide-cloud-lightning"] = "rbxassetid://10709805727",
	["lucide-cloud-moon"] = "rbxassetid://10709805942",
	["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
	["lucide-cloud-off"] = "rbxassetid://10709806060",
	["lucide-cloud-rain"] = "rbxassetid://10709806277",
	["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
	["lucide-cloud-snow"] = "rbxassetid://10709806374",
	["lucide-cloud-sun"] = "rbxassetid://10709806631",
	["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
	["lucide-cloudy"] = "rbxassetid://10709806859",
	["lucide-clover"] = "rbxassetid://10709806995",
	["lucide-code"] = "rbxassetid://10709810463",
	["lucide-code-2"] = "rbxassetid://10709807111",
	["lucide-codepen"] = "rbxassetid://10709810534",
	["lucide-codesandbox"] = "rbxassetid://10709810676",
	["lucide-coffee"] = "rbxassetid://10709810814",
	["lucide-cog"] = "rbxassetid://10709810948",
	["lucide-coins"] = "rbxassetid://10709811110",
	["lucide-columns"] = "rbxassetid://10709811261",
	["lucide-command"] = "rbxassetid://10709811365",
	["lucide-compass"] = "rbxassetid://10709811445",
	["lucide-component"] = "rbxassetid://10709811595",
	["lucide-concierge-bell"] = "rbxassetid://10709811706",
	["lucide-connection"] = "rbxassetid://10747361219",
	["lucide-contact"] = "rbxassetid://10709811834",
	["lucide-contrast"] = "rbxassetid://10709811939",
	["lucide-cookie"] = "rbxassetid://10709812067",
	["lucide-copy"] = "rbxassetid://10709812159",
	["lucide-copyleft"] = "rbxassetid://10709812251",
	["lucide-copyright"] = "rbxassetid://10709812311",
	["lucide-corner-down-left"] = "rbxassetid://10709812396",
	["lucide-corner-down-right"] = "rbxassetid://10709812485",
	["lucide-corner-left-down"] = "rbxassetid://10709812632",
	["lucide-corner-left-up"] = "rbxassetid://10709812784",
	["lucide-corner-right-down"] = "rbxassetid://10709812939",
	["lucide-corner-right-up"] = "rbxassetid://10709813094",
	["lucide-corner-up-left"] = "rbxassetid://10709813185",
	["lucide-corner-up-right"] = "rbxassetid://10709813281",
	["lucide-cpu"] = "rbxassetid://10709813383",
	["lucide-croissant"] = "rbxassetid://10709818125",
	["lucide-crop"] = "rbxassetid://10709818245",
	["lucide-cross"] = "rbxassetid://10709818399",
	["lucide-crosshair"] = "rbxassetid://10709818534",
	["lucide-crown"] = "rbxassetid://10709818626",
	["lucide-cup-soda"] = "rbxassetid://10709818763",
	["lucide-curly-braces"] = "rbxassetid://10709818847",
	["lucide-currency"] = "rbxassetid://10709818931",
	["lucide-database"] = "rbxassetid://10709818996",
	["lucide-delete"] = "rbxassetid://10709819059",
	["lucide-diamond"] = "rbxassetid://10709819149",
	["lucide-dice-1"] = "rbxassetid://10709819266",
	["lucide-dice-2"] = "rbxassetid://10709819361",
	["lucide-dice-3"] = "rbxassetid://10709819508",
	["lucide-dice-4"] = "rbxassetid://10709819670",
	["lucide-dice-5"] = "rbxassetid://10709819801",
	["lucide-dice-6"] = "rbxassetid://10709819896",
	["lucide-dices"] = "rbxassetid://10723343321",
	["lucide-diff"] = "rbxassetid://10723343416",
	["lucide-disc"] = "rbxassetid://10723343537",
	["lucide-divide"] = "rbxassetid://10723343805",
	["lucide-divide-circle"] = "rbxassetid://10723343636",
	["lucide-divide-square"] = "rbxassetid://10723343737",
	["lucide-dollar-sign"] = "rbxassetid://10723343958",
	["lucide-download"] = "rbxassetid://10723344270",
	["lucide-download-cloud"] = "rbxassetid://10723344088",
	["lucide-droplet"] = "rbxassetid://10723344432",
	["lucide-droplets"] = "rbxassetid://10734883356",
	["lucide-drumstick"] = "rbxassetid://10723344737",
	["lucide-edit"] = "rbxassetid://10734883598",
	["lucide-edit-2"] = "rbxassetid://10723344885",
	["lucide-edit-3"] = "rbxassetid://10723345088",
	["lucide-egg"] = "rbxassetid://10723345518",
	["lucide-egg-fried"] = "rbxassetid://10723345347",
	["lucide-electricity"] = "rbxassetid://10723345749",
	["lucide-electricity-off"] = "rbxassetid://10723345643",
	["lucide-equal"] = "rbxassetid://10723345990",
	["lucide-equal-not"] = "rbxassetid://10723345866",
	["lucide-eraser"] = "rbxassetid://10723346158",
	["lucide-euro"] = "rbxassetid://10723346372",
	["lucide-expand"] = "rbxassetid://10723346553",
	["lucide-external-link"] = "rbxassetid://10723346684",
	["lucide-eye"] = "rbxassetid://10723346959",
	["lucide-eye-off"] = "rbxassetid://10723346871",
	["lucide-factory"] = "rbxassetid://10723347051",
	["lucide-fan"] = "rbxassetid://10723354359",
	["lucide-fast-forward"] = "rbxassetid://10723354521",
	["lucide-feather"] = "rbxassetid://10723354671",
	["lucide-figma"] = "rbxassetid://10723354801",
	["lucide-file"] = "rbxassetid://10723374641",
	["lucide-file-archive"] = "rbxassetid://10723354921",
	["lucide-file-audio"] = "rbxassetid://10723355148",
	["lucide-file-audio-2"] = "rbxassetid://10723355026",
	["lucide-file-axis-3d"] = "rbxassetid://10723355272",
	["lucide-file-badge"] = "rbxassetid://10723355622",
	["lucide-file-badge-2"] = "rbxassetid://10723355451",
	["lucide-file-bar-chart"] = "rbxassetid://10723355887",
	["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
	["lucide-file-box"] = "rbxassetid://10723355989",
	["lucide-file-check"] = "rbxassetid://10723356210",
	["lucide-file-check-2"] = "rbxassetid://10723356100",
	["lucide-file-clock"] = "rbxassetid://10723356329",
	["lucide-file-code"] = "rbxassetid://10723356507",
	["lucide-file-cog"] = "rbxassetid://10723356830",
	["lucide-file-cog-2"] = "rbxassetid://10723356676",
	["lucide-file-diff"] = "rbxassetid://10723357039",
	["lucide-file-digit"] = "rbxassetid://10723357151",
	["lucide-file-down"] = "rbxassetid://10723357322",
	["lucide-file-edit"] = "rbxassetid://10723357495",
	["lucide-file-heart"] = "rbxassetid://10723357637",
	["lucide-file-image"] = "rbxassetid://10723357790",
	["lucide-file-input"] = "rbxassetid://10723357933",
	["lucide-file-json"] = "rbxassetid://10723364435",
	["lucide-file-json-2"] = "rbxassetid://10723364361",
	["lucide-file-key"] = "rbxassetid://10723364605",
	["lucide-file-key-2"] = "rbxassetid://10723364515",
	["lucide-file-line-chart"] = "rbxassetid://10723364725",
	["lucide-file-lock"] = "rbxassetid://10723364957",
	["lucide-file-lock-2"] = "rbxassetid://10723364861",
	["lucide-file-minus"] = "rbxassetid://10723365254",
	["lucide-file-minus-2"] = "rbxassetid://10723365086",
	["lucide-file-output"] = "rbxassetid://10723365457",
	["lucide-file-pie-chart"] = "rbxassetid://10723365598",
	["lucide-file-plus"] = "rbxassetid://10723365877",
	["lucide-file-plus-2"] = "rbxassetid://10723365766",
	["lucide-file-question"] = "rbxassetid://10723365987",
	["lucide-file-scan"] = "rbxassetid://10723366167",
	["lucide-file-search"] = "rbxassetid://10723366550",
	["lucide-file-search-2"] = "rbxassetid://10723366340",
	["lucide-file-signature"] = "rbxassetid://10723366741",
	["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
	["lucide-file-symlink"] = "rbxassetid://10723367098",
	["lucide-file-terminal"] = "rbxassetid://10723367244",
	["lucide-file-text"] = "rbxassetid://10723367380",
	["lucide-file-type"] = "rbxassetid://10723367606",
	["lucide-file-type-2"] = "rbxassetid://10723367509",
	["lucide-file-up"] = "rbxassetid://10723367734",
	["lucide-file-video"] = "rbxassetid://10723373884",
	["lucide-file-video-2"] = "rbxassetid://10723367834",
	["lucide-file-volume"] = "rbxassetid://10723374172",
	["lucide-file-volume-2"] = "rbxassetid://10723374030",
	["lucide-file-warning"] = "rbxassetid://10723374276",
	["lucide-file-x"] = "rbxassetid://10723374544",
	["lucide-file-x-2"] = "rbxassetid://10723374378",
	["lucide-files"] = "rbxassetid://10723374759",
	["lucide-film"] = "rbxassetid://10723374981",
	["lucide-filter"] = "rbxassetid://10723375128",
	["lucide-fingerprint"] = "rbxassetid://10723375250",
	["lucide-flag"] = "rbxassetid://10723375890",
	["lucide-flag-off"] = "rbxassetid://10723375443",
	["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
	["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
	["lucide-flame"] = "rbxassetid://10723376114",
	["lucide-flashlight"] = "rbxassetid://10723376471",
	["lucide-flashlight-off"] = "rbxassetid://10723376365",
	["lucide-flask-conical"] = "rbxassetid://10734883986",
	["lucide-flask-round"] = "rbxassetid://10723376614",
	["lucide-flip-horizontal"] = "rbxassetid://10723376884",
	["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
	["lucide-flip-vertical"] = "rbxassetid://10723377138",
	["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
	["lucide-flower"] = "rbxassetid://10747830374",
	["lucide-flower-2"] = "rbxassetid://10723377305",
	["lucide-focus"] = "rbxassetid://10723377537",
	["lucide-folder"] = "rbxassetid://10723387563",
	["lucide-folder-archive"] = "rbxassetid://10723384478",
	["lucide-folder-check"] = "rbxassetid://10723384605",
	["lucide-folder-clock"] = "rbxassetid://10723384731",
	["lucide-folder-closed"] = "rbxassetid://10723384893",
	["lucide-folder-cog"] = "rbxassetid://10723385213",
	["lucide-folder-cog-2"] = "rbxassetid://10723385036",
	["lucide-folder-down"] = "rbxassetid://10723385338",
	["lucide-folder-edit"] = "rbxassetid://10723385445",
	["lucide-folder-heart"] = "rbxassetid://10723385545",
	["lucide-folder-input"] = "rbxassetid://10723385721",
	["lucide-folder-key"] = "rbxassetid://10723385848",
	["lucide-folder-lock"] = "rbxassetid://10723386005",
	["lucide-folder-minus"] = "rbxassetid://10723386127",
	["lucide-folder-open"] = "rbxassetid://10723386277",
	["lucide-folder-output"] = "rbxassetid://10723386386",
	["lucide-folder-plus"] = "rbxassetid://10723386531",
	["lucide-folder-search"] = "rbxassetid://10723386787",
	["lucide-folder-search-2"] = "rbxassetid://10723386674",
	["lucide-folder-symlink"] = "rbxassetid://10723386930",
	["lucide-folder-tree"] = "rbxassetid://10723387085",
	["lucide-folder-up"] = "rbxassetid://10723387265",
	["lucide-folder-x"] = "rbxassetid://10723387448",
	["lucide-folders"] = "rbxassetid://10723387721",
	["lucide-form-input"] = "rbxassetid://10723387841",
	["lucide-forward"] = "rbxassetid://10723388016",
	["lucide-frame"] = "rbxassetid://10723394389",
	["lucide-framer"] = "rbxassetid://10723394565",
	["lucide-frown"] = "rbxassetid://10723394681",
	["lucide-fuel"] = "rbxassetid://10723394846",
	["lucide-function-square"] = "rbxassetid://10723395041",
	["lucide-gamepad"] = "rbxassetid://10723395457",
	["lucide-gamepad-2"] = "rbxassetid://10723395215",
	["lucide-gauge"] = "rbxassetid://10723395708",
	["lucide-gavel"] = "rbxassetid://10723395896",
	["lucide-gem"] = "rbxassetid://10723396000",
	["lucide-ghost"] = "rbxassetid://10723396107",
	["lucide-gift"] = "rbxassetid://10723396402",
	["lucide-gift-card"] = "rbxassetid://10723396225",
	["lucide-git-branch"] = "rbxassetid://10723396676",
	["lucide-git-branch-plus"] = "rbxassetid://10723396542",
	["lucide-git-commit"] = "rbxassetid://10723396812",
	["lucide-git-compare"] = "rbxassetid://10723396954",
	["lucide-git-fork"] = "rbxassetid://10723397049",
	["lucide-git-merge"] = "rbxassetid://10723397165",
	["lucide-git-pull-request"] = "rbxassetid://10723397431",
	["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
	["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
	["lucide-glass"] = "rbxassetid://10723397788",
	["lucide-glass-2"] = "rbxassetid://10723397529",
	["lucide-glass-water"] = "rbxassetid://10723397678",
	["lucide-glasses"] = "rbxassetid://10723397895",
	["lucide-globe"] = "rbxassetid://10723404337",
	["lucide-globe-2"] = "rbxassetid://10723398002",
	["lucide-grab"] = "rbxassetid://10723404472",
	["lucide-graduation-cap"] = "rbxassetid://10723404691",
	["lucide-grape"] = "rbxassetid://10723404822",
	["lucide-grid"] = "rbxassetid://10723404936",
	["lucide-grip-horizontal"] = "rbxassetid://10723405089",
	["lucide-grip-vertical"] = "rbxassetid://10723405236",
	["lucide-hammer"] = "rbxassetid://10723405360",
	["lucide-hand"] = "rbxassetid://10723405649",
	["lucide-hand-metal"] = "rbxassetid://10723405508",
	["lucide-hard-drive"] = "rbxassetid://10723405749",
	["lucide-hard-hat"] = "rbxassetid://10723405859",
	["lucide-hash"] = "rbxassetid://10723405975",
	["lucide-haze"] = "rbxassetid://10723406078",
	["lucide-headphones"] = "rbxassetid://10723406165",
	["lucide-heart"] = "rbxassetid://10723406885",
	["lucide-heart-crack"] = "rbxassetid://10723406299",
	["lucide-heart-handshake"] = "rbxassetid://10723406480",
	["lucide-heart-off"] = "rbxassetid://10723406662",
	["lucide-heart-pulse"] = "rbxassetid://10723406795",
	["lucide-help-circle"] = "rbxassetid://10723406988",
	["lucide-hexagon"] = "rbxassetid://10723407092",
	["lucide-highlighter"] = "rbxassetid://10723407192",
	["lucide-history"] = "rbxassetid://10723407335",
	["lucide-home"] = "rbxassetid://10723407389",
	["lucide-hourglass"] = "rbxassetid://10723407498",
	["lucide-ice-cream"] = "rbxassetid://10723414308",
	["lucide-image"] = "rbxassetid://10723415040",
	["lucide-image-minus"] = "rbxassetid://10723414487",
	["lucide-image-off"] = "rbxassetid://10723414677",
	["lucide-image-plus"] = "rbxassetid://10723414827",
	["lucide-import"] = "rbxassetid://10723415205",
	["lucide-inbox"] = "rbxassetid://10723415335",
	["lucide-indent"] = "rbxassetid://10723415494",
	["lucide-indian-rupee"] = "rbxassetid://10723415642",
	["lucide-infinity"] = "rbxassetid://10723415766",
	["lucide-info"] = "rbxassetid://10723415903",
	["lucide-inspect"] = "rbxassetid://10723416057",
	["lucide-italic"] = "rbxassetid://10723416195",
	["lucide-japanese-yen"] = "rbxassetid://10723416363",
	["lucide-joystick"] = "rbxassetid://10723416527",
	["lucide-key"] = "rbxassetid://10723416652",
	["lucide-keyboard"] = "rbxassetid://10723416765",
	["lucide-lamp"] = "rbxassetid://10723417513",
	["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
	["lucide-lamp-desk"] = "rbxassetid://10723417016",
	["lucide-lamp-floor"] = "rbxassetid://10723417131",
	["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
	["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
	["lucide-landmark"] = "rbxassetid://10723417608",
	["lucide-languages"] = "rbxassetid://10723417703",
	["lucide-laptop"] = "rbxassetid://10723423881",
	["lucide-laptop-2"] = "rbxassetid://10723417797",
	["lucide-lasso"] = "rbxassetid://10723424235",
	["lucide-lasso-select"] = "rbxassetid://10723424058",
	["lucide-laugh"] = "rbxassetid://10723424372",
	["lucide-layers"] = "rbxassetid://10723424505",
	["lucide-layout"] = "rbxassetid://10723425376",
	["lucide-layout-dashboard"] = "rbxassetid://10723424646",
	["lucide-layout-grid"] = "rbxassetid://10723424838",
	["lucide-layout-list"] = "rbxassetid://10723424963",
	["lucide-layout-template"] = "rbxassetid://10723425187",
	["lucide-leaf"] = "rbxassetid://10723425539",
	["lucide-library"] = "rbxassetid://10723425615",
	["lucide-life-buoy"] = "rbxassetid://10723425685",
	["lucide-lightbulb"] = "rbxassetid://10723425852",
	["lucide-lightbulb-off"] = "rbxassetid://10723425762",
	["lucide-line-chart"] = "rbxassetid://10723426393",
	["lucide-link"] = "rbxassetid://10723426722",
	["lucide-link-2"] = "rbxassetid://10723426595",
	["lucide-link-2-off"] = "rbxassetid://10723426513",
	["lucide-list"] = "rbxassetid://10723433811",
	["lucide-list-checks"] = "rbxassetid://10734884548",
	["lucide-list-end"] = "rbxassetid://10723426886",
	["lucide-list-minus"] = "rbxassetid://10723426986",
	["lucide-list-music"] = "rbxassetid://10723427081",
	["lucide-list-ordered"] = "rbxassetid://10723427199",
	["lucide-list-plus"] = "rbxassetid://10723427334",
	["lucide-list-start"] = "rbxassetid://10723427494",
	["lucide-list-video"] = "rbxassetid://10723427619",
	["lucide-list-x"] = "rbxassetid://10723433655",
	["lucide-loader"] = "rbxassetid://10723434070",
	["lucide-loader-2"] = "rbxassetid://10723433935",
	["lucide-locate"] = "rbxassetid://10723434557",
	["lucide-locate-fixed"] = "rbxassetid://10723434236",
	["lucide-locate-off"] = "rbxassetid://10723434379",
	["lucide-lock"] = "rbxassetid://10723434711",
	["lucide-log-in"] = "rbxassetid://10723434830",
	["lucide-log-out"] = "rbxassetid://10723434906",
	["lucide-luggage"] = "rbxassetid://10723434993",
	["lucide-magnet"] = "rbxassetid://10723435069",
	["lucide-mail"] = "rbxassetid://10734885430",
	["lucide-mail-check"] = "rbxassetid://10723435182",
	["lucide-mail-minus"] = "rbxassetid://10723435261",
	["lucide-mail-open"] = "rbxassetid://10723435342",
	["lucide-mail-plus"] = "rbxassetid://10723435443",
	["lucide-mail-question"] = "rbxassetid://10723435515",
	["lucide-mail-search"] = "rbxassetid://10734884739",
	["lucide-mail-warning"] = "rbxassetid://10734885015",
	["lucide-mail-x"] = "rbxassetid://10734885247",
	["lucide-mails"] = "rbxassetid://10734885614",
	["lucide-map"] = "rbxassetid://10734886202",
	["lucide-map-pin"] = "rbxassetid://10734886004",
	["lucide-map-pin-off"] = "rbxassetid://10734885803",
	["lucide-maximize"] = "rbxassetid://10734886735",
	["lucide-maximize-2"] = "rbxassetid://10734886496",
	["lucide-medal"] = "rbxassetid://10734887072",
	["lucide-megaphone"] = "rbxassetid://10734887454",
	["lucide-megaphone-off"] = "rbxassetid://10734887311",
	["lucide-meh"] = "rbxassetid://10734887603",
	["lucide-menu"] = "rbxassetid://10734887784",
	["lucide-message-circle"] = "rbxassetid://10734888000",
	["lucide-message-square"] = "rbxassetid://10734888228",
	["lucide-mic"] = "rbxassetid://10734888864",
	["lucide-mic-2"] = "rbxassetid://10734888430",
	["lucide-mic-off"] = "rbxassetid://10734888646",
	["lucide-microscope"] = "rbxassetid://10734889106",
	["lucide-microwave"] = "rbxassetid://10734895076",
	["lucide-milestone"] = "rbxassetid://10734895310",
	["lucide-minimize"] = "rbxassetid://10734895698",
	["lucide-minimize-2"] = "rbxassetid://10734895530",
	["lucide-minus"] = "rbxassetid://10734896206",
	["lucide-minus-circle"] = "rbxassetid://10734895856",
	["lucide-minus-square"] = "rbxassetid://10734896029",
	["lucide-monitor"] = "rbxassetid://10734896881",
	["lucide-monitor-off"] = "rbxassetid://10734896360",
	["lucide-monitor-speaker"] = "rbxassetid://10734896512",
	["lucide-moon"] = "rbxassetid://10734897102",
	["lucide-more-horizontal"] = "rbxassetid://10734897250",
	["lucide-more-vertical"] = "rbxassetid://10734897387",
	["lucide-mountain"] = "rbxassetid://10734897956",
	["lucide-mountain-snow"] = "rbxassetid://10734897665",
	["lucide-mouse"] = "rbxassetid://10734898592",
	["lucide-mouse-pointer"] = "rbxassetid://10734898476",
	["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
	["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
	["lucide-move"] = "rbxassetid://10734900011",
	["lucide-move-3d"] = "rbxassetid://10734898756",
	["lucide-move-diagonal"] = "rbxassetid://10734899164",
	["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
	["lucide-move-horizontal"] = "rbxassetid://10734899414",
	["lucide-move-vertical"] = "rbxassetid://10734899821",
	["lucide-music"] = "rbxassetid://10734905958",
	["lucide-music-2"] = "rbxassetid://10734900215",
	["lucide-music-3"] = "rbxassetid://10734905665",
	["lucide-music-4"] = "rbxassetid://10734905823",
	["lucide-navigation"] = "rbxassetid://10734906744",
	["lucide-navigation-2"] = "rbxassetid://10734906332",
	["lucide-navigation-2-off"] = "rbxassetid://10734906144",
	["lucide-navigation-off"] = "rbxassetid://10734906580",
	["lucide-network"] = "rbxassetid://10734906975",
	["lucide-newspaper"] = "rbxassetid://10734907168",
	["lucide-octagon"] = "rbxassetid://10734907361",
	["lucide-option"] = "rbxassetid://10734907649",
	["lucide-outdent"] = "rbxassetid://10734907933",
	["lucide-package"] = "rbxassetid://10734909540",
	["lucide-package-2"] = "rbxassetid://10734908151",
	["lucide-package-check"] = "rbxassetid://10734908384",
	["lucide-package-minus"] = "rbxassetid://10734908626",
	["lucide-package-open"] = "rbxassetid://10734908793",
	["lucide-package-plus"] = "rbxassetid://10734909016",
	["lucide-package-search"] = "rbxassetid://10734909196",
	["lucide-package-x"] = "rbxassetid://10734909375",
	["lucide-paint-bucket"] = "rbxassetid://10734909847",
	["lucide-paintbrush"] = "rbxassetid://10734910187",
	["lucide-paintbrush-2"] = "rbxassetid://10734910030",
	["lucide-palette"] = "rbxassetid://10734910430",
	["lucide-palmtree"] = "rbxassetid://10734910680",
	["lucide-paperclip"] = "rbxassetid://10734910927",
	["lucide-party-popper"] = "rbxassetid://10734918735",
	["lucide-pause"] = "rbxassetid://10734919336",
	["lucide-pause-circle"] = "rbxassetid://10735024209",
	["lucide-pause-octagon"] = "rbxassetid://10734919143",
	["lucide-pen-tool"] = "rbxassetid://10734919503",
	["lucide-pencil"] = "rbxassetid://10734919691",
	["lucide-percent"] = "rbxassetid://10734919919",
	["lucide-person-standing"] = "rbxassetid://10734920149",
	["lucide-phone"] = "rbxassetid://10734921524",
	["lucide-phone-call"] = "rbxassetid://10734920305",
	["lucide-phone-forwarded"] = "rbxassetid://10734920508",
	["lucide-phone-incoming"] = "rbxassetid://10734920694",
	["lucide-phone-missed"] = "rbxassetid://10734920845",
	["lucide-phone-off"] = "rbxassetid://10734921077",
	["lucide-phone-outgoing"] = "rbxassetid://10734921288",
	["lucide-pie-chart"] = "rbxassetid://10734921727",
	["lucide-piggy-bank"] = "rbxassetid://10734921935",
	["lucide-pin"] = "rbxassetid://10734922324",
	["lucide-pin-off"] = "rbxassetid://10734922180",
	["lucide-pipette"] = "rbxassetid://10734922497",
	["lucide-pizza"] = "rbxassetid://10734922774",
	["lucide-plane"] = "rbxassetid://10734922971",
	["lucide-play"] = "rbxassetid://10734923549",
	["lucide-play-circle"] = "rbxassetid://10734923214",
	["lucide-plus"] = "rbxassetid://10734924532",
	["lucide-plus-circle"] = "rbxassetid://10734923868",
	["lucide-plus-square"] = "rbxassetid://10734924219",
	["lucide-podcast"] = "rbxassetid://10734929553",
	["lucide-pointer"] = "rbxassetid://10734929723",
	["lucide-pound-sterling"] = "rbxassetid://10734929981",
	["lucide-power"] = "rbxassetid://10734930466",
	["lucide-power-off"] = "rbxassetid://10734930257",
	["lucide-printer"] = "rbxassetid://10734930632",
	["lucide-puzzle"] = "rbxassetid://10734930886",
	["lucide-quote"] = "rbxassetid://10734931234",
	["lucide-radio"] = "rbxassetid://10734931596",
	["lucide-radio-receiver"] = "rbxassetid://10734931402",
	["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
	["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
	["lucide-recycle"] = "rbxassetid://10734932295",
	["lucide-redo"] = "rbxassetid://10734932822",
	["lucide-redo-2"] = "rbxassetid://10734932586",
	["lucide-refresh-ccw"] = "rbxassetid://10734933056",
	["lucide-refresh-cw"] = "rbxassetid://10734933222",
	["lucide-refrigerator"] = "rbxassetid://10734933465",
	["lucide-regex"] = "rbxassetid://10734933655",
	["lucide-repeat"] = "rbxassetid://10734933966",
	["lucide-repeat-1"] = "rbxassetid://10734933826",
	["lucide-reply"] = "rbxassetid://10734934252",
	["lucide-reply-all"] = "rbxassetid://10734934132",
	["lucide-rewind"] = "rbxassetid://10734934347",
	["lucide-rocket"] = "rbxassetid://10734934585",
	["lucide-rocking-chair"] = "rbxassetid://10734939942",
	["lucide-rotate-3d"] = "rbxassetid://10734940107",
	["lucide-rotate-ccw"] = "rbxassetid://10734940376",
	["lucide-rotate-cw"] = "rbxassetid://10734940654",
	["lucide-rss"] = "rbxassetid://10734940825",
	["lucide-ruler"] = "rbxassetid://10734941018",
	["lucide-russian-ruble"] = "rbxassetid://10734941199",
	["lucide-sailboat"] = "rbxassetid://10734941354",
	["lucide-save"] = "rbxassetid://10734941499",
	["lucide-scale"] = "rbxassetid://10734941912",
	["lucide-scale-3d"] = "rbxassetid://10734941739",
	["lucide-scaling"] = "rbxassetid://10734942072",
	["lucide-scan"] = "rbxassetid://10734942565",
	["lucide-scan-face"] = "rbxassetid://10734942198",
	["lucide-scan-line"] = "rbxassetid://10734942351",
	["lucide-scissors"] = "rbxassetid://10734942778",
	["lucide-screen-share"] = "rbxassetid://10734943193",
	["lucide-screen-share-off"] = "rbxassetid://10734942967",
	["lucide-scroll"] = "rbxassetid://10734943448",
	["lucide-search"] = "rbxassetid://10734943674",
	["lucide-send"] = "rbxassetid://10734943902",
	["lucide-separator-horizontal"] = "rbxassetid://10734944115",
	["lucide-separator-vertical"] = "rbxassetid://10734944326",
	["lucide-server"] = "rbxassetid://10734949856",
	["lucide-server-cog"] = "rbxassetid://10734944444",
	["lucide-server-crash"] = "rbxassetid://10734944554",
	["lucide-server-off"] = "rbxassetid://10734944668",
	["lucide-settings"] = "rbxassetid://10734950309",
	["lucide-settings-2"] = "rbxassetid://10734950020",
	["lucide-share"] = "rbxassetid://10734950813",
	["lucide-share-2"] = "rbxassetid://10734950553",
	["lucide-sheet"] = "rbxassetid://10734951038",
	["lucide-shield"] = "rbxassetid://10734951847",
	["lucide-shield-alert"] = "rbxassetid://10734951173",
	["lucide-shield-check"] = "rbxassetid://10734951367",
	["lucide-shield-close"] = "rbxassetid://10734951535",
	["lucide-shield-off"] = "rbxassetid://10734951684",
	["lucide-shirt"] = "rbxassetid://10734952036",
	["lucide-shopping-bag"] = "rbxassetid://10734952273",
	["lucide-shopping-cart"] = "rbxassetid://10734952479",
	["lucide-shovel"] = "rbxassetid://10734952773",
	["lucide-shower-head"] = "rbxassetid://10734952942",
	["lucide-shrink"] = "rbxassetid://10734953073",
	["lucide-shrub"] = "rbxassetid://10734953241",
	["lucide-shuffle"] = "rbxassetid://10734953451",
	["lucide-sidebar"] = "rbxassetid://10734954301",
	["lucide-sidebar-close"] = "rbxassetid://10734953715",
	["lucide-sidebar-open"] = "rbxassetid://10734954000",
	["lucide-sigma"] = "rbxassetid://10734954538",
	["lucide-signal"] = "rbxassetid://10734961133",
	["lucide-signal-high"] = "rbxassetid://10734954807",
	["lucide-signal-low"] = "rbxassetid://10734955080",
	["lucide-signal-medium"] = "rbxassetid://10734955336",
	["lucide-signal-zero"] = "rbxassetid://10734960878",
	["lucide-siren"] = "rbxassetid://10734961284",
	["lucide-skip-back"] = "rbxassetid://10734961526",
	["lucide-skip-forward"] = "rbxassetid://10734961809",
	["lucide-skull"] = "rbxassetid://10734962068",
	["lucide-slack"] = "rbxassetid://10734962339",
	["lucide-slash"] = "rbxassetid://10734962600",
	["lucide-slice"] = "rbxassetid://10734963024",
	["lucide-sliders"] = "rbxassetid://10734963400",
	["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
	["lucide-smartphone"] = "rbxassetid://10734963940",
	["lucide-smartphone-charging"] = "rbxassetid://10734963671",
	["lucide-smile"] = "rbxassetid://10734964441",
	["lucide-smile-plus"] = "rbxassetid://10734964188",
	["lucide-snowflake"] = "rbxassetid://10734964600",
	["lucide-sofa"] = "rbxassetid://10734964852",
	["lucide-sort-asc"] = "rbxassetid://10734965115",
	["lucide-sort-desc"] = "rbxassetid://10734965287",
	["lucide-speaker"] = "rbxassetid://10734965419",
	["lucide-sprout"] = "rbxassetid://10734965572",
	["lucide-square"] = "rbxassetid://10734965702",
	["lucide-star"] = "rbxassetid://10734966248",
	["lucide-star-half"] = "rbxassetid://10734965897",
	["lucide-star-off"] = "rbxassetid://10734966097",
	["lucide-stethoscope"] = "rbxassetid://10734966384",
	["lucide-sticker"] = "rbxassetid://10734972234",
	["lucide-sticky-note"] = "rbxassetid://10734972463",
	["lucide-stop-circle"] = "rbxassetid://10734972621",
	["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
	["lucide-stretch-vertical"] = "rbxassetid://10734973130",
	["lucide-strikethrough"] = "rbxassetid://10734973290",
	["lucide-subscript"] = "rbxassetid://10734973457",
	["lucide-sun"] = "rbxassetid://10734974297",
	["lucide-sun-dim"] = "rbxassetid://10734973645",
	["lucide-sun-medium"] = "rbxassetid://10734973778",
	["lucide-sun-moon"] = "rbxassetid://10734973999",
	["lucide-sun-snow"] = "rbxassetid://10734974130",
	["lucide-sunrise"] = "rbxassetid://10734974522",
	["lucide-sunset"] = "rbxassetid://10734974689",
	["lucide-superscript"] = "rbxassetid://10734974850",
	["lucide-swiss-franc"] = "rbxassetid://10734975024",
	["lucide-switch-camera"] = "rbxassetid://10734975214",
	["lucide-sword"] = "rbxassetid://10734975486",
	["lucide-swords"] = "rbxassetid://10734975692",
	["lucide-syringe"] = "rbxassetid://10734975932",
	["lucide-table"] = "rbxassetid://10734976230",
	["lucide-table-2"] = "rbxassetid://10734976097",
	["lucide-tablet"] = "rbxassetid://10734976394",
	["lucide-tag"] = "rbxassetid://10734976528",
	["lucide-tags"] = "rbxassetid://10734976739",
	["lucide-target"] = "rbxassetid://10734977012",
	["lucide-tent"] = "rbxassetid://10734981750",
	["lucide-terminal"] = "rbxassetid://10734982144",
	["lucide-terminal-square"] = "rbxassetid://10734981995",
	["lucide-text-cursor"] = "rbxassetid://10734982395",
	["lucide-text-cursor-input"] = "rbxassetid://10734982297",
	["lucide-thermometer"] = "rbxassetid://10734983134",
	["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
	["lucide-thermometer-sun"] = "rbxassetid://10734982771",
	["lucide-thumbs-down"] = "rbxassetid://10734983359",
	["lucide-thumbs-up"] = "rbxassetid://10734983629",
	["lucide-ticket"] = "rbxassetid://10734983868",
	["lucide-timer"] = "rbxassetid://10734984606",
	["lucide-timer-off"] = "rbxassetid://10734984138",
	["lucide-timer-reset"] = "rbxassetid://10734984355",
	["lucide-toggle-left"] = "rbxassetid://10734984834",
	["lucide-toggle-right"] = "rbxassetid://10734985040",
	["lucide-tornado"] = "rbxassetid://10734985247",
	["lucide-toy-brick"] = "rbxassetid://10747361919",
	["lucide-train"] = "rbxassetid://10747362105",
	["lucide-trash"] = "rbxassetid://10747362393",
	["lucide-trash-2"] = "rbxassetid://10747362241",
	["lucide-tree-deciduous"] = "rbxassetid://10747362534",
	["lucide-tree-pine"] = "rbxassetid://10747362748",
	["lucide-trees"] = "rbxassetid://10747363016",
	["lucide-trending-down"] = "rbxassetid://10747363205",
	["lucide-trending-up"] = "rbxassetid://10747363465",
	["lucide-triangle"] = "rbxassetid://10747363621",
	["lucide-trophy"] = "rbxassetid://10747363809",
	["lucide-truck"] = "rbxassetid://10747364031",
	["lucide-tv"] = "rbxassetid://10747364593",
	["lucide-tv-2"] = "rbxassetid://10747364302",
	["lucide-type"] = "rbxassetid://10747364761",
	["lucide-umbrella"] = "rbxassetid://10747364971",
	["lucide-underline"] = "rbxassetid://10747365191",
	["lucide-undo"] = "rbxassetid://10747365484",
	["lucide-undo-2"] = "rbxassetid://10747365359",
	["lucide-unlink"] = "rbxassetid://10747365771",
	["lucide-unlink-2"] = "rbxassetid://10747397871",
	["lucide-unlock"] = "rbxassetid://10747366027",
	["lucide-upload"] = "rbxassetid://10747366434",
	["lucide-upload-cloud"] = "rbxassetid://10747366266",
	["lucide-usb"] = "rbxassetid://10747366606",
	["lucide-user"] = "rbxassetid://10747373176",
	["lucide-user-check"] = "rbxassetid://10747371901",
	["lucide-user-cog"] = "rbxassetid://10747372167",
	["lucide-user-minus"] = "rbxassetid://10747372346",
	["lucide-user-plus"] = "rbxassetid://10747372702",
	["lucide-user-x"] = "rbxassetid://10747372992",
	["lucide-users"] = "rbxassetid://10747373426",
	["lucide-utensils"] = "rbxassetid://10747373821",
	["lucide-utensils-crossed"] = "rbxassetid://10747373629",
	["lucide-venetian-mask"] = "rbxassetid://10747374003",
	["lucide-verified"] = "rbxassetid://10747374131",
	["lucide-vibrate"] = "rbxassetid://10747374489",
	["lucide-vibrate-off"] = "rbxassetid://10747374269",
	["lucide-video"] = "rbxassetid://10747374938",
	["lucide-video-off"] = "rbxassetid://10747374721",
	["lucide-view"] = "rbxassetid://10747375132",
	["lucide-voicemail"] = "rbxassetid://10747375281",
	["lucide-volume"] = "rbxassetid://10747376008",
	["lucide-volume-1"] = "rbxassetid://10747375450",
	["lucide-volume-2"] = "rbxassetid://10747375679",
	["lucide-volume-x"] = "rbxassetid://10747375880",
	["lucide-wallet"] = "rbxassetid://10747376205",
	["lucide-wand"] = "rbxassetid://10747376565",
	["lucide-wand-2"] = "rbxassetid://10747376349",
	["lucide-watch"] = "rbxassetid://10747376722",
	["lucide-waves"] = "rbxassetid://10747376931",
	["lucide-webcam"] = "rbxassetid://10747381992",
	["lucide-wifi"] = "rbxassetid://10747382504",
	["lucide-wifi-off"] = "rbxassetid://10747382268",
	["lucide-wind"] = "rbxassetid://10747382750",
	["lucide-wrap-text"] = "rbxassetid://10747383065",
	["lucide-wrench"] = "rbxassetid://10747383470",
	["lucide-x"] = "rbxassetid://10747384394",
	["lucide-x-circle"] = "rbxassetid://10747383819",
	["lucide-x-octagon"] = "rbxassetid://10747384037",
	["lucide-x-square"] = "rbxassetid://10747384217",
	["lucide-zoom-in"] = "rbxassetid://10747384552",
	["lucide-zoom-out"] = "rbxassetid://10747384679",
}

local IconService
do
	local Bundled: { [string]: string } = Icons

	type IconResult = {
		Image: string,
		ImageRectOffset: Vector2,
		ImageRectSize: Vector2,
	}

	type ParsedSpec = {
		Pack: string?,
		Name: string,
		Variant: string?,
		Size: string?,
		Explicit: boolean,
		Ambiguous: boolean,
		FullName: string,
	}

	type Provider = {
		Url: string?,
		Default: string?,
		Variants: { [string]: any }?,
		Sizes: { string }?,
		Prefix: string?,
		Aliases: { string }?,
	}

	type Source = {
		Index: { [string]: any },
		Sprites: { [string]: string }?,
		Resolved: { [string]: IconResult | false },
		Names: { string }?,
		Squashed: { [string]: any }?,
	}

	local AllowedPrefixes: { string } = {
		"https://raw.githubusercontent.com/StyearX/Icons/",
		"https://raw.githubusercontent.com/AlexanderTheWorst/Gloam/", -- this dude is stupid nigger he should kill himself
	}
	local DefaultPack = "lucide"
	local DefaultMaterialSize = "36"
	local RetryDelay = 30
	local CacheFolder = "IconServiceCache"
	local CacheTTL = 60 * 60 * 24 * 7

	local Base = AllowedPrefixes[1] .. "refs/heads/main/"
	local GloamBase = AllowedPrefixes[2] .. "refs/heads/main/Icons/"

	local Providers: { [string]: Provider } = {
		lucide = { Url = Base .. "lucide/dist/Icons.lua" },
		solar = { Url = Base .. "solar/dist/Icons.lua" },
		gravity = { Url = Base .. "gravity/dist/Icons.lua" },
		hero = { Url = Base .. "hero/dist/Icons.lua" },
		feather = { Url = Base .. "Feather/dist/Icons.lua" },
		sfsymbols = { Url = Base .. "sfsymbols/dist/Icons.lua" },
		geist = { Url = Base .. "geist/dist/Icons.lua" },
		tabler = { Url = Base .. "Tabler/dist/Icons.lua" },
		phosphor = { Url = Base .. "Phosphor/dist/Icons.lua" },
		bootstrap = { Url = Base .. "Bootstrap/dist/Icons.lua" },
		craft = { Url = Base .. "craft/dist/Icons.lua" },
		prime = { Url = Base .. "prime/dist/Icons.lua" },
		pixelart = { Url = Base .. "PixelArtsIcons/dist/Icons.lua" },
		remix = { Url = GloamBase .. "Remix/assets.luau" },
		gloam = {
			Default = "lucide",
			Variants = {
				lucide = GloamBase .. "Lucide/assets.luau",
				hero = GloamBase .. "Hero/assets.luau",
				phosphor = GloamBase .. "Phosphor/assets.luau",
				remix = GloamBase .. "Remix/assets.luau",
				tabler = GloamBase .. "Tabler/assets.luau",
				material = GloamBase .. "Material/400_24_rounded/assets.luau",
			},
		},
		fluent = {
			Default = "filled",
			Variants = {
				filled = Base .. "Fluent/dist/Variant/Filled/Icons.lua",
				outlined = Base .. "Fluent/dist/Variant/Outlined/Icons.lua",
			},
		},
		mynaui = {
			Default = "solid",
			Variants = {
				solid = Base .. "MynaUi/dist/Variant/Solid/Icons.lua",
				regular = Base .. "MynaUi/dist/Variant/Regular/Icons.lua",
			},
		},
		majestic = {
			Default = "line",
			Variants = {
				line = Base .. "Majestic/dist/Variant/Line/Icons.lua",
				solid = Base .. "Majestic/dist/Variant/Solid/Icons.lua",
			},
		},
		weui = {
			Default = "filled",
			Variants = {
				filled = Base .. "WeUi/dist/Variant/Filled/Icons.lua",
				outlined = Base .. "WeUi/dist/Variant/Outlined/Icons.lua",
			},
		},
		material = {
			Default = "default",
			Url = Base .. "Material/dist/%s%sPart%d.lua",
			Sizes = { "18", "24", "36", "48" },
			Variants = {
				default = { Style = "Default", Parts = 4 },
				outlined = { Style = "Outlined", Parts = 2 },
				round = { Style = "Round", Parts = 2 },
				sharp = { Style = "Sharp", Parts = 2 },
				twotone = { Style = "Twotone", Parts = 2 },
			},
		},
	}

	local Aliases: { [string]: string } = {
		mat = "material",
		md = "material",
		googlematerial = "material",
		sf = "sfsymbols",
		sfs = "sfsymbols",
		pixel = "pixelart",
		pixelarts = "pixelart",
		myna = "mynaui",
		fluentui = "fluent",
		heroicons = "hero",
		ph = "phosphor",
		gl = "gloam",
	}

	local SuffixOrder = { "line", "linear", "outline", "outlined", "regular", "solid", "bold", "filled", "fill" }

	local Settings = {
		DiskCache = true,
		Fuzzy = true,
	}

	local Sources: { [string]: Source } = {}
	local Pending: { [string]: { thread } } = {}
	local Failures: { [string]: number } = {}
	local BundledResults: { [string]: IconResult } = {}
	local BundledSquashed: { [string]: string }? = nil

	IconService = {
		Settings = Settings,
	}

	local function Normalize(name: string): string
		local result = name:gsub("(%l)(%u)", "%1-%2")
		result = result:gsub("(%u)(%u%l)", "%1-%2")
		result = result:lower():gsub("[%s_]+", "-")
		result = result:gsub("%-+", "-")
		result = result:gsub("^%-", "")
		result = result:gsub("%-$", "")
		return result
	end

	local function Squash(name: string): string
		local result = name:gsub("%-", "")
		return result
	end

	local function Tokenize(spec: string): { string }
		local tokens = {}
		for token in spec:gmatch("[^:/;\\~]+") do
			local trimmed = token:match("^%s*(.-)%s*$")
			if trimmed and trimmed ~= "" then
				table.insert(tokens, trimmed)
			end
		end
		return tokens
	end

	local function ResolvePack(token: string): string?
		local key = token:lower():gsub("[%s_%-]", "")
		key = Aliases[key] or key
		return if Providers[key] then key else nil
	end

	local function Exec(name: string): any
		return (getfenv() :: any)[name]
	end

	local function HttpGet(url: string): string?
		local ok, body = pcall(function()
			return (game :: any):HttpGet(url, true)
		end)
		if ok and type(body) == "string" and #body > 0 then
			return body
		end

		ok, body = pcall(function()
			return HttpService:GetAsync(url)
		end)
		if ok and type(body) == "string" and #body > 0 then
			return body
		end
		return nil
	end

	local function CachePath(url: string): string
		local safe = url:gsub("[^%w]+", "_")
		return `{CacheFolder}/{safe}.lua`
	end

	local function CacheRead(path: string): (string?, boolean)
		local isfile, readfile = Exec("isfile"), Exec("readfile")
		if not (isfile and readfile) then
			return nil, false
		end

		local existsOk, exists = pcall(isfile, path)
		if not (existsOk and exists) then
			return nil, false
		end

		local ok, content = pcall(readfile, path)
		if not (ok and type(content) == "string") then
			return nil, false
		end

		local header, stamp = content:match("^(%-%-cached (%d+)\n)")
		if not (header and stamp) then
			return nil, false
		end

		local fresh = os.time() - (tonumber(stamp) or 0) < CacheTTL
		return content:sub(#header + 1), fresh
	end

	local function CacheWrite(path: string, body: string)
		local isfolder, makefolder, writefile = Exec("isfolder"), Exec("makefolder"), Exec("writefile")
		if not (isfolder and makefolder and writefile) then
			return
		end

		pcall(function()
			if not isfolder(CacheFolder) then
				makefolder(CacheFolder)
			end
			writefile(path, `--cached {os.time()}\n{body}`)
		end)
	end

	local function Fetch(url: string, skipCache: boolean?): (string?, boolean)
		local allowed = false
		for _, prefix in AllowedPrefixes do
			if url:sub(1, #prefix) == prefix then
				allowed = true
				break
			end
		end
		if not allowed then
			return nil, false
		end

		local path = CachePath(url)
		local stale: string? = nil

		if Settings.DiskCache and not skipCache then
			local cached, fresh = CacheRead(path)
			if cached then
				if fresh then
					return cached, true
				end
				stale = cached
			end
		end

		local body = HttpGet(url)
		if body then
			if Settings.DiskCache then
				CacheWrite(path, body)
			end
			return body, false
		end

		return stale, stale ~= nil
	end

	local function ParseSource(body: string): any?
		local loader: any = loadstring
		if not loader then
			return nil
		end

		local patched = ("\n" .. body):gsub("\n(%s*)([%w_][%w%-_]*)%s*=%s*%{", function(indent: string, key: string)
			if key == "return" or key == "Icons" or key == "Spritesheets" then
				return `\n{indent}{key} = \{`
			end
			return `\n{indent}["{key}"] = \{`
		end)

		local chunk = loader(patched)
		if not chunk then
			return nil
		end

		local ok, result = pcall(chunk)
		if ok and type(result) == "table" then
			return result
		end
		return nil
	end

	local function Combine(parts: { any }): any
		if #parts == 1 then
			return parts[1]
		end

		local icons: { [string]: any } = {}
		local sheets: { [string]: any } = {}
		local flat: { [string]: any } = {}

		for _, part in parts do
			if part.Icons then
				for key, value in part.Icons do
					icons[key] = value
				end
				for key, value in part.Spritesheets or {} do
					sheets[key] = value
				end
			else
				for key, value in part do
					flat[key] = value
				end
			end
		end

		if next(icons) then
			return { Icons = icons, Spritesheets = sheets }
		end
		return flat
	end

	local function BuildSource(result: any): Source
		local raw = result.Icons or result
		local index: { [string]: any } = {}

		for key, entry in raw do
			if type(key) == "string" then
				local name = Normalize(key)
				if index[name] == nil then
					index[name] = entry
				end
			end
		end

		return {
			Index = index,
			Sprites = if result.Icons then (result.Spritesheets or {}) else nil,
			Resolved = {},
			Names = nil,
			Squashed = nil,
		}
	end

	local function Download(urls: { string }): Source?
		local parts = {}

		for _, url in urls do
			local body, fromCache = Fetch(url)
			local part = if body then ParseSource(body) else nil

			if not part and fromCache then
				body = Fetch(url, true)
				part = if body then ParseSource(body) else nil
			end

			if not part then
				return nil
			end
			table.insert(parts, part)
		end

		return BuildSource(Combine(parts))
	end

	local function LoadSource(key: string, urls: { string }): Source?
		local cached = Sources[key]
		if cached then
			return cached
		end

		local failedAt = Failures[key]
		if failedAt and os.clock() - failedAt < RetryDelay then
			return nil
		end

		local waiting = Pending[key]
		if waiting then
			table.insert(waiting, coroutine.running())
			coroutine.yield()
			return Sources[key]
		end

		local queue: { thread } = {}
		Pending[key] = queue

		local ok, source = pcall(Download, urls)
		Pending[key] = nil

		if ok and source then
			Sources[key] = source
			Failures[key] = nil
		else
			Failures[key] = os.clock()
			Library:Alert(`Icon pack '{key}' could not be loaded`)
		end

		for _, thread in queue do
			task.spawn(thread)
		end

		return Sources[key]
	end

	local function BuildRequest(pack: string, variant: any, size: any): (string?, { string }?, string?)
		local provider = Providers[pack]
		if not provider then
			return nil, nil, nil
		end

		local requested: string? = nil
		if variant ~= nil then
			requested = (tostring(variant):lower():gsub("[%s%-_]", ""))
		end

		local variants = provider.Variants

		if provider.Sizes and variants then
			local variantName = if requested and variants[requested] then requested else provider.Default :: string
			local info = variants[variantName]

			local wanted = if size ~= nil then tostring(size) else DefaultMaterialSize
			local sizeName = if table.find(provider.Sizes, wanted) then wanted else DefaultMaterialSize

			local urls = {}
			for part = 1, info.Parts do
				table.insert(urls, string.format(provider.Url :: string, info.Style, sizeName, part))
			end
			return `{pack}:{variantName}:{sizeName}`, urls, variantName
		end

		if variants then
			local variantName = if requested and variants[requested] then requested else provider.Default :: string
			local url = variants[variantName]
			if type(url) ~= "string" then
				return nil, nil, nil
			end
			return `{pack}:{variantName}`, { url }, variantName
		end

		return pack, { provider.Url :: string }, nil
	end

	local function BuildResult(source: Source, entry: any): IconResult?
		local image: string? = nil
		local offset = Vector2.zero
		local size = Vector2.zero

		if type(entry) == "string" then
			image = entry
		elseif type(entry) == "table" and entry.Image ~= nil then
			local sprites = source.Sprites
			local sheet = sprites and (sprites[tostring(entry.Image)] or (sprites :: any)[entry.Image])
			image = sheet or tostring(entry.Image)
			offset = entry.ImageRectOffset or entry.ImageRectPosition or offset
			size = entry.ImageRectSize or size
		end

		if not image then
			return nil
		end
		if image:match("^%d+$") then
			image = "rbxassetid://" .. image
		end

		return table.freeze({
			Image = image,
			ImageRectOffset = offset,
			ImageRectSize = size,
		})
	end

	local function GetNames(source: Source): { string }
		local names = source.Names
		if not names then
			names = {}
			for name in source.Index do
				table.insert(names :: { string }, name)
			end
			table.sort(names :: { string })
			source.Names = names
		end
		return names :: { string }
	end

	local function GetSquashed(source: Source): { [string]: any }
		local squashed = source.Squashed
		if not squashed then
			squashed = {}
			for _, name in GetNames(source) do
				local flat = Squash(name)
				if (squashed :: any)[flat] == nil then
					(squashed :: any)[flat] = source.Index[name]
				end
			end
			source.Squashed = squashed
		end
		return squashed :: { [string]: any }
	end

	local function Candidates(name: string, variantName: string?): { string }
		local list = { name }
		local seen = { [name] = true }

		local function add(candidate: string)
			if not seen[candidate] then
				seen[candidate] = true
				table.insert(list, candidate)
			end
		end

		local hashed = name:gsub("%-(%a+)$", "#%1")
		add(hashed)

		if variantName then
			add(`{name}-{variantName}`)
		end
		for _, suffix in SuffixOrder do
			add(`{name}-{suffix}`)
		end

		return list
	end

	local function FuzzyPrefix(source: Source, name: string): string?
		local prefix = name .. "-"
		local best: string? = nil

		for _, candidate in GetNames(source) do
			if candidate:sub(1, #prefix) == prefix and (best == nil or #candidate < #best) then
				best = candidate
			end
		end

		return best
	end

	local function Lookup(source: Source, name: string, variantName: string?): IconResult?
		local cached = source.Resolved[name]
		if cached ~= nil then
			return if cached then cached else nil
		end

		local candidates = Candidates(name, variantName)
		local entry: any = nil

		for _, candidate in candidates do
			local hit = source.Index[candidate]
			if hit ~= nil then
				entry = hit
				break
			end
		end

		if entry == nil then
			local squashed = GetSquashed(source)
			for _, candidate in candidates do
				local hit = squashed[Squash(candidate)]
				if hit ~= nil then
					entry = hit
					break
				end
			end
		end

		if entry == nil and Settings.Fuzzy then
			local match = FuzzyPrefix(source, name)
			if match then
				entry = source.Index[match]
			end
		end

		local result = if entry ~= nil then BuildResult(source, entry) else nil
		source.Resolved[name] = result or false
		return result
	end

	function IconService.Bundled(name: string, asset: string): IconResult
		local result = BundledResults[name]
		if not result then
			result = table.freeze({
				Image = asset,
				ImageRectOffset = Vector2.zero,
				ImageRectSize = Vector2.zero,
			})
			BundledResults[name] = result
		end
		return result
	end

	local function LookupBundled(name: string): IconResult?
		local asset = Bundled["lucide-" .. name]

		if not asset then
			if not BundledSquashed then
				local map: { [string]: string } = {}
				for key, value in Bundled do
					local stripped = key:gsub("^lucide%-", "")
					map[Squash(stripped)] = key
				end
				BundledSquashed = map
			end

			local key = (BundledSquashed :: { [string]: string })[Squash(name)]
			asset = if key then Bundled[key] else nil
		end

		return if asset then IconService.Bundled(name, asset) else nil
	end

	local function ResolveIn(pack: string, name: string, variant: any, size: any): IconResult?
		if pack == DefaultPack then
			local bundled = LookupBundled(name)
			if bundled then
				return bundled
			end
		end

		local key, urls, variantName = BuildRequest(pack, variant, size)
		if not (key and urls) then
			return nil
		end

		local source = LoadSource(key, urls)
		if not source then
			return nil
		end

		return Lookup(source, name, variantName)
	end

	IconService.Normalize = Normalize

	function IconService.Parse(spec: string): ParsedSpec
		local tokens = Tokenize(spec)
		local pack: string? = nil
		local explicit = false
		local ambiguous = false

		local fullName = Normalize(table.concat(tokens, "-"))

		if #tokens >= 2 then
			pack = ResolvePack(tokens[1])
			if pack then
				explicit = true
				table.remove(tokens, 1)
			end
		end

		local rest = Normalize(table.concat(tokens, "-"))

		if not pack then
			local head, tail = rest:match("^([^%-]+)%-(.+)$")
			if head and tail then
				local candidate = ResolvePack(head)
				if candidate then
					pack, rest, ambiguous = candidate, tail, true
				end
			end
		end

		local variant: string? = nil
		local size: string? = nil

		if pack then
			local provider = Providers[pack]
			local words = {}
			for word in rest:gmatch("[^%-]+") do
				table.insert(words, word)
			end

			local index = 1
			while index < #words do
				local word = words[index]
				if variant == nil and provider.Variants and provider.Variants[word] ~= nil then
					variant = word
				elseif size == nil and provider.Sizes and table.find(provider.Sizes, word) then
					size = word
				else
					break
				end
				index += 1
			end

			rest = table.concat(words, "-", index)
		end

		return {
			Pack = pack,
			Name = rest,
			Variant = variant,
			Size = size,
			Explicit = explicit,
			Ambiguous = ambiguous,
			FullName = fullName,
		}
	end

	function IconService.ResolveBundled(name: string): IconResult?
		local normalized = Normalize(name)
		normalized = normalized:gsub("^lucide%-", "")
		return LookupBundled(normalized)
	end

	function IconService.Resolve(spec: string, variant: string?, size: (string | number)?, defaultPack: string?): IconResult?
		if type(spec) ~= "string" or spec == "" then
			return nil
		end

		local fallbackPack = if defaultPack then (ResolvePack(defaultPack) or DefaultPack) else DefaultPack
		local parsed = IconService.Parse(spec)
		if parsed.Name == "" then
			return nil
		end

		if parsed.Ambiguous and parsed.Pack ~= DefaultPack then
			local bundled = LookupBundled(parsed.FullName)
			if bundled then
				return bundled
			end
		end

		local result = ResolveIn(parsed.Pack or fallbackPack, parsed.Name, parsed.Variant or variant, parsed.Size or size)
		if result then
			return result
		end

		if parsed.Ambiguous then
			result = ResolveIn(fallbackPack, parsed.FullName, variant, size)
			if result then
				return result
			end
		end

		return IconService.ResolveBundled(if parsed.Ambiguous then parsed.FullName else parsed.Name)
	end

	function IconService.Apply(
		object: any,
		spec: string,
		variant: string?,
		size: (string | number)?,
		defaultPack: string?
	): boolean
		local result = IconService.Resolve(spec, variant, size, defaultPack)
		if not result then
			return false
		end

		object.Image = result.Image
		object.ImageRectOffset = result.ImageRectOffset
		object.ImageRectSize = result.ImageRectSize
		return true
	end

	function IconService.Preload(packName: string, variant: string?, size: (string | number)?): boolean
		local pack = ResolvePack(tostring(packName))
		if not pack then
			return false
		end

		local key, urls = BuildRequest(pack, variant, size)
		if not (key and urls) then
			return false
		end
		return LoadSource(key, urls) ~= nil
	end

	function IconService.PreloadAsync(packName: string, variant: string?, size: (string | number)?)
		task.spawn(IconService.Preload, packName, variant, size)
	end

	function IconService.IsLoaded(packName: string, variant: string?, size: (string | number)?): boolean
		local pack = ResolvePack(tostring(packName))
		if not pack then
			return false
		end

		local key = BuildRequest(pack, variant, size)
		return key ~= nil and Sources[key] ~= nil
	end

	function IconService.Search(
		packName: string,
		query: string?,
		limit: number?,
		variant: string?,
		size: (string | number)?
	): { string }
		local pack = ResolvePack(tostring(packName))
		if not pack then
			return {}
		end

		local key, urls = BuildRequest(pack, variant, size)
		if not (key and urls) then
			return {}
		end

		local source = LoadSource(key, urls)
		if not source then
			return {}
		end

		local needle = Normalize(query or "")
		local flatNeedle = Squash(needle)
		local words = {}
		for word in needle:gmatch("[^%-]+") do
			table.insert(words, word)
		end

		local exact, prefixed, contained, wordMatch, loose = {}, {}, {}, {}, {}

		for _, name in GetNames(source) do
			if name == needle then
				table.insert(exact, name)
				continue
			end

			local position = name:find(needle, 1, true)
			if position == 1 then
				table.insert(prefixed, name)
			elseif position then
				table.insert(contained, name)
			else
				local all = #words > 1
				for _, word in words do
					if not name:find(word, 1, true) then
						all = false
						break
					end
				end

				if all then
					table.insert(wordMatch, name)
				elseif flatNeedle ~= "" and Squash(name):find(flatNeedle, 1, true) then
					table.insert(loose, name)
				end
			end
		end

		local found: { string } = {}
		for _, group in { exact, prefixed, contained, wordMatch, loose } do
			for _, name in group do
				if limit and #found >= limit then
					return found
				end
				table.insert(found, name)
			end
		end

		return found
	end

	function IconService.Register(packName: string, config: Provider)
		assert(type(packName) == "string", "Register - Missing pack name")
		assert(type(config) == "table" and (config.Url or config.Variants), "Register - Config needs Url or Variants")
		assert(type(config.Prefix) == "string", "Register - Config needs a Prefix naming the trusted source URL")

		local name = packName:lower()
		table.insert(AllowedPrefixes, config.Prefix :: string)
		Providers[name] = config

		for _, alias in config.Aliases or {} do
			Aliases[alias:lower()] = name
		end
	end

	function IconService.RegisterAlias(alias: string, packName: string)
		local pack = ResolvePack(packName)
		assert(pack, `RegisterAlias - unknown pack '{packName}'`)

		local flat = alias:lower():gsub("[%s_%-]", "")
		Aliases[flat] = pack :: string
	end

	function IconService.IsPack(packName: string): boolean
		return ResolvePack(tostring(packName)) ~= nil
	end

	function IconService.GetPacks(): { string }
		local names = {}
		for name in Providers do
			table.insert(names, name)
		end
		table.sort(names)
		return names
	end

	function IconService.GetVariants(packName: string): { string }
		local pack = ResolvePack(tostring(packName))
		local variants = pack and Providers[pack].Variants

		local names = {}
		if variants then
			for name in variants do
				table.insert(names, name)
			end
			table.sort(names)
		end
		return names
	end

	function IconService.Clear()
		table.clear(Sources)
		table.clear(Failures)
		table.clear(BundledResults)
		BundledSquashed = nil
	end
end

local function ToIconEntry(Entry, Variant, Size)
	if type(Entry) == "string" then
		return { Pack = Entry:lower(), Variant = Variant, Size = Size }
	end
	if type(Entry) == "table" and Entry.Pack then
		return { Pack = tostring(Entry.Pack):lower(), Variant = Entry.Variant, Size = Entry.Size }
	end
	return nil
end

function Library:SetIconPack(Context, Entry, Variant, Size)
	Library.IconDefaults[Context or "Default"] = ToIconEntry(Entry, Variant, Size)
end

function Library:GetIconPack(Context)
	return Library.IconDefaults[Context] or Library.IconDefaults.Default or { Pack = "lucide" }
end

function Library:ConfigureIconPacks(Config)
	if type(Config) == "string" then
		Library:SetIconPack("Default", Config)
		return
	end

	for Context, Entry in next, Config do
		Library:SetIconPack(Context, Entry)
	end
end

function Library:GetIconData(Name, Variant, Size, Context, Override)
	if type(Name) ~= "string" or Name == "" then
		return nil
	end

	local Prefix = Name:match("^(%w+):")
	if Prefix then
		if IconService.IsPack(Prefix) then
			return IconService.Resolve(Name, Variant, Size) or IconService.ResolveBundled(Name:sub(#Prefix + 2))
		end
		return nil
	end

	local Entry = ToIconEntry(Override) or Library:GetIconPack(Context)
	if Entry.Pack ~= "lucide" then
		local Data = IconService.Resolve(Entry.Pack .. ":" .. Name, Entry.Variant or Variant, Entry.Size or Size)
		if Data then
			return Data
		end
	end

	return IconService.Resolve(Name, Variant, Size)
end

function Library:GetIcon(Name, Variant, Size, Context)
	if type(Name) == "string" and Name:find("^rbxasset") then
		return Name, Vector2.zero, Vector2.zero
	end

	local Data = Library:GetIconData(Name, Variant, Size, Context)
	if Data then
		return Data.Image, Data.ImageRectOffset, Data.ImageRectSize
	end
	return nil
end

function Library:ApplyIcon(Object, Name, Variant, Size, Context)
	local Data = Library:GetIconData(Name, Variant, Size, Context)
	if not Data then
		return false
	end
	Creator.SetImage(Object, Data)
	return true
end

function Library:SetImage(Object, Value)
	Creator.SetImage(Object, Value)
end

function Library:PreloadIcons(Packs)
	task.spawn(function()
		for _, Pack in next, Packs or IconService.GetPacks() do
			if type(Pack) == "table" then
				IconService.Preload(Pack.Pack, Pack.Variant, Pack.Size)
			else
				IconService.Preload(Pack)
			end
			task.wait()
		end
	end)
end

function Library:SearchIcons(Pack, Query, Limit, Variant, Size)
	return IconService.Search(Pack, Query, Limit, Variant, Size)
end

function Library:RegisterIconPack(Name, Config)
	IconService.Register(Name, Config)
end

function Library:GetIconPacks()
	return IconService.GetPacks()
end

function Library:Debounce(Function, Delay)
	return Creator.Debounce(Function, Delay)
end

function Library:Throttle(Function, Interval)
	return Creator.Throttle(Function, Interval)
end

function Library:OnUnload(Callback)
	assert(type(Callback) == "function", "OnUnload - Callback must be a function")
	table.insert(Library.UnloadCallbacks, Callback)
end

function Library:IsUnloaded()
	return Library.Unloaded
end

function Library:Configure(Options: { [string]: any })
	assert(type(Options) == "table", "Library:Configure - expected a table")

	local Config = Library.Config
	for Key, Value in Options do
		local Current = Config[Key]
		if Current == nil or type(Value) ~= type(Current) then
			Library:Alert(`Configure - ignored "{Key}" (unknown option or wrong value type)`)
			continue
		end

		if Key == "AnimationSpeed" then
			Value = math.clamp(Value, 0.25, 4)
			SpringOptions.Frequency = 8 * Value
		end
		Config[Key] = Value
	end

	Creator.RefreshMarquee()
	Library.ConfigChanged:Fire(table.clone(Config))
	return Library
end

function Library:GetConfig(): { [string]: any }
	return table.clone(Library.Config)
end

local Components = {
	Assets = {
		Close = "rbxassetid://9886659671",
		Min = "rbxassetid://9886659276",
		Max = "rbxassetid://9886659406",
		Restore = "rbxassetid://9886659001",
		Checker = "http://www.roblox.com/asset/?id=14204231522",
		Dot = "http://www.roblox.com/asset/?id=12266946128",
		Shadow = "http://www.roblox.com/asset/?id=5554236805",
		ScrollTop = "rbxasset://textures/ui/Scroll/scroll-top.png",
		ScrollMid = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		ScrollBottom = "rbxasset://textures/ui/Scroll/scroll-bottom.png",
	},
	Rows = setmetatable({}, { __mode = "k" }),
}

local function Asset(Name)
	return (Library:GetIcon(Name, nil, nil, "System"))
end

local function Corner(Radius)
	return New("UICorner", {
		CornerRadius = UDim.new(0, Radius),
	})
end

local function SideCorner(TopLeft, TopRight, BottomLeft, BottomRight)
	local Object = Instance.new("UICorner")
	Object.TopLeftRadius = UDim.new(0, TopLeft or 0)
	Object.TopRightRadius = UDim.new(0, TopRight or 0)
	Object.BottomLeftRadius = UDim.new(0, BottomLeft or 0)
	Object.BottomRightRadius = UDim.new(0, BottomRight or 0)
	return Object
end

local function Stroke(Key, Transparency, Thickness)
	return New("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Transparency = Transparency or 0,
		Thickness = Thickness or 1,
		ThemeTag = {
			Color = Key,
		},
	})
end

Library.ItemHovers = setmetatable({}, { __mode = "k" })

function Library.CreateItemHover(Target: GuiButton, Config: { [string]: any }?)
	Config = Config or {}
	local Hovered = false
	local Pressed = false

	local Layer = New("Frame", {
		Name = "ItemHover",
		Position = UDim2.fromOffset(Config.InsetX or 0, Config.InsetY or 0),
		Size = UDim2.new(1, -2 * (Config.InsetX or 0), 1, -2 * (Config.InsetY or 0)),
		BackgroundTransparency = 1,
		ZIndex = math.max(Target.ZIndex - 1, 0),
		Parent = Target,
		ThemeTag = {
			BackgroundColor3 = "Hover",
		},
	}, {
		Corner(Config.Radius or 7),
	})
	local Ring = New("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Thickness = 1.5,
		Transparency = 1,
		Parent = Layer,
		ThemeTag = {
			Color = "Accent",
		},
	})
	local Bar = New("Frame", {
		Name = "ItemBar",
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 3, 0.5, 0),
		Size = UDim2.new(0, 3, 0.2, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = Layer,
		ThemeTag = {
			BackgroundColor3 = "Accent",
		},
	}, {
		New("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
	})

	local LastFill
	local LastRing
	local LastBar

	local function Apply(Force)
		local Style = Library.HoverStyle
		local Active = Hovered or Pressed
		local FillGoal = 1
		local RingGoal = 1
		local BarGoal = 0
		if Style == "Full" then
			if Active then
				FillGoal = Creator.GetThemeProperty(if Pressed then "PressedTransparency" else "HoverTransparency")
			end
		elseif Style == "Border" then
			if Active then
				RingGoal = if Pressed then 0 else 0.12
			end
		elseif Style == "Accent" then
			if Active then
				FillGoal = Creator.GetThemeProperty(if Pressed then "PressedTransparency" else "HoverTransparency")
				BarGoal = if Pressed then 0.7 else 1
			end
		elseif Pressed then
			FillGoal = Creator.GetThemeProperty("PressedTransparency")
		end
		local Duration = if Library.Config.ReducedMotion then 0 elseif Style == "Click" and not Pressed then 0.35 else 0.12
		if Force or LastFill ~= FillGoal then
			LastFill = FillGoal
			Creator.Tween(Layer, Duration, { BackgroundTransparency = FillGoal })
		end
		if Force or LastRing ~= RingGoal then
			LastRing = RingGoal
			Creator.Tween(Ring, Duration, { Transparency = RingGoal })
		end
		if Force or LastBar ~= BarGoal then
			LastBar = BarGoal
			Creator.Tween(Bar, Duration, {
				BackgroundTransparency = 1 - BarGoal,
				Size = UDim2.new(0, 3, 0.2 + 0.38 * BarGoal, 0),
			})
		end
	end

	Library.ItemHovers[Layer] = function()
		Apply(true)
	end
	Creator.AddSignal(Layer.Destroying, function()
		Library.ItemHovers[Layer] = nil
	end)
	Creator.OnHoverEnter(Target, function()
		Hovered = true
		Apply()
	end)
	Creator.OnHoverLeave(Target, function()
		Hovered = false
		Pressed = false
		Apply()
	end)
	Creator.AddGuarded(Target, "MouseButton1Down", function()
		if not Creator.AcceptsInput(Target) then
			return
		end
		Pressed = true
		Apply()
	end)
	Creator.AddGuarded(Target, "MouseButton1Up", function()
		Pressed = false
		Apply()
	end)
	Creator.AddSignal(UserInputService.InputEnded, function(Input)
		if
			Pressed
			and (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch)
		then
			Pressed = false
			Apply()
		end
	end)

	return Layer
end

local function Label(Props)
	local Tag = Props.Tag or "Text"
	local Weight = Props.Weight or "Medium"
	Props.Tag = nil
	Props.Weight = nil
	Props.FontFace = Fonts[Weight]
	Props.ThemeTag = Props.ThemeTag or { TextColor3 = Tag }
	Props.TextSize = Props.TextSize or 13
	Props.TextXAlignment = Props.TextXAlignment or Enum.TextXAlignment.Left
	Props.BackgroundTransparency = 1
	return New("TextLabel", Props)
end

local function Chevron(Direction, Parent, Size)
	return New("ImageLabel", {
		Image = Asset("chevron-" .. Direction),
		Size = UDim2.fromOffset(Size or 16, Size or 16),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Parent = Parent,
		ThemeTag = {
			ImageColor3 = "SubText",
		},
	})
end

local function HoverMotor(Object, Prop, Base, Hover, Press)
	local Motor, Set = Creator.SpringMotor(Base, Object, Prop, true)
	return {
		Motor = Motor,
		Set = Set,
		Enter = function()
			Set(Hover)
		end,
		Leave = function()
			Set(Base)
		end,
		Down = function()
			Set(Press)
		end,
		Up = function()
			Set(Hover)
		end,
	}
end

local ShadowLayerCount = 8
local ShadowFalloff = 1.5

local function ApplyDepth(Entry)
	local Depth = Library.PanelDepth * Entry.Strength
	local PanelAlpha = Library:GetPanelAlpha()
	local Visible = Depth > 0 and PanelAlpha > 0.02 and not Entry.Empty
	local Limit = Entry.VerticalLimit
	if
		Entry.AppliedDepth == Depth
		and Entry.AppliedVisible == Visible
		and Entry.AppliedAlpha == PanelAlpha
		and Entry.AppliedLimit == Limit
	then
		return
	end
	Entry.AppliedDepth = Depth
	Entry.AppliedVisible = Visible
	Entry.AppliedAlpha = PanelAlpha
	Entry.AppliedLimit = Limit

	Entry.Image.Visible = Visible
	if not Visible then
		return
	end

	local Reach = math.round(6 + 8 * Depth)
	local VerticalReach = if Limit then math.min(Reach, Limit) else Reach
	local Drop = if Limit then 0 else math.round(2 * Depth)
	local LayerAlpha = math.clamp(0.03 * Depth, 0.015, 0.06) * PanelAlpha

	for Index, Layer in Entry.Layers do
		local Progress = (Index / ShadowLayerCount) ^ ShadowFalloff
		local Expand = math.round(Reach * Progress)
		local VerticalExpand = math.round(VerticalReach * Progress)
		Layer.Frame.Position = UDim2.fromOffset(-Expand, Drop - VerticalExpand)
		Layer.Frame.Size = UDim2.new(1, Expand * 2, 1, VerticalExpand * 2)
		Layer.Frame.BackgroundTransparency = 1 - LayerAlpha
		Layer.Corner.CornerRadius = UDim.new(0, Entry.Radius + VerticalExpand)
	end
end

local function Shadow(Parent, Strength, Radius)
	local Container = New("Frame", {
		Name = "Shadow",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 0,
		Parent = Parent,
	})

	local Layers = {}
	for Index = ShadowLayerCount, 1, -1 do
		local Corner = New("UICorner", {})
		local Frame = New("Frame", {
			Name = "Layer" .. Index,
			BackgroundColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
			Active = false,
			Parent = Container,
		}, { Corner })
		Layers[Index] = { Frame = Frame, Corner = Corner }
	end

	local Entry = {
		Image = Container,
		Layers = Layers,
		Radius = Radius or 14,
		Strength = Strength or 1,
		Empty = false,
	}
	Library.Shadows[Container] = Entry
	ApplyDepth(Entry)
	return Entry
end

local function BindHover(Button, Hover)
	Creator.OnHoverEnter(Button, function(...)
		if not Library.InputLocked then
			Hover.Enter(...)
		end
	end)
	Creator.OnHoverLeave(Button, Hover.Leave)
	Creator.AddGuarded(Button, "MouseButton1Down", function(...)
		if not Creator.AcceptsInput(Button) then
			return
		end
		if not Library.InputLocked then
			Hover.Down(...)
		end
	end)
	Creator.AddGuarded(Button, "MouseButton1Up", Hover.Up)
end

local Acrylic = {
	Initialized = false,
	Enabled = false,
	Models = {},
}

do
	local BandCount = 6
	local Folder: Folder? = nil
	local BaseEffect: DepthOfFieldEffect? = nil
	local DefaultEffects = {}

	local function GetCamera(): Camera?
		return Workspace.CurrentCamera
	end

	local function GetFolder(): Folder?
		local CurrentCamera = GetCamera()
		if not CurrentCamera then
			return nil
		end
		if not Folder or not Folder.Parent then
			Folder = Instance.new("Folder")
			Folder.Name = "FluentAcrylic"
		end
		if Folder.Parent ~= CurrentCamera then
			Folder.Parent = CurrentCamera
		end
		return Folder
	end

	local function ViewportPointToWorld(Location: Vector2, Distance: number): Vector3
		local CurrentCamera = GetCamera() :: Camera
		local Ray = CurrentCamera:ScreenPointToRay(Location.X, Location.Y)
		local Facing = math.max(Ray.Direction:Dot(CurrentCamera.CFrame.LookVector), 0.0001)
		return Ray.Origin + Ray.Direction * (Distance / Facing)
	end

	local function CreatePart(): Part
		return New("Part", {
			Name = "Body",
			Color = Color3.new(0, 0, 0),
			Material = Enum.Material.Glass,
			Size = Vector3.new(1, 1, 0),
			Anchored = true,
			CanCollide = false,
			CanQuery = false,
			CanTouch = false,
			Locked = true,
			CastShadow = false,
			Transparency = 0.98,
		}, {
			New("SpecialMesh", {
				MeshType = Enum.MeshType.Brick,
				Offset = Vector3.new(0, 0, -0.000001),
			}),
		})
	end

	local function Depth(Index: number): number
		return 1 - (Index - 0.5) / BandCount
	end

	function Acrylic.Init()
		if Acrylic.Initialized then
			return
		end
		Acrylic.Initialized = true

		BaseEffect = Instance.new("DepthOfFieldEffect")
		BaseEffect.Name = "FluentAcrylicBlur"
		BaseEffect.FarIntensity = 0
		BaseEffect.InFocusRadius = 0.1
		BaseEffect.NearIntensity = 1

		local function Register(Object: Instance)
			if Object:IsA("DepthOfFieldEffect") and Object ~= BaseEffect then
				DefaultEffects[Object] = Object.Enabled
			end
		end

		for _, Child in Lighting:GetChildren() do
			Register(Child)
		end
		local CurrentCamera = GetCamera()
		if CurrentCamera then
			for _, Child in CurrentCamera:GetChildren() do
				Register(Child)
			end
		end
	end

	function Acrylic.Enable()
		if not Acrylic.Initialized then
			Acrylic.Init()
		end
		Acrylic.Enabled = true
		for Effect in DefaultEffects do
			if Effect.Parent then
				Effect.Enabled = false
			end
		end
		(BaseEffect :: DepthOfFieldEffect).Parent = Lighting
	end

	function Acrylic.Disable()
		if not Acrylic.Initialized then
			return
		end
		Acrylic.Enabled = false
		for Effect, Was in DefaultEffects do
			if Effect.Parent then
				Effect.Enabled = Was
			end
		end
		(BaseEffect :: DepthOfFieldEffect).Parent = nil
	end

	function Acrylic.Destroy()
		Acrylic.Disable()
		for Model in Acrylic.Models do
			pcall(function()
				Model:Destroy()
			end)
		end
		table.clear(Acrylic.Models)
		if BaseEffect then
			BaseEffect:Destroy()
			BaseEffect = nil
		end
		if Folder then
			Folder:Destroy()
			Folder = nil
		end
		table.clear(DefaultEffects)
		Acrylic.Initialized = false
	end

	function Acrylic.Blur(Distance: number?)
		local Blur = {
			Radius = 13,
			Visible = true,
		}
		local Cleanups = {}
		local Distance = Distance or 0.001
		local Position, Size = Vector2.zero, Vector2.zero

		local Model = CreatePart()
		Model.Parent = GetFolder()
		Acrylic.Models[Model] = true

		local Mesh = Model:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
		local Bands, BandMeshes = {}, {}
		for Index = 1, BandCount * 2 do
			Bands[Index] = CreatePart()
			BandMeshes[Index] = Bands[Index]:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
			Bands[Index].Parent = Model
		end

		table.insert(
			Cleanups,
			Model:GetPropertyChangedSignal("Transparency"):Connect(function()
				for _, Band in Bands do
					Band.Transparency = Model.Transparency
				end
			end)
		)

		local PartList = table.create(BandCount * 2 + 1)
		local FrameList = table.create(BandCount * 2 + 1)
		PartList[1] = Model
		for Index = 1, BandCount * 2 do
			PartList[Index + 1] = Bands[Index]
		end
		local LastWidth: number? = nil
		local LastHeight: number? = nil
		local LastRadius: number? = nil

		local function IsSame(Previous: number?, Current: number): boolean
			return Previous ~= nil and math.abs(Previous - Current) <= math.abs(Previous) * 0.000001
		end

		local function Origin(): Vector2
			if typeof(Library.AcrylicOffset) == "Vector2" then
				return Library.AcrylicOffset
			end
			return Vector2.zero
		end

		local function Render()
			local CurrentCamera = GetCamera()
			if not CurrentCamera or not Model.Parent then
				return
			end
			if Model.Parent ~= GetFolder() then
				Model.Parent = GetFolder()
			end
			if Size.X < 1 or Size.Y < 1 or not Blur.Visible or not Library.Acrylic then
				return
			end

			local Shift = Origin()
			local TopLeft = ViewportPointToWorld(Position + Shift, Distance)
			local TopRight = ViewportPointToWorld(Position + Vector2.new(Size.X, 0) + Shift, Distance)
			local BottomRight = ViewportPointToWorld(Position + Size + Shift, Distance)

			local Width = (TopRight - TopLeft).Magnitude
			local Height = (TopRight - BottomRight).Magnitude

			local Basis = CFrame.fromMatrix(
				(TopLeft + BottomRight) / 2,
				CurrentCamera.CFrame.XVector,
				CurrentCamera.CFrame.YVector,
				CurrentCamera.CFrame.ZVector
			)

			local Radius = math.min(Blur.Radius * (Width / math.max(Size.X, 1)), Width / 2, Height / 2)
			local BandHeight = Radius / BandCount

			local ScaleChanged = not (IsSame(LastWidth, Width) and IsSame(LastHeight, Height) and IsSame(LastRadius, Radius))
			if ScaleChanged then
				LastWidth, LastHeight, LastRadius = Width, Height, Radius
				Mesh.Scale = Vector3.new(Width, math.max(Height - Radius * 2, 0), 0)
			end

			FrameList[1] = Basis
			for Index = 1, BandCount do
				local Offset = Height / 2 - (Index - 0.5) * BandHeight
				FrameList[Index + 1] = Basis * CFrame.new(0, Offset, 0)
				FrameList[BandCount + Index + 1] = Basis * CFrame.new(0, -Offset, 0)

				if ScaleChanged then
					local Inset = Radius - math.sqrt(math.max(Radius * Radius - (Radius * Depth(Index)) ^ 2, 0))
					local BandScale = Vector3.new(math.max(Width - Inset * 2, 0), BandHeight, 0)
					BandMeshes[Index].Scale = BandScale
					BandMeshes[BandCount + Index].Scale = BandScale
				end
			end

			local Moved = pcall(Workspace.BulkMoveTo, Workspace, PartList, FrameList, Enum.BulkMoveMode.FireCFrameChanged)
			if not Moved then
				for Index, Part in PartList do
					Part.CFrame = FrameList[Index]
				end
			end
		end

		local Queued = false
		local function Queue()
			if Queued then
				return
			end
			Queued = true
			task.defer(function()
				Queued = false
				Render()
			end)
		end

		local CurrentCamera = GetCamera()
		if CurrentCamera then
			table.insert(Cleanups, CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(Queue))
			table.insert(Cleanups, CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(Queue))
			table.insert(Cleanups, CurrentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(Queue))
		end

		Blur.Frame = New("Frame", {
			Name = "AcrylicBlurAnchor",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
		})

		local function Sync()
			Position, Size = Blur.Frame.AbsolutePosition, Blur.Frame.AbsoluteSize
			Queue()
		end
		table.insert(Cleanups, Blur.Frame:GetPropertyChangedSignal("AbsolutePosition"):Connect(Sync))
		table.insert(Cleanups, Blur.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(Sync))

		Blur.Model = Model

		function Blur.SetVisibility(Value: boolean)
			Blur.Visible = Value and true or false
			Model.Transparency = (Blur.Visible and Library.Acrylic) and 0.98 or 1
		end

		function Blur.SetRadius(Value: number)
			Blur.Radius = math.max(tonumber(Value) or 0, 0)
			Queue()
		end

		function Blur.AddParent(Parent: GuiObject)
			Creator.AddSignal(Parent:GetPropertyChangedSignal("Visible"), function()
				Blur.SetVisibility(Parent.Visible)
			end)
			Blur.SetVisibility(Parent.Visible)
		end

		function Blur.Destroy()
			for _, Connection in Cleanups do
				pcall(function()
					Connection:Disconnect()
				end)
			end
			table.clear(Cleanups)
			Acrylic.Models[Model] = nil
			Model:Destroy()
			Blur.Frame:Destroy()
		end

		Model.Destroying:Connect(function()
			for _, Connection in Cleanups do
				pcall(function()
					Connection:Disconnect()
				end)
			end
		end)

		Sync()
		task.spawn(Render)

		return Blur
	end
end

local function CreateWindowPaint(Radius: number)
	local Paint = {}

	local function Round()
		return New("UICorner", { CornerRadius = UDim.new(0, Radius) })
	end

	Paint.Base = New("Frame", {
		Name = "Base",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
	}, { Round() })

	Paint.Main = New("Frame", {
		Name = "Main",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ThemeTag = { BackgroundColor3 = "AcrylicMain" },
	}, { Round() })

	Paint.Gradient = New("UIGradient", {
		Name = "Gradient",
		Rotation = 90,
		ThemeTag = { Color = "AcrylicGradient" },
	})

	Paint.Fill = New("Frame", {
		Name = "Fill",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 0,
	}, { Round(), Paint.Gradient })

	Paint.Grain = New("ImageLabel", {
		Name = "Grain",
		Image = "rbxassetid://9968344105",
		ImageTransparency = 1,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.fromOffset(128, 128),
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, { Round() })

	Paint.Noise = New("ImageLabel", {
		Name = "Noise",
		Image = "rbxassetid://9968344227",
		ImageTransparency = 0.92,
		ScaleType = Enum.ScaleType.Tile,
		TileSize = UDim2.fromOffset(128, 128),
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ThemeTag = { ImageTransparency = "AcrylicNoise" },
	}, { Round() })

	Paint.Frame = New("Frame", {
		Name = "Paint",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 0,
	}, {
		Paint.Base,
		Paint.Main,
		Paint.Fill,
		Paint.Grain,
		Paint.Noise,
	})

	function Paint:SetRadius(Value: number)
		for _, Layer in { Paint.Base, Paint.Main, Paint.Fill, Paint.Grain, Paint.Noise } do
			local Corner = Layer:FindFirstChildOfClass("UICorner")
			if Corner then
				Corner.CornerRadius = UDim.new(0, Value)
			end
		end
	end

	return Paint
end

Components.Chip = (function()
	local Variants = {
		Blue = { Color3.fromRGB(67, 150, 250), Color3.fromRGB(6, 23, 46) },
		Yellow = { Color3.fromRGB(240, 177, 0), Color3.fromRGB(26, 18, 0) },
		Red = { Color3.fromRGB(185, 28, 28), Color3.fromRGB(255, 255, 255) },
		Green = { Color3.fromRGB(22, 163, 74), Color3.fromRGB(255, 255, 255) },
		Sky = { Color3.fromRGB(14, 165, 233), Color3.fromRGB(255, 255, 255) },
		Orange = { Color3.fromRGB(234, 88, 12), Color3.fromRGB(255, 255, 255) },
	}

	return function(Text, Variant, Parent)
		local Spec = Variants[Variant or ""]
		local Chip = {
			ClassType = "Display",
		}

		Chip.Label = New("TextLabel", {
			FontFace = Fonts.SemiBold,
			Text = Text or "",
			TextSize = 10,
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 1, 0),
			TextColor3 = Spec and Spec[2] or Color3.new(1, 1, 1),
			ThemeTag = (not Spec) and { TextColor3 = "TextSecondary" } or nil,
		})

		Chip.Frame = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, 18),
			BackgroundColor3 = Spec and Spec[1] or Color3.new(1, 1, 1),
			BackgroundTransparency = Spec and 0.1 or 0.92,
			Parent = Parent,
			ThemeTag = (not Spec) and { BackgroundColor3 = "Hover" } or nil,
		}, {
			Corner(9),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),
			Chip.Label,
		})

		return Chip
	end
end)()

Components.Tag = (function()
	local Variants = {
		Default = { Key = "Text", Weight = "Medium" },
		Muted = { Key = "SubText", Weight = "Medium" },
		Accent = { Key = "Accent", Weight = "Medium" },
		Success = { Key = "Success", Weight = "SemiBold", Dot = true },
		Danger = { Key = "Danger", Weight = "SemiBold", Dot = true },
		Warning = { Key = "Warning", Weight = "SemiBold", Dot = true },
		Info = { Key = "Info", Weight = "Medium" },
	}

	local PillColors = {
		Accent = "Sky",
		Success = "Green",
		Danger = "Red",
		Warning = "Yellow",
		Info = "Blue",
	}

	local Styles = {
		Text = { Height = 20, Size = 13 },
		Soft = { Height = 20, Size = 11, Radius = 10, Pad = 8, Alpha = 0.93, Tint = 0.82, Muted = true },
		Key = { Height = 22, Size = 11, Radius = 6, Pad = 8, Alpha = 0.93, Tint = 0.82, Muted = true, Mono = true },
		Code = { Height = 20, Size = 11, Radius = 6, Pad = 6, Alpha = 0.91, Tint = 0.82, Muted = true, Mono = true },
	}

	local function Keys(Style, VariantName)
		local Spec = Variants[VariantName] or Variants.Default
		local Neutral = Spec == Variants.Default or Spec == Variants.Muted
		local Text = Spec.Key
		if Neutral and Style.Muted then
			Text = "SubText"
		end
		return Spec, Neutral, Text
	end

	return function(Config)
		if type(Config) ~= "table" then
			Config = { Text = tostring(Config) }
		end

		local Tag = {
			ClassType = "Display",
			Style = Config.Style or "Text",
			Variant = Config.Variant or "Default",
		}

		if Tag.Style == "Pill" then
			local Chip = Components.Chip(Config.Text, PillColors[Tag.Variant] or Config.Color or Tag.Variant, Config.Parent)
			Tag.Frame = Chip.Frame
			Tag.Label = Chip.Label

			function Tag:SetText(Value)
				Tag.Label.Text = Value or ""
			end

			function Tag:SetVariant(Value)
				local Old = Tag.Frame
				local Order = Old.LayoutOrder
				local Parent = Old.Parent
				local Text = Tag.Label.Text
				Tag.Variant = Value
				Old:Destroy()
				local Next = Components.Chip(Text, PillColors[Value] or Value, Parent)
				Tag.Frame = Next.Frame
				Tag.Label = Next.Label
				Tag.Frame.LayoutOrder = Order
			end

			function Tag:SetVisible(Value)
				Tag.Frame.Visible = Value
			end

			function Tag:Destroy()
				Tag.Frame:Destroy()
			end

			return Tag
		end

		local Style = Styles[Tag.Style]
		assert(Style, "Tag - Unknown Style '" .. tostring(Tag.Style) .. "'")

		local Spec, Neutral, TextKey = Keys(Style, Tag.Variant)
		local Mono = Config.Mono
		if Mono == nil then
			Mono = Style.Mono == true
		end

		local ShowDot = Spec.Dot == true
		if Config.Dot ~= nil then
			ShowDot = Config.Dot == true
		end

		Tag.Label = New("TextLabel", {
			FontFace = Mono and Fonts.Mono or Fonts[Spec.Weight],
			Text = Config.Text or "",
			TextSize = (Tag.Style == "Text" and Mono) and (Style.Size - 1) or Style.Size,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 1, 0),
			LayoutOrder = 2,
			ThemeTag = { TextColor3 = TextKey },
		})

		Tag.Dot = New("Frame", {
			Size = UDim2.fromOffset(6, 6),
			LayoutOrder = 1,
			Visible = ShowDot,
			ThemeTag = { BackgroundColor3 = TextKey },
		}, {
			Corner(3),
		})

		local Children = {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 6),
			}),
			Tag.Dot,
			Tag.Label,
		}

		if Style.Radius then
			table.insert(Children, Corner(Style.Radius))
		end

		if Style.Pad then
			table.insert(
				Children,
				New("UIPadding", {
					PaddingLeft = UDim.new(0, Style.Pad),
					PaddingRight = UDim.new(0, Style.Pad),
				})
			)
		end

		local Filled = Style.Alpha ~= nil

		Tag.Frame = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, Style.Height),
			BackgroundTransparency = Filled and (Neutral and Style.Alpha or Style.Tint) or 1,
			Parent = Config.Parent,
			ThemeTag = Filled and { BackgroundColor3 = Neutral and "Hover" or Spec.Key } or nil,
		}, Children)

		if Config.Icon then
			local Image = Resolve(Config.Icon, "Element")
			if Image then
				Tag.Icon = New("ImageLabel", {
					Image = Image,
					Size = UDim2.fromOffset(12, 12),
					LayoutOrder = 0,
					Parent = Tag.Frame,
					ThemeTag = { ImageColor3 = TextKey },
				})
			end
		end

		function Tag:SetText(Value)
			Tag.Label.Text = Value or ""
		end

		function Tag:SetDot(Value)
			Tag.Dot.Visible = Value == true
		end

		function Tag:SetVariant(Value)
			Tag.Variant = Value
			local NewSpec, NewNeutral, NewKey = Keys(Style, Value)
			Creator.OverrideTag(Tag.Label, { TextColor3 = NewKey })
			Creator.OverrideTag(Tag.Dot, { BackgroundColor3 = NewKey })
			if Tag.Icon then
				Creator.OverrideTag(Tag.Icon, { ImageColor3 = NewKey })
			end
			if Filled then
				Creator.OverrideTag(Tag.Frame, { BackgroundColor3 = NewNeutral and "Hover" or NewSpec.Key })
				Tag.Frame.BackgroundTransparency = NewNeutral and Style.Alpha or Style.Tint
			end
			if Config.Dot == nil then
				Tag.Dot.Visible = NewSpec.Dot == true
			end
		end

		function Tag:SetVisible(Value)
			Tag.Frame.Visible = Value
		end

		function Tag:Destroy()
			Tag.Frame:Destroy()
		end

		return Tag
	end
end)()

Components.Button = (function()
	local Variants = {
		Primary = { Color = "FillButton", Text = "FillButtonText", Base = 0, Hover = 0.12, Press = 0.22 },
		Accent = { Color = "Accent", Text = "AccentText", Base = 0, Hover = 0.1, Press = 0.2 },
		Tonal = { Color = "Hover", Text = "TextSecondary", HoverText = "Text", Base = 0.92, Hover = 0.88, Press = 0.84 },
		Danger = { Color = "Danger", Text = nil, Base = 0, Hover = 0.12, Press = 0.22 },
		Ghost = { Color = "Hover", Text = "TextSecondary", HoverText = "Text", Base = 1, Hover = 0.93, Press = 0.88 },
		Outline = { Color = "Hover", Text = "Text", Base = 1, Hover = 0.94, Press = 0.9, Stroke = true },
	}

	return function(Config)
		Config = Config or {}
		local Spec = Variants[Config.Variant or "Tonal"] or Variants.Tonal
		local Button = {
			ClassType = "Action",
			Spec = Spec,
		}

		Button.Title = New("TextLabel", {
			FontFace = Fonts.SemiBold,
			Text = Config.Text or "",
			TextSize = Config.TextSize or 13,
			TextXAlignment = Enum.TextXAlignment.Center,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 1, 0),
			TextColor3 = Color3.new(1, 1, 1),
			ThemeTag = Spec.Text and { TextColor3 = Spec.Text } or nil,
		})

		Button.Layout = New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 7),
		})

		Button.Frame = New("TextButton", {
			Size = Config.Size or UDim2.new(0, 0, 0, Config.Height or 30),
			AutomaticSize = (Config.Size == nil) and Enum.AutomaticSize.X or Enum.AutomaticSize.None,
			BackgroundTransparency = Spec.Base,
			Parent = Config.Parent,
			LayoutOrder = Config.LayoutOrder or 0,
			ThemeTag = {
				BackgroundColor3 = Spec.Color,
			},
		}, {
			Corner(Config.Radius or 999),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, Config.Padding or 16),
				PaddingRight = UDim.new(0, Config.Padding or 16),
			}),
			Button.Layout,
			Button.Title,
		})

		if Spec.Stroke then
			Button.Stroke = Stroke("InElementBorder", 0.35)
			Button.Stroke.Parent = Button.Frame
		end

		if Config.Icon and Resolve(Config.Icon, "Button", Config) then
			Button.Icon = New("ImageLabel", {
				Image = Resolve(Config.Icon, "Button", Config),
				Size = UDim2.fromOffset(14, 14),
				LayoutOrder = -1,
				Parent = Button.Frame,
				ImageColor3 = Color3.new(1, 1, 1),
				ThemeTag = Spec.Text and { ImageColor3 = Spec.Text } or nil,
			})
		end

		local Motor, Set = Creator.SpringMotor(Spec.Base, Button.Frame, "BackgroundTransparency", Config.IgnoreDialog)

		local function Text(Key)
			if Spec.HoverText then
				Creator.OverrideTag(Button.Title, { TextColor3 = Key })
				if Button.Icon then
					Creator.OverrideTag(Button.Icon, { ImageColor3 = Key })
				end
			end
		end

		Creator.OnHoverEnter(Button.Frame, function()
			Set(Spec.Hover)
			Text(Spec.HoverText)
		end)
		Creator.OnHoverLeave(Button.Frame, function()
			Set(Spec.Base)
			Text(Spec.Text)
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Button.Frame) then
				return
			end
			Set(Spec.Press)
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Up", function()
			Set(Spec.Hover)
		end)

		function Button:SetText(Value)
			Button.Title.Text = Value
		end

		return Button
	end
end)()

Components.IconButton = (function()
	local Sizes = { Sm = 24, Md = 30, Lg = 36 }

	return function(Config)
		Config = Config or {}
		local Size = Sizes[Config.Size or "Md"] or 30
		local Tonal = Config.Tonal
		local Danger = Config.Danger
		local Button = {
			ClassType = "Action",
		}

		Button.Icon = New("ImageLabel", {
			Image = Resolve(Config.Icon, "Button", Config) or "",
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			ThemeTag = {
				ImageColor3 = Tonal and "Accent" or "TextSecondary",
			},
		})

		Button.Frame = New("TextButton", {
			Size = UDim2.fromOffset(Size, Size),
			BackgroundTransparency = Tonal and 0.9 or 1,
			Parent = Config.Parent,
			AnchorPoint = Config.AnchorPoint or Vector2.zero,
			Position = Config.Position or UDim2.new(),
			LayoutOrder = Config.LayoutOrder or 0,
			ThemeTag = {
				BackgroundColor3 = Tonal and "Accent" or "Hover",
			},
		}, {
			Corner(8),
			Button.Icon,
		})

		if Tonal then
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.82,
				Parent = Button.Frame,
				ThemeTag = {
					Color = "Accent",
				},
			})
		end

		local Base = Tonal and 0.9 or 1
		local Motor, Set = Creator.SpringMotor(Base, Button.Frame, "BackgroundTransparency", Config.IgnoreDialog)

		Creator.OnHoverEnter(Button.Frame, function()
			if Danger then
				Creator.OverrideTag(Button.Frame, { BackgroundColor3 = "Danger" })
				Creator.OverrideTag(Button.Icon, { ImageColor3 = "Danger" })
				Set(0.9)
			else
				Set(Tonal and 0.84 or Creator.GetThemeProperty("HoverTransparency"))
				if not Tonal then
					Creator.OverrideTag(Button.Icon, { ImageColor3 = "Text" })
				end
			end
		end)
		Creator.OnHoverLeave(Button.Frame, function()
			Set(Base)
			if Danger then
				Creator.OverrideTag(Button.Frame, { BackgroundColor3 = "Hover" })
			end
			if not Tonal then
				Creator.OverrideTag(Button.Icon, { ImageColor3 = "TextSecondary" })
			end
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Button.Frame) then
				return
			end
			Set(Tonal and 0.8 or Creator.GetThemeProperty("PressedTransparency"))
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Up", function()
			Set(Tonal and 0.84 or Creator.GetThemeProperty("HoverTransparency"))
		end)

		return Button
	end
end)()

Components.Textbox = (function()
	local Specs = {
		Field = {
			Height = 36,
			Radius = 10,
			Fill = "Input",
			Base = 0.93,
			Focus = 0.89,
			TextSize = 12.5,
		},
		Bordered = {
			Height = 28,
			Radius = 8,
			Fill = "InputFocused",
			Base = 0.1,
			Focus = 0.1,
			Border = "InElementBorder",
			BorderBase = 0.5,
			BorderFocus = 0.5,
			FocusBorderKey = "Accent",
			TextSize = 12,
		},
		Standard = {
			Height = 34,
			Radius = 10,
			Fill = "InputFocused",
			Base = 0.22,
			Focus = 0.08,
			Border = "InElementBorder",
			BorderBase = 0.8,
			BorderFocus = 0.58,
			FocusBorderKey = "Accent",
			TextSize = 12.5,
		},
		Inline = {
			Height = 28,
			Radius = 8,
			Fill = "Element",
			Base = 0,
			Focus = 0,
			Border = "Accent",
			BorderBase = 0.6,
			BorderFocus = 0,
			FocusBorderKey = "Accent",
			TextSize = 12,
		},
		Search = {
			Height = 34,
			Radius = 10,
			Fill = "Element",
			Base = 0,
			Focus = 0.05,
			TextSize = 12.5,
			Icon = true,
		},
		PanelSearch = {
			Height = 34,
			Radius = 10,
			Fill = "Element",
			Base = 0,
			Focus = 0.05,
			TextSize = 12.5,
			Icon = true,
			Panel = true,
		},
	}

	return function(Parent, Variant)
		local Spec = Specs[Variant or "Field"] or Specs.Field
		local Textbox = {
			ClassType = "Input",
			Spec = Spec,
		}

		local Left = Spec.Icon and 32 or 12

		local function Resolve(Value)
			if Spec.Panel then
				return 1 - (1 - Value) * Library:GetPanelAlpha()
			end
			return Value
		end

		Textbox.Input = New("TextBox", {
			FontFace = Fonts.Regular,
			TextSize = Spec.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromOffset(0, 0),
			ThemeTag = {
				TextColor3 = "Text",
				PlaceholderColor3 = "SubText",
			},
		})

		Textbox.Container = New("Frame", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Position = UDim2.new(0, Left, 0, 0),
			Size = UDim2.new(1, -(Left + (Spec.Icon and 30 or 10)), 1, 0),
		}, {
			Textbox.Input,
		})

		Textbox.Border = New("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Transparency = Spec.BorderBase or 1,
			Enabled = Spec.Border ~= nil,
			ThemeTag = {
				Color = Spec.Border or "InElementBorder",
			},
		})

		Textbox.Ring = New("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Transparency = 1,
			Thickness = 2,
			ThemeTag = {
				Color = "InputIndicator",
			},
		})

		Textbox.Frame = New("Frame", {
			Size = UDim2.new(0, 160, 0, Spec.Height),
			BackgroundTransparency = Resolve(Spec.Base),
			Parent = Parent,
			ThemeTag = {
				BackgroundColor3 = Spec.Fill,
			},
		}, {
			Corner(Spec.Radius),
			Textbox.Border,
			Textbox.Container,
		})

		if Spec.Panel then
			Library.PanelFills[Textbox.Frame] = Spec.Base
		end

		if Spec.Icon then
			Textbox.SearchIcon = New("ImageLabel", {
				Image = Asset("search"),
				Size = UDim2.fromOffset(12, 12),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 12, 0.5, 0),
				Parent = Textbox.Frame,
				ThemeTag = {
					ImageColor3 = "SubText",
				},
			})

			Textbox.Clear = New("TextButton", {
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Parent = Textbox.Frame,
			}, {
				New("ImageLabel", {
					Image = Asset("x"),
					Size = UDim2.fromOffset(10, 10),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					ThemeTag = {
						ImageColor3 = "SubText",
					},
				}),
			})

			Creator.AddGuarded(Textbox.Clear, "MouseButton1Click", function()
				Textbox.Input.Text = ""
				Textbox.Input:CaptureFocus()
			end)

			Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("Text"), function()
				Textbox.Clear.Visible = Textbox.Input.Text ~= ""
			end)
		end

		Textbox.Ring.Parent = Textbox.Frame

		local function Update()
			local TextPadding = 2
			local Reveal = Textbox.Container.AbsoluteSize.X

			if not Textbox.Input:IsFocused() or Textbox.Input.TextBounds.X <= Reveal - 2 * TextPadding then
				Textbox.Input.Position = UDim2.new(0, TextPadding, 0, 0)
			else
				local Cursor = Textbox.Input.CursorPosition
				if Cursor ~= -1 then
					local subtext = string.sub(Textbox.Input.Text, 1, Cursor - 1)
					local width = TextService:GetTextSize(
						subtext,
						Textbox.Input.TextSize,
						Textbox.Input.Font,
						Vector2.new(math.huge, math.huge)
					).X

					local CurrentCursorPos = Textbox.Input.Position.X.Offset + width
					if CurrentCursorPos < TextPadding then
						Textbox.Input.Position = UDim2.fromOffset(TextPadding - width, 0)
					elseif CurrentCursorPos > Reveal - TextPadding - 1 then
						Textbox.Input.Position = UDim2.fromOffset(Reveal - width - TextPadding - 1, 0)
					end
				end
			end
		end

		task.spawn(Update)

		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("Text"), Update)
		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("CursorPosition"), Update)

		Creator.AddSignal(Textbox.Input.Focused, function()
			Update()
			Creator.Tween(Textbox.Frame, 0.14, { BackgroundTransparency = Resolve(Spec.Focus) })
			if Spec.Border then
				Creator.OverrideTag(Textbox.Border, { Color = Spec.FocusBorderKey })
				Creator.Tween(Textbox.Border, 0.14, { Transparency = Spec.BorderFocus })
			end
			if Variant == nil or Variant == "Field" or Variant == "Search" or Variant == "PanelSearch" then
				Creator.Tween(Textbox.Ring, 0.14, { Transparency = 0.7 })
			end
		end)

		Creator.AddSignal(Textbox.Input.FocusLost, function()
			Update()
			Creator.Tween(Textbox.Frame, 0.14, { BackgroundTransparency = Resolve(Spec.Base) })
			if Spec.Border then
				Creator.OverrideTag(Textbox.Border, { Color = Spec.Border })
				Creator.Tween(Textbox.Border, 0.14, { Transparency = Spec.BorderBase })
			end
			Creator.Tween(Textbox.Ring, 0.14, { Transparency = 1 })
		end)

		return Textbox
	end
end)()

Library.SearchRows = {}

Components.Section = (function()
	local Radius = 14
	local HeaderGap = 8
	local ChevronReserve = 34

	local Section = {}
	Section.__index = Section

	local function IsRow(Cell: any): boolean
		return type(Cell) == "table"
	end

	function Section:Rows()
		local List = {}
		for _, Child in self.Container:GetChildren() do
			local Row = Components.Rows[Child]
			if Row and Child.Visible then
				table.insert(List, Row)
			end
		end

		table.sort(List, function(A, B)
			if A.Clip.LayoutOrder ~= B.Clip.LayoutOrder then
				return A.Clip.LayoutOrder < B.Clip.LayoutOrder
			end
			return A.Id < B.Id
		end)

		return List
	end

	function Section:Collect(Cells, Groups, State)
		for _, Row in self:Rows() do
			if Row.Kind == "Group" then
				local Holder = Row.Holder
				if Holder.Header.Visible or Row.Direction == "Vertical" then
					table.insert(Cells, false)
				end
				if Row.Direction == "Vertical" then
					local Start = #Cells + 1
					Holder:Collect(Cells, Groups, State)
					table.insert(Groups, { Holder = Holder, Start = Start, Stop = #Cells })
					table.insert(Cells, false)
				else
					State.Loose = true
					if #Holder:Rows() > 0 then
						table.insert(Cells, Row)
					end
				end
				if Row.Spacing > 0 then
					table.insert(Cells, false)
				end
			elseif Row.IsSpace then
				table.insert(Cells, false)
			else
				table.insert(Cells, Row)
			end
		end
	end

	local function ApplyBodyFill(Row, Fill: number, Alpha: number)
		local Body = Row.Body
		if Body and Library.PanelFills[Body] ~= Fill then
			Library.PanelFills[Body] = Fill
			Body.BackgroundTransparency = 1 - (1 - Fill) * Alpha
		end
	end

	local function ApplyLayer(Holder)
		local Fill = Holder.Backing.Visible and 1 or 0
		local Alpha = Library:GetPanelAlpha()
		for _, Row in Holder:Rows() do
			if Row.Kind == "Group" and Row.Direction == "Horizontal" then
				local Strip = Row.Holder
				Strip.Backing.Visible = Fill == 0 and #Strip:Rows() > 0
				Strip.Shadow.Empty = not Strip.Backing.Visible or Strip.Container.AbsoluteSize.Y <= 0
				ApplyDepth(Strip.Shadow)

				local StripFill = if Holder.Backing.Visible or Strip.Backing.Visible then 1 else 0
				for _, Inner in Strip:Rows() do
					ApplyBodyFill(Inner, StripFill, Alpha)
				end
			else
				ApplyBodyFill(Row, Fill, Alpha)
			end
		end
	end

	function Section:Refresh()
		local Up = self.Up
		if Up and Up.Flow ~= "Horizontal" then
			Up:Refresh()
			return
		end

		local Cells, Groups, State = {}, {}, { Loose = false }
		self:Collect(Cells, Groups, State)

		local Count = 0
		local HasSpace = State.Loose
		local Run = {}
		local DirectRuns = {}

		local function Flush()
			local Size = #Run
			local Sequence = nil
			for Index, Row in Run do
				local Next = Run[Index + 1]
				Row:SetCorners(Index == 1, Index == Size, Index ~= Size)
				if Next then
					Row:SetDivider(Row:HasIcon() and Next:HasIcon())
				end
				if Row.Kind ~= "Group" and Row.Clip.Parent == self.Container then
					if not Sequence then
						Sequence = { First = Row }
						table.insert(DirectRuns, Sequence)
					end
					Sequence.Last = Row
				else
					Sequence = nil
				end
			end
			table.clear(Run)
		end

		for _, Cell in Cells do
			if IsRow(Cell) then
				Count += 1
				table.insert(Run, Cell)
			else
				HasSpace = true
				Flush()
			end
		end
		Flush()

		for _, Entry in Groups do
			local Holder = Entry.Holder
			local Joined = IsRow(Cells[Entry.Start - 1]) or IsRow(Cells[Entry.Stop + 1])
			local Broken = false
			for Index = Entry.Start, Entry.Stop do
				if not IsRow(Cells[Index]) then
					Broken = true
					break
				end
			end
			Holder.Count = math.max(0, Entry.Stop - Entry.Start + 1)
			Holder.HasSpace = Joined or Broken
			Holder.Backing.Visible = not Holder.HasSpace
			Holder.Shadow.Empty = Holder.HasSpace or Holder.Container.AbsoluteSize.Y <= 0 or Holder.Reveal <= 0
			ApplyDepth(Holder.Shadow)
			ApplyLayer(Holder)
		end

		self.Count = Count
		self.HasSpace = HasSpace
		self.Backing.Visible = not HasSpace
		self.Shadow.Empty = HasSpace or self.Container.AbsoluteSize.Y <= 0 or self.Reveal <= 0
		ApplyDepth(self.Shadow)
		ApplyLayer(self)

		self.DirectRuns = DirectRuns
		self:UpdateRunShadows()
		task.defer(function()
			if self.Root.Parent then
				self:UpdateRunShadows()
			end
		end)
	end

	function Section:UpdateRunShadows()
		local Runs = self.DirectRuns or {}
		local Shadows = self.RunShadows
		if not Shadows then
			Shadows = {}
			self.RunShadows = Shadows
		end

		local Active = not self.Backing.Visible and self.Reveal >= 0.99
		local Origin = self.Container.AbsolutePosition

		for Index, Sequence in Runs do
			local Entry = Shadows[Index]
			if not Entry then
				Entry = Shadow(self.Clip, self.Shadow.Strength, 10)
				Entry.VerticalLimit = 5
				Shadows[Index] = Entry
			end

			local First, Last = Sequence.First.Clip, Sequence.Last.Clip
			local Top = First.AbsolutePosition.Y - Origin.Y
			local Bottom = Last.AbsolutePosition.Y + Last.AbsoluteSize.Y - Origin.Y
			Entry.Image.Position = UDim2.fromOffset(First.AbsolutePosition.X - Origin.X, Top)
			Entry.Image.Size = UDim2.fromOffset(First.AbsoluteSize.X, math.max(Bottom - Top, 0))
			Entry.Empty = not Active or Bottom - Top <= 0
			ApplyDepth(Entry)
		end

		for Index = #Runs + 1, #Shadows do
			Shadows[Index].Empty = true
			ApplyDepth(Shadows[Index])
		end
	end

	function Section:QueueRefresh()
		if self.Pending then
			return
		end
		self.Pending = true
		task.defer(function()
			self.Pending = false
			if self.Root.Parent then
				self:Refresh()
			end
		end)
	end

	function Section:NextOrder()
		self.Order = self.Order + 1
		return self.Order
	end

	function Section:Fit()
		local Height = self.Container.AbsoluteSize.Y * self.Reveal
		self.Shell.Size = UDim2.new(1, 0, 0, Height)
		self.Shadow.Empty = Height <= 0 or not self.Backing.Visible
		ApplyDepth(self.Shadow)
	end

	function Section:ApplyReveal()
		local Reveal = self.Reveal
		self.Clip.ClipsDescendants = Reveal < 1
		self.Layout.Padding = UDim.new(0, HeaderGap * Reveal)
		self.Chevron.Rotation = -90 * (1 - Reveal)
		self:Fit()
	end

	function Section:UpdateHeader()
		local Offset = if self.Image ~= nil then 14 + self.IconSize + 6 else 14
		local Reserve = if self.Accordion then ChevronReserve else 0
		self.HeaderLabel.Position = UDim2.fromOffset(Offset, 0)
		self.HeaderLabel.Size = UDim2.new(1, -(Offset + Reserve), 1, 0)
		self.Chevron.Visible = self.Accordion
		self.Trigger.Visible = self.Accordion
		self.Header.Visible = self.Title ~= "" or self.Image ~= nil or self.Accordion
		if self.Up then
			self.Up:QueueRefresh()
		end
	end

	function Section:SetTitle(Title)
		self.Title = Title or ""
		self.HeaderLabel.Text = string.upper(self.Title)
		self:UpdateHeader()
	end

	function Section:SetIcon(Icon)
		local Image = Resolve(Icon, "Element")
		self.Image = Image
		Creator.SetImage(self.Icon, Image)
		self.Icon.Visible = Image ~= nil
		self:UpdateHeader()
	end

	function Section:SetAccordion(Value)
		self.Accordion = Value == true
		if not self.Accordion then
			self:SetCollapsed(false, true)
		end
		self:UpdateHeader()
	end

	function Section:SetCollapsed(Value, Instant)
		Value = Value == true
		if Value and not self.Accordion then
			return
		end
		local Changed = self.Collapsed ~= Value
		self.Collapsed = Value
		local Goal = if Value then 0 else 1
		if Instant or Library.Config.ReducedMotion then
			self.RevealMotor:Snap(Goal)
		else
			self.RevealMotor:Spring(Goal, SpringOptions)
		end
		if Changed then
			if self.Option then
				self.Option.Value = Value
			end
			Library:SafeCallback(self.Callback, Value)
			Library:SafeCallback(self.Changed, Value)
		end
	end

	function Section:GetCollapsed()
		return self.Collapsed
	end

	function Section:ToggleCollapsed()
		self:SetCollapsed(not self.Collapsed)
	end

	function Section:OnChanged(Function)
		self.Changed = Function
		Function(self.Collapsed)
	end

	function Section:IsLocked(): boolean
		return self.Locked or (self.Up ~= nil and self.Up:IsLocked())
	end

	function Section:GetLockReason(): string?
		return self.LockReason or (self.Up and self.Up:GetLockReason())
	end

	function Section:ApplyLock()
		for _, Child in self.Container:GetChildren() do
			local Row = Components.Rows[Child]
			if Row and Row.Kind == "Group" then
				Row.Holder:ApplyLock()
			elseif Row and Row.ApplyLock then
				Row:ApplyLock()
			end
		end
	end

	function Section:SetLocked(Value: boolean, Reason: string?)
		self.Locked = Value == true
		self.LockReason = if self.Locked then Reason else nil
		self:ApplyLock()
	end

	function Section:Lock(Reason: string?)
		self:SetLocked(true, Reason)
	end

	function Section:Unlock()
		self:SetLocked(false)
	end

	function Section:SetVisible(Value)
		self.Root.Visible = Value and true or false
	end

	function Section:Destroy()
		for _, Child in next, self.Container:GetChildren() do
			local Row = Components.Rows[Child]
			if Row then
				Row:Destroy()
			end
		end
		self.RevealMotor:Destroy()
		if self.Option and Library.Options[self.Option.Idx] == self.Option then
			Library.Options[self.Option.Idx] = nil
		end
		self.Root:Destroy()
	end

	return function(Title, Parent, Config)
		Config = Config or {}
		local self = setmetatable({
			Order = 0,
			Count = 0,
			Pending = false,
			Title = Title or "",
			Type = "Section",
			ClassType = "Layout",
			IconSize = Config.IconSize or 14,
			Depth = Config.Depth,
			Accordion = Config.Accordion == true,
			Collapsed = Config.Accordion == true and Config.Collapsed == true,
			Callback = Config.Callback,
			InModal = Config.InModal == true,
		}, Section)
		self.Reveal = if self.Collapsed then 0 else 1
		self.RevealMotor = Flipper.SingleMotor.new(self.Reveal)

		if self.Accordion and Config.Id then
			local Option = { Type = "Accordion", Idx = Config.Id, Value = self.Collapsed, Holder = self }
			function Option:SetValue(Value, Instant)
				self.Holder:SetCollapsed(Value == true, Instant)
			end
			self.Option = Option
			Library.Options[Config.Id] = Option
		end

		self.HeaderLabel = Label({
			Text = string.upper(self.Title),
			TextSize = 11,
			Weight = "SemiBold",
			Tag = "SubText",
			Size = UDim2.new(1, -14, 1, 0),
			Position = UDim2.fromOffset(14, 0),
		})

		if Config.IconColor then
			Creator.TagText(self.HeaderLabel, "SubText", Config.IconColor, true)
		end

		self.Icon = New("ImageLabel", {
			Name = "Icon",
			Size = UDim2.fromOffset(self.IconSize, self.IconSize),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 14, 0.5, 0),
			BackgroundTransparency = 1,
			Visible = false,
		})
		Creator.TagIcon(self.Icon, "SubText", Config.IconColor)

		self.Chevron = New("ImageLabel", {
			Name = "Chevron",
			Image = Asset("chevron-down"),
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -14, 0.5, 0),
			BackgroundTransparency = 1,
			ImageTransparency = 0.3,
			Visible = false,
			ThemeTag = {
				ImageColor3 = "SubText",
			},
		})

		self.Trigger = New("TextButton", {
			Name = "Trigger",
			Text = "",
			AutoButtonColor = false,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 3,
			Visible = false,
		})

		self.Header = New("Frame", {
			Size = UDim2.new(1, 0, 0, 18),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			ZIndex = 2,
			Visible = self.Title ~= "",
		}, {
			self.HeaderLabel,
			self.Icon,
			self.Chevron,
			self.Trigger,
		})

		self.Container = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),
		})

		self.Clip = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			self.Container,
		})

		self.Shell = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			self.Clip,
		})

		self.Shadow = Shadow(self.Shell, Config.Depth, Radius)

		self.Backing = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1 - Library:GetPanelAlpha(),
			ZIndex = 0,
			Parent = self.Shell,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			Corner(Radius),
		})
		Library.PanelLayers[self.Backing] = true

		self.Layout = New("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, HeaderGap),
		})

		self.Root = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = Config.LayoutOrder or 0,
			Parent = Parent,
		}, {
			self.Layout,
			self.Header,
			self.Shell,
		})

		self.RevealMotor:OnStep(function(Value: number)
			self.Reveal = math.clamp(Value, 0, 1)
			self:ApplyReveal()
		end)

		Creator.AddSignal(self.Container:GetPropertyChangedSignal("AbsoluteSize"), function()
			self:Fit()
			self:UpdateRunShadows()
		end)

		Creator.AddSignal(self.Container.ChildAdded, function()
			self:QueueRefresh()
		end)
		Creator.AddSignal(self.Container.ChildRemoved, function()
			self:QueueRefresh()
		end)

		Creator.AddGuarded(self.Trigger, "MouseButton1Click", function()
			self:ToggleCollapsed()
		end)
		Creator.OnHoverEnter(self.Trigger, function()
			Creator.Tween(self.Chevron, 0.15, { ImageTransparency = 0 })
		end)
		Creator.OnHoverLeave(self.Trigger, function()
			Creator.Tween(self.Chevron, 0.15, { ImageTransparency = 0.3 })
		end)

		self:SetIcon(Config.Icon)
		self:ApplyReveal()

		return self
	end
end)()

Components.SectionApi = (function()
	local Forwarded = {
		"SetTitle",
		"SetIcon",
		"SetVisible",
		"Destroy",
		"SetAccordion",
		"SetCollapsed",
		"GetCollapsed",
		"ToggleCollapsed",
		"OnChanged",
		"SetLocked",
		"Lock",
		"Unlock",
		"IsLocked",
	}

	return function(Holder, Tab, ScrollFrame)
		local Section = {
			Type = "Section",
			Holder = Holder,
			Container = Holder.Container,
			ScrollFrame = ScrollFrame,
			Tab = Tab,
			Library = Library,
		}

		for _, Name in Forwarded do
			Section[Name] = function(_, ...)
				return Holder[Name](Holder, ...)
			end
		end

		return setmetatable(Section, Library.Elements)
	end
end)()

Components.Element = (function()
	local Radius = 14
	local MinHeight = 50
	local Counter = 0

	local Row = {}
	Row.__index = Row

	function Row:SetCorners(Top, Bottom, Separator)
		local ModeKey = (Top and 1 or 0) + (Bottom and 2 or 0) + (Separator and 4 or 0)
		if self.CornerKey == ModeKey then
			return
		end
		self.CornerKey = ModeKey
		local HoverTop = Top and Radius or 0
		local HoverBottom = Bottom and Radius or 0
		self.HoverCorner.TopLeftRadius = UDim.new(0, HoverTop)
		self.HoverCorner.TopRightRadius = UDim.new(0, HoverTop)
		self.HoverCorner.BottomLeftRadius = UDim.new(0, HoverBottom)
		self.HoverCorner.BottomRightRadius = UDim.new(0, HoverBottom)
		self.HoverRingCorner.TopLeftRadius = UDim.new(0, math.max(HoverTop - 2, 0))
		self.HoverRingCorner.TopRightRadius = UDim.new(0, math.max(HoverTop - 2, 0))
		self.HoverRingCorner.BottomLeftRadius = UDim.new(0, math.max(HoverBottom - 2, 0))
		self.HoverRingCorner.BottomRightRadius = UDim.new(0, math.max(HoverBottom - 2, 0))
		self.FocusCorner.TopLeftRadius = self.HoverRingCorner.TopLeftRadius
		self.FocusCorner.TopRightRadius = self.HoverRingCorner.TopRightRadius
		self.FocusCorner.BottomLeftRadius = self.HoverRingCorner.BottomLeftRadius
		self.FocusCorner.BottomRightRadius = self.HoverRingCorner.BottomRightRadius
		self.ShieldCorner.TopLeftRadius = self.HoverCorner.TopLeftRadius
		self.ShieldCorner.TopRightRadius = self.HoverCorner.TopRightRadius
		self.ShieldCorner.BottomLeftRadius = self.HoverCorner.BottomLeftRadius
		self.ShieldCorner.BottomRightRadius = self.HoverCorner.BottomRightRadius
		self.FocusFillCorner.TopLeftRadius = self.HoverCorner.TopLeftRadius
		self.FocusFillCorner.TopRightRadius = self.HoverCorner.TopRightRadius
		self.FocusFillCorner.BottomLeftRadius = self.HoverCorner.BottomLeftRadius
		self.FocusFillCorner.BottomRightRadius = self.HoverCorner.BottomRightRadius
		local PosY = 0
		local Extra = 0
		if Top and Bottom then
			PosY = 0
			Extra = 0
		elseif Top then
			PosY = 0
			Extra = Radius
		elseif Bottom then
			PosY = -Radius
			Extra = Radius
		else
			PosY = -Radius
			Extra = Radius * 2
		end

		self.Body.Position = UDim2.fromOffset(0, PosY)
		self.Body.Size = UDim2.new(1, 0, 1, Extra)
		self.Content.Position = UDim2.fromOffset(0, -PosY)
		self.Separator.Visible = Separator and true or false
		self.Mode = (Top and Bottom) and "Both" or (Top and "Top") or (Bottom and "Bottom") or "None"
	end

	function Row:ApplyHoverStyle()
		self.HoverEnabled = self.Interactive == true and Library.HoverStyle ~= "Full"
		self.HoverToken = (self.HoverToken or 0) + 1
		self.HoverLayer.Visible = false
		if self.ClearHover then
			self.ClearHover()
		end
		self:ApplyFocus()
	end

	function Row:WakeHover()
		if not self.HoverEnabled then
			return
		end
		self.HoverToken = (self.HoverToken or 0) + 1
		self.HoverLayer.Visible = true
	end

	function Row:SleepHover()
		local Token = (self.HoverToken or 0) + 1
		self.HoverToken = Token
		task.delay(0.9, function()
			if self.HoverToken == Token then
				self.HoverLayer.Visible = false
			end
		end)
	end

	function Row:HoverPoint()
		local Layer = self.HoverLayer
		local Size = Layer.AbsoluteSize
		if Size.X <= 0 or Size.Y <= 0 then
			return nil
		end
		local Gui = Layer:FindFirstAncestorOfClass("ScreenGui")
		local Shift = (Gui and not Gui.IgnoreGuiInset) and GuiService:GetGuiInset() or Vector2.zero
		local Point = UserInputService:GetMouseLocation() - Shift - Layer.AbsolutePosition
		return Vector2.new(math.clamp(Point.X / Size.X, 0, 1), math.clamp(Point.Y / Size.Y, 0, 1)), Size
	end

	function Row:Ripple()
		local Point, Size = self:HoverPoint()
		if not Point then
			return
		end
		local Factor = Size.Y / math.max(self.Height, 1)
		local Reach = (Size.X + Size.Y) / Factor
		local Pressed = Creator.GetThemeProperty("PressedTransparency")
		local Circle = New("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(Point.X, Point.Y),
			Size = UDim2.fromOffset(0, 0),
			BackgroundTransparency = Pressed + (1 - Pressed) * 0.3,
			BorderSizePixel = 0,
			Parent = self.HoverLayer,
			ThemeTag = {
				BackgroundColor3 = "Hover",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0.5, 0),
			}),
		})
		Creator.Tween(Circle, 0.6, { Size = UDim2.fromOffset(Reach, Reach) })
		local Fade = Creator.Tween(Circle, 0.7, { BackgroundTransparency = 1 }, Enum.EasingStyle.Sine)
		Fade.Completed:Connect(function()
			Circle:Destroy()
		end)
	end

	function Row:HasIcon(): boolean
		return (self.LeftSpace or 14) > 14
	end

	function Row:IsLocked(): boolean
		return self.Locked or (self.Section ~= nil and self.Section:IsLocked())
	end

	function Row:GetLockReason(): string?
		return self.LockReason or (self.Section and self.Section:GetLockReason())
	end

	function Row:ApplyLock()
		local Locked = self:IsLocked()
		if self.Applied == Locked then
			return
		end
		self.Applied = Locked
		self.Pressed = false
		if Locked then
			self:SetFocused(false)
			Library.HoveredRows[self] = nil
			if self.ClearHover then
				self.ClearHover()
			end
			if self.OnLock then
				self.OnLock()
			end
			self.Shield.Visible = true
			Creator.Tween(self.Shield, 0.15, { BackgroundTransparency = Creator.GetThemeProperty("LockedTransparency") })
		else
			self.Shield.Visible = false
			self.Shield.BackgroundTransparency = 1
		end
	end

	function Row:SetLocked(Value: boolean, Reason: string?)
		self.Locked = Value == true
		self.LockReason = if self.Locked then Reason else nil
		self:ApplyLock()
	end

	function Row:SetFocused(Value: boolean)
		Value = Value == true and not self:IsLocked()
		if self.Focused == Value then
			return
		end
		self.Focused = Value
		if Value then
			Library:ClearRowHover()
			local Previous = Library.FocusedRow
			Library.FocusedRow = self
			if Previous and Previous ~= self then
				Previous:SetFocused(false)
			end
		elseif Library.FocusedRow == self then
			Library.FocusedRow = nil
		end
		self:ApplyFocus()
		if Value and Library.HoverStyle == "Click" and not self.Interactive and not Library.InputLocked then
			self:FocusRipple()
		end
	end

	function Row:RefreshState()
		if self.Applied then
			self.Shield.BackgroundTransparency = Creator.GetThemeProperty("LockedTransparency")
		end
		if self.Focused then
			self:ApplyFocus()
		end
	end

	function Row:ApplyFocus()
		local ShowRing = self.Focused and Library.HoverStyle == "Border"
		local ShowFill = self.Focused and not ShowRing
		Creator.Tween(self.FocusRing, 0.15, {
			Transparency = if ShowRing then Creator.GetThemeProperty("FocusedTransparency") else 1,
		})
		Creator.Tween(self.FocusFill, 0.15, {
			BackgroundTransparency = if ShowFill then Creator.GetThemeProperty("PressedTransparency") else 1,
		})
	end

	function Row:FocusRipple()
		self.HoverToken = (self.HoverToken or 0) + 1
		self.HoverLayer.Visible = true
		self:Ripple()
		self:SleepHover()
	end

	function Row:GetState(): string
		if self:IsLocked() then
			return "Disabled"
		elseif self.Focused then
			return "Focused"
		elseif self.Pressed then
			return "Pressed"
		elseif Library.HoveredRows[self] then
			return "Hover"
		end
		return "Default"
	end

	function Row:SetDivider(Inset: boolean)
		local Left = if Inset then self.LeftSpace or 14 else 0
		self.Inset = Inset
		self.Separator.Position = UDim2.new(0, Left, 1, -1)
		self.Separator.Size = UDim2.new(1, -Left, 0, 1)
	end

	function Row:SetHeight(Height)
		if self.Height == Height then
			return
		end
		self.Height = Height
		self.Clip.Size = UDim2.new(1, 0, 0, Height)
		self.Content.Size = UDim2.new(1, 0, 0, Height)
	end

	function Row:SetReserve(Width)
		if self.Reserve == Width and self.ReserveLeft == self.LeftSpace then
			return
		end
		self.ReserveLeft = self.LeftSpace
		self.Reserve = Width
		self.LabelHolder.Size = UDim2.new(1, -(self.LeftSpace + 14 + Width), 0, MinHeight)
	end

	function Row:SetExtra(Height)
		self.Padding.PaddingBottom = UDim.new(0, 11 + Height)
	end

	function Row:BindControl(Control, Gap)
		Gap = Gap or 14
		local function Update()
			if Control.Visible then
				self:SetReserve(Control.AbsoluteSize.X + Gap)
			else
				self:SetReserve(0)
			end
		end
		Creator.AddSignal(Control:GetPropertyChangedSignal("AbsoluteSize"), Update)
		Creator.AddSignal(Control:GetPropertyChangedSignal("Visible"), Update)
		Update()
	end

	function Row:SetTitle(Set)
		self.Title = Set or ""
		self.TitleLabel.Text = self.Title
	end

	function Row:SetMarquee(Value)
		Creator.Marquee(self.TitleLabel, Value)
	end

	function Row:SetDesc(Set)
		if Set == nil then
			Set = ""
		end
		self.Desc = Set
		self.DescLabel.Visible = Set ~= ""
		self.DescLabel.Text = Set
	end

	function Row:SetIcon(Icon)
		local Image = Resolve(Icon, "Element")
		if self.IconLabel then
			Creator.SetImage(self.IconLabel, Image)
			self:ApplyIconStyle(self.Tile)
		end
	end

	local function Luminance(Color)
		local function Channel(Value)
			return Value <= 0.03928 and Value / 12.92 or ((Value + 0.055) / 1.055) ^ 2.4
		end
		return 0.2126 * Channel(Color.R) + 0.7152 * Channel(Color.G) + 0.0722 * Channel(Color.B)
	end

	local function Ratio(A, B)
		local LA, LB = Luminance(A), Luminance(B)
		if LA < LB then
			LA, LB = LB, LA
		end
		return (LA + 0.05) / (LB + 0.05)
	end

	local function HolderBase(Value)
		if typeof(Value) == "Color3" then
			return Value
		end
		if typeof(Value) == "ColorSequence" then
			local R, G, B = 0, 0, 0
			local Keys = Value.Keypoints
			for _, Key in next, Keys do
				R += Key.Value.R
				G += Key.Value.G
				B += Key.Value.B
			end
			return Color3.new(R / #Keys, G / #Keys, B / #Keys)
		end
		return nil
	end

	local LightText = Color3.fromRGB(245, 245, 245)
	local DarkText = Color3.fromRGB(18, 18, 18)

	function Row:ApplyHolderContrast()
		local Base = HolderBase(self.HolderColor)

		local function Pick(Key, Dim)
			if not Base then
				return nil
			end
			if Ratio(Creator.GetThemeProperty(Key), Base) >= 3.5 then
				return nil
			end
			local Target = Ratio(LightText, Base) >= Ratio(DarkText, Base) and LightText or DarkText
			if Dim then
				Target = Target:Lerp(Base, 0.3)
			end
			return Target
		end

		local function Force(Object, Apply, Store)
			local Entry = Store[Object]
			if Entry then
				Entry.Force = Pick(Entry.Key, Entry == Creator.Texts[self.DescLabel])
				Apply(Object)
			end
		end

		Force(self.TitleLabel, Creator.ApplyText, Creator.Texts)
		Force(self.DescLabel, Creator.ApplyText, Creator.Texts)
		if self.IconLabel then
			Force(self.IconLabel, Creator.ApplyIcon, Creator.Icons)
		end

		for _, Object in next, self.Body:GetDescendants() do
			local Data = Creator.Registry[Object]
			if Data then
				for Property, Key in next, Data.Properties do
					if (Key == "Text" or Key == "SubText") and (Property == "TextColor3" or Property == "ImageColor3") then
						Object[Property] = Pick(Key, Key == "SubText") or Creator.GetThemeProperty(Key)
					end
				end
			end
		end
	end

	function Row:SetHolderColor(Value)
		local Body = self.Body
		if not Body then
			return
		end

		local Gradient = self.HolderGradient
		if Gradient then
			Gradient:Destroy()
			self.HolderGradient = nil
		end

		local Kind = typeof(Value)
		if Kind == "Color3" then
			self.HolderColor = Value
			Creator.RemoveTag(Body)
			Body.BackgroundColor3 = Value
		elseif Kind == "ColorSequence" then
			self.HolderColor = Value
			Creator.RemoveTag(Body)
			Body.BackgroundColor3 = Color3.new(1, 1, 1)
			self.HolderGradient = New("UIGradient", {
				Name = "HolderGradient",
				Color = Value,
				Parent = Body,
			})
		else
			self.HolderColor = nil
			Creator.AddThemeObject(Body, { BackgroundColor3 = "Element" })
		end

		if self.HolderColor and not self.HolderConnection then
			self.HolderConnection = Library.ThemeChanged:Connect(function()
				if self.HolderColor and self.Body.Parent then
					self:ApplyHolderContrast()
				end
			end)
		end

		self:ApplyHolderContrast()
		task.defer(function()
			if self.Body.Parent then
				self:ApplyHolderContrast()
			end
		end)
	end

	function Row:ApplyIconStyle(Tile)
		self.Tile = Tile and true or false
		local HasImage = self.IconLabel.Image ~= ""
		self.LeftSpace = HasImage and (self.Tile and 61 or 53) or 14
		self.IconLabel.Visible = HasImage
		self.IconTile.Visible = HasImage and self.Tile
		if self.Tile then
			self.IconLabel.Parent = self.IconTile
			self.IconLabel.Size = UDim2.fromOffset(15, 15)
			self.IconLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			self.IconLabel.Position = UDim2.fromScale(0.5, 0.5)
		else
			self.IconLabel.Parent = self.Content
			self.IconLabel.Size = UDim2.fromOffset(16, 16)
			self.IconLabel.AnchorPoint = Vector2.new(0, 0.5)
		end
		self:AlignIcon()
		self.LabelHolder.Position = UDim2.fromOffset(self.LeftSpace, 0)
		self:SetDivider(self.Inset ~= false)
		self:SetReserve(self.Reserve)
	end

	function Row:AlignIcon()
		if not self.IconLabel then
			return
		end
		local Center = self.IconCenter or MinHeight / 2
		local TileX = self.IconX and (self.IconX - 3) or 16
		local PlainX = self.IconX or 19
		self.IconTile.Position = UDim2.new(0, TileX, 0, Center)
		if not self.Tile then
			self.IconLabel.Position = UDim2.new(0, PlainX, 0, Center)
		end
	end

	function Row:MeasureIcon()
		local Title = self.TitleRow
		local Top = Title.AbsolutePosition.Y - self.Content.AbsolutePosition.Y
		local Height = Title.AbsoluteSize.Y
		if self.DescLabel.Visible then
			Height = self.DescLabel.AbsolutePosition.Y + self.DescLabel.AbsoluteSize.Y - Title.AbsolutePosition.Y
		end
		if Height <= 0 then
			return
		end
		local Center = math.max(MinHeight / 2, math.floor(Top + Height / 2 + 0.5))
		if Center ~= self.IconCenter then
			self.IconCenter = Center
			self:AlignIcon()
		end
	end

	function Row:SetVisible(Value)
		self.Hidden = not Value
		self.Clip.Visible = Value and true or false
	end

	function Row:GetVisible()
		return not self.Hidden
	end

	function Row:Destroy()
		if self.HolderConnection then
			self.HolderConnection.Connected = false
			self.HolderConnection = nil
		end
		if self.StateConnection then
			self.StateConnection.Connected = false
			self.StateConnection = nil
		end
		Components.Rows[self.Clip] = nil
		Library.SearchRows[self] = nil
		Library.HoveredRows[self] = nil
		if Library.FocusedRow == self then
			Library.FocusedRow = nil
		end
		self.Clip:Destroy()
	end

	function Row:Matches(Query)
		local Text = string.lower((self.Title or "") .. " " .. (self.Desc or "") .. " " .. (self.Keywords or ""))
		return string.find(Text, Query, 1, true) ~= nil
	end

	return function(Title, Desc, Section, Hover, Config)
		Config = Config or {}
		Counter = Counter + 1

		local self = setmetatable({
			Id = Counter,
			Title = Title or "",
			Desc = Desc or "",
			Keywords = Config.Keywords,
			Section = Section,
			Home = Section,
			Tab = Config.Tab,
			Reserve = 0,
			Height = MinHeight,
			Hidden = false,
			Interactive = Hover,
			Mode = "Both",
			Locked = false,
			Applied = false,
			Focused = false,
			Pressed = false,
		}, Row)

		local Image = Resolve(Config.Icon, "Element", Config)
		local Tile = (Config.IconStyle or Library.IconStyle) == "Tile"
		self.Tile = Tile
		self.IconStyleLocked = Config.IconStyle ~= nil
		self.LeftSpace = Image and (Tile and 61 or 53) or 14

		self.TitleLabel = Label({
			Text = self.Title,
			TextSize = 13,
			Weight = "Medium",
			Size = UDim2.new(1, 0, 0, 17),
			TextTruncate = Enum.TextTruncate.AtEnd,
		})

		self.TitleRow = New("Frame", {
			Size = UDim2.new(1, 0, 0, 17),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 6),
			}),
			self.TitleLabel,
		})

		if Config.Badge then
			local Badge = type(Config.Badge) == "table" and Config.Badge or { Text = tostring(Config.Badge) }
			self.TitleLabel.AutomaticSize = Enum.AutomaticSize.X
			self.TitleLabel.Size = UDim2.new(0, 0, 0, 17)
			self.TitleLabel.TextTruncate = Enum.TextTruncate.None
			self.Badge = Components.Chip(Badge.Text, Badge.Variant or Badge.Color, self.TitleRow)
			self.Badge.Frame.LayoutOrder = 2
		end

		self.DescLabel = Label({
			Text = self.Desc,
			TextSize = 12,
			Weight = "Regular",
			Tag = "SubText",
			TextWrapped = true,
			TextYAlignment = Enum.TextYAlignment.Top,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 14),
			LayoutOrder = 2,
			Visible = self.Desc ~= "",
		})

		self.Padding = New("UIPadding", {
			PaddingTop = UDim.new(0, 11),
			PaddingBottom = UDim.new(0, 11),
		})

		self.LabelHolder = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(self.LeftSpace, 0),
			Size = UDim2.new(1, -(self.LeftSpace + 14), 0, MinHeight),
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 2),
			}),
			self.Padding,
			self.TitleRow,
			self.DescLabel,
		})

		self.Separator = New("Frame", {
			Position = UDim2.new(0, self.LeftSpace, 1, -1),
			Size = UDim2.new(1, -self.LeftSpace, 0, 1),
			BackgroundTransparency = 0.94,
			ThemeTag = {
				BackgroundColor3 = "ElementBorder",
			},
		})

		self.Content = New("Frame", {
			Size = UDim2.new(1, 0, 0, MinHeight),
			BackgroundTransparency = 1,
		}, {
			self.Separator,
			self.LabelHolder,
		})

		self.IconTile = New("Frame", {
			Size = UDim2.fromOffset(32, 32),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 16, 0.5, 0),
			BackgroundTransparency = 0,
			Visible = false,
			Parent = self.Content,
			ThemeTag = {
				BackgroundColor3 = "Text",
			},
		}, {
			Corner(9),
			New("UIGradient", {
				Rotation = 80,
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.87),
					NumberSequenceKeypoint.new(1, 0.93),
				}),
			}),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Thickness = 1,
				Color = Color3.new(1, 1, 1),
				Transparency = 0,
			}, {
				New("UIGradient", {
					Rotation = 55,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0.78),
						NumberSequenceKeypoint.new(0.6, 0.97),
						NumberSequenceKeypoint.new(1, 0.9),
					}),
				}),
			}),
		})

		self.IconLabel = New("ImageLabel", {
			Image = Image or "",
			Size = UDim2.fromOffset(16, 16),
			Parent = self.Content,
		})
		local Palette = Library.IconPalette
		local RowColor = Config.IconColor or Palette[(Counter - 1) % #Palette + 1]
		Creator.TagIcon(self.IconLabel, "Text", RowColor)
		Creator.TagText(self.TitleLabel, "Text", RowColor)
		Creator.TagText(self.DescLabel, "SubText", RowColor, true)
		self:ApplyIconStyle(Tile)
		if not Config.Badge then
			Creator.Marquee(self.TitleLabel, Config.Marquee)
		end

		self.Overlay = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ThemeTag = {
				BackgroundColor3 = "Hover",
			},
		}, {
			Corner(Radius),
		})

		self.HoverCorner = SideCorner(Radius, Radius, Radius, Radius)
		self.HoverRing = Stroke("Accent", 1, 2)
		self.HoverRingCorner = SideCorner(Radius - 2, Radius - 2, Radius - 2, Radius - 2)
		self.HoverRingFrame = New("Frame", {
			Name = "HoverRing",
			Position = UDim2.fromOffset(2, 2),
			Size = UDim2.new(1, -4, 1, -4),
			BackgroundTransparency = 1,
		}, {
			self.HoverRingCorner,
			self.HoverRing,
		})
		self.HoverBar = New("Frame", {
			Name = "HoverBar",
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 5, 0.5, 0),
			Size = UDim2.new(0, 3, 0.2, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		})
		self.HoverLayer = New("CanvasGroup", {
			Name = "HoverLayer",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Active = false,
			Visible = false,
			ZIndex = 0,
			Parent = self.Content,
		}, {
			self.HoverCorner,
			self.HoverRingFrame,
			self.HoverBar,
		})

		self.ShieldCorner = SideCorner(Radius, Radius, Radius, Radius)
		self.Shield = New("TextButton", {
			Name = "Shield",
			Text = "",
			AutoButtonColor = false,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 10,
			Visible = false,
			Parent = self.Content,
			ThemeTag = {
				BackgroundColor3 = "Locked",
			},
		}, {
			self.ShieldCorner,
		})

		self.FocusFillCorner = SideCorner(Radius, Radius, Radius, Radius)
		self.FocusFill = New("Frame", {
			Name = "FocusFill",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = self.Content,
			ThemeTag = {
				BackgroundColor3 = "Pressed",
			},
		}, {
			self.FocusFillCorner,
		})

		self.FocusCorner = SideCorner(Radius - 2, Radius - 2, Radius - 2, Radius - 2)
		self.FocusRing = Stroke("Focused", 1, 1.5)
		self.FocusFrame = New("Frame", {
			Name = "FocusRing",
			Position = UDim2.fromOffset(2, 2),
			Size = UDim2.new(1, -4, 1, -4),
			BackgroundTransparency = 1,
			ZIndex = 9,
			Parent = self.Content,
		}, {
			self.FocusCorner,
			self.FocusRing,
		})

		self.Body = New("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			Corner(Radius),
			self.Overlay,
			self.Content,
		})

		self.Clip = New("Frame", {
			Size = UDim2.new(1, 0, 0, MinHeight),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			LayoutOrder = Section and Section:NextOrder() or 0,
			Parent = Section and Section.Container or nil,
		}, {
			self.Body,
		})

		Library.PanelFills[self.Body] = 0
		self.Body.BackgroundTransparency = 1 - Library:GetPanelAlpha()

		if Config.HolderColor ~= nil then
			self:SetHolderColor(Config.HolderColor)
		end

		self.Order = self.Clip.LayoutOrder
		self.Frame = self.Content
		self.Click = self.Body

		Components.Rows[self.Clip] = self
		Library.SearchRows[self] = true

		self.StateConnection = Library.ThemeChanged:Connect(function()
			self:RefreshState()
		end)

		local function QueueMeasure()
			if self.MeasurePending then
				return
			end
			if Library:IsWindowBusy() then
				Library.DeferredMeasure[self] = true
				return
			end
			self.MeasurePending = true
			task.defer(function()
				self.MeasurePending = false
				if self.Clip.Parent then
					self:MeasureIcon()
				end
			end)
		end
		Creator.AddSignal(self.LabelHolder:GetPropertyChangedSignal("AbsoluteSize"), function()
			self:SetHeight(math.max(MinHeight, self.LabelHolder.AbsoluteSize.Y))
			QueueMeasure()
		end)
		Creator.AddSignal(self.DescLabel:GetPropertyChangedSignal("AbsoluteSize"), QueueMeasure)

		Creator.AddSignal(self.Clip:GetPropertyChangedSignal("Visible"), function()
			if self.Home then
				self.Home:QueueRefresh()
			end
		end)

		if Hover then
			local Motor, SetTransparency = Creator.SpringMotor(1, self.Overlay, "BackgroundTransparency", false, false)
			local RingMotor, SetRing = Creator.SpringMotor(1, self.HoverRing, "Transparency", true, false)
			local BarMotor = Flipper.SingleMotor.new(0)
			BarMotor:OnStep(function(Value: number)
				self.HoverBar.Size = UDim2.new(0, 3, 0.2 + 0.38 * Value, 0)
				self.HoverBar.BackgroundTransparency = 1 - Value
			end)

			local function SetBar(Value: number)
				if Library.Config.ReducedMotion then
					BarMotor:SetGoal(Flipper.Instant.new(Value))
				else
					BarMotor:SetGoal(Flipper.Spring.new(Value, SpringOptions))
				end
			end

			local function IsBlocked()
				return Library:IsBlockedAt(self.Body) and not (Section and Section.InModal)
			end

			local function Settle(Pressed)
				if IsBlocked() or Library.InputLocked or next(Library.Popups) ~= nil then
					return
				end
				local Style = Library.HoverStyle
				local Ignore = Section ~= nil and Section.InModal
				if Style == "Full" then
					SetTransparency(Creator.GetThemeProperty(Pressed and "PressedTransparency" or "HoverTransparency"), Ignore)
				elseif Style == "Border" then
					SetRing(Pressed and 0 or 0.12)
				elseif Style == "Accent" then
					SetTransparency(Creator.GetThemeProperty(Pressed and "PressedTransparency" or "HoverTransparency"), Ignore)
					SetBar(Pressed and 0.7 or 1)
				end
			end

			self.ClearHover = function()
				SetTransparency(1, true)
				SetRing(1)
				SetBar(0)
			end

			Creator.OnHoverEnter(self.Body, function()
				if next(Library.Popups) ~= nil then
					return
				end
				Library.HoveredRows[self] = true
				self:WakeHover()
				Settle(false)
			end)
			Creator.OnHoverLeave(self.Body, function()
				Library.HoveredRows[self] = nil
				self.Pressed = false
				self.ClearHover()
				self:SleepHover()
			end)
			Creator.AddGuarded(self.Body, "MouseButton1Down", function()
				if not Creator.AcceptsInput(self.Body) then
					return
				end
				self.Pressed = true
				self:WakeHover()
				if Library.HoverStyle == "Click" and not IsBlocked() and not Library.InputLocked then
					self:Ripple()
				end
				Settle(true)
			end)
			Creator.AddGuarded(self.Body, "MouseButton1Up", function()
				self.Pressed = false
				Settle(false)
			end)
			self:ApplyHoverStyle()
		else
			self.Body.Active = false
			self.Body.AutoButtonColor = false
			Creator.OnHoverEnter(self.Body, function()
				Library:ClearRowHover()
			end)
		end

		Creator.AddGuarded(self.Shield, "MouseButton1Click", function()
			local Reason = self:GetLockReason()
			if Reason then
				Library:InternalToast({ Text = Reason, Type = "Warning", Id = "Lock:" .. self.Id })
			end
		end)

		if Config.Locked then
			self:SetLocked(true, Config.LockedReason)
		else
			self:ApplyLock()
		end

		if Section then
			Section:QueueRefresh()
		end

		return self
	end
end)()

Components.TitleBar = (function()
	local AddSignal = Creator.AddSignal
	local Assets = Components.Assets

	local function BarButton(Icon, Callback, Tinted)
		Tinted = Tinted ~= false
		local Button = {
			ClassType = "Action",
			Callback = Callback or function() end,
			Toggled = false,
			Hovering = false,
		}

		Button.Icon = New("ImageLabel", {
			Image = Icon,
			Size = UDim2.fromOffset(16, 16),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Name = "Icon",
			ThemeTag = {
				ImageColor3 = "SubText",
			},
		})

		Button.Frame = New("TextButton", {
			Size = UDim2.fromOffset(36, 34),
			BackgroundTransparency = 1,
			ThemeTag = {
				BackgroundColor3 = "Hover",
			},
		}, {
			Corner(8),
			Button.Icon,
		})

		local Motor, SetTransparency = Creator.SpringMotor(1, Button.Frame, "BackgroundTransparency", true)

		local function Settle()
			local Active = Button.Hovering or Button.Toggled
			SetTransparency(if Active then Creator.GetThemeProperty("HoverTransparency") else 1, true)
			if Tinted then
				Creator.OverrideTag(Button.Icon, { ImageColor3 = if Active then "Text" else "SubText" })
			end
		end

		Creator.OnHoverEnter(Button.Frame, function()
			if Library.InputLocked then
				return
			end
			Button.Hovering = true
			Settle()
		end)
		Creator.OnHoverLeave(Button.Frame, function()
			Button.Hovering = false
			Settle()
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Button.Frame) then
				return
			end
			SetTransparency(Creator.GetThemeProperty("PressedTransparency"), true)
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Up", function()
			SetTransparency(Creator.GetThemeProperty("HoverTransparency"), true)
		end)
		Creator.AddGuarded(Button.Frame, "MouseButton1Click", function()
			Button.Callback()
		end)

		Button.SetCallback = function(Func)
			Button.Callback = Func
		end

		local ThemeConnection
		Button.SetToggled = function(Value: boolean)
			Button.Toggled = Value

			if Value and not ThemeConnection then
				ThemeConnection = Library.ThemeChanged:Connect(function()
					if not Button.Frame.Parent then
						ThemeConnection:Disconnect()
						ThemeConnection = nil
					elseif Button.Toggled then
						Settle()
					end
				end)
			end

			Settle()
		end

		return Button
	end

	Components.BarButton = BarButton

	return function(Config)
		local TitleBar = {}

		TitleBar.CreateButton = BarButton

		TitleBar.Title = Label({
			RichText = true,
			Text = Config.Title or "",
			TextSize = 17,
			Weight = "SemiBold",
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = 2,
		})

		TitleBar.SubTitle = Label({
			RichText = true,
			Text = Config.SubTitle or "",
			TextSize = 12,
			Weight = "Regular",
			Tag = "SubText",
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = 3,
			Visible = (Config.SubTitle or "") ~= "",
		})

		TitleBar.Brand = New("Frame", {
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = Enum.AutomaticSize.X,
			Position = UDim2.fromOffset(18, 0),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),
			TitleBar.Title,
			TitleBar.SubTitle,
		})

		TitleBar.Logo = New("ImageLabel", {
			Image = "",
			Size = UDim2.fromOffset(24, 24),
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Visible = false,
			Parent = TitleBar.Brand,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 0),
			}),
		})

		function TitleBar:SetIcon(Icon, Options)
			Options = Options or {}
			local Image = Resolve(Icon, "TitleBar", Options)
			local Logo = TitleBar.Logo
			local Size = Options.Size or 24
			local Tint = Options.Tint
			if Tint == nil then
				Tint = type(Icon) == "string" and Library:GetIconData(Icon, nil, nil, "TitleBar") ~= nil
			end
			Creator.SetImage(Logo, Image)
			Logo.Visible = Image ~= nil
			Logo.Size = UDim2.fromOffset(Size, Size)
			Logo:FindFirstChildOfClass("UICorner").CornerRadius = UDim.new(0, Options.Corner or 0)
			if Tint then
				Creator.OverrideTag(Logo, { ImageColor3 = "Text" })
			else
				Creator.RemoveTag(Logo)
				Logo.ImageColor3 = Options.Color or Color3.new(1, 1, 1)
			end
			TitleBar.IconOptions = Options
		end

		TitleBar:SetIcon(Config.Logo, {
			Tint = Config.LogoTint,
			Size = Config.LogoSize,
			Corner = Config.LogoCorner,
		})

		TitleBar.TabList = New("Frame", {
			Size = UDim2.fromOffset(0, 28),
			Position = UDim2.fromOffset(3, 3),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 2),
			}),
		})

		TitleBar.Indicator = New("Frame", {
			Size = UDim2.fromOffset(26, 2),
			Position = UDim2.fromOffset(0, 28),
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0),
			ZIndex = 3,
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			Corner(999),
		})

		TitleBar.Nav = New("Frame", {
			Size = UDim2.fromOffset(6, 38),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
		}, {
			New("UIPadding", {
				PaddingRight = UDim.new(0, 3),
			}),
			TitleBar.TabList,
			TitleBar.Indicator,
		})

		TitleBar.Controls = New("Frame", {
			Size = UDim2.fromOffset(0, 34),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -8, 0.5, 0),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),
		})

		TitleBar.Frame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 58),
			BackgroundTransparency = 1,
			Parent = Config.Parent,
		}, {
			TitleBar.Brand,
			TitleBar.Nav,
			TitleBar.Controls,
		})

		TitleBar.MinButton = BarButton(Assets.Min, function()
			Library.Window:Minimize()
		end)
		TitleBar.MinButton.Frame.LayoutOrder = 1
		TitleBar.MinButton.Frame.Parent = TitleBar.Controls

		TitleBar.MaxButton = BarButton(Assets.Max, function()
			Config.Window.Maximize(not Config.Window.Maximized)
		end)
		TitleBar.MaxButton.Frame.LayoutOrder = 2
		TitleBar.MaxButton.Frame.Parent = TitleBar.Controls

		TitleBar.CloseButton = BarButton(Assets.Close, function()
			Library.Window:Dialog({
				Title = "Delete Window",
				Content = "Are you sure you want to delete this window? The interface will be unloaded.",
				Buttons = {
					{
						Title = "Yes, Delete Window",
						Variant = "Danger",
						Callback = function()
							Library:Destroy()
						end,
					},
					{
						Title = "No, Keep Window",
					},
				},
			})
		end)
		TitleBar.CloseButton.Frame.LayoutOrder = 3
		TitleBar.CloseButton.Frame.Parent = TitleBar.Controls

		local LightSpecs = {
			{ Name = "Close", Fill = Color3.fromRGB(255, 92, 95), Border = Color3.fromRGB(250, 0, 26), Glyph = Color3.fromRGB(126, 6, 12), Icon = "x", Button = TitleBar.CloseButton },
			{ Name = "Minimize", Fill = Color3.fromRGB(250, 200, 1), Border = Color3.fromRGB(204, 151, 0), Glyph = Color3.fromRGB(153, 87, 18), Icon = "minus", Button = TitleBar.MinButton },
			{ Name = "Maximize", Fill = Color3.fromRGB(52, 199, 89), Border = Color3.fromRGB(13, 149, 27), Glyph = Color3.fromRGB(13, 100, 14), Icon = "plus", Button = TitleBar.MaxButton },
		}

		TitleBar.Lights = New("Frame", {
			Size = UDim2.fromOffset(0, 14),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 14, 0.5, 0),
			BackgroundTransparency = 1,
			Visible = false,
			Parent = TitleBar.Frame,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),
		})

		local LightGlyphs = {}

		local function ShowGlyphs(Value)
			for _, Glyph in next, LightGlyphs do
				local Visible = Value or Glyph:GetAttribute("Toggled") == true
				Creator.Tween(Glyph, 0.1, { ImageTransparency = if Visible then 0 else 1 })
			end
		end

		for Index, Spec in next, LightSpecs do
			local Glyph = New("ImageLabel", {
				Image = Asset(Spec.Icon),
				Size = UDim2.fromOffset(9, 9),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				ImageColor3 = Spec.Glyph,
				ImageTransparency = 1,
			})
			table.insert(LightGlyphs, Glyph)

			local Light = New("TextButton", {
				Size = UDim2.fromOffset(14, 14),
				BackgroundColor3 = Spec.Fill,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = Index,
				Parent = TitleBar.Lights,
			}, {
				Corner(999),
				New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Spec.Border,
					Thickness = 1,
				}),
				Glyph,
			})

			Creator.OnHoverEnter(Light, function()
				ShowGlyphs(true)
			end)
			Creator.OnHoverLeave(Light, function()
				ShowGlyphs(false)
			end)
			Creator.AddGuarded(Light, "MouseButton1Down", function()
				if not Creator.AcceptsInput(Light) then
					return
				end
				Light.BackgroundColor3 = Spec.Fill:Lerp(Color3.new(0, 0, 0), 0.2)
			end)
			Creator.AddGuarded(Light, "MouseButton1Up", function()
				Light.BackgroundColor3 = Spec.Fill
			end)
			Creator.AddGuarded(Light, "MouseButton1Click", function()
				Spec.Button.Callback()
			end)
		end

		TitleBar.Actions = {}
		TitleBar.Mac = false

		local ActionColors = {
			Color3.fromRGB(10, 132, 255),
			Color3.fromRGB(191, 90, 242),
			Color3.fromRGB(255, 159, 10),
			Color3.fromRGB(48, 209, 88),
			Color3.fromRGB(255, 55, 95),
		}

		function TitleBar:RefreshActions()
			for _, Action in next, TitleBar.Actions do
				Action.Button.Frame.Visible = Action.Shown and not TitleBar.Mac
				Action.Light.Visible = Action.Shown and TitleBar.Mac
			end
		end

		function TitleBar.CreateAction(Icon, Callback, Color, Shown)
			local Count = #TitleBar.Actions + 1
			local Action = {
				Shown = Shown ~= false,
				Callback = Callback or function() end,
			}

			TitleBar.ActionSerial = (TitleBar.ActionSerial or 0) + 1
			local Serial = TitleBar.ActionSerial

			Action.Button = BarButton(Icon, function()
				Action.Callback()
			end)
			Action.Button.Frame.LayoutOrder = -1000 + Serial
			Action.Button.Frame.Parent = TitleBar.Controls

			local Fill = Color or ActionColors[(Count - 1) % #ActionColors + 1]
			local Border = Fill:Lerp(Color3.new(0, 0, 0), 0.22)
			local GlyphColor = Fill:Lerp(Color3.new(0, 0, 0), 0.65)

			Action.Glyph = New("ImageLabel", {
				Image = Icon,
				Size = UDim2.fromOffset(8, 8),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				ImageColor3 = GlyphColor,
				ImageTransparency = 1,
			})
			table.insert(LightGlyphs, Action.Glyph)

			Action.Light = New("TextButton", {
				Size = UDim2.fromOffset(14, 14),
				BackgroundColor3 = Fill,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = 10 + Serial,
				Visible = false,
				Parent = TitleBar.Lights,
			}, {
				Corner(999),
				New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = Border,
					Thickness = 1,
				}),
				Action.Glyph,
			})

			Creator.OnHoverEnter(Action.Light, function()
				ShowGlyphs(true)
			end)
			Creator.OnHoverLeave(Action.Light, function()
				ShowGlyphs(false)
			end)
			Creator.AddGuarded(Action.Light, "MouseButton1Down", function()
				if not Creator.AcceptsInput(Action.Light) then
					return
				end
				Action.Light.BackgroundColor3 = Fill:Lerp(Color3.new(0, 0, 0), 0.2)
			end)
			Creator.AddGuarded(Action.Light, "MouseButton1Up", function()
				Action.Light.BackgroundColor3 = Fill
			end)
			Creator.AddGuarded(Action.Light, "MouseButton1Click", function()
				Action.Callback()
			end)

			function Action:SetIcon(Image)
				Creator.SetImage(Action.Button.Icon, Image)
				Creator.SetImage(Action.Glyph, Image)
			end

			function Action:SetToggled(Value)
				Value = Value == true
				Action.Button.SetToggled(Value)
				Action.Glyph:SetAttribute("Toggled", Value)
				Creator.Tween(Action.Glyph, 0.1, { ImageTransparency = if Value then 0 else 1 })
			end

			function Action:SetVisible(Value)
				Action.Shown = Value and true or false
				TitleBar:RefreshActions()
			end

			function Action:SetCallback(Func)
				Action.Callback = Func or function() end
			end

			function Action:Destroy()
				if Action.Destroyed then
					return
				end
				Action.Destroyed = true

				local Position = table.find(TitleBar.Actions, Action)
				if Position then
					table.remove(TitleBar.Actions, Position)
				end

				local GlyphPosition = table.find(LightGlyphs, Action.Glyph)
				if GlyphPosition then
					table.remove(LightGlyphs, GlyphPosition)
				end

				Action.Button.Frame:Destroy()
				Action.Light:Destroy()
			end

			table.insert(TitleBar.Actions, Action)
			TitleBar:RefreshActions()
			return Action
		end

		function TitleBar:SetLayout(Mode)
			local Mac = Mode == "MacOS"
			TitleBar.Mac = Mac
			TitleBar.Lights.Visible = Mac
			TitleBar.MinButton.Frame.Visible = not Mac
			TitleBar.MaxButton.Frame.Visible = not Mac
			TitleBar.CloseButton.Frame.Visible = not Mac
			TitleBar.Brand.AnchorPoint = Vector2.new(Mac and 1 or 0, 0)
			TitleBar.Brand.Position = Mac and UDim2.new(1, -18, 0, 0) or UDim2.fromOffset(18, 0)
			TitleBar.Logo.LayoutOrder = Mac and 3 or 1
			TitleBar.Title.LayoutOrder = 2
			TitleBar.SubTitle.LayoutOrder = Mac and 1 or 3
			TitleBar:RefreshActions()
		end

		return TitleBar
	end
end)()

Components.Notification = (function()
	local Spring = Flipper.Spring.new

	local ActionSize = 26
	local ActionGap = 2
	local ButtonGap = 8
	local ButtonHeight = 36

	local Notification = {
		Position = "Bottom Right",
		Counter = 0,
		Inside = false,
		Positions = { "Top Left", "Top Right", "Bottom Left", "Bottom Right" },
	}

	local PositionKeys = {
		topleft = "Top Left",
		topright = "Top Right",
		bottomleft = "Bottom Left",
		bottomright = "Bottom Right",
	}

	local Types = {
		Info = { Icon = "info", Tag = "Info" },
		Success = { Icon = "check-circle", Tag = "Success" },
		Warning = { Icon = "alert-triangle", Tag = "Warning" },
		Error = { Icon = "x-circle", Tag = "Danger" },
	}

	local Variants = {
		Tonal = { Fill = "Text", Text = "Text", Base = 0.9, Hover = 0.84, Press = 0.78, Stroke = true },
		Ghost = { Fill = "Text", Text = "Text", Base = 1, Hover = 0.92, Press = 0.86 },
		Primary = { Fill = "Text", Text = "AcrylicMain", Base = 0, Hover = 0.1, Press = 0.2 },
		Accent = { Fill = "Accent", Text = "AccentText", Base = 0, Hover = 0.1, Press = 0.2, Gradient = true },
		Danger = { Fill = "Danger", Text = Color3.new(1, 1, 1), Base = 0, Hover = 0.1, Press = 0.2, Gradient = true },
	}

	local function Paint(Props, Property, Value)
		if typeof(Value) == "Color3" then
			Props[Property] = Value
			if Props.ThemeTag then
				Props.ThemeTag[Property] = nil
			end
		elseif type(Value) == "string" and Value ~= "" then
			Props.ThemeTag = Props.ThemeTag or {}
			Props.ThemeTag[Property] = Value
		end

		if Props.ThemeTag and next(Props.ThemeTag) == nil then
			Props.ThemeTag = nil
		end

		return Props
	end

	local function IconButton(Image, Color, Callback)
		local Button = {
			Hovering = false,
			Toggled = false,
			Callback = Callback or function() end,
		}

		Button.Icon = New(
			"ImageLabel",
			Paint({
				Image = Image or "",
				Size = UDim2.fromOffset(14, 14),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ImageTransparency = 0.35,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}, "ImageColor3", Color)
		)

		Button.Frame = New("TextButton", {
			Text = "",
			AutoButtonColor = false,
			Size = UDim2.fromOffset(ActionSize, ActionSize),
			BackgroundTransparency = 1,
			ThemeTag = {
				BackgroundColor3 = "Text",
			},
		}, {
			Corner(8),
			Button.Icon,
		})

		local Motor, SetTransparency = Creator.SpringMotor(1, Button.Frame, "BackgroundTransparency", true)

		local function Settle()
			local Active = Button.Hovering or Button.Toggled
			SetTransparency(Active and 0.88 or 1, true)
			Creator.Tween(Button.Icon, 0.12, { ImageTransparency = Active and 0 or 0.35 })
		end

		Creator.OnHoverEnter(Button.Frame, function()
			if Library.InputLocked then
				return
			end
			Button.Hovering = true
			Settle()
		end)

		Creator.OnHoverLeave(Button.Frame, function()
			Button.Hovering = false
			Settle()
		end)

		Creator.AddGuarded(Button.Frame, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Button.Frame) then
				return
			end
			SetTransparency(0.8, true)
		end)

		Creator.AddGuarded(Button.Frame, "MouseButton1Up", function()
			Settle()
		end)

		Creator.AddGuarded(Button.Frame, "MouseButton1Click", function()
			Button.Callback()
		end)

		function Button.SetToggled(Value)
			Button.Toggled = Value == true
			Settle()
		end

		return Button
	end

	local function TextButton(Entry, Index, Count)
		local Colored = Entry.Color ~= nil
		local VariantName = Entry.Variant or ((Colored or Index == Count) and "Accent" or "Tonal")
		local Spec = Variants[VariantName] or Variants.Tonal
		local Fill = Entry.Color or Spec.Fill
		local TextColor = Entry.TextColor or (Colored and Color3.new(1, 1, 1) or Spec.Text)

		local Button = {
			Spec = Spec,
			Callback = Entry.Callback,
		}

		Button.Title = New(
			"TextLabel",
			Paint({
				Text = tostring(Entry.Title or Entry.Text or "Button"),
				FontFace = Fonts.SemiBold,
				TextSize = Entry.TextSize or 13,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, "TextColor3", TextColor)
		)

		Button.Frame = New(
			"TextButton",
			Paint({
				Text = "",
				AutoButtonColor = false,
				Size = UDim2.new(1 / Count, -(ButtonGap * (Count - 1)) / Count, 1, 0),
				BackgroundTransparency = Spec.Base,
				LayoutOrder = Index,
			}, "BackgroundColor3", Fill),
			{
				Corner(999),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 12),
					PaddingRight = UDim.new(0, 12),
				}),
				Button.Title,
			}
		)

		if Spec.Stroke then
			Stroke("Text", 0.88).Parent = Button.Frame
		end

		if Spec.Gradient then
			New("UIGradient", {
				Rotation = 90,
				Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(196, 196, 196)),
				Parent = Button.Frame,
			})
		end

		local Motor, Set = Creator.SpringMotor(Spec.Base, Button.Frame, "BackgroundTransparency", true)

		Creator.OnHoverEnter(Button.Frame, function()
			Set(Spec.Hover)
		end)

		Creator.OnHoverLeave(Button.Frame, function()
			Set(Spec.Base)
		end)

		Creator.AddGuarded(Button.Frame, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Button.Frame) then
				return
			end
			Set(Spec.Press)
		end)

		Creator.AddGuarded(Button.Frame, "MouseButton1Up", function()
			Set(Spec.Hover)
		end)

		function Button:SetText(Value)
			Button.Title.Text = tostring(Value)
		end

		function Button:SetCallback(Func)
			Button.Callback = Func
		end

		return Button
	end

	function Notification.Normalize(Value)
		local Key = string.lower(tostring(Value or ""))
		Key = string.gsub(Key, "[%s_%-]", "")
		return PositionKeys[Key] or "Bottom Right"
	end

	function Notification:Layout()
		local Holder = Notification.Holder
		local Gui = Notification.Gui
		if not (Holder and Gui) then
			return
		end

		local Position = Notification.Position
		local Right = string.find(Position, "Right", 1, true) ~= nil
		local Bottom = string.find(Position, "Bottom", 1, true) ~= nil
		local Window = Library.Window
		local Inside = Window ~= nil and Window.Maximized == true and Window.Root.Parent ~= nil and Window.Root.Visible
		Notification.Inside = Inside

		local Origin, Extent
		if Inside then
			Origin = Window.Root.AbsolutePosition - Gui.AbsolutePosition
			Extent = Window.Root.AbsoluteSize
		else
			Origin = Vector2.zero
			Extent = Gui.AbsoluteSize
			if Extent.X <= 0 or Extent.Y <= 0 then
				local CurrentCamera = Workspace.CurrentCamera
				Extent = CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
			end
		end

		local Margin = Inside and 16 or 24
		local Header = (Inside and not Bottom) and 58 or 0
		local Footer = (Inside and Bottom and Window.NavPosition == "Bottom") and 52 or 0
		local Width = math.clamp(Extent.X - Margin * 2, 1, 340)
		local Height = math.max(Extent.Y - Margin * 2 - Header - Footer, 1)
		local X = Right and (Origin.X + Extent.X - Margin) or (Origin.X + Margin)
		local Y = Bottom and (Origin.Y + Extent.Y - Margin - Footer) or (Origin.Y + Margin + Header)

		Holder.AnchorPoint = Vector2.new(Right and 1 or 0, Bottom and 1 or 0)
		Holder.Position = UDim2.fromOffset(X, Y)
		Holder.Size = UDim2.fromOffset(Width, Height)
		Notification.ListLayout.VerticalAlignment = Bottom and Enum.VerticalAlignment.Bottom or Enum.VerticalAlignment.Top
	end

	function Notification:Refresh()
		if Notification.Inside or (Library.Window and Library.Window.Maximized) then
			Notification:Layout()
		end
	end

	function Notification:SetPosition(Value)
		Notification.Position = Notification.Normalize(Value)
		Notification:Layout()
		return Notification.Position
	end

	function Notification:Init(GUI)
		Notification.Gui = New("ScreenGui", {
			Name = "FluentNotifications",
			DisplayOrder = 1002,
			IgnoreGuiInset = true,
			ResetOnSpawn = false,
			Parent = GUI.Parent,
		})
		ProtectGui(Notification.Gui)

		Notification.ListLayout = New("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Padding = UDim.new(0, 10),
		})

		Notification.Holder = New("Frame", {
			Position = UDim2.new(1, -24, 1, -24),
			Size = UDim2.new(0, 340, 1, -24),
			AnchorPoint = Vector2.new(1, 1),
			BackgroundTransparency = 1,
			Parent = Notification.Gui,
		}, {
			Notification.ListLayout,
		})

		Creator.AddSignal(Notification.Gui:GetPropertyChangedSignal("AbsoluteSize"), function()
			Notification:Layout()
		end)

		Notification:Layout()
	end

	function Notification:Destroy()
		if Notification.Gui then
			Notification.Gui:Destroy()
			Notification.Gui = nil
			Notification.Holder = nil
		end
	end

	function Notification:New(Config)
		Config = Config or {}
		Config.Title = Config.Title or "Title"
		Config.Content = Config.Content or ""
		Config.SubContent = Config.SubContent or ""
		Config.Duration = Config.Duration or nil
		Config.Buttons = Config.Buttons or {}
		Config.Actions = Config.Actions or Config.ActionButtons or {}

		local NewNotification = {
			ClassType = "Notification",
			Closed = false,
			Actions = {},
			ButtonList = {},
		}

		local Right = string.find(Notification.Position, "Right", 1, true) ~= nil
		local Bottom = string.find(Notification.Position, "Bottom", 1, true) ~= nil
		local Direction = Right and 1 or -1
		Notification.Counter = Notification.Counter + 1

		local TypeInfo = Config.Type and (Types[Config.Type] or Types.Info) or nil
		local IconId = Resolve(Config.Icon, "Notification", Config) or (TypeInfo and Asset(TypeInfo.Icon)) or nil
		local AccentColor = Config.Color or (TypeInfo and TypeInfo.Tag) or nil
		local IconColor = Config.IconColor or AccentColor
		local BarColor = Config.BarColor or AccentColor or "Accent"
		local TextLeft = IconId and 36 or 0
		local HasButtons = #Config.Buttons > 0
		local HasProgress = Config.Duration ~= nil and Config.Progress ~= false

		NewNotification.Icon = New(
			"ImageLabel",
			Paint({
				Image = IconId or "",
				Size = UDim2.fromOffset(24, 24),
				Position = UDim2.fromOffset(0, -1),
				BackgroundTransparency = 1,
				Visible = IconId ~= nil,
				ThemeTag = {
					ImageColor3 = "Text",
				},
			}, "ImageColor3", IconColor)
		)

		NewNotification.TitlePadding = New("UIPadding", {
			PaddingRight = UDim.new(0, 26),
		})

		NewNotification.Title = Label({
			Text = Config.Title,
			RichText = true,
			Tag = "Text",
			Weight = "SemiBold",
			TextSize = 15,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 22),
			LayoutOrder = 1,
		})
		NewNotification.TitlePadding.Parent = NewNotification.Title

		NewNotification.ContentLabel = Label({
			Text = Config.Content,
			RichText = true,
			Tag = "TextSecondary",
			Weight = "Regular",
			TextSize = 13,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 16),
			LayoutOrder = 2,
			Visible = Config.Content ~= "",
		})

		NewNotification.SubContentLabel = Label({
			Text = Config.SubContent,
			RichText = true,
			Tag = "SubText",
			Weight = "Regular",
			TextSize = 12,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 14),
			LayoutOrder = 3,
			Visible = Config.SubContent ~= "",
		})

		NewNotification.LabelHolder = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(TextLeft, 0),
			Size = UDim2.new(1, -TextLeft, 0, 0),
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 2),
			}),
			NewNotification.Title,
			NewNotification.ContentLabel,
			NewNotification.SubContentLabel,
		})

		NewNotification.Header = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			LayoutOrder = 1,
		}, {
			New("UIPadding", {
				PaddingTop = UDim.new(0, 4),
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),
			NewNotification.Icon,
			NewNotification.LabelHolder,
		})

		NewNotification.ButtonRow = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, ButtonHeight),
			LayoutOrder = 2,
			Visible = HasButtons,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, ButtonGap),
			}),
		})

		NewNotification.Content = New("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
		}, {
			New("UIPadding", {
				PaddingTop = UDim.new(0, 14),
				PaddingBottom = UDim.new(0, HasButtons and 10 or 14),
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
			}),
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
			}),
			NewNotification.Header,
			NewNotification.ButtonRow,
		})

		NewNotification.ActionHolder = New("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -12, 0, 16),
			Size = UDim2.fromOffset(0, ActionSize),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = 1,
			ZIndex = 5,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, ActionGap),
			}),
		})

		NewNotification.Body = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			ClipsDescendants = true,
			BackgroundColor3 = Color3.new(1, 1, 1),
		}, {
			Corner(Config.Radius or 20),
			Stroke("AcrylicBorder", 0.2),
			New("UIGradient", {
				Rotation = 90,
				ThemeTag = {
					Color = "AcrylicGradient",
				},
			}),
			NewNotification.Content,
			NewNotification.ActionHolder,
		})

		if HasProgress then
			NewNotification.ProgressFill = New(
				"Frame",
				Paint({
					Size = UDim2.fromScale(1, 1),
					BorderSizePixel = 0,
				}, "BackgroundColor3", BarColor),
				{
					SideCorner(0, 0, 2, 2),
				}
			)

			NewNotification.ProgressTrack = New("Frame", {
				Position = UDim2.fromOffset(18, 0),
				Size = UDim2.new(1, -36, 0, 3),
				BackgroundTransparency = 1,
				ZIndex = 4,
				Parent = NewNotification.Body,
			}, {
				NewNotification.ProgressFill,
			})
		end

		NewNotification.Root = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromScale(Direction, 0),
		}, {
			NewNotification.Body,
		})

		NewNotification.Holder = New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = Bottom and Notification.Counter or -Notification.Counter,
			Parent = Notification.Holder,
		}, {
			NewNotification.Root,
		})

		local RootMotor = Flipper.GroupMotor.new({
			Scale = Direction,
			Offset = 60 * Direction,
		})

		RootMotor:OnStep(function(Values)
			NewNotification.Root.Position = UDim2.new(Values.Scale, Values.Offset, 0, 0)
		end)

		local function RefreshReserve()
			local Count = NewNotification.CloseHandle and 1 or 0
			for _, Item in NewNotification.Actions do
				if Item.Shown then
					Count = Count + 1
				end
			end
			NewNotification.TitlePadding.PaddingRight = UDim.new(0, Count > 0 and (Count * (ActionSize + ActionGap) - 2) or 0)
		end

		function NewNotification:SetTitle(Value)
			NewNotification.Title.Text = tostring(Value)
		end

		function NewNotification:SetContent(Value)
			Value = tostring(Value or "")
			NewNotification.ContentLabel.Text = Value
			NewNotification.ContentLabel.Visible = Value ~= ""
		end

		function NewNotification:SetSubContent(Value)
			Value = tostring(Value or "")
			NewNotification.SubContentLabel.Text = Value
			NewNotification.SubContentLabel.Visible = Value ~= ""
		end

		function NewNotification:SetIcon(Value)
			local Image = Resolve(Value, "Notification")
			if Image then
				Creator.SetImage(NewNotification.Icon, Image)
			end
			NewNotification.Icon.Visible = Image ~= nil
		end

		function NewNotification:AddAction(ActionConfig)
			ActionConfig = ActionConfig or {}
			local Callback = ActionConfig.Callback
			local Toggle = ActionConfig.Toggle == true
			local Action = {
				Shown = ActionConfig.Visible ~= false,
				Value = false,
				Destroyed = false,
			}

			Action.Button = IconButton(
				Resolve(ActionConfig.Icon, "Notification", ActionConfig) or "",
				ActionConfig.Color,
				function()
					if Toggle then
						Action:SetValue(not Action.Value)
					else
						Library:SafeCallback(Callback, NewNotification, Action)
					end

					if ActionConfig.Close then
						NewNotification:Close()
					end
				end
			)

			Action.Frame = Action.Button.Frame
			Action.Frame.LayoutOrder = #NewNotification.Actions + 1
			Action.Frame.Visible = Action.Shown
			Action.Frame.Parent = NewNotification.ActionHolder

			function Action:SetIcon(Value)
				Creator.SetImage(Action.Button.Icon, Resolve(Value, "Notification") or "")
			end

			function Action:SetCallback(Func)
				Callback = Func
			end

			function Action:SetVisible(Value)
				Action.Shown = Value and true or false
				Action.Frame.Visible = Action.Shown
				RefreshReserve()
			end

			function Action:Destroy()
				if Action.Destroyed then
					return
				end
				Action.Destroyed = true

				local Position = table.find(NewNotification.Actions, Action)
				if Position then
					table.remove(NewNotification.Actions, Position)
				end

				Action.Frame:Destroy()
				RefreshReserve()
			end

			if Toggle then
				function Action:SetValue(Value, Silent)
					Value = Value == true
					if Action.Value == Value then
						return
					end

					Action.Value = Value
					Action.Button.SetToggled(Value)

					if not Silent then
						Library:SafeCallback(Callback, Value, NewNotification, Action)
					end
				end

				function Action:GetValue()
					return Action.Value
				end

				function Action:Toggle()
					Action:SetValue(not Action.Value)
				end

				if ActionConfig.Default == true then
					Action:SetValue(true, true)
				end
			end

			table.insert(NewNotification.Actions, Action)
			RefreshReserve()
			return Action
		end

		function NewNotification:AddBarButtonAction(ActionConfig)
			return NewNotification:AddAction(ActionConfig)
		end

		function NewNotification:AddBarButtonToggle(ActionConfig)
			local ToggleConfig = table.clone(ActionConfig or {})
			ToggleConfig.Toggle = true
			return NewNotification:AddAction(ToggleConfig)
		end

		function NewNotification:Open()
			RootMotor:SetGoal({
				Scale = Spring(0, { Frequency = 5 }),
				Offset = Spring(0, { Frequency = 5 }),
			})

			if NewNotification.ProgressFill and Config.Duration then
				NewNotification.ProgressTween = Creator.Tween(
					NewNotification.ProgressFill,
					Config.Duration,
					{ Size = UDim2.new(0, 0, 1, 0) },
					Enum.EasingStyle.Linear
				)
			end
		end

		function NewNotification:Close()
			if not NewNotification.Closed then
				NewNotification.Closed = true

				if NewNotification.ProgressTween then
					NewNotification.ProgressTween:Cancel()
				end

				task.spawn(function()
					RootMotor:SetGoal({
						Scale = Spring(Direction, { Frequency = 5 }),
						Offset = Spring(60 * Direction, { Frequency = 5 }),
					})
					task.wait(0.4)
					NewNotification.Holder:Destroy()
				end)
			end
		end

		if Config.Closable ~= false then
			NewNotification.CloseHandle = IconButton(Asset("x"), nil, function()
				NewNotification:Close()
			end)
			NewNotification.CloseButton = NewNotification.CloseHandle.Frame
			NewNotification.CloseButton.LayoutOrder = 1000
			NewNotification.CloseButton.Parent = NewNotification.ActionHolder
		end

		local ButtonCount = #Config.Buttons
		for Index, Entry in Config.Buttons do
			if type(Entry) == "table" then
				local Button = TextButton(Entry, Index, ButtonCount)
				Button.Frame.Parent = NewNotification.ButtonRow

				Creator.AddGuarded(Button.Frame, "MouseButton1Click", function()
					Library:SafeCallback(Button.Callback, NewNotification, Button)
					if not Entry.Keep then
						NewNotification:Close()
					end
				end)

				table.insert(NewNotification.ButtonList, Button)
			end
		end

		for _, Entry in Config.Actions do
			if type(Entry) == "table" then
				NewNotification:AddAction(Entry)
			end
		end

		RefreshReserve()
		NewNotification:Open()

		if Config.Duration then
			task.delay(Config.Duration, function()
				NewNotification:Close()
			end)
		end

		return NewNotification
	end

	return Notification
end)()

Components.Toast = (function()
	local Toast = {
		Active = {},
		List = {},
		Counter = 0,
		Limit = 3,
		Margin = 28,
		MaxText = 300,
		MinDuration = 2.5,
		MaxDuration = 6,
	}

	local Types = {
		Info = { Icon = "info", Color = Color3.fromRGB(10, 132, 255) },
		Success = { Icon = "check-circle", Color = Color3.fromRGB(50, 215, 75) },
		Warning = { Icon = "alert-triangle", Color = Color3.fromRGB(255, 214, 10) },
		Error = { Icon = "x-circle", Color = Color3.fromRGB(255, 69, 58) },
	}

	function Toast:Layout()
		local Holder = Toast.Holder
		local Gui = Toast.Gui
		if not (Holder and Gui) then
			return
		end

		local Window = Library.Window
		local Inside = Window ~= nil and Window.Maximized == true and Window.Root.Parent ~= nil and Window.Root.Visible

		local Origin, Extent
		if Inside then
			Origin = Window.Root.AbsolutePosition - Gui.AbsolutePosition
			Extent = Window.Root.AbsoluteSize
		else
			Origin = Vector2.zero
			Extent = Gui.AbsoluteSize
			if Extent.X <= 0 or Extent.Y <= 0 then
				local CurrentCamera = Workspace.CurrentCamera
				Extent = CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
			end
		end

		local Footer = (Inside and Window.NavPosition == "Bottom") and 52 or 0
		local Width = math.clamp(Extent.X - 32, 1, Toast.MaxText + 120)
		local Height = math.max(Extent.Y - Toast.Margin * 2 - Footer, 1)

		Holder.Position = UDim2.fromOffset(Origin.X + Extent.X / 2, Origin.Y + Extent.Y - Toast.Margin - Footer)
		Holder.Size = UDim2.fromOffset(Width, Height)
	end

	function Toast:Init(GUI)
		Toast.Gui = New("ScreenGui", {
			Name = "FluentToasts",
			DisplayOrder = 1003,
			IgnoreGuiInset = true,
			ResetOnSpawn = false,
			Parent = GUI.Parent,
		})
		ProtectGui(Toast.Gui)

		Toast.Holder = New("Frame", {
			AnchorPoint = Vector2.new(0.5, 1),
			BackgroundTransparency = 1,
			Parent = Toast.Gui,
		}, {
			New("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),
		})

		Creator.AddSignal(Toast.Gui:GetPropertyChangedSignal("AbsoluteSize"), function()
			Toast:Layout()
		end)

		Toast:Layout()
	end

	function Toast:Destroy()
		if Toast.Gui then
			Toast.Gui:Destroy()
			Toast.Gui = nil
			Toast.Holder = nil
		end
		table.clear(Toast.Active)
		table.clear(Toast.List)
	end

	function Toast:New(Config)
		if not Toast.Holder then
			return nil
		end
		if type(Config) == "string" then
			Config = { Text = Config }
		end
		Config = Config or {}

		local Text = tostring(Config.Text or Config.Content or "")
		local Key = Config.Id or Text
		local Existing = Toast.Active[Key]
		if Existing and not Existing.Closed then
			Existing:SetText(Text)
			Existing:Extend(Config.Duration)
			return Existing
		end

		Toast:Layout()
		while #Toast.List >= Toast.Limit do
			Toast.List[1]:Close()
		end

		Toast.Counter += 1

		local Style = Types[Config.Type]
		local IconId = Resolve(Config.Icon, "Notification", Config) or (Style and Asset(Style.Icon)) or nil
		local NewToast = {
			ClassType = "Notification",
			Closed = false,
			Token = 0,
			Duration = Config.Duration or math.clamp(#Text * 0.05, Toast.MinDuration, Toast.MaxDuration),
		}

		NewToast.Icon = New("ImageLabel", {
			Image = IconId or "",
			Size = UDim2.fromOffset(16, 16),
			BackgroundTransparency = 1,
			ImageColor3 = Style and Style.Color or nil,
			Visible = IconId ~= nil,
			LayoutOrder = 1,
			ThemeTag = if Style then nil else { ImageColor3 = "ToastText" },
		})

		NewToast.Label = Label({
			Text = Text,
			RichText = true,
			Tag = "ToastText",
			Weight = "Medium",
			TextSize = 13,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.XY,
			Size = UDim2.fromOffset(0, 16),
			LayoutOrder = 2,
		})
		New("UISizeConstraint", {
			MaxSize = Vector2.new(Toast.MaxText, math.huge),
			Parent = NewToast.Label,
		})

		local Action = Config.Action
		if Action then
			NewToast.Action = New("TextButton", {
				Text = "",
				AutoButtonColor = false,
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.fromOffset(0, 26),
				BackgroundTransparency = 0.88,
				LayoutOrder = 3,
				ThemeTag = {
					BackgroundColor3 = "ToastText",
				},
			}, {
				Corner(8),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 10),
				}),
				Label({
					Text = Action.Title or "Action",
					Tag = "ToastText",
					Weight = "SemiBold",
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Center,
					AutomaticSize = Enum.AutomaticSize.X,
					Size = UDim2.fromScale(0, 1),
				}),
			})
		end

		NewToast.Scale = New("UIScale", {
			Scale = 0.92,
		})

		NewToast.Body = New("CanvasGroup", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Size = UDim2.fromOffset(0, 0),
			GroupTransparency = 1,
			LayoutOrder = Toast.Counter,
			Parent = Toast.Holder,
			ThemeTag = {
				BackgroundColor3 = "ToastBackground",
			},
		}, {
			Corner(16),
			NewToast.Scale,
			New("UIPadding", {
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, Action and 8 or 14),
			}),
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			NewToast.Icon,
			NewToast.Label,
			NewToast.Action,
		})

		local _, SetTransparency = Creator.SpringMotor(1, NewToast.Body, "GroupTransparency", true)
		local _, SetScale = Creator.SpringMotor(0.92, NewToast.Scale, "Scale", true)

		function NewToast:SetText(Value)
			NewToast.Label.Text = tostring(Value or "")
		end

		function NewToast:Extend(Duration)
			NewToast.Token += 1
			local Token = NewToast.Token
			local Seconds = Duration or NewToast.Duration
			if Seconds > 0 then
				task.delay(Seconds, function()
					if NewToast.Token == Token then
						NewToast:Close()
					end
				end)
			end
		end

		function NewToast:Close()
			if NewToast.Closed then
				return
			end
			NewToast.Closed = true
			NewToast.Token += 1
			if Toast.Active[Key] == NewToast then
				Toast.Active[Key] = nil
			end
			local Position = table.find(Toast.List, NewToast)
			if Position then
				table.remove(Toast.List, Position)
			end
			SetTransparency(1)
			SetScale(0.92)
			task.delay(0.3, function()
				NewToast.Body:Destroy()
			end)
		end

		if NewToast.Action then
			Creator.AddGuarded(NewToast.Action, "MouseButton1Click", function()
				Library:SafeCallback(Action.Callback, NewToast)
				if Action.Close ~= false then
					NewToast:Close()
				end
			end)
		end

		Toast.Active[Key] = NewToast
		table.insert(Toast.List, NewToast)

		SetTransparency(0)
		SetScale(1)
		NewToast:Extend()

		return NewToast
	end

	return Toast
end)()

Components.Dialog = (function()
	local Dialog = {
		Window = nil,
	}

	function Dialog:Init(Window)
		Dialog.Window = Window
		Library.DialogHosts[Window.Root] = Window
		return Dialog
	end

	function Library:ResolveDialogHost(Anchor)
		local Current = Anchor
		while Current do
			local Host = Library.DialogHosts[Current]
			if Host then
				return Host
			end
			Current = Current.Parent
		end
		return nil
	end

	function Library:IsHostBlocked(Host): boolean
		local Stack = Host.DialogStack
		if not Stack then
			return false
		end
		for _, Entry in next, Stack do
			if Entry.Opened then
				return true
			end
		end
		return false
	end

	function Library:IsBlockedAt(Anchor): boolean
		if not Library.DialogOpen then
			return false
		end
		local Host = Anchor and Library:ResolveDialogHost(Anchor)
		if Host then
			return Library:IsHostBlocked(Host)
		end
		return true
	end

	function Library:CanOpenDialog(Host): boolean
		Host = Host or Dialog.Window
		if not Host then
			return true
		end
		local Stack = Host.DialogStack
		local Top = Stack and Stack[#Stack]
		return Top == nil or Top.AllowNested == true
	end

	function Library:GetActiveDialog(Host)
		Host = Host or Dialog.Window
		local Stack = Host and Host.DialogStack
		return Stack and Stack[#Stack]
	end

	function Dialog:ResolveHost(Options)
		Options = Options or {}
		local Host = Options.Host
		if type(Host) == "string" then
			Host = Library:GetPopUp(Host)
		end
		if Host == nil and typeof(Options.Anchor) == "Instance" then
			Host = Library:ResolveDialogHost(Options.Anchor)
		end
		return Host or Dialog.Window
	end

	local function SyncState()
		local Active = false
		for _, Host in next, Library.DialogHosts do
			if Library:IsHostBlocked(Host) then
				Active = true
				break
			end
		end
		if Library.DialogOpen ~= Active then
			Library.DialogOpen = Active
			Library:Emit("DialogStateChanged", Active)
		end
	end

	local function Unregister(Host, Entry)
		local Stack = Host.DialogStack
		local Index = Stack and table.find(Stack, Entry)
		if Index then
			table.remove(Stack, Index)
		end
		SyncState()
	end

	local DefaultTags = {
		Background = "Dialog",
		Border = "DialogBorder",
	}

	function Dialog:Create(Options)
		Options = Options or {}
		local Tags = DefaultTags
		if Options.Tags then
			Tags = {}
			for Key, Value in next, DefaultTags do
				Tags[Key] = Options.Tags[Key] or Value
			end
		end

		local Host = Dialog:ResolveHost(Options)
		local Stack = Host.DialogStack
		if not Stack then
			Stack = {}
			Host.DialogStack = Stack
		end

		local Top = Stack[#Stack]
		local Blocked = (Top ~= nil and Top.AllowNested ~= true) or not Host.Root.Visible

		local NewDialog = {
			ClassType = "Dialog",
			Buttons = 0,
			Count = 0,
			Host = Host,
			Ghost = Blocked,
			AllowNested = false,
			Opened = false,
			Closing = false,
			Fit = 1,
		}

		if Top ~= nil and Blocked and Top.Pulse then
			Top:Pulse()
		end

		NewDialog.TintFrame = New("TextButton", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 20,
			Parent = if Blocked then nil else Host.Root,
			ThemeTag = {
				BackgroundColor3 = "Overlay",
			},
		}, {
			Corner(Host.CornerRadius or 13),
		})

		Creator.RegisterSurface(NewDialog.TintFrame)

		local TintMotor, TintTransparency = Creator.SpringMotor(1, NewDialog.TintFrame, "BackgroundTransparency", true)

		local DoNotBlur = Options.DoNotBlur
		if DoNotBlur == nil then
			DoNotBlur = Host.DoNotBlur
		end

		if not Blocked and Library.BlurEnabled and DoNotBlur ~= true then
			NewDialog.Blur = Creator.New("UiBlur", {
				Parent = NewDialog.TintFrame,
				Blur = Options.BlurAmount or 6,
				Brightness = 0.9,
				Saturate = 1.1,
				Tint = Creator.GetThemeProperty("Overlay"),
				TintTransparency = 0.78,
				Opacity = 0,
			})
		end

		NewDialog.ButtonHolder = New("Frame", {
			Size = UDim2.new(1, -36, 0, 40),
			Position = UDim2.new(0, 18, 1, -58),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 10),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		})

		NewDialog.ButtonHolderFrame = NewDialog.ButtonHolder

		NewDialog.Title = Label({
			Text = "Dialog",
			TextSize = 16,
			Weight = "Bold",
			Size = UDim2.new(1, -40, 0, 20),
			Position = UDim2.fromOffset(20, 18),
		})

		NewDialog.Scale = New("UIScale", {
			Scale = 1,
		})

		local ScaleMotor, Scale = Creator.SpringMotor(1.06, NewDialog.Scale, "Scale")

		NewDialog.Root = New("CanvasGroup", {
			Size = UDim2.fromOffset(340, 170),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			GroupTransparency = 1,
			Parent = NewDialog.TintFrame,
			ThemeTag = {
				BackgroundColor3 = Tags.Background,
			},
		}, {
			Corner(24),
			New("UIStroke", {
				Transparency = 0.5,
				ThemeTag = {
					Color = Tags.Border,
				},
			}),
			NewDialog.Scale,
			NewDialog.Title,
			NewDialog.ButtonHolder,
		})

		local RootMotor, RootTransparency = Creator.SpringMotor(1, NewDialog.Root, "GroupTransparency")

		local function ComputeFit(): number
			if Host.Type ~= "PopUp" then
				return 1
			end
			local Area = Host.Root.AbsoluteSize
			local Size = NewDialog.Root.Size
			local Width = math.max(Size.X.Offset, 1)
			local Height = math.max(Size.Y.Offset, 1)
			return math.clamp(math.min((Area.X - 24) / Width, (Area.Y - 24) / Height, 1), 0.5, 1)
		end

		function NewDialog:Refit()
			if NewDialog.Ghost or NewDialog.Closing or not NewDialog.Opened then
				return
			end
			local Fit = ComputeFit()
			if Fit ~= NewDialog.Fit then
				NewDialog.Fit = Fit
				Scale(Fit)
			end
		end

		function NewDialog:Pulse()
			if NewDialog.Closing or NewDialog.Ghost then
				return
			end
			Scale(1.025 * NewDialog.Fit)
			task.delay(0.09, function()
				if not NewDialog.Closing then
					Scale(NewDialog.Fit)
				end
			end)
		end

		function NewDialog:Open()
			if NewDialog.Ghost or NewDialog.Closing or NewDialog.Opened then
				return
			end
			NewDialog.Opened = true
			NewDialog.Fit = ComputeFit()
			NewDialog.Scale.Scale = 1.06 * NewDialog.Fit
			Library:CaptureBlur(NewDialog.Blur, function(Source)
				NewDialog.BlurSource = Source
				if NewDialog.Closing then
					if Source then
						Library:ReleaseBlur(NewDialog.Blur, Source)
					end
					return
				end
				TintTransparency(Creator.GetThemeProperty("OverlayTransparency"))
				RootTransparency(0)
				Scale(NewDialog.Fit)
			end, {
				Region = Host.Root,
				Exclude = { [NewDialog.TintFrame] = true, [NewDialog.Root] = true },
			})
			SyncState()
		end

		function NewDialog:Close()
			if NewDialog.Closing then
				return
			end
			NewDialog.Closing = true
			if NewDialog.Ghost then
				return
			end
			Unregister(Host, NewDialog)
			TintTransparency(1)
			if NewDialog.Blur then
				Library:ReleaseBlur(NewDialog.Blur, NewDialog.BlurSource)
				NewDialog.BlurSource = nil
			end
			RootTransparency(1)
			Scale(1.06 * NewDialog.Fit)
			local Stroke = NewDialog.Root:FindFirstChildOfClass("UIStroke")
			if Stroke then
				Stroke:Destroy()
			end
			task.wait(0.15)
			NewDialog.TintFrame:Destroy()
		end

		function NewDialog:Button(Title, Callback, Variant, Keep)
			NewDialog.Buttons = NewDialog.Buttons + 1
			NewDialog.Count = NewDialog.Count + 1
			Title = Title or "Button"
			Callback = Callback or function() end

			local Button = Components.Button({
				Text = Title,
				Variant = Variant or (NewDialog.Count == 1 and "Primary" or "Tonal"),
				Height = 40,
				Size = UDim2.new(1, 0, 0, 40),
				Parent = NewDialog.ButtonHolder,
				LayoutOrder = NewDialog.Count,
				IgnoreDialog = true,
			})

			for _, Btn in next, NewDialog.ButtonHolder:GetChildren() do
				if Btn:IsA("TextButton") then
					Btn.Size = UDim2.new(1 / NewDialog.Buttons, -(((NewDialog.Buttons - 1) * 10) / NewDialog.Buttons), 0, 40)
				end
			end

			Creator.AddGuarded(Button.Frame, "MouseButton1Click", function()
				Library:SafeCallback(Callback, NewDialog)
				if not Keep then
					pcall(function()
						NewDialog:Close()
					end)
				end
			end)

			return Button
		end

		if Blocked then
			task.defer(function()
				NewDialog.TintFrame:Destroy()
			end)
		else
			table.insert(Stack, NewDialog)
			Library:ClosePopups()
			NewDialog.TintFrame.Destroying:Connect(function()
				Unregister(Host, NewDialog)
			end)
			task.delay(3, function()
				if not NewDialog.Opened and not NewDialog.Closing then
					NewDialog:Close()
				end
			end)
		end

		return NewDialog
	end

	return Dialog
end)()

Components.Menu = (function()
	local MenuModule = {
		Window = nil,
	}

	local Menu = {}
	Menu.__index = Menu

	function MenuModule:Init(Window)
		MenuModule.Window = Window
		return MenuModule
	end

	function Menu:NextOrder()
		self.Order = self.Order + 1
		return self.Order
	end

	function Menu:GetHolder()
		if not self.Implicit then
			self.Implicit = Components.Section("", self.Container, { LayoutOrder = self:NextOrder() })
			table.insert(self.Sections, self.Implicit)
		end
		return self.Implicit
	end

	function Menu:AddSection(Title)
		self.Implicit = nil
		local Holder = Components.Section(Title, self.Container, { LayoutOrder = self:NextOrder() })
		table.insert(self.Sections, Holder)

		local Section = {
			Type = "Section",
			Holder = Holder,
			Container = Holder.Container,
			ScrollFrame = self.Container,
			Tab = self,
			Library = Library,
		}

		function Section:SetTitle(Value)
			Holder:SetTitle(Value)
		end

		function Section:SetVisible(Value)
			Holder:SetVisible(Value)
		end

		function Section:Destroy()
			Holder:Destroy()
		end

		setmetatable(Section, Elements)
		return Section
	end

	function Menu:SetTitle(Value)
		self.Title.Text = Value or ""
	end

	function Menu:SetPlacement(Value)
		self.Placement = Value
		if self.IsOpen then
			self:Reposition()
		end
	end

	function Menu:SetAnchor(Anchor)
		self.AnchorObject = Anchor
		if self.IsOpen then
			self:Reposition()
		end
	end

	function Menu:IsOpened()
		return self.IsOpen
	end

	function Menu:Resize()
		local View = self.Scrim.AbsoluteSize
		local WindowHeight = self.Host.Root.AbsoluteSize.Y
		local Footer = #self.Buttons > 0 and 78 or 0
		local Limit = math.min(self.MaxHeight or math.max(WindowHeight - 60, 320), math.max(View.Y - 48, 200))
		local Content = self.Layout.AbsoluteContentSize.Y + 24
		local Body = math.max(math.min(Content, Limit - self.HeaderHeight - Footer), 80)
		self.Container.Size = UDim2.new(1, 0, 0, Body)
		self.Panel.Size = UDim2.fromOffset(self.Width, self.HeaderHeight + Body + Footer)
		if self.IsOpen then
			self:Reposition()
		end
	end

	function Menu:Reposition()
		local View = self.Scrim.AbsoluteSize
		local Width = self.Panel.Size.X.Offset
		local Height = self.Panel.Size.Y.Offset
		local Gap = 8
		local Anchor = self.AnchorObject
		local Placement = self.Placement
		local X = (View.X - Width) / 2
		local Y = (View.Y - Height) / 2

		if Anchor and Anchor.Parent and Placement ~= "Center" then
			local AnchorGui = Anchor:FindFirstAncestorOfClass("ScreenGui")
			local ScrimGui = self.Scrim:FindFirstAncestorOfClass("ScreenGui")
			local Inset = GuiService:GetGuiInset()
			local Shift = (AnchorGui and not AnchorGui.IgnoreGuiInset) and Inset or Vector2.zero
			local ScrimShift = (ScrimGui and not ScrimGui.IgnoreGuiInset) and Inset or Vector2.zero
			local Origin = Anchor.AbsolutePosition + Shift - (self.Scrim.AbsolutePosition + ScrimShift)
			local Size = Anchor.AbsoluteSize
			local Below = Origin.Y + Size.Y + Gap
			local Above = Origin.Y - Height - Gap

			if Placement == "BottomLeft" or Placement == "BottomRight" then
				X = Placement == "BottomLeft" and Origin.X or (Origin.X + Size.X - Width)
				Y = Below
				if Y + Height > View.Y - 8 and Above >= 8 then
					Y = Above
				end
			elseif Placement == "TopLeft" or Placement == "TopRight" then
				X = Placement == "TopLeft" and Origin.X or (Origin.X + Size.X - Width)
				Y = Above
				if Y < 8 and Below + Height <= View.Y - 8 then
					Y = Below
				end
			elseif Placement == "RightTop" then
				X = Origin.X + Size.X + Gap
				Y = Origin.Y
				if X + Width > View.X - 8 then
					X = Origin.X - Width - Gap
				end
			elseif Placement == "LeftTop" then
				X = Origin.X - Width - Gap
				Y = Origin.Y
				if X < 8 then
					X = Origin.X + Size.X + Gap
				end
			end
		end

		X = math.clamp(X, 8, math.max(View.X - Width - 8, 8))
		Y = math.clamp(Y, 8, math.max(View.Y - Height - 8, 8))
		self.Panel.AnchorPoint = Vector2.new(0.5, 0.5)
		self.Panel.Position = UDim2.fromOffset(math.floor(X + Width / 2), math.floor(Y + Height / 2))
	end

	function MenuModule:Create(Config)
		Config = Config or {}

		if getmetatable(Menu) == nil then
			setmetatable(Menu, Elements)
		end

		local Host = Components.Dialog:ResolveHost(Config)
		local HasTitle = Config.Title ~= nil and Config.Title ~= ""
		local DefaultWidth = math.clamp(Host.Root.AbsoluteSize.X - 80, 340, 520)

		local self = setmetatable({
			Type = "Menu",
			ClassType = "Dialog",
			Host = Host,
			Library = Library,
			Order = 0,
			Sections = {},
			Buttons = {},
			IsOpen = false,
			Dim = Config.Dim ~= false,
			Width = Config.Width or DefaultWidth,
			MaxHeight = Config.MaxHeight,
			Placement = Config.Placement or "Center",
			HeaderHeight = HasTitle and 60 or 18,
			AnchorObject = Config.Anchor,
			OnOpen = Config.OnOpen,
			OnClose = Config.OnClose,
		}, Menu)

		self.Scrim = New("TextButton", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Visible = false,
			ZIndex = 30,
			Parent = Host.Root,
			ThemeTag = {
				BackgroundColor3 = "Overlay",
			},
		}, {
			Corner(Host.CornerRadius or 13),
		})

		Creator.RegisterSurface(self.Scrim)

		local TintMotor, Tint = Creator.SpringMotor(1, self.Scrim, "BackgroundTransparency", true)

		local DoNotBlur = Config.DoNotBlur
		if DoNotBlur == nil then
			DoNotBlur = Host.DoNotBlur
		end

		if Config.Blur ~= false and DoNotBlur ~= true and Library.BlurEnabled then
			self.Blur = Creator.New("UiBlur", {
				Parent = self.Scrim,
				Blur = Config.BlurAmount or 6,
				Brightness = 0.9,
				Saturate = 1.1,
				Tint = Creator.GetThemeProperty("Overlay"),
				TintTransparency = 0.78,
				Opacity = 0,
			})
		end

		self.Title = Label({
			Text = Config.Title or "",
			TextSize = 16,
			Weight = "Bold",
			TextTruncate = Enum.TextTruncate.AtEnd,
			Size = UDim2.new(1, -80, 0, 22),
			Position = UDim2.fromOffset(24, 20),
			Visible = HasTitle,
		})

		self.CloseButton = Components.IconButton({
			Icon = "x",
			Size = "Sm",
		})
		self.CloseButton.Frame.AnchorPoint = Vector2.new(1, 0)
		self.CloseButton.Frame.Position = UDim2.new(1, -18, 0, 18)
		self.CloseButton.Frame.Visible = HasTitle and Config.Closable ~= false

		self.Layout = New("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 14),
		})

		self.Container = New("ScrollingFrame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.fromOffset(0, self.HeaderHeight),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = 0,
			CanvasSize = UDim2.fromOffset(0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ElasticBehavior = Enum.ElasticBehavior.Never,
		}, {
			self.Layout,
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 20),
				PaddingRight = UDim.new(0, 20),
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 20),
			}),
		})
		self.ScrollFrame = self.Container

		self.Scale = New("UIScale", {
			Scale = 1.06,
		})

		self.Panel = New("CanvasGroup", {
			Size = UDim2.fromOffset(self.Width, 120),
			GroupTransparency = 1,
			Active = true,
			ZIndex = 31,
			Parent = self.Scrim,
			ThemeTag = {
				BackgroundColor3 = "DropdownHolder",
			},
		}, {
			Corner(24),
			Stroke("DropdownBorder", 0.5),
			self.Scale,
			self.Title,
			self.CloseButton.Frame,
			self.Container,
		})

		local PanelMotor, Fade = Creator.SpringMotor(1, self.Panel, "GroupTransparency")
		local ScaleMotor, Zoom = Creator.SpringMotor(1.06, self.Scale, "Scale")

		function self:SetHost(NewHost)
			if self.IsOpen or NewHost == self.Host then
				return
			end
			self.Host = NewHost
			self.Scrim.Parent = NewHost.Root
			local Rounding = self.Scrim:FindFirstChildOfClass("UICorner")
			if Rounding then
				Rounding.CornerRadius = UDim.new(0, NewHost.CornerRadius or 13)
			end
		end

		function self:Open(Anchor, Placement)
			if Anchor then
				self.AnchorObject = Anchor
				if not self.IsOpen then
					local Resolved = Library:ResolveDialogHost(Anchor)
					if Resolved then
						self:SetHost(Resolved)
					end
				end
			end
			if Placement then
				self.Placement = Placement
			end
			if self.IsOpen then
				self:Reposition()
				return self
			end
			if not self.Host.Root.Visible or not Library:CanOpenDialog(self.Host) then
				return self
			end
			self.IsOpen = true
			Library:CaptureBlur(self.Blur, function(Source)
				if not self.IsOpen then
					if Source then
						Library:ReleaseBlur(self.Blur, Source, true)
					end
					return
				end
				self.BlurSource = Source
				self.Scrim.Visible = true
				self:Resize()
				self:Reposition()
				if self.Dim then
					Tint(Creator.GetThemeProperty("OverlayTransparency"))
				end
				self.Scale.Scale = 1.06
				Fade(0)
				Zoom(1)
				task.defer(function()
					if self.IsOpen then
						self:Resize()
					end
				end)
			end, {
				Region = self.Host.Root,
				Exclude = { [self.Scrim] = true },
			})
			if self.OnOpen then
				Library:SafeCallback(self.OnOpen, self)
			end
			return self
		end

		function self:Close()
			if not self.IsOpen then
				return self
			end
			self.IsOpen = false
			Tint(1)
			if self.Blur then
				Library:ReleaseBlur(self.Blur, self.BlurSource, true)
				self.BlurSource = nil
			end
			Fade(1)
			Zoom(1.06)
			if self.OnClose then
				Library:SafeCallback(self.OnClose, self)
			end
			task.delay(0.18, function()
				if not self.IsOpen and self.Scrim.Parent then
					self.Scrim.Visible = false
				end
			end)
			return self
		end

		function self:Toggle(Anchor, Placement)
			if self.IsOpen then
				return self:Close()
			end
			return self:Open(Anchor, Placement)
		end

		function self:Button(Title, Callback, Variant, CloseAfter)
			if not self.Footer then
				self.Footer = New("Frame", {
					Size = UDim2.new(1, -40, 0, 40),
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, 20, 1, -18),
					BackgroundTransparency = 1,
					Parent = self.Panel,
				}, {
					New("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 8),
					}),
				})
			end

			local Button = Components.Button({
				Text = Title or "Button",
				Variant = Variant or "Tonal",
				Height = 40,
				Size = UDim2.new(1, 0, 0, 40),
				Parent = self.Footer,
				LayoutOrder = #self.Buttons + 1,
				IgnoreDialog = true,
			})
			table.insert(self.Buttons, Button)

			local Count = #self.Buttons
			for _, Item in next, self.Buttons do
				Item.Frame.Size = UDim2.new(1 / Count, -(((Count - 1) * 8) / Count), 0, 40)
			end

			Creator.AddGuarded(Button.Frame, "MouseButton1Click", function()
				Library:SafeCallback(Callback)
				if CloseAfter then
					self:Close()
				end
			end)

			self:Resize()
			return Button
		end

		function self:Destroy()
			self.IsOpen = false
			for _, Holder in next, self.Sections do
				Holder:Destroy()
			end
			table.clear(self.Sections)
			self.Scrim:Destroy()
			if self.BlurSource then
				self.BlurSource:Destroy()
				self.BlurSource = nil
			end
		end

		Creator.AddSignal(self.Layout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			self:Resize()
		end)

		Creator.AddGuarded(self.Scrim, "MouseButton1Click", function()
			if Config.CloseOnOutside ~= false then
				self:Close()
			end
		end)

		Creator.AddGuarded(self.CloseButton.Frame, "MouseButton1Click", function()
			self:Close()
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if self.IsOpen and Input.KeyCode == Enum.KeyCode.Escape then
				self:Close()
			end
		end)

		return self
	end

	return MenuModule
end)()

Components.Tab = (function()
	local Spring = Flipper.Spring.new

	local TabModule = {
		Window = nil,
		Tabs = {},
		Containers = {},
		SelectedTab = 0,
		TabCount = 0,
	}

	function TabModule:Init(Window)
		TabModule.Window = Window
		return TabModule
	end

	function TabModule.Options(From, Into)
		Into = Into or {}

		for _, Key in { "Raw", "Scroll", "ShowTitle", "Order", "Id" } do
			if From[Key] ~= nil then
				Into[Key] = From[Key]
			end
		end

		return Into
	end

	function TabModule:New(Title, Icon, Config)
		Config = Config or {}
		local Window = TabModule.Window

		TabModule.TabCount = TabModule.TabCount + 1
		local TabIndex = TabModule.TabCount

		local Kind = Config.Kind or "Root"
		local Raw = Config.Raw == true
		local Scroll = not Raw and Config.Scroll ~= false
		local ShowTitle = not Raw and Config.ShowTitle ~= false
		local NavOrder = Config.Order or TabIndex

		local Tab = {
			Selected = false,
			NavSelected = false,
			Name = Title,
			Type = "Tab",
			ClassType = "Layout",
			Kind = Kind,
			Id = Config.Id,
			Raw = Raw,
			Index = TabIndex,
			InHeader = Kind == "Header",
			Header = Config.Header,
			Order = 0,
			Subs = {},
			SidebarItems = {},
		}

		local Image = Resolve(Icon, "Tab", Config)
		local Palette = Library.IconPalette
		local IconColor = Config.IconColor or Palette[(TabIndex - 1) % #Palette + 1]
		Tab.IconColor = IconColor

		if Kind == "Header" then
			Tab.SidebarTitle = Config.SidebarTitle or Title
			Tab.SidebarCollapsed = Config.SidebarCollapsed and true or false

			Tab.Group = New("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 10 + TabIndex,
				Visible = false,
				Parent = Window.TabList,
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 1),
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
			})

			Tab.Icon = New("ImageLabel", {
				Image = Image or "",
				Size = UDim2.fromOffset(16, 16),
				LayoutOrder = 1,
				Visible = Image ~= nil,
			})
			Creator.TagIcon(Tab.Icon, "SubText", IconColor)

			Tab.Label = Label({
				Text = Title,
				TextSize = 12,
				Weight = "Medium",
				Tag = "SubText",
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.new(0, 0, 1, 0),
				Position = UDim2.fromOffset(Image and 5 or 0, 0),
			})

			Tab.LabelClip = New("Frame", {
				Size = UDim2.new(0, Image and 0 or 40, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
			}, {
				Tab.Label,
			})

			Tab.Frame = New("TextButton", {
				Size = UDim2.fromOffset(0, 28),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				LayoutOrder = NavOrder,
				Parent = Window.TitleBar.TabList,
			}, {
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
				}),
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Tab.Icon,
				Tab.LabelClip,
			})

			Tab.Hovering = false

			function Tab:UpdateLabel()
				if not Image then
					Tab.LabelClip.Size = UDim2.new(0, Tab.Label.TextBounds.X + 2, 1, 0)
					return
				end
				if Tab.Vertical then
					Tab.LabelClip.Size = UDim2.new(0, 0, 1, 0)
					return
				end
				local Mode = Window.ShowTabLabels
				local Show = Tab.Hovering or Mode == "Always" or (Mode == "Selected" and Tab.NavSelected)
				local Width = Show and (Tab.Label.TextBounds.X + 7) or 0
				Creator.Tween(Tab.LabelClip, 0.18, { Size = UDim2.new(0, Width, 1, 0) })
			end

			Creator.TagText(Tab.Label, "SubText", IconColor)

			function Tab:ApplyState()
				local Entry = Creator.Icons[Tab.Icon]
				local TextEntry = Creator.Texts[Tab.Label]
				Entry.Color = IconColor
				TextEntry.Color = IconColor
				if Tab.NavSelected then
					Entry.Key = "Accent"
					TextEntry.Key = "Accent"
					TextEntry.Dim = false
				else
					Entry.Key = "SubText"
					TextEntry.Key = Tab.Hovering and "TextSecondary" or "SubText"
					TextEntry.Dim = true
				end
				Creator.ApplyIcon(Tab.Icon)
				Creator.ApplyText(Tab.Label)
			end

			function Tab:SetNavSelected(Value)
				Tab.NavSelected = Value
				Tab:ApplyState()
				Tab:UpdateLabel()
			end

			function Tab:SetOrientation(Vertical)
				Tab.Vertical = Vertical
				local Layout = Tab.Frame:FindFirstChildOfClass("UIListLayout")
				Layout.HorizontalAlignment = Vertical and Enum.HorizontalAlignment.Center or Enum.HorizontalAlignment.Left
				Tab.Frame.AutomaticSize = Vertical and Enum.AutomaticSize.None or Enum.AutomaticSize.X
				Tab.Frame.Size = Vertical and UDim2.fromOffset(40, 40) or UDim2.fromOffset(0, 28)
				local IconSize = Vertical and 20 or 16
				Tab.Icon.Size = UDim2.fromOffset(IconSize, IconSize)
				if not Image then
					Tab.Label.Text = Vertical and string.sub(Tab.Name, 1, 2) or Tab.Name
				end
				Tab:UpdateLabel()
			end

			Creator.OnHoverEnter(Tab.Frame, function()
				if Library.InputLocked then
					return
				end
				Tab.Hovering = true
				Tab:ApplyState()
				Tab:UpdateLabel()
				if Tab.Vertical then
					Window:ShowNavTip(Tab)
				end
			end)
			Creator.OnHoverLeave(Tab.Frame, function()
				Tab.Hovering = false
				Tab:ApplyState()
				Tab:UpdateLabel()
				if Tab.Vertical then
					Window:HideNavTip()
				end
			end)
			Creator.AddSignal(Tab.Label:GetPropertyChangedSignal("TextBounds"), function()
				Tab:UpdateLabel()
			end)
			Creator.AddGuarded(Tab.Frame, "MouseButton1Click", function()
				TabModule:SelectTab(TabIndex)
			end)
		else
			local Parent = Kind == "Sub" and Config.Header.Group or Window.RootList

			Tab.Icon = New("ImageLabel", {
				Image = Image or "",
				Size = UDim2.fromOffset(14, 14),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, 21, 0.5, 0),
				Visible = Image ~= nil,
			})
			Creator.TagIcon(Tab.Icon, "Text", IconColor)

			Tab.Label = Label({
				Text = Title,
				TextSize = 13,
				Weight = "Medium",
				Position = UDim2.fromOffset(Image and 40 or 14, 0),
				Size = UDim2.new(1, -(Image and 48 or 22), 1, 0),
				TextTruncate = Enum.TextTruncate.AtEnd,
			})

			Creator.TagText(Tab.Label, "Text", IconColor)
			Creator.Marquee(Tab.Label)

			Tab.Frame = New("TextButton", {
				Size = UDim2.new(1, 0, 0, 38),
				BackgroundTransparency = 1,
				LayoutOrder = NavOrder,
				Parent = Parent,
			}, {
				Tab.Icon,
				Tab.Label,
			})

			function Tab:SetCollapsed(Value)
				local Center = (Window.CollapsedWidth - 24) / 2
				Tab.Frame.Size = UDim2.new(1, 0, 0, 38)
				if Image then
					Tab.Label.Visible = not Value
					Tab.Icon.Position = Value and UDim2.new(0, Center, 0.5, 0) or UDim2.new(0, 21, 0.5, 0)
				else
					Tab.Label.Position = Value and UDim2.fromOffset(Center - 19, 0) or UDim2.fromOffset(14, 0)
					Tab.Label.TextXAlignment = Value and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
					Tab.Label.Size = Value and UDim2.new(0, 38, 1, 0) or UDim2.new(1, -22, 1, 0)
					Tab.Label.Text = Value and string.sub(Tab.Name, 1, 2) or Tab.Name
				end
			end

			function Tab:ApplyState() end

			function Tab:UpdateLabel() end

			Creator.AddGuarded(Tab.Frame, "MouseButton1Click", function()
				TabModule:SelectTab(TabIndex)
			end)

			if Window.SidebarCollapsed then
				Tab:SetCollapsed(true)
			end

			if Kind == "Sub" then
				table.insert(Config.Header.Subs, Tab)
			end
		end

		local ContainerLayout = nil
		local PageChildren = {}

		Tab.TitleLabel = Label({
			Text = Title,
			TextSize = 22,
			Weight = "Bold",
			Size = UDim2.new(1, 0, 0, 26),
			LayoutOrder = 0,
			Visible = ShowTitle,
		})

		Creator.TagText(Tab.TitleLabel, "Text", IconColor)

		if not Raw then
			ContainerLayout = New("UIListLayout", {
				Padding = UDim.new(0, 16),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			table.insert(PageChildren, ContainerLayout)
			table.insert(PageChildren, New("UIPadding", {
				PaddingRight = UDim.new(0, 22),
				PaddingLeft = UDim.new(0, 22),
				PaddingTop = UDim.new(0, 20),
				PaddingBottom = UDim.new(0, 32),
			}))
			table.insert(PageChildren, Tab.TitleLabel)
		end

		local PageProperties = {
			Name = Title,
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Parent = Window.PageHolder,
			Visible = false,
		}

		if Scroll then
			PageProperties.BottomImage = Components.Assets.ScrollBottom
			PageProperties.MidImage = Components.Assets.ScrollMid
			PageProperties.TopImage = Components.Assets.ScrollTop
			PageProperties.BorderSizePixel = 0
			PageProperties.ScrollBarThickness = 4
			PageProperties.ScrollBarImageTransparency = 0.72
			PageProperties.CanvasSize = UDim2.fromScale(0, 0)
			PageProperties.ScrollingDirection = Enum.ScrollingDirection.Y
			PageProperties.ThemeTag = {
				ScrollBarImageColor3 = "Text",
			}
		else
			PageProperties.ClipsDescendants = true
		end

		Tab.ContainerFrame = New(Scroll and "ScrollingFrame" or "Frame", PageProperties, PageChildren)

		if Scroll then
			Creator.AddSignal(Tab.ContainerFrame:GetPropertyChangedSignal("CanvasPosition"), function()
				if Window.UpdateScrollShade then
					Window:UpdateScrollShade()
				end
			end)
		end

		if Scroll and ContainerLayout then
			Creator.AddSignal(ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				Tab.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y + 52)
			end)
		end

		Tab.Page = Tab.ContainerFrame

		TabModule.Containers[TabIndex] = Tab.ContainerFrame
		TabModule.Tabs[TabIndex] = Tab

		Tab.Container = Tab.ContainerFrame
		Tab.ScrollFrame = Tab.Container
		Tab.Library = Library

		function Tab:NextOrder()
			Tab.Order = Tab.Order + 1
			return Tab.Order
		end

		function Tab:GetHolder()
			if not Tab.Implicit then
				Tab.Implicit = Components.Section("", Tab.Container, { LayoutOrder = Tab:NextOrder(), IconColor = Tab.IconColor })
			end
			return Tab.Implicit
		end

		function Tab:AddSection(SectionTitle, SectionConfig)
			if type(SectionTitle) == "table" then
				SectionConfig = SectionTitle
				SectionTitle = SectionConfig.Title
			end
			SectionConfig = SectionConfig or {}
			Tab.Implicit = nil
			local Holder = Components.Section(SectionTitle, Tab.Container, {
				LayoutOrder = Tab:NextOrder(),
				IconColor = SectionConfig.IconColor or Tab.IconColor,
				Icon = SectionConfig.Icon,
				IconSize = SectionConfig.IconSize,
				Accordion = SectionConfig.Accordion,
				Collapsed = SectionConfig.Collapsed,
				Callback = SectionConfig.Callback,
				Id = SectionConfig.Id or `Section:{Tab.Name}:{SectionTitle or Tab.Order}`,
			})
			if SectionConfig.Locked then
				Holder:SetLocked(true, SectionConfig.LockedReason)
			end
			local Section = Components.SectionApi(Holder, Tab, Tab.Container)
			Library.Events.SectionAdded:Fire(Section, Tab)
			return Section
		end

		if Kind == "Header" then
			function Tab:AddTab(SubConfig)
				local Sub = TabModule:New(SubConfig.Title, SubConfig.Icon, TabModule.Options(SubConfig, {
					Kind = "Sub",
					Header = Tab,
					IconColor = SubConfig.IconColor,
				}))
				Window:UpdateSelection(true)
				return Sub
			end

			function Tab:SetSidebarTitle(Value)
				Tab.SidebarTitle = Value
				if Window.CurrentHeader == Tab then
					Window.SidebarTitle.Text = Value
				end
			end

			function Tab:SetSidebarCollapsed(Value)
				Tab.SidebarCollapsed = Value and true or false
				if Window.CurrentHeader == Tab then
					Window:ApplyCollapsed(Tab.SidebarCollapsed)
				end
			end

			function Tab:AddSidebarItem(ItemConfig)
				ItemConfig = ItemConfig or {}

				local Item = {
					Collapsed = Window.SidebarCollapsed and true or false,
					Callback = ItemConfig.OnCollapsed,
				}

				Item.Frame = New("Frame", {
					Size = UDim2.new(1, 0, 0, ItemConfig.Height or 38),
					AutomaticSize = if ItemConfig.AutoSize then Enum.AutomaticSize.Y else Enum.AutomaticSize.None,
					BackgroundTransparency = 1,
					LayoutOrder = ItemConfig.Order or 1000,
					Parent = Tab.Group,
				})

				function Item:SetCollapsed(Value)
					Item.Collapsed = Value and true or false

					if Item.Callback then
						Library:SafeCallback(Item.Callback, Item.Collapsed, Item)
					end
				end

				function Item:Destroy()
					local Index = table.find(Tab.SidebarItems, Item)

					if Index then
						table.remove(Tab.SidebarItems, Index)
					end

					Item.Frame:Destroy()
				end

				table.insert(Tab.SidebarItems, Item)

				if Item.Collapsed then
					Item:SetCollapsed(true)
				end

				return Item
			end
		end

		function Tab:SetSearchHandler(Handler)
			Tab.SearchHandler = Handler
			Window:ApplySearchHandler()
		end

		function Tab:SetTitle(Value)
			Tab.Name = Value
			Tab.TitleLabel.Text = Value
			Tab.Label.Text = Value
		end

		function Tab:SetVisible(Value)
			Tab.Frame.Visible = Value and true or false
		end

		function Tab:GetVisible()
			return Tab.Frame.Visible
		end

		function Tab:SetOrder(Value)
			Tab.Frame.LayoutOrder = tonumber(Value) or TabIndex
		end

		function Tab:Destroy()
			if Tab.Destroyed then
				return
			end
			Tab.Destroyed = true
			Tab.Destroying = true

			local WasSelected = TabModule.SelectedTab == TabIndex
				or (Kind == "Header" and Window.CurrentHeader == Tab)

			local Closing = Library.Unloaded

			if Closing or (Kind == "Sub" and Config.Header.Destroying) then
				WasSelected = false
			end

			if Kind == "Header" then
				for Position = #Tab.Subs, 1, -1 do
					Tab.Subs[Position]:Destroy()
				end
				Tab.Group:Destroy()
			elseif Kind == "Sub" then
				local Position = table.find(Config.Header.Subs, Tab)
				if Position then
					table.remove(Config.Header.Subs, Position)
				end
				if Config.Header.LastSub == Tab then
					Config.Header.LastSub = nil
				end
			end

			for Row in next, Library.SearchRows do
				if Row.Tab == Tab then
					Row:Destroy()
				end
			end

			if TabModule.LastRoot == TabIndex then
				TabModule.LastRoot = nil
			end

			TabModule.Tabs[TabIndex] = nil
			TabModule.Containers[TabIndex] = nil
			Tab.Frame:Destroy()
			Tab.ContainerFrame:Destroy()

			if Window.CurrentContent == Tab then
				Window.CurrentContent = nil
			end
			if Window.CurrentHeader == Tab then
				Window.CurrentHeader = nil
			end

			if WasSelected then
				local Fallback = nil
				for Position = 1, TabModule.TabCount do
					local Candidate = TabModule.Tabs[Position]
					if Candidate and Candidate.Kind == "Root" then
						Fallback = Candidate
						break
					end
					Fallback = Fallback or Candidate
				end
				if Fallback then
					TabModule:SelectTab(Fallback)
				else
					TabModule.SelectedTab = 0
					Window:ShowGroup(nil)
				end
			end

			if not Closing then
				Window:UpdateSelection(true)
				Library.Events.TabRemoved:Fire(Tab)
			end
		end

		function Tab:Select()
			TabModule:SelectTab(TabIndex)
		end

		function Tab:SetSelected(Value)
			Tab.Selected = Value
		end

		if Kind == "Header" then
			Tab:ApplyState()
			if Window.NavVertical then
				Tab:SetOrientation(true)
			end
		end

		setmetatable(Tab, Elements)
		Library.Events.TabAdded:Fire(Tab)
		return Tab
	end

	function TabModule:SelectTab(Tab)
		local Window = TabModule.Window

		if type(Tab) == "table" then
			Tab = Tab.Index
		end
		local Target = TabModule.Tabs[Tab]
		if not Target then
			return
		end

		if
			not Window.Searching
			and Target.Kind == "Sub"
			and #Target.Header.Subs > 0
			and Window.CurrentHeader == Target.Header
			and TabModule.SelectedTab == Target.Index
		then
			local Root = TabModule.Tabs[TabModule.LastRoot or 0]
			if not Root or Root.Kind ~= "Root" then
				Root = nil
				for Position = 1, TabModule.TabCount do
					local Candidate = TabModule.Tabs[Position]
					if Candidate and Candidate.Kind == "Root" then
						Root = Candidate
						break
					end
				end
			end
			if not Root then
				return
			end
			Target = Root
		end

		if Window.Searching then
			Window.SearchBox.Input.Text = ""
		end

		local Content = Target
		local Header = nil

		if Target.Kind == "Header" then
			Header = Target
			if #Target.Subs > 0 then
				Content = Target.LastSub or Target.Subs[1]
			end
		elseif Target.Kind == "Sub" then
			Header = Target.Header
			Header.LastSub = Target
		else
			TabModule.LastRoot = Target.Index
		end

		local PreviousIndex = TabModule.SelectedTab
		TabModule.SelectedTab = Content.Index
		Library:ClosePopups()

		for _, TabObject in next, TabModule.Tabs do
			if TabObject.Selected and TabObject ~= Content then
				TabObject:SetSelected(false)
			end
			if TabObject.Kind == "Header" then
				local Want = TabObject == Header
				if (TabObject.NavSelected and true or false) ~= Want then
					TabObject:SetNavSelected(Want)
				end
			end
		end
		Content:SetSelected(true)

		Window.CurrentContent = Content
		Library.Events.TabSelected:Fire(Content, Header)
		Window:ShowGroup(Header)
		Window:UpdateSelection(false)
		if TabModule.SelectionTimer then
			task.cancel(TabModule.SelectionTimer)
		end
		TabModule.SelectionTimer = task.delay(0.05, function()
			TabModule.SelectionTimer = nil
			Window:UpdateSelection(true)
		end)

		local Index = Content.Index
		if PreviousIndex == Index and TabModule.SwitchTween then
			return
		end
		local Token = (TabModule.SwitchToken or 0) + 1
		TabModule.SwitchToken = Token

		if TabModule.SwitchTween then
			TabModule.SwitchTween:Cancel()
			TabModule.SwitchTween = nil
		end
		if TabModule.SwitchTarget then
			TabModule.SwitchTarget.Position = UDim2.fromOffset(0, 0)
			TabModule.SwitchTarget = nil
		end
		if TabModule.SwitchTimer then
			pcall(task.cancel, TabModule.SwitchTimer)
			TabModule.SwitchTimer = nil
		end

		local Shown = TabModule.Containers[Index]
		for _, Container in next, TabModule.Containers do
			if Container ~= Shown and Container.Visible then
				Container.Visible = false
			end
		end
		if Shown and not Window.Searching and not Shown.Visible then
			Shown.Visible = true
		end
		Window:UpdateScrollShade()

		local function Restore()
			TabModule.SwitchTween = nil
			TabModule.SwitchTimer = nil
			if TabModule.SwitchTarget then
				TabModule.SwitchTarget.Position = UDim2.fromOffset(0, 0)
				TabModule.SwitchTarget = nil
			end
		end

		local Animate = Shown ~= nil
			and PreviousIndex ~= nil
			and PreviousIndex ~= Index
			and not Window.Searching
			and not Library.Config.ReducedMotion
			and Library.Config.PageTransition

		if not Animate then
			Restore()
			return
		end

		local Background = Library.Background
		if Background and Background.Hold then
			Background:Hold(0.25)
		end

		TabModule.SwitchTarget = Shown
		Shown.Position = UDim2.fromOffset(0, 18)

		local Tween = Creator.Tween(Shown, 0.28, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Quint)
		TabModule.SwitchTween = Tween

		Tween.Completed:Once(function(State)
			if State == Enum.PlaybackState.Completed and TabModule.SwitchToken == Token then
				if TabModule.SwitchTimer then
					pcall(task.cancel, TabModule.SwitchTimer)
				end
				Restore()
			end
		end)

		TabModule.SwitchTimer = task.delay(0.4, function()
			if TabModule.SwitchToken == Token then
				Restore()
			end
		end)
	end

	return TabModule
end)()

Components.Window = (function()
	local Spring = Flipper.Spring.new
	local Instant = Flipper.Instant.new
	local Assets = Components.Assets

	local NavPositions = { Top = "Top", Bottom = "Bottom", Left = "Left", Right = "Right" }

	local function NormalizePosition(Value)
		local Key = string.lower(tostring(Value or "Top"))
		Key = string.upper(string.sub(Key, 1, 1)) .. string.sub(Key, 2)
		return NavPositions[Key] or "Top"
	end

	return function(Config)
		local function GetViewport()
			local Parent = Config.Parent
			if Parent and Parent.AbsoluteSize.X > 0 and Parent.AbsoluteSize.Y > 0 then
				return Parent.AbsoluteSize
			end

			local CurrentCamera = Workspace.CurrentCamera
			local View = CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
			local Ok, TopLeft, BottomRight = pcall(function()
				return GuiService:GetGuiInset()
			end)
			if Ok and TopLeft and BottomRight then
				View = View - TopLeft - BottomRight
			end

			return Vector2.new(math.max(View.X, 1), math.max(View.Y, 1))
		end

		local function Fit(Size, Pos)
			local View = GetViewport()
			local Width = math.min(Size.X, View.X)
			local Height = math.min(Size.Y, View.Y)
			local MinX = 80 - Width
			local X = math.clamp(Pos.X, MinX, math.max(View.X - 80, MinX))
			local Y = math.clamp(Pos.Y, 0, math.max(View.Y - 44, 0))
			return Vector2.new(Width, Height), Vector2.new(X, Y)
		end

		local InitialView = GetViewport()
		local InitialSize = Vector2.new(
			math.min(Config.Size.X.Offset, InitialView.X),
			math.min(Config.Size.Y.Offset, InitialView.Y)
		)
		local InitialPos = (InitialView - InitialSize) / 2

		local Window = {
			Minimized = false,
			Maximized = false,
			Size = UDim2.fromOffset(InitialSize.X, InitialSize.Y),
			Position = UDim2.fromOffset(InitialPos.X, InitialPos.Y),
			TabWidth = Config.TabWidth or 210,
			DoNotBlur = Config.DoNotBlur,
			CollapsedWidth = 70,
			SidebarCollapsed = false,
			ActionCount = 0,
			RootSidebarTitle = Config.SidebarTitle or Config.Title or "",
			ShowTabLabels = Config.ShowTabLabels or "Hover",
			LayoutMode = Config.Layout or Library.Layout,
			NavPosition = "Top",
			NavVertical = false,
			CornerRadius = 13,
			Opacity = 1,
			Searching = false,
			MovedRows = {},
			SearchSections = {},
			IsResizing = false,
			IsDragging = false,
			IsAnimating = false,
			IsMaximized = false,
			IsOriginSize = true,
			OriginSize = InitialSize,
			OriginPosition = InitialPos,
			MinSize = Vector2.new(560, 400),
			MaxSize = nil,
		}

		local Dragging, DragInput, MousePos, StartPos = false
		local Resizing = false
		local MinimizeNotif = false

		Window.RootList = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 1),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
		})

		Window.TabList = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ZIndex = 2,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 0),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Window.RootList,
		})

		Window.Pill = New("Frame", {
			Size = UDim2.new(1, 0, 0, 38),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
			BackgroundTransparency = 1,
			ZIndex = 1,
			ThemeTag = {
				BackgroundColor3 = "Tab",
			},
		}, {
			Corner(10),
		})

		Window.TabScroll = New("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -88),
			Position = UDim2.fromOffset(0, 88),
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
		}, {
			Window.Pill,
			Window.TabList,
		})

		Window.SidebarTitle = Label({
			Text = Config.SidebarTitle or Config.Title or "",
			TextSize = 22,
			Weight = "Bold",
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -48, 0, 28),
			TextTruncate = Enum.TextTruncate.AtEnd,
		})

		Window.ToggleIcon = New("ImageLabel", {
			Image = Asset("chevron-left"),
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			ThemeTag = {
				ImageColor3 = "Text",
			},
		})

		Window.ToggleButton = New("TextButton", {
			Size = UDim2.fromOffset(28, 28),
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -6, 0, 0),
			BackgroundTransparency = 1,
			Visible = false,
			ThemeTag = {
				BackgroundColor3 = "Tab",
			},
		}, {
			Corner(8),
			Window.ToggleIcon,
		})

		local ToggleMotor, ToggleTransparency = Creator.SpringMotor(1, Window.ToggleButton, "BackgroundTransparency", true)
		Creator.OnHoverEnter(Window.ToggleButton, function()
			ToggleTransparency(0.93, true)
		end)
		Creator.OnHoverLeave(Window.ToggleButton, function()
			ToggleTransparency(1, true)
		end)
		Creator.AddGuarded(Window.ToggleButton, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Window.ToggleButton) then
				return
			end
			ToggleTransparency(0.9, true)
		end)
		Creator.AddGuarded(Window.ToggleButton, "MouseButton1Up", function()
			ToggleTransparency(0.93, true)
		end)

		Window.SidebarHead = New("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
		}, {
			Window.SidebarTitle,
			Window.ToggleButton,
		})

		Window.SearchBox = Components.Textbox(nil, "PanelSearch")
		Window.SearchBox.Frame.Position = UDim2.fromOffset(4, 0)
		Window.SearchBox.Frame.Size = UDim2.new(1, -8, 0, 34)
		Window.SearchBox.Input.PlaceholderText = Config.SearchPlaceholder or "Search"
		Window.DefaultSearchPlaceholder = Config.SearchPlaceholder or "Search"

		Window.SearchIcon = New("ImageLabel", {
			Image = Asset("search"),
			Size = UDim2.fromOffset(14, 14),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			ThemeTag = {
				ImageColor3 = "Text",
			},
		})

		Window.SearchButton = New("TextButton", {
			Size = UDim2.fromOffset(38, 32),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromOffset((Window.CollapsedWidth - 24) / 2, 0),
			BackgroundTransparency = 1,
			Visible = false,
			ThemeTag = {
				BackgroundColor3 = "Tab",
			},
		}, {
			Corner(9),
			Window.SearchIcon,
		})

		local SearchMotor, SearchTransparency = Creator.SpringMotor(1, Window.SearchButton, "BackgroundTransparency", true)
		Creator.OnHoverEnter(Window.SearchButton, function()
			SearchTransparency(0.93, true)
		end)
		Creator.OnHoverLeave(Window.SearchButton, function()
			SearchTransparency(1, true)
		end)

		Window.SearchHolder = New("Frame", {
			Size = UDim2.new(1, 0, 0, 46),
			Position = UDim2.fromOffset(0, 42),
			BackgroundTransparency = 1,
			Visible = Config.Search ~= false,
		}, {
			Window.SearchButton,
		})
		Window.SearchBox.Frame.Parent = Window.SearchHolder

		Window.SidebarInner = New("Frame", {
			Position = UDim2.fromOffset(14, 18),
			Size = UDim2.new(1, -24, 1, -36),
			BackgroundTransparency = 1,
		}, {
			Window.SidebarHead,
			Window.SearchHolder,
			Window.TabScroll,
		})

		Window.Sidebar = New("Frame", {
			Size = UDim2.new(0, Window.TabWidth, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			Window.SidebarInner,
		})

		Window.PageHolder = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		})

		Window.PageCanvas = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			Window.PageHolder,
		})

		Window.ScrollShade = New("Frame", {
			Size = UDim2.new(1, 0, 0, 12),
			BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.82,
			BorderSizePixel = 0,
			Active = false,
			Visible = false,
			ZIndex = 20,
		}, {
			New("UIGradient", {
				Rotation = 90,
				Transparency = NumberSequence.new(0, 1),
			}),
		})

		Window.SidebarShade = New("Frame", {
			Size = UDim2.new(0, 12, 1, 0),
			BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.82,
			BorderSizePixel = 0,
			Active = false,
			Visible = Window.TabWidth > 0,
			ZIndex = 20,
		}, {
			New("UIGradient", {
				Rotation = 0,
				Transparency = NumberSequence.new(0, 1),
			}),
		})

		Window.ShadeCorner = New("UICorner", {})

		Window.ShadeClip = New("CanvasGroup", {
			Name = "ShadeClip",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Active = false,
			ZIndex = 20,
		}, {
			Window.ShadeCorner,
			Window.ScrollShade,
			Window.SidebarShade,
		})

		Window.Pages = New("Frame", {
			Position = UDim2.fromOffset(Window.TabWidth, 0),
			Size = UDim2.new(1, -Window.TabWidth, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Window.PageCanvas,
			Window.ShadeClip,
		})

		function Window:UpdateScrollShade()
			local Container = not Window.Searching and Components.Tab.Containers[Components.Tab.SelectedTab] or nil
			Window.ScrollShade.Visible = Container ~= nil
				and Container.Visible
				and Container:IsA("ScrollingFrame")
				and Container.CanvasPosition.Y > 4
		end

		Window.Body = New("Frame", {
			Position = UDim2.fromOffset(0, 58),
			Size = UDim2.new(1, 0, 1, -62),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			Window.Sidebar,
			Window.Pages,
		})

		local ResizeStartFrame = New("Frame", {
			Size = UDim2.fromOffset(16, 16),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -16, 1, -16),
			ZIndex = 10,
		})

		Window.Paint = CreateWindowPaint(13)

		Window.Root = New("Frame", {
			Size = Window.Size,
			Position = Window.Position,
			BackgroundTransparency = 1,
			Active = true,
			Parent = Config.Parent,
		}, {
			Corner(13),
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				ThemeTag = {
					Color = "AcrylicBorder",
				},
			}),
			Window.Paint.Frame,
			Window.Body,
			ResizeStartFrame,
		})
		Creator.RegisterSurface(Window.Root)

		if Library.UseAcrylic then
			Window.AcrylicBlur = Acrylic.Blur()
			Window.AcrylicBlur.Frame.Parent = Window.Paint.Frame
			Window.AcrylicBlur.AddParent(Window.Root)
		end

		Window.ResizeGhostLabel = Label({
			Text = "",
			TextSize = 14,
			Weight = "SemiBold",
			Size = UDim2.fromScale(1, 1),
			TextXAlignment = Enum.TextXAlignment.Center,
		})

		Window.ResizeGhost = New("Frame", {
			Name = "ResizeGhost",
			Size = UDim2.fromOffset(0, 0),
			BackgroundTransparency = 0.92,
			Active = false,
			Visible = false,
			ZIndex = 100,
			Parent = Window.Root,
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			Corner(13),
			New("UIStroke", {
				Thickness = 2,
				Transparency = 0.25,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				ThemeTag = {
					Color = "Accent",
				},
			}),
			Window.ResizeGhostLabel,
		})

		Window.ResizeShield = New("TextButton", {
			Name = "ResizeShield",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
			AutoButtonColor = false,
			Selectable = false,
			Active = true,
			Visible = false,
			ZIndex = 10000,
			Parent = Config.Parent,
		})

		Window.TitleBar = Components.TitleBar({
			Title = Config.Title,
			SubTitle = Config.SubTitle,
			Logo = Config.Logo,
			LogoTint = Config.LogoTint,
			LogoSize = Config.LogoSize,
			LogoCorner = Config.LogoCorner,
			Parent = Window.Root,
			Window = Window,
		})

		Window.NavBar = New("Frame", {
			Size = UDim2.new(1, 0, 0, 52),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.fromScale(0, 1),
			BackgroundTransparency = 1,
			Visible = false,
			Parent = Window.Root,
		}, {
			New("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				BackgroundTransparency = 0.9,
				ThemeTag = {
					BackgroundColor3 = "TitleBarLine",
				},
			}),
		})

		Window.NavSeparator = New("Frame", {
			Size = UDim2.new(0, 1, 1, 0),
			BackgroundTransparency = 0.9,
			ThemeTag = {
				BackgroundColor3 = "TitleBarLine",
			},
		})
		Window.NavRail = New("Frame", {
			Size = UDim2.new(0, 52, 1, -58),
			Position = UDim2.fromOffset(0, 58),
			BackgroundTransparency = 1,
			Visible = false,
			Parent = Window.Root,
		}, {
			Window.NavSeparator,
		})

		Window.NavTipLabel = Label({
			Text = "",
			TextSize = 11,
			Weight = "Medium",
			Tag = "ToastText",
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Center,
		})

		Window.NavTip = New("Frame", {
			Size = UDim2.fromOffset(0, 24),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(0, 0.5),
			Visible = false,
			ZIndex = 30,
			Parent = Window.Root,
			ThemeTag = {
				BackgroundColor3 = "ToastBackground",
			},
		}, {
			Corner(8),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),
			Window.NavTipLabel,
		})

		local SizeMotor = Flipper.GroupMotor.new({
			X = Window.Size.X.Offset,
			Y = Window.Size.Y.Offset,
		})

		local PosMotor = Flipper.GroupMotor.new({
			X = Window.Position.X.Offset,
			Y = Window.Position.Y.Offset,
		})

		Window.SidebarMotor = Flipper.SingleMotor.new(Window.TabWidth)

		local LastSizeApply = 0
		SizeMotor:OnStep(function(values)
			if Window.IsAnimating then
				local Now = os.clock()
				if Now - LastSizeApply < 0.025 then
					return
				end
				LastSizeApply = Now
			end
			Window.Root.Size = UDim2.fromOffset(math.round(values.X), math.round(values.Y))
		end)

		PosMotor:OnStep(function(values)
			Window.Root.Position = UDim2.fromOffset(math.round(values.X), math.round(values.Y))
		end)

		Window.SidebarGoal = Window.TabWidth
		local SidebarToken = 0
		local AppliedPagesGoal = nil
		local AppliedShade = nil

		Window.SidebarMotor:OnStep(function(Value)
			Window.Sidebar.Size = UDim2.new(0, Value, 1, 0)
			Window.Pages.Position = UDim2.fromOffset(Value, 0)
			local Travel = math.max(Window.TabWidth - Window.CollapsedWidth, 1)
			local Progress = math.clamp((Window.TabWidth - Value) / Travel, 0, 1)
			Window.ToggleButton.AnchorPoint = Vector2.new(1 - 0.5 * Progress, 0)
			Window.ToggleButton.Position = UDim2.new(1 - 0.5 * Progress, -6 * (1 - Progress), 0, 0)
			local FollowBackground = Library.Background
			if FollowBackground and FollowBackground.Follow then
				FollowBackground:Follow(Value)
			end
			if AppliedPagesGoal ~= Window.SidebarGoal then
				AppliedPagesGoal = Window.SidebarGoal
				Window.Pages.Size = UDim2.new(1, -AppliedPagesGoal, 1, 0)
			end
			local ShadeVisible = Value > 0
			if AppliedShade ~= ShadeVisible then
				AppliedShade = ShadeVisible
				Window.SidebarShade.Visible = ShadeVisible
			end
		end)

		local function SettleSidebar()
			Window.SidebarMoving = false
			AppliedPagesGoal = Window.SidebarGoal
			Window.Pages.Size = UDim2.new(1, -Window.SidebarGoal, 1, 0)
			local Background = Library.Background
			if Background and Background.EndFollow then
				Background:EndFollow()
			end
			if Background and Background.ApplyLayout then
				Background:ApplyLayout()
			end
			if Window.UpdateSelection then
				Window:UpdateSelection(true)
			end
		end

		Window.SidebarMotor:OnComplete(SettleSidebar)
		Window.SettleSidebar = SettleSidebar

		local Normal

		local function RefreshState()
			Window.IsMaximized = Window.Maximized
			Window.IsOriginSize = not Window.Maximized
				and Window.Size.X.Offset == Window.OriginSize.X
				and Window.Size.Y.Offset == Window.OriginSize.Y
		end

		function Window:GetState()
			return {
				IsResizing = Window.IsResizing,
				IsDragging = Window.IsDragging,
				IsAnimating = Window.IsAnimating,
				IsMaximized = Window.IsMaximized,
				IsOriginSize = Window.IsOriginSize,
				OriginSize = Window.OriginSize,
				OriginPosition = Window.OriginPosition,
			}
		end

		SizeMotor:OnComplete(function()
			Window.IsAnimating = false
			local Value = SizeMotor:GetValue()
			Window.Root.Size = UDim2.fromOffset(math.round(Value.X), math.round(Value.Y))
			local Background = Library.Background
			if not Resizing and Background and Background.ApplyImageLayout and Background.Image.Visible then
				Background:ApplyImageLayout()
			end
			if not Resizing then
				Library:FlushDeferred()
			end
		end)

		local function Move(Size, Pos, Animated)
			local Goal = Animated and Spring or Instant
			SizeMotor:SetGoal({
				X = Goal(Size.X, { Frequency = 8 }),
				Y = Goal(Size.Y, { Frequency = 8 }),
			})
			PosMotor:SetGoal({
				X = Goal(Pos.X, { Frequency = 8 }),
				Y = Goal(Pos.Y, { Frequency = 8 }),
			})
		end

		local function Transition(Size, Pos, Instantly)
			Window.IsAnimating = not Instantly
			if not Instantly then
				local Background = Library.Background
				if Background and Background.Hold then
					Background:Hold(0.6)
				end
			end
			Move(Size, Pos, not Instantly)
		end

		local function SetMaximized(Value, Instantly)
			if Value then
				local View = GetViewport()
				if not Window.Maximized then
					Normal = {
						Size = Vector2.new(Window.Size.X.Offset, Window.Size.Y.Offset),
						Position = Vector2.new(Window.Position.X.Offset, Window.Position.Y.Offset),
					}
					Window.OriginSize = Normal.Size
					Window.OriginPosition = Normal.Position
					Window.Maximized = true
				end
				local Margin = 12
				local MaxSize = Vector2.new(math.max(View.X - Margin * 2, 1), math.max(View.Y - Margin * 2, 1))
				local MaxPosition = Vector2.new(
					math.min(Margin, (View.X - MaxSize.X) / 2),
					math.min(Margin, (View.Y - MaxSize.Y) / 2)
				)
				Window.Size = UDim2.fromOffset(MaxSize.X, MaxSize.Y)
				Transition(MaxSize, MaxPosition, Instantly)
			else
				if not Window.Maximized or not Normal then
					Window.Maximized = false
					Normal = nil
					return
				end
				local Size, Pos = Fit(Normal.Size, Normal.Position)
				Normal = nil
				Window.Maximized = false
				Window.Size = UDim2.fromOffset(Size.X, Size.Y)
				Window.Position = UDim2.fromOffset(Pos.X, Pos.Y)
				Transition(Size, Pos, Instantly)
			end

			Window.TitleBar.MaxButton.Icon.Image = Window.Maximized and Assets.Restore or Assets.Max
			RefreshState()
			Components.Notification:Layout()
		end

		Window.Maximize = function(...)
			local Value, Instantly = ...
			if Value == Window then
				Value, Instantly = select(2, ...)
			end
			SetMaximized(Value and true or false, Instantly)
		end

		function Window:Restore(Instantly)
			SetMaximized(false, Instantly)
		end

		function Window:ToggleMaximize(Instantly)
			SetMaximized(not Window.Maximized, Instantly)
		end

		function Window:GetViewport()
			return GetViewport()
		end

		Window.LockInside = false

		local function Snap(Instantly)
			if not Window.LockInside or Window.Maximized then
				return
			end

			local View = GetViewport()
			local Current = Vector2.new(Window.Position.X.Offset, Window.Position.Y.Offset)
			local Target = Vector2.new(
				math.clamp(Current.X, 0, math.max(View.X - Window.Size.X.Offset, 0)),
				math.clamp(Current.Y, 0, math.max(View.Y - Window.Size.Y.Offset, 0))
			)

			if Target == Current then
				return
			end

			Window.Position = UDim2.fromOffset(Target.X, Target.Y)

			local Goal = if Instantly or Library.Config.ReducedMotion then Instant else Spring
			PosMotor:SetGoal({
				X = Goal(Target.X, { Frequency = 8 }),
				Y = Goal(Target.Y, { Frequency = 8 }),
			})
		end

		function Window:SetLockInside(Value: boolean?, Instantly: boolean?)
			Window.LockInside = Value == true
			Snap(Instantly)
		end

		local Refitting = false

		local function Refit()
			if Window.LockInside and not Window.Maximized then
				Snap(true)
			end

			if not Window.Maximized or Refitting then
				return
			end
			Refitting = true
			task.defer(function()
				Refitting = false
				if Window.Maximized then
					SetMaximized(true, true)
				end
			end)
		end

		if Config.Parent then
			Creator.AddSignal(Config.Parent:GetPropertyChangedSignal("AbsoluteSize"), Refit)
		end

		local RefreshQueued = false

		local function RefreshNotifications()
			if Window.IsAnimating or Window.IsResizing then
				if RefreshQueued then
					return
				end
				RefreshQueued = true
				task.delay(0.08, function()
					RefreshQueued = false
					Components.Notification:Refresh()
				end)
				return
			end
			Components.Notification:Refresh()
		end
		Creator.AddSignal(Window.Root:GetPropertyChangedSignal("AbsolutePosition"), RefreshNotifications)
		Creator.AddSignal(Window.Root:GetPropertyChangedSignal("AbsoluteSize"), RefreshNotifications)
		Creator.AddSignal(Window.Root:GetPropertyChangedSignal("Visible"), RefreshNotifications)
		if Workspace.CurrentCamera then
			Creator.AddSignal(Workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), Refit)
		end

		Creator.AddSignal(Window.TitleBar.Frame.InputBegan, function(Input)
			if
				(Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch)
				and Creator.AcceptsInput(Window.TitleBar.Frame, Input)
			then
				Dragging = true
				Window.IsDragging = true
				MousePos = Input.Position
				StartPos = Window.Root.Position

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						Window.IsDragging = false
						Snap()
					end
				end)
			end
		end)

		Creator.AddSignal(Window.TitleBar.Frame.InputChanged, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseMovement
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = Input
			end
		end)

		local ResizeSession

		local function SetInputLock(Locked)
			Library.InputLocked = Locked
			for _, Container in next, Components.Tab.Containers do
				if Container:IsA("ScrollingFrame") then
					Container.ScrollingEnabled = not Locked
				end
			end
			Window.SearchPage.ScrollingEnabled = not Locked
			Window.TabScroll.ScrollingEnabled = not Locked
			Window.ResizeShield.Visible = Locked
			Creator.SetSurfaceLock(Window.Root, Locked)
		end

		local function ResolveResize(Session, Pointer)
			local Delta = Pointer - Session.Origin
			local View = GetViewport()
			local Min = Window.MinSize
			local Max = Window.MaxSize or View
			local MaxX = math.max(math.min(Max.X, View.X), Min.X)
			local MaxY = math.max(math.min(Max.Y, View.Y), Min.Y)
			local Width = math.clamp(Session.Size.X + Session.DX * Delta.X, Min.X, MaxX)
			local Height = math.clamp(Session.Size.Y + Session.DY * Delta.Y, Min.Y, MaxY)
			local X = Session.Pos.X
			if Session.DX < 0 then
				X = Session.Pos.X + Session.Size.X - Width
			end
			return Vector2.new(Width, Height), Vector2.new(X, Session.Pos.Y)
		end

		local function EndResize(Cancel)
			local Session = ResizeSession
			if not Session then
				return
			end
			ResizeSession = nil
			Session.Step:Disconnect()
			Session.Move:Disconnect()
			Session.Ended:Disconnect()
			Session.Key:Disconnect()

			Resizing = false
			Window.IsResizing = false
			SetInputLock(false)
			Window.ResizeGhost.Visible = false

			local Size, Pos = Session.Goal, Session.GoalPos
			if Cancel or not Size then
				Size, Pos = Session.Size, Session.Pos
			end

			SizeMotor:SetGoal({
				X = Instant(Size.X),
				Y = Instant(Size.Y),
			})
			PosMotor:SetGoal({
				X = Instant(Pos.X),
				Y = Instant(Pos.Y),
			})
			Window.Size = UDim2.fromOffset(Size.X, Size.Y)
			Window.Position = UDim2.fromOffset(Pos.X, Pos.Y)
			if not Cancel then
				Window.OriginSize = Size
				Window.OriginPosition = Pos
			end
			RefreshState()

			local Background = Library.Background
			if Background and Background.ApplyImageLayout and Background.Image.Visible then
				Background:ApplyImageLayout()
			end
			Library:FlushDeferred()
			Snap()
		end

		local function StepResize()
			local Session = ResizeSession
			if not Session then
				return
			end
			if not Window.Root.Visible then
				EndResize(true)
				return
			end

			local Pointer = Session.Pointer
			if Pointer == Session.Last then
				return
			end

			if Session.Outline then
				Session.Last = Pointer
				local Size, Pos = ResolveResize(Session, Pointer)
				Session.Goal, Session.GoalPos = Size, Pos
				local Ghost = Window.ResizeGhost
				Ghost.Position = UDim2.fromOffset(Pos.X - Session.Pos.X, Pos.Y - Session.Pos.Y)
				Ghost.Size = UDim2.fromOffset(Size.X, Size.Y)
				Window.ResizeGhostLabel.Text = math.round(Size.X) .. " × " .. math.round(Size.Y)
				Ghost.Visible = true
				return
			end

			local Now = os.clock()
			if Now - Session.Applied < 0.025 then
				return
			end
			Session.Applied = Now
			Session.Last = Pointer
			local Size, Pos = ResolveResize(Session, Pointer)
			Session.Goal, Session.GoalPos = Size, Pos
			local Background = Library.Background
			if Background and Background.Hold then
				Background:Hold(0.2)
			end
			SizeMotor:SetGoal({
				X = Instant(Size.X),
				Y = Instant(Size.Y),
			})
			PosMotor:SetGoal({
				X = Instant(Pos.X),
				Y = Instant(Pos.Y),
			})
		end

		local function CommitResize(Spec, Input, Start)
			if ResizeSession or Window.Maximized then
				return
			end
			local Session = {
				DX = Spec.DX,
				DY = Spec.DY,
				Origin = Start,
				Pointer = Start,
				Size = Vector2.new(Window.Size.X.Offset, Window.Size.Y.Offset),
				Pos = Vector2.new(Window.Position.X.Offset, Window.Position.Y.Offset),
				Outline = Library.Config.ResizeMode ~= "Live",
				Applied = 0,
			}
			ResizeSession = Session

			Resizing = true
			Window.IsResizing = true
			SetInputLock(true)

			Session.Move = UserInputService.InputChanged:Connect(function(Changed)
				if Changed.UserInputType == Enum.UserInputType.MouseMovement or Changed == Input then
					Session.Pointer = Vector2.new(Changed.Position.X, Changed.Position.Y)
				end
			end)
			Session.Ended = UserInputService.InputEnded:Connect(function(Ended)
				if Ended == Input or Ended.UserInputType == Input.UserInputType then
					EndResize(false)
				end
			end)
			Session.Key = UserInputService.InputBegan:Connect(function(Pressed)
				if Pressed.KeyCode == Enum.KeyCode.Escape then
					EndResize(true)
				end
			end)
			Session.Step = RenderStepped:Connect(StepResize)
		end

		local function BeginResize(Spec, Input)
			if ResizeSession or Window.Maximized or Library.InputLocked then
				return
			end
			if
				Input.UserInputType ~= Enum.UserInputType.MouseButton1
				and Input.UserInputType ~= Enum.UserInputType.Touch
			then
				return
			end

			local Start = Vector2.new(Input.Position.X, Input.Position.Y)
			local Finished = false
			local Move, Ended

			local function Clear()
				Finished = true
				Move:Disconnect()
				Ended:Disconnect()
			end

			Move = UserInputService.InputChanged:Connect(function(Changed)
				if Finished or (Changed.UserInputType ~= Enum.UserInputType.MouseMovement and Changed ~= Input) then
					return
				end
				local Delta = Vector2.new(Changed.Position.X, Changed.Position.Y) - Start
				if Delta.Magnitude < 6 then
					return
				end
				Clear()
				local AbsX, AbsY = math.abs(Delta.X), math.abs(Delta.Y)
				if Spec.DX ~= 0 and Spec.DY == 0 and AbsY > AbsX * 0.6 then
					return
				end
				if Spec.DY ~= 0 and Spec.DX == 0 and AbsX > AbsY * 0.6 then
					return
				end
				CommitResize(Spec, Input, Start)
			end)

			Ended = UserInputService.InputEnded:Connect(function(Stopped)
				if Stopped == Input or Stopped.UserInputType == Input.UserInputType then
					Clear()
				end
			end)
		end

		Window.CancelResize = function()
			EndResize(true)
		end

		local HandleSpecs = {
			{
				Name = "BottomRight",
				DX = 1,
				DY = 1,
				Frame = ResizeStartFrame,
			},
		}

		for _, Spec in HandleSpecs do
			local Handle = Spec.Frame
			if not Handle then
				Handle = New("Frame", {
					Name = "Resize" .. Spec.Name,
					Position = Spec.Position,
					Size = Spec.Size,
					BackgroundTransparency = 1,
					ZIndex = 10,
					Parent = Window.Root,
				})
			end
			Handle.BackgroundTransparency = 1
			if Spec.DX * Spec.DY == 0 then
				Creator.OverrideTag(Handle, { BackgroundColor3 = "Accent" })
				Creator.OnHoverEnter(Handle, function()
					if not ResizeSession then
						Handle.BackgroundTransparency = 0.82
					end
				end)
				Creator.OnHoverLeave(Handle, function()
					Handle.BackgroundTransparency = 1
				end)
			end
			Creator.AddSignal(Handle.InputBegan, function(Input)
				if Creator.AcceptsInput(Handle, Input) then
					BeginResize(Spec, Input)
				end
			end)
		end

		Creator.AddSignal(UserInputService.InputChanged, function(Input)
			if Input == DragInput and Dragging then
				if Window.Maximized and Normal then
					local View = GetViewport()
					local Size = Fit(Normal.Size, Normal.Position)
					local Ratio = math.clamp(Input.Position.X / View.X, 0, 1)
					Normal.Position = Vector2.new(Input.Position.X - Ratio * Size.X, 0)
					SetMaximized(false, true)
					StartPos = Window.Position
					MousePos = Input.Position
				end

				local Delta = Input.Position - MousePos
				local _, Clamped = Fit(
					Vector2.new(Window.Size.X.Offset, Window.Size.Y.Offset),
					Vector2.new(StartPos.X.Offset + Delta.X, StartPos.Y.Offset + Delta.Y)
				)
				Window.Position = UDim2.fromOffset(math.round(Clamped.X), math.round(Clamped.Y))
				PosMotor:SetGoal({
					X = Instant(Window.Position.X.Offset),
					Y = Instant(Window.Position.Y.Offset),
				})
			end

		end)

		local TabLayout = Window.TabList:FindFirstChildOfClass("UIListLayout")
		Creator.AddSignal(TabLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Window.TabScroll.CanvasSize = UDim2.new(0, 0, 0, TabLayout.AbsoluteContentSize.Y)
			Window:UpdateSelection(true)
		end)

		Creator.AddSignal(Window.TabScroll:GetPropertyChangedSignal("CanvasPosition"), function()
			Window:UpdateSelection(true)
		end)

		Creator.AddSignal(Window.Sidebar:GetPropertyChangedSignal("AbsoluteSize"), function()
			if not Window.SidebarMoving and not Window.IsResizing then
				Window:UpdateSelection(true)
			end
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if
				type(Library.MinimizeKeybind) == "table"
				and Library.MinimizeKeybind.Type == "Keybind"
				and not UserInputService:GetFocusedTextBox()
			then
				if Input.KeyCode.Name == Library.MinimizeKeybind.Value then
					Window:Minimize()
				end
			elseif Input.KeyCode == Library.MinimizeKey and not UserInputService:GetFocusedTextBox() then
				Window:Minimize()
			end
		end)

		function Window:Minimize()
			Window.Minimized = not Window.Minimized
			Window.Root.Visible = not Window.Minimized and not Library.IntroActive
			if not MinimizeNotif then
				MinimizeNotif = true
				local Key = Library.MinimizeKeybind and Library.MinimizeKeybind.Value or Library.MinimizeKey.Name
				Library:InternalNotify({
					Title = "Interface",
					Content = "Press " .. Key .. " to toggle the interface.",
					Duration = 6,
				})
			end
		end

		function Window:SetThemeMode(Mode)
			return Library:SetThemeMode(Mode)
		end

		function Window:GetThemeMode()
			return Library.ThemeMode
		end

		function Window:Destroy()
			EndResize(true)
			Window.ResizeShield:Destroy()
			if Window.AcrylicBlur then
				Window.AcrylicBlur.Destroy()
				Window.AcrylicBlur = nil
			end
			Window.Root:Destroy()
		end

		function Window:CanCollapse()
			return Window.CurrentHeader ~= nil
		end

		function Window:UpdateCollapseButton()
			Window.ToggleButton.Visible = Window:CanCollapse()
		end

		function Window:ApplyCollapsed(Value, Instantly)
			Value = Value and true or false
			if Window.SidebarCollapsed == Value and not Instantly then
				return
			end
			Window.SidebarCollapsed = Value

			local Goal = Value and Window.CollapsedWidth or Window.TabWidth
			Window.SidebarGoal = Goal
			if Instantly then
				Window.SidebarMotor:SetGoal(Instant(Goal))
			else
				Window.SidebarMoving = true
				local Background = Library.Background
				if Background and Background.BeginFollow then
					Background:BeginFollow(Window.SidebarMotor:GetValue())
				end
				if Background and Background.Hold then
					Background:Hold(0.9)
					Background:Suspend(1)
				end
				Window.SidebarMotor:SetGoal(Spring(Goal, { Frequency = 6 }))
				SidebarToken += 1
				local Token = SidebarToken
				task.delay(1.5, function()
					if Token == SidebarToken and Window.SidebarMoving then
						Window.SettleSidebar()
					end
				end)
			end

			Window.SidebarTitle.Visible = not Value
			if Window.UpdateFooter then
				Window:UpdateFooter()
			end
			Window.SearchBox.Frame.Visible = not Value
			Window.SearchButton.Visible = Value
			Window.ToggleIcon.Image = Asset(Value and "chevron-right" or "chevron-left")

			for _, Tab in next, Components.Tab.Tabs do
				if Tab.Kind ~= "Header" then
					Tab:SetCollapsed(Value)
				else
					for _, Item in Tab.SidebarItems do
						Item:SetCollapsed(Value)
					end
				end
			end

			task.defer(function()
				Window:UpdateSelection(true)
			end)
		end

		function Window:SetSidebarCollapsed(Value, Instantly)
			Value = Value and true or false
			if Value and not Window:CanCollapse() then
				return
			end
			if Window.CurrentHeader then
				Window.CurrentHeader.SidebarCollapsed = Value
			end
			Window:ApplyCollapsed(Value, Instantly)
		end

		function Window:ToggleSidebar()
			Window:SetSidebarCollapsed(not Window.SidebarCollapsed)
		end

		Creator.AddGuarded(Window.ToggleButton, "MouseButton1Click", function()
			Window:ToggleSidebar()
		end)

		Creator.AddGuarded(Window.SearchButton, "MouseButton1Click", function()
			Window:SetSidebarCollapsed(false)
			task.delay(0.15, function()
				Window.SearchBox.Input:CaptureFocus()
			end)
		end)

		function Window:SetSidebarTitle(Value)
			Window.RootSidebarTitle = Value
			if not Window.CurrentHeader then
				Window.SidebarTitle.Text = Value
			end
		end

		function Window:ShowGroup(Header)
			for _, Tab in next, Components.Tab.Tabs do
				if Tab.Kind == "Header" then
					Tab.Group.Visible = Tab == Header
				end
			end
			Window.CurrentHeader = Header
			if Window.UpdateFooter then
				Window:UpdateFooter()
			end

			Window.RootList.Visible = Header == nil or #Header.Subs == 0
			Window.SidebarTitle.Text = Header and Header.SidebarTitle or Window.RootSidebarTitle
			Window:UpdateCollapseButton()
			Window:ApplyCollapsed(Header and Header.SidebarCollapsed or false, not Window.GroupShown)
			Window.GroupShown = true
		end

		function Window:ApplyIndicatorColor()
			local Indicator = Window.TitleBar.Indicator
			local Header = Window.CurrentHeader
			if Library.ColorfulIcons and Header and Header.IconColor then
				Creator.RemoveTag(Indicator)
				Indicator.BackgroundColor3 = Creator.ShiftHue(Header.IconColor, Library.IconHue)
			else
				Creator.OverrideTag(Indicator, { BackgroundColor3 = "Accent" })
			end
		end

		Creator.Hooks[Window] = function()
			Window:ApplyIndicatorColor()
		end

		function Window:UpdateSelection(Instantly)
			local Header = Window.CurrentHeader
			local Content = Window.CurrentContent

			local Indicator = Window.TitleBar.Indicator
			if Header then
				local Nav = Window.TitleBar.Nav
				local Position
				local IndicatorSize
				if Window.NavVertical then
					local Center = Header.Frame.AbsolutePosition.Y - Nav.AbsolutePosition.Y + Header.Frame.AbsoluteSize.Y / 2
					Position = UDim2.fromOffset(Window.NavPosition == "Left" and -4 or 44, Center)
					IndicatorSize = UDim2.fromOffset(2, 22)
				else
					local Frame = Header.Frame
					local Center = Frame.AbsolutePosition.X - Nav.AbsolutePosition.X + Frame.AbsoluteSize.X / 2
					local Span = math.max(Frame.AbsoluteSize.X - 12, 18)
					Position = UDim2.fromOffset(Center, 28)
					IndicatorSize = UDim2.fromOffset(Span, 2)
				end
				if Window.IndicatorTween then
					Window.IndicatorTween:Cancel()
					Window.IndicatorTween = nil
				end
				if Instantly or Indicator.BackgroundTransparency >= 1 then
					Indicator.Position = Position
					Indicator.Size = IndicatorSize
					Indicator.BackgroundTransparency = 0
				else
					local Tween = Creator.Tween(Indicator, 0.22, { Position = Position, Size = IndicatorSize })
					Window.IndicatorTween = Tween
					Tween.Completed:Connect(function()
						if Window.IndicatorTween == Tween then
							Window.IndicatorTween = nil
							Window:UpdateSelection(true)
						end
					end)
				end
			else
				Indicator.BackgroundTransparency = 1
			end
			Window:ApplyIndicatorColor()

			if Content and Content.Kind ~= "Header" then
				local Y = Content.Frame.AbsolutePosition.Y - Window.TabScroll.AbsolutePosition.Y + Window.TabScroll.CanvasPosition.Y
				local Collapsed = Window.SidebarCollapsed
				local PillPosition = Collapsed and UDim2.new(0, (Window.CollapsedWidth - 24) / 2, 0, Y) or UDim2.new(0.5, 0, 0, Y)
				Window.Pill.Size = Collapsed and UDim2.fromOffset(38, 38) or UDim2.new(1, 0, 0, 38)
				if Window.Pill.BackgroundTransparency >= 1 or Instantly then
					Window.Pill.Position = PillPosition
					Window.Pill.BackgroundTransparency = 0.94
				else
					Creator.Tween(Window.Pill, 0.25, { Position = PillPosition })
				end
			else
				Window.Pill.BackgroundTransparency = 1
			end
		end

		Creator.AddSignal(Window.TitleBar.TabList:GetPropertyChangedSignal("AbsoluteSize"), function()
			if not Window.IndicatorTween and not Window.NavVertical and not Window.IsResizing then
				Window:UpdateSelection(true)
			end
		end)

		function Window:ClearSearchResults()
			for _, Row in next, Window.MovedRows do
				if Row.Home and Row.Home.Container.Parent then
					Row.Clip.Parent = Row.Home.Container
					Row.Clip.LayoutOrder = Row.Order
				end
			end
			Window.MovedRows = {}
			for _, Section in next, Window.SearchSections do
				Section:Destroy()
			end
			Window.SearchSections = {}
		end

		Window.SearchTitle = Label({
			Text = "Search results",
			TextSize = 22,
			Weight = "Bold",
			Size = UDim2.new(1, 0, 0, 26),
			LayoutOrder = 0,
		})

		Window.SearchEmpty = Label({
			Text = "No results found",
			TextSize = 13,
			Weight = "Medium",
			Tag = "SubText",
			Size = UDim2.new(1, 0, 0, 40),
			LayoutOrder = 1,
			Visible = false,
		})

		Window.SearchPage = New("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Parent = Window.PageHolder,
			Visible = false,
			BottomImage = Assets.ScrollBottom,
			MidImage = Assets.ScrollMid,
			TopImage = Assets.ScrollTop,
			ScrollBarThickness = 4,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ThemeTag = {
				ScrollBarImageColor3 = "ScrollBar",
				ScrollBarImageTransparency = "ScrollBarTransparency",
			},
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 16),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			New("UIPadding", {
				PaddingRight = UDim.new(0, 22),
				PaddingLeft = UDim.new(0, 22),
				PaddingTop = UDim.new(0, 20),
				PaddingBottom = UDim.new(0, 32),
			}),
			Window.SearchTitle,
			Window.SearchEmpty,
		})

		local SearchLayout = Window.SearchPage:FindFirstChildOfClass("UIListLayout")
		Creator.AddSignal(SearchLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Window.SearchPage.CanvasSize = UDim2.new(0, 0, 0, SearchLayout.AbsoluteContentSize.Y + 52)
		end)

		function Window:GetSearchHandler()
			local Content = Window.CurrentContent

			if not Content then
				return nil
			end

			return Content.SearchHandler or (Content.Header and Content.Header.SearchHandler) or nil
		end

		function Window:ApplySearchHandler()
			local Handler = Window:GetSearchHandler()
			local Input = Window.SearchBox.Input

			Input.PlaceholderText = if Handler and Handler.Placeholder then Handler.Placeholder else Window.DefaultSearchPlaceholder

			if Window.ActiveSearchHandler == Handler then
				return
			end

			Window.ActiveSearchHandler = Handler

			local Seed = if Handler then Handler.Query or "" else ""

			if Input.Text ~= Seed then
				Window.SearchSeeding = true
				Input.Text = Seed
				Window.SearchSeeding = false
			end
		end

		function Window:Search(Query)
			local Handler = Window:GetSearchHandler()

			if Handler and not Window.Searching then
				if Window.SearchSeeding then
					return
				end

				local Text = Window.SearchBox.Input.Text
				Handler.Query = Text

				if Handler.OnChanged then
					Library:SafeCallback(Handler.OnChanged, Text)
				end

				return
			end

			Query = string.lower((Query or ""):match("^%s*(.-)%s*$"))
			Window:ClearSearchResults()

			local TabModule = Components.Tab

			if Query == "" then
				if Window.Searching then
					Window.Searching = false
					Window.SearchPage.Visible = false
					local Current = TabModule.Containers[TabModule.SelectedTab]
					if Current then
						Current.Visible = true
					end
					Window:UpdateScrollShade()
				end
				return
			end

			Window.Searching = true
			for _, Container in next, TabModule.Containers do
				Container.Visible = false
			end
			Window.SearchPage.Visible = true

			local Found = 0
			local Order = 1
			for _, Tab in next, TabModule.Tabs do
				local Matches = {}
				for Row in next, Library.SearchRows do
					if
						Row.Tab == Tab
						and not Row.Hidden
						and Row.Clip.Parent == Row.Home.Container
						and Row:Matches(Query)
					then
						table.insert(Matches, Row)
					end
				end

				if #Matches > 0 then
					table.sort(Matches, function(A, B)
						local OrderA = A.Home.Root.LayoutOrder
						local OrderB = B.Home.Root.LayoutOrder
						if OrderA ~= OrderB then
							return OrderA < OrderB
						end
						return A.Id < B.Id
					end)

					Order = Order + 1
					local Section = Components.Section(Tab.Name, Window.SearchPage, { LayoutOrder = Order })
					table.insert(Window.SearchSections, Section)

					for Index, Row in next, Matches do
						Row.Clip.Parent = Section.Container
						Row.Clip.LayoutOrder = Index
						table.insert(Window.MovedRows, Row)
						Found = Found + 1
					end
				end
			end

			Window.SearchEmpty.Visible = Found == 0
			Window:UpdateScrollShade()
		end

		local SearchToken = 0
		Creator.AddSignal(Window.SearchBox.Input:GetPropertyChangedSignal("Text"), function()
			SearchToken += 1
			local Token = SearchToken
			local Text = Window.SearchBox.Input.Text
			if Text == "" or Window:GetSearchHandler() then
				Window:Search(Text)
				return
			end
			task.delay(0.12, function()
				if Token == SearchToken then
					Window:Search(Window.SearchBox.Input.Text)
				end
			end)
		end)

		Creator.AddSignal(Window.SearchBox.Input.FocusLost, function(Entered)
			local Handler = Window:GetSearchHandler()

			if Entered and Handler and Handler.OnSubmit then
				Library:SafeCallback(Handler.OnSubmit, Window.SearchBox.Input.Text)
			end
		end)

		Library.Events.TabSelected:Connect(function()
			Window:ApplySearchHandler()
		end)

		local DialogModule = Components.Dialog:Init(Window)
		local MenuModule = Components.Menu:Init(Window)

		function Window:Menu(Config)
			return MenuModule:Create(Config)
		end

		function Window:Dialog(Config)
			local Host = DialogModule:ResolveHost(Config)
			local Dialog = DialogModule:Create({ Host = Host, DoNotBlur = Config.DoNotBlur })
			Dialog.Title.Text = Config.Title

			local WindowWidth = Host.Root.AbsoluteSize.X
			local Width = math.clamp(WindowWidth - 80, 300, 380)

			local Content = Label({
				Text = Config.Content or "",
				TextSize = 13,
				Weight = "Regular",
				Tag = "TextSecondary",
				TextWrapped = true,
				TextYAlignment = Enum.TextYAlignment.Top,
				Size = UDim2.new(1, -40, 0, 0),
				Position = UDim2.fromOffset(20, 50),
				Parent = Dialog.Root,
			})

			local Bounds = TextService:GetTextSize(
				Config.Content or "",
				13,
				Enum.Font.Gotham,
				Vector2.new(Width - 40, math.huge)
			)
			Content.Size = UDim2.new(1, -40, 0, Bounds.Y + 4)

			local Height = 50 + Bounds.Y + 4 + 84

			if Config.Bars then
				Dialog.Bars = {}

				for Index, BarConfig in ipairs(Config.Bars) do
					local Top = 50 + Bounds.Y + 4 + (Index - 1) * 46

					local Title = Label({
						Text = BarConfig.Title or "",
						TextSize = 12,
						Weight = "Medium",
						TextTruncate = Enum.TextTruncate.AtEnd,
						Size = UDim2.new(0.5, -20, 0, 16),
						Position = UDim2.fromOffset(20, Top + 4),
						Parent = Dialog.Root,
					})

					local Value = Label({
						Text = BarConfig.Value or "",
						TextSize = 12,
						Weight = "Medium",
						Tag = "TextSecondary",
						TextXAlignment = Enum.TextXAlignment.Right,
						TextTruncate = Enum.TextTruncate.AtEnd,
						Size = UDim2.new(0.5, -20, 0, 16),
						Position = UDim2.new(0.5, 0, 0, Top + 4),
						Parent = Dialog.Root,
					})

					local Fill = New("Frame", {
						Size = UDim2.fromScale(0, 1),
						ThemeTag = {
							BackgroundColor3 = "Accent",
						},
					}, {
						Corner(999),
					})

					New("Frame", {
						Size = UDim2.new(1, -40, 0, 6),
						Position = UDim2.fromOffset(20, Top + 26),
						BackgroundTransparency = 0.88,
						ClipsDescendants = true,
						Parent = Dialog.Root,
						ThemeTag = {
							BackgroundColor3 = "DialogHolderLine",
						},
					}, {
						Corner(999),
						Fill,
					})

					Dialog.Bars[Index] = {
						Title = Title,
						Value = Value,
						Fill = Fill,
					}
				end

				function Dialog:SetBar(Index, Alpha, Value, Title)
					local Bar = Dialog.Bars[Index]

					if not Bar then
						return
					end

					Creator.Tween(Bar.Fill, 0.2, { Size = UDim2.fromScale(math.clamp(Alpha, 0, 1), 1) })

					if Value then
						Bar.Value.Text = Value
					end

					if Title then
						Bar.Title.Text = Title
					end
				end

				Height = Height + #Config.Bars * 46
			end

			Dialog.Root.Size = UDim2.fromOffset(Width, Height)

			for Index, Button in next, Config.Buttons or {} do
				Dialog:Button(Button.Title, Button.Callback, Button.Variant, Button.Keep)
			end

			Dialog:Open()
			return Dialog
		end

		local function CreateCloseButton(Dialog: any): TextButton
			return New("TextButton", {
				Text = "",
				AnchorPoint = Vector2.new(1, 0),
				Size = UDim2.fromOffset(28, 28),
				Position = UDim2.new(1, -14, 0, 14),
				BackgroundTransparency = 1,
				Parent = Dialog.Root,
				ThemeTag = {
					BackgroundColor3 = "Hover",
				},
			}, {
				Corner(999),
				Label({
					Text = "×",
					TextSize = 20,
					Tag = "SubText",
					TextXAlignment = Enum.TextXAlignment.Center,
					Size = UDim2.fromScale(1, 1),
				}),
			})
		end

		function Window:PagedDialog(Config: { [string]: any }): any
			local Pages: { any } = Config.Pages or {}
			local Total: number = #Pages
			if Total == 0 then
				return nil
			end

			local Host = DialogModule:ResolveHost(Config)
			local Dialog = DialogModule:Create({ Host = Host, DoNotBlur = Config.DoNotBlur })
			Dialog.Title.Text = Config.Title or ""
			Dialog.Title.Size = UDim2.new(1, -110, 0, 20)

			local WindowSize = Host.Root.AbsoluteSize
			local Width: number = math.clamp(WindowSize.X - 80, 320, 460)
			local Height: number = math.clamp(WindowSize.Y - 60, 300, 440)
			Dialog.Root.Size = UDim2.fromOffset(Width, Height)

			local Counter = Label({
				Text = "",
				TextSize = 12,
				Tag = "SubText",
				TextXAlignment = Enum.TextXAlignment.Right,
				AnchorPoint = Vector2.new(1, 0),
				Size = UDim2.fromOffset(70, 16),
				Position = UDim2.new(1, -52, 0, 20),
				Parent = Dialog.Root,
			})

			local CloseButton = CreateCloseButton(Dialog)

			local Body = New("ScrollingFrame", {
				Position = UDim2.fromOffset(20, 52),
				Size = UDim2.new(1, -40, 0, Height - 136),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasSize = UDim2.new(),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				Parent = Dialog.Root,
			}, {
				New("UIListLayout", {
					Padding = UDim.new(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				New("UIPadding", {
					PaddingRight = UDim.new(0, 8),
				}),
			})

			local Dots: { any } = {}
			local DotHolder = New("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 1, -76),
				Size = UDim2.fromOffset(0, 6),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				Parent = Dialog.Root,
			}, {
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 5),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
			})

			for Index = 1, Total do
				Dots[Index] = New("Frame", {
					Size = UDim2.fromOffset(6, 6),
					LayoutOrder = Index,
					BackgroundTransparency = 0.7,
					Parent = DotHolder,
					ThemeTag = {
						BackgroundColor3 = "Accent",
					},
				}, {
					Corner(999),
				})
			end

			local function Copy(Text: string): boolean
				local Copier: any = setclipboard or toclipboard or (Clipboard and Clipboard.set)
				if type(Copier) ~= "function" then
					return false
				end
				return pcall(Copier, Text)
			end

			local function AddBlock(Block: any, Order: number)
				if type(Block) == "string" then
					Label({
						Text = Block,
						TextSize = 13,
						Weight = "Regular",
						Tag = "TextSecondary",
						TextWrapped = true,
						TextYAlignment = Enum.TextYAlignment.Top,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = Order,
						Parent = Body,
					})
				elseif type(Block) == "table" and Block.Heading then
					Label({
						Text = Block.Heading,
						TextSize = 14,
						Weight = "SemiBold",
						TextWrapped = true,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = Order,
						Parent = Body,
					})
				elseif type(Block) == "table" and Block.Code then
					local Box = New("TextButton", {
						Text = "",
						AutoButtonColor = false,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 0.9,
						LayoutOrder = Order,
						Parent = Body,
						ThemeTag = {
							BackgroundColor3 = "Hover",
						},
					}, {
						Corner(10),
						New("UIPadding", {
							PaddingTop = UDim.new(0, 9),
							PaddingBottom = UDim.new(0, 9),
							PaddingLeft = UDim.new(0, 10),
							PaddingRight = UDim.new(0, 10),
						}),
						New("UIListLayout", {
							Padding = UDim.new(0, 4),
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
					})

					New("TextLabel", {
						Font = Enum.Font.Code,
						Text = Block.Code,
						TextSize = 12,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 1,
						Parent = Box,
						ThemeTag = {
							TextColor3 = "Text",
						},
					})

					local Hint = Label({
						Text = "Tap to copy",
						TextSize = 11,
						Weight = "Regular",
						Tag = "SubText",
						Size = UDim2.new(1, 0, 0, 14),
						LayoutOrder = 2,
						Parent = Box,
					})

					Creator.AddGuarded(Box, "MouseButton1Click", function()
						Hint.Text = if Copy(Block.Code) then "Copied" else "Clipboard is not available here"
					end)
				end
			end

			local Current: number = 0
			local Closed: boolean = false

			local function Close()
				if Closed then
					return
				end
				Closed = true
				task.spawn(function()
					pcall(function()
						Dialog:Close()
					end)
				end)
				if Config.OnClose then
					Library:SafeCallback(Config.OnClose)
				end
			end

			local Back = Components.Button({
				Text = "Back",
				Variant = "Tonal",
				Height = 40,
				Size = UDim2.new(0.5, -5, 0, 40),
				Parent = Dialog.ButtonHolder,
				LayoutOrder = 1,
				IgnoreDialog = true,
			})

			local Next = Components.Button({
				Text = "Next",
				Variant = "Primary",
				Height = 40,
				Size = UDim2.new(0.5, -5, 0, 40),
				Parent = Dialog.ButtonHolder,
				LayoutOrder = 2,
				IgnoreDialog = true,
			})

			local function Show(Index: number)
				Current = math.clamp(Index, 1, Total)
				local Page = Pages[Current]

				for _, Child in next, Body:GetChildren() do
					if Child:IsA("GuiObject") then
						Child:Destroy()
					end
				end

				AddBlock({ Heading = Page.Title or "" }, 0)
				for Order, Block in ipairs(Page.Blocks or {}) do
					AddBlock(Block, Order)
				end
				Body.CanvasPosition = Vector2.zero

				Counter.Text = Current .. " / " .. Total
				for DotIndex, Dot in ipairs(Dots) do
					local Active = DotIndex == Current
					Dot.Size = UDim2.fromOffset(Active and 16 or 6, 6)
					Dot.BackgroundTransparency = Active and 0 or 0.7
				end

				Back.Frame.Visible = Current > 1
				Next.Frame.Size = if Current > 1 then UDim2.new(0.5, -5, 0, 40) else UDim2.new(1, 0, 0, 40)
				Next.Title.Text = if Current == Total then "Done" else "Next"
			end

			Creator.AddGuarded(Back.Frame, "MouseButton1Click", function()
				Show(Current - 1)
			end)

			Creator.AddGuarded(Next.Frame, "MouseButton1Click", function()
				if Current >= Total then
					Close()
				else
					Show(Current + 1)
				end
			end)

			Creator.AddGuarded(CloseButton, "MouseButton1Click", Close)

			Show(1)
			Dialog:Open()

			Dialog.Show = Show
			Dialog.Dismiss = Close
			return Dialog
		end

		function Window:Modal(Config: { [string]: any }): any
			Config = Config or {}

			local Host = DialogModule:ResolveHost(Config)
			local Modal = DialogModule:Create({ Host = Host, DoNotBlur = Config.DoNotBlur })
			Modal.Title.Text = Config.Title or "Modal"

			local Closable: boolean = Config.Closable ~= false
			local Width: number = Config.Width or math.clamp(Host.Root.AbsoluteSize.X - 80, 320, 420)
			local ContentHeight: number = 0

			if Closable then
				Modal.Title.Size = UDim2.new(1, -70, 0, 20)
			end

			if Config.Content and Config.Content ~= "" then
				local Bounds = TextService:GetTextSize(Config.Content, 13, Enum.Font.Gotham, Vector2.new(Width - 40, math.huge))
				ContentHeight = Bounds.Y + 4

				Label({
					Text = Config.Content,
					TextSize = 13,
					Weight = "Regular",
					Tag = "TextSecondary",
					TextWrapped = true,
					TextYAlignment = Enum.TextYAlignment.Top,
					Size = UDim2.new(1, -40, 0, ContentHeight),
					Position = UDim2.fromOffset(20, 50),
					Parent = Modal.Root,
				})
			end

			local BodyTop: number = if ContentHeight > 0 then 62 + ContentHeight else 52

			local BodyLayout = New("UIListLayout", {
				Padding = UDim.new(0, 12),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local Body = New("ScrollingFrame", {
				Position = UDim2.fromOffset(20, BodyTop),
				Size = UDim2.new(1, -40, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				BottomImage = Components.Assets.ScrollBottom,
				MidImage = Components.Assets.ScrollMid,
				TopImage = Components.Assets.ScrollTop,
				CanvasSize = UDim2.new(),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				Parent = Modal.Root,
				ThemeTag = {
					ScrollBarImageColor3 = "ScrollBar",
				},
			}, {
				BodyLayout,
			})

			local function Resize()
				local Footer: number = if Modal.Buttons > 0 then 74 else 20
				local Limit: number = math.max(120, Host.Root.AbsoluteSize.Y - 60 - BodyTop - Footer)
				local Height: number = math.min(BodyLayout.AbsoluteContentSize.Y, Limit)
				Body.Size = UDim2.new(1, -40, 0, Height)
				Modal.Root.Size = UDim2.fromOffset(Width, BodyTop + Height + Footer)
				Modal:Refit()
			end

			Modal.Type = "Modal"
			Modal.ClassType = "Dialog"
			Modal.AllowNested = true
			Modal.Library = Library
			Modal.Container = Body
			Modal.ScrollFrame = Body
			Modal.Order = 0
			Modal.Holders = {}
			Modal.Closed = false

			local function Owns(Option: any): boolean
				local Row = Option.Row
				local Holder = Row and Row.Home
				while Holder do
					if Modal.Holders[Holder] then
						return true
					end
					Holder = Holder.Up
				end
				return false
			end

			local function Release()
				for Key, Option in next, Library.Options do
					if Owns(Option) then
						if Option.Destroy then
							pcall(Option.Destroy, Option)
						end
						Library.Options[Key] = nil
					end
				end
				for Holder in next, Modal.Holders do
					Holder:Destroy()
				end
				table.clear(Modal.Holders)
			end

			local function NewHolder(Title: string?, SectionConfig: { [string]: any }): any
				local Holder = Components.Section(Title, Body, {
					LayoutOrder = Modal:NextOrder(),
					Icon = SectionConfig.Icon,
					IconColor = SectionConfig.IconColor,
					IconSize = SectionConfig.IconSize,
					Accordion = SectionConfig.Accordion,
					Collapsed = SectionConfig.Collapsed,
					Callback = SectionConfig.Callback,
					Depth = 0,
					InModal = true,
				})
				Modal.Holders[Holder] = true
				return Holder
			end

			function Modal:NextOrder(): number
				Modal.Order += 1
				return Modal.Order
			end

			function Modal:GetHolder(): any
				if not Modal.Implicit then
					Modal.Implicit = NewHolder("", {})
				end
				return Modal.Implicit
			end

			function Modal:AddSection(Title: any, SectionConfig: { [string]: any }?): any
				if type(Title) == "table" then
					SectionConfig = Title
					Title = SectionConfig.Title
				end
				Modal.Implicit = nil
				return Components.SectionApi(NewHolder(Title, SectionConfig or {}), Modal, Body)
			end

			function Modal:GetValues(): { [string]: any }
				local Values = {}
				for Key, Option in next, Library.Options do
					if Owns(Option) then
						Values[Key] = Option.Value
					end
				end
				return Values
			end

			function Modal:SetTitle(Value: string)
				Modal.Title.Text = Value or ""
			end

			local BaseButton = Modal.Button
			function Modal:Button(Title: string?, Callback: any?, Variant: string?, Keep: boolean?): any
				local Button = BaseButton(Modal, Title, Callback, Variant, Keep)
				Resize()
				return Button
			end

			local BaseClose = Modal.Close
			function Modal:Close()
				if Modal.Closed then
					return
				end
				Modal.Closed = true
				Library:ClosePopups()
				task.spawn(function()
					BaseClose(Modal)
					Release()
					Library:SafeCallback(Config.OnClose, Modal)
				end)
			end

			setmetatable(Modal, Library.Elements)

			Modal.Root.Active = true

			if Closable then
				Creator.AddGuarded(CreateCloseButton(Modal), "MouseButton1Click", function()
					Modal:Close()
				end)
			end

			if Config.Dismissable then
				Creator.AddGuarded(Modal.TintFrame, "MouseButton1Click", function()
					Modal:Close()
				end)
			end

			Creator.AddSignal(BodyLayout:GetPropertyChangedSignal("AbsoluteContentSize"), Resize)

			if not Modal.Ghost then
				Library:SafeCallback(Config.Build, Modal)
			end

			for _, Entry in next, Config.Buttons or {} do
				Modal:Button(Entry.Title, Entry.Callback, Entry.Variant, Entry.Keep)
			end

			Resize()
			Modal:Open()
			return Modal
		end

		local TabModule = Components.Tab:Init(Window)

		function Window:AddTab(TabConfig)
			local Placement = string.lower(tostring(TabConfig.Placement or "sidebar"))
			if Placement:find("header") then
				return Window:AddTabInHeader(TabConfig)
			end
			local Tab = TabModule:New(TabConfig.Title, TabConfig.Icon, TabModule.Options(TabConfig, {
				Kind = "Root",
				IconColor = TabConfig.IconColor,
			}))
			Window:UpdateSelection(true)
			return Tab
		end

		function Window:AddTabInHeader(TabConfig)
			return TabModule:New(TabConfig.Title, TabConfig.Icon, TabModule.Options(TabConfig, {
				Kind = "Header",
				IconColor = TabConfig.IconColor,
				SidebarTitle = TabConfig.SidebarTitle,
				SidebarCollapsed = TabConfig.SidebarCollapsed,
			}))
		end

		function Window:AddBarButtonAction(ActionConfig)
			Window.ActionCount = Window.ActionCount + 1
			local Callback = ActionConfig.Callback
			local Toggle = ActionConfig.Toggle == true
			local Action

			Action = Window.TitleBar.CreateAction(
				Resolve(ActionConfig.Icon, "TitleBar", ActionConfig) or "",
				function()
					if Toggle then
						Action:SetValue(not Action.Value)
					else
						Library:SafeCallback(Callback)
					end
				end,
				ActionConfig.Color,
				ActionConfig.Visible
			)

			function Action:SetIcon(Value)
				local Image = Resolve(Value, "TitleBar")
				Creator.SetImage(Action.Button.Icon, Image)
				Creator.SetImage(Action.Glyph, Image)
			end

			if Toggle then
				Action.Value = false

				function Action:SetValue(Value: boolean, Silent: boolean?)
					Value = Value == true
					if Action.Value == Value then
						return
					end

					Action.Value = Value
					Action:SetToggled(Value)

					if not Silent then
						Library:SafeCallback(Callback, Value)
					end
				end

				function Action:GetValue(): boolean
					return Action.Value
				end

				function Action:Toggle()
					Action:SetValue(not Action.Value)
				end

				function Action:SetCallback(Func)
					Callback = Func
				end

				if ActionConfig.Default == true then
					Action:SetValue(true, true)
				end
			end

			Library.Events.ActionAdded:Fire(Action)
			return Action
		end

		function Window:AddBarButtonToggle(ActionConfig)
			local Config = table.clone(ActionConfig)
			Config.Toggle = true
			return Window:AddBarButtonAction(Config)
		end

		Window.FooterButtons = {}
		Window.FooterHeight = 0

		function Window:UpdateFooter()
			local Collapsed = Window.SidebarCollapsed
			local Count = 0

			for _, Entry in Window.FooterButtons do
				local Visible = Entry.Header == nil or Entry.Header == Window.CurrentHeader
				Entry.Button.Visible = Visible
				Entry.Label.Visible = not Collapsed
				Entry.Icon.AnchorPoint = Collapsed and Vector2.new(0.5, 0.5) or Vector2.new(0, 0.5)
				Entry.Icon.Position = Collapsed and UDim2.new(0, (Window.CollapsedWidth - 24) / 2, 0.5, 0) or UDim2.new(0, 10, 0.5, 0)
				if Visible then
					Count += 1
				end
			end

			local Height = Count > 0 and (Count * 36 + 8) or 0
			Window.FooterHeight = Height

			if Window.Footer then
				Window.Footer.Visible = Count > 0
				Window.Footer.Size = UDim2.new(1, 0, 0, Height)
			end

			Window.TabScroll.Size = UDim2.new(1, 0, 1, -(88 + Height))
		end

		function Window:AddFooterButton(Config)
			if not Window.Footer then
				Window.Footer = New("Frame", {
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.fromScale(0, 1),
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					Visible = false,
					Parent = Window.SidebarInner,
				}, {
					New("Frame", {
						Size = UDim2.new(1, 0, 0, 1),
						BackgroundTransparency = 0.9,
						ThemeTag = {
							BackgroundColor3 = "TitleBarLine",
						},
					}),
					New("UIListLayout", {
						Padding = UDim.new(0, 4),
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Bottom,
					}),
				})
			end

			local Danger = Config.Danger
			local Entry = { Header = Config.Header }

			Entry.Icon = New("ImageLabel", {
				Image = Resolve(Config.Icon, "Tab", Config) or "",
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 10, 0.5, 0),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = Danger and "Danger" or "TextSecondary",
				},
			})

			Entry.Label = Label({
				Text = Config.Title or "",
				TextSize = 12,
				Weight = "Medium",
				Tag = Danger and "Danger" or "TextSecondary",
				Size = UDim2.new(1, -38, 1, 0),
				Position = UDim2.fromOffset(34, 0),
				TextTruncate = Enum.TextTruncate.AtEnd,
			})

			Entry.Button = New("TextButton", {
				Size = UDim2.new(1, 0, 0, 32),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = #Window.FooterButtons + 1,
				Parent = Window.Footer,
				ThemeTag = {
					BackgroundColor3 = Danger and "Danger" or "Hover",
				},
			}, {
				Corner(8),
				Entry.Icon,
				Entry.Label,
			})

			local _, Set = Creator.SpringMotor(1, Entry.Button, "BackgroundTransparency", true)
			Creator.OnHoverEnter(Entry.Button, function()
				Set(Danger and 0.9 or Creator.GetThemeProperty("HoverTransparency"))
			end)
			Creator.OnHoverLeave(Entry.Button, function()
				Set(1)
			end)
			Creator.AddGuarded(Entry.Button, "MouseButton1Click", function()
				Library:SafeCallback(Config.Callback)
			end)

			table.insert(Window.FooterButtons, Entry)
			Window:UpdateFooter()

			function Entry:SetTitle(Value)
				Entry.Label.Text = Value
			end

			function Entry:SetVisible(Value)
				Entry.Hidden = not Value
				Entry.Button.Visible = Value
			end

			return Entry
		end

		function Window:SelectTab(Tab)
			TabModule:SelectTab(Tab or 1)
		end

		Window.RootList.ChildAdded:Connect(function()
			task.defer(function()
				Window:UpdateSelection(true)
			end)
		end)

		function Window:ShowNavTip(Tab)
			Window.NavTipLabel.Text = Tab.Name
			local Offset = Tab.Frame.AbsolutePosition - Window.Root.AbsolutePosition
			local OnLeft = Window.NavPosition == "Left"
			Window.NavTip.AnchorPoint = Vector2.new(OnLeft and 0 or 1, 0.5)
			Window.NavTip.Position = UDim2.fromOffset(
				OnLeft and (Offset.X + Tab.Frame.AbsoluteSize.X + 10) or (Offset.X - 10),
				Offset.Y + Tab.Frame.AbsoluteSize.Y / 2
			)
			Window.NavTip.Visible = true
		end

		function Window:HideNavTip()
			Window.NavTip.Visible = false
		end

		function Window:ApplyLayout()
			local Mac = Window.LayoutMode == "MacOS"
			local Position = Window.NavPosition
			local Vertical = Position == "Left" or Position == "Right"
			local TitleHeight = Mac and 50 or 58
			local BarSize = 52
			local Bar = Window.TitleBar
			local Nav = Bar.Nav
			local List = Bar.TabList
			local ListLayout = List:FindFirstChildOfClass("UIListLayout")
			local Indicator = Bar.Indicator
			local Padding = Nav:FindFirstChildOfClass("UIPadding")

			Window.NavVertical = Vertical
			Bar.Frame.Size = UDim2.new(1, 0, 0, TitleHeight)
			Bar:SetLayout(Window.LayoutMode)

			Window.NavBar.Visible = Position == "Bottom"
			Window.NavRail.Visible = Vertical
			Window.NavRail.AnchorPoint = Vector2.new(Position == "Right" and 1 or 0, 0)
			Window.NavRail.Position = UDim2.new(Position == "Right" and 1 or 0, 0, 0, TitleHeight)
			Window.NavRail.Size = UDim2.new(0, BarSize, 1, -TitleHeight)
			local Separator = Window.NavSeparator
			Separator.AnchorPoint = Vector2.new(Position == "Right" and 0 or 1, 0)
			Separator.Position = UDim2.fromScale(Position == "Right" and 0 or 1, 0)

			if Vertical then
				Nav.Parent = Window.NavRail
				Nav.AutomaticSize = Enum.AutomaticSize.Y
				Nav.Size = UDim2.fromOffset(40, 6)
				Nav.AnchorPoint = Vector2.new(0.5, 0)
				Nav.Position = UDim2.new(0.5, 0, 0, 10)
				Padding.PaddingRight = UDim.new(0, 0)
				List.AutomaticSize = Enum.AutomaticSize.Y
				List.Size = UDim2.fromOffset(40, 0)
				List.Position = UDim2.fromOffset(0, 0)
				ListLayout.FillDirection = Enum.FillDirection.Vertical
				ListLayout.Padding = UDim.new(0, 4)
				Indicator.AnchorPoint = Vector2.new(0.5, 0.5)
				Indicator.Size = UDim2.fromOffset(2, 22)
			else
				Nav.Parent = Position == "Bottom" and Window.NavBar or Bar.Frame
				Nav.AutomaticSize = Enum.AutomaticSize.X
				Nav.Size = UDim2.fromOffset(6, 38)
				Nav.AnchorPoint = Vector2.new(0.5, 0.5)
				Nav.Position = UDim2.fromScale(0.5, 0.5)
				Padding.PaddingRight = UDim.new(0, 3)
				List.AutomaticSize = Enum.AutomaticSize.X
				List.Size = UDim2.fromOffset(0, 28)
				List.Position = UDim2.fromOffset(3, 3)
				ListLayout.FillDirection = Enum.FillDirection.Horizontal
				ListLayout.Padding = UDim.new(0, 2)
				Indicator.AnchorPoint = Vector2.new(0.5, 0)
				Indicator.Size = UDim2.fromOffset(26, 2)
			end

			local Left = Position == "Left" and BarSize or 0
			local Right = Position == "Right" and BarSize or 0
			local Bottom = Position == "Bottom" and BarSize or 4
			Window.Body.Position = UDim2.fromOffset(Left, TitleHeight)
			Window.Body.Size = UDim2.new(1, -(Left + Right), 1, -(TitleHeight + Bottom))

			for _, Tab in next, Components.Tab.Tabs do
				if Tab.Kind == "Header" then
					Tab:SetOrientation(Vertical)
				end
			end

			Window:HideNavTip()
			Window:UpdateSelection(true)
			task.defer(function()
				Window:UpdateSelection(true)
			end)
		end

		function Window:SetLayout(Value)
			local Key = string.lower(tostring(Value or "Fluent"))
			Window.LayoutMode = (Key == "macos" or Key == "mac") and "MacOS" or "Fluent"
			Library.Layout = Window.LayoutMode
			Window:ApplyLayout()
		end

		function Window:GetLayout()
			return Window.LayoutMode
		end

		function Window:SetNavPosition(Value)
			Window.NavPosition = NormalizePosition(Value)
			Library.NavPosition = Window.NavPosition
			Window:ApplyLayout()
		end

		function Window:SetNotificationPosition(Value)
			return Library:SetNotificationPosition(Value)
		end

		function Window:GetNotificationPosition()
			return Library.NotificationPosition
		end

		function Window:SetNavLabelMode(Value)
			local Key = string.lower(tostring(Value or "Hover"))
			Window.ShowTabLabels = (Key == "always" and "Always") or (Key == "selected" and "Selected") or "Hover"
			Library.NavLabelMode = Window.ShowTabLabels
			for _, Tab in next, Components.Tab.Tabs do
				if Tab.Kind == "Header" then
					Tab:UpdateLabel()
				end
			end
		end

		function Window:SetTitleIcon(Icon, Options)
			Window.TitleBar:SetIcon(Icon, Options)
		end

		function Window:SetTitleText(Value)
			Window.TitleBar.Title.Text = Value or ""
		end

		function Window:SetTitleTextVisible(Value)
			Window.TitleBar.Title.Visible = Value and true or false
		end

		function Window:SetSubTitle(Value)
			Window.TitleBar.SubTitle.Text = Value or ""
			Window.TitleBar.SubTitle.Visible = Window.SubTitleShown ~= false and (Value or "") ~= ""
		end

		function Window:SetSubTitleVisible(Value)
			Window.SubTitleShown = Value and true or false
			Window.TitleBar.SubTitle.Visible = Window.SubTitleShown and Window.TitleBar.SubTitle.Text ~= ""
		end

		local RootCorner = Window.Root:FindFirstChildOfClass("UICorner")
		local RootStroke = Window.Root:FindFirstChildOfClass("UIStroke")
		local RainbowGradient = New("UIGradient", {
			Enabled = false,
			Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 69, 58)),
				ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 214, 10)),
				ColorSequenceKeypoint.new(0.4, Color3.fromRGB(50, 215, 75)),
				ColorSequenceKeypoint.new(0.6, Color3.fromRGB(100, 210, 255)),
				ColorSequenceKeypoint.new(0.8, Color3.fromRGB(191, 90, 242)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 69, 58)),
			}),
			Parent = RootStroke,
		})
		local RainbowConnection

		local function ApplyBorderColor()
			if Window.Rainbow then
				Creator.RemoveTag(RootStroke)
				RootStroke.Color = Color3.new(1, 1, 1)
				RootStroke.Transparency = 0
			elseif Window.BorderColor then
				Creator.RemoveTag(RootStroke)
				RootStroke.Color = Window.BorderColor
				RootStroke.Transparency = 0
			else
				Creator.OverrideTag(RootStroke, {
					Color = "AcrylicBorder",
				})
				RootStroke.Transparency = (Library.UseAcrylic and Library.Acrylic) and 0.5 or 0
			end
		end

		function Window:ApplyPaint()
			local Paint = Window.Paint
			local Active = Library.UseAcrylic and Library.Acrylic and true or false
			local Visibility = Window.Opacity * (if Library.Transparency then 0.92 else 1)

			local function Scale(Transparency: number): number
				return 1 - (1 - Transparency) * Visibility
			end

			Paint.Base.BackgroundTransparency = if Active then Scale(0.9) else 1
			Paint.Main.BackgroundTransparency = if Active then Scale(0.45) else 1
			Paint.Fill.BackgroundTransparency = Scale(if Active then 0.4 else 0)
			Paint.Grain.Visible = Active
			Paint.Noise.Visible = Active
			Paint.Grain.ImageTransparency = 0.98

			if Window.AcrylicBlur then
				Window.AcrylicBlur.SetVisibility(Window.Root.Visible)
			end
			if not Window.Rainbow and not Window.BorderColor then
				RootStroke.Transparency = if Active then 0.5 else 0
			end
		end

		function Window:SetCornerRadius(Value)
			Window.CornerRadius = math.clamp(tonumber(Value) or 13, 0, 24)
			RootCorner.CornerRadius = UDim.new(0, Window.CornerRadius)
			Window.Paint:SetRadius(Window.CornerRadius)
			if Window.AcrylicBlur then
				Window.AcrylicBlur.SetRadius(Window.CornerRadius)
			end
			if Window.BgCorner then
				Library.Background.LayoutKey = nil
				Library.Background:ApplyLayout()
			end
		end

		function Window:SetBorder(Thickness, Color)
			Window.BorderThickness = math.clamp(tonumber(Thickness) or 1, 0, 4)
			RootStroke.Thickness = Window.BorderThickness
			Window.BorderColor = Color
			ApplyBorderColor()
		end

		function Window:SetRainbowBorder(Value)
			Window.Rainbow = Value and true or false
			RainbowGradient.Enabled = Window.Rainbow
			ApplyBorderColor()
			if Window.Rainbow and not RainbowConnection then
				RainbowConnection = Creator.AddSignal(Heartbeat, function()
					RainbowGradient.Rotation = (os.clock() * 90) % 360
				end)
			elseif not Window.Rainbow and RainbowConnection then
				RainbowConnection:Disconnect()
				RainbowConnection = nil
			end
		end

		function Window:SetOpacity(Value)
			Window.Opacity = math.clamp(tonumber(Value) or 1, 0.2, 1)
			Window:ApplyPaint()
			if Library.Background and Library.Background.Layer then
				Library.Background:Refresh()
			end
		end

		function Window:SetPanelDepth(Value)
			Library:SetPanelDepth(Value)
		end

		function Window:SetIconHue(Value)
			Library:SetIconHue(Value)
		end

		function Window:SetIconStyle(Value)
			Library:SetIconStyle(Value)
		end

		function Window:SetColorfulIcons(Value)
			Library:SetColorfulIcons(Value)
		end

		function Window:GetAppearance()
			return {
				Layout = Window.LayoutMode,
				NavPosition = Window.NavPosition,
				NavLabelMode = Window.ShowTabLabels,
				NotificationPosition = Library.NotificationPosition,
				ColorfulIcons = Library.ColorfulIcons,
				IconHue = Library.IconHue,
				IconStyle = Library.IconStyle,
				PanelDepth = Library.PanelDepth,
				HoverStyle = Library.HoverStyle,
				CornerRadius = Window.CornerRadius,
				BorderThickness = Window.BorderThickness or RootStroke.Thickness,
				BorderColor = Window.BorderColor,
				RainbowBorder = Window.Rainbow or false,
				Opacity = Window.Opacity,
				TitleTextVisible = Window.TitleBar.Title.Visible,
				SubTitleVisible = Window.SubTitleShown ~= false,
			}
		end

		function Window:ApplyAppearance(Data)
			if type(Data) ~= "table" then
				return
			end
			if Data.CornerRadius ~= nil then
				Window:SetCornerRadius(Data.CornerRadius)
			end
			if Data.BorderThickness ~= nil or Data.BorderColor ~= nil then
				Window:SetBorder(Data.BorderThickness or Window.BorderThickness or 1, Data.BorderColor)
			end
			if Data.RainbowBorder ~= nil then
				Window:SetRainbowBorder(Data.RainbowBorder)
			end
			if Data.Opacity ~= nil then
				Window:SetOpacity(Data.Opacity)
			end
			if Data.IconStyle ~= nil then
				Library:SetIconStyle(Data.IconStyle)
			end
			if Data.ColorfulIcons ~= nil then
				Library:SetColorfulIcons(Data.ColorfulIcons)
			end
			if Data.IconHue ~= nil then
				Library:SetIconHue(Data.IconHue)
			end
			if Data.PanelDepth ~= nil then
				Library:SetPanelDepth(Data.PanelDepth)
			end
			if Data.HoverStyle ~= nil then
				Library:SetHoverStyle(Data.HoverStyle)
			end
			if Data.NavLabelMode ~= nil then
				Window:SetNavLabelMode(Data.NavLabelMode)
			end
			if Data.NotificationPosition ~= nil then
				Library:SetNotificationPosition(Data.NotificationPosition)
			end
			if Data.TitleTextVisible ~= nil and not Library.LockIdentity then
				Window:SetTitleTextVisible(Data.TitleTextVisible)
			end
			if Data.SubTitleVisible ~= nil and not Library.LockIdentity then
				Window:SetSubTitleVisible(Data.SubTitleVisible)
			end
			if Data.Layout ~= nil then
				Window.LayoutMode = (string.lower(tostring(Data.Layout)) == "macos") and "MacOS" or "Fluent"
				Library.Layout = Window.LayoutMode
			end
			if Data.NavPosition ~= nil then
				Window.NavPosition = NormalizePosition(Data.NavPosition)
				Library.NavPosition = Window.NavPosition
			end
			Window:ApplyLayout()
		end

		Window.NavPosition = NormalizePosition(Config.NavPosition or Library.NavPosition)
		if Config.NavLabelMode then
			Window:SetNavLabelMode(Config.NavLabelMode)
		end
		Window:ApplyLayout()
		Window:ApplyPaint()

		return Window
	end
end)()

Components.PopUp = (function()
	local Assets = Components.Assets

	local PopUpModule = {
		Stack = {},
		Count = 0,
	}

	local HeaderHeight = 48
	local DefaultTabWidth = 150
	local BaseZIndex = 5
	local MaxStack = 35
	local DefaultSize = Vector2.new(520, 400)
	local DefaultMinSize = Vector2.new(360, 240)
	local DefaultMaximizeSize = Vector2.new(760, 560)

	local function ParseSize(Value: any, Fallback: Vector2?): Vector2?
		local Kind = typeof(Value)
		if Kind == "UDim2" then
			return Vector2.new(Value.X.Offset, Value.Y.Offset)
		elseif Kind == "Vector2" then
			return Value
		elseif Kind == "string" then
			local Width, Height = string.match(Value, "(%d+%.?%d*)%s*[xX%*]%s*(%d+%.?%d*)")
			if Width and Height then
				return Vector2.new(tonumber(Width) :: number, tonumber(Height) :: number)
			end
		elseif Kind == "table" then
			local Width = tonumber(Value[1] or Value.Width or Value.X)
			local Height = tonumber(Value[2] or Value.Height or Value.Y)
			if Width and Height then
				return Vector2.new(Width, Height)
			end
		end
		return Fallback
	end

	return function(Config)
		Config = Config or {}
		assert(Config.Title, "PopUp - Missing Title")

		PopUpModule.Count += 1

		local Parent = Config.Parent or Library.GUI
		local Radius = math.clamp(tonumber(Config.CornerRadius) or 13, 0, 24)
		local InitialSize = ParseSize(Config.Size, DefaultSize) :: Vector2
		local MinSize = ParseSize(Config.MinSize, DefaultMinSize) :: Vector2
		local Connections = {}

		local FallbackMaximize = Vector2.new(math.max(DefaultMaximizeSize.X, InitialSize.X), math.max(DefaultMaximizeSize.Y, InitialSize.Y))

		local PopUp = {
			Type = "PopUp",
			ClassType = "Dialog",
			Id = Config.Id or `PopUp{PopUpModule.Count}`,
			Name = Config.Title,
			Library = Library,
			Tabs = {},
			Selected = nil,
			Opened = false,
			Maximized = false,
			Minimized = false,
			Minimizable = Config.Minimizable ~= false,
			DoNotBlur = Config.DoNotBlur,
			MinimizeKey = Config.MinimizeKey,
			MinimizeKeybind = Config.MinimizeKeybind,
			IsResizing = false,
			IsDragging = false,
			Destroyed = false,
			Opacity = 1,
			ResizeAble = Config.ResizeAble == true,
			Draggable = Config.Draggable ~= false,
			MaximizeSize = ParseSize(Config.MaximizeSize, FallbackMaximize),
			DefaultMaximizeSize = FallbackMaximize,
			Actions = {},
			ActionCount = 0,
			MinSize = Vector2.new(math.min(MinSize.X, InitialSize.X), math.min(MinSize.Y, InitialSize.Y)),
			PillPending = false,
			SwitchToken = 0,
			TabWidth = tonumber(Config.TabWidth) or DefaultTabWidth,
		}

		local function Track(Signal, Callback)
			local Connection = Creator.AddSignal(Signal, Callback)
			table.insert(Connections, Connection)
			return Connection
		end

		local function GetViewport(): Vector2
			local Absolute = Parent.AbsoluteSize
			if Absolute.X > 0 and Absolute.Y > 0 then
				return Absolute
			end
			local CurrentCamera = Workspace.CurrentCamera
			return CurrentCamera and CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
		end

		local function LimitSize(Value: Vector2): Vector2
			local View = GetViewport()
			local Maximum = PopUp.MaximizeSize or View
			local MaxX = math.max(math.min(Maximum.X, View.X), PopUp.MinSize.X)
			local MaxY = math.max(math.min(Maximum.Y, View.Y), PopUp.MinSize.Y)
			return Vector2.new(
				math.clamp(Value.X, PopUp.MinSize.X, MaxX),
				math.clamp(Value.Y, PopUp.MinSize.Y, MaxY)
			)
		end

		local function LimitPosition(Position: Vector2, Size: Vector2): Vector2
			local View = GetViewport()
			local MinX = 80 - Size.X
			return Vector2.new(
				math.clamp(Position.X, MinX, math.max(View.X - 80, MinX)),
				math.clamp(Position.Y, 0, math.max(View.Y - 44, 0))
			)
		end

		local function InsidePosition(Position: Vector2, Size: Vector2): Vector2
			local View = GetViewport()
			return Vector2.new(
				math.clamp(Position.X, 0, math.max(View.X - Size.X, 0)),
				math.clamp(Position.Y, 0, math.max(View.Y - Size.Y, 0))
			)
		end

		local Size = LimitSize(InitialSize)
		local View = GetViewport()
		local Shift = (PopUpModule.Count % 6) * 26
		local Position = ParseSize(Config.Position, nil)
			or Vector2.new((View.X - Size.X) / 2 + Shift, (View.Y - Size.Y) / 2 + Shift)
		Position = LimitPosition(Position, Size)

		PopUp.RootCorner = Corner(Radius)
		PopUp.RootStroke = New("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ThemeTag = {
				Color = "AcrylicBorder",
			},
		})

		PopUp.Root = New("Frame", {
			Name = "PopUp",
			Size = UDim2.fromOffset(Size.X, Size.Y),
			Position = UDim2.fromOffset(Position.X, Position.Y),
			BackgroundTransparency = 1,
			Active = true,
			Visible = false,
			ZIndex = BaseZIndex,
			Parent = Parent,
		}, {
			PopUp.RootCorner,
			PopUp.RootStroke,
		})
		Creator.RegisterSurface(PopUp.Root)

		PopUp.CornerRadius = Radius
		Library.DialogHosts[PopUp.Root] = PopUp

		PopUp.Paint = CreateWindowPaint(Radius)
		PopUp.Paint.Frame.Parent = PopUp.Root

		local function CurrentSize(): Vector2
			return Vector2.new(PopUp.Root.Size.X.Offset, PopUp.Root.Size.Y.Offset)
		end

		local function CurrentPosition(): Vector2
			return Vector2.new(PopUp.Root.Position.X.Offset, PopUp.Root.Position.Y.Offset)
		end

		PopUp.LogoImage = New("ImageLabel", {
			Image = "",
			Size = UDim2.fromOffset(22, 22),
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Visible = false,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 0),
			}),
		})

		PopUp.TitleLabel = Label({
			RichText = true,
			Text = Config.Title,
			TextSize = 15,
			Weight = "SemiBold",
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = 2,
		})

		local SubTitleText = Config.Subtitle or Config.SubTitle or ""

		PopUp.SubTitleLabel = Label({
			RichText = true,
			Text = SubTitleText,
			TextSize = 12,
			Weight = "Regular",
			Tag = "SubText",
			Size = UDim2.fromScale(0, 1),
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = 3,
			Visible = SubTitleText ~= "",
		})

		PopUp.Brand = New("Frame", {
			Size = UDim2.new(1, -110, 1, 0),
			Position = UDim2.fromOffset(16, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 8),
			}),
			PopUp.LogoImage,
			PopUp.TitleLabel,
			PopUp.SubTitleLabel,
		})

		PopUp.Controls = New("Frame", {
			Size = UDim2.fromOffset(0, 34),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			BackgroundTransparency = 1,
		}, {
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 2),
			}),
		})

		PopUp.MinButton = Components.BarButton(Assets.Min, function()
			PopUp:Minimize()
		end)
		PopUp.MinButton.Frame.LayoutOrder = 1
		PopUp.MinButton.Frame.Visible = PopUp.Minimizable
		PopUp.MinButton.Frame.Parent = PopUp.Controls

		PopUp.MaxButton = Components.BarButton(Assets.Max, function()
			PopUp:ToggleMaximize()
		end)
		PopUp.MaxButton.Frame.LayoutOrder = 2
		PopUp.MaxButton.Frame.Parent = PopUp.Controls

		PopUp.CloseButton = Components.BarButton(Assets.Close, function()
			PopUp:Close()
			PopUp:Destroy()
		end)
		PopUp.CloseButton.Frame.LayoutOrder = 3
		PopUp.CloseButton.Frame.Visible = Config.Closable ~= false
		PopUp.CloseButton.Frame.Parent = PopUp.Controls

		PopUp.Header = New("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderHeight),
			BackgroundTransparency = 1,
			ZIndex = 3,
		}, {
			PopUp.Brand,
			PopUp.Controls,
			New("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, -1),
				BackgroundTransparency = 0.9,
				ThemeTag = {
					BackgroundColor3 = "TitleBarLine",
				},
			}),
		})

		Creator.AddSignal(PopUp.Controls:GetPropertyChangedSignal("AbsoluteSize"), function()
			PopUp.Brand.Size = UDim2.new(1, -(PopUp.Controls.AbsoluteSize.X + 26), 1, 0)
		end)

		PopUp.Pill = New("Frame", {
			Size = UDim2.new(1, 0, 0, 38),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
			BackgroundTransparency = 1,
			ZIndex = 1,
			ThemeTag = {
				BackgroundColor3 = "Tab",
			},
		}, {
			Corner(10),
		})

		PopUp.TabList = New("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ZIndex = 2,
		}, {
			New("UIListLayout", {
				Padding = UDim.new(0, 1),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
		})

		local SidebarTitleText = Config.SidebarTitle or ""
		local SidebarHeadHeight = if SidebarTitleText ~= "" then 42 else 0

		PopUp.SidebarTitle = Label({
			Text = SidebarTitleText,
			TextSize = 22,
			Weight = "Bold",
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -20, 0, 28),
			TextTruncate = Enum.TextTruncate.AtEnd,
			Visible = SidebarTitleText ~= "",
		})

		PopUp.TabScroll = New("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -SidebarHeadHeight),
			Position = UDim2.fromOffset(0, SidebarHeadHeight),
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,
			BorderSizePixel = 0,
			CanvasSize = UDim2.fromScale(0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollingDirection = Enum.ScrollingDirection.Y,
		}, {
			PopUp.Pill,
			PopUp.TabList,
		})

		PopUp.SidebarInner = New("Frame", {
			Position = UDim2.fromOffset(14, 18),
			Size = UDim2.new(1, -24, 1, -36),
			BackgroundTransparency = 1,
		}, {
			PopUp.SidebarTitle,
			PopUp.TabScroll,
		})

		PopUp.Sidebar = New("Frame", {
			Name = "Sidebar",
			Size = UDim2.new(0, PopUp.TabWidth, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Visible = false,
		}, {
			PopUp.SidebarInner,
		})

		PopUp.PageHolder = New("Frame", {
			Name = "Pages",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		})

		PopUp.SidebarShade = New("Frame", {
			Size = UDim2.new(0, 12, 1, 0),
			Position = UDim2.fromOffset(PopUp.TabWidth, 0),
			BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.82,
			BorderSizePixel = 0,
			Active = false,
			Visible = false,
			ZIndex = 20,
		}, {
			New("UIGradient", {
				Rotation = 0,
				Transparency = NumberSequence.new(0, 1),
			}),
		})

		PopUp.Content = New("Frame", {
			Name = "Content",
			Position = UDim2.fromOffset(0, HeaderHeight),
			Size = UDim2.new(1, 0, 1, -HeaderHeight),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
		}, {
			PopUp.Sidebar,
			PopUp.PageHolder,
			PopUp.SidebarShade,
		})

		local GripLines = {}
		for _, Spec in { { 12, 8 }, { 6, 11.5 } } do
			table.insert(GripLines, New("Frame", {
				Size = UDim2.fromOffset(Spec[1], 1.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromOffset(Spec[2], Spec[2]),
				Rotation = -45,
				BackgroundTransparency = 0.5,
				BorderSizePixel = 0,
				ThemeTag = {
					BackgroundColor3 = "SubText",
				},
			}, {
				Corner(2),
			}))
		end

		PopUp.Grip = New("Frame", {
			Name = "ResizeGrip",
			Size = UDim2.fromOffset(18, 18),
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Visible = PopUp.ResizeAble,
			ZIndex = 10,
		}, GripLines)

		PopUp.BodyCorner = Corner(Radius)
		PopUp.Body = New("Frame", {
			Name = "Body",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Parent = PopUp.Root,
		}, {
			PopUp.BodyCorner,
			PopUp.Content,
			PopUp.Header,
			PopUp.Grip,
		})

		if Library.UseAcrylic then
			PopUp.AcrylicBlur = Acrylic.Blur(0.0006)
			PopUp.AcrylicBlur.Frame.Parent = PopUp.Paint.Frame
			PopUp.AcrylicBlur.AddParent(PopUp.Root)
			PopUp.AcrylicBlur.SetRadius(Radius)
		end

		local function SetScrolling(Enabled: boolean)
			local function Apply(Page)
				if Page and Page:IsA("ScrollingFrame") then
					Page.ScrollingEnabled = Enabled
				end
			end
			Apply(PopUp.RootPage)
			for _, Tab in PopUp.Tabs do
				Apply(Tab.Container)
			end
		end

		local function MakePage(PageName: string, Scroll: boolean, Raw: boolean?, Tab: any?)
			local Children = {}
			local Layout

			if not Raw then
				Layout = New("UIListLayout", {
					Padding = UDim.new(0, if Tab then 16 else 12),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
				table.insert(Children, Layout)
				table.insert(Children, New("UIPadding", {
					PaddingLeft = UDim.new(0, if Tab then 22 else 14),
					PaddingRight = UDim.new(0, if Tab then 22 else 14),
					PaddingTop = UDim.new(0, if Tab then 20 else 14),
					PaddingBottom = UDim.new(0, if Tab then 32 else 18),
				}))

				if Tab then
					Tab.TitleLabel = Label({
						Text = PageName,
						TextSize = 22,
						Weight = "Bold",
						Size = UDim2.new(1, 0, 0, 26),
						LayoutOrder = 0,
						Visible = Tab.ShowTitle,
					})
					Creator.TagText(Tab.TitleLabel, "Text", Tab.IconColor)
					table.insert(Children, Tab.TitleLabel)
				end
			end

			local Properties = {
				Name = PageName,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Visible = false,
				Parent = PopUp.PageHolder,
			}

			if Scroll then
				Properties.BottomImage = Components.Assets.ScrollBottom
				Properties.MidImage = Components.Assets.ScrollMid
				Properties.TopImage = Components.Assets.ScrollTop
				Properties.BorderSizePixel = 0
				Properties.ScrollBarThickness = 4
				Properties.ScrollBarImageTransparency = 0.72
				Properties.CanvasSize = UDim2.fromScale(0, 0)
				Properties.ScrollingDirection = Enum.ScrollingDirection.Y
				Properties.ThemeTag = {
					ScrollBarImageColor3 = "Text",
				}
			else
				Properties.ClipsDescendants = true
			end

			local Page = New(Scroll and "ScrollingFrame" or "Frame", Properties, Children)

			if Scroll and Layout then
				Creator.AddSignal(Layout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
					Page.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + (if Tab then 52 else 32))
				end)
			end

			return Page
		end

		local function BuildHost(Host, Page)
			Host.Container = Page
			Host.ScrollFrame = Page
			Host.Library = Library
			Host.Order = 0
			Host.Implicit = nil

			function Host:NextOrder()
				Host.Order = Host.Order + 1
				return Host.Order
			end

			function Host:GetHolder()
				if not Host.Implicit then
					Host.Implicit = Components.Section("", Host.Container, {
						LayoutOrder = Host:NextOrder(),
						IconColor = Host.IconColor,
					})
				end
				return Host.Implicit
			end

			function Host:AddSection(SectionTitle, SectionConfig)
				if type(SectionTitle) == "table" then
					SectionConfig = SectionTitle
					SectionTitle = SectionConfig.Title
				end
				SectionConfig = SectionConfig or {}
				Host.Implicit = nil
				local Holder = Components.Section(SectionTitle, Host.Container, {
					LayoutOrder = Host:NextOrder(),
					IconColor = SectionConfig.IconColor or Host.IconColor,
					Icon = SectionConfig.Icon,
					IconSize = SectionConfig.IconSize,
					Accordion = SectionConfig.Accordion,
					Collapsed = SectionConfig.Collapsed,
					Callback = SectionConfig.Callback,
					Id = SectionConfig.Id or `PopUp:{PopUp.Id}:{Host.Name}:{SectionTitle or Host.Order}`,
				})
				if SectionConfig.Locked then
					Holder:SetLocked(true, SectionConfig.LockedReason)
				end
				local Section = Components.SectionApi(Holder, Host, Host.Container)
				Library.Events.SectionAdded:Fire(Section, Host)
				return Section
			end

			return setmetatable(Host, Elements)
		end

		PopUp.RootPage = MakePage("Main", true, false)
		PopUp.RootPage.Visible = true

		local function ShowPage(Page: GuiObject?, Animate: boolean?)
			for _, Tab in PopUp.Tabs do
				if Tab.Container ~= Page then
					Tab.Container.Visible = false
				end
			end
			if PopUp.RootPage ~= Page then
				PopUp.RootPage.Visible = false
			end

			if PopUp.SwitchTween then
				PopUp.SwitchTween:Cancel()
				PopUp.SwitchTween = nil
			end
			if PopUp.SwitchTarget then
				PopUp.SwitchTarget.Position = UDim2.fromOffset(0, 0)
				PopUp.SwitchTarget = nil
			end

			if not Page then
				return
			end
			Page.Visible = true

			if not Animate or Library.Config.ReducedMotion or not Library.Config.PageTransition then
				return
			end

			Page.Position = UDim2.fromOffset(0, 14)
			PopUp.SwitchTarget = Page

			local Tween = Creator.Tween(Page, 0.26, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Quint)
			PopUp.SwitchTween = Tween

			Tween.Completed:Once(function()
				if PopUp.SwitchTween == Tween then
					PopUp.SwitchTween = nil
					if PopUp.SwitchTarget == Page then
						Page.Position = UDim2.fromOffset(0, 0)
						PopUp.SwitchTarget = nil
					end
				end
			end)
		end

		local function Relayout()
			local HasTabs = #PopUp.Tabs > 0
			local Offset = if HasTabs then PopUp.TabWidth else 0
			PopUp.Sidebar.Visible = HasTabs
			PopUp.SidebarShade.Visible = HasTabs
			PopUp.PageHolder.Position = UDim2.fromOffset(Offset, 0)
			PopUp.PageHolder.Size = UDim2.new(1, -Offset, 1, 0)
		end

		function PopUp:UpdatePill(Instant)
			local Tab = PopUp.Selected
			local Pill = PopUp.Pill

			if not Tab or not Tab.Frame.Visible or Tab.Frame.AbsoluteSize.Y <= 0 then
				Pill.BackgroundTransparency = 1
				return
			end

			local Y = Tab.Frame.AbsolutePosition.Y - PopUp.TabScroll.AbsolutePosition.Y + PopUp.TabScroll.CanvasPosition.Y
			local Goal = UDim2.new(0.5, 0, 0, Y)

			if Instant or Pill.BackgroundTransparency >= 1 or Library.Config.ReducedMotion then
				Pill.Position = Goal
				Pill.BackgroundTransparency = 0.94
			else
				Creator.Tween(Pill, 0.25, { Position = Goal })
			end
		end

		local function QueuePill()
			if PopUp.PillPending then
				return
			end
			PopUp.PillPending = true
			task.defer(function()
				PopUp.PillPending = false
				if not PopUp.Destroyed then
					PopUp:UpdatePill(true)
				end
			end)
		end

		Creator.AddSignal(PopUp.TabScroll:GetPropertyChangedSignal("CanvasPosition"), QueuePill)
		Creator.AddSignal(PopUp.TabScroll:GetPropertyChangedSignal("AbsoluteSize"), QueuePill)
		Creator.AddSignal(PopUp.TabList:GetPropertyChangedSignal("AbsoluteSize"), QueuePill)

		function PopUp:GetTab(Key)
			if type(Key) == "number" then
				return PopUp.Tabs[Key]
			end
			for _, Tab in PopUp.Tabs do
				if Tab == Key or Tab.Id == Key or Tab.Name == Key then
					return Tab
				end
			end
			return nil
		end

		function PopUp:SelectTab(Key)
			local Target = nil
			if Key ~= nil then
				Target = PopUp:GetTab(Key)
				if not Target then
					return
				end
			end

			if PopUp.Selected == Target then
				return
			end

			Library:ClosePopups()
			PopUp.Selected = Target

			for _, Tab in PopUp.Tabs do
				Tab.Selected = Tab == Target
			end

			ShowPage(Target and Target.Container or PopUp.RootPage, true)
			PopUp:UpdatePill(false)
			Library:Emit("PopUpTabSelected", PopUp, Target)
		end

		function PopUp:ShowMain()
			PopUp:SelectTab(nil)
		end

		function PopUp:AddTab(TabConfig)
			if type(TabConfig) == "string" then
				TabConfig = { Title = TabConfig }
			end
			assert(type(TabConfig) == "table" and TabConfig.Title, "PopUp - AddTab missing Title")

			local Index = #PopUp.Tabs + 1
			local Raw = TabConfig.Raw == true
			local Scroll = not Raw and TabConfig.Scroll ~= false
			local Image = Resolve(TabConfig.Icon, "Tab", TabConfig)
			local Palette = Library.IconPalette
			local IconColor = TabConfig.IconColor or Palette[(PopUpModule.Count + Index - 1) % #Palette + 1]

			local Tab = {
				Type = "Tab",
				Kind = "Root",
				Name = TabConfig.Title,
				Id = TabConfig.Id,
				PopUp = PopUp,
				Raw = Raw,
				Selected = false,
				IconColor = IconColor,
				ShowTitle = not Raw and TabConfig.ShowTitle ~= false,
			}

			Tab.Icon = New("ImageLabel", {
				Image = Image or "",
				Size = UDim2.fromOffset(14, 14),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0, 21, 0.5, 0),
				Visible = Image ~= nil,
			})
			Creator.TagIcon(Tab.Icon, "Text", IconColor)

			Tab.Label = Label({
				Text = TabConfig.Title,
				TextSize = 13,
				Weight = "Medium",
				Position = UDim2.fromOffset(Image and 40 or 14, 0),
				Size = UDim2.new(1, -(Image and 48 or 22), 1, 0),
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
			Creator.TagText(Tab.Label, "Text", IconColor)
			Creator.Marquee(Tab.Label)

			Tab.Frame = New("TextButton", {
				Size = UDim2.new(1, 0, 0, 38),
				BackgroundTransparency = 1,
				LayoutOrder = TabConfig.Order or Index,
				Parent = PopUp.TabList,
			}, {
				Tab.Icon,
				Tab.Label,
			})

			Tab.Container = MakePage(TabConfig.Title, Scroll, Raw, Tab)
			Tab.Page = Tab.Container

			function Tab:Select()
				PopUp:SelectTab(Tab)
			end

			function Tab:SetTitle(Value)
				Tab.Name = Value
				Tab.Label.Text = Value
				Tab.Container.Name = Value
				if Tab.TitleLabel then
					Tab.TitleLabel.Text = Value
				end
			end

			function Tab:SetIcon(Value)
				local NewImage = Resolve(Value, "Tab", TabConfig)
				Creator.SetImage(Tab.Icon, NewImage)
				Tab.Icon.Visible = NewImage ~= nil
			end

			function Tab:SetVisible(Value)
				Tab.Frame.Visible = Value and true or false
				if not Tab.Frame.Visible and PopUp.Selected == Tab then
					for _, Other in PopUp.Tabs do
						if Other ~= Tab and Other.Frame.Visible then
							PopUp:SelectTab(Other)
							break
						end
					end
				end
				QueuePill()
			end

			function Tab:GetVisible()
				return Tab.Frame.Visible
			end

			function Tab:Destroy()
				if Tab.Destroyed then
					return
				end
				Tab.Destroyed = true

				local Position = table.find(PopUp.Tabs, Tab)
				if Position then
					table.remove(PopUp.Tabs, Position)
				end

				for Row in next, Library.SearchRows do
					if Row.Tab == Tab then
						Row:Destroy()
					end
				end

				local WasSelected = PopUp.Selected == Tab
				Tab.Frame:Destroy()
				Tab.Container:Destroy()

				if WasSelected then
					PopUp.Selected = nil
					local Fallback = PopUp.Tabs[math.min(Position or 1, #PopUp.Tabs)]
					if Fallback then
						PopUp:SelectTab(Fallback)
					else
						ShowPage(PopUp.RootPage, true)
					end
				end

				Relayout()
				QueuePill()
			end

			BuildHost(Tab, Tab.Container)

			Creator.AddGuarded(Tab.Frame, "MouseButton1Click", function()
				PopUp:SelectTab(Tab)
			end)
			Creator.AddSignal(Tab.Frame:GetPropertyChangedSignal("AbsoluteSize"), QueuePill)

			table.insert(PopUp.Tabs, Tab)
			Relayout()

			if TabConfig.Select or (#PopUp.Tabs == 1 and PopUp.Order == 0) then
				PopUp:SelectTab(Tab)
			end

			QueuePill()
			return Tab
		end

		function PopUp:AddBarButtonAction(ActionConfig)
			ActionConfig = ActionConfig or {}
			PopUp.ActionCount += 1

			local Callback = ActionConfig.Callback
			local Toggled = ActionConfig.Toggle == true
			local Action = {
				Type = "BarButtonAction",
				Value = false,
			}

			Action.Button = Components.BarButton(Resolve(ActionConfig.Icon, "TitleBar", ActionConfig) or "", function()
				if Toggled then
					Action:SetValue(not Action.Value)
				else
					Library:SafeCallback(Callback)
				end
			end)
			Action.Frame = Action.Button.Frame
			Action.Frame.LayoutOrder = -1000 + PopUp.ActionCount
			Action.Frame.Visible = ActionConfig.Visible ~= false
			Action.Frame.Parent = PopUp.Controls

			function Action:SetIcon(Value)
				Creator.SetImage(Action.Button.Icon, Resolve(Value, "TitleBar"))
			end

			function Action:SetVisible(Value)
				Action.Frame.Visible = Value and true or false
			end

			function Action:SetCallback(Func)
				Callback = Func
			end

			function Action:SetValue(Value, Silent)
				Value = Value == true
				if not Toggled or Action.Value == Value then
					return
				end
				Action.Value = Value
				Action.Button.SetToggled(Value)
				if not Silent then
					Library:SafeCallback(Callback, Value)
				end
			end

			function Action:GetValue(): boolean
				return Action.Value
			end

			function Action:Toggle()
				Action:SetValue(not Action.Value)
			end

			function Action:Destroy()
				if Action.Destroyed then
					return
				end
				Action.Destroyed = true
				local Position = table.find(PopUp.Actions, Action)
				if Position then
					table.remove(PopUp.Actions, Position)
				end
				Action.Frame:Destroy()
			end

			table.insert(PopUp.Actions, Action)

			if Toggled and ActionConfig.Default == true then
				Action:SetValue(true, true)
			end

			return Action
		end

		function PopUp:AddBarButtonToggle(ActionConfig)
			local Config = table.clone(ActionConfig or {})
			Config.Toggle = true
			return PopUp:AddBarButtonAction(Config)
		end

		local MinimizeNotified = false

		local function KeyName(Key): string?
			if typeof(Key) == "EnumItem" then
				return Key.Name
			end
			return if Key ~= nil then tostring(Key) else nil
		end

		function PopUp:SetMinimized(Value)
			Value = Value == true
			if PopUp.Destroyed or PopUp.Minimized == Value then
				return
			end
			PopUp.Minimized = Value
			PopUp.Root.Visible = PopUp.Opened and not Value and not Library.IntroActive
			Library:ClosePopups()
			PopUp:ApplyPaint()

			if Value and not MinimizeNotified then
				MinimizeNotified = true
				local Keybind = PopUp.MinimizeKeybind
				local Key = if type(Keybind) == "table" and Keybind.Type == "Keybind"
					then Keybind.Value
					else KeyName(PopUp.MinimizeKey)
						or (Library.MinimizeKeybind and Library.MinimizeKeybind.Value)
						or KeyName(Library.MinimizeKey)
				if Key then
					Library:InternalNotify({
						Title = Config.Title,
						Content = "Press " .. tostring(Key) .. " to toggle this popup.",
						Duration = 6,
					})
				end
			end

			Library:SafeCallback(Config.OnMinimize, PopUp, Value)
		end

		function PopUp:Minimize()
			PopUp:SetMinimized(not PopUp.Minimized)
		end

		function PopUp:IsMinimized(): boolean
			return PopUp.Minimized
		end

		function PopUp:SetMinimizable(Value)
			PopUp.Minimizable = Value == true
			PopUp.MinButton.Frame.Visible = PopUp.Minimizable
		end

		function PopUp:SetMinimizeKey(Key)
			PopUp.MinimizeKey = Key
		end

		function PopUp:GetMinimizeKey()
			return PopUp.MinimizeKey
		end

		function PopUp:SetMinimizeKeybind(Keybind)
			PopUp.MinimizeKeybind = Keybind
		end

		Track(UserInputService.InputBegan, function(Input)
			if PopUp.Destroyed or not PopUp.Opened or not PopUp.Minimizable or UserInputService:GetFocusedTextBox() then
				return
			end

			local Keybind = PopUp.MinimizeKeybind
			local Key = PopUp.MinimizeKey

			if type(Keybind) == "table" and Keybind.Type == "Keybind" then
				if Input.KeyCode.Name == Keybind.Value then
					PopUp:Minimize()
				end
				return
			end

			if Key ~= nil then
				if Input.KeyCode == Key or Input.KeyCode.Name == Key then
					PopUp:Minimize()
				end
				return
			end

			local Shared = false
			if type(Library.MinimizeKeybind) == "table" and Library.MinimizeKeybind.Type == "Keybind" then
				Shared = Input.KeyCode.Name == Library.MinimizeKeybind.Value
			else
				Shared = Input.KeyCode == Library.MinimizeKey
			end

			if Shared then
				task.defer(function()
					if PopUp.Destroyed then
						return
					end
					local Window = Library.Window
					PopUp:SetMinimized(if Window then Window.Minimized else not PopUp.Minimized)
				end)
			end
		end)

		function PopUp:BringToFront()
			local Stack = PopUpModule.Stack
			local Index = table.find(Stack, PopUp)
			if Index then
				table.remove(Stack, Index)
			end
			table.insert(Stack, PopUp)
			for Order, Item in Stack do
				Item.Root.ZIndex = BaseZIndex + math.min(Order, MaxStack)
			end
		end

		local function MoveTo(Goal: Vector2, Target: Vector2, Instantly: boolean?)
			if PopUp.MoveTween then
				local Previous = PopUp.MoveTween
				PopUp.MoveTween = nil
				Previous:Cancel()
			end

			local SizeGoal = UDim2.fromOffset(Goal.X, Goal.Y)
			local PositionGoal = UDim2.fromOffset(Target.X, Target.Y)

			if Instantly or Library.Config.ReducedMotion or not PopUp.Root.Visible then
				PopUp.Root.Size = SizeGoal
				PopUp.Root.Position = PositionGoal
				return
			end

			local Tween = Creator.Tween(PopUp.Root, 0.28, { Size = SizeGoal, Position = PositionGoal }, Enum.EasingStyle.Quint)
			PopUp.MoveTween = Tween
			Tween.Completed:Once(function()
				if PopUp.MoveTween == Tween then
					PopUp.MoveTween = nil
				end
			end)
		end

		function PopUp:SetMaximized(Value, Instantly)
			Value = Value == true
			if Value == PopUp.Maximized then
				return
			end

			local GoalSize, GoalPosition

			if Value then
				if not PopUp.MaximizeSize then
					return
				end
				local Current, Origin = CurrentSize(), CurrentPosition()
				PopUp.Normal = { Size = Current, Position = Origin }
				GoalSize = LimitSize(PopUp.MaximizeSize)
				GoalPosition = InsidePosition(Origin - (GoalSize - Current) / 2, GoalSize)
			else
				local Normal = PopUp.Normal
				PopUp.Normal = nil
				GoalSize = Normal and Normal.Size or CurrentSize()
				GoalPosition = InsidePosition(Normal and Normal.Position or CurrentPosition(), GoalSize)
			end

			PopUp.Maximized = Value
			PopUp.Grip.Visible = PopUp.ResizeAble and not Value
			PopUp.MaxButton.Icon.Image = Value and Assets.Restore or Assets.Max
			MoveTo(GoalSize, GoalPosition, Instantly)
			Library:SafeCallback(Config.OnMaximize, Value)
		end

		function PopUp:Maximize(Instantly)
			PopUp:SetMaximized(true, Instantly)
		end

		function PopUp:Restore(Instantly)
			PopUp:SetMaximized(false, Instantly)
		end

		function PopUp:ToggleMaximize(Instantly)
			PopUp:SetMaximized(not PopUp.Maximized, Instantly)
		end

		function PopUp:SetSize(Value, Instantly)
			local Parsed = ParseSize(Value, nil)
			if not Parsed then
				return
			end
			if PopUp.Maximized then
				PopUp:SetMaximized(false, true)
			end
			local Goal = LimitSize(Parsed)
			MoveTo(Goal, LimitPosition(CurrentPosition(), Goal), Instantly)
		end

		function PopUp:GetSize(): Vector2
			return CurrentSize()
		end

		function PopUp:SetMaximizeSize(Value)
			PopUp.MaximizeSize = ParseSize(Value, PopUp.DefaultMaximizeSize)
			if PopUp.Maximized then
				local Goal = LimitSize(PopUp.MaximizeSize)
				MoveTo(Goal, InsidePosition(CurrentPosition(), Goal), true)
			else
				local Goal = LimitSize(CurrentSize())
				MoveTo(Goal, LimitPosition(CurrentPosition(), Goal), true)
			end
		end

		function PopUp:GetMaximizeSize(): Vector2
			return PopUp.MaximizeSize
		end

		function PopUp:SetResizeAble(Value)
			PopUp.ResizeAble = Value == true
			PopUp.Grip.Visible = PopUp.ResizeAble and not PopUp.Maximized
		end

		function PopUp:GetResizeAble(): boolean
			return PopUp.ResizeAble
		end

		function PopUp:SetDraggable(Value)
			PopUp.Draggable = Value == true
		end

		function PopUp:SetClosable(Value)
			PopUp.CloseButton.Frame.Visible = Value == true
		end

		function PopUp:SetPosition(Value)
			local Parsed = ParseSize(Value, nil)
			if not Parsed then
				return
			end
			MoveTo(CurrentSize(), LimitPosition(Parsed, CurrentSize()), true)
		end

		function PopUp:Center(Instantly)
			local Current = CurrentSize()
			local Area = GetViewport()
			MoveTo(Current, InsidePosition((Area - Current) / 2, Current), Instantly)
		end

		function PopUp:SetTitle(Value)
			PopUp.Name = Value or ""
			PopUp.TitleLabel.Text = Value or ""
		end

		function PopUp:SetSubtitle(Value)
			PopUp.SubTitleLabel.Text = Value or ""
			PopUp.SubTitleLabel.Visible = (Value or "") ~= ""
		end

		function PopUp:SetIcon(Icon, Options)
			Options = Options or {}
			local Image = Resolve(Icon, "TitleBar", Options)
			local Logo = PopUp.LogoImage
			local LogoSize = Options.Size or Config.LogoSize or 22
			local Tint = Options.Tint
			if Tint == nil then
				Tint = type(Icon) == "string" and Library:GetIconData(Icon, nil, nil, "TitleBar") ~= nil
			end
			Creator.SetImage(Logo, Image)
			Logo.Visible = Image ~= nil
			Logo.Size = UDim2.fromOffset(LogoSize, LogoSize)
			Logo:FindFirstChildOfClass("UICorner").CornerRadius = UDim.new(0, Options.Corner or Config.LogoCorner or 0)
			if Tint then
				Creator.OverrideTag(Logo, { ImageColor3 = "Text" })
			else
				Creator.RemoveTag(Logo)
				Logo.ImageColor3 = Options.Color or Color3.new(1, 1, 1)
			end
		end

		function PopUp:ApplyPaint()
			local Paint = PopUp.Paint
			local Active = Library.UseAcrylic and Library.Acrylic and true or false
			local Visibility = PopUp.Opacity * (if Library.Transparency then 0.92 else 1)

			local function Scale(Transparency: number): number
				return 1 - (1 - Transparency) * Visibility
			end

			Paint.Base.BackgroundTransparency = if Active then Scale(0.9) else 1
			Paint.Main.BackgroundTransparency = if Active then Scale(0.45) else 1
			Paint.Fill.BackgroundTransparency = Scale(if Active then 0.4 else 0)
			Paint.Grain.Visible = Active
			Paint.Noise.Visible = Active
			Paint.Grain.ImageTransparency = 0.98
			PopUp.RootStroke.Transparency = if Active then 0.5 else 0

			if PopUp.AcrylicBlur then
				PopUp.AcrylicBlur.SetVisibility(PopUp.Root.Visible)
			end
		end

		function PopUp:SetOpacity(Value)
			PopUp.Opacity = math.clamp(tonumber(Value) or 1, 0.2, 1)
			PopUp:ApplyPaint()
		end

		function PopUp:SetCornerRadius(Value)
			Radius = math.clamp(tonumber(Value) or 13, 0, 24)
			PopUp.RootCorner.CornerRadius = UDim.new(0, Radius)
			PopUp.BodyCorner.CornerRadius = UDim.new(0, Radius)
			PopUp.Paint:SetRadius(Radius)
			if PopUp.AcrylicBlur then
				PopUp.AcrylicBlur.SetRadius(Radius)
			end
		end

		function PopUp:Open()
			if PopUp.Destroyed then
				return
			end
			PopUp.Opened = true
			PopUp.Minimized = false
			PopUp.Root.Visible = true
			PopUp:BringToFront()
			PopUp:ApplyPaint()
			Relayout()
			PopUp:UpdatePill(true)
			Library:SafeCallback(Config.OnOpen, PopUp)
		end

		function PopUp:Close()
			if not PopUp.Opened then
				return
			end
			PopUp.Opened = false
			Library:ClosePopups()
			PopUp.Root.Visible = false
			PopUp:ApplyPaint()
			Library:SafeCallback(Config.OnClose, PopUp)
		end

		function PopUp:Toggle()
			if PopUp.Opened then
				PopUp:Close()
			else
				PopUp:Open()
			end
		end

		function PopUp:IsOpen(): boolean
			return PopUp.Opened
		end

		function PopUp:SetVisible(Value)
			if Value then
				PopUp:Open()
			else
				PopUp:Close()
			end
		end

		function PopUp:GetState()
			return {
				IsResizing = PopUp.IsResizing,
				IsDragging = PopUp.IsDragging,
				IsMaximized = PopUp.Maximized,
				IsMinimized = PopUp.Minimized,
				IsOpen = PopUp.Opened,
				Size = CurrentSize(),
				Position = CurrentPosition(),
				MaximizeSize = PopUp.MaximizeSize,
			}
		end

		function PopUp:Dialog(DialogConfig)
			local Final = table.clone(DialogConfig or {})
			Final.Host = PopUp
			return Library.Window:Dialog(Final)
		end

		function PopUp:PagedDialog(DialogConfig)
			local Final = table.clone(DialogConfig or {})
			Final.Host = PopUp
			return Library.Window:PagedDialog(Final)
		end

		function PopUp:Modal(DialogConfig)
			local Final = table.clone(DialogConfig or {})
			Final.Host = PopUp
			return Library.Window:Modal(Final)
		end

		function PopUp:Menu(MenuConfig)
			local Final = table.clone(MenuConfig or {})
			Final.Host = PopUp
			return Library.Window:Menu(Final)
		end

		function PopUp:Destroy()
			if PopUp.Destroyed then
				return
			end
			PopUp.Destroyed = true
			PopUp.Opened = false
			Library:ClosePopups()

			if PopUp.MoveTween then
				PopUp.MoveTween:Cancel()
				PopUp.MoveTween = nil
			end
			if PopUp.SwitchTween then
				PopUp.SwitchTween:Cancel()
				PopUp.SwitchTween = nil
			end

			for Row in next, Library.SearchRows do
				local Owner = Row.Tab
				if Owner == PopUp or (type(Owner) == "table" and rawget(Owner, "PopUp") == PopUp) then
					Row:Destroy()
				end
			end

			for _, Connection in Connections do
				pcall(function()
					Connection:Disconnect()
				end)
			end
			table.clear(Connections)

			local StackIndex = table.find(PopUpModule.Stack, PopUp)
			if StackIndex then
				table.remove(PopUpModule.Stack, StackIndex)
			end

			local ListIndex = table.find(Library.PopUps, PopUp)
			if ListIndex then
				table.remove(Library.PopUps, ListIndex)
			end

			if PopUp.AcrylicBlur then
				PopUp.AcrylicBlur.Destroy()
				PopUp.AcrylicBlur = nil
			end

			Creator.Hooks[PopUp] = nil
			Library.DialogHosts[PopUp.Root] = nil
			PopUp.Root:Destroy()

			Library:SafeCallback(Config.OnDestroy, PopUp)
			Library:Emit("PopUpDestroyed", PopUp)
		end

		local DragInput, DragStart, DragOrigin

		Creator.AddSignal(PopUp.Header.InputBegan, function(Input)
			if not PopUp.Draggable or PopUp.Maximized then
				return
			end
			if
				(Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch)
				and Creator.AcceptsInput(PopUp.Header, Input)
			then
				if PopUp.MoveTween then
					PopUp.MoveTween:Cancel()
					PopUp.MoveTween = nil
				end
				PopUp.IsDragging = true
				DragStart = Input.Position
				DragOrigin = CurrentPosition()
				PopUp:BringToFront()

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						PopUp.IsDragging = false
					end
				end)
			end
		end)

		Creator.AddSignal(PopUp.Header.InputChanged, function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
				DragInput = Input
			end
		end)

		local ResizeStart, ResizeOrigin

		local function EndResize()
			if not PopUp.IsResizing then
				return
			end
			PopUp.IsResizing = false
			SetScrolling(true)
		end

		Creator.AddSignal(PopUp.Grip.InputBegan, function(Input)
			if not PopUp.ResizeAble or PopUp.Maximized or PopUp.IsResizing then
				return
			end
			if
				(Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch)
				and Creator.AcceptsInput(PopUp.Grip, Input)
			then
				if PopUp.MoveTween then
					PopUp.MoveTween:Cancel()
					PopUp.MoveTween = nil
				end
				PopUp.IsResizing = true
				ResizeStart = Vector2.new(Input.Position.X, Input.Position.Y)
				ResizeOrigin = CurrentSize()
				SetScrolling(false)
				PopUp:BringToFront()

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						EndResize()
					end
				end)
			end
		end)

		Track(UserInputService.InputChanged, function(Input)
			if PopUp.IsDragging and Input == DragInput then
				local Delta = Input.Position - DragStart
				local Target = LimitPosition(DragOrigin + Vector2.new(Delta.X, Delta.Y), CurrentSize())
				PopUp.Root.Position = UDim2.fromOffset(Target.X, Target.Y)
			elseif
				PopUp.IsResizing
				and (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch)
			then
				local Delta = Vector2.new(Input.Position.X, Input.Position.Y) - ResizeStart
				local Goal = LimitSize(ResizeOrigin + Delta)
				PopUp.Root.Size = UDim2.fromOffset(Goal.X, Goal.Y)
			end
		end)

		Track(UserInputService.InputEnded, function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				PopUp.IsDragging = false
				EndResize()
			end
		end)

		Track(UserInputService.InputBegan, function(Input)
			if Input.UserInputType ~= Enum.UserInputType.MouseButton1 and Input.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			if not PopUp.Root.Visible then
				return
			end

			local Point = Input.Position
			local Stack = PopUpModule.Stack
			for Index = #Stack, 1, -1 do
				local Item = Stack[Index]
				if Item.Root.Visible then
					local Origin, Extent = Item.Root.AbsolutePosition, Item.Root.AbsoluteSize
					if
						Point.X >= Origin.X
						and Point.X <= Origin.X + Extent.X
						and Point.Y >= Origin.Y
						and Point.Y <= Origin.Y + Extent.Y
					then
						if Item == PopUp and Index ~= #Stack then
							PopUp:BringToFront()
						end
						return
					end
				end
			end
		end)

		Creator.AddSignal(Parent:GetPropertyChangedSignal("AbsoluteSize"), function()
			if PopUp.Destroyed then
				return
			end
			if PopUp.Maximized and PopUp.MaximizeSize then
				local Goal = LimitSize(PopUp.MaximizeSize)
				MoveTo(Goal, InsidePosition(CurrentPosition(), Goal), true)
			else
				local Goal = LimitSize(CurrentSize())
				MoveTo(Goal, LimitPosition(CurrentPosition(), Goal), true)
			end
		end)

		BuildHost(PopUp, PopUp.RootPage)

		PopUp:SetIcon(Config.Logo or Config.Icon or Config.TitleIcon, {
			Tint = Config.LogoTint,
			Size = Config.LogoSize,
			Corner = Config.LogoCorner,
		})
		PopUp:ApplyPaint()
		Creator.Hooks[PopUp] = function()
			PopUp:ApplyPaint()
		end

		if Config.Opacity ~= nil then
			PopUp:SetOpacity(Config.Opacity)
		end

		if Config.Visible ~= false then
			if Library.IntroActive then
				local Connection
				Connection = Library.Events.IntroFinished:Connect(function()
					Connection:Disconnect()
					if not PopUp.Destroyed then
						PopUp:Open()
					end
				end)
			else
				PopUp:Open()
			end
		end

		return PopUp
	end
end)()


Library.PopUps = {}

function Library:CreatePopUp(Config)
	local PopUp = Components.PopUp(Config)
	table.insert(Library.PopUps, PopUp)
	Library:Emit("PopUpCreated", PopUp)
	return PopUp
end


function Library:GetPopUps()
	return table.clone(Library.PopUps)
end

function Library:GetPopUp(Key)
	for _, PopUp in Library.PopUps do
		if PopUp == Key or PopUp.Id == Key or PopUp.Name == Key then
			return PopUp
		end
	end
	return nil
end

function Library:DestroyPopUp(Key): boolean
	local PopUp = Library:GetPopUp(Key)
	if not PopUp then
		return false
	end
	PopUp:Destroy()
	return true
end

function Library:DestroyAllPopUps(Except)
	for _, PopUp in table.clone(Library.PopUps) do
		if PopUp ~= Except and PopUp.Id ~= Except then
			PopUp:Destroy()
		end
	end
end

local NotificationModule = Components.Notification
NotificationModule:Init(GUI)
local ToastModule = Components.Toast
ToastModule:Init(GUI)
Library.NotificationPositions = NotificationModule.Positions

Library.Popups = {}

function Library:ClearRowHover()
	for Row in next, Library.HoveredRows do
		Row.ClearHover()
		Row:SleepHover()
	end
	table.clear(Library.HoveredRows)
end

function Library:ClosePopups(Except)
	for Popup in next, Library.Popups do
		if Popup ~= Except then
			Popup()
		end
	end
end

function Library:SetLocked(Idx: string, Value: boolean, Reason: string?): boolean
	local Option = Library.Options[Idx]
	if Option and Option.SetLocked then
		Option:SetLocked(Value, Reason)
		return true
	end
	return false
end

function Library:IsLocked(Idx: string): boolean
	local Option = Library.Options[Idx]
	return Option ~= nil and Option.IsLocked ~= nil and Option:IsLocked()
end

local ElementsTable = {}

local function MakeRow(Self, Config, Hover)
	return Components.Element(Config.Title, Config.Description or Config.Content, Self.Holder, Hover, {
		Icon = Config.Icon,
		IconColor = Config.IconColor,
		HolderColor = Config.HolderColor,
		Badge = Config.Badge,
		Tab = Self.Tab,
		Keywords = Config.Keywords,
		Marquee = Config.Marquee,
		Locked = Config.Locked or Config.Disabled,
		LockedReason = Config.LockedReason,
	})
end

local function Bind(Object, Row)
	Object.Row = Row

	function Object:SetTitle(Value)
		Row:SetTitle(Value)
	end

	function Object:SetDesc(Value)
		Row:SetDesc(Value)
	end

	function Object:SetMarquee(Value)
		Row:SetMarquee(Value)
	end

	function Object:SetIcon(Value)
		Row:SetIcon(Value)
	end

	function Object:SetHolderColor(Value)
		Row:SetHolderColor(Value)
	end

	function Object:SetVisible(Value)
		Row:SetVisible(Value)
	end

	function Object:GetVisible()
		return Row:GetVisible()
	end

	function Object:SetLocked(Value, Reason)
		Row:SetLocked(Value, Reason)
	end

	function Object:Lock(Reason)
		Row:SetLocked(true, Reason)
	end

	function Object:Unlock()
		Row:SetLocked(false)
	end

	function Object:IsLocked()
		return Row:IsLocked()
	end

	function Object:SetFocused(Value)
		Row:SetFocused(Value)
	end

	function Object:GetState()
		return Row:GetState()
	end
end

local function Place(Control, Row, Gap)
	Control.AnchorPoint = Vector2.new(1, 0.5)
	Control.Position = UDim2.new(1, -14, 0.5, 0)
	Control.Parent = Row.Content
	Row:BindControl(Control, Gap)
end

ElementsTable.Button = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Button"
	Element.ClassType = "Action"
	Element.NoIdx = true

	local PillVariants = {
		Primary = "Primary",
		Tonal = "Tonal",
		Danger = "Danger",
		Ghost = "Ghost",
		Outline = "Outline",
		Accent = "Accent",
	}

	function Element:New(Config)
		assert(Config.Title, "Button - Missing Title")
		Config.Callback = Config.Callback or function() end

		local Library = self.Library
		local Variant = Config.Variant or "Row"
		local Wide = Variant:sub(1, 4) == "Wide"
		local IconKind = Variant:sub(1, 4) == "Icon"
		local Pill = PillVariants[Variant]

		local Row = MakeRow(self, Config, Variant == "Row")
		Row.Type = "Button"
		Row.Variant = Variant

		local Anchor = Row.Clip

		local function Fire()
			Library:SafeCallback(Config.Callback)
			if Config.Menu then
				Config.Menu:Toggle(Anchor, Config.MenuPlacement)
			end
		end

		if Variant == "Row" then
			local Chevron = New("ImageLabel", {
				Image = Asset("chevron-right"),
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -14, 0.5, 0),
				Parent = Row.Content,
				ThemeTag = {
					ImageColor3 = "SubText",
				},
			})
			Row:SetReserve(34)
			Creator.AddGuarded(Row.Body, "MouseButton1Click", Fire)
		elseif Pill then
			local Button = Components.Button({
				Text = Config.ButtonText or "Run",
				Variant = Pill,
				Height = ({ Sm = 24, Md = 28, Lg = 34 })[Config.ButtonSize or "Md"] or 28,
				TextSize = 12,
				Padding = 14,
				Icon = Config.ButtonIcon,
				IgnoreDialog = self.Holder.InModal,
			})
			Place(Button.Frame, Row)
			Anchor = Button.Frame
			Row.Button = Button
			function Row:SetButtonText(Value)
				Button:SetText(Value)
			end
			Creator.AddGuarded(Button.Frame, "MouseButton1Click", Fire)
		elseif IconKind then
			local Button = Components.IconButton({
				Icon = Config.ButtonIcon or "chevron-right",
				Size = Config.IconSize or "Md",
				Tonal = Variant == "IconTonal",
				Danger = Variant == "IconDanger",
			})
			Place(Button.Frame, Row)
			Anchor = Button.Frame
			Row.Button = Button
			Creator.AddGuarded(Button.Frame, "MouseButton1Click", Fire)
		elseif Wide then
			local Kind = Variant == "WideTonal" and "Tonal"
				or Variant == "WideDanger" and "Danger"
				or Variant == "WideOutline" and "Outline"
				or Variant == "WideAccent" and "Accent"
				or "Primary"
			Row.LabelHolder.Visible = false
			Row:SetReserve(0)
			local Button = Components.Button({
				Text = Config.ButtonText or Config.Title,
				Variant = Kind,
				Size = UDim2.new(1, -28, 0, 38),
				Icon = Config.ButtonIcon,
				Parent = Row.Content,
				IgnoreDialog = self.Holder.InModal,
			})
			Button.Frame.AnchorPoint = Vector2.new(0, 0.5)
			Button.Frame.Position = UDim2.new(0, 14, 0.5, 0)
			Anchor = Button.Frame
			Row.Button = Button
			function Row:SetButtonText(Value)
				Button:SetText(Value)
			end
			Creator.AddGuarded(Button.Frame, "MouseButton1Click", Fire)
		else
			Library:Alert("Button - Unknown Variant '" .. tostring(Variant) .. "'", "Error")
			return nil
		end

		function Row:SetCallback(Func)
			Config.Callback = Func
		end

		return Row
	end

	return Element
end)()

ElementsTable.Toggle = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Toggle"
	Element.ClassType = "Input"

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Toggle - Missing Title")

		local Variant = Config.Variant or "Switch"

		local Toggle = {
			Value = Config.Default or false,
			Callback = Config.Callback or function(Value) end,
			Type = "Toggle",
			Variant = Variant,
		}

		local Row = MakeRow(self, Config, true)
		Bind(Toggle, Row)

		local Pressed = false
		local Visual

		if Variant == "Switch" then
			local Knob = New("Frame", {
				Size = UDim2.fromOffset(20, 14),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 2, 0.5, 0),
				BackgroundColor3 = Color3.new(1, 1, 1),
			}, {
				Corner(999),
				New("UIStroke", {
					Color = Color3.new(0, 0, 0),
					Transparency = 0.88,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}),
			})

			local Track = New("Frame", {
				Size = UDim2.fromOffset(38, 18),
				BackgroundTransparency = 0.72,
				ThemeTag = {
					BackgroundColor3 = "ToggleSlider",
				},
			}, {
				Corner(999),
				Knob,
			})

			Place(Track, Row)

			function Visual(Instant)
				local On = Toggle.Value
				local Width = Pressed and 25 or 20
				local X = On and (38 - 2 - Width) or 2
				Creator.OverrideTag(Track, { BackgroundColor3 = On and "ToggleToggled" or "ToggleSlider" })
				local Goal = { Position = UDim2.new(0, X, 0.5, 0), Size = UDim2.fromOffset(Width, 14) }
				if Instant then
					Knob.Position = Goal.Position
					Knob.Size = Goal.Size
					Track.BackgroundTransparency = On and 0 or 0.72
				else
					Creator.Tween(Knob, 0.3, Goal, Enum.EasingStyle.Back)
					Creator.Tween(Track, 0.22, { BackgroundTransparency = On and 0 or Creator.GetThemeProperty("ToggleSliderTransparency") })
				end
			end
		elseif Variant == "Simplefield" then
			local Knob = New("Frame", {
				Size = UDim2.fromOffset(14, 14),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 3, 0.5, 0),
				BackgroundColor3 = Color3.new(1, 1, 1),
			}, {
				Corner(999),
			})

			local Track = New("Frame", {
				Size = UDim2.fromOffset(36, 20),
				BackgroundTransparency = 0.72,
				ThemeTag = {
					BackgroundColor3 = "ToggleSlider",
				},
			}, {
				Corner(999),
				Knob,
			})

			Place(Track, Row)

			function Visual(Instant)
				local On = Toggle.Value
				Creator.OverrideTag(Track, { BackgroundColor3 = On and "ToggleToggled" or "ToggleSlider" })
				local Goal = UDim2.new(0, On and 19 or 3, 0.5, 0)
				if Instant then
					Knob.Position = Goal
					Track.BackgroundTransparency = On and 0 or 0.72
				else
					Creator.Tween(Knob, 0.2, { Position = Goal }, Enum.EasingStyle.Back)
					Creator.Tween(Track, 0.18, { BackgroundTransparency = On and 0 or 0.72 })
				end
			end
		elseif Variant == "Radio" then
			local Dot = New("Frame", {
				Size = UDim2.fromOffset(0, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				ThemeTag = {
					BackgroundColor3 = "Accent",
				},
			}, {
				Corner(999),
			})

			local Ring = New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Thickness = 1.5,
				Transparency = 0.78,
				ThemeTag = {
					Color = "ToggleSlider",
				},
			})

			local Circle = New("Frame", {
				Size = UDim2.fromOffset(20, 20),
				BackgroundTransparency = 1,
			}, {
				Corner(999),
				Ring,
				Dot,
			})

			Place(Circle, Row)

			function Visual(Instant)
				local On = Toggle.Value
				Creator.OverrideTag(Ring, { Color = On and "Accent" or "ToggleSlider" })
				local DotGoal = UDim2.fromOffset(On and 10 or 0, On and 10 or 0)
				local RingGoal = On and 0 or 0.78
				if Instant then
					Dot.Size = DotGoal
					Ring.Transparency = RingGoal
				else
					Creator.Tween(Dot, 0.22, { Size = DotGoal }, Enum.EasingStyle.Back)
					Creator.Tween(Ring, 0.15, { Transparency = RingGoal })
				end
			end
		else
			local Small = Variant == "Check"
			local Size = Small and 18 or 22

			local Mark = New("ImageLabel", {
				Image = Asset("check"),
				Size = UDim2.fromOffset(Small and 12 or 13, Small and 12 or 13),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				ImageTransparency = 1,
				ImageColor3 = Color3.new(1, 1, 1),
				ThemeTag = Small and { ImageColor3 = "AccentText" } or nil,
			})

			local Border
			if Small then
				Border = New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Thickness = 1.5,
					Transparency = 0.78,
					ThemeTag = {
						Color = "ToggleSlider",
					},
				})
			end

			local Box = New("Frame", {
				Size = UDim2.fromOffset(Size, Size),
				BackgroundTransparency = Small and 1 or 0.96,
				ThemeTag = {
					BackgroundColor3 = "ToggleSlider",
				},
			}, {
				Corner(Small and 6 or 7),
				Border,
				Mark,
			})

			Place(Box, Row)

			function Visual(Instant)
				local On = Toggle.Value
				Creator.OverrideTag(Box, { BackgroundColor3 = On and (Small and "Accent" or "ToggleToggled") or "ToggleSlider" })
				if Border then
					Creator.OverrideTag(Border, { Color = On and "Accent" or "ToggleSlider" })
				end
				local BoxGoal = On and 0 or (Small and 1 or 0.96)
				local MarkGoal = On and 0 or 1
				local BorderGoal = On and 0 or 0.78
				if Instant then
					Box.BackgroundTransparency = BoxGoal
					Mark.ImageTransparency = MarkGoal
					if Border then
						Border.Transparency = BorderGoal
					end
				else
					Creator.Tween(Box, 0.15, { BackgroundTransparency = BoxGoal })
					Creator.Tween(Mark, 0.15, { ImageTransparency = MarkGoal })
					if Border then
						Creator.Tween(Border, 0.15, { Transparency = BorderGoal })
					end
				end
			end
		end

		function Toggle:OnChanged(Func)
			Toggle.Changed = Func
			Func(Toggle.Value)
		end

		function Toggle:SetValue(Value)
			Value = not not Value
			Toggle.Value = Value
			Visual(false)

			Library:SafeCallback(Toggle.Callback, Toggle.Value)
			Library:SafeCallback(Toggle.Changed, Toggle.Value)
		end

		function Toggle:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Creator.AddGuarded(Row.Body, "MouseButton1Down", function()
			if not Creator.AcceptsInput(Row.Body) then
				return
			end
			Pressed = true
			if Variant == "Switch" then
				Visual(false)
			end
		end)

		local function Release()
			if Pressed then
				Pressed = false
				if Variant == "Switch" then
					Visual(false)
				end
			end
		end

		Creator.OnHoverLeave(Row.Body, Release)
		Creator.AddGuarded(Row.Body, "MouseButton1Up", Release)

		Creator.AddGuarded(Row.Body, "MouseButton1Click", function()
			if not Creator.AcceptsInput(Row.Body) then
				return
			end
			Toggle:SetValue(not Toggle.Value)
		end)

		Toggle.Value = not not Toggle.Value
		Visual(true)

		Library.Options[Idx] = Toggle
		return Toggle
	end

	return Element
end)()

ElementsTable.Slider = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Slider"
	Element.ClassType = "Input"

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Slider - Missing Title.")

		if Config.Variant == "Hue" then
			Config.Min = Config.Min or 0
			Config.Max = Config.Max or 360
			Config.Default = Config.Default or 0
			Config.Suffix = Config.Suffix or "°"
		end
		assert(Config.Default, "Slider - Missing default value.")
		assert(Config.Min, "Slider - Missing minimum value.")
		assert(Config.Max, "Slider - Missing maximum value.")

		local Variant = Config.Variant or "Pill"

		local Slider = {
			Value = nil,
			Min = Config.Min,
			Max = Config.Max,
			Rounding = Config.Rounding or 0,
			Suffix = Config.Suffix or "",
			Callback = Config.Callback or function(Value) end,
			Type = "Slider",
			Variant = Variant,
		}

		local Row = MakeRow(self, Config, false)
		Bind(Slider, Row)

		local Width = Config.Width or 120
		local Wide = Variant == "Wide"
		local Bubble = Variant == "Bubble"
		local Hue = Variant == "Hue"
		local Gradient = Hue or Variant == "Gradient"
		local Number = Variant == "Number"
		local NumberBox

		if Bubble then
			Row.Clip.ClipsDescendants = false
			Row.Clip.ZIndex = 5
		end

		local Thumb = New("Frame", {
			Size = UDim2.fromOffset(22, 14),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			BackgroundColor3 = Color3.new(1, 1, 1),
			ZIndex = 3,
		}, {
			Corner(7),
			New("UIStroke", {
				Color = Color3.new(0, 0, 0),
				Transparency = 0.86,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}),
		})

		local Fill = New("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			Corner(999),
		})

		local Rail = New("Frame", {
			Size = UDim2.new(1, 0, 0, 4),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			BackgroundTransparency = 0.9,
			ThemeTag = {
				BackgroundColor3 = "SliderRail",
			},
		}, {
			Corner(999),
			Fill,
		})

		if Gradient then
			local Colors
			if typeof(Config.Gradient) == "ColorSequence" then
				Colors = Config.Gradient
			elseif type(Config.Gradient) == "table" and #Config.Gradient >= 2 then
				local Points = {}
				for Index, Color in next, Config.Gradient do
					table.insert(Points, ColorSequenceKeypoint.new((Index - 1) / (#Config.Gradient - 1), Color))
				end
				Colors = ColorSequence.new(Points)
			else
				Colors = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 69, 58)),
					ColorSequenceKeypoint.new(0.1429, Color3.fromRGB(255, 159, 10)),
					ColorSequenceKeypoint.new(0.2857, Color3.fromRGB(255, 214, 10)),
					ColorSequenceKeypoint.new(0.4286, Color3.fromRGB(50, 215, 75)),
					ColorSequenceKeypoint.new(0.5714, Color3.fromRGB(100, 210, 255)),
					ColorSequenceKeypoint.new(0.7143, Color3.fromRGB(94, 92, 230)),
					ColorSequenceKeypoint.new(0.8571, Color3.fromRGB(191, 90, 242)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 69, 58)),
				})
			end
			Creator.RemoveTag(Rail)
			Rail.Size = UDim2.new(1, 0, 0, 5)
			Rail.BackgroundTransparency = 0
			Rail.BackgroundColor3 = Color3.new(1, 1, 1)
			Fill.Visible = false
			New("UIGradient", {
				Color = Colors,
				Parent = Rail,
			})
		end

		local Display = Label({
			Text = "",
			TextSize = 12,
			Weight = "Medium",
			Tag = "TextSecondary",
			TextXAlignment = Enum.TextXAlignment.Right,
			Size = UDim2.fromOffset(40, 28),
			Visible = not Bubble and not Number,
		})

		local BubbleLabel
		local BubbleFrame
		if Bubble then
			BubbleLabel = Label({
				Text = "",
				TextSize = 11,
				Weight = "Medium",
				Tag = "ToastText",
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.new(0, 0, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Center,
			})
			BubbleFrame = New("Frame", {
				Size = UDim2.fromOffset(0, 24),
				AutomaticSize = Enum.AutomaticSize.X,
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 0, -10),
				BackgroundTransparency = 1,
				ZIndex = 5,
				Parent = Thumb,
				ThemeTag = {
					BackgroundColor3 = "ToastBackground",
				},
			}, {
				Corner(8),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8),
				}),
				BubbleLabel,
			})
			BubbleLabel.TextTransparency = 1
		end

		local Hit = New("TextButton", {
			Size = UDim2.new(1, 0, 0, 28),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 4,
		})

		local Track = New("Frame", {
			BackgroundTransparency = 1,
		}, {
			Rail,
			Thumb,
			Hit,
		})

		if Gradient then
			Row:SetExtra(26)
			local Left = Row.LeftSpace
			Track.Size = UDim2.new(1, -(Left + 14 + 48), 0, 28)
			Track.AnchorPoint = Vector2.new(0, 1)
			Track.Position = UDim2.new(0, Left, 1, -6)
			Track.Parent = Row.Content
			Display.AnchorPoint = Vector2.new(1, 1)
			Display.Position = UDim2.new(1, -14, 1, -6)
			Display.Size = UDim2.fromOffset(42, 28)
			Display.Parent = Row.Content
		elseif Wide then
			Row:SetExtra(24)
			Track.Size = UDim2.new(1, -28, 0, 28)
			Track.AnchorPoint = Vector2.new(0, 1)
			Track.Position = UDim2.new(0, 14, 1, -6)
			Track.Parent = Row.Content
			Display.AnchorPoint = Vector2.new(1, 0)
			Display.Position = UDim2.new(1, -14, 0, 8)
			Display.Size = UDim2.fromOffset(80, 20)
			Display.Parent = Row.Content
		else
			local Holder = New("Frame", {
				Size = UDim2.fromOffset(((Bubble or Number) and 0 or 48) + Width + (Number and 58 or 0), 28),
				BackgroundTransparency = 1,
			})
			Track.Size = UDim2.fromOffset(Width, 28)
			Track.Position = UDim2.fromOffset((Bubble or Number) and 0 or 48, 0)
			Track.Parent = Holder
			Display.Position = UDim2.fromOffset(0, 0)
			Display.Parent = Holder
			if Number then
				NumberBox = New("TextBox", {
					Size = UDim2.fromOffset(48, 26),
					Position = UDim2.fromOffset(Width + 10, 1),
					BackgroundTransparency = 0.94,
					ClearTextOnFocus = false,
					FontFace = Fonts.Medium,
					TextSize = 12,
					Text = "",
					Parent = Holder,
					ThemeTag = {
						BackgroundColor3 = "Keybind",
						TextColor3 = "Text",
					},
				}, {
					Corner(7),
				})
				Creator.AddSignal(NumberBox.FocusLost, function()
					local Parsed = tonumber(NumberBox.Text)
					if Parsed then
						Slider:SetValue(Parsed)
					else
						NumberBox.Text = tostring(Slider.Value)
					end
				end)
			end
			Place(Holder, Row)
		end

		local Dragging = false

		local function ShowBubble(Value)
			if BubbleFrame then
				Creator.Tween(BubbleFrame, 0.14, { BackgroundTransparency = Value and 0 or 1 })
				Creator.Tween(BubbleLabel, 0.14, { TextTransparency = Value and 0 or 1 })
			end
		end

		Creator.BindDrag(Hit, function(X)
			if not Dragging then
				Dragging = true
				Row:SetFocused(true)
				ShowBubble(true)
			end
			Slider:SetValue(Slider.Min + ((Slider.Max - Slider.Min) * X))
		end, function()
			Dragging = false
			Row:SetFocused(false)
			ShowBubble(false)
		end, { Threshold = 8 })

		function Slider:OnChanged(Func)
			Slider.Changed = Func
			Func(Slider.Value)
		end

		function Slider:SetValue(Value)
			self.Value = tonumber(Library:Round(math.clamp(Value, Slider.Min, Slider.Max), Slider.Rounding))
			local Alpha = (self.Value - Slider.Min) / (Slider.Max - Slider.Min)
			Thumb.Position = UDim2.new(Alpha, 0, 0.5, 0)
			Fill.Size = UDim2.fromScale(Alpha, 1)
			local Text = tostring(self.Value) .. Slider.Suffix
			Display.Text = Text
			if BubbleLabel then
				BubbleLabel.Text = Text
			end
			if NumberBox then
				NumberBox.Text = tostring(self.Value)
			end

			Library:SafeCallback(Slider.Callback, self.Value)
			Library:SafeCallback(Slider.Changed, self.Value)
		end

		function Slider:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Slider:SetValue(Config.Default)

		Library.Options[Idx] = Slider
		return Slider
	end

	return Element
end)()

ElementsTable.Paragraph = (function()
	local Paragraph = {}
	Paragraph.__index = Paragraph
	Paragraph.__type = "Paragraph"
	Paragraph.ClassType = "Display"
	Paragraph.NoIdx = true

	local Variants = {
		Note = { Color = Color3.fromRGB(255, 159, 10), Icon = "alert-circle" },
		Warning = { Color = Color3.fromRGB(255, 159, 10), Icon = "alert-triangle" },
		Info = { Color = Color3.fromRGB(67, 150, 250), Icon = "info" },
		Success = { Color = Color3.fromRGB(34, 197, 94), Icon = "check-circle" },
		Danger = { Color = Color3.fromRGB(239, 68, 68), Icon = "x-circle" },
	}

	function Paragraph:New(Config)
		Config.Title = Config.Title or ""
		Config.Content = Config.Content or Config.Description or ""

		local Variant = Config.Variant or "Default"
		local Spec = Variants[Variant]

		local Row = MakeRow(self, {
			Title = Config.Title,
			Description = Config.Content,
			Icon = Config.Icon or (Spec and Spec.Icon),
			IconColor = Config.IconColor,
			HolderColor = Config.HolderColor,
			Badge = Config.Badge,
			Keywords = Config.Keywords,
		}, false)
		Row.Type = "Paragraph"
		Row.Variant = Variant
		Row.Separator.BackgroundTransparency = 0.94

		if Config.Title == "" then
			Row.TitleRow.Visible = false
		end

		if Spec then
			local Tint = New("Frame", {
				Position = UDim2.fromOffset(10, 6),
				Size = UDim2.new(1, -20, 1, -12),
				BackgroundColor3 = Spec.Color,
				BackgroundTransparency = 0.88,
				ZIndex = 0,
				Parent = Row.Content,
			}, {
				Corner(8),
			})
			Row.Tint = Tint
			Row.Separator.Visible = false
			Creator.RemoveTag(Row.IconLabel)
			Creator.Icons[Row.IconLabel] = nil
			Row.IconLabel.ImageColor3 = Spec.Color
			Row.IconX = 24
			Row:AlignIcon()
			Row.LabelHolder.Position = UDim2.fromOffset(52, 0)
			Row.LabelHolder.Size = UDim2.new(1, -(52 + 24), 0, 50)
			Row.LeftSpace = 52
			local Old = Row.SetCorners
			function Row:SetCorners(Top, Bottom)
				Old(self, Top, Bottom, false)
			end
		end

		local Tags = {}
		local TagHolder

		local function EnsureHolder()
			if TagHolder then
				return TagHolder
			end
			TagHolder = New("Frame", {
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.new(0, 0, 0, 24),
				BackgroundTransparency = 1,
				Visible = false,
			}, {
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 8),
				}),
			})
			Place(TagHolder, Row)
			return TagHolder
		end

		function Row:AddTag(Entry)
			local Data = {}
			if type(Entry) == "table" then
				for Key, Value in next, Entry do
					Data[Key] = Value
				end
			else
				Data.Text = tostring(Entry)
			end
			Data.Parent = EnsureHolder()
			local Tag = Components.Tag(Data)
			Tag.Frame.LayoutOrder = #Tags + 1
			table.insert(Tags, Tag)
			TagHolder.Visible = true
			return Tag
		end

		function Row:ClearTags()
			for _, Tag in next, Tags do
				Tag:Destroy()
			end
			table.clear(Tags)
			if TagHolder then
				TagHolder.Visible = false
			end
		end

		function Row:SetTags(List)
			Row:ClearTags()
			for _, Entry in ipairs(List or {}) do
				Row:AddTag(Entry)
			end
			return Tags
		end

		function Row:SetTag(Entry)
			Row:ClearTags()
			if Entry ~= nil then
				return Row:AddTag(Entry)
			end
			return nil
		end

		function Row:GetTags()
			return Tags
		end

		if Config.Tag ~= nil then
			Row:SetTag(Config.Tag)
		end

		if Config.Tags then
			Row:SetTags(Config.Tags)
		end

		function Row:SetContent(Value)
			Row:SetDesc(Value)
		end

		return Row
	end

	return Paragraph
end)()

ElementsTable.Segmented = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Segmented"
	Element.ClassType = "Input"

	local function Normalize(List)
		local Result = {}
		for _, Entry in ipairs(List or {}) do
			if type(Entry) == "table" then
				local Value = Entry.Value
				if Value == nil then
					Value = Entry.Text
				end
				table.insert(Result, { Value = Value, Text = Entry.Text or tostring(Value) })
			else
				table.insert(Result, { Value = Entry, Text = tostring(Entry) })
			end
		end
		return Result
	end

	function Element:New(Idx, Config)
		assert(Config.Title, "Segmented - Missing Title")

		local Library = self.Library
		local Segmented = {
			Options = Normalize(Config.Options or Config.Values),
			Value = nil,
			Type = "Segmented",
			Callback = Config.Callback or function() end,
		}

		local Row = MakeRow(self, Config, false)
		Row.Type = "Segmented"
		Bind(Segmented, Row)

		local Stacked = Config.Variant ~= "Inline"
		local Height = Config.Height or 30
		local Buttons = {}

		local Track = New("Frame", {
			BackgroundTransparency = 0.95,
			Size = Stacked and UDim2.new(1, -(Row.LeftSpace + 14), 0, Height) or UDim2.new(0, 0, 0, Height),
			AutomaticSize = Stacked and Enum.AutomaticSize.None or Enum.AutomaticSize.X,
			ThemeTag = {
				BackgroundColor3 = "DropdownFrame",
			},
		}, {
			Corner(11),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, 3),
				PaddingRight = UDim.new(0, 3),
				PaddingTop = UDim.new(0, 3),
				PaddingBottom = UDim.new(0, 3),
			}),
			New("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 3),
			}),
		})

		if Stacked then
			Row:SetExtra(Height + 6)
			Track.AnchorPoint = Vector2.new(0, 1)
			Track.Position = UDim2.new(0, Row.LeftSpace, 1, -6)
			Track.Parent = Row.Content
		else
			Place(Track, Row)
		end

		local function Paint()
			for _, Item in next, Buttons do
				local On = Item.Option.Value == Segmented.Value
				Item.On = On
				Creator.OverrideTag(Item.Frame, {
					BackgroundColor3 = "FillButton",
					TextColor3 = On and "FillButtonText" or "SubText",
				})
				Creator.Tween(Item.Frame, 0.14, { BackgroundTransparency = On and 0 or 1 })
			end
		end

		local function Has(Value)
			for _, Option in next, Segmented.Options do
				if Option.Value == Value then
					return true
				end
			end
			return false
		end

		local function Build()
			for _, Item in next, Buttons do
				Item.Frame:Destroy()
			end
			table.clear(Buttons)

			local Count = #Segmented.Options
			for Index, Option in ipairs(Segmented.Options) do
				local Frame = New("TextButton", {
					FontFace = Fonts.SemiBold,
					Text = Option.Text,
					TextSize = 12,
					Size = Stacked and UDim2.new(1 / Count, -(((Count - 1) * 3) / Count), 1, 0) or UDim2.new(0, 0, 1, 0),
					AutomaticSize = Stacked and Enum.AutomaticSize.None or Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					LayoutOrder = Index,
					Parent = Track,
					ThemeTag = {
						BackgroundColor3 = "FillButton",
						TextColor3 = "SubText",
					},
				}, {
					Corner(8),
					New("UIPadding", {
						PaddingLeft = UDim.new(0, 12),
						PaddingRight = UDim.new(0, 12),
					}),
				})

				local Item = { Frame = Frame, Option = Option, On = false }
				table.insert(Buttons, Item)

				Library.CreateItemHover(Frame, { Radius = 8 })
				Creator.AddGuarded(Frame, "MouseButton1Click", function()
					Segmented:SetValue(Option.Value)
				end)
			end

			Paint()
		end

		function Segmented:SetValue(Value, Silent)
			if Value ~= nil and not Has(Value) then
				return
			end
			Segmented.Value = Value
			Paint()
			if not Silent then
				Library:SafeCallback(Segmented.Callback, Value)
				Library:SafeCallback(Segmented.Changed, Value)
			end
		end

		function Segmented:SetOptions(List)
			Segmented.Options = Normalize(List)
			if not Has(Segmented.Value) then
				Segmented.Value = Segmented.Options[1] and Segmented.Options[1].Value or nil
			end
			Build()
		end

		function Segmented:OnChanged(Func)
			Segmented.Changed = Func
			Func(Segmented.Value)
		end

		Segmented.Value = Config.Default
		if not Has(Segmented.Value) then
			Segmented.Value = Segmented.Options[1] and Segmented.Options[1].Value or nil
		end
		Build()

		Library.Options[Idx] = Segmented
		return Segmented
	end

	return Element
end)()

ElementsTable.Dropdown = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Dropdown"
	Element.ClassType = "Input"

	local Specs = {
		Menu = { Height = 34, Radius = 9, Fill = "DropdownFrame", Base = 0.94, Hover = 0.9, TextSize = 12.5, Width = 150 },
		Compact = { Height = 26, Radius = 8, Fill = "DropdownFrame", Base = 0.94, Hover = 0.9, TextSize = 12, Width = 120 },
	}

	local SortModes = {
		Load = true,
		Reverse = true,
		Alphabetical = true,
		AlphabeticalReverse = true,
		Length = true,
		Selected = true,
		Relevance = true,
	}

	local function EscapeRich(Text)
		return (Text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
	end

	local function HighlightRich(Text, Query)
		local Lower = string.lower(Text)
		local Parts = {}
		local Cursor = 1
		while true do
			local From, To = string.find(Lower, Query, Cursor, true)
			if not From then
				break
			end
			if From > Cursor then
				table.insert(Parts, EscapeRich(string.sub(Text, Cursor, From - 1)))
			end
			table.insert(Parts, "<b>" .. EscapeRich(string.sub(Text, From, To)) .. "</b>")
			Cursor = To + 1
		end
		if Cursor <= #Text then
			table.insert(Parts, EscapeRich(string.sub(Text, Cursor)))
		end
		return table.concat(Parts)
	end

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Dropdown - Missing Title")
		assert(Config.Values, "Dropdown - Missing Values")

		local Variant = Config.Variant or "Menu"
		local Segmented = Variant == "Segmented"
		local Spec = Specs[Variant] or Specs.Menu

		local SortOrder = Config.SortOrder or "Load"
		assert(
			type(SortOrder) == "function" or SortModes[SortOrder],
			"Dropdown - Unknown SortOrder '" .. tostring(SortOrder) .. "'"
		)

		local Dropdown = {
			SortOrder = SortOrder,
			Values = Config.Values,
			Value = Config.Multi and {} or nil,
			Multi = Config.Multi,
			AllowNull = Config.AllowNull,
			Opened = false,
			Type = "Dropdown",
			Variant = Variant,
			Searchable = Config.Searchable == true and not Segmented,
			Tags = Config.Tags or {},
			ItemTags = Config.ItemTags or {},
			Callback = Config.Callback or function() end,
		}

		local Row = MakeRow(self, Config, false)
		Bind(Dropdown, Row)

		local ScrollFrame = self.ScrollFrame
		local Buttons = {}
		local Popup
		local Display
		local Inner
		local PopupFrame
		local PopupScroll
		local PopupLayout
		local SearchBox
		local EmptyLabel
		local DisplayChips = {}

		local function GetItemTags(Value)
			local Entry = Dropdown.ItemTags[Value]
			if type(Entry) == "string" then
				return { Entry }
			end
			return Entry or {}
		end

		local function MakeTag(Name, Parent, ZIndex)
			local Definition = Dropdown.Tags[Name] or {}
			local Color = Definition.Color
			local Text = Label({
				Text = Definition.Text or tostring(Name),
				TextSize = 10.5,
				Weight = "SemiBold",
				TextXAlignment = Enum.TextXAlignment.Center,
				Size = UDim2.new(0, 0, 1, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				ZIndex = ZIndex + 1,
			})
			local Chip = New("Frame", {
				Size = UDim2.fromOffset(0, 16),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 0.82,
				ZIndex = ZIndex,
				Parent = Parent,
			}, {
				Corner(5),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 6),
					PaddingRight = UDim.new(0, 6),
				}),
				Text,
			})
			if typeof(Color) == "Color3" then
				Creator.RemoveTag(Text)
				Text.TextColor3 = Color
				Chip.BackgroundColor3 = Color
			else
				Creator.OverrideTag(Text, { TextColor3 = Color or "Accent" })
				Creator.OverrideTag(Chip, { BackgroundColor3 = Color or "Accent" })
			end
			return Chip, Text.TextBounds.X + 12
		end

		local function IsSelected(Value)
			if Dropdown.Multi then
				return Dropdown.Value[Value] == true
			end
			return Dropdown.Value == Value
		end

		local function Commit()
			Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
			Library:SafeCallback(Dropdown.Changed, Dropdown.Value)
		end

		local function Toggle(Value)
			local Try = not IsSelected(Value)
			if Dropdown.Multi then
				if not Try and not Dropdown.AllowNull and Dropdown:GetActiveCount() <= 1 then
					return
				end
				Dropdown.Value[Value] = Try and true or nil
			else
				if not Try and not Dropdown.AllowNull then
					return
				end
				Dropdown.Value = Try and Value or nil
			end
			Dropdown:Refresh()
			Commit()
			if not Dropdown.Multi and not Segmented then
				Dropdown:Close()
			end
		end

		function Dropdown:GetActiveCount()
			if Dropdown.Multi then
				local Count = 0
				for _ in next, Dropdown.Value do
					Count = Count + 1
				end
				return Count
			end
			return Dropdown.Value ~= nil and 1 or 0
		end

		function Dropdown:GetActiveValues()
			if Dropdown.Multi then
				local List = {}
				for _, Value in ipairs(Dropdown.Values) do
					if Dropdown.Value[Value] then
						table.insert(List, Value)
					end
				end
				return List
			end
			return Dropdown.Value and { Dropdown.Value } or {}
		end

		function Dropdown:Display()
			if Segmented then
				return
			end
			local Text = table.concat(Dropdown:GetActiveValues(), ", ")
			Display.Text = Text == "" and "--" or Text
			for _, Chip in next, DisplayChips do
				Chip:Destroy()
			end
			table.clear(DisplayChips)
			local Width = 0
			if not Dropdown.Multi and Dropdown.Value ~= nil then
				local List = GetItemTags(Dropdown.Value)
				for Index = #List, 1, -1 do
					local Chip, ChipWidth = MakeTag(List[Index], Inner, 3)
					Chip.AnchorPoint = Vector2.new(1, 0.5)
					Chip.Position = UDim2.new(1, -(30 + Width), 0.5, 0)
					table.insert(DisplayChips, Chip)
					Width = Width + ChipWidth + 4
				end
			end
			Display.Size = UDim2.new(1, -(34 + Width), 1, 0)
		end

		if Segmented then
			local Holder = New("Frame", {
				Size = UDim2.fromOffset(0, 34),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 0.94,
				ThemeTag = {
					BackgroundColor3 = "DropdownFrame",
				},
			}, {
				Corner(10),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 3),
					PaddingRight = UDim.new(0, 3),
					PaddingTop = UDim.new(0, 3),
					PaddingBottom = UDim.new(0, 3),
				}),
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 2),
				}),
			})
			Inner = Holder
			Place(Holder, Row)
		else
			Display = Label({
				Text = "--",
				TextSize = Spec.TextSize,
				Weight = "Medium",
				TextTruncate = Enum.TextTruncate.AtEnd,
				Size = UDim2.new(1, -34, 1, 0),
				Position = UDim2.fromOffset(12, 0),
			})

			Inner = New("TextButton", {
				Size = UDim2.fromOffset(Config.Width or Spec.Width, Spec.Height),
				BackgroundTransparency = Spec.Base,
				ThemeTag = {
					BackgroundColor3 = Spec.Fill,
				},
			}, {
				Corner(Spec.Radius),
				Display,
				New("ImageLabel", {
					Image = Asset("chevron-down"),
					Size = UDim2.fromOffset(14, 14),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, -10, 0.5, 0),
					ThemeTag = {
						ImageColor3 = "SubText",
					},
				}),
			})
			Place(Inner, Row)

			local Hover = HoverMotor(Inner, "BackgroundTransparency", Spec.Base, Spec.Hover, Spec.Hover + 0.03)
			BindHover(Inner, Hover)
		end

		if not Segmented then
			PopupLayout = New("UIListLayout", {
				Padding = UDim.new(0, 2),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			PopupScroll = New("ScrollingFrame", {
				Size = UDim2.new(1, -8, 1, -8),
				Position = UDim2.fromOffset(4, 4),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				BottomImage = Components.Assets.ScrollBottom,
				MidImage = Components.Assets.ScrollMid,
				TopImage = Components.Assets.ScrollTop,
				CanvasSize = UDim2.fromOffset(0, 0),
				ZIndex = 52,
				ThemeTag = {
					ScrollBarImageColor3 = "ScrollBar",
				},
			}, {
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 4),
					PaddingRight = UDim.new(0, 4),
					PaddingTop = UDim.new(0, 2),
					PaddingBottom = UDim.new(0, 2),
				}),
				PopupLayout,
			})

			PopupFrame = New("Frame", {
				Size = UDim2.fromScale(1, 1),
				Active = true,
				ZIndex = 51,
				ThemeTag = {
					BackgroundColor3 = "DropdownHolder",
				},
			}, {
				Corner(10),
				Stroke("DropdownBorder", 0.5),
				PopupScroll,
			})

			SearchBox = Components.Textbox(PopupFrame, "Search")
			SearchBox.Frame.Size = UDim2.new(1, -12, 0, 34)
			SearchBox.Frame.Position = UDim2.fromOffset(6, 6)
			SearchBox.Frame.ZIndex = 53
			SearchBox.Frame.Visible = Dropdown.Searchable
			SearchBox.Input.PlaceholderText = Config.SearchPlaceholder or "Search"

			EmptyLabel = Label({
				Text = "No results found",
				TextSize = 12,
				Weight = "Medium",
				Tag = "SubText",
				Size = UDim2.new(1, 0, 0, 32),
				TextXAlignment = Enum.TextXAlignment.Center,
				LayoutOrder = 100000,
				Visible = false,
				ZIndex = 53,
				Parent = PopupScroll,
			})

			Popup = New("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(150, 100),
				Visible = false,
				ZIndex = 50,
				ClipsDescendants = true,
				Parent = Library:GetDropdownFolder(Row.Content:FindFirstAncestorOfClass("ScreenGui") or Library.GUI),
			}, {
				PopupFrame,
			})
			table.insert(Library.OpenFrames, Popup)
			Creator.RegisterSurface(Popup)
		end

		local ListWidth = 0
		local TextInset = 12
		local EdgePadding = 10
		local CheckShift = 21
		local CheckShownX = 10
		local CheckHiddenX = 4

		local function Place_()
			if not Popup then
				return
			end
			local Position = Inner.AbsolutePosition
			local Size = Inner.AbsoluteSize
			local View = (Popup:FindFirstAncestorOfClass("ScreenGui") or Library.GUI).AbsoluteSize
			local Height = Popup.Size.Y.Offset
			local Width = Popup.Size.X.Offset
			local X = math.clamp(Position.X + Size.X - Width, 8, math.max(View.X - Width - 8, 8))
			local Y = Position.Y + Size.Y + 6
			if Y + Height > View.Y - 8 then
				Y = math.max(Position.Y - Height - 6, 8)
			end
			Popup.Position = UDim2.fromOffset(X, Y)
		end

		local function Resize()
			if not Popup then
				return
			end
			local Content = PopupLayout.AbsoluteContentSize.Y
			local Offset = Dropdown.Searchable and 46 or 0
			local Height = math.min(Content + 8, 276) + Offset
			local Width = math.max(Inner.AbsoluteSize.X, ListWidth + TextInset + CheckShift + EdgePadding + 8)
			PopupScroll.Position = UDim2.fromOffset(4, 4 + Offset)
			PopupScroll.Size = UDim2.new(1, -8, 1, -(8 + Offset))
			Popup.Size = UDim2.fromOffset(Width, Height)
			PopupScroll.CanvasSize = UDim2.fromOffset(0, Content)
			Place_()
		end

		local function GetQuery()
			if not SearchBox or not Dropdown.Searchable then
				return ""
			end
			local Query = string.lower(SearchBox.Input.Text or "")
			return Query:match("^%s*(.-)%s*$")
		end

		local function ApplySort()
			local Mode = Dropdown.SortOrder
			local Query = GetQuery()
			local Entries = {}
			for Index, Value in ipairs(Dropdown.Values) do
				Entries[Index] = { Value = Value, Index = Index, Text = string.lower(tostring(Value)) }
			end

			local function Rank(Entry)
				if Query == "" then
					return 0
				end
				local From = string.find(Entry.Text, Query, 1, true)
				if From == 1 then
					return 0
				elseif From and string.find(string.sub(Entry.Text, From - 1, From - 1), "[%s%p]") then
					return 1
				end
				return 2
			end

			local Compare
			if type(Mode) == "function" then
				Compare = function(A, B)
					if Mode(A.Value, B.Value) then
						return true
					elseif Mode(B.Value, A.Value) then
						return false
					end
					return A.Index < B.Index
				end
			elseif Mode == "Reverse" then
				Compare = function(A, B)
					return A.Index > B.Index
				end
			elseif Mode == "Alphabetical" then
				Compare = function(A, B)
					if A.Text ~= B.Text then
						return A.Text < B.Text
					end
					return A.Index < B.Index
				end
			elseif Mode == "AlphabeticalReverse" then
				Compare = function(A, B)
					if A.Text ~= B.Text then
						return A.Text > B.Text
					end
					return A.Index < B.Index
				end
			elseif Mode == "Length" then
				Compare = function(A, B)
					if #A.Text ~= #B.Text then
						return #A.Text < #B.Text
					end
					return A.Index < B.Index
				end
			elseif Mode == "Selected" then
				Compare = function(A, B)
					local SelectedA = IsSelected(A.Value)
					local SelectedB = IsSelected(B.Value)
					if SelectedA ~= SelectedB then
						return SelectedA
					end
					return A.Index < B.Index
				end
			elseif Mode == "Relevance" then
				Compare = function(A, B)
					local RankA = Rank(A)
					local RankB = Rank(B)
					if RankA ~= RankB then
						return RankA < RankB
					end
					return A.Index < B.Index
				end
			else
				Compare = function(A, B)
					return A.Index < B.Index
				end
			end

			table.sort(Entries, Compare)
			for Position, Entry in ipairs(Entries) do
				local Button = Buttons[Entry.Value]
				if Button then
					Button.Frame.LayoutOrder = Position
				end
			end
		end

		local function ApplyFilter()
			if not SearchBox then
				return
			end
			local Query = GetQuery()
			local Shown = 0
			local Total = 0
			for Value, Button in next, Buttons do
				Total += 1
				local Name = tostring(Value)
				local Match = Query == "" or string.find(string.lower(Name), Query, 1, true) ~= nil
				Button.Frame.Visible = Match
				if Match then
					Shown += 1
				end
				if Button.Label then
					local Marked = Match and Query ~= "" and HighlightRich(Name, Query) or nil
					if Button.Marked ~= Marked then
						Button.Marked = Marked
						Button.Label.RichText = Marked ~= nil
						Button.Label.Text = Marked or Name
					end
				end
			end
			EmptyLabel.Visible = Dropdown.Searchable and Total > 0 and Shown == 0
		end

		function Dropdown:SetSortOrder(Mode)
			Mode = Mode or "Load"
			assert(type(Mode) == "function" or SortModes[Mode], "Dropdown - Unknown SortOrder '" .. tostring(Mode) .. "'")
			Dropdown.SortOrder = Mode
			ApplySort()
		end

		function Dropdown:GetSortOrder()
			return Dropdown.SortOrder
		end

		function Dropdown:SetSearchable(Value)
			if Segmented then
				return
			end
			Dropdown.Searchable = Value == true
			SearchBox.Frame.Visible = Dropdown.Searchable
			if not Dropdown.Searchable and SearchBox.Input.Text ~= "" then
				SearchBox.Input.Text = ""
			end
			ApplyFilter()
			Resize()
		end

		function Dropdown:Refresh()
			for _, Button in next, Buttons do
				Button:Update()
			end
			Dropdown:Display()
		end

		function Dropdown:Build()
			for _, Button in next, Buttons do
				Button.Frame:Destroy()
			end
			table.clear(Buttons)

			local Parent = Segmented and Inner or PopupScroll
			ListWidth = 0

			for Order, Value in ipairs(Dropdown.Values) do
				local Item = {}

				local Text = Label({
					Text = tostring(Value),
					TextSize = Segmented and 12 or 12.5,
					Weight = "Medium",
					Tag = "TextSecondary",
					TextXAlignment = Segmented and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left,
					Size = Segmented and UDim2.new(0, 0, 1, 0) or UDim2.new(1, -(TextInset + EdgePadding), 1, 0),
					Position = Segmented and UDim2.new() or UDim2.fromOffset(TextInset, 0),
					AutomaticSize = Segmented and Enum.AutomaticSize.X or Enum.AutomaticSize.None,
					ZIndex = 53,
				})

				Item.Label = Text
				Item.Frame = New("TextButton", {
					Size = Segmented and UDim2.fromOffset(0, 28) or UDim2.new(1, 0, 0, 32),
					AutomaticSize = Segmented and Enum.AutomaticSize.X or Enum.AutomaticSize.None,
					BackgroundTransparency = 1,
					LayoutOrder = Order,
					ZIndex = 53,
					Parent = Parent,
					ThemeTag = {
						BackgroundColor3 = "DropdownOption",
					},
				}, {
					Corner(7),
					Segmented and New("UIPadding", {
						PaddingLeft = UDim.new(0, 12),
						PaddingRight = UDim.new(0, 12),
					}) or nil,
					Text,
				})

				if not Segmented then
					Item.Check = New("ImageLabel", {
						Image = Asset("check"),
						Size = UDim2.fromOffset(13, 13),
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, CheckHiddenX, 0.5, 0),
						ImageTransparency = 1,
						ZIndex = 54,
						Parent = Item.Frame,
						ThemeTag = {
							ImageColor3 = "Accent",
						},
					})
					local TagsWidth = 0
					local List = GetItemTags(Value)
					for Index = #List, 1, -1 do
						local Chip, ChipWidth = MakeTag(List[Index], Item.Frame, 54)
						Chip.AnchorPoint = Vector2.new(1, 0.5)
						Chip.Position = UDim2.new(1, -(EdgePadding + TagsWidth), 0.5, 0)
						TagsWidth = TagsWidth + ChipWidth + 4
					end
					Item.TagsWidth = TagsWidth
					Text.Size = UDim2.new(1, -(TextInset + EdgePadding + TagsWidth), 1, 0)
					if Text.TextBounds.X + TagsWidth > ListWidth then
						ListWidth = Text.TextBounds.X + TagsWidth
					end
				end

				Library.CreateItemHover(Item.Frame, { Radius = 7 })

				function Item:Update(Immediate)
					local On = IsSelected(Value)
					if Item.AppliedOn == On then
						return
					end
					Item.AppliedOn = On
					local Base = Segmented and (On and 0.9 or 1) or (On and 0.85 or 1)
					if Segmented then
						Creator.OverrideTag(Item.Frame, { BackgroundColor3 = "DropdownOption" })
					else
						Creator.OverrideTag(Item.Frame, { BackgroundColor3 = On and "Accent" or "DropdownOption" })
						Creator.OverrideTag(Text, { TextColor3 = On and "Accent" or "Text" })
						if Item.CheckOn ~= On then
							Item.CheckOn = On
							local Shift = if On then CheckShift else 0
							local CheckGoal = {
								ImageTransparency = if On then 0 else 1,
								Position = UDim2.new(0, if On then CheckShownX else CheckHiddenX, 0.5, 0),
							}
							local TextGoal = {
								Position = UDim2.fromOffset(TextInset + Shift, 0),
								Size = UDim2.new(1, -(TextInset + Shift + EdgePadding + (Item.TagsWidth or 0)), 1, 0),
							}
							if Immediate or Library.Config.ReducedMotion then
								Item.Check.ImageTransparency = CheckGoal.ImageTransparency
								Item.Check.Position = CheckGoal.Position
								Text.Position = TextGoal.Position
								Text.Size = TextGoal.Size
							else
								Creator.Tween(Item.Check, 0.2, CheckGoal)
								Creator.Tween(Text, 0.2, TextGoal)
							end
						end
					end
					if Segmented then
						Creator.OverrideTag(Text, { TextColor3 = On and "Text" or "TextSecondary" })
					end
					Creator.Tween(Item.Frame, 0.12, { BackgroundTransparency = Base })
				end

				Creator.AddGuarded(Item.Frame, "MouseButton1Click", function()
					Toggle(Value)
				end)

				Buttons[Value] = Item
				Item:Update(true)
			end

			ApplySort()
			ApplyFilter()
			Dropdown:Display()
			task.defer(Resize)
		end

		function Dropdown:Open()
			if not Popup or Dropdown.Opened then
				return
			end
			Library:ClosePopups(Dropdown.Close)
			Library:ClearRowHover()
			Dropdown.Opened = true
			Row:SetFocused(true)
			ScrollFrame.ScrollingEnabled = false
			if SearchBox and SearchBox.Input.Text ~= "" then
				SearchBox.Input.Text = ""
			end
			ApplySort()
			ApplyFilter()
			Resize()
			Popup.Visible = true
			PopupFrame.Position = UDim2.fromOffset(0, -6)
			Creator.Tween(PopupFrame, 0.16, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Quart)
			Library.Popups[Dropdown.Close] = true
		end

		function Dropdown.Close()
			if not Popup then
				return
			end
			Dropdown.Opened = false
			Row:SetFocused(false)
			ScrollFrame.ScrollingEnabled = true
			Popup.Visible = false
			Library.Popups[Dropdown.Close] = nil
		end

		Row.OnLock = Dropdown.Close

		function Dropdown:SetValues(NewValues)
			if NewValues then
				Dropdown.Values = NewValues
			end
			Dropdown:Build()
		end

		function Dropdown:SetTags(Tags)
			Dropdown.Tags = Tags or {}
			Dropdown:Build()
		end

		function Dropdown:SetItemTags(Map)
			Dropdown.ItemTags = Map or {}
			Dropdown:Build()
		end

		function Dropdown:SetItemTag(Value, Tag)
			Dropdown.ItemTags[Value] = Tag
			Dropdown:Build()
		end

		function Dropdown:OnChanged(Func)
			Dropdown.Changed = Func
			Func(Dropdown.Value)
		end

		function Dropdown:SetValue(Val)
			if Dropdown.Multi then
				local Next = {}
				for Value, Bool in next, Val or {} do
					if Bool and table.find(Dropdown.Values, Value) then
						Next[Value] = true
					end
				end
				Dropdown.Value = Next
			else
				if Val == nil then
					Dropdown.Value = nil
				elseif table.find(Dropdown.Values, Val) then
					Dropdown.Value = Val
				end
			end
			Dropdown:Refresh()
			Commit()
		end

		function Dropdown:Destroy()
			Dropdown.Close()
			if Popup then
				Popup:Destroy()
			end
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		if Inner and not Segmented then
			Creator.AddGuarded(Inner, "MouseButton1Click", function()
				if Dropdown.Opened then
					Dropdown.Close()
				else
					Dropdown:Open()
				end
			end)
			Creator.AddSignal(Inner:GetPropertyChangedSignal("AbsolutePosition"), Place_)
			Creator.AddSignal(PopupLayout:GetPropertyChangedSignal("AbsoluteContentSize"), Resize)
			Creator.AddSignal(SearchBox.Input:GetPropertyChangedSignal("Text"), function()
				if Dropdown.SortOrder == "Relevance" then
					ApplySort()
				end
				ApplyFilter()
				Resize()
			end)

			Creator.AddSignal(UserInputService.InputBegan, function(Input)
				if not Dropdown.Opened then
					return
				end
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
					local Point = Input.Position
					local function Inside(Object)
						local Position, Size = Object.AbsolutePosition, Object.AbsoluteSize
						return Point.X >= Position.X
							and Point.X <= Position.X + Size.X
							and Point.Y >= Position.Y
							and Point.Y <= Position.Y + Size.Y
					end
					if not Inside(Popup) and not Inside(Inner) then
						Dropdown.Close()
					end
				end
			end)
		end

		local Default = Config.Default
		if Dropdown.Multi then
			if type(Default) == "table" then
				for Key, Value in next, Default do
					if type(Key) == "number" then
						local Name = table.find(Dropdown.Values, Value) and Value or Dropdown.Values[Value]
						if Name then
							Dropdown.Value[Name] = true
						end
					elseif Value and table.find(Dropdown.Values, Key) then
						Dropdown.Value[Key] = true
					end
				end
			elseif type(Default) == "string" and table.find(Dropdown.Values, Default) then
				Dropdown.Value[Default] = true
			elseif type(Default) == "number" and Dropdown.Values[Default] then
				Dropdown.Value[Dropdown.Values[Default]] = true
			end
		else
			if type(Default) == "string" and table.find(Dropdown.Values, Default) then
				Dropdown.Value = Default
			elseif type(Default) == "number" and Dropdown.Values[Default] ~= nil then
				Dropdown.Value = Dropdown.Values[Default]
			end
		end

		Dropdown:Build()

		Library.Options[Idx] = Dropdown
		return Dropdown
	end

	return Element
end)()

ElementsTable.Input = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Input"
	Element.ClassType = "Input"

	local Widths = {
		Field = 170,
		Bordered = 150,
		Standard = 170,
		Inline = 150,
		Search = 190,
		PanelSearch = 190,
	}

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Input - Missing Title")

		local Variant = Config.Variant or "Field"
		assert(Widths[Variant], "Input - Unknown Variant '" .. tostring(Variant) .. "'")

		local Input = {
			Value = tostring(Config.Default or ""),
			Numeric = Config.Numeric or false,
			Finished = Config.Finished or false,
			Callback = Config.Callback or function(Value) end,
			Type = "Input",
			Variant = Variant,
		}

		local Row = MakeRow(self, Config, false)
		Bind(Input, Row)

		local Textbox = Components.Textbox(nil, Variant)
		Textbox.Frame.Size = UDim2.new(0, Config.Width or Widths[Variant], 0, Textbox.Spec.Height)
		Textbox.Input.Text = Input.Value
		Textbox.Input.PlaceholderText = Config.Placeholder or ""
		Place(Textbox.Frame, Row)

		local Box = Textbox.Input

		Creator.AddSignal(Box.Focused, function()
			Row:SetFocused(true)
		end)
		Creator.AddSignal(Box.FocusLost, function()
			Row:SetFocused(false)
		end)
		Input.Textbox = Textbox

		function Input:SetValue(Text)
			Text = tostring(Text or "")
			if Config.MaxLength and #Text > Config.MaxLength then
				Text = Text:sub(1, Config.MaxLength)
			end

			if Input.Numeric and Text:len() > 0 and not tonumber(Text) then
				if not Input.Finished and Text:match("^%-?%.?$") then
					return
				end
				Text = Input.Value
			end

			Input.Value = Text
			if Box.Text ~= Text then
				Box.Text = Text
			end

			Library:SafeCallback(Input.Callback, Input.Value)
			Library:SafeCallback(Input.Changed, Input.Value)
		end

		if Input.Finished then
			Creator.AddSignal(Box.FocusLost, function(Enter)
				if Enter then
					Input:SetValue(Box.Text)
				end
			end)
		else
			Creator.AddSignal(Box:GetPropertyChangedSignal("Text"), function()
				Input:SetValue(Box.Text)
			end)
		end

		function Input:OnChanged(Func)
			Input.Changed = Func
			Func(Input.Value)
		end

		function Input:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Library.Options[Idx] = Input
		return Input
	end

	return Element
end)()

ElementsTable.Keybind = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Keybind"
	Element.ClassType = "Input"

	local Modes = { Always = true, Toggle = true, Hold = true }

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Keybind - Missing Title")
		assert(Config.Default, "Keybind - Missing default value.")

		local Variant = Config.Variant or "Default"

		local Keybind = {
			Value = Config.Default,
			Toggled = false,
			Mode = Modes[Config.Mode] and Config.Mode or "Toggle",
			Type = "Keybind",
			Variant = Variant,
			Callback = Config.Callback or function(Value) end,
			ChangedCallback = Config.ChangedCallback or function(New) end,
		}

		local Picking = false

		local Row = MakeRow(self, Config, true)
		Bind(Keybind, Row)

		local Mono = Variant == "Keycap"
		local Pill = Variant == "Chip"

		local Display = Label({
			Text = Config.Default,
			TextSize = Mono and 11.5 or 12,
			Weight = "SemiBold",
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			Tag = Pill and "Accent" or "Text",
		})
		if Mono then
			Display.FontFace = Fonts.Mono
		end

		local Button = New("TextButton", {
			Size = UDim2.fromOffset(0, Pill and 24 or 28),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundTransparency = Pill and 0.85 or 0.92,
			ThemeTag = {
				BackgroundColor3 = Pill and "Accent" or "Hover",
			},
		}, {
			Corner(Pill and 12 or (Mono and 7 or 8)),
			New("UIPadding", {
				PaddingLeft = UDim.new(0, Mono and 12 or 10),
				PaddingRight = UDim.new(0, Mono and 12 or 10),
			}),
			Mono and New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.7,
				Thickness = 1,
				ThemeTag = {
					Color = "InElementBorder",
				},
			}) or nil,
			Display,
		})
		Place(Button, Row)

		local Base = Button.BackgroundTransparency
		local Hover = HoverMotor(Button, "BackgroundTransparency", Base, Base - 0.04, Base - 0.08)
		BindHover(Button, Hover)

		function Keybind:GetState()
			if UserInputService:GetFocusedTextBox() and Keybind.Mode ~= "Always" then
				return false
			end

			if Keybind.Mode == "Always" then
				return true
			elseif Keybind.Mode == "Hold" then
				local Key = Keybind.Value
				if Key == "None" then
					return false
				end
				if Key == "MouseLeft" then
					return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
				elseif Key == "MouseRight" then
					return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
				end
				local Code = Enum.KeyCode[Key]
				return Code ~= nil and UserInputService:IsKeyDown(Code)
			end
			return Keybind.Toggled
		end

		function Keybind:SetValue(Key, Mode)
			Key = Key or Keybind.Value
			Mode = Mode or Keybind.Mode
			Display.Text = Key
			Keybind.Value = Key
			Keybind.Mode = Mode
		end

		function Keybind:OnClick(Func)
			Keybind.Clicked = Func
		end

		function Keybind:OnChanged(Func)
			Keybind.Changed = Func
			Func(Keybind.Value)
		end

		function Keybind:DoClick()
			Library:SafeCallback(Keybind.Callback, Keybind.Toggled)
			Library:SafeCallback(Keybind.Clicked, Keybind.Toggled)
		end

		function Keybind:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		local function Matches(Input, Key)
			if Key == "MouseLeft" then
				return Input.UserInputType == Enum.UserInputType.MouseButton1
			elseif Key == "MouseRight" then
				return Input.UserInputType == Enum.UserInputType.MouseButton2
			end
			return Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode.Name == Key
		end

		local function Capture()
			if Picking then
				return
			end
			Picking = true
			Row:SetFocused(true)
			Display.Text = "..."
			Creator.Tween(Button, 0.2, { BackgroundTransparency = Base - 0.1 })

			task.wait(0.2)

			local Event
			Event = UserInputService.InputBegan:Connect(function(Input)
				local Key
				if Input.UserInputType == Enum.UserInputType.Keyboard then
					Key = Input.KeyCode.Name
				elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
					Key = "MouseLeft"
				elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
					Key = "MouseRight"
				end
				if not Key then
					return
				end

				Event:Disconnect()
				local Ended
				Ended = UserInputService.InputEnded:Connect(function(Release)
					if Matches(Release, Key) then
						Ended:Disconnect()
						Picking = false
						Row:SetFocused(false)
						Display.Text = Key
						Keybind.Value = Key
						Creator.Tween(Button, 0.2, { BackgroundTransparency = Base })
						Library:SafeCallback(Keybind.ChangedCallback, Input.KeyCode ~= Enum.KeyCode.Unknown and Input.KeyCode or Input.UserInputType)
						Library:SafeCallback(Keybind.Changed, Input.KeyCode ~= Enum.KeyCode.Unknown and Input.KeyCode or Input.UserInputType)
					end
				end)
			end)
		end

		Creator.AddGuarded(Button, "MouseButton1Click", function()
			task.spawn(Capture)
		end)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
			if Picking or UserInputService:GetFocusedTextBox() then
				return
			end
			if Keybind.Mode == "Toggle" and Matches(Input, Keybind.Value) then
				Keybind.Toggled = not Keybind.Toggled
				Keybind:DoClick()
			end
		end)

		Library.Options[Idx] = Keybind
		return Keybind
	end

	return Element
end)()

local PickerKit = (function()
	local DialogOptions = {
		Tags = {
			Background = "PickerDialog",
			Border = "PickerBorder",
		},
	}

	local function ToHSL(Color)
		local R, G, B = Color.R, Color.G, Color.B
		local Max, Min = math.max(R, G, B), math.min(R, G, B)
		local L = (Max + Min) / 2
		local H, S = 0, 0
		local D = Max - Min
		if D > 0 then
			S = D / (1 - math.abs(2 * L - 1))
			if Max == R then
				H = ((G - B) / D) % 6
			elseif Max == G then
				H = (B - R) / D + 2
			else
				H = (R - G) / D + 4
			end
			H = H / 6
		end
		return H, S, L
	end

	local function FromHSL(H, S, L)
		local C = (1 - math.abs(2 * L - 1)) * S
		local X = C * (1 - math.abs((H * 6) % 2 - 1))
		local M = L - C / 2
		local Sector = math.floor(H * 6) % 6
		local R, G, B
		if Sector == 0 then
			R, G, B = C, X, 0
		elseif Sector == 1 then
			R, G, B = X, C, 0
		elseif Sector == 2 then
			R, G, B = 0, C, X
		elseif Sector == 3 then
			R, G, B = 0, X, C
		elseif Sector == 4 then
			R, G, B = X, 0, C
		else
			R, G, B = C, 0, X
		end
		return Color3.new(math.clamp(R + M, 0, 1), math.clamp(G + M, 0, 1), math.clamp(B + M, 0, 1))
	end

	local function Checker(Parent, Size, Radius)
		return New("ImageLabel", {
			Image = Components.Assets.Checker,
			ImageTransparency = 0.45,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.fromOffset(40, 40),
			BackgroundTransparency = 1,
			Size = Size,
			Parent = Parent,
		}, {
			Corner(Radius),
		})
	end

	local function MakeCaption(Dialog, Text, X, Y, W)
		return Label({
			Text = Text,
			TextSize = 10,
			Weight = "SemiBold",
			Tag = "SubText",
			Size = UDim2.fromOffset(W, 14),
			Position = UDim2.fromOffset(X, Y),
			Parent = Dialog.Root,
		})
	end

	local function MakePanel(Dialog, X, Y, W, H)
		return New("Frame", {
			Size = UDim2.fromOffset(W, H),
			Position = UDim2.fromOffset(X, Y),
			BackgroundTransparency = 0.45,
			Parent = Dialog.Root,
			ThemeTag = {
				BackgroundColor3 = "PickerPanel",
			},
		}, {
			Corner(14),
			Stroke("PickerBorder", 0.6),
		})
	end

	local function MakeKnob(Size)
		return New("Frame", {
			Size = UDim2.fromOffset(Size, Size),
			AnchorPoint = Vector2.new(0.5, 0.5),
			ZIndex = 7,
		}, {
			Corner(Size / 2),
			New("UIStroke", {
				Color = Color3.new(1, 1, 1),
				Thickness = 2.5,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}),
			New("Frame", {
				Size = UDim2.fromOffset(Size + 7, Size + 7),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1,
				ZIndex = 6,
			}, {
				Corner((Size + 7) / 2),
				New("UIStroke", {
					Color = Color3.new(0, 0, 0),
					Transparency = 0.65,
					Thickness = 1.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				}),
			}),
		})
	end

	local function MakeAction(Dialog, Text, X, Y, W, H, Radius, Callback)
		local Button = Components.Button({
			Text = Text,
			Variant = "Tonal",
			Size = UDim2.fromOffset(W, H),
			Radius = Radius,
			Padding = 6,
			Parent = Dialog.Root,
			IgnoreDialog = true,
		})
		Button.Frame.Position = UDim2.fromOffset(X, Y)
		Creator.AddGuarded(Button.Frame, "MouseButton1Click", Callback)
		return Button
	end

	local function MakeMap(Dialog, Session, X, Y, W, H, Radius)
		local Cursor = MakeKnob(16)
		Cursor.Parent = Dialog.Root

		local Map = New("ImageLabel", {
			Size = UDim2.fromOffset(W, H),
			Position = UDim2.fromOffset(X, Y),
			Image = "rbxassetid://4155801252",
			BackgroundColor3 = Color3.fromHSV(Session.Hue, 1, 1),
			BackgroundTransparency = 0,
			ClipsDescendants = true,
			Parent = Dialog.Root,
		}, {
			Corner(Radius),
			Stroke("PickerBorder", 0.55),
		})

		Creator.BindDrag(Map, function(Sx, Sy)
			Session:Set(nil, Sx, 1 - Sy)
		end)

		Session:Bind(function()
			Map.BackgroundColor3 = Color3.fromHSV(Session.Hue, 1, 1)
			Cursor.BackgroundColor3 = Session:Current()
			Cursor.Position = UDim2.fromOffset(X + Session.Sat * W, Y + (1 - Session.Vib) * H)
		end)

		return Map
	end

	local function MakeSlider(Dialog, Session, Kind, X, Y, W, H, Vertical)
		local Radius = math.floor(math.min(W, H) / 2)
		local Thumb = MakeKnob(14)

		local Bar = New("Frame", {
			Size = UDim2.fromOffset(W, H),
			Position = UDim2.fromOffset(X, Y),
			BackgroundColor3 = Color3.new(1, 1, 1),
			Parent = Dialog.Root,
		}, {
			Corner(Radius),
		})

		local Tint
		if Kind == "Hue" then
			local Keypoints = {}
			for Step = 0, 10 do
				table.insert(Keypoints, ColorSequenceKeypoint.new(Step / 10, Color3.fromHSV(Step / 10, 1, 1)))
			end
			New("UIGradient", {
				Color = ColorSequence.new(Keypoints),
				Rotation = Vertical and 90 or 0,
				Parent = Bar,
			})
		else
			Bar.BackgroundTransparency = 1
			local Back = Checker(Bar, UDim2.fromScale(1, 1), Radius)
			Tint = New("Frame", {
				Size = UDim2.fromScale(1, 1),
				Parent = Back,
			}, {
				Corner(Radius),
				New("UIGradient", {
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, Vertical and 0 or 1),
						NumberSequenceKeypoint.new(1, Vertical and 1 or 0),
					}),
					Rotation = Vertical and 90 or 0,
				}),
			})
		end

		Stroke("PickerBorder", 0.6).Parent = Bar
		Thumb.Parent = Bar

		Creator.BindDrag(Bar, function(Sx, Sy)
			local Value = Vertical and Sy or Sx
			if Kind == "Hue" then
				Session:Set(math.clamp(Value, 0, 0.999))
			else
				Session:Set(nil, nil, nil, Vertical and Value or 1 - Value)
			end
		end)

		Session:Bind(function()
			local Value = Session.Hue
			if Kind ~= "Hue" then
				Value = Vertical and Session.Alpha or 1 - Session.Alpha
			end
			Thumb.Position = Vertical and UDim2.fromScale(0.5, Value) or UDim2.fromScale(Value, 0.5)
			if Kind == "Hue" then
				Thumb.BackgroundColor3 = Color3.fromHSV(Session.Hue, 1, 1)
			else
				Thumb.BackgroundColor3 = Session:Current()
				Tint.BackgroundColor3 = Session:Current()
			end
		end)

		return Bar
	end

	local function MakePreview(Dialog, Session, X, Y, W, H, Radius, Static)
		local Back = Checker(Dialog.Root, UDim2.fromOffset(W, H), Radius)
		Back.Position = UDim2.fromOffset(X, Y)

		local Fill = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Session.Original,
			BackgroundTransparency = Session.OriginalAlpha,
			Parent = Back,
		}, {
			Corner(Radius),
			Stroke("PickerBorder", 0.5),
		})

		if not Static then
			Session:Bind(function()
				Fill.BackgroundColor3 = Session:Current()
				Fill.BackgroundTransparency = Session.Alpha
			end)
		end

		return Back
	end

	local function MakeFields(Dialog, Session, X, Y, Width, Mode, WithPreview)
		local Fields = { Mode = Mode }
		local Boxes = {}
		local Captions = {}
		local Swatch
		if WithPreview then
			Swatch = MakePreview(Dialog, Session, X, Y, 30, 30, 6)
		end

		for Index = 1, 5 do
			local Box = Components.Textbox(Dialog.Root, "Standard")
			Box.Frame.Size = UDim2.fromOffset(60, 30)
			Box.Container.Position = UDim2.fromOffset(4, 0)
			Box.Container.Size = UDim2.new(1, -8, 1, 0)
			Box.Input.TextXAlignment = Enum.TextXAlignment.Center
			Boxes[Index] = Box
			Captions[Index] = Label({
				Text = "",
				TextSize = 10,
				Weight = "Medium",
				Tag = "SubText",
				Size = UDim2.fromOffset(60, 12),
				TextXAlignment = Enum.TextXAlignment.Center,
				Parent = Dialog.Root,
			})
		end

		local Titles = {
			All = { "Hex", "R", "G", "B", "Alpha" },
			Hex = { "Hex", "", "", "", "Alpha" },
			RGB = { "", "R", "G", "B", "Alpha" },
			HSL = { "", "H", "S", "L", "Alpha" },
			HSB = { "", "H", "S", "B", "Alpha" },
		}

		local Weights = { Swatch and 1.8 or 2.2, 1, 1, 1, 1.4 }
		local SwatchCaption
		if Swatch then
			SwatchCaption = Label({
				Text = "New",
				TextSize = 10,
				Weight = "Medium",
				Tag = "SubText",
				Size = UDim2.fromOffset(60, 12),
				TextXAlignment = Enum.TextXAlignment.Center,
				Parent = Dialog.Root,
			})
		end

		function Fields:Layout()
			local Slots
			if self.Mode == "All" then
				Slots = { 1, 2, 3, 4 }
			elseif self.Mode == "Hex" then
				Slots = { 1 }
			else
				Slots = { 2, 3, 4 }
			end
			if Session.WithAlpha then
				table.insert(Slots, 5)
			end

			for Index = 1, 5 do
				Boxes[Index].Frame.Visible = false
				Captions[Index].Visible = false
			end

			local Gap = 6

			local function PlaceRun(Run, From, Span, Stretch)
				local Total = 0
				for _, Slot in next, Run do
					Total += Weights[Slot]
				end

				local Free = Span - Gap * (#Run - 1)
				local Offset = From
				for Index, Slot in next, Run do
					local Cell = math.floor(Free * Weights[Slot] / Total)
					if Stretch and Index == #Run then
						Cell = From + Span - Offset
					end
					Boxes[Slot].Frame.Position = UDim2.fromOffset(Offset, Y)
					Boxes[Slot].Frame.Size = UDim2.fromOffset(Cell, 30)
					Boxes[Slot].Frame.Visible = true
					Captions[Slot].Position = UDim2.fromOffset(Offset, Y + 33)
					Captions[Slot].Size = UDim2.fromOffset(Cell, 12)
					Captions[Slot].Text = Titles[self.Mode][Slot]
					Captions[Slot].Visible = true
					Offset += Cell + Gap
				end
			end

			if not Swatch then
				PlaceRun(Slots, X, Width)
				return
			end

			-- DO NOT shift the New slot off the center, both runs must keep the same Span
			local SwatchW = 40
			if (Width - SwatchW) % 2 ~= 0 then
				SwatchW += 1
			end
			local Span = (Width - SwatchW) / 2 - Gap
			local SwatchX = X + (Width - SwatchW) / 2

			local Before, After = {}, {}
			for _, Slot in next, Slots do
				table.insert((Slot == 1 or Slot == 5) and Before or After, Slot)
			end

			PlaceRun(Before, X, Span, true)
			PlaceRun(After, X + Width - Span, Span, true)

			Swatch.Position = UDim2.fromOffset(SwatchX, Y)
			Swatch.Size = UDim2.fromOffset(SwatchW, 30)
			Swatch.Visible = true
			SwatchCaption.Position = UDim2.fromOffset(SwatchX, Y + 33)
			SwatchCaption.Size = UDim2.fromOffset(SwatchW, 12)
			SwatchCaption.Visible = true
		end

		function Fields:Refresh()
			local Color = Session:Current()
			Boxes[1].Input.Text = "#" .. Color:ToHex():upper()

			if self.Mode == "HSL" then
				local H, S, L = ToHSL(Color)
				Boxes[2].Input.Text = tostring(math.floor(H * 360 + 0.5))
				Boxes[3].Input.Text = tostring(math.floor(S * 100 + 0.5))
				Boxes[4].Input.Text = tostring(math.floor(L * 100 + 0.5))
			elseif self.Mode == "HSB" then
				Boxes[2].Input.Text = tostring(math.floor(Session.Hue * 360 + 0.5))
				Boxes[3].Input.Text = tostring(math.floor(Session.Sat * 100 + 0.5))
				Boxes[4].Input.Text = tostring(math.floor(Session.Vib * 100 + 0.5))
			else
				Boxes[2].Input.Text = tostring(math.floor(Color.R * 255 + 0.5))
				Boxes[3].Input.Text = tostring(math.floor(Color.G * 255 + 0.5))
				Boxes[4].Input.Text = tostring(math.floor(Color.B * 255 + 0.5))
			end

			Boxes[5].Input.Text = tostring(math.floor((1 - Session.Alpha) * 100 + 0.5)) .. "%"
		end

		function Fields:Commit(Index)
			if Index == 1 then
				local Ok, Result = pcall(Color3.fromHex, Boxes[1].Input.Text)
				if Ok and typeof(Result) == "Color3" then
					Session:SetColor(Result)
					return
				end
			elseif Index == 5 then
				local Value = tonumber((Boxes[5].Input.Text:gsub("%%", "")))
				if Value then
					Session:Set(nil, nil, nil, 1 - math.clamp(Value, 0, 100) / 100)
					return
				end
			else
				local A, B, C = tonumber(Boxes[2].Input.Text), tonumber(Boxes[3].Input.Text), tonumber(Boxes[4].Input.Text)
				if A and B and C then
					if self.Mode == "HSL" then
						Session:SetColor(FromHSL((A % 360) / 360, math.clamp(B, 0, 100) / 100, math.clamp(C, 0, 100) / 100))
					elseif self.Mode == "HSB" then
						Session:Set((A % 360) / 360, math.clamp(B, 0, 100) / 100, math.clamp(C, 0, 100) / 100)
					else
						Session:SetColor(Color3.fromRGB(math.clamp(A, 0, 255), math.clamp(B, 0, 255), math.clamp(C, 0, 255)))
					end
					return
				end
			end
			self:Refresh()
		end

		function Fields:SetMode(Value)
			self.Mode = Value
			self:Layout()
			self:Refresh()
		end

		for Index = 1, 5 do
			Creator.AddSignal(Boxes[Index].Input.FocusLost, function()
				Fields:Commit(Index)
			end)
		end

		Session:Bind(function()
			Fields:Refresh()
		end)

		Fields:Layout()
		return Fields
	end

	local function MakeLabeledBox(Dialog, Title, X, Y, W, Commit)
		MakeCaption(Dialog, Title, X, Y, W)
		local Box = Components.Textbox(Dialog.Root, "Standard")
		Box.Frame.Size = UDim2.fromOffset(W, 28)
		Box.Frame.Position = UDim2.fromOffset(X, Y + 14)
		Creator.AddSignal(Box.Input.FocusLost, Commit)
		return Box
	end

	return {
		ToHSL = ToHSL,
		FromHSL = FromHSL,
		Checker = Checker,
		MakeCaption = MakeCaption,
		MakePanel = MakePanel,
		MakeKnob = MakeKnob,
		MakeAction = MakeAction,
		MakeMap = MakeMap,
		MakeSlider = MakeSlider,
		MakePreview = MakePreview,
		MakeFields = MakeFields,
		MakeLabeledBox = MakeLabeledBox,
		DialogOptions = DialogOptions,
	}
end)()

ElementsTable.Colorpicker = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Colorpicker"
	Element.ClassType = "Dialog"

	local Checker = PickerKit.Checker
	local MakeCaption = PickerKit.MakeCaption
	local MakePanel = PickerKit.MakePanel
	local MakeKnob = PickerKit.MakeKnob
	local MakeAction = PickerKit.MakeAction
	local MakeMap = PickerKit.MakeMap
	local MakeSlider = PickerKit.MakeSlider
	local MakePreview = PickerKit.MakePreview
	local MakeFields = PickerKit.MakeFields
	local MakeLabeledBox = PickerKit.MakeLabeledBox
	local DialogOptions = PickerKit.DialogOptions

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "Colorpicker - Missing Title")
		assert(Config.Default, "Colorpicker - Missing default value.")

		local Variant = Config.Variant or "Field"

		local Colorpicker = {
			Value = Config.Default,
			Transparency = Config.Transparency or 0,
			Type = "Colorpicker",
			Variant = Variant,
			Title = type(Config.Title) == "string" and Config.Title or "Colorpicker",
			Callback = Config.Callback or function(Color) end,
		}

		function Colorpicker:SetHSVFromRGB(Color)
			local H, S, V = Color3.toHSV(Color)
			Colorpicker.Hue = H
			Colorpicker.Sat = S
			Colorpicker.Vib = V
		end

		Colorpicker:SetHSVFromRGB(Colorpicker.Value)

		local Row = MakeRow(self, Config, true)
		Bind(Colorpicker, Row)

		local Swatch = New("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Colorpicker.Value,
		}, {
			Corner(Variant == "Bar" and 999 or (Variant == "Hex" and 6 or 8)),
		})

		local HexLabel
		local HexInput
		local Control
		local ActiveDialog
		local SyncMirror

		if Variant == "Swatch" then
			Control = Checker(nil, UDim2.fromOffset(28, 28), 8)
			Swatch.Parent = Control
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.8,
				Color = Color3.new(0, 0, 0),
				Parent = Control,
			})
		elseif Variant == "Field" then
			Control = New("Frame", {
				Size = UDim2.fromOffset(142, 30),
				BackgroundTransparency = 1,
			}, {
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 8),
				}),
			})
			local Box = Checker(Control, UDim2.fromOffset(30, 30), 9)
			Box.LayoutOrder = 1
			Swatch.Parent = Box
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.7,
				Thickness = 1.5,
				ThemeTag = {
					Color = "ElementBorder",
				},
				Parent = Box,
			})
			HexInput = New("TextBox", {
				Size = UDim2.fromOffset(104, 30),
				LayoutOrder = 2,
				BackgroundTransparency = 0.9,
				Text = "",
				PlaceholderText = "#RRGGBB",
				ClearTextOnFocus = false,
				TextSize = 12.5,
				TextXAlignment = Enum.TextXAlignment.Left,
				ThemeTag = {
					BackgroundColor3 = "Input",
					TextColor3 = "Text",
					PlaceholderColor3 = "SubText",
				},
				Parent = Control,
			}, {
				Corner(9),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 8),
				}),
				New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 0.82,
					ThemeTag = {
						Color = "ElementBorder",
					},
				}),
			})
			HexInput.FontFace = Fonts.Mono
		elseif Variant == "Bar" then
			Control = Checker(nil, UDim2.fromOffset(72, 12), 999)
			Swatch.Parent = Control
		elseif Variant == "Hex" then
			HexLabel = Label({
				Text = "",
				TextSize = 11.5,
				Weight = "Medium",
				Tag = "TextSecondary",
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.new(0, 0, 1, 0),
				LayoutOrder = 2,
			})
			HexLabel.FontFace = Fonts.Mono
			local Mini = Checker(nil, UDim2.fromOffset(18, 18), 6)
			Mini.LayoutOrder = 1
			Swatch.Parent = Mini
			Control = New("Frame", {
				Size = UDim2.fromOffset(0, 30),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 0.93,
				ThemeTag = {
					BackgroundColor3 = "Input",
				},
			}, {
				Corner(9),
				New("UIPadding", {
					PaddingLeft = UDim.new(0, 6),
					PaddingRight = UDim.new(0, 10),
				}),
				New("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 8),
				}),
				Mini,
				HexLabel,
			})
		else
			Library:Alert("Colorpicker - Unknown Variant '" .. tostring(Variant) .. "'", "Error")
			return nil
		end

		Place(Control, Row)

		local function MakeSession()
			local Session = {
				Hue = Colorpicker.Hue,
				Sat = Colorpicker.Sat,
				Vib = Colorpicker.Vib,
				Alpha = Colorpicker.Transparency,
				Original = Colorpicker.Value,
				OriginalAlpha = Colorpicker.Transparency,
				WithAlpha = Config.Transparency ~= nil,
				Live = true,
				Views = {},
			}

			function Session:Current()
				return Color3.fromHSV(self.Hue, self.Sat, self.Vib)
			end

			function Session:Bind(Callback)
				table.insert(self.Views, Callback)
			end

			function Session:Refresh()
				for _, View in next, self.Views do
					View()
				end
			end

			function Session:Set(Hue, Sat, Vib, Alpha)
				self.Hue = Hue or self.Hue
				self.Sat = Sat or self.Sat
				self.Vib = Vib or self.Vib
				self.Alpha = Alpha or self.Alpha
				if self.Live then
					Colorpicker:SetValue({ self.Hue, self.Sat, self.Vib }, self.Alpha)
				end
				self:Refresh()
			end

			function Session:SetColor(Color, Alpha)
				local Hue, Sat, Vib = Color3.toHSV(Color)
				self:Set(Hue, Sat, Vib, Alpha)
			end

			return Session
		end

		local function Finish(Dialog, Session)
			ActiveDialog = Dialog
			Dialog:Button("Done", function()
				if not Session.Live then
					Colorpicker:SetValue({ Session.Hue, Session.Sat, Session.Vib }, Session.Alpha)
				end
			end)
			Dialog:Button("Cancel", function()
				if Session.Live then
					Colorpicker:SetValueRGB(Session.Original, Session.OriginalAlpha)
				end
			end)
			Dialog:Open()
			SyncMirror()
		end

		local function OpenChromium()
			local Dialog = Components.Dialog:Create({ Tags = DialogOptions.Tags, Anchor = Swatch, DoNotBlur = Config.DoNotBlur })
			if Dialog.Ghost then
				return
			end
			local Session = MakeSession()
			Dialog.Title.Text = Colorpicker.Title

			local Width = 360
			local InnerW = Width - 40
			local MapY = 56
			local MapH = 168
			local SlidersY = MapY + MapH + 18
			local RowH = 34
			local FieldsY = SlidersY + RowH + 16
			local PanelEnd = FieldsY + 46 + 10
			Dialog.Root.Size = UDim2.fromOffset(Width, PanelEnd + 72)

			MakePanel(Dialog, 12, MapY - 8, Width - 24, PanelEnd - (MapY - 8))
			MakeMap(Dialog, Session, 20, MapY, InnerW, MapH, 8)
			MakePreview(Dialog, Session, 20, SlidersY, RowH, RowH, 999)

			local BarX = 20 + RowH + 14
			local BarW = Width - 20 - BarX - 8
			local BarsH = Session.WithAlpha and 28 or 10
			local HueY = SlidersY + math.floor((RowH - BarsH) / 2)

			MakeSlider(Dialog, Session, "Hue", BarX, HueY, BarW, 10, false)
			if Session.WithAlpha then
				MakeSlider(Dialog, Session, "Alpha", BarX, HueY + 18, BarW, 10, false)
			end

			local FieldX = 20 + 58 + 8
			local Fields = MakeFields(Dialog, Session, FieldX, FieldsY, Width - 20 - FieldX, "Hex")

			local Modes = { "Hex", "RGB", "HSL" }
			local ModeIndex = 1
			local ModeButton
			ModeButton = MakeAction(Dialog, "HEX", 20, FieldsY, 58, 30, 9, function()
				ModeIndex = ModeIndex % #Modes + 1
				Fields:SetMode(Modes[ModeIndex])
				ModeButton:SetText(string.upper(Modes[ModeIndex]))
			end)

			Session:Refresh()
			Finish(Dialog, Session)
		end

		local function OpenFluent()
			local Dialog = Components.Dialog:Create({ Tags = DialogOptions.Tags, Anchor = Swatch, DoNotBlur = Config.DoNotBlur })
			if Dialog.Ghost then
				return
			end
			local Session = MakeSession()
			Dialog.Title.Text = Colorpicker.Title
			Dialog.Root.Size = UDim2.fromOffset(440, 382)

			local WithAlpha = Session.WithAlpha
			local MapX, MapY, MapSize = 30, 128, 166
			local HueX = MapX + MapSize + 12
			local AlphaX = HueX + 20
			local RightX = WithAlpha and 252 or 226
			local RightW = 410 - RightX

			MakeCaption(Dialog, "CURRENT", 20, 52, 120)
			MakeCaption(Dialog, "NEW", 226, 52, 120)
			MakePreview(Dialog, Session, 20, 68, 194, 36, 10, true)
			MakePreview(Dialog, Session, 226, 68, 194, 36, 10)

			MakePanel(Dialog, 20, 118, 400, 186)
			MakeMap(Dialog, Session, MapX, MapY, MapSize, MapSize, 8)
			MakeSlider(Dialog, Session, "Hue", HueX, MapY, 12, MapSize, true)
			if WithAlpha then
				MakeSlider(Dialog, Session, "Alpha", AlphaX, MapY, 12, MapSize, true)
			end

			local Gap = 6
			local Cell = math.floor((RightW - Gap * 2) / 3)
			local HexBox, RedBox, GreenBox, BlueBox, OpacityBox

			local function CommitRgb()
				local R, G, B = tonumber(RedBox.Input.Text), tonumber(GreenBox.Input.Text), tonumber(BlueBox.Input.Text)
				if R and G and B then
					Session:SetColor(Color3.fromRGB(math.clamp(R, 0, 255), math.clamp(G, 0, 255), math.clamp(B, 0, 255)))
					return
				end
				Session:Refresh()
			end

			HexBox = MakeLabeledBox(Dialog, "HEX", RightX, 128, RightW, function()
				local Ok, Result = pcall(Color3.fromHex, HexBox.Input.Text)
				if Ok and typeof(Result) == "Color3" then
					Session:SetColor(Result)
					return
				end
				Session:Refresh()
			end)
			RedBox = MakeLabeledBox(Dialog, "RED", RightX, 180, Cell, CommitRgb)
			GreenBox = MakeLabeledBox(Dialog, "GREEN", RightX + Cell + Gap, 180, Cell, CommitRgb)
			BlueBox = MakeLabeledBox(Dialog, "BLUE", RightX + (Cell + Gap) * 2, 180, Cell, CommitRgb)

			if WithAlpha then
				OpacityBox = MakeLabeledBox(Dialog, "OPACITY", RightX, 232, RightW, function()
					local Value = tonumber((OpacityBox.Input.Text:gsub("%%", "")))
					if Value then
						Session:Set(nil, nil, nil, 1 - math.clamp(Value, 0, 100) / 100)
						return
					end
					Session:Refresh()
				end)
			end

			Session:Bind(function()
				local Color = Session:Current()
				HexBox.Input.Text = "#" .. Color:ToHex():upper()
				RedBox.Input.Text = tostring(math.floor(Color.R * 255 + 0.5))
				GreenBox.Input.Text = tostring(math.floor(Color.G * 255 + 0.5))
				BlueBox.Input.Text = tostring(math.floor(Color.B * 255 + 0.5))
				if OpacityBox then
					OpacityBox.Input.Text = tostring(math.floor((1 - Session.Alpha) * 100 + 0.5)) .. "%"
				end
			end)

			Session:Refresh()
			Finish(Dialog, Session)
		end

		local function OpenWheel()
			local Dialog = Components.Dialog:Create({ Tags = DialogOptions.Tags, Anchor = Swatch, DoNotBlur = Config.DoNotBlur })
			if Dialog.Ghost then
				return
			end
			local Session = MakeSession()
			local Width = 340
			local InnerW = Width - 40

			Dialog.Title.Text = Colorpicker.Title

			local RingSize = 220
			local RingRadius = 98
			local RingX = math.floor((Width - RingSize) / 2)
			local RingY = 56
			local Center = RingSize / 2
			local RingThickness = 20

			local NextY = RingY + RingSize + 14
			if Session.WithAlpha then
				NextY += 10 + 14
			end
			local FieldsY = NextY
			local PanelEnd = FieldsY + 46 + 10

			MakePanel(Dialog, 12, RingY - 8, Width - 24, PanelEnd - (RingY - 8))

			local Ring = New("ImageLabel", {
				Size = UDim2.fromOffset(RingSize, RingSize),
				Position = UDim2.fromOffset(RingX, RingY),
				BackgroundTransparency = 1,
				Image = "rbxassetid://81989409322735",
				ImageColor3 = Color3.new(1, 1, 1),
				ImageTransparency = 0,
				ScaleType = Enum.ScaleType.Stretch,
				Parent = Dialog.Root,
			})

			for _, Radius in ipairs({ RingRadius + RingThickness / 2 - 1, RingRadius - RingThickness / 2 }) do
				New("Frame", {
					Size = UDim2.fromOffset(Radius * 2, Radius * 2),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromOffset(RingX + Center, RingY + Center),
					BackgroundTransparency = 1,
					ZIndex = 3,
					Parent = Dialog.Root,
				}, {
					Corner(Radius),
					Stroke("PickerBorder", 0.4, 2),
				})
			end

			local MapSize = 112
			MakeMap(Dialog, Session, RingX + Center - MapSize / 2, RingY + Center - MapSize / 2, MapSize, MapSize, 12)

			local Thumb = MakeKnob(20)
			Thumb.Parent = Dialog.Root

			Creator.BindDrag(Ring, function(Sx, Sy)
				local Dx = Sx - 0.5
				local Dy = Sy - 0.5
				local Inner = (RingRadius - RingThickness / 2) / RingSize
				if Dx * Dx + Dy * Dy < Inner * Inner then
					return
				end
				local Turn = (math.atan2(Dx, -Dy) / (math.pi * 2)) % 1
				Session:Set(math.clamp(Turn, 0, 0.999))
			end)

			Session:Bind(function()
				local Angle = Session.Hue * math.pi * 2
				Thumb.Position = UDim2.fromOffset(RingX + Center + RingRadius * math.sin(Angle), RingY + Center - RingRadius * math.cos(Angle))
				Thumb.BackgroundColor3 = Color3.fromHSV(Session.Hue, 1, 1)
			end)

			if Session.WithAlpha then
				MakeSlider(Dialog, Session, "Alpha", 20, RingY + RingSize + 14, InnerW, 10, false)
			end

			MakeFields(Dialog, Session, 20, FieldsY, InnerW, "All", true)

			Dialog.Root.Size = UDim2.fromOffset(Width, PanelEnd + 12 + 58)
			Session:Refresh()
			Finish(Dialog, Session)
		end

		local function Open()
			local Style = Config.PickerStyle or Library.ColorpickerStyle
			if Style == "Fluent" then
				OpenFluent()
			elseif Style == "Wheel" then
				OpenWheel()
			else
				OpenChromium()
			end
		end

		local Mirror
		local MirrorFill

		function SyncMirror()
			local Blur = ActiveDialog and not ActiveDialog.Closing and ActiveDialog.Blur
			local Layer = Blur and Blur.State.Layer
			local Holder = Swatch.Parent
			if not Layer or not Holder or not Holder:IsDescendantOf(game) then
				return
			end

			if not Mirror or Mirror.Parent ~= Layer then
				Mirror = Checker(Layer, UDim2.fromOffset(0, 0), 0)
				Mirror.ZIndex = 4
				MirrorFill = New("Frame", {
					Size = UDim2.fromScale(1, 1),
					ZIndex = 4,
					Parent = Mirror,
				}, {
					Corner(0),
				})
				local HolderCorner = Holder:FindFirstChildOfClass("UICorner")
				local SwatchCorner = Swatch:FindFirstChildOfClass("UICorner")
				if HolderCorner then
					Mirror:FindFirstChildOfClass("UICorner").CornerRadius = HolderCorner.CornerRadius
				end
				if SwatchCorner then
					MirrorFill:FindFirstChildOfClass("UICorner").CornerRadius = SwatchCorner.CornerRadius
				end
			end

			local Origin = Layer.AbsolutePosition
			local Spot = Holder.AbsolutePosition
			Mirror.Position = UDim2.fromOffset(Spot.X - Origin.X, Spot.Y - Origin.Y)
			Mirror.Size = UDim2.fromOffset(Holder.AbsoluteSize.X, Holder.AbsoluteSize.Y)
			MirrorFill.BackgroundColor3 = Swatch.BackgroundColor3
			MirrorFill.BackgroundTransparency = Swatch.BackgroundTransparency
		end

		function Colorpicker:Display()
			Colorpicker.Value = Color3.fromHSV(Colorpicker.Hue, Colorpicker.Sat, Colorpicker.Vib)

			Swatch.BackgroundColor3 = Colorpicker.Value
			Swatch.BackgroundTransparency = Colorpicker.Transparency
			if HexLabel then
				HexLabel.Text = "#" .. Colorpicker.Value:ToHex():upper()
			end
			if HexInput and not HexInput:IsFocused() then
				HexInput.Text = "#" .. Colorpicker.Value:ToHex():lower()
			end
			SyncMirror()

			Library:SafeCallback(Colorpicker.Callback, Colorpicker.Value)
			Library:SafeCallback(Colorpicker.Changed, Colorpicker.Value)
		end

		function Colorpicker:SetValue(HSV, Transparency)
			local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3])
			Colorpicker.Transparency = Transparency or 0
			Colorpicker:SetHSVFromRGB(Color)
			Colorpicker:Display()
		end

		function Colorpicker:SetValueRGB(Color, Transparency)
			Colorpicker.Transparency = Transparency or 0
			Colorpicker:SetHSVFromRGB(Color)
			Colorpicker:Display()
		end

		function Colorpicker:OnChanged(Func)
			Colorpicker.Changed = Func
			Func(Colorpicker.Value)
		end

		function Colorpicker:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Creator.AddGuarded(Row.Body, "MouseButton1Click", Open)

		if HexInput then
			Creator.AddSignal(HexInput.FocusLost, function()
				local Text = string.gsub(HexInput.Text, "[#%s]", "")
				local Valid = #Text == 6 or #Text == 3
				if Valid then
					if #Text == 3 then
						Text = string.gsub(Text, ".", "%0%0")
					end
					local Ok, Color = pcall(Color3.fromHex, Text)
					if Ok and typeof(Color) == "Color3" then
						Colorpicker:SetValueRGB(Color, Colorpicker.Transparency)
						return
					end
				end
				HexInput.Text = "#" .. Colorpicker.Value:ToHex():lower()
			end)
		end

		Colorpicker:Display()

		Library.Options[Idx] = Colorpicker
		return Colorpicker
	end

	return Element
end)()

local function MakeStrip(Row, Height, Gap, Pad)
	Row:SetExtra(Height + 6)
	local Strip = New("ScrollingFrame", {
		Size = UDim2.new(1, -(Row.LeftSpace + 10), 0, Height),
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, Row.LeftSpace, 1, -6),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.X,
		AutomaticCanvasSize = Enum.AutomaticSize.X,
		CanvasSize = UDim2.fromOffset(0, 0),
		Parent = Row.Content,
	}, {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, Gap or 8),
		}),
	})
	if Pad and Pad > 0 then
		New("UIPadding", {
			PaddingLeft = UDim.new(0, Pad),
			PaddingRight = UDim.new(0, Pad),
			PaddingTop = UDim.new(0, Pad),
			PaddingBottom = UDim.new(0, Pad),
			Parent = Strip,
		})
	end
	return Strip
end

ElementsTable.Progress = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Progress"
	Element.ClassType = "Display"
	Element.NoIdx = true

	function Element:New(Config)
		assert(Config.Title, "Progress - Missing Title")

		local Variant = Config.Variant or "Row"
		local Row = MakeRow(self, Config, false)
		Row.Type = "Progress"
		Row.Variant = Variant
		Row.Min = Config.Min or 0
		Row.Max = Config.Max or 100
		Row.Value = Config.Value or Config.Default or 0
		Row.Suffix = Config.Suffix or "%"
		Row.Indeterminate = Config.Indeterminate and true or false

		local Fill = New("Frame", {
			Size = UDim2.fromScale(0, 1),
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			Corner(999),
		})

		local Bar = New("Frame", {
			BackgroundTransparency = 0.88,
			ClipsDescendants = true,
			ThemeTag = {
				BackgroundColor3 = "SliderRail",
			},
		}, {
			Corner(999),
			Fill,
		})

		local Display = Label({
			Text = "",
			TextSize = 12,
			Weight = "Medium",
			Tag = "TextSecondary",
			TextXAlignment = Enum.TextXAlignment.Right,
			Size = UDim2.fromOffset(52, 18),
		})

		if Variant == "Inline" then
			local Holder = New("Frame", {
				Size = UDim2.fromOffset(Config.Width or 170, 18),
				BackgroundTransparency = 1,
			})
			Bar.Size = UDim2.new(1, -60, 0, 4)
			Bar.AnchorPoint = Vector2.new(0, 0.5)
			Bar.Position = UDim2.new(0, 0, 0.5, 0)
			Bar.Parent = Holder
			Display.AnchorPoint = Vector2.new(1, 0.5)
			Display.Position = UDim2.new(1, 0, 0.5, 0)
			Display.Parent = Holder
			Place(Holder, Row)
		else
			Row:SetExtra(14)
			Bar.Size = UDim2.new(1, -(Row.LeftSpace + 14), 0, Variant == "Thin" and 2.5 or 4)
			Bar.AnchorPoint = Vector2.new(0, 1)
			Bar.Position = UDim2.new(0, Row.LeftSpace, 1, -12)
			Bar.Parent = Row.Content
			Display.AnchorPoint = Vector2.new(1, 0)
			Display.Position = UDim2.new(1, -14, 0, 10)
			Display.Parent = Row.Content
		end

		local Running = false

		local function Update(Instant)
			if Row.Indeterminate then
				Display.Text = ""
				return
			end
			local Alpha = math.clamp((Row.Value - Row.Min) / math.max(Row.Max - Row.Min, 1e-6), 0, 1)
			Fill.Position = UDim2.fromScale(0, 0)
			if Instant then
				Fill.Size = UDim2.fromScale(Alpha, 1)
			else
				Creator.Tween(Fill, 0.3, { Size = UDim2.fromScale(Alpha, 1) })
			end
			Display.Text = Row.CustomDisplay or (tostring(math.floor(Alpha * 100 + 0.5)) .. Row.Suffix)
		end

		local function Animate()
			if Running then
				return
			end
			Running = true
			task.spawn(function()
				while Row.Indeterminate and not Library.Unloaded and Bar:IsDescendantOf(game) do
					Fill.Size = UDim2.fromScale(0.4, 1)
					Fill.Position = UDim2.fromScale(-0.4, 0)
					local Tween = Creator.Tween(Fill, 1.2, { Position = UDim2.fromScale(1, 0) }, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
					Tween.Completed:Wait()
				end
				Running = false
				Update(true)
			end)
		end

		function Row:SetValue(Value)
			Row.Value = math.clamp(tonumber(Value) or Row.Min, Row.Min, Row.Max)
			Update(false)
		end

		function Row:SetDisplay(Text)
			Row.CustomDisplay = Text
			Display.Size = UDim2.fromOffset(Text and 170 or 52, 18)
			if Text then
				Display.Text = Text
			else
				Update(false)
			end
		end

		function Row:SetIndeterminate(Value)
			Row.Indeterminate = Value and true or false
			if Row.Indeterminate then
				Animate()
			else
				Update(true)
			end
		end

		if Row.Indeterminate then
			Animate()
		else
			Update(true)
		end

		return Row
	end

	return Element
end)()

ElementsTable.CheckGroup = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "CheckGroup"
	Element.ClassType = "Input"

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "CheckGroup - Missing Title")
		assert(type(Config.Options) == "table", "CheckGroup - Missing Options")

		local Variant = Config.Variant or "Check"
		local Group = {
			Value = {},
			Callback = Config.Callback or function(Value) end,
			Type = "CheckGroup",
			Variant = Variant,
		}

		for _, Name in next, Config.Options do
			Group.Value[Name] = false
		end
		if type(Config.Default) == "table" then
			for Key, Item in next, Config.Default do
				if type(Key) == "number" then
					Group.Value[Item] = true
				else
					Group.Value[Key] = Item and true or false
				end
			end
		end

		local Row = MakeRow(self, Config, false)
		Bind(Group, Row)

		local Count = #Config.Options
		local ItemHeight = 32
		Row:SetExtra(Count * ItemHeight + 6)

		local HoverPad = 8
		local HoverInsetY = 2

		local List = New("Frame", {
			Size = UDim2.new(1, -(Row.LeftSpace + 14) + HoverPad * 2, 0, Count * ItemHeight),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, Row.LeftSpace - HoverPad, 1, -6),
			BackgroundTransparency = 1,
			Parent = Row.Content,
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		})

		local Visuals = {}

		for Index, Name in next, Config.Options do
			local Control
			local Apply
			local ControlWidth = 44

			if Variant == "Switch" or Variant == "Simplefield" then
				ControlWidth = 52
				local Knob = New("Frame", {
					Size = UDim2.fromOffset(14, 14),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 3, 0.5, 0),
					BackgroundColor3 = Color3.new(1, 1, 1),
				}, {
					Corner(999),
				})
				Control = New("Frame", {
					Size = UDim2.fromOffset(36, 20),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					BackgroundTransparency = 0.72,
					ThemeTag = {
						BackgroundColor3 = "ToggleSlider",
					},
				}, {
					Corner(999),
					Knob,
				})
				function Apply(Instant)
					local On = Group.Value[Name]
					Creator.OverrideTag(Control, { BackgroundColor3 = On and "ToggleToggled" or "ToggleSlider" })
					local Goal = UDim2.new(0, On and 19 or 3, 0.5, 0)
					if Instant then
						Knob.Position = Goal
						Control.BackgroundTransparency = On and 0 or 0.72
					else
						Creator.Tween(Knob, 0.2, { Position = Goal }, Enum.EasingStyle.Back)
						Creator.Tween(Control, 0.18, { BackgroundTransparency = On and 0 or 0.72 })
					end
				end
			else
				local Mark = New("ImageLabel", {
					Image = Asset("check"),
					Size = UDim2.fromOffset(12, 12),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BackgroundTransparency = 1,
					ImageTransparency = 1,
					ThemeTag = {
						ImageColor3 = "AccentText",
					},
				})
				local Border = New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Thickness = 1.5,
					Transparency = 0.74,
					ThemeTag = {
						Color = "ToggleSlider",
					},
				})
				Control = New("Frame", {
					Size = UDim2.fromOffset(18, 18),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ThemeTag = {
						BackgroundColor3 = "Accent",
					},
				}, {
					Corner(6),
					Border,
					Mark,
				})
				function Apply(Instant)
					local On = Group.Value[Name]
					Creator.OverrideTag(Border, { Color = On and "Accent" or "ToggleSlider" })
					if Instant then
						Control.BackgroundTransparency = On and 0 or 1
						Mark.ImageTransparency = On and 0 or 1
						Border.Transparency = On and 0 or 0.74
					else
						Creator.Tween(Control, 0.14, { BackgroundTransparency = On and 0 or 1 })
						Creator.Tween(Mark, 0.14, { ImageTransparency = On and 0 or 1 })
						Creator.Tween(Border, 0.14, { Transparency = On and 0 or 0.74 })
					end
				end
			end

			local Item = New("TextButton", {
				Size = UDim2.new(1, 0, 0, ItemHeight),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = Index,
				Parent = List,
			}, {
				New("Frame", {
					Name = "Content",
					Size = UDim2.new(1, -HoverPad * 2, 1, 0),
					Position = UDim2.fromOffset(HoverPad, 0),
					BackgroundTransparency = 1,
				}, {
					Label({
						Text = Name,
						TextSize = 12.5,
						Weight = "Medium",
						Tag = "TextSecondary",
						Size = UDim2.new(1, -ControlWidth, 1, 0),
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),
					Control,
				}),
			})

			Library.CreateItemHover(Item, { Radius = 8, InsetY = HoverInsetY })

			if Index > 1 then
				New("Frame", {
					Size = UDim2.new(1, -HoverPad * 2, 0, 1),
					Position = UDim2.fromOffset(HoverPad, 0),
					BackgroundTransparency = 0.94,
					Parent = Item,
					ThemeTag = {
						BackgroundColor3 = "ElementBorder",
					},
				})
			end

			Visuals[Name] = Apply
			Apply(true)

			Creator.AddGuarded(Item, "MouseButton1Click", function()
				Group:SetOption(Name, not Group.Value[Name])
			end)
		end

		local function Fire()
			Library:SafeCallback(Group.Callback, Group.Value)
			Library:SafeCallback(Group.Changed, Group.Value)
		end

		function Group:SetOption(Name, State)
			if Group.Value[Name] == nil then
				return
			end
			Group.Value[Name] = State and true or false
			Visuals[Name](false)
			Fire()
		end

		function Group:SetValue(Map)
			for Name, State in next, Map do
				if Group.Value[Name] ~= nil then
					Group.Value[Name] = State and true or false
					Visuals[Name](true)
				end
			end
			Fire()
		end

		function Group:OnChanged(Func)
			Group.Changed = Func
			Func(Group.Value)
		end

		function Group:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Library.Options[Idx] = Group
		return Group
	end

	return Element
end)()

ElementsTable.CardPicker = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "CardPicker"
	Element.ClassType = "Input"

	function Element:New(Idx, Config)
		local Library = self.Library
		assert(Config.Title, "CardPicker - Missing Title")
		assert(type(Config.Items) == "table", "CardPicker - Missing Items")

		local CardWidth = Config.CardWidth or 92
		local PreviewHeight = Config.PreviewHeight or 56
		local Pad = 4

		local Picker = {
			Value = Config.Default or (Config.Items[1] and Config.Items[1].Id),
			Callback = Config.Callback or function(Value) end,
			Type = "CardPicker",
			Items = {},
		}

		local Row = MakeRow(self, Config, false)
		Bind(Picker, Row)

		local Strip = MakeStrip(Row, PreviewHeight + 22 + Pad * 2, 10, Pad)
		local Cards = {}
		local Counter = 0

		local function BuildCard(Item)
			Counter = Counter + 1
			local Colors = Item.Colors or {}

			local Ring = New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Thickness = 2,
				Transparency = 0.86,
				ThemeTag = {
					Color = "ElementBorder",
				},
			})

			local Preview = New("Frame", {
				Size = UDim2.fromOffset(CardWidth, PreviewHeight),
				Position = UDim2.fromOffset(0, 2),
				BackgroundColor3 = Colors[1] or Color3.fromRGB(24, 24, 28),
				ClipsDescendants = true,
			}, {
				Corner(9),
				Ring,
			})

			local ImageLabel
			if Item.Image then
				ImageLabel = New("ImageLabel", {
					Image = Resolve(Item.Image, "Element") or "",
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Crop,
					Parent = Preview,
				}, {
					Corner(9),
				})
			elseif Item.Icon then
				if Item.Colors == nil then
					Preview.BackgroundTransparency = Item.Add and 0.93 or 0.9
					Creator.AddThemeObject(Preview, { BackgroundColor3 = "Hover" })
				end
				New("ImageLabel", {
					Image = Resolve(Item.Icon, "Element") or "",
					Size = UDim2.fromOffset(18, 18),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Parent = Preview,
					ThemeTag = {
						ImageColor3 = "SubText",
					},
				})
			elseif Item.Text then
				local Sample = Label({
					Text = Item.Text,
					TextSize = Item.TextSize or 20,
					Weight = "SemiBold",
					Tag = "Text",
					Size = UDim2.fromScale(1, 1),
					TextXAlignment = Enum.TextXAlignment.Center,
					Parent = Preview,
				})
				if Item.TextFont then
					Sample.FontFace = Item.TextFont
					Sample:SetAttribute("FontLocked", true)
				end
				if Item.Colors == nil then
					Preview.BackgroundTransparency = 0.9
					Creator.AddThemeObject(Preview, { BackgroundColor3 = "Hover" })
				end
				ImageLabel = Sample
			else
				New("Frame", {
					Size = UDim2.new(0.26, 0, 1, 0),
					BackgroundColor3 = Colors[2] or Color3.fromRGB(40, 40, 46),
					BorderSizePixel = 0,
					Parent = Preview,
				}, {
					SideCorner(9, 0, 9, 0),
				})
				New("Frame", {
					Size = UDim2.new(0.42, 0, 0, 6),
					Position = UDim2.new(0.4, 0, 0.24, 0),
					BackgroundColor3 = Colors[3] or Color3.fromRGB(120, 120, 255),
					BorderSizePixel = 0,
					Parent = Preview,
				}, {
					Corner(999),
				})
				New("Frame", {
					Size = UDim2.new(0.3, 0, 0, 5),
					Position = UDim2.new(0.4, 0, 0.5, 0),
					BackgroundColor3 = Colors[4] or Colors[2] or Color3.fromRGB(70, 70, 78),
					BorderSizePixel = 0,
					Parent = Preview,
				}, {
					Corner(999),
				})
			end

			local Check = New("Frame", {
				Size = UDim2.fromOffset(15, 15),
				Position = UDim2.fromOffset(5, 5),
				Visible = false,
				ZIndex = 3,
				ThemeTag = {
					BackgroundColor3 = "Accent",
				},
			}, {
				Corner(999),
				New("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Thickness = 1.5,
					ThemeTag = {
						Color = "AcrylicMain",
					},
				}),
				New("ImageLabel", {
					Image = Asset("check") or "",
					Size = UDim2.fromOffset(9, 9),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					ZIndex = 4,
					ThemeTag = {
						ImageColor3 = "AccentText",
					},
				}),
			})
			Check.Parent = Preview

			local Name = Label({
				Text = Item.Title or Item.Id,
				TextSize = 11,
				Weight = "Medium",
				Tag = "TextSecondary",
				Size = UDim2.new(1, 0, 0, 14),
				Position = UDim2.fromOffset(0, PreviewHeight + 6),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextTruncate = Enum.TextTruncate.AtEnd,
			})

			local Card = New("TextButton", {
				Size = UDim2.fromOffset(CardWidth, PreviewHeight + 22),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = Item.Add and 0 or Counter,
				Parent = Strip,
			}, {
				Preview,
				Name,
			})

			Library.CreateItemHover(Card, { Radius = 10 })

			local Entry = {
				Item = Item,
				Card = Card,
				Ring = Ring,
				Preview = Preview,
				Check = Check,
				Image = ImageLabel,
				Name = Name,
			}

			if Item.OnDelete then
				local Delete = New("TextButton", {
					Size = UDim2.fromOffset(17, 17),
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, -4, 0, 4),
					Text = "",
					AutoButtonColor = false,
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 0.35,
					Visible = false,
					ZIndex = 5,
					Parent = Preview,
				}, {
					Corner(999),
					New("ImageLabel", {
						Image = Asset("x") or "",
						Size = UDim2.fromOffset(10, 10),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						ImageColor3 = Color3.new(1, 1, 1),
						ZIndex = 6,
					}),
				})
				Entry.Delete = Delete
				Creator.AddGuarded(Delete, "MouseButton1Click", function()
					Library:SafeCallback(Item.OnDelete, Item.Id)
				end)
			end

			Creator.OnHoverEnter(Card, function()
				Creator.Tween(Preview, 0.15, { Position = UDim2.fromOffset(0, 0) })
				if Entry.Delete then
					Entry.Delete.Visible = true
				end
			end)
			Creator.OnHoverLeave(Card, function()
				Creator.Tween(Preview, 0.15, { Position = UDim2.fromOffset(0, 2) })
				if Entry.Delete then
					Entry.Delete.Visible = false
				end
			end)
			Creator.AddGuarded(Card, "MouseButton1Click", function()
				if Item.Add then
					Library:SafeCallback(Config.OnAdd or Item.OnClick, Item)
				else
					Picker:SetValue(Item.Id)
				end
			end)

			Cards[Item.Id] = Entry
			return Entry
		end

		local function Paint(Instant)
			for Id, Entry in next, Cards do
				if not Entry.Item.Add then
					local On = Id == Picker.Value
					Creator.OverrideTag(Entry.Ring, { Color = On and "Accent" or "ElementBorder" })
					Entry.Check.Visible = On
					local Goal = On and 0 or 0.86
					if Instant then
						Entry.Ring.Transparency = Goal
					else
						Creator.Tween(Entry.Ring, 0.15, { Transparency = Goal })
					end
				end
			end
		end

		for _, Item in next, Config.Items do
			table.insert(Picker.Items, Item)
			BuildCard(Item)
		end

		if Config.AddCard then
			local AddItem = {
				Id = "__add",
				Title = Config.AddCard.Title or "Add",
				Icon = "plus",
				Add = true,
				OnClick = Config.AddCard.Callback,
			}
			BuildCard(AddItem)
		end

		function Picker:AddItem(Item)
			if Cards[Item.Id] then
				return
			end
			table.insert(Picker.Items, Item)
			BuildCard(Item)
			Paint(true)
		end

		function Picker:RemoveItem(Id)
			local Entry = Cards[Id]
			if not Entry then
				return
			end
			Entry.Card:Destroy()
			Cards[Id] = nil
			for Index, Item in next, Picker.Items do
				if Item.Id == Id then
					table.remove(Picker.Items, Index)
					break
				end
			end
		end

		function Picker:SetItemImage(Id, Image)
			local Entry = Cards[Id]
			if Entry and Entry.Image and Entry.Image:IsA("ImageLabel") then
				Creator.SetImage(Entry.Image, Resolve(Image, "Element"))
			end
		end

		function Picker:HasItem(Id)
			return Cards[Id] ~= nil
		end

		function Picker:SetValue(Value, Silent)
			if not Cards[Value] or Cards[Value].Item.Add then
				return
			end
			Picker.Value = Value
			Paint(false)
			if not Silent then
				Library:SafeCallback(Picker.Callback, Picker.Value)
				Library:SafeCallback(Picker.Changed, Picker.Value)
			end
		end

		function Picker:OnChanged(Func)
			Picker.Changed = Func
			Func(Picker.Value)
		end

		function Picker:Destroy()
			Row:Destroy()
			Library.Options[Idx] = nil
		end

		Paint(true)

		Library.Options[Idx] = Picker
		return Picker
	end

	return Element
end)()

ElementsTable.Viewport = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Viewport"
	Element.ClassType = "Display"

	type Orbit = {
		Yaw: number,
		Pitch: number,
		Distance: number,
	}

	local MaxPitch = math.rad(80)

	local HumanoidOverrides = {
		AutomaticScalingEnabled = false,
		RequiresNeck = false,
		BreakJointsOnDeath = false,
		EvaluateStateMachine = false,
		DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None,
		HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff,
	}

	local function PrepareHumanoid(Object: Instance)
		local Humanoid = Object:FindFirstChildWhichIsA("Humanoid", true)
		if not Humanoid then
			return
		end
		for Property, Value in HumanoidOverrides do
			pcall(function()
				(Humanoid :: any)[Property] = Value
			end)
		end
		pcall(function()
			Humanoid:ChangeState(Enum.HumanoidStateType.None)
		end)
	end

	local function PlaceAccessories(Object: Instance)
		for _, Descendant in Object:GetDescendants() do
			if not Descendant:IsA("Accessory") then
				continue
			end
			local Handle = Descendant:FindFirstChild("Handle")
			if not (Handle and Handle:IsA("BasePart")) then
				continue
			end

			local Joint = Handle:FindFirstChildWhichIsA("JointInstance")
			if Joint and Joint.Part0 and Joint.Part1 then
				if Joint.Part0 == Handle then
					Handle.CFrame = Joint.Part1.CFrame * Joint.C1 * Joint.C0:Inverse()
				elseif Joint.Part1 == Handle then
					Handle.CFrame = Joint.Part0.CFrame * Joint.C0 * Joint.C1:Inverse()
				end
				continue
			end

			local HandleAttachment = Handle:FindFirstChildWhichIsA("Attachment")
			if HandleAttachment then
				local BodyAttachment = Object:FindFirstChild(HandleAttachment.Name, true)
				if BodyAttachment and BodyAttachment:IsA("Attachment") and BodyAttachment.Parent ~= Handle then
					Handle.CFrame = BodyAttachment.WorldCFrame * HandleAttachment.CFrame:Inverse()
				end
			end
		end
	end

	local function StripLayered(Object: Instance)
		for _, Descendant in Object:GetDescendants() do
			if Descendant:IsA("WrapLayer") or Descendant:IsA("WrapTarget") then
				Descendant:Destroy()
			end
		end
	end

	local function IsAccessoryPart(Part: BasePart, Root: Instance): boolean
		local Parent = Part.Parent
		while Parent and Parent ~= Root do
			if Parent:IsA("Accessory") then
				return true
			end
			Parent = Parent.Parent
		end
		return false
	end

	local function ComputeBounds(Object: Instance, Strict: boolean): (Vector3?, Vector3?)
		local Minimum = Vector3.one * math.huge
		local Maximum = -Minimum
		local Found = false
		local BodyOnly = Strict and Object:FindFirstChildOfClass("Humanoid") ~= nil

		local function Include(Part: BasePart)
			if Strict then
				if Part.Transparency >= 1 or IsAccessoryPart(Part, Object) then
					return
				end
				if BodyOnly and Part.Parent ~= Object then
					return
				end
			end
			local Half = Part.Size / 2
			local PartCFrame = Part.CFrame
			for X = -1, 1, 2 do
				for Y = -1, 1, 2 do
					for Z = -1, 1, 2 do
						local Corner = PartCFrame:PointToWorldSpace(Vector3.new(Half.X * X, Half.Y * Y, Half.Z * Z))
						Minimum = Minimum:Min(Corner)
						Maximum = Maximum:Max(Corner)
					end
				end
			end
			Found = true
		end

		if Object:IsA("BasePart") then
			Include(Object)
		end
		for _, Descendant in Object:GetDescendants() do
			if Descendant:IsA("BasePart") then
				Include(Descendant)
			end
		end

		if not Found then
			return nil
		end
		return (Minimum + Maximum) / 2, Maximum - Minimum
	end
	local DragSensitivity = 0.016
	local WheelStep = 0.12
	local MinDistance = 0.1
	local DoubleTapWindow = 0.3
	local FlingWindow = 0.06
	local FlingThreshold = 60
	local FlingDuration = 0.08
	local AutoResumeDelay = 1.5

	local OrbitSpring = table.freeze({ Frequency = 14, DampingRatio = 1 })
	local FlingSpring = table.freeze({ Frequency = 2.5, DampingRatio = 1 })
	local ResetSpring = table.freeze({ Frequency = 7, DampingRatio = 0.85 })
	local AutoSpring = table.freeze({ Frequency = 6, DampingRatio = 1 })

	local function ParseAspectRatio(Ratio: any): number?
		if type(Ratio) == "number" then
			return Ratio > 0 and Ratio or nil
		end
		if type(Ratio) == "string" then
			local Width, Height = Ratio:match("(%d+):(%d+)")
			Width, Height = tonumber(Width), tonumber(Height)
			if Width and Height and Height ~= 0 then
				return Width / Height
			end
		end
		return nil
	end

	local function ResolveImage(Value: any): string
		if type(Value) == "number" or (type(Value) == "string" and Value:match("^%d+$")) then
			return "rbxassetid://" .. Value
		end
		if type(Value) ~= "string" then
			return ""
		end
		if Value:match("^rbxasset") or Value:match("^https?://") then
			return Value
		end
		if isfile and getcustomasset and isfile(Value) then
			return getcustomasset(Value)
		end
		return Value
	end

	function Element:New(IdxOrConfig, MaybeConfig)
		local Library = self.Library
		local Idx, Config
		if type(IdxOrConfig) == "string" then
			Idx, Config = IdxOrConfig, MaybeConfig
		else
			Config = IdxOrConfig
		end
		Config = Config or {}

		local Radius = Config.Radius or 10
		local Viewport = {
			Type = "Viewport",
			Object = nil,
			Camera = Config.Camera or Instance.new("Camera"),
			Interactive = Config.Interactive or false,
			Height = Config.Height or 200,
			Focused = Config.Focused ~= false,
			Ambient = Config.Ambient,
			LightColor = Config.LightColor,
			LightDirection = Config.LightDirection,
			Value = nil,
			ZoomingSlider = Config.ZoomingSlider == true,
		}

		local Row = MakeRow(self, Config, false)
		Bind(Viewport, Row)
		if not Config.Title or Config.Title == "" then
			Row.TitleRow.Visible = false
			Row.Padding.PaddingTop = UDim.new(0, 0)
		end

		local Connections: { RBXScriptConnection } = {}
		local IsDragging, IsPinching = false, false
		local LastPosition, LastPinch = Vector3.zero, 0
		local LastMove, LastTap, IdleClock = 0, 0, -math.huge
		local Momentum = Vector2.zero
		local AspectRatio = ParseAspectRatio(Config.AspectRatio)
		local Smooth = Config.Smooth ~= false
		local Inertia = Config.Inertia ~= false
		local KeepOrientation = Config.KeepOrientation ~= false
		local AutoRotate = Config.AutoRotate == true
		local AutoRotateSpeed = Config.AutoRotateSpeed or 0.5
		local AutoConnection: RBXScriptConnection? = nil

		local PivotOffset = Vector3.zero
		local LayeredMode = Config.LayeredClothing or "Rigid"
		local RawModel = Config.RawModel == true
		local WorldModelHost: WorldModel? = nil
		local SyncZoomSlider: ((Distance: number) -> ())? = nil
		local Target: Orbit = { Yaw = 0, Pitch = 0.25, Distance = 10 }
		local Default: Orbit = { Yaw = 0, Pitch = 0.25, Distance = 10 }

		local function Track(Event: RBXScriptSignal, Handler: (...any) -> ()): RBXScriptConnection
			local Connection = Creator.AddSignal(Event, Handler)
			table.insert(Connections, Connection)
			return Connection
		end

		local Holder = New("Frame", {
			Name = "ViewportHolder",
			Size = UDim2.new(1, -28, 0, Viewport.Height),
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, -10),
			BackgroundTransparency = 1,
			Parent = Row.Content,
		}, {
			Corner(Radius),
			Stroke("ElementBorder", 0.5),
		})

		local function SetBoxHeight(Height: number)
			Holder.Size = UDim2.new(1, -28, 0, Height)
			Row.Padding.PaddingBottom = UDim.new(0, 20 + Height)
		end

		local function RecalculateAspect()
			if not AspectRatio then
				return
			end
			local Width = Holder.AbsoluteSize.X
			if Width > 0 then
				SetBoxHeight(math.floor(Width / AspectRatio))
			end
		end

		SetBoxHeight(Viewport.Height)
		Track(Holder:GetPropertyChangedSignal("AbsoluteSize"), RecalculateAspect)
		if AspectRatio then
			task.defer(RecalculateAspect)
		end

		local Background = New("ImageLabel", {
			Name = "ViewportBackground",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Config.BackgroundColor or Color3.new(0, 0, 0),
			BackgroundTransparency = Config.BackgroundTransparency or 0,
			Image = "",
			ImageTransparency = Config.ImageTransparency or 0,
			ScaleType = Config.ScaleType or Enum.ScaleType.Crop,
			Parent = Holder,
			ThemeTag = (not Config.BackgroundColor) and { BackgroundColor3 = "Element" } or nil,
		}, {
			Corner(Radius),
		})

		if Config.Noise == true then
			New("ImageLabel", {
				Name = "ViewportNoise",
				Image = "rbxassetid://9968344227",
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(128, 128),
				Size = UDim2.fromScale(1, 1),
				ImageTransparency = 0.92,
				Parent = Background,
			}, {
				Corner(Radius),
			})
		end

		local function ApplyImage(Image: any)
			Background.Image = ResolveImage(Image)
		end

		if Config.Image then
			ApplyImage(Config.Image)
		end

		local Canvas = New("CanvasGroup", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Parent = Holder,
		}, {
			Corner(Radius),
		})

		local ViewportFrame = New("ViewportFrame", {
			Name = "Viewport",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			CurrentCamera = Viewport.Camera,
			Active = Viewport.Interactive,
			Parent = Canvas,
		})

		if Viewport.Ambient then
			ViewportFrame.Ambient = Viewport.Ambient
		end
		if Viewport.LightColor then
			ViewportFrame.LightColor = Viewport.LightColor
		end
		if Viewport.LightDirection then
			ViewportFrame.LightDirection = Viewport.LightDirection
		end

		if Config.FieldOfView then
			Viewport.Camera.FieldOfView = Config.FieldOfView
		end
		if RawModel then
			WorldModelHost = Instance.new("WorldModel")
			WorldModelHost.Parent = ViewportFrame
		end

		Viewport.Camera.Parent = ViewportFrame
		Viewport.Viewport = ViewportFrame
		Viewport.Frame = Holder

		local function GetPivot(): Vector3?
			local Object = Viewport.Object
			if not Object then
				return nil
			end
			local Success, Pivot = pcall(Object.GetPivot, Object)
			if not Success then
				return nil
			end
			return Pivot:PointToWorldSpace(PivotOffset)
		end

		local function ClampDistance(Distance: number): number
			local Minimum = math.max(Config.ZoomMin or MinDistance, MinDistance)
			local Maximum = math.max(Config.ZoomMax or math.huge, Minimum)
			return math.clamp(Distance, Minimum, Maximum)
		end

		local function Apply(Yaw: number, Pitch: number, Distance: number)
			local Pivot = GetPivot()
			if not Pivot then
				return
			end
			local CosPitch = math.cos(Pitch)
			local Direction = Vector3.new(CosPitch * math.sin(Yaw), math.sin(Pitch), CosPitch * math.cos(Yaw))
			Viewport.Camera.CFrame = CFrame.lookAt(Pivot + Direction * Distance, Pivot)
			Viewport.Value = Distance
			if SyncZoomSlider then
				SyncZoomSlider(Distance)
			end
		end

		local CameraMotor = Flipper.GroupMotor.new({
			Yaw = Target.Yaw,
			Pitch = Target.Pitch,
			Distance = Target.Distance,
		})
		local Motors = CameraMotor.Motors

		CameraMotor:OnStep(function()
			Apply(Motors.Yaw:GetValue(), Motors.Pitch:GetValue(), Motors.Distance:GetValue())
		end)

		local function Commit(Options: SpringOptions?, Immediate: boolean?)
			if Immediate or not Smooth then
				CameraMotor:SetGoal({
					Yaw = Flipper.Instant.new(Target.Yaw),
					Pitch = Flipper.Instant.new(Target.Pitch),
					Distance = Flipper.Instant.new(Target.Distance),
				})
				Apply(Target.Yaw, Target.Pitch, Target.Distance)
				return
			end

			local Spring = Options or OrbitSpring
			CameraMotor:SetGoal({
				Yaw = Flipper.Spring.new(Target.Yaw, Spring),
				Pitch = Flipper.Spring.new(Target.Pitch, Spring),
				Distance = Flipper.Spring.new(Target.Distance, Spring),
			})
		end

		local function Rotate(YawDelta: number, PitchDelta: number, Options: SpringOptions?)
			Target.Yaw += YawDelta
			Target.Pitch = math.clamp(Target.Pitch + PitchDelta, -MaxPitch, MaxPitch)
			Commit(Options)
		end

		local function Zoom(Scale: number)
			Target.Distance = ClampDistance(Target.Distance * Scale)
			Commit()
		end

		local function ComputeDefault(): boolean
			local Object = Viewport.Object
			if not Object then
				return false
			end

			if not (Object:IsA("BasePart") or Object:IsA("Model")) then
				return false
			end

			local Center, Size
			if RawModel and Object:IsA("Model") then
				local Ok, BoxCFrame, BoxSize = pcall(Object.GetBoundingBox, Object)
				if Ok and BoxSize and BoxSize.Magnitude > 0 then
					Center, Size = BoxCFrame.Position + Vector3.new(0, BoxSize.Y * 0.03, 0), BoxSize
				end
			end
			if not Center then
				Center, Size = ComputeBounds(Object, true)
			end
			if not Center then
				Center, Size = ComputeBounds(Object, false)
			end
			if not Center then
				return false
			end

			local Success, PivotCFrame = pcall(Object.GetPivot, Object)
			PivotOffset = Success and PivotCFrame:PointToObjectSpace(Center) or Vector3.zero

			local Extent = math.max(Size.X, Size.Y, Size.Z, MinDistance)
			Default.Yaw = 0
			if RawModel then
				Default.Pitch = 0.05
				Default.Distance = math.max(Extent * 1.85, 5.5)
			else
				Default.Pitch = math.atan2(Extent / 2, Extent * 2)
				Default.Distance = Vector2.new(Extent * 2, Extent / 2).Magnitude
			end
			return true
		end

		local function FocusCamera(Immediate: boolean?, KeepAngles: boolean?)
			if not ComputeDefault() then
				return
			end

			Target.Distance = Default.Distance
			if not KeepAngles then
				Target.Yaw = Default.Yaw
				Target.Pitch = Default.Pitch
			end
			Commit(ResetSpring, Immediate)
		end

		local function IsShown(): boolean
			local Current: Instance? = ViewportFrame
			while Current do
				if Current:IsA("GuiObject") and not Current.Visible then
					return false
				end
				if Current:IsA("ScreenGui") then
					return Current.Enabled
				end
				Current = Current.Parent
			end
			return false
		end

		local function IsInside(Position: Vector2): boolean
			if not IsShown() then
				return false
			end

			local Origin, Size = ViewportFrame.AbsolutePosition, ViewportFrame.AbsoluteSize
			local Left, Top = Origin.X, Origin.Y
			local Right, Bottom = Origin.X + Size.X, Origin.Y + Size.Y

			local Ancestor = ViewportFrame.Parent
			while Ancestor do
				if Ancestor:IsA("GuiObject") and Ancestor.ClipsDescendants then
					local ClipOrigin, ClipSize = Ancestor.AbsolutePosition, Ancestor.AbsoluteSize
					Left = math.max(Left, ClipOrigin.X)
					Top = math.max(Top, ClipOrigin.Y)
					Right = math.min(Right, ClipOrigin.X + ClipSize.X)
					Bottom = math.min(Bottom, ClipOrigin.Y + ClipSize.Y)
				end
				Ancestor = Ancestor.Parent
			end

			return Position.X >= Left and Position.X <= Right and Position.Y >= Top and Position.Y <= Bottom
		end

		local function SetScrolling(Enabled: boolean)
			if self.ScrollFrame then
				self.ScrollFrame.ScrollingEnabled = Enabled
			end
		end

		local function RefreshAutoRotate()
			if AutoConnection then
				AutoConnection:Disconnect()
				AutoConnection = nil
			end
			if not AutoRotate then
				return
			end

			AutoConnection = Track(Heartbeat, function(DeltaTime: number)
				if IsDragging or IsPinching or not Viewport.Object or not IsShown() then
					return
				end
				if os.clock() - IdleClock < AutoResumeDelay then
					return
				end
				Rotate(AutoRotateSpeed * DeltaTime, 0, AutoSpring)
			end)
		end

		local ZoomPill = New("Frame", {
			Name = "ZoomingSlider",
			Size = UDim2.new(0, 28, 0.74, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			BackgroundTransparency = 0.18,
			Active = true,
			Visible = Viewport.ZoomingSlider,
			ZIndex = 6,
			Parent = Holder,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			Corner(999),
			Stroke("ElementBorder", 0.82),
			New("UISizeConstraint", {
				MinSize = Vector2.new(0, 96),
				MaxSize = Vector2.new(math.huge, 190),
			}),
		})

		Label({
			Name = "ZoomIn",
			Text = "+",
			Tag = "SubText",
			Weight = "SemiBold",
			TextSize = 14,
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.fromOffset(0, 2),
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 7,
			Parent = ZoomPill,
		})

		Label({
			Name = "ZoomOut",
			Text = "\u{2212}",
			Tag = "SubText",
			Weight = "SemiBold",
			TextSize = 14,
			Size = UDim2.new(1, 0, 0, 22),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, -2),
			TextXAlignment = Enum.TextXAlignment.Center,
			ZIndex = 7,
			Parent = ZoomPill,
		})

		local ZoomRail = New("Frame", {
			Name = "Rail",
			Size = UDim2.new(0, 6, 1, -52),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 0.88,
			ZIndex = 7,
			Parent = ZoomPill,
			ThemeTag = {
				BackgroundColor3 = "SliderRail",
			},
		}, {
			Corner(999),
		})

		local ZoomFill = New("Frame", {
			Name = "Fill",
			Size = UDim2.fromScale(1, 0),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.fromScale(0, 1),
			ZIndex = 8,
			Parent = ZoomRail,
			ThemeTag = {
				BackgroundColor3 = "Accent",
			},
		}, {
			Corner(999),
		})

		local ZoomThumb = New("Frame", {
			Name = "Thumb",
			Size = UDim2.fromOffset(20, 12),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 1),
			BackgroundColor3 = Color3.new(1, 1, 1),
			ZIndex = 9,
			Parent = ZoomRail,
		}, {
			Corner(999),
			New("UIStroke", {
				Color = Color3.new(0, 0, 0),
				Transparency = 0.86,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}),
		})

		local ZoomDragging = false
		local ZoomAlpha = 0
		local ZoomSpring = table.freeze({ Frequency = 22, DampingRatio = 1 })

		local function GetZoomRange(): (number, number)
			local Minimum = math.max(Config.ZoomMin or MinDistance, MinDistance)
			local Maximum = Config.ZoomMax or math.huge
			Minimum = math.max(Minimum, Default.Distance * 0.2)
			Maximum = math.min(Maximum, Default.Distance * 3)
			return Minimum, math.max(Maximum, Minimum * 1.5)
		end

		local function ShowZoomAlpha(Alpha: number)
			ZoomAlpha = math.clamp(Alpha, 0, 1)
			ZoomThumb.Position = UDim2.fromScale(0.5, 1 - ZoomAlpha)
			ZoomFill.Size = UDim2.fromScale(1, ZoomAlpha)
		end

		SyncZoomSlider = function(Distance: number)
			if ZoomDragging then
				return
			end
			local Minimum, Maximum = GetZoomRange()
			local Alpha = 1 - math.log(math.clamp(Distance, Minimum, Maximum) / Minimum) / math.log(Maximum / Minimum)
			ShowZoomAlpha(Alpha)
		end

		local function DragZoom(PositionY: number)
			local RailHeight = ZoomRail.AbsoluteSize.Y
			if RailHeight <= 0 then
				return
			end
			local Alpha = math.clamp((ZoomRail.AbsolutePosition.Y + RailHeight - PositionY) / RailHeight, 0, 1)
			local Minimum, Maximum = GetZoomRange()
			ShowZoomAlpha(Alpha)
			Target.Distance = ClampDistance(Minimum * (Maximum / Minimum) ^ (1 - Alpha))
			Commit(ZoomSpring)
		end

		local function StepZoom(Direction: number)
			local Minimum, Maximum = GetZoomRange()
			local Step = 0.12 * Direction
			Target.Distance = ClampDistance(Minimum * (Maximum / Minimum) ^ (1 - math.clamp(ZoomAlpha + Step, 0, 1)))
			Commit(ZoomSpring)
		end

		Track(ZoomPill.InputBegan, function(Input: InputObject)
			local InputType = Input.UserInputType
			if InputType ~= Enum.UserInputType.MouseButton1 and InputType ~= Enum.UserInputType.Touch then
				return
			end
			if not Creator.AcceptsInput(ZoomPill, Input) then
				return
			end
			ZoomDragging = true
			SetScrolling(false)
			Creator.Tween(ZoomThumb, 0.12, { Size = UDim2.fromOffset(24, 14) })
			DragZoom(Input.Position.Y)
		end)

		Track(ZoomPill.MouseEnter, function()
			SetScrolling(false)
		end)

		Track(ZoomPill.MouseLeave, function()
			if not ZoomDragging then
				SetScrolling(true)
			end
		end)

		Track(ZoomPill.InputChanged, function(Input: InputObject)
			if Input.UserInputType == Enum.UserInputType.MouseWheel and Creator.AcceptsInput(ZoomPill, Input) then
				StepZoom(Input.Position.Z)
			end
		end)

		Track(UserInputService.InputChanged, function(Input: InputObject)
			if not ZoomDragging then
				return
			end
			local InputType = Input.UserInputType
			if InputType == Enum.UserInputType.MouseMovement or InputType == Enum.UserInputType.Touch then
				DragZoom(Input.Position.Y)
			end
		end)

		Track(UserInputService.InputEnded, function(Input: InputObject)
			if not ZoomDragging then
				return
			end
			local InputType = Input.UserInputType
			if InputType ~= Enum.UserInputType.MouseButton1 and InputType ~= Enum.UserInputType.Touch then
				return
			end
			ZoomDragging = false
			SetScrolling(true)
			Creator.Tween(ZoomThumb, 0.12, { Size = UDim2.fromOffset(20, 12) })
			SyncZoomSlider(Target.Distance)
		end)

		Track(ViewportFrame.MouseEnter, function()
			if Viewport.Interactive then
				SetScrolling(false)
			end
		end)

		Track(ViewportFrame.MouseLeave, function()
			if not IsDragging then
				SetScrolling(true)
			end
		end)

		Track(ViewportFrame.InputBegan, function(Input: InputObject)
			if not Viewport.Interactive or not Creator.AcceptsInput(ViewportFrame, Input) then
				return
			end

			local InputType = Input.UserInputType
			if InputType == Enum.UserInputType.MouseButton1 or (InputType == Enum.UserInputType.Touch and not IsPinching) then
				local Now = os.clock()
				if Now - LastTap < DoubleTapWindow then
					LastTap = 0
					Viewport:Reset()
				else
					LastTap = Now
				end

				IsDragging = true
				LastPosition = Input.Position
				LastMove = Now
				IdleClock = Now
				Momentum = Vector2.zero
				SetScrolling(false)
			end
		end)

		Track(UserInputService.InputEnded, function(Input: InputObject)
			if not Viewport.Interactive or not IsDragging then
				return
			end

			local InputType = Input.UserInputType
			if InputType ~= Enum.UserInputType.MouseButton1 and InputType ~= Enum.UserInputType.Touch then
				return
			end

			local WasDragging = IsDragging
			IsDragging = false
			IdleClock = os.clock()
			SetScrolling(true)

			if WasDragging and Inertia and IdleClock - LastMove < FlingWindow and Momentum.Magnitude > FlingThreshold then
				local FlingScale = DragSensitivity * FlingDuration
				Rotate(
					-math.clamp(Momentum.X * FlingScale, -math.pi, math.pi),
					math.clamp(Momentum.Y * FlingScale, -math.pi, math.pi),
					FlingSpring
				)
			end
		end)

		Track(UserInputService.InputChanged, function(Input: InputObject)
			if not (Viewport.Interactive and IsDragging and not IsPinching) then
				return
			end

			local InputType = Input.UserInputType
			if InputType ~= Enum.UserInputType.MouseMovement and InputType ~= Enum.UserInputType.Touch then
				return
			end

			local Delta = Input.Position - LastPosition
			local Now = os.clock()
			local Elapsed = math.max(Now - LastMove, 1 / 240)

			LastPosition = Input.Position
			LastMove = Now
			IdleClock = Now
			Momentum = Momentum:Lerp(Vector2.new(Delta.X, Delta.Y) / Elapsed, 0.35)

			Rotate(-Delta.X * DragSensitivity, Delta.Y * DragSensitivity)
		end)

		Track(ViewportFrame.InputChanged, function(Input: InputObject)
			if
				Viewport.Interactive
				and Input.UserInputType == Enum.UserInputType.MouseWheel
				and Creator.AcceptsInput(ViewportFrame, Input)
			then
				IdleClock = os.clock()
				Zoom(1 - Input.Position.Z * WheelStep)
			end
		end)

		Track(UserInputService.TouchPinch, function(Positions: { Vector2 }, _Scale: number, _Velocity: number, State: Enum.UserInputState)
			if not Viewport.Interactive then
				return
			end

			if State == Enum.UserInputState.Begin then
				local Middle = (Positions[1] + Positions[2]) / 2
				if not IsInside(Middle) or Creator.IsOccluded(ViewportFrame, Middle) then
					return
				end
				IsPinching = true
				IsDragging = false
				IdleClock = os.clock()
				LastPinch = (Positions[1] - Positions[2]).Magnitude
			elseif State == Enum.UserInputState.Change then
				if not IsPinching then
					return
				end
				local Current = (Positions[1] - Positions[2]).Magnitude
				if Current > 0 and LastPinch > 0 then
					Zoom(LastPinch / Current)
				end
				LastPinch = Current
				IdleClock = os.clock()
			elseif State == Enum.UserInputState.End or State == Enum.UserInputState.Cancel then
				IsPinching = false
			end
		end)

		function Viewport:SetObject(NewObject: Instance?, Clone: boolean?)
			if Clone and NewObject then
				local WasArchivable = NewObject.Archivable
				NewObject.Archivable = true
				local Copy = NewObject:Clone()
				NewObject.Archivable = WasArchivable
				NewObject = Copy
			end

			local HadObject = Viewport.Object ~= nil
			if Viewport.Object then
				Viewport.Object:Destroy()
			end

			PivotOffset = Vector3.zero
			Viewport.Object = NewObject
			if NewObject then
				if RawModel and WorldModelHost then
					if NewObject:IsA("Model") then
						pcall(function()
							NewObject:PivotTo(CFrame.new(0, 0, 0))
						end)
					end
					NewObject.Parent = WorldModelHost
					if Viewport.Focused then
						FocusCamera(true, HadObject and KeepOrientation)
						local Current = NewObject
						task.defer(function()
							if Viewport.Object == Current and Current.Parent then
								FocusCamera(true, true)
							end
						end)
					end
				else
					PrepareHumanoid(NewObject)
					PlaceAccessories(NewObject)
					if LayeredMode ~= "Deform" then
						StripLayered(NewObject)
					end
					NewObject.Parent = ViewportFrame
					if Viewport.Focused then
						FocusCamera(true, HadObject and KeepOrientation)
					end
				end
			end
		end

		function Viewport:SetModel(Model: Instance?)
			Viewport:SetObject(Model, true)
		end

		function Viewport:SetHeight(Height: number)
			Viewport.Height = Height
			AspectRatio = nil
			SetBoxHeight(Height)
		end

		function Viewport:SetAspectRatio(Ratio: any)
			AspectRatio = ParseAspectRatio(Ratio)
			if AspectRatio then
				RecalculateAspect()
			else
				SetBoxHeight(Viewport.Height)
			end
		end

		function Viewport:Focus(Animated: boolean?)
			FocusCamera(not Animated)
		end

		function Viewport:Reset()
			FocusCamera(false)
		end

		function Viewport:SetCamera(NewCamera: Camera)
			Viewport.Camera = NewCamera
			NewCamera.Parent = ViewportFrame
			ViewportFrame.CurrentCamera = NewCamera
		end

		function Viewport:SetZoomingSlider(Enabled: boolean)
			Viewport.ZoomingSlider = Enabled == true
			ZoomPill.Visible = Viewport.ZoomingSlider
			if SyncZoomSlider then
				SyncZoomSlider(Target.Distance)
			end
		end

		function Viewport:GetZoomingSlider(): boolean
			return Viewport.ZoomingSlider
		end

		function Viewport:SetInteractive(Value: boolean)
			Viewport.Interactive = Value
			ViewportFrame.Active = Value
			if not Value then
				IsDragging, IsPinching = false, false
				SetScrolling(true)
			end
		end

		function Viewport:SetValue(Distance: number)
			if type(Distance) ~= "number" then
				return
			end
			Target.Distance = ClampDistance(Distance)
			Commit()
		end

		function Viewport:GetOrbit(): Orbit
			return table.clone(Target)
		end

		function Viewport:SetOrbit(Yaw: number?, Pitch: number?, Distance: number?, Immediate: boolean?)
			Target.Yaw = Yaw or Target.Yaw
			Target.Pitch = math.clamp(Pitch or Target.Pitch, -MaxPitch, MaxPitch)
			Target.Distance = ClampDistance(Distance or Target.Distance)
			Commit(OrbitSpring, Immediate)
		end

		function Viewport:SetAutoRotate(Enabled: boolean, Speed: number?)
			AutoRotate = Enabled == true
			AutoRotateSpeed = Speed or AutoRotateSpeed
			IdleClock = -math.huge
			RefreshAutoRotate()
		end

		function Viewport:SetSmooth(Enabled: boolean)
			Smooth = Enabled ~= false
		end

		function Viewport:SetAmbient(Color: Color3)
			Viewport.Ambient = Color
			ViewportFrame.Ambient = Color
		end

		function Viewport:SetLightColor(Color: Color3)
			Viewport.LightColor = Color
			ViewportFrame.LightColor = Color
		end

		function Viewport:SetLightDirection(Direction: Vector3)
			Viewport.LightDirection = Direction
			ViewportFrame.LightDirection = Direction
		end

		function Viewport:SetImage(Image: any)
			ApplyImage(Image)
		end

		function Viewport:SetImageTransparency(Value: number)
			Background.ImageTransparency = Value
		end

		function Viewport:SetBackgroundColor(Color: Color3)
			Creator.RemoveTag(Background)
			Background.BackgroundColor3 = Color
		end

		function Viewport:Destroy()
			CameraMotor:Destroy()
			for _, Connection in Connections do
				Connection:Disconnect()
			end
			table.clear(Connections)
			SetScrolling(true)

			Row:Destroy()
			if Idx then
				Library.Options[Idx] = nil
			end
		end

		RefreshAutoRotate()

		if Config.Object then
			Viewport:SetObject(Config.Object, Config.Clone)
		end

		if Idx then
			Library.Options[Idx] = Viewport
		end

		return Viewport
	end

	return Element
end)()

ElementsTable.Space = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Space"
	Element.ClassType = "Layout"
	Element.NoIdx = true

	function Element:SetHeight(Value)
		self.Height = math.max(0, tonumber(Value) or 0)
		self.Clip.Size = UDim2.new(1, 0, 0, self.Height)
	end

	function Element:SetVisible(Value)
		self.Clip.Visible = Value and true or false
	end

	function Element:GetVisible()
		return self.Clip.Visible
	end

	function Element:Destroy()
		Components.Rows[self.Clip] = nil
		self.Clip:Destroy()
	end

	function Element:New(Config)
		if type(Config) == "number" then
			Config = { Height = Config }
		end
		Config = Config or {}

		local Holder = self.Holder
		local Space = setmetatable({
			Type = "Space",
			IsSpace = true,
			Id = 0,
			Home = Holder,
			Section = Holder,
		}, Element)

		Space.Clip = New("Frame", {
			Name = "Space",
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = Holder:NextOrder(),
			Parent = Holder.Container,
		})
		Space:SetHeight(Config.Height or 12)

		Components.Rows[Space.Clip] = Space

		Creator.AddSignal(Space.Clip:GetPropertyChangedSignal("Visible"), function()
			Holder:QueueRefresh()
		end)
		Holder:QueueRefresh()

		return Space
	end

	return Element
end)()

ElementsTable.Group = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Group"
	Element.ClassType = "Layout"
	Element.NoIdx = true

	local Methods = {}

	local function Normalize(Direction: any): string
		local Value = string.lower(tostring(Direction or "Vertical"))
		if Value == "horizontal" or Value == "left" or Value == "row" or Value == "x" then
			return "Horizontal"
		end
		return "Vertical"
	end

	local function Fit(Row, Fill: number?, Share: number?)
		Row.Fill = Fill
		Row.Share = Share
	end

	local function PatchRow(Row)
		if Row.GroupPatched or not Row.Clip then
			return
		end
		Row.GroupPatched = true

		if Row.SetHeight then
			function Row:SetHeight(Height: number)
				self.Height = Height
				local Count = self.Fill or 1
				self.Clip.Size = UDim2.new(1 / Count, -(self.Share or 0), 0, Height)
				if self.Content then
					self.Content.Size = UDim2.new(1, 0, 0, Height)
				end
			end
		end
	end

	local function RefreshHorizontal(Holder, Group)
		local List = Holder:Rows()
		local Count = #List
		local Share = if Count > 1 then Group.Gap * (Count - 1) / Count else 0

		for _, Row in List do
			PatchRow(Row)
			Fit(Row, math.max(1, Count), Share)

			if Row.SetHeight and Row.Height then
				Row:SetHeight(Row.Height)
			elseif Row.Clip then
				Row.Clip.Size = UDim2.new(1 / math.max(1, Count), -Share, 0, Row.Clip.Size.Y.Offset)
			end
		end

		Holder.Count = Count
		Holder.HasSpace = true
		Group.Home:QueueRefresh()
	end

	local function Apply(Group)
		local Holder = Group.Holder
		local Layout = Holder.Container:FindFirstChildOfClass("UIListLayout")
		local Horizontal = Group.Direction == "Horizontal"

		Holder.Flow = Group.Direction

		if Layout then
			Layout.FillDirection = if Horizontal then Enum.FillDirection.Horizontal else Enum.FillDirection.Vertical
			Layout.Padding = UDim.new(0, if Horizontal then Group.Gap else 0)
			Layout.VerticalAlignment = Enum.VerticalAlignment.Top
		end

		if Horizontal then
			Holder.Refresh = function(self)
				RefreshHorizontal(self, Group)
			end
		else
			Holder.Refresh = nil
			for _, Row in Holder:Rows() do
				Fit(Row, nil, nil)
				if Row.GroupPatched and Row.SetHeight and Row.Height then
					Row:SetHeight(Row.Height)
				end
			end
		end

		Holder:QueueRefresh()
		Group.Home:QueueRefresh()
	end

	function Methods:SetDirection(Direction)
		self.Direction = Normalize(Direction)
		Apply(self)
	end

	function Methods:SetCorners(Top, Bottom, Separator)
		self.Divider.Visible = Separator and true or false
		self.Fill.Visible = not Top or not Bottom
		for _, Row in self.Holder:Rows() do
			if Row.Kind ~= "Group" and Row.SetCorners then
				Row:SetCorners(Top, Bottom, false)
			end
		end
	end

	function Methods:HasIcon()
		return false
	end

	function Methods:SetDivider() end

	function Methods:GetDirection()
		return self.Direction
	end

	function Methods:SetGap(Value)
		self.Gap = math.max(0, tonumber(Value) or 0)
		Apply(self)
	end

	function Methods:SetSpacing(Value)
		self.Spacing = math.max(0, tonumber(Value) or 0)
		self.Root.UIPadding.PaddingBottom = UDim.new(0, self.Spacing)
		self.Holder.Shadow.VerticalLimit = math.max(self.Spacing - 1, 5)
		ApplyDepth(self.Holder.Shadow)
		self.Home:QueueRefresh()
	end

	function Methods:SetTitle(Value)
		self.Title = Value or ""
		self.Holder:SetTitle(self.Title)
	end

	function Methods:GetTitle()
		return self.Title
	end

	function Methods:SetIcon(Value)
		self.Holder:SetIcon(Value)
	end

	function Methods:SetVisible(Value)
		self.Root.Visible = Value and true or false
	end

	function Methods:GetVisible()
		return self.Root.Visible
	end

	function Methods:GetElements()
		return self.Holder:Rows()
	end

	function Methods:SetAccordion(Value)
		self.Holder:SetAccordion(Value)
	end

	function Methods:SetCollapsed(Value, Instant)
		self.Holder:SetCollapsed(Value, Instant)
	end

	function Methods:GetCollapsed()
		return self.Holder:GetCollapsed()
	end

	function Methods:ToggleCollapsed()
		self.Holder:ToggleCollapsed()
	end

	function Methods:OnChanged(Function)
		self.Holder:OnChanged(Function)
	end

	function Methods:SetLocked(Value, Reason)
		self.Holder:SetLocked(Value, Reason)
	end

	function Methods:Lock(Reason)
		self.Holder:Lock(Reason)
	end

	function Methods:Unlock()
		self.Holder:Unlock()
	end

	function Methods:IsLocked()
		return self.Holder:IsLocked()
	end

	function Methods:Destroy()
		local Home = self.Home
		Components.Rows[self.Root] = nil
		self.Holder:Destroy()
		Home:QueueRefresh()
	end

	local Meta = {}
	function Meta.__index(Self, Key)
		local Method = Methods[Key]
		if Method ~= nil then
			return Method
		end
		return Elements[Key]
	end

	function Element:New(Config)
		if type(Config) == "string" then
			Config = { Title = Config }
		end
		Config = Config or {}

		local Parent = self.Holder
		local Spacing = math.max(0, tonumber(Config.Spacing) or 12)
		local Holder = Components.Section(Config.Title or "", Parent.Container, {
			LayoutOrder = Parent:NextOrder(),
			IconColor = Config.IconColor,
			Icon = Config.Icon,
			IconSize = Config.IconSize,
			Depth = if Config.Depth ~= nil then Config.Depth else Parent.Depth,
			Accordion = Config.Accordion,
			Collapsed = Config.Collapsed,
			Callback = Config.Callback,
			Id = Config.Id
				or (if Parent.InModal
					then nil
					else `Group:{self.Tab.Name}:{Parent.Title}:{Config.Title or Parent.Order}`),
			InModal = Parent.InModal,
		})

		Holder.Up = Parent
		Holder.Shadow.VerticalLimit = math.max(Spacing - 1, 5)
		if Config.Locked then
			Holder:SetLocked(true, Config.LockedReason)
		end

		New("UIPadding", {
			PaddingBottom = UDim.new(0, Spacing),
			Parent = Holder.Root,
		})

		local Group = setmetatable({
			Type = "Section",
			Kind = "Group",
			IsSpace = true,
			Id = 0,
			Home = Parent,
			Section = Parent,
			Holder = Holder,
			Root = Holder.Root,
			Clip = Holder.Root,
			Container = Holder.Container,
			ScrollFrame = self.ScrollFrame,
			Tab = self.Tab,
			Library = Library,
			Title = Config.Title or "",
			Direction = Normalize(Config.Direction),
			Gap = math.max(0, tonumber(Config.Gap) or 8),
			Spacing = Spacing,
		}, Meta)

		Group.Fill = New("Frame", {
			Name = "Fill",
			Position = UDim2.new(0, 14, 0, 0),
			Size = UDim2.new(1, -28, 1, 0),
			BackgroundTransparency = if Library:GetPanelAlpha() >= 0.999 then 0 else 1,
			Visible = false,
			ZIndex = 0,
			Parent = Holder.Shell,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		})
		Library.PanelBackings[Group.Fill] = true

		Group.Divider = New("Frame", {
			Name = "Divider",
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundTransparency = 0.94,
			Visible = false,
			ZIndex = 3,
			Parent = Holder.Shell,
			ThemeTag = {
				BackgroundColor3 = "ElementBorder",
			},
		})

		Holder.Root.Name = "Group"
		Components.Rows[Holder.Root] = Group

		Creator.AddSignal(Holder.Root:GetPropertyChangedSignal("Visible"), function()
			Parent:QueueRefresh()
		end)

		Apply(Group)
		return Group
	end

	return Element
end)()

ElementsTable.Banner = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Banner"
	Element.ClassType = "Display"

	local Gap = 8
	local FooterHeight = 14
	local WeightChoices = { "Regular", "Medium", "SemiBold", "Bold" }
	local ShapeChoices = { "Rounded", "Square", "Circle" }
	local ScaleChoices = { "Crop", "Fit", "Stretch", "Tile" }
	local ScaleTypes = {
		Crop = Enum.ScaleType.Crop,
		Fit = Enum.ScaleType.Fit,
		Stretch = Enum.ScaleType.Stretch,
		Tile = Enum.ScaleType.Tile,
	}

	local DefaultShadow = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.4, 0.85),
		NumberSequenceKeypoint.new(1, 0.2),
	})

	local Order = {
		"Title",
		"Subtitle",
		"Description",
		"FooterLeft",
		"FooterRight",
		"Thumbnail",
		"ThumbnailTransparency",
		"ThumbnailScaleType",
		"ThumbnailShadow",
		"Tint",
		"TintTransparency",
		"Avatar",
		"AvatarShape",
		"AvatarSize",
		"AvatarVisible",
		"Height",
		"Radius",
		"Padding",
		"BorderTransparency",
		"TitleSize",
		"TitleWeight",
		"SubtitleSize",
		"DescriptionSize",
		"FooterSize",
		"TitleColor",
		"SubtitleColor",
		"DescriptionColor",
		"FooterColor",
		"Clickable",
		"Marquee",
		"Visible",
	}

	local Specs = {
		Title = { Kind = "String", Default = "" },
		Subtitle = { Kind = "String", Default = "" },
		Description = { Kind = "String", Default = "" },
		FooterLeft = { Kind = "String", Default = "" },
		FooterRight = { Kind = "String", Default = "" },
		Thumbnail = { Kind = "Asset", Default = "" },
		ThumbnailTransparency = { Kind = "Number", Default = 0.35, Min = 0, Max = 1 },
		ThumbnailScaleType = { Kind = "Choice", Default = "Crop", Choices = ScaleChoices },
		ThumbnailShadow = { Kind = "Sequence", Default = DefaultShadow },
		Tint = { Kind = "Color", Default = Color3.new(0, 0, 0) },
		TintTransparency = { Kind = "Number", Default = 0.55, Min = 0, Max = 1 },
		Avatar = { Kind = "Asset", Default = "" },
		AvatarShape = { Kind = "Choice", Default = "Rounded", Choices = ShapeChoices },
		AvatarSize = { Kind = "Number", Default = 96, Min = 24, Max = 256 },
		AvatarVisible = { Kind = "Boolean", Default = true },
		Height = { Kind = "Number", Default = 200, Min = 80, Max = 600 },
		Radius = { Kind = "Number", Default = 12, Min = 0, Max = 40 },
		Padding = { Kind = "Number", Default = 24, Min = 8, Max = 64 },
		BorderTransparency = { Kind = "Number", Default = 0.5, Min = 0, Max = 1 },
		TitleSize = { Kind = "Number", Default = 26, Min = 10, Max = 64 },
		TitleWeight = { Kind = "Choice", Default = "Medium", Choices = WeightChoices },
		SubtitleSize = { Kind = "Number", Default = 16, Min = 8, Max = 40 },
		DescriptionSize = { Kind = "Number", Default = 12, Min = 8, Max = 32 },
		FooterSize = { Kind = "Number", Default = 11, Min = 8, Max = 24 },
		TitleColor = { Kind = "Color", Nilable = true },
		SubtitleColor = { Kind = "Color", Nilable = true },
		DescriptionColor = { Kind = "Color", Nilable = true },
		FooterColor = { Kind = "Color", Nilable = true },
		Clickable = { Kind = "Boolean", Default = false },
		Marquee = { Kind = "Boolean", Default = true },
		Visible = { Kind = "Boolean", Default = true },
	}

	local Aliases = {
		Content = "Description",
		Image = "Thumbnail",
		Background = "Thumbnail",
		Fade = "ThumbnailShadow",
		Shadow = "ThumbnailShadow",
		Icon = "Avatar",
	}

	local function Coerce(Name, Spec, Value)
		if Value == nil then
			return Spec.Default
		end

		local Kind = Spec.Kind
		if Kind == "String" then
			return tostring(Value)
		elseif Kind == "Number" then
			local Number = tonumber(Value)
			if not Number then
				Library:Alert("Banner - '" .. Name .. "' expects a number", "Error")
				return Spec.Default
			end
			return math.clamp(Number, Spec.Min or -math.huge, Spec.Max or math.huge)
		elseif Kind == "Boolean" then
			return not not Value
		elseif Kind == "Sequence" then
			if Value == false or typeof(Value) == "NumberSequence" then
				return Value
			end
			if type(Value) ~= "table" or #Value < 2 then
				Library:Alert("Banner - '" .. Name .. "' expects a NumberSequence, false, or a list of at least 2 numbers", "Error")
				return Spec.Default
			end
			local Points = {}
			for Index, Number in ipairs(Value) do
				if type(Number) ~= "number" then
					Library:Alert("Banner - '" .. Name .. "' list must contain numbers", "Error")
					return Spec.Default
				end
				table.insert(Points, NumberSequenceKeypoint.new((Index - 1) / (#Value - 1), math.clamp(Number, 0, 1)))
			end
			return NumberSequence.new(Points)
		elseif Kind == "Color" then
			if typeof(Value) ~= "Color3" then
				Library:Alert("Banner - '" .. Name .. "' expects a Color3", "Error")
				return Spec.Default
			end
			return Value
		elseif Kind == "Asset" then
			if type(Value) ~= "string" and type(Value) ~= "number" and type(Value) ~= "table" then
				Library:Alert("Banner - '" .. Name .. "' expects an asset id, url or icon", "Error")
				return Spec.Default
			end
			return Value
		elseif Kind == "Choice" then
			if not table.find(Spec.Choices, Value) then
				Library:Alert("Banner - '" .. Name .. "' expects one of: " .. table.concat(Spec.Choices, ", "), "Error")
				return Spec.Default
			end
			return Value
		end

		return Value
	end

	local function ResolveImage(Value)
		if type(Value) == "number" then
			return "rbxassetid://" .. Value
		end
		if type(Value) ~= "string" or Value == "" then
			return ""
		end
		if Value:match("^%d+$") then
			return "rbxassetid://" .. Value
		end
		if Value:match("^rbxasset") or Value:match("^https?://") then
			return Value
		end
		if isfile and getcustomasset then
			local Success, Result = pcall(function()
				if isfile(Value) then
					return getcustomasset(Value)
				end
				return nil
			end)
			if Success and Result then
				return Result
			end
		end
		return Value
	end

	local function ApplyColor(Object, Property, Value, Key)
		if Value then
			Creator.RemoveTag(Object)
			Object[Property] = Value
		else
			Creator.OverrideTag(Object, { [Property] = Key })
		end
	end

	function Element:New(Idx, Config)
		if type(Idx) == "table" then
			Config, Idx = Idx, nil
		end
		Config = Config or {}

		local Library = self.Library
		local Holder = self.Holder

		local Banner = setmetatable({
			Type = "Banner",
			IsSpace = true,
			Id = 0,
			Home = Holder,
			Section = Holder,
			Properties = {},
			Listeners = {},
			Callback = Config.Callback or function() end,
		}, Element)

		local Clip = New("Frame", {
			Name = "Banner",
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = Holder:NextOrder(),
			Parent = Holder.Container,
		})
		Banner.Clip = Clip

		local CardCorner = Corner(12)
		local CardStroke = Stroke("ElementBorder", 0.5)
		local Card = New("Frame", {
			Name = "Card",
			Size = UDim2.new(1, -28, 1, -Gap),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
			BackgroundTransparency = 0.2,
			Parent = Clip,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			CardCorner,
			CardStroke,
		})
		Banner.Card = Card

		local BackgroundCorner = Corner(12)
		local Background = New("ImageLabel", {
			Name = "Background",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Crop,
			ZIndex = 1,
			Visible = false,
			Parent = Card,
		}, {
			BackgroundCorner,
		})

		local TintCorner = Corner(12)
		local Tint = New("Frame", {
			Name = "Tint",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.new(0, 0, 0),
			ZIndex = 2,
			Parent = Card,
		}, {
			TintCorner,
		})

		local FadeCorner = Corner(12)
		local FadeGradient = New("UIGradient", {
			Rotation = 90,
			Transparency = DefaultShadow,
		})
		local Fade = New("Frame", {
			Name = "Fade",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.new(0, 0, 0),
			ZIndex = 3,
			Parent = Card,
		}, {
			FadeCorner,
			FadeGradient,
		})

		local AvatarCorner = Corner(12)
		local AvatarImageCorner = Corner(12)
		local AvatarImage = New("ImageLabel", {
			Name = "AvatarImage",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Crop,
			ZIndex = 5,
			Visible = false,
		}, {
			AvatarImageCorner,
		})
		local Avatar = New("Frame", {
			Name = "Avatar",
			BackgroundTransparency = 0.1,
			ZIndex = 5,
			Parent = Card,
			ThemeTag = {
				BackgroundColor3 = "Element",
			},
		}, {
			AvatarCorner,
			Stroke("ElementBorder", 0.7),
			AvatarImage,
		})

		local TextBlock = New("Frame", {
			Name = "TextBlock",
			AnchorPoint = Vector2.new(0, 0.5),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ZIndex = 5,
			Parent = Card,
		}, {
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 2),
			}),
		})

		local TitleLabel = Label({
			Text = "",
			Weight = "Medium",
			Tag = "Text",
			LayoutOrder = 1,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 5,
			Parent = TextBlock,
		})

		local SubtitleLabel = Label({
			Text = "",
			Weight = "Medium",
			Tag = "SubText",
			LayoutOrder = 2,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 5,
			Parent = TextBlock,
		})

		local DescriptionLabel = Label({
			Text = "",
			Weight = "Regular",
			Tag = "SubText",
			TextWrapped = true,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 5,
			Parent = Card,
		})

		local FooterFrame = New("Frame", {
			Name = "Footer",
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = 1,
			ZIndex = 5,
			Parent = Card,
		})

		local FooterLeft = Label({
			Text = "",
			Weight = "Regular",
			Tag = "SubText",
			Size = UDim2.new(0.5, -6, 1, 0),
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextTransparency = 0.35,
			ZIndex = 5,
			Parent = FooterFrame,
		})

		local FooterRight = Label({
			Text = "",
			Weight = "Regular",
			Tag = "SubText",
			Position = UDim2.new(0.5, 6, 0, 0),
			Size = UDim2.new(0.5, -6, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Right,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextTransparency = 0.35,
			ZIndex = 5,
			Parent = FooterFrame,
		})

		local Canvas = New("Frame", {
			Name = "Canvas",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 6,
			Parent = Card,
		})
		Banner.Canvas = Canvas

		local Hit = New("TextButton", {
			Name = "Hit",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text = "",
			AutoButtonColor = false,
			Visible = false,
			ZIndex = 10,
			Parent = Card,
		})

		local function Render()
			local Props = Banner.Properties
			local Padding = Props.Padding
			local Height = Props.Height
			local Radius = Props.Radius
			local AvatarSize = Props.AvatarSize
			local AvatarVisible = Props.AvatarVisible and Props.Avatar ~= "" and Props.Avatar ~= nil

			Clip.Size = UDim2.new(1, 0, 0, Height + Gap)
			Clip.Visible = Props.Visible

			CardCorner.CornerRadius = UDim.new(0, Radius)
			BackgroundCorner.CornerRadius = UDim.new(0, Radius)
			TintCorner.CornerRadius = UDim.new(0, Radius)
			FadeCorner.CornerRadius = UDim.new(0, Radius)
			CardStroke.Transparency = Props.BorderTransparency

			local Source = ResolveImage(Props.Thumbnail)
			if type(Props.Thumbnail) == "table" then
				Creator.SetImage(Background, Props.Thumbnail)
				Source = Background.Image
			else
				Background.Image = Source
			end
			Background.Visible = Source ~= ""
			Background.ImageTransparency = Props.ThumbnailTransparency
			Background.ScaleType = ScaleTypes[Props.ThumbnailScaleType]

			Tint.BackgroundColor3 = Props.Tint
			Tint.BackgroundTransparency = Props.TintTransparency
			Fade.BackgroundColor3 = Props.Tint
			Fade.Visible = Props.ThumbnailShadow ~= false
			if Props.ThumbnailShadow then
				FadeGradient.Transparency = Props.ThumbnailShadow
			end

			local AvatarRadius = math.floor(AvatarSize * 0.14)
			if Props.AvatarShape == "Circle" then
				AvatarRadius = AvatarSize / 2
			elseif Props.AvatarShape == "Square" then
				AvatarRadius = 0
			end
			Avatar.Visible = AvatarVisible
			Avatar.Size = UDim2.fromOffset(AvatarSize, AvatarSize)
			Avatar.Position = UDim2.fromOffset(Padding, Padding)
			AvatarCorner.CornerRadius = UDim.new(0, AvatarRadius)
			AvatarImageCorner.CornerRadius = UDim.new(0, AvatarRadius)

			local AvatarSource = ResolveImage(Props.Avatar)
			if type(Props.Avatar) == "table" then
				Creator.SetImage(AvatarImage, Props.Avatar)
				AvatarSource = AvatarImage.Image
			else
				AvatarImage.Image = AvatarSource
			end
			AvatarImage.Visible = AvatarSource ~= ""

			local HeaderHeight = AvatarVisible and AvatarSize or (Props.TitleSize + Props.SubtitleSize + 8)
			local TextX = Padding + (AvatarVisible and (AvatarSize + 18) or 0)
			TextBlock.Position = UDim2.fromOffset(TextX, Padding + HeaderHeight / 2)
			TextBlock.Size = UDim2.new(1, -(TextX + Padding), 0, 0)

			TitleLabel.Text = Props.Title
			TitleLabel.TextSize = Props.TitleSize
			TitleLabel.FontFace = Fonts[Props.TitleWeight]
			TitleLabel.Size = UDim2.new(1, 0, 0, Props.TitleSize + 4)
			TitleLabel.Visible = Props.Title ~= ""

			SubtitleLabel.Text = Props.Subtitle
			SubtitleLabel.TextSize = Props.SubtitleSize
			SubtitleLabel.Size = UDim2.new(1, 0, 0, Props.SubtitleSize + 4)
			SubtitleLabel.Visible = Props.Subtitle ~= ""

			local HasFooter = Props.FooterLeft ~= "" or Props.FooterRight ~= ""
			local FooterTop = Height - Padding - FooterHeight
			local DescriptionTop = Padding + HeaderHeight + 14
			local DescriptionBottom = HasFooter and (FooterTop - 8) or (Height - Padding)

			DescriptionLabel.Text = Props.Description
			DescriptionLabel.TextSize = Props.DescriptionSize
			DescriptionLabel.Position = UDim2.fromOffset(Padding, DescriptionTop)
			DescriptionLabel.Size = UDim2.new(1, -(Padding * 2), 0, math.max(0, DescriptionBottom - DescriptionTop))
			DescriptionLabel.Visible = Props.Description ~= ""

			FooterFrame.Visible = HasFooter
			FooterFrame.Position = UDim2.new(0, Padding, 1, -Padding)
			FooterFrame.Size = UDim2.new(1, -(Padding * 2), 0, FooterHeight)
			FooterLeft.Text = Props.FooterLeft
			FooterLeft.TextSize = Props.FooterSize
			FooterRight.Text = Props.FooterRight
			FooterRight.TextSize = Props.FooterSize

			ApplyColor(TitleLabel, "TextColor3", Props.TitleColor, "Text")
			ApplyColor(SubtitleLabel, "TextColor3", Props.SubtitleColor, "SubText")
			ApplyColor(DescriptionLabel, "TextColor3", Props.DescriptionColor, "SubText")
			ApplyColor(FooterLeft, "TextColor3", Props.FooterColor, "SubText")
			ApplyColor(FooterRight, "TextColor3", Props.FooterColor, "SubText")

			Creator.Marquee(TitleLabel, Props.Marquee)
			Creator.Marquee(SubtitleLabel, Props.Marquee)
			Creator.Marquee(FooterLeft, Props.Marquee)
			Creator.Marquee(FooterRight, Props.Marquee)

			Hit.Visible = Props.Clickable
		end

		local function Commit(Pairs)
			local Changed = {}
			for _, Pair in next, Pairs do
				local Name = Pair[1]
				local Spec = Specs[Name]
				if Spec then
					local Value = Coerce(Name, Spec, Pair[2])
					if Banner.Properties[Name] ~= Value then
						Banner.Properties[Name] = Value
						table.insert(Changed, { Name, Value })
					end
				else
					Library:Alert("Banner - Unknown property '" .. tostring(Name) .. "'", "Error")
				end
			end

			if #Changed == 0 then
				return
			end

			Render()

			for _, Pair in next, Changed do
				for _, Listener in next, Banner.Listeners do
					Library:SafeCallback(Listener, Pair[1], Pair[2])
				end
			end
		end

		function Banner:SetProperty(Name, Value)
			Commit({ { Name, Value } })
			return self
		end

		function Banner:SetProperties(Values)
			if type(Values) ~= "table" then
				Library:Alert("Banner - SetProperties expects a table", "Error")
				return self
			end
			local Pairs = {}
			for Key in next, Values do
				local Name = Aliases[Key] or Key
				if not Specs[Name] then
					Library:Alert("Banner - Unknown property '" .. tostring(Key) .. "'", "Error")
				end
			end
			for _, Name in ipairs(Order) do
				local Value = Values[Name]
				if Value == nil then
					for Alias, Target in next, Aliases do
						if Target == Name and Values[Alias] ~= nil then
							Value = Values[Alias]
						end
					end
				end
				if Value ~= nil then
					table.insert(Pairs, { Name, Value })
				end
			end
			Commit(Pairs)
			return self
		end

		function Banner:GetProperty(Name)
			if not Specs[Name] then
				Library:Alert("Banner - Unknown property '" .. tostring(Name) .. "'", "Error")
				return nil
			end
			return self.Properties[Name]
		end

		function Banner:GetProperties()
			return table.clone(self.Properties)
		end

		function Banner:GetPropertyList()
			return table.clone(Order)
		end

		function Banner:ResetProperty(Name)
			Commit({ { Name, nil } })
			return self
		end

		function Banner:Reset()
			local Pairs = {}
			for _, Name in ipairs(Order) do
				table.insert(Pairs, { Name, nil })
			end
			Commit(Pairs)
			return self
		end

		function Banner:SetFooter(Left, Right)
			Commit({ { "FooterLeft", Left }, { "FooterRight", Right } })
			return self
		end

		function Banner:OnChanged(Callback)
			table.insert(self.Listeners, Callback)
			return {
				Disconnect = function()
					local Index = table.find(self.Listeners, Callback)
					if Index then
						table.remove(self.Listeners, Index)
					end
				end,
			}
		end

		function Banner:Mount(Object)
			if typeof(Object) ~= "Instance" then
				Library:Alert("Banner - Mount expects an Instance", "Error")
				return nil
			end
			Object.Parent = Canvas
			return Object
		end

		function Banner:GetVisible()
			return Clip.Visible
		end

		function Banner:Destroy()
			Components.Rows[Clip] = nil
			Clip:Destroy()
			if Idx then
				Library.Options[Idx] = nil
			end
			Holder:QueueRefresh()
		end

		local Initial = {}
		for _, Name in ipairs(Order) do
			Banner.Properties[Name] = Specs[Name].Default
		end
		for Key, Value in next, Config do
			local Name = Aliases[Key] or Key
			if Specs[Name] and Value ~= nil then
				table.insert(Initial, { Name, Value })
			end
		end
		for _, Pair in next, Initial do
			Banner.Properties[Pair[1]] = Coerce(Pair[1], Specs[Pair[1]], Pair[2])
		end
		Render()

		Components.Rows[Clip] = Banner

		Creator.AddSignal(Clip:GetPropertyChangedSignal("Visible"), function()
			Holder:QueueRefresh()
		end)

		Creator.AddGuarded(Hit, "MouseButton1Click", function()
			Library:SafeCallback(Banner.Callback, Banner)
		end)

		if Idx then
			Library.Options[Idx] = Banner
		end

		Holder:QueueRefresh()

		return Banner
	end

	for _, Name in ipairs(Order) do
		Element["Set" .. Name] = function(self, Value)
			return self:SetProperty(Name, Value)
		end
		Element["Get" .. Name] = function(self)
			return self.Properties[Name]
		end
	end

	return Element
end)()

Elements = {}

Library.Aliases = {}

local AliasPrefixes = { "Create", "New", "Make", "Add" }

local function ResolveAlias(Self, Key)
	if type(Key) ~= "string" then
		return nil
	end

	local Mapped = Library.Aliases[Key]
	if Mapped then
		return rawget(Self, Mapped) or rawget(Elements, Mapped)
	end

	local Name = Key
	for _, Prefix in AliasPrefixes do
		if #Key > #Prefix and string.sub(Key, 1, #Prefix) == Prefix then
			Name = string.sub(Key, #Prefix + 1)
			break
		end
	end

	local Method = "Add" .. Name
	return rawget(Self, Method) or rawget(Elements, Method)
end

Elements.__index = function(Self, Key)
	local Value = rawget(Elements, Key)
	if Value ~= nil then
		return Value
	end
	return ResolveAlias(Self, Key)
end

local function MountElement(ElementComponent)
	Elements["Add" .. ElementComponent.__type] = function(self, Idx, Config)
		if ElementComponent.NoIdx and (type(Idx) == "table" or type(Idx) == "number") then
			Config = Idx
			Idx = nil
		end

		ElementComponent.Container = self.Container
		ElementComponent.Holder = self.Holder or self:GetHolder()
		ElementComponent.Tab = self.Type == "Section" and self.Tab or self
		ElementComponent.Type = self.Type
		ElementComponent.ScrollFrame = self.ScrollFrame
		ElementComponent.Library = Library

		local Object
		if ElementComponent.NoIdx then
			Object = ElementComponent:New(Config)
		else
			Object = ElementComponent:New(Idx, Config)
		end

		Library.Events.ElementAdded:Fire(Object, ElementComponent.__type, self)
		return Object
	end
end

for _, ElementComponent in pairs(ElementsTable) do
	MountElement(ElementComponent)
end

Elements.AddGap = Elements.AddSpace

Library.Elements = Elements
Library.Custom = {}

Library.Services = {
	Icon = IconService,
}
Library.ServiceOrder = { "Icon" }
Library.ProtectedServices = { Icon = true }

function Library:RegisterService(Name: string, Service: any, Replace: boolean?)
	assert(type(Name) == "string" and Name ~= "", "RegisterService - Expected a service name")
	assert(type(Service) == "table", "RegisterService - Service must be a table")

	local Existing = Library.Services[Name]
	if Existing == Service then
		return Service
	end

	if Existing then
		assert(Replace and not Library.ProtectedServices[Name], `RegisterService - "{Name}" is already registered`)
		Library:UnregisterService(Name)
	end

	Library.Services[Name] = Service
	table.insert(Library.ServiceOrder, Name)
	Library:Emit("ServiceRegistered", Name, Service)

	return Service
end

function Library:GetService(Name: string)
	return Library.Services[Name]
end

function Library:GetServices(): { string }
	return table.clone(Library.ServiceOrder)
end

function Library:UnregisterService(Name: string): boolean
	local Service = Library.Services[Name]
	if not Service or Library.ProtectedServices[Name] then
		return false
	end

	Library.Services[Name] = nil

	local Index = table.find(Library.ServiceOrder, Name)
	if Index then
		table.remove(Library.ServiceOrder, Index)
	end

	if type(Service.Destroy) == "function" then
		local Success, Problem = pcall(Service.Destroy, Service)
		if not Success then
			Library:Alert(`Service "{Name}" failed to destroy: {tostring(Problem)}`)
		end
	end

	Library:Emit("ServiceUnregistered", Name)
	return true
end

function Library:GetHelper(Name: string)
	assert(Library.Helper, "GetHelper - Helper is not attached, load Helper.lua and call SetLibrary first")
	return Library.Helper:GetHelper(Name)
end

Library.Internals = {
	Creator = Creator,
	Components = Components,
	New = New,
	Corner = Corner,
	Stroke = Stroke,
	Label = Label,
	Asset = Asset,
	MakeRow = MakeRow,
	Bind = Bind,
	Place = Place,
	Resolve = Resolve,
	Signal = Signal,
	Flipper = Flipper,
	Themes = Themes,
	Fonts = Fonts,
	Icons = IconService,
	Services = Library.Services,
	Tabs = Components.Tab,
	Notification = NotificationModule,
	GUI = GUI,
}

function Library:GetTabs()
	local List = {}

	for Index = 1, Components.Tab.TabCount do
		local Tab = Components.Tab.Tabs[Index]
		if Tab then
			table.insert(List, Tab)
		end
	end

	return List
end

function Library:GetTab(Key)
	for _, Tab in Library:GetTabs() do
		if Tab == Key or Tab.Id == Key or Tab.Name == Key then
			return Tab
		end
	end

	return nil
end

function Library:AddAlias(Alias, Target)
	assert(type(Target) == "string" and Target ~= "", "AddAlias - Expected a target name")

	local Method = if string.sub(Target, 1, 3) == "Add" then Target else "Add" .. Target
	local Names = if type(Alias) == "table" then Alias else { Alias }

	for _, Name in Names do
		assert(type(Name) == "string" and Name ~= "", "AddAlias - Expected an alias name")
		Library.Aliases[Name] = Method
	end

	return Library
end

function Library:RemoveAlias(Alias)
	if Library.Aliases[Alias] == nil then
		return false
	end

	Library.Aliases[Alias] = nil
	return true
end

function Library:GetAliases()
	return table.clone(Library.Aliases)
end

function Library:RegisterElement(ElementComponent, Override)
	assert(type(ElementComponent) == "table", "RegisterElement - Expected a component table")
	assert(type(ElementComponent.__type) == "string", "RegisterElement - Missing __type")
	assert(type(ElementComponent.New) == "function", "RegisterElement - Missing New")

	local Name = ElementComponent.__type
	local Method = "Add" .. Name

	if rawget(Elements, Method) ~= nil then
		assert(Override == true, "RegisterElement - " .. Method .. " already exists")
		assert(not ElementsTable[Name], "RegisterElement - Built in elements cannot be replaced")
	end

	Library.Custom[Name] = ElementComponent
	MountElement(ElementComponent)

	return Method
end

function Library:UnregisterElement(Name)
	if not Library.Custom[Name] then
		return false
	end

	Library.Custom[Name] = nil
	Elements["Add" .. Name] = nil

	return true
end

export type IntroOptions = {
	Title: string,
	Source: any,
	Icon: any,
	Tint: boolean?,
	Corner: number?,
	Size: UDim2?,
}

local IntroModule = {
	Active = false,
	Shown = false,
	Built = false,
	Window = nil,
	Gui = nil,
	Connection = nil,
	Holds = {},
	Queue = {},
}

local IntroSettings = {
	EnterTime = 0.35,
	FillTime = 0.22,
	HoldTime = 0.08,
	ExitTime = 0.35,
	StableFrames = 3,
	StableDelta = 0.05,
	MaxStep = 1 / 30,
	Ceiling = 0.92,
	StartScale = 0.94,
	ShownTimeout = 3,
}

local function EaseOut(Alpha: number): number
	return 1 - (1 - Alpha) ^ 3
end

local function Advance(Time: number, Duration: number): number
	return if Duration <= 0 then 1 else math.min(Time / Duration, 1)
end

function IntroModule.Cleanup()
	local Connection = IntroModule.Connection
	if Connection then
		Connection:Disconnect()
		IntroModule.Connection = nil
	end

	local Gui = IntroModule.Gui
	if Gui then
		IntroModule.Gui = nil
		Gui:Destroy()
	end

	IntroModule.Active = false
	IntroModule.Shown = false
	IntroModule.Built = false
	IntroModule.Window = nil
	Library.IntroActive = false
	table.clear(IntroModule.Holds)
end

function IntroModule.Reveal()
	local Target = IntroModule.Window
	if Target and Target.Root and Target.Root.Parent then
		Target.Root.Visible = not Target.Minimized
	end
end

function IntroModule.Flush()
	local Pending = table.clone(IntroModule.Queue)
	table.clear(IntroModule.Queue)

	for _, Options in Pending do
		NotificationModule:New(Options)
	end
end

function IntroModule.WaitShown()
	if not coroutine.isyieldable() then
		return
	end

	local Deadline = os.clock() + IntroSettings.ShownTimeout
	while IntroModule.Active and not IntroModule.Shown and os.clock() < Deadline do
		Heartbeat:Wait()
	end
end

function IntroModule.Start(Options: IntroOptions)
	if IntroModule.Active then
		return
	end

	local Tint = Options.Tint
	if Tint == nil then
		Tint = type(Options.Source) == "string" and Library:GetIconData(Options.Source, nil, nil, "TitleBar") ~= nil
	end

	local View = GUI.AbsoluteSize
	if View.X <= 0 or View.Y <= 0 then
		local CurrentCamera = Workspace.CurrentCamera
		View = if CurrentCamera then CurrentCamera.ViewportSize else Vector2.new(1920, 1080)
	end

	local Requested = Options.Size or UDim2.fromOffset(760, 540)
	local Width = math.min(Requested.X.Offset, View.X)
	local Height = math.min(Requested.Y.Offset, View.Y)

	local Gui = New("ScreenGui", {
		DisplayOrder = 1000,
		IgnoreGuiInset = true,
		ResetOnSpawn = false,
		Parent = GUI.Parent,
	})
	ProtectGui(Gui)

	local Fill = New("Frame", {
		Size = UDim2.fromScale(0, 1),
		BorderSizePixel = 0,
		ThemeTag = {
			BackgroundColor3 = "Accent",
		},
	}, {
		Corner(2),
	})

	local Track = New("Frame", {
		Size = UDim2.fromOffset(168, 3),
		BackgroundTransparency = 0.86,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		LayoutOrder = 3,
		ThemeTag = {
			BackgroundColor3 = "SliderRail",
		},
	}, {
		Corner(2),
		Fill,
	})

	local Children = {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 14),
		}),
		Label({
			Text = Options.Title,
			RichText = true,
			TextSize = 22,
			Weight = "SemiBold",
			Size = UDim2.new(1, -48, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			LayoutOrder = 2,
		}),
		Track,
	}

	if Options.Icon then
		local Logo = New("ImageLabel", {
			Size = UDim2.fromOffset(56, 56),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			Corner(Options.Corner or 0),
		})
		Creator.SetImage(Logo, Options.Icon)

		if Tint then
			Creator.OverrideTag(Logo, { ImageColor3 = "Text" })
		else
			Logo.ImageColor3 = Color3.new(1, 1, 1)
		end

		table.insert(Children, Logo)
	end

	local Content = New("CanvasGroup", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		GroupTransparency = 1,
	}, Children)

	local Stroke = New("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Transparency = 1,
		ThemeTag = {
			Color = "AcrylicBorder",
		},
	})

	local Scale = New("UIScale", {
		Scale = IntroSettings.StartScale,
	})

	local Panel = New("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(Width, Height),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = Gui,
		ThemeTag = {
			BackgroundColor3 = "AcrylicMain",
		},
	}, {
		Corner(13),
		Stroke,
		Scale,
		Content,
	})

	IntroModule.Gui = Gui
	IntroModule.Active = true
	IntroModule.Shown = false
	IntroModule.Built = false
	Library.IntroActive = true

	local Phase = "Enter"
	local Clock = 0
	local Waited = 0
	local Stable = 0
	local Progress = 0
	local FillStart = 0

	IntroModule.Connection = Heartbeat:Connect(function(Delta: number)
		if Library.Unloaded then
			IntroModule.Cleanup()
			return
		end

		local Config = Library.Config
		local Factor = if Config.ReducedMotion then 0 else 1 / Config.AnimationSpeed
		local Step = math.min(Delta, IntroSettings.MaxStep)
		local Border = 0
		Waited += Delta

		if Phase == "Enter" then
			Clock += Step
			local Alpha = EaseOut(Advance(Clock, IntroSettings.EnterTime * Factor))
			Panel.BackgroundTransparency = 1 - Alpha
			Stroke.Transparency = 1 - Alpha * (1 - Border)
			Content.GroupTransparency = 1 - Alpha
			Scale.Scale = IntroSettings.StartScale + (1 - IntroSettings.StartScale) * Alpha

			if Alpha >= 1 then
				Phase = "Load"
				Clock = 0
				Waited = 0
				IntroModule.Shown = true
			end
		elseif Phase == "Load" then
			Clock += Step
			Stable = if Delta <= IntroSettings.StableDelta then Stable + 1 else 0
			Progress += (IntroSettings.Ceiling - Progress) * math.min(Step * 2.2, 1)
			Fill.Size = UDim2.fromScale(Progress, 1)

			local Ready = IntroModule.Built
				and next(IntroModule.Holds) == nil
				and Stable >= IntroSettings.StableFrames

			if Ready or Waited >= Config.IntroTimeout then
				Phase = "Fill"
				Clock = 0
				FillStart = Progress
			end
		elseif Phase == "Fill" then
			Clock += Step
			local Alpha = EaseOut(Advance(Clock, IntroSettings.FillTime * Factor))
			Progress = FillStart + (1 - FillStart) * Alpha
			Fill.Size = UDim2.fromScale(Progress, 1)

			if Alpha >= 1 then
				Phase = "Hold"
				Clock = 0
			end
		elseif Phase == "Hold" then
			Clock += Step

			if Clock >= IntroSettings.HoldTime * Factor then
				Phase = "Exit"
				Clock = 0
				IntroModule.Reveal()
			end
		else
			Clock += Step
			local Alpha = EaseOut(Advance(Clock, IntroSettings.ExitTime * Factor))
			Panel.BackgroundTransparency = Alpha
			Stroke.Transparency = Border + (1 - Border) * Alpha
			Content.GroupTransparency = Alpha
			Scale.Scale = 1 + (1 - IntroSettings.StartScale) * Alpha

			if Alpha >= 1 then
				IntroModule.Cleanup()
				Library.Events.IntroFinished:Fire()
				IntroModule.Flush()
			end
		end
	end)
end

function Library:HoldIntro(Reason: string?): () -> ()
	if not IntroModule.Active then
		return function() end
	end

	local Token = {}
	IntroModule.Holds[Token] = Reason or "Hold"

	return function()
		IntroModule.Holds[Token] = nil
	end
end

function Library:CreateWindow(Config)
	assert(Config.Title, "Window - Missing Title")

	if Library.Window then
		return Library.Window
	end

	Library.MinimizeKey = Config.MinimizeKey or Enum.KeyCode.LeftControl
	local ThemeName = Themes.Aliases[Config.Theme] or Config.Theme
	Library.Theme = Themes[ThemeName] and ThemeName or "Light"
	Library.ColorfulIcons = Config.ColorfulIcons or false
	Library.LockIdentity = Config.LockIdentity == true
	Library.IconStyle = Config.IconStyle == "Tile" and "Tile" or "Plain"
	Library.PanelDepth = math.clamp(tonumber(Config.PanelDepth) or 1, 0, 2)
	Library.IconHue = math.clamp(tonumber(Config.IconHue) or 0, 0, 360)
	Library.Layout = string.lower(tostring(Config.Layout or "Fluent")) == "macos" and "MacOS" or "Fluent"
	Library.NavPosition = Config.NavPosition or "Top"
	Library.UseAcrylic = Config.Acrylic == true
	Library.Acrylic = Library.UseAcrylic
	Library.BlurEnabled = Config.UiBlur ~= false
	Library.AcrylicPanelAlpha = if Config.AcrylicPanelTransparency ~= nil
		then math.clamp(tonumber(Config.AcrylicPanelTransparency) or 0, 0, 0.9)
		else nil
	if Library.UseAcrylic then
		Acrylic.Enable()
	end
	Library.NotificationPosition = NotificationModule:SetPosition(Config.NotificationPosition or Library.NotificationPosition)

	Library.DefaultTitleIcon = Config.Logo or Config.TitleIcon

	local LogoSource = Config.Logo or Config.TitleIcon
	if Library.Config.Intro and not Library.Unloaded then
		IntroModule.Start({
			Title = Config.Title,
			Source = LogoSource,
			Icon = Resolve(LogoSource, "TitleBar"),
			Tint = Config.LogoTint,
			Corner = Config.LogoCorner,
			Size = Config.Size,
		})
		IntroModule.WaitShown()
	end

	Library.WindowDefaults = {
		Theme = Library.Theme,
		ColorfulIcons = Library.ColorfulIcons,
		IconHue = Library.IconHue,
		IconStyle = Library.IconStyle,
		PanelDepth = Library.PanelDepth,
		HoverStyle = Library.HoverStyle,
		Layout = Library.Layout,
		NavPosition = Library.NavPosition,
		NavLabelMode = Config.NavLabelMode,
		NotificationPosition = Library.NotificationPosition,
		Acrylic = Library.Acrylic,
	}

	local Window = Components.Window({
		Parent = GUI,
		Size = Config.Size or UDim2.fromOffset(760, 540),
		Title = Config.Title,
		SubTitle = Config.SubTitle,
		Logo = Config.Logo or Config.TitleIcon,
		LogoTint = Config.LogoTint,
		LogoSize = Config.LogoSize,
		LogoCorner = Config.LogoCorner,
		Layout = Library.Layout,
		NavPosition = Library.NavPosition,
		NavLabelMode = Config.NavLabelMode,
		TabWidth = Config.TabWidth,
		SidebarTitle = Config.SidebarTitle,
		ShowTabLabels = Config.ShowTabLabels,
		Search = Config.Search,
		SearchPlaceholder = Config.SearchPlaceholder,
	})

	if IntroModule.Active then
		Window.Root.Visible = false
		IntroModule.Window = Window
	end

	Library.Window = Window
	Library:SetTheme(Library.Theme)
	Library.Background:Mount(Window)
	Library.Events.WindowCreated:Fire(Window)
	IntroModule.Built = true

	if Library.LockInside then
		Window:SetLockInside(true, true)
	end

	return Window
end

local function RefreshAfterTheme()
	Creator.RefreshIcons()
	if Library.UseAcrylic and Library.Acrylic then
		Library:SetPanelAlpha(Library.PanelAlpha)
	end
	local Background = Library.Background
	if Background and Background.Layer and (Background.Active == "theme" or Background.HasVideo) then
		Background:Refresh()
	end
end

function Library:SetTheme(Value)
	Value = Themes.Aliases[Value] or Value
	if not (Library.Window and table.find(Library.Themes, Value)) then
		return
	end
	Library.Theme = Value
	Creator.UpdateTheme(RefreshAfterTheme)
end

function Library:AuditTheme(Silent: boolean?)
	local Active = ThemeResolver.Resolve(Library.Theme, Library.ThemeMode) or Themes.Dark
	local Known = {}
	for _, Name in next, Library.Themes do
		local Data = Themes[Name]
		if Data then
			for Key, Value in next, Data do
				if typeof(Value) == "Color3" then
					local Hex = Value:ToHex()
					if Hex ~= "FFFFFF" and Hex ~= "000000" then
						Known[Hex] = Key
					end
				end
			end
		end
	end

	local Mismatched = {}
	for Object, Data in next, Creator.Registry do
		if Object.Parent then
			for Property, Key in next, Data.Properties do
				local Expected = Active[Key]
				local Ok, Current = pcall(function()
					return (Object :: any)[Property]
				end)
				if Ok and typeof(Expected) == "Color3" and typeof(Current) == "Color3" and Current ~= Expected then
					table.insert(Mismatched, `{Object:GetFullName()}.{Property} -> {Key}`)
				end
			end
		end
	end

	local Untagged = {}
	local Root = Library.GUI
	if Root then
		for _, Object in next, Root:GetDescendants() do
			if not Creator.Registry[Object] then
				local Properties = {}
				if Object:IsA("TextLabel") or Object:IsA("TextButton") or Object:IsA("TextBox") then
					table.insert(Properties, "TextColor3")
				end
				if Object:IsA("ImageLabel") or Object:IsA("ImageButton") then
					table.insert(Properties, "ImageColor3")
				end
				if Object:IsA("GuiObject") and Object.BackgroundTransparency < 1 then
					table.insert(Properties, "BackgroundColor3")
				end
				if Object:IsA("UIStroke") then
					table.insert(Properties, "Color")
				end
				for _, Property in next, Properties do
					local Value = (Object :: any)[Property]
					if typeof(Value) == "Color3" then
						local Key = Known[Value:ToHex()]
						if Key then
							table.insert(Untagged, `{Object:GetFullName()}.{Property} ~ {Key}`)
						end
					end
				end
			end
		end
	end

	if not Silent then
		Library:Alert(`AuditTheme: {#Mismatched} registered objects differ from the active theme, {#Untagged} untagged objects use theme colors`)
	end

	return { Mismatched = Mismatched, Untagged = Untagged }
end

function Library:SetColorfulIcons(Value)
	Library.ColorfulIcons = Value and true or false
	Creator.RefreshIcons()
end

function Library:SetIconHue(Value)
	Library.IconHue = math.clamp(tonumber(Value) or 0, 0, 360)
	Creator.RefreshIcons()
end

function Library:SetIconStyle(Value)
	Value = Value == "Plain" and "Plain" or "Tile"
	Library.IconStyle = Value
	for _, Row in next, Components.Rows do
		if Row.ApplyIconStyle and not Row.IconStyleLocked then
			Row:ApplyIconStyle(Value == "Tile")
		end
	end
end

function Library:SetPanelDepth(Value)
	Library.PanelDepth = math.clamp(tonumber(Value) or 1, 0, 2)
	for _, Entry in next, Library.Shadows do
		ApplyDepth(Entry)
	end
end

Library.HoverStyles = { "Full", "Border", "Click", "Accent" }

function Library:SetHoverStyle(Value)
	if Value == "Spotlight" then
		Value = "Accent"
	end
	Library.HoverStyle = table.find(Library.HoverStyles, Value) and Value or "Full"
	for _, Row in next, Components.Rows do
		if Row.ApplyHoverStyle then
			Row:ApplyHoverStyle()
		end
	end
	for _, Reapply in next, Library.ItemHovers do
		Reapply()
	end
end

Library.ColorpickerStyle = "Chromium"
Library.ColorpickerStyles = { "Fluent", "Chromium", "Wheel" }

function Library:SetColorpickerStyle(Value)
	Library.ColorpickerStyle = table.find(Library.ColorpickerStyles, Value) and Value or "Chromium"
end

function Library:SetLockInside(Value: boolean?, Instantly: boolean?)
	Library.LockInside = Value == true

	if Library.Window then
		Library.Window:SetLockInside(Library.LockInside, Instantly)
	end
end

function Library:SetLayout(Value)
	if Library.Window then
		Library.Window:SetLayout(Value)
	else
		Library.Layout = string.lower(tostring(Value)) == "macos" and "MacOS" or "Fluent"
	end
end

function Library:SetNavPosition(Value)
	if Library.Window then
		Library.Window:SetNavPosition(Value)
	else
		Library.NavPosition = Value or "Top"
	end
end

function Library:SetNavLabelMode(Value)
	if Library.Window then
		Library.Window:SetNavLabelMode(Value)
	else
		Library.NavLabelMode = Value or "Hover"
	end
end

function Library:SetNotificationPosition(Value)
	Library.NotificationPosition = NotificationModule:SetPosition(Value)
	return Library.NotificationPosition
end

function Library:GetNotificationPosition()
	return Library.NotificationPosition
end

function Library:SetIdentityLocked(Value)
	Library.LockIdentity = Value == true
	local Section = Library.ScriptHeaderSection
	if Section then
		Section:SetVisible(not Library.LockIdentity)
	end
end

function Library:SetTitleIcon(Icon, Options)
	if Library.Window then
		Library.Window:SetTitleIcon(Icon, Options)
	end
end

function Library:GetAppearanceSchema()
	local function Win()
		return Library.Window
	end
	return {
		{
			Id = "Layout",
			Title = "Window Layout",
			Description = "Fluent layout or macOS-style window controls",
			Type = "Dropdown",
			Values = { "Fluent", "MacOS" },
			Default = "Fluent",
			Icon = "layout-template",
			IconColor = Color3.fromRGB(255, 159, 10),
			Apply = function(Value)
				Library:SetLayout(Value)
			end,
		},
		{
			Id = "NavPosition",
			Title = "Navigator Position",
			Description = "Where the navigator tabs are placed",
			Type = "Dropdown",
			Values = { "Top", "Bottom", "Left", "Right" },
			Default = "Top",
			Icon = "navigation",
			IconColor = Color3.fromRGB(10, 132, 255),
			Apply = function(Value)
				Library:SetNavPosition(Value)
			end,
		},
		{
			Id = "NavLabelMode",
			Title = "Navigator Labels",
			Description = "When navigator tab labels are visible",
			Type = "Dropdown",
			Values = { "Hover", "Always", "Selected" },
			Default = "Hover",
			Icon = "type",
			IconColor = Color3.fromRGB(100, 210, 255),
			Apply = function(Value)
				Library:SetNavLabelMode(Value)
			end,
		},
		{
			Id = "NotificationPosition",
			Title = "Notification Position",
			Description = "Corner where notifications appear",
			Type = "Dropdown",
			Values = { "Top Left", "Top Right", "Bottom Left", "Bottom Right" },
			Default = "Bottom Right",
			Icon = "bell",
			IconColor = Color3.fromRGB(255, 69, 58),
			Apply = function(Value)
				Library:SetNotificationPosition(Value)
			end,
		},
		{
			Id = "ColorfulIcons",
			Title = "Colorful Icons",
			Description = "Give icons vibrant colours",
			Type = "Toggle",
			Default = false,
			Icon = "palette",
			IconColor = Color3.fromRGB(191, 90, 242),
			Apply = function(Value)
				Library:SetColorfulIcons(Value)
			end,
		},
		{
			Id = "IconHue",
			Title = "Icon Color Shift",
			Description = "Shift the colorful icon palette",
			Type = "Slider",
			Variant = "Hue",
			Min = 0,
			Max = 360,
			Default = 0,
			Suffix = "°",
			Icon = "droplet",
			IconColor = Color3.fromRGB(255, 69, 58),
			DependsOn = "ColorfulIcons",
			Apply = function(Value)
				Library:SetIconHue(Value)
			end,
		},
		{
			Id = "IconStyle",
			Title = "Icon Style",
			Description = "Tile background behind row icons",
			Type = "Dropdown",
			Values = { "Tile", "Plain" },
			Default = "Tile",
			Icon = "layers",
			IconColor = Color3.fromRGB(50, 215, 75),
			Apply = function(Value)
				Library:SetIconStyle(Value)
			end,
		},
		{
			Id = "PanelDepth",
			Title = "Panel Depth",
			Description = "Strength of panel shadows and elevation",
			Type = "Slider",
			Variant = "Number",
			Min = 0,
			Max = 2,
			Rounding = 1,
			Default = 1,
			Icon = "layers",
			IconColor = Color3.fromRGB(255, 159, 10),
			Apply = function(Value)
				Library:SetPanelDepth(Value)
			end,
		},
		{
			Id = "HoverStyle",
			Title = "Hover Style",
			Description = "How rows react to the cursor",
			Type = "Dropdown",
			Values = { "Full", "Border", "Click", "Accent" },
			Default = "Full",
			Icon = "mouse-pointer-click",
			IconColor = Color3.fromRGB(100, 210, 255),
			Apply = function(Value)
				Library:SetHoverStyle(Value)
			end,
		},
		{
			Id = "CornerRadius",
			Title = "Window Corner Radius",
			Description = "Roundness of the window corners",
			Type = "Slider",
			Min = 0,
			Max = 24,
			Default = 13,
			Suffix = "px",
			Icon = "monitor",
			IconColor = Color3.fromRGB(10, 132, 255),
			Apply = function(Value)
				if Win() then
					Win():SetCornerRadius(Value)
				end
			end,
		},
		{
			Id = "BorderThickness",
			Title = "Window Border Thickness",
			Description = "Thickness of the window outline",
			Type = "Slider",
			Min = 0,
			Max = 4,
			Rounding = 1,
			Default = 1,
			Suffix = "px",
			Icon = "contrast",
			IconColor = Color3.fromRGB(142, 142, 147),
			Apply = function(Value)
				if Win() then
					Win():SetBorder(Value, Win().BorderColor)
				end
			end,
		},
		{
			Id = "BorderColor",
			Title = "Window Border Color",
			Description = "Colour of the window outline",
			Type = "Colorpicker",
			Default = Color3.fromRGB(60, 60, 66),
			Icon = "brush",
			IconColor = Color3.fromRGB(255, 55, 95),
			Apply = function(Value)
				if Win() then
					Win():SetBorder(Win().BorderThickness or 1, Value)
				end
			end,
		},
		{
			Id = "RainbowBorder",
			Title = "Rainbow Border",
			Description = "Animate the window outline through the colour spectrum",
			Type = "Toggle",
			Default = false,
			Icon = "wand-2",
			IconColor = Color3.fromRGB(255, 214, 10),
			Apply = function(Value)
				if Win() then
					Win():SetRainbowBorder(Value)
				end
			end,
		},
		{
			Id = "WindowOpacity",
			Title = "Window Opacity",
			Description = "Make the whole window transparent",
			Type = "Slider",
			Min = 20,
			Max = 100,
			Default = 100,
			Suffix = "%",
			Icon = "sun",
			IconColor = Color3.fromRGB(100, 210, 255),
			Apply = function(Value)
				if Win() then
					Win():SetOpacity(Value / 100)
				end
			end,
		},
		{
			Id = "TitleTextVisible",
			Title = "Script Title",
			Description = "Show the script name next to the title bar logo",
			Type = "Toggle",
			Default = true,
			Icon = "type",
			IconColor = Color3.fromRGB(48, 209, 88),
			Apply = function(Value)
				if Win() and not Library.LockIdentity then
					Win():SetTitleTextVisible(Value)
				end
			end,
		},
		{
			Id = "SubTitleVisible",
			Title = "Script Subtitle",
			Description = "Show the subtitle next to the script title",
			Type = "Toggle",
			Default = true,
			Icon = "circle-dot",
			IconColor = Color3.fromRGB(94, 92, 230),
			Apply = function(Value)
				if Win() and not Library.LockIdentity then
					Win():SetSubTitleVisible(Value)
				end
			end,
		},
	}
end

function Library:Destroy()
	if Library.Unloaded then
		return
	end
	Library.Unloaded = true
	IntroModule.Cleanup()

	Library.Events.Unloading:Fire()

	for _, Callback in Library.UnloadCallbacks do
		task.spawn(Callback)
	end
	table.clear(Library.UnloadCallbacks)

	for Index = #Library.ServiceOrder, 1, -1 do
		Library:UnregisterService(Library.ServiceOrder[Index])
	end

	for Name in Library.Layers do
		Library:RemoveLayer(Name)
	end

	for _, Event in Library.Events do
		Event:DisconnectAll()
	end

	Library.ThemeChanged:DisconnectAll()
	Acrylic.Destroy()
	Creator.Reset()
	NotificationModule:Destroy()
	ToastModule:Destroy()
	Library.GUI:Destroy()
	if Library.MenuGUI then
		Library.MenuGUI:Destroy()
		Library.MenuGUI = nil
	end
	Library.Window = nil
end

function Library:ToggleAcrylic(Value)
	if not (Library.Window and Library.UseAcrylic) then
		return false
	end
	Value = Value and true or false
	Library.Acrylic = Value
	if Value then
		Acrylic.Enable()
	else
		Acrylic.Disable()
	end
	local Window = Library.Window
	if Window.AcrylicBlur then
		Window.AcrylicBlur.SetVisibility(Window.Root.Visible)
	end
	Window:ApplyPaint()
	Library:SetPanelAlpha(Library.PanelAlpha)
	return true
end

function Library:GetThemeData(Name, Mode)
	Name = Themes.Aliases[Name] or Name
	local Resolved = ThemeResolver.Resolve(Name, ThemeResolver.ModeNames[Mode] or Library.ThemeMode)
	return Resolved or ThemeResolver.Resolve("Dark", Library.ThemeMode)
end

function Library:ToggleTransparency(Value)
	Library.Transparency = Value and true or false
	if Library.Window then
		Library.Window:ApplyPaint()
	end
end

Library.InternalMuted = false

function Library:MuteInternal(State: boolean?)
	Library.InternalMuted = State ~= false
end

function Library:InternalNotify(Config)
	if Library.InternalMuted then
		return nil
	end
	return Library:Notify(Config)
end

function Library:InternalToast(Config: any, Duration: number?): any
	if Library.InternalMuted then
		return nil
	end
	return Library:Toast(Config, Duration)
end

function Library:Notify(Config)
	if IntroModule.Active then
		table.insert(IntroModule.Queue, Config)
		return nil
	end

	return NotificationModule:New(Config)
end

function Library:Toast(Config: any, Duration: number?): any
	if IntroModule.Active then
		return nil
	end
	if type(Config) == "string" then
		Config = { Text = Config, Duration = Duration }
	end
	return ToastModule:New(Config)
end

Library.AlertTimes = {}

function Library:Alert(Message, Kind)
	local Key = tostring(Message)
	local Now = os.clock()
	local Last = Library.AlertTimes[Key]
	if Last and Now - Last < 5 then
		return nil
	end
	Library.AlertTimes[Key] = Now
	local Success, Result = pcall(function()
		return Library:InternalNotify({
			Title = "Interface",
			Content = Kind == "Error" and "Error" or "Warning",
			SubContent = tostring(Message),
			Duration = 5,
			Type = Kind == "Error" and "Error" or "Warning",
		})
	end)
	return Success and Result or nil
end

Library.DeferredMeasure = setmetatable({}, { __mode = "k" })
Library.DeferredMarquee = setmetatable({}, { __mode = "k" })

function Library:IsWindowBusy(): boolean
	local Window = Library.Window
	return Window ~= nil and (Window.IsResizing == true or Window.IsAnimating == true)
end

function Library:FlushDeferred()
	local Rows, Entries = {}, {}
	for Row in Library.DeferredMeasure do
		table.insert(Rows, Row)
	end
	for Entry in Library.DeferredMarquee do
		table.insert(Entries, Entry)
	end
	table.clear(Library.DeferredMeasure)
	table.clear(Library.DeferredMarquee)

	local Window = Library.Window
	if Window and Window.UpdateSelection then
		Window:UpdateSelection(true)
	end

	task.spawn(function()
		local Limit = os.clock() + 0.004
		for _, Row in Rows do
			if Row.Clip and Row.Clip.Parent then
				Row:MeasureIcon()
			end
			if os.clock() > Limit then
				task.wait()
				Limit = os.clock() + 0.004
			end
		end
		for _, Entry in Entries do
			Creator.QueueMarquee(Entry)
			if os.clock() > Limit then
				task.wait()
				Limit = os.clock() + 0.004
			end
		end
	end)
end

function Library:GetPanelAlpha(): number
	local Alpha = Library.PanelAlpha
	if Library.UseAcrylic and Library.Acrylic then
		local Transparency = Library.AcrylicPanelAlpha or Creator.GetThemeProperty("ElementTransparency") or 0
		Alpha *= 1 - math.clamp(Transparency, 0, 0.9)
	end
	return Alpha
end

function Library:SetPanelAlpha(Value)
	Library.PanelAlpha = math.clamp(tonumber(Value) or 1, 0.05, 1)
	local Alpha = Library:GetPanelAlpha()
	for Object in next, Library.PanelBackings do
		if Object.Parent then
			Object.BackgroundTransparency = Alpha >= 0.999 and 0 or 1
		end
	end
	for Object in next, Library.PanelLayers do
		if Object.Parent then
			Object.BackgroundTransparency = 1 - Alpha
		end
	end
	for Object, Base in next, Library.PanelFills do
		if Object.Parent then
			Object.BackgroundTransparency = 1 - (1 - Base) * Alpha
		end
	end
	for _, Entry in next, Library.Shadows do
		ApplyDepth(Entry)
	end
end

Library.FontFamilies = {
	{ Name = "Gotham", Path = "rbxasset://fonts/families/GothamSSm.json" },
	{ Name = "Builder Sans", Path = "rbxasset://fonts/families/BuilderSans.json" },
	{ Name = "Montserrat", Path = "rbxasset://fonts/families/Montserrat.json" },
	{ Name = "Nunito", Path = "rbxasset://fonts/families/Nunito.json" },
	{ Name = "Roboto", Path = "rbxasset://fonts/families/Roboto.json" },
	{ Name = "Source Sans", Path = "rbxasset://fonts/families/SourceSansPro.json" },
	{ Name = "Arimo", Path = "rbxasset://fonts/families/Arimo.json" },
	{ Name = "Ubuntu", Path = "rbxasset://fonts/families/Ubuntu.json" },
}

Library.AppFont = "Gotham"

function Library:GetFontFamily(Name)
	for _, Family in next, Library.FontFamilies do
		if Family.Name == Name then
			return Family
		end
	end
	return nil
end

function Library:AddFontFamily(Name, Path)
	local Existing = Library:GetFontFamily(Name)
	if Existing then
		Existing.Path = Path
		return Existing
	end
	local Family = { Name = Name, Path = Path, Custom = true }
	table.insert(Library.FontFamilies, Family)
	return Family
end

function Library:RemoveFontFamily(Name)
	for Index, Family in next, Library.FontFamilies do
		if Family.Name == Name and Family.Custom then
			table.remove(Library.FontFamilies, Index)
			if Library.AppFont == Name then
				Library:SetAppFont("Gotham")
			end
			return true
		end
	end
	return false
end

local FontWeightMap = {
	Regular = Enum.FontWeight.Regular,
	Medium = Enum.FontWeight.Medium,
	SemiBold = Enum.FontWeight.SemiBold,
	Bold = Enum.FontWeight.Bold,
}
local FontCache = {}

function Library:FontFor(Weight, Name)
	local Family = Library:GetFontFamily(Name or Library.AppFont) or Library.FontFamilies[1]
	local Key = Family.Path .. "|" .. tostring(Weight)
	local Cached = FontCache[Key]
	if not Cached then
		Cached = Font.new(Family.Path, FontWeightMap[Weight] or Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		FontCache[Key] = Cached
	end
	return Cached
end

local function ApplyFontTo(Object)
	if not (Object:IsA("TextLabel") or Object:IsA("TextButton") or Object:IsA("TextBox")) then
		return
	end
	local Face = Object.FontFace
	if Face and Face.Family and string.find(Face.Family, "RobotoMono", 1, true) then
		return
	end
	local Weight = "Regular"
	if Face then
		if Face.Weight == Enum.FontWeight.Bold or Face.Weight == Enum.FontWeight.ExtraBold or Face.Weight == Enum.FontWeight.Heavy then
			Weight = "Bold"
		elseif Face.Weight == Enum.FontWeight.SemiBold then
			Weight = "SemiBold"
		elseif Face.Weight == Enum.FontWeight.Medium then
			Weight = "Medium"
		end
	end
	if Object:GetAttribute("FontLocked") then
		return
	end
	local Target = Library:FontFor(Weight)
	if Object.FontFace ~= Target then
		Object.FontFace = Target
	end
end

function Library:SetAppFont(Name)
	if not Library:GetFontFamily(Name) then
		return false
	end
	Library.AppFont = Name
	Fonts.Regular = Library:FontFor("Regular")
	Fonts.Medium = Library:FontFor("Medium")
	Fonts.SemiBold = Library:FontFor("SemiBold")
	Fonts.Bold = Library:FontFor("Bold")

	for _, Object in next, GUI:GetDescendants() do
		ApplyFontTo(Object)
	end

	if not Library.FontWatcher then
		Library.FontWatcher = Creator.AddSignal(GUI.DescendantAdded, function(Object)
			if Library.AppFont ~= "Gotham" then
				task.defer(ApplyFontTo, Object)
			end
		end)
	end
	return true
end

Library.FontFolder = "FluentSettings/fonts"
Library.FontWeights = { Auto = 0, Thin = 100, ExtraLight = 200, Light = 300, Regular = 400, Medium = 500, SemiBold = 600, Bold = 700, ExtraBold = 800, Heavy = 900 }
Library.FontWeightNames = { "Auto", "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Heavy" }

local function Download(Url)
	local Ok, Result = pcall(function()
		return game:HttpGet(Url)
	end)
	if Ok and type(Result) == "string" and #Result > 0 then
		return Result
	end
	local Request = request or http_request or (syn and syn.request)
	if Request then
		local Ok2, Response = pcall(Request, { Url = Url, Method = "GET" })
		if Ok2 and Response and Response.Body and #Response.Body > 0 then
			return Response.Body
		end
	end
	return nil
end

function Library:LoadFontFile(Source, Name, Weight, Style)
	Source = string.gsub(tostring(Source or ""), "^%s*(.-)%s*$", "%1")
	if Source == "" then
		return false, "Type a font file, URL or asset id first"
	end

	local Lower = string.lower(Source)
	if string.match(Source, "^%d+$") then
		Source = "rbxassetid://" .. Source
		Lower = string.lower(Source)
	end
	if string.find(Lower, "rbxassetid://", 1, true) or string.find(Lower, "rbxasset://", 1, true) then
		Name = Name or ("Font " .. string.sub(string.gsub(Source, "%D", ""), -4))
		return true, Library:AddFontFamily(Name, Source)
	end

	local GetAsset = getcustomasset or getsynasset
	if not (writefile and isfile and isfolder and makefolder and GetAsset) then
		return false, "Executor has no file/asset functions"
	end

	local Path = Source
	if string.match(Lower, "^https?://") then
		local Body = Download(Source)
		if not Body then
			return false, "Download failed"
		end
		if not isfolder("FluentSettings") then
			makefolder("FluentSettings")
		end
		if not isfolder(Library.FontFolder) then
			makefolder(Library.FontFolder)
		end
		local File = string.match(string.gsub(Source, "[%?#].*$", ""), "([^/]+)$") or "font.ttf"
		if not string.match(File, "%.%w+$") then
			File ..= ".ttf"
		end
		Path = Library.FontFolder .. "/" .. string.gsub(File, "[^%w%._%-]", "_")
		writefile(Path, Body)
	elseif not isfile(Path) then
		return false, "File not found in workspace"
	end

	Name = Name or (string.match(Path, "([^/\\]+)%.%w+$") or "Custom Font")
	local Ext = string.match(string.lower(Path), "%.(%w+)$")

	local Ok, Result = pcall(function()
		if Ext == "json" then
			return GetAsset(Path)
		end

		local Asset = GetAsset(Path)
		local Faces
		local Value = Library.FontWeights[Weight or "Auto"]
		if Value and Value > 0 then
			Faces = { { name = Weight, weight = Value, style = string.lower(Style or "Normal"), assetId = Asset } }
		else
			Faces = {
				{ name = "Regular", weight = 400, style = "normal", assetId = Asset },
				{ name = "Medium", weight = 500, style = "normal", assetId = Asset },
				{ name = "SemiBold", weight = 600, style = "normal", assetId = Asset },
				{ name = "Bold", weight = 700, style = "normal", assetId = Asset },
			}
		end

		local JsonPath = Path .. "." .. string.lower(string.gsub(Name, "%W", "")) .. ".family.json"
		writefile(JsonPath, HttpService:JSONEncode({ name = Name, faces = Faces }))
		return GetAsset(JsonPath)
	end)
	if not Ok or not Result then
		return false, "Could not register font"
	end

	local Family = Library:AddFontFamily(Name, Result)
	Family.Source = Source
	return true, Family
end

local AssetService = GetService("AssetService")

-- Animated Background Made by my Tunisian friend
local BackgroundManager = {
	Active = "none",
	Scope = "Whole window",
	PanelOpacity = 1,
	Strength = 1,
	Blur = 0,
	Saturation = 1,
	Fit = "Cover",
	Zoom = 1,
	OffsetX = 0,
	OffsetY = 0,
	DefaultImage = nil,
	DefaultTitle = nil,
	Items = {},
	MaxItems = 10,
	Folder = "FluentSettings/backgrounds",
	AnimToken = 0,
	Hooks = {},
}
Library.Background = BackgroundManager

local Base64Alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local Base64Lookup = table.create(128, 0)

for Index = 1, #Base64Alphabet do
	Base64Lookup[string.byte(Base64Alphabet, Index)] = Index - 1
end

local function DecodeBase64(Text)
	local Bytes = buffer.create(math.floor(#Text / 4) * 3)
	local Size = 0
	for Index = 1, #Text - 3, 4 do
		local A, B, C, D = string.byte(Text, Index, Index + 3)
		local Value = (Base64Lookup[A] or 0) * 262144 + (Base64Lookup[B] or 0) * 4096 + (Base64Lookup[C] or 0) * 64 + (Base64Lookup[D] or 0)
		buffer.writeu8(Bytes, Size, math.floor(Value / 65536))
		buffer.writeu8(Bytes, Size + 1, math.floor(Value / 256) % 256)
		buffer.writeu8(Bytes, Size + 2, Value % 256)
		Size += 3
	end
	return Bytes, Size
end

local function DecodePaletteFrame(Text, Pixels, Palette, Previous)
	local Bytes, Size = DecodeBase64(Text)
	if Size == 0 then
		return nil
	end
	local Flag = buffer.readu8(Bytes, 0)
	local Output = buffer.create(Pixels * 4)
	if Flag == 1 then
		for Pixel = 0, Pixels - 1 do
			if Pixel + 1 >= Size then
				break
			end
			buffer.writeu32(Output, Pixel * 4, Palette[buffer.readu8(Bytes, Pixel + 1)])
		end
	elseif Flag == 2 and Previous then
		buffer.copy(Output, 0, Previous)
		local Pixel = 0
		local Read = 1
		while Pixel < Pixels and Read < Size do
			local Operation = buffer.readu8(Bytes, Read)
			Read += 1
			if Operation < 128 then
				Pixel += Operation + 1
			else
				for _ = 1, Operation - 127 do
					if Pixel < Pixels and Read < Size then
						buffer.writeu32(Output, Pixel * 4, Palette[buffer.readu8(Bytes, Read)])
					end
					Read += 1
					Pixel += 1
				end
			end
		end
	else
		return nil
	end
	return Output
end

local function DecodeFrame(Text, Pixels)
	local Bytes, Size = DecodeBase64(Text)
	if Size == 0 or buffer.readu8(Bytes, 0) ~= 1 then
		return nil
	end
	local Output = buffer.create(Pixels * 4)
	local Read = 1
	local Pixel = 0
	while Pixel < Pixels and Read + 2 < Size do
		local X = buffer.readu8(Bytes, Read)
		local Y = buffer.readu8(Bytes, Read + 1)
		local Z = buffer.readu8(Bytes, Read + 2)
		Read += 3
		local Offset = Pixel * 4
		buffer.writeu8(Output, Offset, math.floor(X / 16) * 17)
		buffer.writeu8(Output, Offset + 1, (X % 16) * 17)
		buffer.writeu8(Output, Offset + 2, math.floor(Y / 16) * 17)
		buffer.writeu8(Output, Offset + 3, 255)
		Pixel += 1
		if Pixel < Pixels then
			Offset = Pixel * 4
			buffer.writeu8(Output, Offset, (Y % 16) * 17)
			buffer.writeu8(Output, Offset + 1, math.floor(Z / 16) * 17)
			buffer.writeu8(Output, Offset + 2, (Z % 16) * 17)
			buffer.writeu8(Output, Offset + 3, 255)
			Pixel += 1
		end
	end
	return Output
end

function BackgroundManager:AssetOf(Item)
	if Item._asset then
		return Item._asset
	end
	if Item.asset then
		Item._asset = Item.asset
		return Item._asset
	end
	if Item.path then
		local GetAsset = getcustomasset or getsynasset
		if GetAsset and isfile and isfile(Item.path) then
			local Ok, Result = pcall(GetAsset, Item.path)
			if Ok and Result then
				Item._asset = Result
				return Result
			end
		end
	end
	return nil
end

function BackgroundManager:Resolve()
	local Active = self.Active
	if Active == "theme" then
		local Theme = ThemeResolver.Resolve(Library.Theme, Library.ThemeMode)
		return (Theme and Theme.Image) or "", false
	elseif Active == "default" then
		return self.DefaultImage or "", false
	elseif string.sub(Active, 1, 7) == "custom:" then
		local Id = string.sub(Active, 8)
		for _, Item in next, self.Items do
			if Item.id == Id then
				if Item.animated then
					return "", false, Item
				end
				return self:AssetOf(Item) or "", Item.isVideo and true or false
			end
		end
	end
	return "", false
end

function BackgroundManager:Hold(Seconds)
	local Until = os.clock() + (Seconds or 0.3)
	if Until > (self.AnimHoldUntil or 0) then
		self.AnimHoldUntil = Until
	end
end

function BackgroundManager:PinLayer(Size)
	local Layer = self.Layer
	if not Layer or self.Scope == "Content only" then
		return
	end
	self.Pinned = true
	Layer.Position = UDim2.fromOffset(0, 0)
	Layer.Size = UDim2.fromOffset(Size.X + 96, Size.Y + 96)
end

function BackgroundManager:Reapply()
	if self.SourceUrl ~= nil and self.Image.Visible then
		self:ApplyImage(self.SourceUrl, self.SourceOpacity, self.SourceLive)
	end
end

function BackgroundManager:EffectiveBlur()
	local Target = math.max(self.Blur, self.DialogBlur or 10)
	return self.Blur + (Target - self.Blur) * (self.DialogMix or 0)
end

function BackgroundManager:UiCovered()
	local Base, Top = self.UiBase, self.UiTop
	if not self.UiReady or not Base or not Top or self.Suspended then
		return false
	end
	if self.Blur > 0 and Base:IsReady() then
		return true
	end
	if (self.DialogMix or 0) >= 0.999 and Top:IsReady() then
		return true
	end
	return false
end

function BackgroundManager:WatchUi()
	if self.UiWatching then
		return
	end
	self.UiWatching = true
	task.spawn(function()
		local Waited = 0
		while self.UiMode and Waited < 3 and not self:UiCovered() do
			Waited += task.wait()
		end
		self.UiWatching = false
		if self.UiMode and Waited < 3 then
			self:SyncUiBlur()
		end
	end)
end

function BackgroundManager:SyncUiBlur()
	local Holder, Base, Top = self.UiHolder, self.UiBase, self.UiTop
	if not Holder then
		return
	end
	local Strength = math.clamp(self.Strength * (self.SourceOpacity or 1), 0, 1)
	Holder.Visible = self.UiMode == true
	Holder.GroupTransparency = 1 - Strength
	if not self.UiMode or not Base or not Top then
		return
	end
	local Mix = self.DialogMix or 0
	local Active = not self.Suspended
	Base:Set({
		Blur = self.Blur,
		Opacity = if self.Blur > 0 and Active then 1 else 0,
	})
	Top:Set({
		Blur = math.max(self.Blur, self.DialogBlur or 10),
		Opacity = if Active then Mix else 0,
	})
	if Base.Enabled ~= Active then
		Base.Enabled = Active
	end
	if Top.Enabled ~= Active then
		Top.Enabled = Active
	end
	local Covered = self:UiCovered()
	self.Image.ImageTransparency = if Covered then 1 else 1 - Strength
	if not Covered and self.UiReady and Active and (self.Blur > 0 or Mix >= 0.999) then
		self:WatchUi()
	end
end

function BackgroundManager:HideUi()
	self.UiMode = false
	if self.UiHolder then
		self.UiHolder.Visible = false
	end
end

function BackgroundManager:BuildUiBlur()
	self.UiToken = (self.UiToken or 0) + 1
	local Token = self.UiToken
	task.spawn(function()
		local Source
		local Reason
		local Tries = 0
		while self.UiToken == Token do
			task.wait(if Tries == 0 then 0.05 else 0.3)
			if self.UiToken ~= Token then
				return
			end
			Source, Reason = UiBlur.FromImage(self.Image, { MaxSize = 384 })
			if Source or Reason ~= "size" or Tries >= 20 then
				break
			end
			Tries += 1
		end
		if self.UiToken ~= Token then
			if Source then
				Source:Destroy()
			end
			return
		end
		if not Source then
			if Reason == "pixels" then
				self.UiBad = self.UiBad or {}
				self.UiBad[self.UiUrl] = true
				self.UiKey = nil
				self.UiReady = false
				self:Reapply()
			end
			return
		end

		local Size = self.Image.AbsoluteSize
		self.UiAspect = Size.X / math.max(Size.Y, 1)
		local Old = self.UiSource
		self.UiSource = Source
		if not self.UiBase then
			self.UiBase = UiBlur.new()
			self.UiTop = UiBlur.new()
			for _, Element in { self.UiBase, self.UiTop } do
				Element:Set({ Parent = self.UiHolder, Opacity = 0 })
			end
		end
		self.UiBase.Backdrop = Source
		self.UiTop.Backdrop = Source
		if Old then
			task.delay(0.4, function()
				Old:Destroy()
			end)
		end
		self:SyncUiBlur()

		local Waited = 0
		while self.UiToken == Token and Waited < 3 and not (self.UiBase:IsReady() and self.UiTop:IsReady()) do
			Waited += task.wait()
		end
		if self.UiToken == Token then
			self.UiReady = true
			self:SyncUiBlur()
		end
	end)
end

function BackgroundManager:EnsureUiBlur(Url, ScaleType)
	if not self.UiHolder then
		self.UiHolder = New("CanvasGroup", {
			Name = "UiBlurHolder",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ZIndex = 1,
			Visible = false,
			Parent = self.Layer,
		})
	end
	local Key = Url .. "|" .. tostring(ScaleType)
	if self.UiKey == Key then
		return
	end
	if self.UiUrl ~= Url then
		self.UiReady = false
	end
	self.UiKey = Key
	self.UiUrl = Url
	self:BuildUiBlur()
end

function BackgroundManager:CheckUiAspect(Aspect)
	if not self.UiKey or not self.UiAspect or math.abs(Aspect / self.UiAspect - 1) < 0.02 then
		return
	end
	self.UiAspect = Aspect
	self.UiRebuild = (self.UiRebuild or 0) + 1
	local Id = self.UiRebuild
	task.delay(0.25, function()
		if self.UiRebuild == Id and self.UiMode then
			self:BuildUiBlur()
		end
	end)
end

function BackgroundManager:FollowDialog(Active, Duration)
	local Target = if Active then 1 else 0
	self.FollowToken = (self.FollowToken or 0) + 1
	local Token = self.FollowToken
	local Start = self.DialogMix or 0
	if Start == Target then
		return
	end
	if not Duration or Duration <= 0 then
		self.DialogMix = Target
		self:ApplyMix()
		return
	end
	task.spawn(function()
		local Elapsed = 0
		while self.FollowToken == Token do
			Elapsed += PreRender:Wait()
			local Progress = math.min(Elapsed / Duration, 1)
			local Alpha = TweenService:GetValue(Progress, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			self.DialogMix = Start + (Target - Start) * Alpha
			self:ApplyMix()
			if Progress >= 1 then
				break
			end
		end
	end)
end

function BackgroundManager:ApplyMix()
	if not self.Layer or self.SourceUrl == nil or not self.Image.Visible then
		return
	end
	if self.UiMode then
		self:SyncUiBlur()
		return
	end
	local Blurred = self:EffectiveBlur() > 0 and not self.Suspended
	local Stacked = self.Stack ~= nil and self.Stack.Visible
	if Blurred ~= Stacked then
		self:Reapply()
	else
		self:ApplyImageLayout()
	end
end

function BackgroundManager:SyncVideo()
	local Video = self.Video
	if not Video then
		return
	end
	if self.DialogActive then
		if Video.Playing then
			Video.Playing = false
		end
		local Frozen = self.VideoTime
		if Frozen and math.abs(Video.TimePosition - Frozen) > 0.05 then
			Video.TimePosition = Frozen
		end
	else
		Video.Playing = Video.Visible
	end
end

function BackgroundManager:SetDialogActive(Active)
	Active = Active and true or false
	if self.DialogActive == Active then
		return
	end
	self.DialogActive = Active
	if Active and self.Video then
		self.VideoTime = self.Video.TimePosition
	end
	self:SyncVideo()
end

function BackgroundManager:Suspend(Seconds)
	if self:EffectiveBlur() <= 0 then
		return
	end
	self.ResumeAt = os.clock() + Seconds
	if self.Suspended then
		return
	end
	self.Suspended = true
	self:Reapply()
	task.spawn(function()
		while os.clock() < self.ResumeAt do
			task.wait(math.max(self.ResumeAt - os.clock(), 0.03))
		end
		self.Suspended = false
		self:Reapply()
	end)
end

function BackgroundManager:BeginFollow(Value)
	local Layer = self.Layer
	if not Layer or self.Scope ~= "Content only" or self.LayoutKey ~= "C" or not Layer.Visible then
		self.Following = nil
		return
	end
	local Left = Layer.Position.X.Offset
	self.Following = {
		Gap = Left - Value,
		Right = self.Window.Root.AbsoluteSize.X - Left - Layer.Size.X.Offset,
	}
end

function BackgroundManager:Follow(Value)
	local Follow = self.Following
	local Layer = self.Layer
	if not Follow or not Layer then
		return
	end
	local Left = Value + Follow.Gap
	local Width = math.max(self.Window.Root.AbsoluteSize.X - Left - Follow.Right, 0)
	Layer.Position = UDim2.fromOffset(Left, Layer.Position.Y.Offset)
	Layer.Size = UDim2.fromOffset(Width, Layer.Size.Y.Offset)
end

function BackgroundManager:EndFollow()
	if self.Following then
		self.Following = nil
		self.LayoutKey = nil
	end
end

function BackgroundManager:UnpinLayer()
	if not self.Pinned then
		return
	end
	self.Pinned = false
	self.LayoutKey = nil
	self:ApplyLayout()
	self:ApplyImageLayout()
end

function BackgroundManager:StopAnimation()
	self.AnimToken += 1
	self.AnimItem = nil
	if self.AnimConnection then
		self.AnimConnection:Disconnect()
		self.AnimConnection = nil
	end
	if self.AnimEditable then
		pcall(function()
			self.AnimEditable:Destroy()
		end)
		self.AnimEditable = nil
	end
	self.AnimContent = nil
	self.ImageKey = nil
end

function BackgroundManager:LoadFrames(Item)
	local Data = Item.data
	if not Data then
		local Path = Item.path
		if not (Path and readfile and loadstring) then
			return nil
		end
		local Ok, Result = pcall(function()
			return loadstring(readfile(Path))()
		end)
		if not Ok or type(Result) ~= "table" then
			return nil
		end
		Data = Result
	end

	local Frames = Data.Frames
	local Width = Item.width or Data.Width
	local Height = Item.height or Data.Height
	if type(Frames) ~= "table" or #Frames == 0 or not Width or not Height then
		return nil
	end
	return Data, Frames, Width, Height, Item.fps or Data.FPS or 15
end

function BackgroundManager:PlayAnimation(Item)
	if self.AnimItem == Item and (self.AnimConnection or self.AnimLoading) then
		return
	end
	self:StopAnimation()
	self.AnimItem = Item
	local Token = self.AnimToken

	local function Play(Decoded)
		self.AnimLoading = false
		if Token ~= self.AnimToken then
			return
		end
		local Created, Editable = pcall(function()
			return AssetService:CreateEditableImage({ Size = Vector2.new(Decoded.Width, Decoded.Height) })
		end)
		if not Created or not Editable then
			Library:InternalNotify({
				Title = "Background",
				Content = "Animated backgrounds need EditableImage support, which this executor does not expose.",
				Duration = 5,
			})
			return
		end
		if Token ~= self.AnimToken then
			Editable:Destroy()
			return
		end

		self.AnimEditable = Editable
		local Buffers = Decoded.Buffers
		local Size = Vector2.new(Decoded.Width, Decoded.Height)
		Editable:WritePixelsBuffer(Vector2.zero, Size, Buffers[1])
		self.AnimContent = Content.fromObject(Editable)
		self.Layer.Visible = true
		self:ApplyImage("", self.SourceOpacity or 1, self.AnimContent)

		local Index = 1
		local Elapsed = 0
		local Flip = false
		local Count = Decoded.Count
		local Step = 1 / math.max(Decoded.FPS, 1)
		self.AnimConnection = Heartbeat:Connect(function(Delta)
			if self.DialogActive or os.clock() < (self.AnimHoldUntil or 0) then
				return
			end
			local Win = self.Window
			if not self.Layer.Visible or (Win and (Win.Minimized or not Win.Root.Visible)) then
				return
			end
			Elapsed += Delta
			if Elapsed < Step then
				return
			end
			Elapsed = Elapsed % Step
			for _ = 1, Count do
				Index = Index % Count + 1
				if Buffers[Index] then
					Editable:WritePixelsBuffer(Vector2.zero, Size, Buffers[Index])
					break
				end
			end
			Flip = not Flip
			local Tint = Flip and Color3.fromRGB(254, 255, 255) or Color3.fromRGB(255, 255, 255)
			self.Image.ImageColor3 = Tint
			self.Dim.BackgroundColor3 = if Flip then Color3.fromRGB(1, 0, 0) else Color3.fromRGB(0, 0, 0)
		end)
	end

	if Item._decoded then
		Play(Item._decoded)
		return
	end

	self.AnimLoading = true
	task.spawn(function()
		local Data, Frames, Width, Height, FPS = self:LoadFrames(Item)
		if Token ~= self.AnimToken then
			return
		end
		if not Data then
			self.AnimLoading = false
			self.AnimItem = nil
			Library:InternalNotify({
				Title = "Background",
				Content = "Frame file could not be loaded.",
				Duration = 4,
			})
			return
		end

		local Pixels = Width * Height
		local PaletteData = Item.palette or Data.Palette
		local Palette
		if PaletteData then
			Palette = table.create(256, 0)
			for Index = 0, 255 do
				Palette[Index] = (PaletteData[Index * 3 + 1] or 0)
					+ (PaletteData[Index * 3 + 2] or 0) * 256
					+ (PaletteData[Index * 3 + 3] or 0) * 65536
					+ 255 * 16777216
			end
		end

		local Buffers = {}
		local SliceStart = os.clock()
		for Index = 1, #Frames do
			if Token ~= self.AnimToken then
				return
			end
			if Palette then
				Buffers[Index] = DecodePaletteFrame(Frames[Index], Pixels, Palette, Buffers[Index - 1])
			else
				Buffers[Index] = DecodeFrame(Frames[Index], Pixels)
			end
			if os.clock() - SliceStart > 0.003 then
				task.wait()
				SliceStart = os.clock()
			end
		end

		if Token ~= self.AnimToken then
			return
		end
		self.AnimLoading = false
		if not Buffers[1] then
			self.AnimItem = nil
			Library:InternalNotify({
				Title = "Background",
				Content = "Frame data is not in a supported format.",
				Duration = 4,
			})
			return
		end
		Item._decoded = { Buffers = Buffers, Count = #Frames, Width = Width, Height = Height, FPS = FPS }
		Play(Item._decoded)
	end)
end

function BackgroundManager:Mount(Window)
	self.Window = Window

	local Corner = New("UICorner", { CornerRadius = UDim.new(0, Window.CornerRadius or 13) })
	self.Corner = Corner
	Window.BgCorner = Corner

	self.Layer = New("CanvasGroup", {
		Name = "Background",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 0,
		Visible = false,
		Parent = Window.Root,
	}, {
		Corner,
	})

	self.Image = New("ImageLabel", {
		Size = UDim2.fromScale(1, 1),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		ScaleType = Enum.ScaleType.Crop,
		Visible = false,
		ZIndex = 1,
		Parent = self.Layer,
	})

	Creator.AddSignal(self.Layer:GetPropertyChangedSignal("AbsoluteSize"), function()
		if self.Image.Visible and not self.Suspended and os.clock() >= (self.AnimHoldUntil or 0) then
			self:ApplyImageLayout()
		end
	end)

	self.Wash = New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(128, 128, 128),
		BackgroundTransparency = 1,
		ZIndex = 2,
		Parent = self.Layer,
	})

	self.Dim = New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 1,
		ZIndex = 3,
		Parent = self.Layer,
	})

	local Pages = Window.Pages
	Creator.AddSignal(Pages:GetPropertyChangedSignal("Position"), function()
		if self.Scope == "Content only" and not Window.SidebarMoving then
			self:ApplyLayout()
		end
	end)
	Creator.AddSignal(Pages:GetPropertyChangedSignal("AbsoluteSize"), function()
		if self.Scope == "Content only" and not Window.SidebarMoving then
			self:ApplyLayout()
		end
	end)

	self:Refresh()
end

function BackgroundManager:SetCorners(TopLeft, TopRight, BottomLeft, BottomRight)
	local Key = TopLeft .. "," .. TopRight .. "," .. BottomLeft .. "," .. BottomRight
	if self.CornerKey == Key then
		return
	end
	self.CornerKey = Key
	local Corner = self.Corner
	Corner.TopLeftRadius = UDim.new(0, TopLeft)
	Corner.TopRightRadius = UDim.new(0, TopRight)
	Corner.BottomLeftRadius = UDim.new(0, BottomLeft)
	Corner.BottomRightRadius = UDim.new(0, BottomRight)
	self:SyncShadeCorner()
end

function BackgroundManager:SyncShadeCorner()
	local Window = self.Window
	local ShadeCorner = Window and Window.ShadeCorner
	local Corner = self.Corner
	if not ShadeCorner or not Corner then
		return
	end
	local Active = self.Scope == "Content only" and self.Layer ~= nil and self.Layer.Visible
	local Zero = UDim.new(0, 0)
	ShadeCorner.TopLeftRadius = Active and Corner.TopLeftRadius or Zero
	ShadeCorner.TopRightRadius = Active and Corner.TopRightRadius or Zero
	ShadeCorner.BottomLeftRadius = Active and Corner.BottomLeftRadius or Zero
	ShadeCorner.BottomRightRadius = Active and Corner.BottomRightRadius or Zero
end

function BackgroundManager:SetRadius(Value)
	self:SetCorners(Value, Value, Value, Value)
end

function BackgroundManager:ApplyContentCorners(Offset, Extent)
	local Window = self.Window
	local RootSize = Window.Root.AbsoluteSize
	local Radius = Window.CornerRadius or 13
	local Left = Offset.X <= 1
	local Right = Offset.X + Extent.X >= RootSize.X - 1
	local Top = Offset.Y <= 1
	local Bottom = Offset.Y + Extent.Y >= RootSize.Y - 6
	local function Pick(First, Second)
		if First and Second then
			return Radius
		elseif First or Second then
			return 0
		end
		return 8
	end
	self:SetCorners(Pick(Left, Top), Pick(Right, Top), Pick(Left, Bottom), Pick(Right, Bottom))
end

function BackgroundManager:ApplyLayout()
	local Layer = self.Layer
	if not Layer then
		return
	end
	if self.Scope == "Content only" then
		local Pages = self.Window.Pages
		local Offset = Pages.AbsolutePosition - self.Window.Root.AbsolutePosition
		local Extent = Pages.AbsoluteSize
		if self.LayoutKey == "C" and self.LayoutPos == Offset and self.LayoutSize == Extent then
			return
		end
		self.LayoutKey, self.LayoutPos, self.LayoutSize = "C", Offset, Extent
		self.Pinned = false
		Layer.Position = UDim2.fromOffset(Offset.X, Offset.Y)
		Layer.Size = UDim2.fromOffset(Extent.X, Extent.Y)
		self:ApplyContentCorners(Offset, Extent)
	else
		if self.Pinned then
			return
		end
		if self.LayoutKey == "W" then
			self:SetRadius(self.Window.CornerRadius or 13)
			return
		end
		self.LayoutKey = "W"
		Layer.Position = UDim2.fromOffset(0, 0)
		Layer.Size = UDim2.fromScale(1, 1)
		self:SetRadius(self.Window.CornerRadius or 13)
	end
end

local FitTypes = {
	Cover = Enum.ScaleType.Crop,
	Contain = Enum.ScaleType.Fit,
	Stretch = Enum.ScaleType.Stretch,
}

local BlurRings = {
	{ Count = 6, Scale = 0.5, Phase = 30 },
	{ Count = 6, Scale = 1, Phase = 0 },
}

function BackgroundManager:BuildBlurStack()
	if self.Stack then
		return
	end
	self.Stack = New("CanvasGroup", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		ZIndex = 1,
		Visible = false,
		Parent = self.Layer,
	})
	self.BlurBase = New("ImageLabel", {
		Size = UDim2.fromScale(1, 1),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		BackgroundTransparency = 1,
		ZIndex = 1,
		Parent = self.Stack,
	})
	self.Samples = {}
	local Index = 0
	for _, Ring in BlurRings do
		for Step = 0, Ring.Count - 1 do
			Index += 1
			local Angle = math.rad(Ring.Phase + Step * 360 / Ring.Count)
			self.Samples[Index] = {
				Image = New("ImageLabel", {
					Size = UDim2.fromScale(1, 1),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BackgroundTransparency = 1,
					ImageTransparency = 1 - 1 / (Index + 1),
					ZIndex = 2,
					Parent = self.Stack,
				}),
				X = math.cos(Angle) * Ring.Scale,
				Y = math.sin(Angle) * Ring.Scale,
			}
		end
	end
end

function BackgroundManager:GetBlurRadius()
	return self:EffectiveBlur() * 0.8
end

function BackgroundManager:ApplyImageLayout()
	local Layer = self.Layer
	if not Layer then
		return
	end
	local Size = Layer.AbsoluteSize
	local Width, Height = math.max(Size.X, 1), math.max(Size.Y, 1)
	local Radius = self:GetBlurRadius()
	local Scale = self.Zoom
	local Needed = math.max((math.abs(self.OffsetX) + Radius) / Width, (math.abs(self.OffsetY) + Radius) / Height)
	if not self.UiMode then
		Scale = math.max(Scale, 1 + 2 * Needed)
	end
	local ImageSize = UDim2.fromScale(Scale, Scale)
	self.Image.Size = ImageSize
	self.Image.Position = UDim2.new(0.5, self.OffsetX, 0.5, self.OffsetY)
	if self.Stack and self.Stack.Visible then
		self.BlurBase.Size = ImageSize
		self.BlurBase.Position = UDim2.new(0.5, self.OffsetX, 0.5, self.OffsetY)
		for _, Sample in self.Samples do
			Sample.Image.Size = ImageSize
			Sample.Image.Position = UDim2.new(0.5, self.OffsetX + Sample.X * Radius, 0.5, self.OffsetY + Sample.Y * Radius)
		end
	end
	if self.UiMode then
		self:CheckUiAspect(Width / Height)
	end
end

local function AssignSource(Label, Url, Live)
	if Live then
		Label.ImageContent = Live
	else
		Label.Image = Url
	end
end

function BackgroundManager:ApplyImage(Url, Opacity, Live)
	self.SourceUrl, self.SourceOpacity, self.SourceLive = Url, Opacity, Live
	local Strength = math.clamp(self.Strength * Opacity, 0, 1)
	local ScaleType = FitTypes[self.Fit] or Enum.ScaleType.Crop
	local Image = self.Image
	local Key = if Live then self.AnimToken else Url
	local Blurred = self:EffectiveBlur() > 0 and not self.Suspended
	local UseUi = not Live and Url ~= "" and not (self.UiBad and self.UiBad[Url])
	self.UiMode = UseUi

	Image.Visible = true
	Image.ScaleType = ScaleType
	Image.TileSize = UDim2.fromOffset(256, 256)
	if self.ImageKey ~= Key then
		self.ImageKey = Key
		AssignSource(Image, Url, Live)
	end

	if UseUi then
		if self.Stack then
			self.Stack.Visible = false
		end
		if Image.Parent ~= self.Layer then
			Image.Parent = self.Layer
		end
		Image.ImageTransparency = 1 - Strength
		self:EnsureUiBlur(Url, ScaleType)
		self:SyncUiBlur()
	elseif Blurred then
		self:HideUi()
		self:BuildBlurStack()
		if Image.Parent ~= self.Layer then
			Image.Parent = self.Layer
		end
		self.Stack.Visible = true
		self.StackBase = 1 - Strength
		self.Stack.GroupTransparency = self.StackBase
		Image.ImageTransparency = 1
		local Base = self.BlurBase
		Base.Visible = true
		Base.ScaleType = ScaleType
		Base.TileSize = Image.TileSize
		Base.ImageTransparency = 0
		if self.BlurKey ~= Key then
			self.BlurKey = Key
			AssignSource(Base, Url, Live)
		end
		for _, Sample in self.Samples do
			local Copy = Sample.Image
			Copy.Visible = true
			Copy.ScaleType = ScaleType
			Copy.TileSize = Image.TileSize
			if Sample.Key ~= Key then
				Sample.Key = Key
				AssignSource(Copy, Url, Live)
			end
		end
	else
		self:HideUi()
		if self.Stack then
			self.Stack.Visible = false
		end
		if Image.Parent ~= self.Layer then
			Image.Parent = self.Layer
		end
		Image.ImageTransparency = 1 - Strength
	end

	self:ApplyImageLayout()

	local Gray = 1 - math.clamp(self.Saturation, 0, 1)
	self.Wash.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
	self.Wash.BackgroundTransparency = 1 - Gray * 0.75
end

function BackgroundManager:HideImage()
	self.SourceUrl = nil
	self.Image.Visible = false
	self:HideUi()
	if self.Stack then
		self.Stack.Visible = false
	end
end

function BackgroundManager:Refresh()
	local Layer = self.Layer
	if not Layer then
		return
	end

	local Url, IsVideo, Animated = self:Resolve()
	local Has = Url ~= "" or Animated ~= nil
	local Opacity = self.Window and self.Window.Opacity or 1

	Library:SetPanelAlpha(self.PanelOpacity)
	self:ApplyLayout()

	Layer.Visible = Has

	if Animated then
		self:PlayAnimation(Animated)
	else
		self:StopAnimation()
	end

	if Has and not IsVideo then
		self:ApplyImage(Animated and "" or Url, Opacity, Animated and self.AnimContent or nil)
	else
		self:HideImage()
	end

	if Has and IsVideo then
		if not self.Video then
			local Ok, Video = pcall(function()
				return New("VideoFrame", {
					Size = UDim2.fromScale(1, 1),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					BackgroundTransparency = 1,
					Looped = true,
					Volume = 0,
					ZIndex = 1,
					Parent = self.Layer,
				})
			end)
			self.Video = Ok and Video or nil
			if self.Video then
				local Guarded = self.Video
				Creator.AddSignal(Guarded:GetPropertyChangedSignal("Playing"), function()
					if self.DialogActive and Guarded.Playing then
						Guarded.Playing = false
					end
				end)
			end
		end
		if self.Video then
			self.Video.Visible = true
			if self.Video.Video ~= Url then
				self.Video.Video = Url
			end
			self:SyncVideo()
			if self.VideoUrl ~= Url then
				self.VideoUrl = Url
				self.VideoToken = (self.VideoToken or 0) + 1
				local Token = self.VideoToken
				local Video = self.Video
				task.spawn(function()
					local Start = os.clock()
					while Video.Parent and not Video.IsLoaded and os.clock() - Start < 8 do
						task.wait(0.25)
					end
					if Token ~= self.VideoToken or not Video.Parent or Video.IsLoaded then
						return
					end
					Library:InternalNotify({
						Title = "Background",
						Content = "This video could not be loaded. Roblox only plays videos uploaded to Roblox (rbxassetid) and cannot decode local mp4 or webm files. Convert it to an animated .lua file instead.",
						Duration = 8,
					})
					self:Select("none")
				end)
			end
			local Scale = math.max(self.Zoom, 1 + 2 * math.max(math.abs(self.OffsetX) / math.max(Layer.AbsoluteSize.X, 1), math.abs(self.OffsetY) / math.max(Layer.AbsoluteSize.Y, 1)))
			self.Video.Size = UDim2.fromScale(Scale, Scale)
			self.Video.Position = UDim2.new(0.5, self.OffsetX, 0.5, self.OffsetY)
		end
		if not self.Tone then
			self.Tone = New("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Color3.fromRGB(128, 128, 128),
				BackgroundTransparency = 1,
				ZIndex = 2,
				Parent = self.Layer,
			})
		end
		self.Tone.BackgroundTransparency = 1 - (1 - math.clamp(self.Saturation, 0, 1)) * 0.75
	elseif self.Video then
		self.Video.Playing = false
		self.Video.Visible = false
		self.VideoUrl = nil
		self.VideoToken = (self.VideoToken or 0) + 1
		if self.Tone then
			self.Tone.BackgroundTransparency = 1
		end
	end

	self.HasVideo = Has and IsVideo

	if Has and IsVideo and self.Video then
		self.Video.BackgroundColor3 = Creator.GetThemeProperty("AcrylicMain")
		self.Video.BackgroundTransparency = 1
		self.Wash.BackgroundColor3 = Creator.GetThemeProperty("AcrylicMain")
		self.Wash.BackgroundTransparency = math.clamp(self.Strength * Opacity, 0, 1)
	elseif not Has or IsVideo then
		self.Wash.BackgroundTransparency = 1
	end

	local DimAlpha = 1
	if Has and self.Scope ~= "Content only" then
		DimAlpha = 1 - 0.28 * self.Strength * Opacity
	end
	self.Dim.BackgroundTransparency = DimAlpha
	self:SyncShadeCorner()

	for _, Hook in next, self.Hooks do
		pcall(Hook)
	end
end

BackgroundManager.ApplyAll = BackgroundManager.Refresh

function BackgroundManager:Changed()
	if self.OnChange then
		Library:SafeCallback(self.OnChange)
	end
end

function BackgroundManager:Select(Id)
	self.Active = Id or "none"
	if Id ~= "none" then
		self.Scope = self.Scope or "Whole window"
	end
	self:Refresh()
	self:Changed()
end

function BackgroundManager:Set(Key, Value)
	self[Key] = Value
	self:Refresh()
	self:Changed()
end

function BackgroundManager:Remove(Id)
	for Index, Item in next, self.Items do
		if Item.id == Id then
			table.remove(self.Items, Index)
			if Item.path and delfile and isfile and isfile(Item.path) and Item.downloaded then
				pcall(delfile, Item.path)
			end
			break
		end
	end
	if self.Active == "custom:" .. Id then
		self:Select("none")
	else
		self:Changed()
	end
end

local VideoExt = { mp4 = true, webm = true }
local VideoRejected = { mov = true, mkv = true, avi = true }

function BackgroundManager:AddAnimation(Data, Name)
	if type(Data) ~= "table" or type(Data.Frames) ~= "table" then
		return false, "Animation needs a Frames table"
	end
	if #self.Items >= self.MaxItems then
		return false, "Maximum of " .. self.MaxItems .. " backgrounds reached"
	end
	local Id = "bg" .. string.format("%x", os.time()) .. tostring(math.random(100, 999))
	local Item = {
		id = Id,
		animated = true,
		data = Data,
		name = string.sub(Name or "Animation", 1, 16),
		width = Data.Width,
		height = Data.Height,
		fps = Data.FPS,
		palette = Data.Palette,
	}
	table.insert(self.Items, Item)
	self:Select("custom:" .. Id)
	return true, Item
end

function BackgroundManager:AddSource(Input)
	Input = string.gsub(tostring(Input or ""), "^%s*(.-)%s*$", "%1")
	if Input == "" then
		return false, "Type a file name, URL or asset id first"
	end
	if #self.Items >= self.MaxItems then
		return false, "Maximum of " .. self.MaxItems .. " backgrounds reached"
	end

	local Forced = string.lower(string.sub(Input, 1, 6)) == "video:"
	if Forced then
		Input = string.gsub(string.sub(Input, 7), "^%s*(.-)%s*$", "%1")
	end

	local Lower = string.lower(Input)
	local Ext = string.match(string.gsub(Lower, "[%?#].*$", ""), "%.(%w+)$")
	if Ext == "gif" then
		return false, "GIF is not supported by Roblox. Convert it to an animated .lua file (open the Tutorial)."
	end
	if Ext ~= nil and VideoRejected[Ext] then
		return false, "This video format cannot be played. Convert it to an animated .lua file (open the Tutorial)."
	end

	local Id = "bg" .. string.format("%x", os.time()) .. tostring(math.random(100, 999))
	local Item = { id = Id, isVideo = Forced or (Ext ~= nil and VideoExt[Ext] == true), animated = Ext == "lua" }

	if string.match(Input, "^%d+$") then
		Item.asset = "rbxassetid://" .. Input
		Item.name = "Asset " .. string.sub(Input, -4)
	elseif string.find(Lower, "rbxassetid://", 1, true) or string.find(Lower, "rbxasset://", 1, true) then
		Item.asset = Input
		Item.name = "Asset " .. string.sub(string.gsub(Input, "%D", ""), -4)
	elseif string.match(Lower, "^https?://") then
		if not (writefile and (getcustomasset or getsynasset)) then
			return false, "Executor cannot save files, so URLs are unavailable"
		end
		local Body
		local Ok, Result = pcall(function()
			return game:HttpGet(Input)
		end)
		if Ok and type(Result) == "string" and #Result > 0 then
			Body = Result
		else
			local Request = request or http_request or (syn and syn.request)
			if Request then
				local Ok2, Response = pcall(Request, { Url = Input, Method = "GET" })
				if Ok2 and Response and Response.Body and #Response.Body > 0 then
					Body = Response.Body
				end
			end
		end
		if not Body then
			return false, "Download failed"
		end
		if not isfolder("FluentSettings") then
			makefolder("FluentSettings")
		end
		if not isfolder(self.Folder) then
			makefolder(self.Folder)
		end
		Ext = Ext or (Item.isVideo and "webm" or "png")
		Item.path = self.Folder .. "/" .. Id .. "." .. Ext
		writefile(Item.path, Body)
		Item.downloaded = true
		Item.name = string.match(string.gsub(Input, "[%?#].*$", ""), "([^/]+)%.%w+$") or "Web image"
	else
		if not (isfile and isfile(Input)) then
			return false, "File not found in the executor workspace"
		end
		Item.path = Input
		Item.name = string.match(Input, "([^/\\]+)%.%w+$") or "Image"
	end

	Item.name = string.sub(Item.name, 1, 16)
	if Item.animated then
		if not (readfile and loadstring) then
			return false, "Executor cannot read frame files"
		end
		if not self:LoadFrames(Item) then
			return false, "Frame file needs Frames, Width and Height"
		end
	elseif not self:AssetOf(Item) then
		return false, "Could not load that file as an asset"
	end

	table.insert(self.Items, Item)
	self:Select("custom:" .. Id)
	return true, Item
end

function BackgroundManager:Export()
	local Items = {}
	for _, Item in next, self.Items do
		if Item.path or Item.asset then
			table.insert(Items, {
				id = Item.id,
				name = Item.name,
				isVideo = Item.isVideo,
				animated = Item.animated,
				path = Item.path,
				asset = Item.asset,
				downloaded = Item.downloaded,
			})
		end
	end
	return {
		Active = self.Active,
		Scope = self.Scope,
		PanelOpacity = self.PanelOpacity,
		Strength = self.Strength,
		Blur = self.Blur,
		Saturation = self.Saturation,
		Fit = self.Fit,
		Zoom = self.Zoom,
		OffsetX = self.OffsetX,
		OffsetY = self.OffsetY,
		Items = Items,
	}
end

function BackgroundManager:Import(Data)
	if type(Data) ~= "table" then
		return
	end
	if next(Data) == nil then
		Data = {
			Active = "none", Scope = "Whole window", PanelOpacity = 1, Strength = 1, Blur = 0,
			Saturation = 1, Fit = "Cover", Zoom = 1, OffsetX = 0, OffsetY = 0, Items = {},
		}
	end
	for _, Key in next, {
		"Active", "Scope", "PanelOpacity", "Strength", "Blur", "Saturation", "Fit", "Zoom",
		"OffsetX", "OffsetY",
	} do
		if Data[Key] ~= nil then
			self[Key] = Data[Key]
		end
	end
	if not FitTypes[self.Fit] then
		self.Fit = "Cover"
	end
	self.Items = {}
	for _, Item in next, Data.Items or {} do
		if type(Item) == "table" and Item.id then
			table.insert(self.Items, Item)
		end
	end
	if self.Layer then
		self:Refresh()
	end
end

function Library:IsThemeModeAllowed(Name)
	return not ThemeResolver.ModeBlacklist[Name or Library.Theme]
end

function Library:GetEffectiveThemeMode()
	if ThemeResolver.ModeBlacklist[Library.Theme] then
		return "Normal"
	end
	return Library.ThemeMode
end

function Library:SetThemeModeBlacklist(List)
	table.clear(ThemeResolver.ModeBlacklist)
	for _, Name in next, List or {} do
		ThemeResolver.ModeBlacklist[Name] = true
	end
	if Library.Window then
		Creator.UpdateTheme(RefreshAfterTheme)
	end
end

function Library:GetThemeModeBlacklist()
	local List = {}
	for Name in next, ThemeResolver.ModeBlacklist do
		table.insert(List, Name)
	end
	table.sort(List)
	return List
end

function Library:SetThemeMode(Mode: any)
	local Normalized = type(Mode) == "string" and ThemeResolver.ModeNames[string.upper(string.sub(Mode, 1, 1)) .. string.lower(string.sub(Mode, 2))]
	if not Normalized then
		return false
	end
	if Library.ThemeMode == Normalized then
		return true
	end
	Library.ThemeMode = Normalized
	if not Library.Window then
		return true
	end
	if ThemeResolver.ModeBlacklist[Library.Theme] then
		Library.ThemeChanged:Fire(Library.Theme)
	else
		Creator.UpdateTheme(RefreshAfterTheme)
	end
	return true
end

function Library:GetThemeMode()
	return Library.ThemeMode
end

local InterfaceManager = {} do
	InterfaceManager.Folder = "FluentSettings"
	InterfaceManager.Settings = {
		Theme = "Light",
		Acrylic = false,
		Transparency = false,
		ColorfulIcons = false,
		IconHue = 0,
		IconStyle = "Plain",
		Layout = "Fluent",
		ColorpickerStyle = "Chromium",
		NavPosition = "Top",
		NavLabelMode = "Hover",
		NotificationPosition = "Bottom Right",
		TitleTextVisible = true,
		SubTitleVisible = true,
		TitleIcon = "",
		CornerRadius = 13,
		BorderThickness = 1,
		BorderColor = "",
		RainbowBorder = false,
		WindowOpacity = 100,
		PanelDepth = 1,
		HoverStyle = "Full",
		MenuKeybind = "LeftControl",
		LockInsideScreen = false,
		AppFont = "Gotham",
		LocalFonts = {},
		Background = {},
	}
	InterfaceManager.Defaults = {}
	for Key, Value in next, InterfaceManager.Settings do
		InterfaceManager.Defaults[Key] = Value
	end

	function InterfaceManager:SetFolder(Folder)
		self.Folder = Folder
		self:BuildFolderTree()
	end

	function InterfaceManager:ResolveDefaults()
		if self.DefaultsResolved then
			return
		end
		self.DefaultsResolved = true

		for Key, Value in next, self.Library.WindowDefaults or {} do
			self.Defaults[Key] = Value
			self.Settings[Key] = Value
		end
	end

	function InterfaceManager:SetLibrary(LibraryObject)
		self.Library = LibraryObject
	end

	function InterfaceManager:BuildFolderTree()
		local Paths = {}
		local Parts = self.Folder:split("/")
		for Index = 1, #Parts do
			Paths[#Paths + 1] = table.concat(Parts, "/", 1, Index)
		end
		table.insert(Paths, self.Folder)
		table.insert(Paths, self.Folder .. "/settings")
		for Index = 1, #Paths do
			local Path = Paths[Index]
			if not isfolder(Path) then
				makefolder(Path)
			end
		end
	end

	function InterfaceManager:SaveSettingsNow()
		pcall(function()
			if not isfolder(self.Folder) then
				self:BuildFolderTree()
			end
			writefile(self.Folder .. "/options.json", HttpService:JSONEncode(InterfaceManager.Settings))
		end)
	end

	function InterfaceManager:SaveSettings()
		if self.SavePending then
			return
		end
		self.SavePending = true
		task.delay(0.4, function()
			self.SavePending = false
			self:SaveSettingsNow()
		end)
	end

	function InterfaceManager:LoadSettings()
		local Path = self.Folder .. "/options.json"
		if isfile(Path) then
			local Data = readfile(Path)
			local Success, Decoded = pcall(HttpService.JSONDecode, HttpService, Data)
			if Success then
				for Key, Value in next, Decoded do
					InterfaceManager.Settings[Key] = Value
				end
			end
		end
	end

	function InterfaceManager:ApplyOpacity()
		local Window = self.Library.Window
		if not Window then
			return
		end
		local Opacity = (self.Settings.WindowOpacity or 100) / 100
		if self.Settings.Transparency then
			Opacity = math.min(Opacity, 0.92)
		end
		Window:SetOpacity(Opacity)
	end

	function InterfaceManager:ApplySettings()
		local LibraryObject = self.Library
		local Settings = self.Settings
		local Window = LibraryObject.Window

		if not self.Hooked then
			self.Hooked = true
			LibraryObject.Background.OnChange = function()
				self:Change("Background", LibraryObject.Background:Export())
			end
		end

		for _, Entry in next, Settings.LocalFonts or {} do
			local Source = type(Entry) == "table" and (Entry.source or Entry.path)
			if Source then
				pcall(function()
					LibraryObject:LoadFontFile(Source, Entry.name, Entry.weight, Entry.style)
				end)
			end
		end
		if not LibraryObject:SetAppFont(Settings.AppFont or "Gotham") then
			LibraryObject:SetAppFont("Gotham")
			Settings.AppFont = "Gotham"
		end

		Settings.Theme = Themes.Aliases[Settings.Theme] or Settings.Theme
		if not Themes[Settings.Theme] then
			Settings.Theme = self.Defaults.Theme
		end
		LibraryObject:SetTheme(Settings.Theme)
		if LibraryObject.UseAcrylic then
			LibraryObject:ToggleAcrylic(Settings.Acrylic)
		end
		LibraryObject:SetColorfulIcons(Settings.ColorfulIcons)
		LibraryObject:SetIconHue(Settings.IconHue)
		LibraryObject:SetIconStyle(Settings.IconStyle)
		LibraryObject:SetPanelDepth(Settings.PanelDepth)
		LibraryObject:SetHoverStyle(Settings.HoverStyle)
		LibraryObject:SetColorpickerStyle(Settings.ColorpickerStyle)
		LibraryObject:SetLockInside(Settings.LockInsideScreen)
		LibraryObject:SetNotificationPosition(Settings.NotificationPosition)
		if Window then
			local BorderColor
			if Settings.BorderColor ~= "" then
				BorderColor = Color3.fromHex(Settings.BorderColor)
			end
			Window:ApplyAppearance({
				Layout = Settings.Layout,
				NavPosition = Settings.NavPosition,
				NavLabelMode = Settings.NavLabelMode,
				CornerRadius = Settings.CornerRadius,
				BorderThickness = Settings.BorderThickness,
				BorderColor = BorderColor,
				RainbowBorder = Settings.RainbowBorder,
				TitleTextVisible = Settings.TitleTextVisible,
				SubTitleVisible = Settings.SubTitleVisible,
			})
			if Settings.TitleIcon ~= "" and not LibraryObject.LockIdentity then
				Window:SetTitleIcon(Settings.TitleIcon)
			end
			self:ApplyOpacity()
		end
		if LibraryObject.Background.Layer then
			LibraryObject.Background:Import(Settings.Background)
		end
	end

	function InterfaceManager:SyncControls()
		local LibraryObject = self.Library
		local Options = LibraryObject.Options
		local Settings = self.Settings

		local Controls = {
			InterfaceAcrylic = "Acrylic",
			InterfaceTransparency = "Transparency",
			InterfaceColorfulIcons = "ColorfulIcons",
			InterfaceIconHue = "IconHue",
			InterfaceIconStyle = "IconStyle",
			InterfaceCornerRadius = "CornerRadius",
			InterfaceBorderThickness = "BorderThickness",
			InterfaceRainbowBorder = "RainbowBorder",
			InterfaceWindowOpacity = "WindowOpacity",
			InterfacePanelDepth = "PanelDepth",
			InterfaceHoverStyle = "HoverStyle",
			InterfaceLayout = "Layout",
			InterfaceColorpickerStyle = "ColorpickerStyle",
			InterfaceNavPosition = "NavPosition",
			InterfaceNavLabels = "NavLabelMode",
			InterfaceNotificationPosition = "NotificationPosition",
			InterfaceTitleIcon = "TitleIcon",
			InterfaceTitleText = "TitleTextVisible",
			InterfaceSubTitle = "SubTitleVisible",
			InterfaceLockInside = "LockInsideScreen",
		}
		for Idx, Key in next, Controls do
			local Option = Options[Idx]
			if Option and Settings[Key] ~= nil then
				Option:SetValue(Settings[Key])
			end
		end

		local Pickers = {
			InterfaceTheme = Settings.Theme,
			InterfaceAppFont = Settings.AppFont,
			InterfaceBackground = LibraryObject.Background.Active or "none",
		}
		for Idx, Value in next, Pickers do
			local Option = Options[Idx]
			if Option and Value ~= nil then
				Option:SetValue(Value, true)
			end
		end

		local Background = {
			InterfaceBgScope = "Whole window",
			InterfaceBgFit = "Cover",
			InterfaceBgPanelOpacity = 100,
			InterfaceBgStrength = 100,
			InterfaceBgBlur = 0,
			InterfaceBgSaturation = 100,
			InterfaceBgZoom = 100,
			InterfaceBgOffsetX = 0,
			InterfaceBgOffsetY = 0,
		}
		for Idx, Value in next, Background do
			local Option = Options[Idx]
			if Option then
				Option:SetValue(Value)
			end
		end

		local BorderPicker = Options.InterfaceBorderColor
		if BorderPicker then
			BorderPicker:SetValueRGB(Color3.fromRGB(60, 60, 66))
		end

		Settings.BorderColor = ""
		local Window = LibraryObject.Window
		if Window then
			Window:SetBorder(Window.BorderThickness or Settings.BorderThickness, nil)
			if Settings.TitleIcon == "" then
				LibraryObject:SetTitleIcon(LibraryObject.DefaultTitleIcon)
			end
		end
	end

	function InterfaceManager:Change(Key, Value)
		self.Settings[Key] = Value
		self:SaveSettings()
	end

	function InterfaceManager:BuildThemeSection(Tab)
		local LibraryObject = self.Library
		local Settings = self.Settings
		Settings.LocalFonts = Settings.LocalFonts or {}
		local Section = Tab:AddSection("Theme & Font")

		local FontPicker

		local function ThemeItem(Name)
			local Data = LibraryObject:GetThemeData(Name)
			return {
				Id = Name,
				Title = Name,
				Colors = { Data.AcrylicMain, Data.Element, Data.Accent, Data.SubText },
			}
		end

		local Items = {}
		for _, Name in next, LibraryObject.Themes do
			table.insert(Items, ThemeItem(Name))
		end

		Section:AddCardPicker("InterfaceTheme", {
			Title = "Theme",
			Description = "Color scheme",
			Icon = "rbxassetid://10734910430",
			IconColor = Color3.fromRGB(191, 90, 242),
			Items = Items,
			Default = Settings.Theme,
			Callback = function(Value)
				LibraryObject:SetTheme(Value)
				self:Change("Theme", Value)
			end,
		})

		local FontRows = {}
		local FontOpen = false

		local function SetFontOpen(Value)
			FontOpen = Value
			for _, Row in next, FontRows do
				Row:SetVisible(Value)
			end
		end

		local function FontItem(Family)
			local Item = {
				Id = Family.Name,
				Title = Family.Name,
				Text = "Aa",
				TextFont = LibraryObject:FontFor("SemiBold", Family.Name),
			}
			if Family.Custom then
				Item.OnDelete = function(Id)
					LibraryObject:RemoveFontFamily(Id)
					for Index, Entry in next, Settings.LocalFonts do
						if Entry.name == Id then
							table.remove(Settings.LocalFonts, Index)
							break
						end
					end
					FontPicker:RemoveItem(Id)
					if Settings.AppFont == Id then
						Settings.AppFont = "Gotham"
						FontPicker:SetValue("Gotham")
					end
					self:SaveSettings()
				end
			end
			return Item
		end

		local FontItems = {}
		for _, Family in next, LibraryObject.FontFamilies do
			table.insert(FontItems, FontItem(Family))
		end

		FontPicker = Section:AddCardPicker("InterfaceAppFont", {
			Title = "Font",
			Description = "Pick a font or add your own",
			Icon = "rbxassetid://7072724114",
			IconColor = Color3.fromRGB(48, 209, 88),
			Items = FontItems,
			Default = Settings.AppFont,
			CardWidth = 78,
			PreviewHeight = 44,
			AddCard = {
				Title = "Local font",
				Callback = function()
					SetFontOpen(not FontOpen)
				end,
			},
			Callback = function(Value)
				LibraryObject:SetAppFont(Value)
				self:Change("AppFont", Value)
			end,
		})

		local FontInput = Section:AddInput("InterfaceFontPath", {
			Title = "Font file",
			Description = "Path, link or asset id",
			Icon = "rbxassetid://10723367606",
			IconColor = Color3.fromRGB(255, 159, 10),
			Variant = "Field",
			Placeholder = "fonts/MyFont.ttf",
		})
		table.insert(FontRows, FontInput)
		FontInput:SetVisible(false)

		local FontName = Section:AddInput("InterfaceFontName", {
			Title = "Font name",
			Description = "Optional",
			Icon = "rbxassetid://10734982297",
			IconColor = Color3.fromRGB(94, 92, 230),
			Variant = "Field",
			Placeholder = "My Font",
		})
		table.insert(FontRows, FontName)
		FontName:SetVisible(false)

		local FontWeight = Section:AddDropdown("InterfaceFontWeight", {
			Title = "Weight",
			Description = "Auto builds all weights",
			Icon = "rbxassetid://7072706123",
			IconColor = Color3.fromRGB(255, 69, 58),
			Values = LibraryObject.FontWeightNames,
			Default = "Auto",
		})
		table.insert(FontRows, FontWeight)
		FontWeight:SetVisible(false)

		local FontStyle = Section:AddDropdown("InterfaceFontStyle", {
			Title = "Style",
			Description = "Needs a weight",
			Icon = "rbxassetid://7072717909",
			IconColor = Color3.fromRGB(191, 90, 242),
			Variant = "Segmented",
			Values = { "Normal", "Italic" },
			Default = "Normal",
		})
		table.insert(FontRows, FontStyle)
		FontStyle:SetVisible(false)

		local FontButton = Section:AddButton({
			Title = "Add font",
			Icon = "rbxassetid://7072720870",
			IconColor = Color3.fromRGB(50, 215, 75),
			Variant = "Tonal",
			ButtonText = "Add",
			Callback = function()
				local Path = string.gsub(FontInput.Textbox.Input.Text or "", "^%s*(.-)%s*$", "%1")
				local Typed = string.gsub(FontName.Textbox.Input.Text or "", "^%s*(.-)%s*$", "%1")
				local Weight = FontWeight.Value or "Auto"
				local Style = FontStyle.Value or "Normal"
				local Ok, Result = LibraryObject:LoadFontFile(Path, Typed ~= "" and Typed or nil, Weight, Style)
				if not Ok then
					LibraryObject:InternalNotify({ Title = "Font", Content = tostring(Result), Duration = 5 })
					return
				end
				for Index, Entry in next, Settings.LocalFonts do
					if Entry.name == Result.Name then
						table.remove(Settings.LocalFonts, Index)
						break
					end
				end
				table.insert(Settings.LocalFonts, { name = Result.Name, source = Path, weight = Weight, style = Style })
				if FontPicker:HasItem(Result.Name) then
					FontPicker:RemoveItem(Result.Name)
				end
				FontPicker:AddItem(FontItem(Result))
				FontPicker:SetValue(Result.Name)
				FontInput:SetValue("")
				FontInput.Textbox.Input.Text = ""
				FontName:SetValue("")
				FontName.Textbox.Input.Text = ""
				SetFontOpen(false)
			end,
		})
		table.insert(FontRows, FontButton)
		FontButton:SetVisible(false)

		if LibraryObject.UseAcrylic then
			Section:AddToggle("InterfaceAcrylic", {
				Title = "Acrylic blur",
				Description = "Blurs the game behind. Needs graphics 8+",
				Icon = "rbxassetid://7072715827",
				IconColor = Color3.fromRGB(90, 200, 250),
				Default = Settings.Acrylic,
				Callback = function(Value)
					LibraryObject:ToggleAcrylic(Value)
					self:Change("Acrylic", Value)
				end,
			})
		end

		Section:AddToggle("InterfaceTransparency", {
			Title = "Soft transparency",
			Icon = "rbxassetid://10709811939",
			IconColor = Color3.fromRGB(100, 210, 255),
			Default = Settings.Transparency,
			Callback = function(Value)
				self:Change("Transparency", Value)
				self:ApplyOpacity()
			end,
		})
	end

	function InterfaceManager:BuildBackgroundSection(Tab)
		local LibraryObject = self.Library
		local BackgroundManager = LibraryObject.Background
		local Section = Tab:AddSection("Background")

		local Ready = false
		local Picker
		local Dynamic, Position, AddRows = {}, {}, {}
		local AddOpen = false

		local MotionNames = {
			{ Id = "InterfaceBackground", Title = { "Background image", "Background video" } },
			{
				Id = "InterfaceBgStrength",
				Title = { "Image strength", "Video strength" },
				Desc = { "How visible the background image is", "How visible the background video is" },
			},
			{
				Id = "InterfaceBgBlur",
				Title = { "Image blur", "Video blur" },
				Desc = { "Softens the background image", "Softens the background video" },
			},
			{
				Id = "InterfaceBgSaturation",
				Title = { "Image saturation", "Video saturation" },
				Desc = { "Lower values turn the image toward gray", "Lower values turn the video toward gray" },
			},
			{ Id = "InterfaceBgFit", Title = { "Image fit", "Video fit" } },
			{
				Id = "InterfaceBgZoom",
				Desc = { "Enlarge the background image", "Enlarge the background video" },
			},
			{
				Id = "InterfaceBgOffsetX",
				Desc = { "Shift the image left or right", "Shift the video left or right" },
			},
			{
				Id = "InterfaceBgOffsetY",
				Desc = { "Shift the image higher or lower", "Shift the video higher or lower" },
			},
		}
		local MotionState

		local function ActiveMotion()
			local Active = BackgroundManager.Active
			if string.sub(Active, 1, 7) ~= "custom:" then
				return false
			end
			local Id = string.sub(Active, 8)
			for _, Item in next, BackgroundManager.Items do
				if Item.id == Id then
					return Item.animated == true or Item.isVideo == true
				end
			end
			return false
		end

		local function ApplyMotionNames()
			local Motion = ActiveMotion()
			if Motion == MotionState then
				return
			end
			MotionState = Motion
			local Index = Motion and 2 or 1
			for _, Entry in next, MotionNames do
				local Object = LibraryObject.Options[Entry.Id]
				if Object then
					if Entry.Title and Object.SetTitle then
						Object:SetTitle(Entry.Title[Index])
					end
					if Entry.Desc and Object.SetDesc then
						Object:SetDesc(Entry.Desc[Index])
					end
				end
			end
		end

		local function UpdateVisibility()
			ApplyMotionNames()
			local Has = BackgroundManager.Active ~= "none"
			for _, Row in next, Dynamic do
				Row:SetVisible(Has)
			end
			for _, Row in next, Position do
				Row:SetVisible(Has and BackgroundManager.Scope ~= "Content only")
			end
			for _, Row in next, AddRows do
				Row:SetVisible(AddOpen)
			end
		end

		local function CustomItem(Item)
			local Card = {
				Id = "custom:" .. Item.id,
				Title = Item.name or "Image",
				OnDelete = function()
					BackgroundManager:Remove(Item.id)
					Picker:RemoveItem("custom:" .. Item.id)
					Picker:SetValue(BackgroundManager.Active, true)
					UpdateVisibility()
				end,
			}
			if Item.animated then
				Card.Text = "ANIM"
				Card.TextSize = 13
			elseif Item.isVideo then
				Card.Text = "▶"
				Card.TextSize = 18
			else
				Card.Image = BackgroundManager:AssetOf(Item)
			end
			return Card
		end

		local Items = {
			{ Id = "none", Title = "None", Icon = "rbxassetid://7072722603" },
		}
		if BackgroundManager.DefaultImage then
			table.insert(Items, { Id = "default", Title = BackgroundManager.DefaultTitle or "Default", Image = BackgroundManager.DefaultImage })
		end
		for _, Item in next, BackgroundManager.Items do
			table.insert(Items, CustomItem(Item))
		end

		Picker = Section:AddCardPicker("InterfaceBackground", {
			Title = "Background image",
			Description = "Pick an image or animation",
			Icon = "rbxassetid://7072717759",
			IconColor = Color3.fromRGB(90, 200, 250),
			Items = Items,
			Default = BackgroundManager.Active,
			CardWidth = 86,
			PreviewHeight = 52,
			AddCard = {
				Title = "Add",
				Callback = function()
					AddOpen = not AddOpen
					UpdateVisibility()
				end,
			},
			Callback = function(Value)
				BackgroundManager:Select(Value)
				UpdateVisibility()
			end,
		})

		local TutorialLink = "https://github.com/StyearX/Script/blob/main/not%20a%20luau/Animated.py"

		local function OpenTutorial()
			LibraryObject.Window:PagedDialog({
				Title = "Background tutorial",
				Pages = {
					{
						Title = "How backgrounds work",
						Blocks = {
							"Roblox cannot decode local mp4 or webm files, so they will not play. Only a video uploaded to Roblox (rbxassetid) can play in the video layer.",
							"The reliable way to get motion is an EditableImage. The script draws every frame pixel by pixel, so a video has to be converted to frame data first.",
							{ Heading = "Two kinds of background" },
							"Image: a single png or jpg.",
							"Video: type video: before the rbxassetid of a video uploaded to Roblox.",
							"Animated: a .lua file made from a video with Animated.py.",
							"Use Next to see how to set up each one.",
						},
					},
					{
						Title = "Image background",
						Blocks = {
							"1. Put a png or jpg inside your executor workspace folder, for example backgrounds/wallpaper.png.",
							"2. Tap Add on the background card row so the source box shows.",
							"3. Type the file path, a direct link, or an rbxassetid in Background source.",
							"4. Press Add. The picture is saved as a card and applied right away.",
							{ Code = "backgrounds/wallpaper.png" },
							"GIF files are not supported. Turn them into an animated .lua file instead.",
						},
					},
					{
						Title = "Animated: convert the video",
						Blocks = {
							"Animated.py reads a video, shrinks it, reduces it to 256 colors and stores every frame as text. Frames that look almost the same as the last one are saved as small changes, so the file stays compact.",
							{ Heading = "You need" },
							"Python, plus ffmpeg and ffprobe available on PATH. Then install the packages:",
							{ Code = "pip install numpy pillow" },
							{ Heading = "Get the script" },
							{ Code = TutorialLink },
							"Open the link, download Animated.py and keep it next to your video.",
						},
					},
					{
						Title = "Animated: run the converter",
						Blocks = {
							"Run it with the input video and the name of the output file:",
							{ Code = "python Animated.py input.mp4 output.lua" },
							"Optional settings:",
							{ Code = "python Animated.py input.mp4 output.lua --width 384 --fps 15 --tolerance 12 --max-seconds 10" },
							"--width: frame width, height follows the video ratio (default 384)",
							"--fps: frames per second (default 15)",
							"--tolerance: color difference ignored between frames, higher means a smaller file (default 12)",
							"--max-seconds: only convert the first seconds",
							"The input can be mp4, webm, mkv, mov, gif, avi or a direct link.",
						},
					},
					{
						Title = "Animated: load it",
						Blocks = {
							"1. Move output.lua into your executor workspace folder, for example backgrounds/output.lua.",
							"2. Type its path, or a direct link to the file, in Background source.",
							{ Code = "backgrounds/output.lua" },
							"3. Press Add. A card marked ANIM appears and the animation starts playing.",
							"If nothing plays, your executor probably does not support EditableImage and a notice will say so.",
						},
					},
					{
						Title = "Tips",
						Blocks = {
							"Smaller width, lower fps and a higher tolerance all make the file smaller and the animation lighter.",
							"A short loop of 5 to 10 seconds at 384 pixels wide and 15 fps is a good start. Use --max-seconds to cut longer videos.",
							"The first load decodes every frame, so a large file takes longer to start.",
							"Lower Panel opacity and raise Image blur if the animation makes text hard to read.",
							"You can keep up to " .. tostring(BackgroundManager.MaxItems) .. " backgrounds as cards. Delete a card to free a slot.",
						},
					},
				},
			})
		end

		Section:AddButton({
			Title = "Tutorial",
			Description = "How backgrounds work",
			Icon = "rbxassetid://10709797837",
			IconColor = Color3.fromRGB(255, 159, 10),
			Variant = "Tonal",
			ButtonText = "Open",
			Callback = OpenTutorial,
		})

		local SourceInput = Section:AddInput("InterfaceBgSource", {
			Title = "Background source",
			Description = "File, link or asset id",
			Icon = "rbxassetid://7072718226",
			IconColor = Color3.fromRGB(10, 132, 255),
			Variant = "Field",
			Placeholder = "file, link or asset id",
		})
		table.insert(AddRows, SourceInput)

		table.insert(AddRows, Section:AddButton({
			Title = "Add to library",
			Description = "Save and use it",
			Icon = "rbxassetid://7072724296",
			IconColor = Color3.fromRGB(50, 215, 75),
			Variant = "Tonal",
			ButtonText = "Add",
			Callback = function()
				local Text = SourceInput.Textbox.Input.Text
				local Ok, Result = BackgroundManager:AddSource(Text)
				if not Ok then
					LibraryObject:InternalNotify({ Title = "Background", Content = tostring(Result), Duration = 5 })
					return
				end
				Picker:AddItem(CustomItem(Result))
				Picker:SetValue("custom:" .. Result.id, true)
				SourceInput:SetValue("")
				SourceInput.Textbox.Input.Text = ""
				AddOpen = false
				UpdateVisibility()
			end,
		}))

		local function Slider(Id, Config, Key, Scale, Group)
			Config.Default = math.floor(BackgroundManager[Key] * Scale + 0.5)
			Config.Callback = function(Value)
				if Ready then
					BackgroundManager:Set(Key, Value / Scale)
				end
			end
			local Row = Section:AddSlider(Id, Config)
			if Group then
				table.insert(Group, Row)
			end
			return Row
		end

		Slider("InterfaceBgPanelOpacity", {
			Title = "Panel opacity",
			Description = "Lower to show more background",
			Icon = "rbxassetid://7072718011",
			IconColor = Color3.fromRGB(90, 200, 250),
			Variant = "Number",
			Min = 5,
			Max = 100,
			Rounding = 0,
		}, "PanelOpacity", 100)

		Slider("InterfaceBgStrength", {
			Title = "Image strength",
			Icon = "rbxassetid://7072716095",
			IconColor = Color3.fromRGB(191, 90, 242),
			Min = 1,
			Max = 100,
			Rounding = 0,
			Suffix = "%",
		}, "Strength", 100, Dynamic)

		Slider("InterfaceBgBlur", {
			Title = "Image blur",
			Icon = "rbxassetid://7072715827",
			IconColor = Color3.fromRGB(167, 139, 250),
			Min = 0,
			Max = 24,
			Rounding = 0,
			Suffix = "px",
		}, "Blur", 1, Dynamic)

		Slider("InterfaceBgSaturation", {
			Title = "Image saturation",
			Icon = "rbxassetid://10734910430",
			IconColor = Color3.fromRGB(255, 159, 10),
			Min = 0,
			Max = 100,
			Rounding = 0,
			Suffix = "%",
		}, "Saturation", 100, Dynamic)

		table.insert(Dynamic, Section:AddDropdown("InterfaceBgScope", {
			Title = "Show behind",
			Description = "Window or content only",
			Icon = "rbxassetid://7072718072",
			IconColor = Color3.fromRGB(10, 132, 255),
			Variant = "Segmented",
			Values = { "Whole window", "Content only" },
			Default = BackgroundManager.Scope,
			Callback = function(Value)
				if Ready then
					BackgroundManager:Set("Scope", Value)
					UpdateVisibility()
				end
			end,
		}))

		table.insert(Position, Section:AddDropdown("InterfaceBgFit", {
			Title = "Image fit",
			Description = "Cover, Contain or Stretch",
			Icon = "rbxassetid://7072718726",
			IconColor = Color3.fromRGB(100, 210, 255),
			Variant = "Segmented",
			Values = { "Cover", "Contain", "Stretch" },
			Default = FitTypes[BackgroundManager.Fit] and BackgroundManager.Fit or "Cover",
			Callback = function(Value)
				if Ready then
					BackgroundManager:Set("Fit", Value)
				end
			end,
		}))

		Slider("InterfaceBgZoom", {
			Title = "Zoom",
			Icon = "rbxassetid://10747384552",
			IconColor = Color3.fromRGB(100, 210, 255),
			Min = 100,
			Max = 300,
			Rounding = 0,
			Suffix = "%",
		}, "Zoom", 100, Position)

		Slider("InterfaceBgOffsetX", {
			Title = "Move sideways",
			Icon = "rbxassetid://10734899414",
			IconColor = Color3.fromRGB(100, 210, 255),
			Min = -400,
			Max = 400,
			Rounding = 0,
			Suffix = "px",
		}, "OffsetX", 1, Position)

		Slider("InterfaceBgOffsetY", {
			Title = "Move up or down",
			Icon = "rbxassetid://10734899821",
			IconColor = Color3.fromRGB(100, 210, 255),
			Min = -400,
			Max = 400,
			Rounding = 0,
			Suffix = "px",
		}, "OffsetY", 1, Position)

		table.insert(BackgroundManager.Hooks, ApplyMotionNames)

		Ready = true
		UpdateVisibility()
	end

	function InterfaceManager:BuildIconSection(Tab)
		local LibraryObject = self.Library
		local Settings = self.Settings
		local Section = Tab:AddSection("Icons")

		Section:AddToggle("InterfaceColorfulIcons", {
			Title = "Colorful icons",
			Icon = "rbxassetid://10747376349",
			IconColor = Color3.fromRGB(191, 90, 242),
			Default = Settings.ColorfulIcons,
			Callback = function(Value)
				LibraryObject:SetColorfulIcons(Value)
				self:Change("ColorfulIcons", Value)
			end,
		})

		Section:AddSlider("InterfaceIconHue", {
			Title = "Color shift",
			Icon = "rbxassetid://7072715827",
			IconColor = Color3.fromRGB(255, 69, 58),
			Variant = "Hue",
			Min = 0,
			Max = 360,
			Rounding = 0,
			Default = Settings.IconHue,
			Callback = function(Value)
				LibraryObject:SetIconHue(Value)
				self:Change("IconHue", Value)
			end,
		})

		Section:AddDropdown("InterfaceIconStyle", {
			Title = "Icon style",
			Description = "Tile or Plain",
			Icon = "rbxassetid://7072718011",
			IconColor = Color3.fromRGB(50, 215, 75),
			Variant = "Segmented",
			Values = { "Tile", "Plain" },
			Default = Settings.IconStyle,
			Callback = function(Value)
				LibraryObject:SetIconStyle(Value)
				self:Change("IconStyle", Value)
			end,
		})
	end

	function InterfaceManager:BuildWindowSection(Tab)
		local LibraryObject = self.Library
		local Settings = self.Settings
		local Section = Tab:AddSection("Window")

		Section:AddSlider("InterfaceCornerRadius", {
			Title = "Corner roundness",
			Icon = "rbxassetid://7072719383",
			IconColor = Color3.fromRGB(10, 132, 255),
			Min = 0,
			Max = 24,
			Rounding = 0,
			Suffix = "px",
			Default = Settings.CornerRadius,
			Callback = function(Value)
				LibraryObject.Window:SetCornerRadius(Value)
				self:Change("CornerRadius", Value)
			end,
		})

		Section:AddSlider("InterfaceBorderThickness", {
			Title = "Border thickness",
			Icon = "rbxassetid://7072722963",
			IconColor = Color3.fromRGB(142, 142, 147),
			Min = 0,
			Max = 4,
			Rounding = 1,
			Suffix = "px",
			Default = Settings.BorderThickness,
			Callback = function(Value)
				LibraryObject.Window:SetBorder(Value, LibraryObject.Window.BorderColor)
				self:Change("BorderThickness", Value)
			end,
		})

		Section:AddColorpicker("InterfaceBorderColor", {
			Title = "Border color",
			Icon = "rbxassetid://10709782758",
			IconColor = Color3.fromRGB(255, 55, 95),
			Default = Settings.BorderColor ~= "" and Color3.fromHex(Settings.BorderColor) or Color3.fromRGB(60, 60, 66),
			Callback = function(Value)
				LibraryObject.Window:SetBorder(LibraryObject.Window.BorderThickness or Settings.BorderThickness, Value)
				self:Change("BorderColor", Value:ToHex())
			end,
		})

		Section:AddButton({
			Title = "Reset border color",
			Icon = "rbxassetid://7072721134",
			IconColor = Color3.fromRGB(255, 159, 10),
			Variant = "Tonal",
			ButtonText = "Reset",
			Callback = function()
				LibraryObject.Window:SetBorder(LibraryObject.Window.BorderThickness or Settings.BorderThickness, nil)
				self:Change("BorderColor", "")
			end,
		})

		Section:AddToggle("InterfaceRainbowBorder", {
			Title = "Rainbow border",
			Icon = "rbxassetid://10747376349",
			IconColor = Color3.fromRGB(255, 214, 10),
			Default = Settings.RainbowBorder,
			Callback = function(Value)
				LibraryObject.Window:SetRainbowBorder(Value)
				self:Change("RainbowBorder", Value)
			end,
		})

		Section:AddSlider("InterfaceWindowOpacity", {
			Title = "Window opacity",
			Icon = "rbxassetid://7072723105",
			IconColor = Color3.fromRGB(100, 210, 255),
			Min = 20,
			Max = 100,
			Rounding = 0,
			Suffix = "%",
			Default = Settings.WindowOpacity,
			Callback = function(Value)
				self:Change("WindowOpacity", Value)
				self:ApplyOpacity()
			end,
		})

		Section:AddSlider("InterfacePanelDepth", {
			Title = "Panel depth",
			Icon = "rbxassetid://7072718011",
			IconColor = Color3.fromRGB(255, 159, 10),
			Variant = "Number",
			Min = 0,
			Max = 2,
			Rounding = 1,
			Default = Settings.PanelDepth,
			Callback = function(Value)
				LibraryObject:SetPanelDepth(Value)
				self:Change("PanelDepth", Value)
			end,
		})
	end

	function InterfaceManager:BuildLayoutSections(Tab)
		local LibraryObject = self.Library
		local Settings = self.Settings

		local Layout = Tab:AddSection("Layout & Feel")

		Layout:AddDropdown("InterfaceLayout", {
			Title = "Button layout",
			Description = "Buttons on the right or left",
			Icon = "rbxassetid://7072718072",
			IconColor = Color3.fromRGB(255, 159, 10),
			Variant = "Segmented",
			Values = { "Fluent", "MacOS" },
			Default = Settings.Layout,
			Callback = function(Value)
				LibraryObject:SetLayout(Value)
				self:Change("Layout", Value)
			end,
		})

		Layout:AddDropdown("InterfaceColorpickerStyle", {
			Title = "Color picker",
			Description = "Picker style",
			Icon = "rbxassetid://10734922497",
			IconColor = Color3.fromRGB(255, 55, 95),
			Variant = "Segmented",
			Values = LibraryObject.ColorpickerStyles,
			Default = Settings.ColorpickerStyle,
			Callback = function(Value)
				LibraryObject:SetColorpickerStyle(Value)
				self:Change("ColorpickerStyle", Value)
			end,
		})

		Layout:AddDropdown("InterfaceHoverStyle", {
			Title = "Hover style",
			Description = "How rows react to hover",
			Icon = "rbxassetid://10734898355",
			IconColor = Color3.fromRGB(100, 210, 255),
			Variant = "Segmented",
			Values = LibraryObject.HoverStyles,
			Default = Settings.HoverStyle,
			Callback = function(Value)
				LibraryObject:SetHoverStyle(Value)
				self:Change("HoverStyle", Value)
			end,
		})

		local Navigator = Tab:AddSection("Navigator")

		Navigator:AddDropdown("InterfaceNavPosition", {
			Title = "Tab position",
			Icon = "rbxassetid://7072719750",
			IconColor = Color3.fromRGB(10, 132, 255),
			Variant = "Segmented",
			Values = { "Top", "Bottom", "Left", "Right" },
			Default = Settings.NavPosition,
			Callback = function(Value)
				LibraryObject:SetNavPosition(Value)
				self:Change("NavPosition", Value)
			end,
		})

		Navigator:AddDropdown("InterfaceNavLabels", {
			Title = "Tab labels",
			Description = "When tab names show",
			Icon = "rbxassetid://7072724114",
			IconColor = Color3.fromRGB(100, 210, 255),
			Variant = "Segmented",
			Values = { "Hover", "Always", "Selected" },
			Default = Settings.NavLabelMode,
			Callback = function(Value)
				LibraryObject:SetNavLabelMode(Value)
				self:Change("NavLabelMode", Value)
			end,
		})

		local Notifications = Tab:AddSection("Notifications")

		Notifications:AddDropdown("InterfaceNotificationPosition", {
			Title = "Notification corner",
			Description = "Where alerts appear",
			Icon = "rbxassetid://7072706001",
			IconColor = Color3.fromRGB(255, 69, 58),
			Variant = "Segmented",
			Values = LibraryObject.NotificationPositions,
			Default = Settings.NotificationPosition,
			Callback = function(Value)
				LibraryObject:SetNotificationPosition(Value)
				self:Change("NotificationPosition", Value)
			end,
		})

		local TitleBar = Tab:AddSection("Script Header")
		LibraryObject.ScriptHeaderSection = TitleBar
		if LibraryObject.LockIdentity then
			TitleBar:SetVisible(false)
		end

		TitleBar:AddInput("InterfaceTitleIcon", {
			Title = "Logo",
			Description = "Icon name or asset id",
			Icon = "rbxassetid://7072717759",
			IconColor = Color3.fromRGB(255, 55, 95),
			Variant = "Field",
			Default = Settings.TitleIcon,
			Placeholder = "rbxassetid://1234567890",
			Finished = true,
			Callback = function(Value)
				if LibraryObject.LockIdentity then
					return
				end
				LibraryObject:SetTitleIcon(Value ~= "" and Value or nil)
				self:Change("TitleIcon", Value)
			end,
		})

		TitleBar:AddToggle("InterfaceTitleText", {
			Title = "Show title",
			Icon = "rbxassetid://7072724114",
			IconColor = Color3.fromRGB(48, 209, 88),
			Default = Settings.TitleTextVisible,
			Callback = function(Value)
				if LibraryObject.LockIdentity then
					return
				end
				LibraryObject.Window:SetTitleTextVisible(Value)
				self:Change("TitleTextVisible", Value)
			end,
		})

		TitleBar:AddToggle("InterfaceSubTitle", {
			Title = "Show subtitle",
			Icon = "rbxassetid://10709797837",
			IconColor = Color3.fromRGB(94, 92, 230),
			Default = Settings.SubTitleVisible,
			Callback = function(Value)
				if LibraryObject.LockIdentity then
					return
				end
				LibraryObject.Window:SetSubTitleVisible(Value)
				self:Change("SubTitleVisible", Value)
			end,
		})
	end

	function InterfaceManager:BuildBehaviorSection(Tab)
		local LibraryObject = self.Library
		local Settings = self.Settings
		local Section = Tab:AddSection("Controls")

		local MenuKeybind = Section:AddKeybind("MenuKeybind", {
			Title = "Minimize key",
			Description = "Hide or show the window",
			Icon = "rbxassetid://10723416765",
			IconColor = Color3.fromRGB(10, 132, 255),
			Default = Settings.MenuKeybind,
		})
		MenuKeybind:OnChanged(function()
			self:Change("MenuKeybind", MenuKeybind.Value)
		end)
		LibraryObject.MinimizeKeybind = MenuKeybind

		Section:AddToggle("InterfaceLockInside", {
			Title = "Keep window on screen",
			Description = "Pull it back if dragged away",
			Icon = "rbxassetid://7072718726",
			IconColor = Color3.fromRGB(255, 159, 10),
			Default = Settings.LockInsideScreen,
			Callback = function(Value)
				LibraryObject:SetLockInside(Value)
				self:Change("LockInsideScreen", Value)
			end,
		})

		Section:AddButton({
			Title = "Reset appearance",
			Description = "Restore defaults",
			Icon = "rbxassetid://7072721274",
			IconColor = Color3.fromRGB(255, 69, 58),
			Variant = "Danger",
			ButtonText = "Reset",
			Callback = function()
				LibraryObject.Window:Dialog({
					Title = "Reset appearance",
					Content = "Restore all interface settings to their defaults? This cannot be undone.",
					Buttons = {
						{
							Title = "Yes, Reset Appearance",
							Variant = "Danger",
							Callback = function()
								for Key, Value in next, self.Defaults do
									if Key ~= "MenuKeybind" then
										if type(Value) == "table" then
											Value = HttpService:JSONDecode(HttpService:JSONEncode(Value))
										end
										Settings[Key] = Value
									end
								end
								self:ApplySettings()
								self:SyncControls()
								self:SaveSettingsNow()
								LibraryObject:InternalNotify({
									Title = "Interface",
									Content = "Appearance restored to defaults.",
									Duration = 4,
								})
							end,
						},
						{
							Title = "No, Keep Settings",
						},
					},
				})
			end,
		})
	end

	function InterfaceManager:BuildInterfaceTab(Window, Config)
		assert(self.Library, "Must set InterfaceManager.Library")
		Config = Config or {}
		self:ResolveDefaults()
		self:LoadSettings()
		self:ApplySettings()

		local Header = Window:AddTabInHeader({
			Title = Config.Title or "Interface",
			Icon = Config.Icon or "rbxassetid://10734910430",
			SidebarTitle = Config.SidebarTitle or "Interface",
			SidebarCollapsed = Config.SidebarCollapsed,
		})

		local Appearance = Header:AddTab({ Title = "Appearance", Icon = "rbxassetid://10734910430", IconColor = Color3.fromRGB(191, 90, 242) })

		self:BuildThemeSection(Appearance)
		self:BuildBackgroundSection(Appearance)
		self:BuildIconSection(Appearance)
		self:BuildWindowSection(Appearance)
		self:BuildLayoutSections(Appearance)
		self:BuildBehaviorSection(Appearance)

		return {
			Header = Header,
			Appearance = Appearance,
		}
	end

	function InterfaceManager:BuildInterfaceSection(Tab)
		assert(self.Library, "Must set InterfaceManager.Library")
		self:ResolveDefaults()
		self:LoadSettings()
		self:ApplySettings()
		self:BuildThemeSection(Tab)
		self:BuildBackgroundSection(Tab)
		self:BuildIconSection(Tab)
		self:BuildWindowSection(Tab)
		self:BuildLayoutSections(Tab)
		self:BuildBehaviorSection(Tab)
	end
end

local SaveManager = {} do
	SaveManager.Folder = "FluentSettings"
	SaveManager.Ignore = {}

	local function Simple(TypeName, Field, Validate)
		return {
			Save = function(Idx, Object)
				return { Type = TypeName, Idx = Idx, Value = Object[Field or "Value"] }
			end,
			Load = function(Idx, Data)
				local Option = SaveManager.Options[Idx]
				if Option and (not Validate or Validate(Data.Value)) then
					Option:SetValue(Data.Value)
				end
			end,
		}
	end

	local function IsTable(Value)
		return type(Value) == "table"
	end

	local function IsBoolean(Value)
		return type(Value) == "boolean"
	end

	SaveManager.Parser = {
		Accordion = Simple("Accordion", "Value", IsBoolean),
		Toggle = Simple("Toggle"),
		Segmented = Simple("Segmented"),
		CardPicker = Simple("CardPicker"),
		CheckGroup = Simple("CheckGroup", "Value", IsTable),
		Slider = {
			Save = function(Idx, Object)
				return { Type = "Slider", Idx = Idx, Value = tostring(Object.Value) }
			end,
			Load = function(Idx, Data)
				if SaveManager.Options[Idx] then
					SaveManager.Options[Idx]:SetValue(Data.Value)
				end
			end,
		},
		Dropdown = {
			Save = function(Idx, Object)
				return { Type = "Dropdown", Idx = Idx, Value = Object.Value, Multi = Object.Multi }
			end,
			Load = function(Idx, Data)
				if SaveManager.Options[Idx] then
					SaveManager.Options[Idx]:SetValue(Data.Value)
				end
			end,
		},
		Colorpicker = {
			Save = function(Idx, Object)
				return {
					Type = "Colorpicker",
					Idx = Idx,
					Value = Object.Value:ToHex(),
					Transparency = Object.Transparency,
				}
			end,
			Load = function(Idx, Data)
				if SaveManager.Options[Idx] then
					SaveManager.Options[Idx]:SetValueRGB(Color3.fromHex(Data.Value), Data.Transparency)
				end
			end,
		},
		Keybind = {
			Save = function(Idx, Object)
				return { Type = "Keybind", Idx = Idx, Mode = Object.Mode, Key = Object.Value }
			end,
			Load = function(Idx, Data)
				if SaveManager.Options[Idx] then
					SaveManager.Options[Idx]:SetValue(Data.Key, Data.Mode)
				end
			end,
		},
		Input = {
			Save = function(Idx, Object)
				return { Type = "Input", Idx = Idx, Text = Object.Value }
			end,
			Load = function(Idx, Data)
				if SaveManager.Options[Idx] and type(Data.Text) == "string" then
					SaveManager.Options[Idx]:SetValue(Data.Text)
				end
			end,
		},
	}

	function SaveManager:RegisterParser(TypeName, Parser)
		assert(type(TypeName) == "string", "RegisterParser - Missing type name")
		assert(type(Parser) == "table" and type(Parser.Save) == "function" and type(Parser.Load) == "function", "RegisterParser - Parser needs Save and Load")

		local Previous = self.Parser[TypeName]
		self.Parser[TypeName] = Parser

		return Previous
	end

	function SaveManager:UnregisterParser(TypeName, Restore)
		self.Parser[TypeName] = Restore
	end

	local function Capitalize(Entry)
		local Upgraded = {}
		for Key, Value in next, Entry do
			if type(Key) == "string" then
				Key = Key:sub(1, 1):upper() .. Key:sub(2)
			end
			Upgraded[Key] = Value
		end
		return Upgraded
	end

	local function SettingsPath(Self, Name)
		return Self.Folder .. "/settings/" .. Name .. ".json"
	end

	local function Trim(Text: string?): string
		local Result = string.gsub(Text or "", "^%s*(.-)%s*$", "%1")
		return Result
	end

	function SaveManager:SetIgnoreIndexes(List)
		for _, Key in next, List do
			self.Ignore[Key] = true
		end
	end

	function SaveManager:SetFolder(Folder)
		self.Folder = Folder
		self:BuildFolderTree()
	end

	function SaveManager:Save(Name)
		if not Name or Name == "" then
			return false, "no config is selected"
		end

		local Data = {
			Objects = {},
		}

		for Idx, Option in next, SaveManager.Options do
			local Parser = self.Parser[Option.Type]
			if Parser and not self.Ignore[Idx] then
				table.insert(Data.Objects, Parser.Save(Idx, Option))
			end
		end

		local Success, Encoded = pcall(HttpService.JSONEncode, HttpService, Data)
		if not Success then
			return false, "your settings could not be encoded"
		end

		local Written, Problem = pcall(writefile, SettingsPath(self, Name), Encoded)
		if not Written then
			return false, "the file could not be written (" .. tostring(Problem) .. ")"
		end
		return true
	end

	function SaveManager:Load(Name)
		if not Name or Name == "" then
			return false, "no config is selected"
		end

		local File = SettingsPath(self, Name)
		if not isfile(File) then
			return false, "the config file was not found"
		end

		local Success, Decoded = pcall(HttpService.JSONDecode, HttpService, readfile(File))
		if not Success then
			return false, "the config file is damaged"
		end

		local Objects = Decoded.Objects or Decoded.objects
		if type(Objects) ~= "table" then
			return false, "the config file is damaged"
		end

		for _, Entry in next, Objects do
			Entry = Capitalize(Entry)
			local Parser = self.Parser[Entry.Type]
			if Parser then
				task.spawn(Parser.Load, Entry.Idx, Entry)
			end
		end

		return true
	end

	function SaveManager:Delete(Name: string?)
		if not Name or Name == "" then
			return false, "no config is selected"
		end

		local File = SettingsPath(self, Name)
		if not isfile(File) then
			return false, "the config file was not found"
		end

		if not pcall(delfile, File) then
			return false, "your executor does not support deleting files"
		end

		local AutoloadFile = self.Folder .. "/settings/autoload.txt"
		if isfile(AutoloadFile) and readfile(AutoloadFile) == Name then
			pcall(delfile, AutoloadFile)
		end
		return true
	end

	function SaveManager:IgnoreThemeSettings()
		self:SetIgnoreIndexes({
			"InterfaceTheme",
			"TransparentToggle",
			"ColorfulIconsToggle",
			"MenuKeybind",
		})
	end

	function SaveManager:BuildFolderTree()
		for _, Path in next, { self.Folder, self.Folder .. "/settings" } do
			if not isfolder(Path) then
				makefolder(Path)
			end
		end
	end

	function SaveManager:RefreshConfigList()
		local Names = {}
		for _, File in next, listfiles(self.Folder .. "/settings") do
			local Name = File:match("([^/\\]+)%.json$")
			if Name and Name ~= "options" then
				table.insert(Names, Name)
			end
		end
		table.sort(Names)
		return Names
	end

	function SaveManager:SetLibrary(Library)
		self.Library = Library
		self.Options = Library.Options
	end

	function SaveManager:LoadAutoloadConfig()
		local AutoloadFile = self.Folder .. "/settings/autoload.txt"
		if not isfile(AutoloadFile) then
			return
		end

		local Name = readfile(AutoloadFile)
		local Success, Problem = self:Load(Name)
		if not Success then
			return self.Library:InternalNotify({
				Title = "Configs",
				Content = "Autoload failed: " .. Problem,
				Duration = 6,
			})
		end

		self.Library:InternalNotify({
			Title = "Configs",
			Content = string.format("Autoloaded %q", Name),
			Duration = 4,
		})
	end

	function SaveManager:BuildConfigSection(Tab)
		assert(self.Library, "Must set SaveManager.Library")

		local Library = self.Library
		local Section = Tab:AddSection("Configs")
		local AutoloadFile = self.Folder .. "/settings/autoload.txt"
		local AutoloadButton

		local function Notify(Text)
			Library:InternalNotify({
				Title = "Configs",
				Content = Text,
				Duration = 5,
			})
		end

		local function Confirm(Title, Content, Label, Action)
			Library.Window:Dialog({
				Title = Title,
				Content = Content,
				Buttons = {
					{ Title = "Yes, " .. Label, Variant = "Danger", Callback = Action },
					{ Title = "No, Keep Config" },
				},
			})
		end

		local function SelectedName()
			return SaveManager.Options.SaveManagerConfigList.Value
		end

		local function Refresh(Select: string?)
			local List = SaveManager.Options.SaveManagerConfigList
			local Names = self:RefreshConfigList()
			List:SetValues(Names)
			List:SetValue(Select and table.find(Names, Select) and Select or nil)
		end

		local function DescribeAutoload()
			local Current = "none"
			if isfile(AutoloadFile) then
				Current = readfile(AutoloadFile)
			end
			AutoloadButton:SetDesc("Loads on start. Current: " .. Current)
		end

		local function RequireSelection(Action: (Name: string) -> ())
			local Name = SelectedName()
			if not Name or Name == "" then
				return Notify("Select a config from the list first")
			end
			Action(Name)
		end

		Section:AddInput("SaveManagerConfigName", {
			Title = "Config name",
			Description = "Name for a new config",
			Variant = "Field",
			Icon = "rbxassetid://7072716382",
			IconColor = Color3.fromRGB(10, 132, 255),
			Placeholder = "My config",
		})

		Section:AddDropdown("SaveManagerConfigList", {
			Title = "Saved configs",
			Description = "Select one to use",
			Icon = "rbxassetid://10723374759",
			IconColor = Color3.fromRGB(94, 92, 230),
			Values = self:RefreshConfigList(),
			AllowNull = true,
		})

		Section:AddButton({
			Title = "Create config",
			Description = "Save current settings",
			Variant = "Accent",
			ButtonText = "Create",
			ButtonIcon = "rbxassetid://7072716346",
			Callback = function()
				local Name = Trim(SaveManager.Options.SaveManagerConfigName.Value)

				if Name == "" then
					return Notify("Type a config name first")
				end

				if Name:find('[\\/:*?"<>|]') then
					return Notify("A config name cannot contain \\ / : * ? \" < > |")
				end

				local function Create()
					local Success, Problem = self:Save(Name)
					if not Success then
						return Notify("Could not save: " .. Problem)
					end
					Notify(string.format("Saved %q", Name))
					Refresh(Name)
					SaveManager.Options.SaveManagerConfigName:SetValue("")
					SaveManager.Options.SaveManagerConfigName.Textbox.Input.Text = ""
				end

				if isfile(SettingsPath(self, Name)) then
					return Confirm(
						"Overwrite config",
						string.format("%q already exists. Replace it with your current settings?", Name),
						"Overwrite Config",
						Create
					)
				end

				Create()
			end,
		})

		Section:AddButton({
			Title = "Load config",
			Description = "Apply the selected one",
			Variant = "Primary",
			ButtonText = "Load",
			ButtonIcon = "rbxassetid://10723385338",
			Callback = function()
				RequireSelection(function(Name)
					local Success, Problem = self:Load(Name)
					if not Success then
						return Notify("Could not load: " .. Problem)
					end
					Notify(string.format("Loaded %q", Name))
				end)
			end,
		})

		Section:AddButton({
			Title = "Overwrite config",
			Description = "Replace with current settings",
			Variant = "Tonal",
			ButtonText = "Overwrite",
			ButtonIcon = "rbxassetid://7072721454",
			Callback = function()
				RequireSelection(function(Name)
					Confirm(
						"Overwrite config",
						string.format("Replace %q with your current settings?", Name),
						"Overwrite Config",
						function()
							local Success, Problem = self:Save(Name)
							if not Success then
								return Notify("Could not overwrite: " .. Problem)
							end
							Notify(string.format("Updated %q", Name))
						end
					)
				end)
			end,
		})

		Section:AddButton({
			Title = "Delete config",
			Description = "Remove the selected one",
			Variant = "Danger",
			ButtonText = "Delete",
			ButtonIcon = "rbxassetid://7072723727",
			Callback = function()
				RequireSelection(function(Name)
					Confirm(
						"Delete config",
						string.format("Delete %q? This cannot be undone.", Name),
						"Delete Config",
						function()
							local Success, Problem = self:Delete(Name)
							if not Success then
								return Notify("Could not delete: " .. Problem)
							end
							Notify(string.format("Deleted %q", Name))
							Refresh(nil)
							DescribeAutoload()
						end
					)
				end)
			end,
		})

		Section:AddButton({
			Title = "Refresh list",
			Description = "Reload the list",
			Variant = "Outline",
			ButtonText = "Refresh",
			ButtonIcon = "rbxassetid://7072721134",
			Callback = function()
				Refresh(SelectedName())
			end,
		})

		AutoloadButton = Section:AddButton({
			Title = "Set as autoload",
			Description = "Loads on start. Current: none",
			Variant = "Ghost",
			ButtonText = "Set",
			ButtonIcon = "rbxassetid://7072720961",
			Callback = function()
				RequireSelection(function(Name)
					local Success = pcall(writefile, AutoloadFile, Name)
					if not Success then
						return Notify("Could not set autoload")
					end
					DescribeAutoload()
					Notify(string.format("%q will load automatically", Name))
				end)
			end,
		})

		DescribeAutoload()

		SaveManager:SetIgnoreIndexes({ "SaveManagerConfigList", "SaveManagerConfigName" })
	end

	function SaveManager:Activate()
		self:BuildFolderTree()
	end
end

SaveManager.Library = Library
SaveManager.Options = Library.Options
InterfaceManager.Library = Library

-- Important thing if you want to create custom objects in this UI Library
export type Dict = { [string]: any }
export type Callback = (...any) -> ()

export type SaveSpec = {
	Save: ((Object: any) -> Dict)?,
	Load: ((Object: any, Data: Dict) -> ())?,
	Validate: ((Data: Dict) -> boolean)?,
}

export type MiddlewareFn = (ContextPrototype: ElementContext, Next: () -> ()) -> ()

export type ElementDefinition = {
	Name: string?,
	Build: (ContextPrototype: ElementContext) -> any?,
	Defaults: Dict?,
	Hover: boolean?,
	NoIdx: boolean?,
	ClassType: string?,
	TitleOptional: boolean?,
	Save: (boolean | SaveSpec)?,
	BeforeDestroy: ((Object: any) -> ())?,
	Middleware: { MiddlewareFn }?,
}

export type ReactiveState = {
	Get: () -> any,
	Set: (Value: any) -> (),
	OnChange: (Callback: (New: any, Old: any) -> ()) -> () -> (),
}

export type ElementContext = {
	Type: string,
	Idx: string?,
	Config: Dict,
	Object: Dict,
	Alive: boolean,

	Signal: (self: ElementContext, Signal: RBXScriptSignal, Callback: Callback) -> RBXScriptConnection,
	Cleanup: (self: ElementContext, Callback: () -> ()) -> (),
	Dispose: (self: ElementContext) -> (),

	Theme: (self: ElementContext, Object: Instance, Properties: { [string]: string }) -> Instance,
	ThemeColor: (self: ElementContext, Key: string) -> any,
	OnTheme: (self: ElementContext, Callback: (Theme: Dict) -> ()) -> any,
	Tween: (self: ElementContext, Object: Instance, Time: number, Goal: Dict, Style: Enum.EasingStyle?, Direction: Enum.EasingDirection?) -> Tween,

	Corner: (self: ElementContext, Radius: number?) -> UICorner,
	Stroke: (self: ElementContext, Key: string?, Transparency: number?, Thickness: number?) -> UIStroke,
	Label: (self: ElementContext, Properties: Dict?) -> TextLabel,
	Icon: (self: ElementContext, Image: ImageLabel | ImageButton, Name: (string | number)?, Variant: string?, Size: number?) -> boolean,
	Place: (self: ElementContext, Control: GuiObject, Gap: number?) -> GuiObject,
	Below: (self: ElementContext, Control: GuiObject, Height: number, Bottom: number?) -> GuiObject,

	Frame: (self: ElementContext, Properties: Dict?) -> Frame,
	Padding: (self: ElementContext, Parent: Instance, All: number?, X: number?, Y: number?) -> UIPadding,
	List: (self: ElementContext, Parent: Instance, Direction: Enum.FillDirection?, Spacing: number?) -> UIListLayout,

	State: (self: ElementContext, Initial: any) -> ReactiveState,

	Fire: (self: ElementContext, ...any) -> (),
	Notify: (self: ElementContext, Content: string, Duration: number?) -> (),

	Library: any,
	Internals: any,
	Creator: any,
	Components: any,
	New: any,
	Row: any,
	Holder: any,
	Tab: any,
}

export type ExtensionApi = Dict

export type ExtensionManifest = {
	Id: string,
	Name: string?,
	Version: string?,
	Author: string?,
	Description: string?,
	ApiVersion: number?,
	Tags: { string }?,
	Dependencies: { string }?,
	AutoEnable: boolean?,
	Load: (Api: ExtensionApi) -> any?,
	Unload: ((Api: ExtensionApi) -> ())?,
	OnReady: ((Api: ExtensionApi) -> ())?,
	OnSuspend: ((Api: ExtensionApi) -> ())?,
	OnResume: ((Api: ExtensionApi) -> ())?,
}

export type ExtensionRecord = {
	Id: string,
	Name: string,
	Version: string,
	Author: string?,
	Description: string?,
	Tags: { string },
	Dependencies: { string },
	Manifest: ExtensionManifest,
	State: string,
	Error: string?,
	Exports: Dict,
	Capabilities: { string },
	Api: ExtensionApi?,
	Origin: Dict?,
	Loading: boolean?,
}

local Extension: any = {}

do
	local ApiVersion = 5
	local IdPattern = "^[%w_%.%-]+$"
	local ForwardedRowMethods = { "SetTitle", "SetDesc", "SetIcon", "SetHolderColor", "SetVisible", "GetVisible" }

	local function Noop() end

	local function Release(Item: any)
		local Kind = typeof(Item)
		if Kind == "Instance" then
			Item:Destroy()
		elseif Kind == "RBXScriptConnection" then
			Item:Disconnect()
		elseif Kind == "function" then
			Item()
		elseif Kind == "thread" then
			task.cancel(Item)
		elseif Kind == "table" then
			if type(Item.Destroy) == "function" then
				Item:Destroy()
			elseif type(Item.Disconnect) == "function" then
				Item:Disconnect()
			elseif type(Item.Cancel) == "function" then
				Item:Cancel()
			end
		end
	end

	local function EnsureFolder(Path: string)
		if type(isfolder) ~= "function" or type(makefolder) ~= "function" then
			return
		end

		local Built = ""
		for Part in string.gmatch(Path, "[^/\\]+") do
			Built = if Built == "" then Part else `{Built}/{Part}`
			if not isfolder(Built) then
				pcall(makefolder, Built)
			end
		end
	end

	local function ApplyIcon(Image: ImageLabel | ImageButton, Name: (string | number)?, Variant: string?, Size: number?): boolean
		if Name == nil or Name == "" then
			return false
		end
		if type(Name) == "number" then
			Image.Image = `rbxassetid://{Name}`
			return true
		end
		if (Name :: string):find("^rbxasset") or (Name :: string):find("^http") then
			Image.Image = Name :: string
			return true
		end

		local Success, Applied = pcall(Library.ApplyIcon, Library, Image, Name, Variant, Size, "Element")
		return Success and Applied == true
	end

	local function BindRow(Object: any, Row: any)
		Object.Row = Row
		for _, MethodName in ForwardedRowMethods do
			if Object[MethodName] == nil then
				Object[MethodName] = function(_, ...)
					return Row[MethodName](Row, ...)
				end
			end
		end
	end

	local function CreateReactiveState(Initial: any): ReactiveState
		local Value = Initial
		local Listeners: { (any, any) -> () } = {}

		return {
			Get = function()
				return Value
			end,
			Set = function(NewValue: any)
				if NewValue == Value then
					return
				end

				local Old = Value
				Value = NewValue
				for _, Listener in Listeners do
					task.spawn(Listener, NewValue, Old)
				end
			end,
			OnChange = function(Listener: (any, any) -> ()): () -> ()
				table.insert(Listeners, Listener)
				return function()
					local Index = table.find(Listeners, Listener)
					if Index then
						table.remove(Listeners, Index)
					end
				end
			end,
		}
	end

	local EventBus = {}
	EventBus.Handlers = {} :: { [string]: { Callback } }

	function EventBus:On(Event: string, Handler: Callback): () -> ()
		if not self.Handlers[Event] then
			self.Handlers[Event] = {}
		end

		table.insert(self.Handlers[Event], Handler)

		return function()
			local List = self.Handlers[Event]
			if not List then
				return
			end

			local Index = table.find(List, Handler)
			if Index then
				table.remove(List, Index)
			end
		end
	end

	function EventBus:Emit(Event: string, ...: any)
		local List = self.Handlers[Event]
		if not List then
			return
		end

		for _, Handler in table.clone(List) do
			task.spawn(Handler, ...)
		end
	end

	function EventBus:Once(Event: string, Handler: Callback): () -> ()
		local Unsubscribe: () -> ()
		Unsubscribe = self:On(Event, function(...)
			Unsubscribe()
			Handler(...)
		end)
		return Unsubscribe
	end

	local ContextPrototype = {}
	ContextPrototype.__index = ContextPrototype

	function ContextPrototype:Signal(Signal: RBXScriptSignal, Callback: Callback): RBXScriptConnection
		local Connection = self.Creator.AddSignal(Signal, Callback)
		table.insert(self.Connections, Connection)
		return Connection
	end

	function ContextPrototype:Cleanup(Callback: () -> ())
		table.insert(self.Cleanups, Callback)
	end

	function ContextPrototype:Dispose()
		if not self.Alive then
			return
		end
		self.Alive = false

		for Index = #self.Cleanups, 1, -1 do
			pcall(self.Cleanups[Index])
			self.Cleanups[Index] = nil
		end

		for Index = #self.Connections, 1, -1 do
			pcall(function()
				self.Connections[Index]:Disconnect()
			end)
			self.Connections[Index] = nil
		end

		self.Extension.LiveContexts[self] = nil
	end

	function ContextPrototype:Theme(Object: Instance, Properties: { [string]: string }): Instance
		return self.Creator.AddThemeObject(Object, Properties)
	end

	function ContextPrototype:ThemeColor(Key: string): any
		return self.Creator.GetThemeProperty(Key)
	end

	function ContextPrototype:OnTheme(Callback: (Theme: Dict) -> ()): any
		local Connection = Library.ThemeChanged:Connect(function()
			Callback(Library:GetThemeData(Library.Theme))
		end)
		self:Cleanup(function()
			Connection:Disconnect()
		end)
		Callback(Library:GetThemeData(Library.Theme))
		return Connection
	end

	function ContextPrototype:Tween(Object: Instance, Time: number, Goal: Dict, Style: Enum.EasingStyle?, Direction: Enum.EasingDirection?): Tween
		return self.Creator.Tween(Object, Time, Goal, Style, Direction)
	end

	function ContextPrototype:Corner(Radius: number?): UICorner
		return self.Creator.New("UICorner", { CornerRadius = UDim.new(0, Radius or 8) })
	end

	function ContextPrototype:Stroke(Key: string?, Transparency: number?, Thickness: number?): UIStroke
		return self.Creator.New("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Thickness = Thickness or 1,
			Transparency = Transparency or 0.9,
			ThemeTag = { Color = Key or "Text" },
		})
	end

	function ContextPrototype:Label(Properties: Dict?): TextLabel
		Properties = Properties or {}

		local Final: Dict = {
			BackgroundTransparency = 1,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			FontFace = Library:FontFor(Properties.Weight or "Medium"),
			ThemeTag = { TextColor3 = Properties.Tag or "Text" },
		}

		for Key, Value in Properties do
			if Key ~= "Weight" and Key ~= "Tag" then
				Final[Key] = Value
			end
		end

		return self.Creator.New("TextLabel", Final)
	end

	function ContextPrototype:Icon(Image: ImageLabel | ImageButton, Name: (string | number)?, Variant: string?, Size: number?): boolean
		return ApplyIcon(Image, Name, Variant, Size)
	end

	function ContextPrototype:Place(Control: GuiObject, Gap: number?): GuiObject
		self.Internals.Place(Control, self.Row, Gap)
		return Control
	end

	function ContextPrototype:Below(Control: GuiObject, Height: number, Bottom: number?): GuiObject
		local Row = self.Row
		Bottom = Bottom or 6

		Row:SetExtra(Height + Bottom)
		Control.AnchorPoint = Vector2.new(0, 1)
		Control.Position = UDim2.new(0, Row.LeftSpace, 1, -Bottom)
		Control.Size = UDim2.new(1, -(Row.LeftSpace + 10), 0, Height)
		Control.Parent = Row.Content

		return Control
	end

	function ContextPrototype:Frame(Properties: Dict?): Frame
		local Merged: Dict = {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 30),
			BorderSizePixel = 0,
		}

		for Key, Value in Properties or {} do
			Merged[Key] = Value
		end

		return self.Creator.New("Frame", Merged)
	end

	function ContextPrototype:Padding(Parent: Instance, All: number?, X: number?, Y: number?): UIPadding
		return self.Creator.New("UIPadding", {
			PaddingLeft = UDim.new(0, X or All or 0),
			PaddingRight = UDim.new(0, X or All or 0),
			PaddingTop = UDim.new(0, Y or All or 0),
			PaddingBottom = UDim.new(0, Y or All or 0),
			Parent = Parent,
		})
	end

	function ContextPrototype:List(Parent: Instance, Direction: Enum.FillDirection?, Spacing: number?): UIListLayout
		return self.Creator.New("UIListLayout", {
			FillDirection = Direction or Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, Spacing or 4),
			Parent = Parent,
		})
	end

	function ContextPrototype:State(Initial: any): ReactiveState
		local State = CreateReactiveState(Initial)
		local OriginalOnChange = State.OnChange

		State.OnChange = function(Listener)
			local Unsubscribe = OriginalOnChange(Listener)
			self:Cleanup(Unsubscribe)
			return Unsubscribe
		end

		return State
	end

	function ContextPrototype:Fire(...: any)
		local Object = self.Object
		Library:SafeCallback(Object.Callback, ...)
		Library:SafeCallback(Object.Changed, ...)
	end

	function ContextPrototype:Notify(Content: string, Duration: number?)
		Library:Notify({
			Title = if self.Config.Title ~= "" then self.Config.Title else self.Type,
			Content = Content,
			Duration = Duration or 4,
		})
	end

	local function RunMiddlewarePipeline(Middlewares: { MiddlewareFn }, Context: ElementContext, Build: (ElementContext) -> any?): any?
		local Index = 0
		local Result: any?

		local function Next()
			Index += 1
			local Middleware = Middlewares[Index]
			if Middleware then
				Middleware(Context, Next)
			else
				Result = Build(Context)
			end
		end

		Next()
		return Result
	end

	type Parser = {
		Save: (Idx: string, Object: any) -> Dict,
		Load: (Idx: string, Data: Dict) -> (),
	}

	type ElementEntry = {
		Name: string,
		Method: string,
		Definition: ElementDefinition,
		Component: Dict,
		Owner: string?,
		Parser: Parser?,
		PreviousParser: any,
	}

	local function BuildParser(Name: string, Spec: (boolean | SaveSpec)?): Parser
		local Rules: SaveSpec = if type(Spec) == "table" then Spec else {}

		return {
			Save = function(Idx: string, Object: any): Dict
				local Data = if Rules.Save then Rules.Save(Object) else { Value = Object.Value }
				Data.Type = Name
				Data.Idx = Idx
				return Data
			end,
			Load = function(Idx: string, Data: Dict)
				local Object = Library.Options[Idx]
				if not Object or Object.Type ~= Name then
					return
				end
				if Rules.Validate and not Rules.Validate(Data) then
					return
				end

				if Rules.Load then
					Rules.Load(Object, Data)
				elseif Data.Value ~= nil and Object.SetValue then
					Object:SetValue(Data.Value)
				end
			end,
		}
	end

	local Storage = {}
	Storage.__index = Storage

	function Storage.new(Path: string)
		local self = setmetatable({
			Path = Path,
			Folder = string.match(Path, "^(.*)[/\\][^/\\]+$") or "",
			Data = {},
			Dirty = false,
			Closed = false,
		}, Storage)

		if type(isfile) == "function" and type(readfile) == "function" and isfile(Path) then
			local Success, Decoded = pcall(function()
				return HttpService:JSONDecode(readfile(Path))
			end)
			if Success and type(Decoded) == "table" then
				self.Data = Decoded
			end
		end

		return self
	end

	function Storage:Get(Key: string, Default: any?): any
		local Value = self.Data[Key]
		return if Value == nil then Default else Value
	end

	function Storage:Set(Key: string, Value: any)
		self.Data[Key] = Value
		self:QueueFlush()
	end

	function Storage:Delete(Key: string)
		self.Data[Key] = nil
		self:QueueFlush()
	end

	function Storage:All(): Dict
		return table.clone(self.Data)
	end

	function Storage:QueueFlush()
		if self.Dirty or self.Closed then
			return
		end

		self.Dirty = true
		task.delay(0.75, function()
			self.Dirty = false
			self:Flush()
		end)
	end

	function Storage:Flush(): boolean
		if type(writefile) ~= "function" then
			return false
		end
		if self.Folder ~= "" then
			EnsureFolder(self.Folder)
		end

		return (pcall(function()
			writefile(self.Path, HttpService:JSONEncode(self.Data))
		end))
	end

	function Storage:Destroy()
		self.Closed = true
		self:Flush()
	end

	local Api = {}
	Api.__index = Api

	function Api.new(Record: ExtensionRecord): ExtensionApi
		return setmetatable({
			Id = Record.Id,
			Record = Record,
			Extension = Extension,
			Library = Library,
			Internals = Extension.Internals,
			Creator = Extension.Internals and Extension.Internals.Creator,
			Components = Extension.Internals and Extension.Internals.Components,
			New = Extension.Internals and Extension.Internals.New,
			EventBus = EventBus,
			Alive = true,
			Items = {},
			Threads = {},
			Store = nil,
		}, Api)
	end

	local function JoinArguments(...: any): string
		local Parts = {}
		for Index = 1, select("#", ...) do
			Parts[Index] = tostring((select(Index, ...)))
		end
		return table.concat(Parts, " ")
	end

	function Api:Log(...: any)
		if Extension.Config.Debug then
			Library:Alert(`[{self.Id}] {JoinArguments(...)}`)
		end
	end

	function Api:Warn(...: any)
		Library:Alert(`[{self.Id}] {JoinArguments(...)}`)
	end

	function Api:Report(Problem: any)
		Extension:Report(self.Id, Problem)
	end

	function Api:Guard(Callback: (...any) -> ...any, ...: any): (boolean, any)
		local Success, Result = pcall(Callback, ...)
		if not Success then
			self:Report(Result)
		end
		return Success, Result
	end

	function Api:Track(Item: any, Label: string?): any
		assert(self.Alive, `[{self.Id}] Track - extension is no longer active`)
		table.insert(self.Items, { Item = Item, Label = Label or "resource" })
		return Item
	end

	function Api:Untrack(Item: any): boolean
		for Index = #self.Items, 1, -1 do
			if self.Items[Index].Item == Item then
				table.remove(self.Items, Index)
				return true
			end
		end
		return false
	end

	function Api:OnUnload(Callback: () -> ()): () -> ()
		return self:Track(Callback, "unload-hook")
	end

	function Api:Connect(Signal: any, Callback: Callback): any
		local Connection = Signal:Connect(function(...)
			local Success, Problem = pcall(Callback, ...)
			if not Success then
				self:Report(Problem)
			end
		end)
		return self:Track(Connection, "connection")
	end

	function Api:Heartbeat(Callback: (DeltaTime: number) -> ()): any
		return self:Connect(Heartbeat, Callback)
	end

	function Api:Spawn(Callback: Callback, ...: any): thread
		local Arguments = table.pack(...)
		local Thread: thread

		Thread = task.spawn(function()
			self:Guard(Callback, table.unpack(Arguments, 1, Arguments.n))
			if Thread then
				self.Threads[Thread] = nil
			end
		end)

		if coroutine.status(Thread) ~= "dead" then
			self.Threads[Thread] = true
		end

		return Thread
	end

	function Api:Delay(Seconds: number, Callback: Callback, ...: any): thread
		local Arguments = table.pack(...)
		local Thread: thread

		Thread = task.delay(Seconds, function()
			self.Threads[Thread] = nil
			self:Guard(Callback, table.unpack(Arguments, 1, Arguments.n))
		end)

		self.Threads[Thread] = true
		return Thread
	end

	function Api:Every(Interval: number, Callback: () -> ()): thread
		return self:Spawn(function()
			while self.Alive do
				self:Guard(Callback)
				task.wait(Interval)
			end
		end)
	end

	function Api:Throttle(Interval: number, Callback: Callback): Callback
		local LastCall = 0
		return function(...)
			local Now = os.clock()
			if Now - LastCall >= Interval then
				LastCall = Now
				Callback(...)
			end
		end
	end

	function Api:Debounce(Interval: number, Callback: Callback): Callback
		local Pending: thread? = nil
		return function(...)
			local Arguments = table.pack(...)
			if Pending then
				task.cancel(Pending)
			end
			Pending = task.delay(Interval, function()
				Pending = nil
				Callback(table.unpack(Arguments, 1, Arguments.n))
			end)
		end
	end

	function Api:Create(ClassName: string, Properties: Dict?, Children: { Instance }?): any
		return self:Track(self.Creator.New(ClassName, Properties, Children), ClassName)
	end

	function Api:Themed(Object: Instance, Properties: { [string]: string }): Instance
		return self.Creator.AddThemeObject(Object, Properties)
	end

	function Api:Tween(Object: Instance, Time: number, Goal: Dict, Style: Enum.EasingStyle?, Direction: Enum.EasingDirection?): Tween
		return self.Creator.Tween(Object, Time, Goal, Style, Direction)
	end

	function Api:Icon(Image: ImageLabel | ImageButton, Name: (string | number)?, Variant: string?, Size: number?): boolean
		return ApplyIcon(Image, Name, Variant, Size)
	end

	function Api:Layer(Name: string, Order: number?): ScreenGui
		local Key = `{self.Id}.{Name}`
		local Layer = Library:CreateLayer(Key, Order)
		self:Track(function()
			Library:RemoveLayer(Key)
		end, "layer")
		return Layer
	end

	function Api:GetWindow(): any
		return Library.Window
	end

	function Api:RequireWindow(Caller: string): any
		local Window = Library.Window
		assert(Window, `[{self.Id}] {Caller} - no window yet, use :OnWindow() or :WaitForWindow()`)
		return Window
	end

	function Api:OnWindow(Callback: (Window: any) -> ())
		local Window = Library.Window
		if Window then
			self:Guard(Callback, Window)
			return
		end
		self:Connect(Library.Events.WindowCreated, Callback)
	end

	function Api:WaitForWindow(Timeout: number?): any
		local Started = os.clock()
		while self.Alive and not Library.Window do
			if Timeout and os.clock() - Started >= Timeout then
				return nil
			end
			task.wait()
		end
		return Library.Window
	end

	function Api:Tab(Config: Dict): any
		assert(type(Config) == "table" and Config.Title, `[{self.Id}] Tab - Title is required`)

		local Window = self:RequireWindow("Tab")
		local Parent = Config.Parent

		if type(Parent) == "string" then
			local Found = Library:GetTab(Parent)
			assert(Found, `[{self.Id}] Tab - parent "{Parent}" was not found`)
			Parent = Found
		end

		local Placement = string.lower(tostring(Config.Placement or (if Parent then "sub" else "sidebar")))
		local Final = table.clone(Config)
		Final.Id = Final.Id or `{self.Id}.{Config.Title}`
		Final.Parent = nil

		local Tab: any

		if Placement == "sub" then
			assert(Parent and Parent.Kind == "Header", `[{self.Id}] Tab - sub tabs need a Header parent`)
			Tab = Parent:AddTab(Final)
		elseif string.find(Placement, "header") then
			Tab = Window:AddTabInHeader(Final)
		else
			Final.Placement = "sidebar"
			Tab = Window:AddTab(Final)
		end

		self:Track(Tab, "tab")

		if type(Config.Build) == "function" then
			self:Guard(Config.Build, Tab, self)
		end

		if Config.Select then
			Tab:Select()
		end

		return Tab
	end

	function Api:Page(Config: Dict): (any, GuiObject)
		local Final = table.clone(Config)
		Final.Raw = true

		local Tab = self:Tab(Final)
		return Tab, Tab.Page
	end

	function Api:Section(Tab: any, Title: string, Config: Dict?): any
		return self:Track(Tab:AddSection(Title, Config), "section")
	end

	function Api:BarButton(Config: Dict): any
		return self:Track(self:RequireWindow("BarButton"):AddBarButtonAction(Config), "bar-button")
	end

	function Api:BarToggle(Config: Dict): any
		return self:Track(self:RequireWindow("BarToggle"):AddBarButtonToggle(Config), "bar-toggle")
	end

	function Api:Menu(Config: Dict): any
		return self:Track(self:RequireWindow("Menu"):Menu(Config), "menu")
	end

	function Api:Dialog(Config: Dict): any
		return self:RequireWindow("Dialog"):Dialog(Config)
	end

	function Api:Modal(Config: Dict): any
		return self:RequireWindow("Modal"):Modal(Config)
	end

	function Api:Notify(Config: (string | Dict), Duration: number?): any
		local Final: Dict = if type(Config) == "string"
			then { Content = Config, Duration = Duration }
			else table.clone(Config)

		Final.Title = Final.Title or self.Record.Name
		Final.Duration = Final.Duration or 4
		return Library:Notify(Final)
	end

	function Api:Element(Name: string, Definition: ElementDefinition): ElementEntry
		local Entry = Extension:RegisterElement(Name, Definition, self.Id)
		self:Track(function()
			if Extension.ElementTypes[Name] == Entry then
				Extension:UnregisterElement(Name, true)
			end
		end, "element")
		return Entry
	end

	function Api:Middleware(Callback: MiddlewareFn): () -> ()
		local Remove = Extension:AddMiddleware(Callback)
		self:Track(Remove, "middleware")
		return Remove
	end

	function Api:MiddlewareFor(ElementName: string, Callback: MiddlewareFn): () -> ()
		local Remove = Extension:AddMiddlewareFor(ElementName, Callback)
		self:Track(Remove, "middleware-scoped")
		return Remove
	end

	function Api:OnElementBuilt(ElementName: string?, Callback: (Context: ElementContext, Object: any) -> ()): () -> ()
		local Remove = Extension:AddHook("AfterBuild", ElementName, Callback)
		self:Track(Remove, "hook")
		return Remove
	end

	function Api:OnElementDestroying(ElementName: string?, Callback: (Object: any) -> ()): () -> ()
		local Remove = Extension:AddHook("BeforeDestroy", ElementName, Callback)
		self:Track(Remove, "hook")
		return Remove
	end

	function Api:Font(Name: string, Path: string): any
		local Family = Library:AddFontFamily(Name, Path)
		self:Track(function()
			Library:RemoveFontFamily(Name)
		end, "font")
		return Family
	end

	function Api:IconPack(Name: string, Config: Dict): any
		return Library:RegisterIconPack(Name, Config)
	end

	function Api:On(Event: string, Handler: Callback): () -> ()
		return self:Track(EventBus:On(Event, Handler), "bus-listener")
	end

	function Api:Once(Event: string, Handler: Callback): () -> ()
		return self:Track(EventBus:Once(Event, Handler), "bus-listener-once")
	end

	function Api:Emit(Event: string, ...: any)
		EventBus:Emit(Event, ...)
	end

	function Api:OnLibrary(Name: string, Handler: Callback): any
		return self:Track(Library:On(Name, Handler), "library-event")
	end

	function Api:EmitLibrary(Name: string, ...: any)
		Library:Emit(Name, ...)
	end

	function Api:Capability(Name: string)
		local Record = self.Record
		if not table.find(Record.Capabilities, Name) then
			table.insert(Record.Capabilities, Name)
		end
	end

	function Api:HasCapability(ExtensionId: string, Name: string): boolean
		return Extension:ExtensionHasCapability(ExtensionId, Name)
	end

	function Api:Patch(Target: Dict, Method: string, Wrapper: (...any) -> ...any): () -> ()
		assert(type(Target) == "table", `[{self.Id}] Patch - Target must be a table`)

		local Original = Target[Method]
		assert(type(Original) == "function", `[{self.Id}] Patch - "{Method}" is not a function`)

		local Own = rawget(Target, Method)
		local Replacement = function(...)
			return Wrapper(Original, ...)
		end
		Target[Method] = Replacement

		return self:Track(function()
			if rawget(Target, Method) == Replacement then
				Target[Method] = Own
			end
		end, "patch")
	end

	function Api:Command(Name: string, Config: any): Dict
		local Command = Extension:RegisterCommand(Name, Config, self.Id)
		self:Track(function()
			Extension:UnregisterCommand(Name)
		end, "command")
		return Command
	end

	function Api:Keybind(Key: (Enum.KeyCode | string), Callback: (Input: InputObject) -> ()): any
		local Success, Code = pcall(function()
			return if typeof(Key) == "EnumItem" then Key else Enum.KeyCode[Key]
		end)
		assert(Success and Code, `[{self.Id}] Keybind - unknown key "{tostring(Key)}"`)

		return self:Connect(UserInputService.InputBegan, function(Input: InputObject, Processed: boolean)
			if Processed or UserInputService:GetFocusedTextBox() then
				return
			end
			if Input.KeyCode == Code then
				Callback(Input)
			end
		end)
	end

	function Api:Storage(): any
		if not self.Store then
			EnsureFolder(Extension.DataFolder)
			self.Store = self:Track(Storage.new(`{Extension.DataFolder}/{self.Id}.json`), "storage")
		end
		return self.Store
	end

	function Api:Fetch(Url: string): string
		local Network = Library.Services and Library.Services.Network
		if Network then
			local Response = Network.Get(Url)
			assert(Response.Success, `[{self.Id}] Fetch - {tostring(Response.Error)}`)
			return Response.Body
		end

		local Success, Result = pcall(function()
			return game:HttpGet(Url)
		end)
		assert(Success, `[{self.Id}] Fetch - {tostring(Result)}`)
		return Result
	end

	function Api:Service(Name: string): any
		local Service = Library:GetService(Name)
		assert(Service, `[{self.Id}] Service - "{Name}" is not registered`)
		return Service
	end

	function Api:Helper(Name: string): any
		return Library:GetHelper(Name)
	end

	function Api:Export(Name: string, Value: any): any
		self.Record.Exports[Name] = Value
		return Value
	end

	function Api:Import(Id: string, Name: string?): any
		local Exports = Extension:Require(Id)
		return if Name ~= nil then Exports[Name] else Exports
	end

	function Api:State(Initial: any): ReactiveState
		return CreateReactiveState(Initial)
	end

	function Api:Dispose()
		if not self.Alive then
			return
		end
		self.Alive = false

		for Thread in self.Threads do
			pcall(task.cancel, Thread)
		end
		table.clear(self.Threads)

		for Index = #self.Items, 1, -1 do
			local Entry = self.Items[Index]
			local Success, Problem = pcall(Release, Entry.Item)
			if not Success then
				Extension:Report(self.Id, `cleanup failed for {Entry.Label}: {tostring(Problem)}`)
			end
			self.Items[Index] = nil
		end
	end

	Extension.Version = "5.0.0"
	Extension.ApiVersion = ApiVersion
	Extension.Folder = "Fluent/Elements"
	Extension.ExtensionFolder = "Fluent/Extensions"
	Extension.DataFolder = "Fluent/Extensions/Data"
	Extension.Config = { Notify = true, Debug = false }
	Extension.Library = Library
	Extension.SaveManager = SaveManager
	Extension.Internals = Library.Internals
	Extension.EventBus = EventBus
	Extension.Active = false

	Extension.ElementTypes = {} :: { [string]: ElementEntry }
	Extension.Records = {} :: { [string]: ExtensionRecord }
	Extension.LoadOrder = {} :: { string }
	Extension.Commands = {} :: { [string]: Dict }
	Extension.LiveContexts = setmetatable({}, { __mode = "k" })
	Extension.GlobalMiddleware = {} :: { MiddlewareFn }
	Extension.ScopedMiddleware = {} :: { [string]: { MiddlewareFn } }
	Extension.Hooks = {} :: { [string]: { { Name: string?, Callback: Callback } } }

	function Extension:Debug(...)
		if self.Config.Debug then
			Library:Alert("[Extension Debug] " .. JoinArguments(...))
		end
	end

	function Extension:Report(Id: string, Problem: any)
		if self.Config.Notify and Library.Window and not Library:IsUnloaded() then
			pcall(Library.InternalNotify, Library, {
				Title = "Extension Error",
				Content = Id,
				SubContent = string.sub(tostring(Problem), 1, 160),
				Duration = 5,
				Type = "Error",
			})
		end
	end

	function Extension:Activate()
		if self.Active then
			return
		end
		self.Active = true

		Library.Extension = self
		Library:OnUnload(function()
			self:Shutdown()
		end)

		for _, Entry in self.ElementTypes do
			self:InstallParser(Entry)
		end

		self:Debug("Activated")
	end

	function Extension:SetLibrary(LibraryObject: any)
		assert(type(LibraryObject) == "table" and type(LibraryObject.RegisterElement) == "function", "Extension - SetLibrary expects the Library object")
		self.Library = LibraryObject
	end

	function Extension:Configure(Options: Dict)
		for Key, Value in Options do
			self.Config[Key] = Value
		end
	end

	function Extension:SetFolder(Folder: string)
		self.Folder = Folder
	end

	function Extension:SetExtensionFolder(Folder: string)
		self.ExtensionFolder = Folder
	end

	function Extension:SetDataFolder(Folder: string)
		self.DataFolder = Folder
	end

	function Extension:InstallParser(Entry: ElementEntry)
		if self.Active and Entry.Parser then
			Entry.PreviousParser = SaveManager:RegisterParser(Entry.Name, Entry.Parser)
		end
	end

	function Extension:RemoveParser(Entry: ElementEntry)
		if self.Active and Entry.Parser and SaveManager.Parser[Entry.Name] == Entry.Parser then
			SaveManager:UnregisterParser(Entry.Name, Entry.PreviousParser)
		end
	end

	function Extension:AddMiddleware(Callback: MiddlewareFn): () -> ()
		table.insert(self.GlobalMiddleware, Callback)

		return function()
			local Index = table.find(self.GlobalMiddleware, Callback)
			if Index then
				table.remove(self.GlobalMiddleware, Index)
			end
		end
	end

	function Extension:AddMiddlewareFor(ElementName: string, Callback: MiddlewareFn): () -> ()
		if not self.ScopedMiddleware[ElementName] then
			self.ScopedMiddleware[ElementName] = {}
		end

		table.insert(self.ScopedMiddleware[ElementName], Callback)

		return function()
			local List = self.ScopedMiddleware[ElementName]
			if not List then
				return
			end

			local Index = table.find(List, Callback)
			if Index then
				table.remove(List, Index)
			end
		end
	end

	function Extension:BuildMiddlewareStack(ElementName: string): { MiddlewareFn }
		local Stack: { MiddlewareFn } = {}

		for _, Middleware in self.GlobalMiddleware do
			table.insert(Stack, Middleware)
		end

		local Scoped = self.ScopedMiddleware[ElementName]
		if Scoped then
			for _, Middleware in Scoped do
				table.insert(Stack, Middleware)
			end
		end

		return Stack
	end

	function Extension:AddHook(HookName: string, ElementName: string?, Callback: Callback): () -> ()
		if not self.Hooks[HookName] then
			self.Hooks[HookName] = {}
		end

		local Entry = { Name = ElementName, Callback = Callback }
		table.insert(self.Hooks[HookName], Entry)

		return function()
			local List = self.Hooks[HookName]
			if not List then
				return
			end

			local Index = table.find(List, Entry)
			if Index then
				table.remove(List, Index)
			end
		end
	end

	function Extension:FireHook(HookName: string, ElementName: string, ...)
		local List = self.Hooks[HookName]
		if not List then
			return
		end

		for _, Entry in List do
			if Entry.Name == nil or Entry.Name == ElementName then
				task.spawn(Entry.Callback, ...)
			end
		end
	end

	function Extension:RegisterElement(Name: string, Definition: ElementDefinition, Owner: string?): ElementEntry
		self:Activate()

		assert(type(Name) == "string" and Name:match("^[%a_][%w_]*$"), "Extension - invalid element name: " .. tostring(Name))
		assert(type(Definition) == "table" and type(Definition.Build) == "function", `Extension - {Name} needs a Build function`)

		if self.ElementTypes[Name] then
			self:UnregisterElement(Name)
		end

		local Manager = self

		local Entry: ElementEntry = {
			Name = Name,
			Method = `Add{Name}`,
			Definition = Definition,
			Owner = Owner,
			Component = { __type = Name, ClassType = Definition.ClassType or "Element", NoIdx = Definition.NoIdx },
		}

		local function Instantiate(Host: any, Idx: string?, Config: Dict?): any
			local Internals = Manager.Internals
			local Merged: Dict = {}

			for Key, Value in Definition.Defaults or {} do
				Merged[Key] = Value
			end
			for Key, Value in Config or {} do
				Merged[Key] = Value
			end

			if Definition.TitleOptional ~= true then
				assert(Merged.Title ~= nil, `{Name} - Title is required`)
			end

			if Merged.Title == nil then
				Merged.Title = ""
			end

			local Row = Internals.MakeRow(Host, Merged, Definition.Hover == true)

			if Merged.Title == "" then
				Row.TitleRow.Visible = false
			end

			local Object: Dict = {
				Value = Merged.Default,
				Callback = Merged.Callback or Noop,
				Type = Name,
				Idx = Idx,
				Variant = Merged.Variant,
				Owner = Owner,
			}

			local Context = setmetatable({
				Type = Name,
				Idx = Idx,
				Config = Merged,
				Object = Object,
				Alive = true,

				Library = Library,
				Internals = Internals,
				Creator = Internals.Creator,
				Components = Internals.Components,
				New = Internals.New,
				Row = Row,
				Holder = Host.Holder,
				Tab = Host.Tab,

				Connections = {},
				Cleanups = {},
				Extension = Manager,
			}, ContextPrototype)

			BindRow(Object, Row)
			Manager.LiveContexts[Context] = true

			local MiddlewareStack = Manager:BuildMiddlewareStack(Name)
			local Success, Result = pcall(function()
				if #MiddlewareStack > 0 then
					return RunMiddlewarePipeline(MiddlewareStack, Context :: any, Definition.Build)
				end
				return Definition.Build(Context :: any)
			end)

			if not Success then
				Context:Dispose()
				pcall(function()
					Row:Destroy()
				end)
				error(`{Name} - Build failed: {tostring(Result)}`, 0)
			end

			if type(Result) == "table" and Result ~= Object then
				Object = Result
				Context.Object = Object
				Object.Callback = Object.Callback or Merged.Callback or Noop
				BindRow(Object, Row)
			end

			Object.Type = Name
			Object.ClassType = Definition.ClassType or "Element"
			Object.Idx = Idx
			Object.Owner = Owner

			if Object.OnChanged == nil then
				function Object:OnChanged(Callback: (...any) -> ())
					Object.Changed = Callback
					Callback(Object.Value)
				end
			end

			Manager:FireHook("AfterBuild", Name, Context, Object)

			local UserDestroy = Object.Destroy

			function Object:Destroy()
				if Object.Destroyed then
					return
				end
				Object.Destroyed = true

				Manager:FireHook("BeforeDestroy", Name, Object)

				if type(Definition.BeforeDestroy) == "function" then
					pcall(Definition.BeforeDestroy, Object)
				end

				if type(UserDestroy) == "function" then
					pcall(UserDestroy, Object)
				end

				Context:Dispose()
				pcall(function()
					Row:Destroy()
				end)

				if Idx and Library.Options[Idx] == Object then
					Library.Options[Idx] = nil
				end
			end

			if Idx then
				local Previous = Library.Options[Idx]
				if Previous and Previous ~= Object and type(Previous.Destroy) == "function" then
					pcall(Previous.Destroy, Previous)
				end
				Library.Options[Idx] = Object
			end

			return Object
		end

		if Definition.NoIdx then
			function Entry.Component.New(Host: any, Config: Dict?)
				return Instantiate(Host, nil, Config)
			end
		else
			function Entry.Component.New(Host: any, Idx: string, Config: Dict?)
				assert(type(Idx) == "string" and Idx ~= "", `{Name} - Idx is required`)
				return Instantiate(Host, Idx, Config)
			end
		end

		Library:RegisterElement(Entry.Component)
		self.ElementTypes[Name] = Entry

		if Definition.Save then
			Entry.Parser = BuildParser(Name, Definition.Save)
			self:InstallParser(Entry)
		end

		self:Debug("Element registered:", Name, "from", Owner or "manual")
		return Entry
	end

	function Extension:UnregisterElement(Name: string, Purge: boolean?): boolean
		local Entry = self.ElementTypes[Name]
		if not Entry then
			return false
		end

		if Purge then
			for Context in self.LiveContexts do
				if Context.Type == Name and Context.Object and type(Context.Object.Destroy) == "function" then
					pcall(Context.Object.Destroy, Context.Object)
				end
			end
		end

		self:RemoveParser(Entry)
		Library:UnregisterElement(Name)
		self.ElementTypes[Name] = nil
		self:Debug("Element unregistered:", Name)
		return true
	end

	function Extension:HasElement(Name: string): boolean
		return self.ElementTypes[Name] ~= nil
	end

	function Extension:ListElements(): { string }
		local Names: { string } = {}
		for Name in self.ElementTypes do
			table.insert(Names, Name)
		end
		table.sort(Names)
		return Names
	end

	function Extension:GetOption(Idx: string): any
		return Library.Options[Idx]
	end

	function Extension:RegisterCommand(Name: string, Config: any, Owner: string?): Dict
		assert(type(Name) == "string" and Name ~= "", "Extension - command needs a name")

		local Settings: Dict = if type(Config) == "function" then { Callback = Config } else Config
		assert(type(Settings) == "table" and type(Settings.Callback) == "function", `Extension - command "{Name}" needs a Callback`)

		local Command = {
			Name = Name,
			Description = Settings.Description or "",
			Aliases = Settings.Aliases or {},
			Callback = Settings.Callback,
			Owner = Owner,
		}

		self.Commands[string.lower(Name)] = Command
		for _, Alias in Command.Aliases do
			self.Commands[string.lower(Alias)] = Command
		end

		return Command
	end

	function Extension:UnregisterCommand(Name: string): boolean
		local Command = self.Commands[string.lower(Name)]
		if not Command then
			return false
		end

		for Key, Other in self.Commands do
			if Other == Command then
				self.Commands[Key] = nil
			end
		end

		return true
	end

	function Extension:RunCommand(Name: string, ...: any): (boolean, any)
		local Command = self.Commands[string.lower(Name)]
		if not Command then
			return false, `Unknown command: "{Name}"`
		end
		return pcall(Command.Callback, ...)
	end

	function Extension:ListCommands(): { Dict }
		local Seen: { [Dict]: boolean } = {}
		local List: { Dict } = {}

		for _, Command in self.Commands do
			if not Seen[Command] then
				Seen[Command] = true
				table.insert(List, Command)
			end
		end

		table.sort(List, function(A, B)
			return A.Name < B.Name
		end)

		return List
	end

	function Extension:Define(Manifest: ExtensionManifest, AutoEnable: boolean?): ExtensionRecord
		self:Activate()

		assert(type(Manifest) == "table", "Extension - Define needs a manifest table")
		assert(type(Manifest.Id) == "string" and Manifest.Id:match(IdPattern), "Extension - extensions need a valid Id (letters, numbers, _ . -)")
		assert(type(Manifest.Load) == "function", `Extension - {Manifest.Id} needs a Load function`)

		if Manifest.ApiVersion then
			assert(Manifest.ApiVersion <= self.ApiVersion, `Extension - {Manifest.Id} needs Extension API v{Manifest.ApiVersion}, available v{self.ApiVersion}`)
		end

		if self.Records[Manifest.Id] then
			self:Remove(Manifest.Id)
		end

		local Record: ExtensionRecord = {
			Id = Manifest.Id,
			Name = Manifest.Name or Manifest.Id,
			Version = Manifest.Version or "1.0.0",
			Author = Manifest.Author,
			Description = Manifest.Description,
			Tags = Manifest.Tags or {},
			Dependencies = Manifest.Dependencies or {},
			Manifest = Manifest,
			State = "Defined",
			Exports = {},
			Capabilities = {},
		}

		self.Records[Manifest.Id] = Record

		if AutoEnable ~= false and Manifest.AutoEnable ~= false then
			self:Enable(Manifest.Id)
		end

		return Record
	end

	function Extension:Inline(Id: string, Load: (Api: ExtensionApi) -> any?, Unload: ((Api: ExtensionApi) -> ())?): ExtensionRecord
		return self:Define({ Id = Id, Load = Load, Unload = Unload })
	end

	function Extension:Enable(Id: string): (boolean, string?)
		local Record = self.Records[Id]
		assert(Record, `Extension - unknown extension: "{tostring(Id)}"`)

		if Record.State == "Enabled" then
			return true
		end

		if Record.Loading then
			return false, "Extension is already loading or has a circular dependency"
		end

		local function Fail(Reason: string): (boolean, string)
			Record.Loading = false
			Record.State = "Failed"
			Record.Error = Reason
			self:Report(Id, Reason)
			return false, Reason
		end

		Record.Loading = true

		for _, Dependency in Record.Dependencies do
			if not self.Records[Dependency] then
				return Fail(`Dependency not found: "{Dependency}"`)
			end

			local Success, Reason = self:Enable(Dependency)
			if not Success then
				return Fail(`Dependency "{Dependency}" failed: {tostring(Reason)}`)
			end
		end

		local Scoped = Api.new(Record)
		Record.Api = Scoped

		local Success, Result = pcall(Record.Manifest.Load, Scoped)

		if not Success then
			Scoped:Dispose()
			Record.Api = nil
			Record.Exports = {}
			return Fail(tostring(Result))
		end

		if type(Result) == "table" then
			for Key, Value in Result do
				if Record.Exports[Key] == nil then
					Record.Exports[Key] = Value
				end
			end
		end

		Record.Loading = false
		Record.State = "Enabled"
		Record.Error = nil
		table.insert(self.LoadOrder, Id)

		if type(Record.Manifest.OnReady) == "function" then
			task.spawn(function()
				local ReadySuccess, ReadyProblem = pcall(Record.Manifest.OnReady, Scoped)
				if not ReadySuccess then
					self:Report(Id, ReadyProblem)
				end
			end)
		end

		Library:Emit("ExtensionEnabled", Id)
		self:Debug("Extension enabled:", Id, "v" .. Record.Version)
		return true
	end

	function Extension:Disable(Id: string): boolean
		local Record = self.Records[Id]
		if not Record or Record.State ~= "Enabled" then
			return false
		end

		for _, Other in self.Records do
			if Other.State == "Enabled" and table.find(Other.Dependencies, Id) then
				self:Disable(Other.Id)
			end
		end

		local Scoped = Record.Api
		local Manifest = Record.Manifest

		if type(Manifest.OnSuspend) == "function" then
			local Success, Problem = pcall(Manifest.OnSuspend, Scoped)
			if not Success then
				self:Report(Id, Problem)
			end
		end

		if type(Manifest.Unload) == "function" then
			local Success, Problem = pcall(Manifest.Unload, Scoped)
			if not Success then
				self:Report(Id, Problem)
			end
		end

		Scoped:Dispose()
		Record.Api = nil
		Record.State = "Disabled"
		Record.Exports = {}

		local Position = table.find(self.LoadOrder, Id)
		if Position then
			table.remove(self.LoadOrder, Position)
		end

		if not Library:IsUnloaded() then
			Library:Emit("ExtensionDisabled", Id)
		end

		self:Debug("Extension disabled:", Id)
		return true
	end

	function Extension:Remove(Id: string): boolean
		if not self.Records[Id] then
			return false
		end

		self:Disable(Id)
		self.Records[Id] = nil
		return true
	end

	function Extension:Reload(Id: string, Fresh: boolean?): any
		local Record = self.Records[Id]
		assert(Record, `Extension - unknown extension: "{tostring(Id)}"`)

		if type(Record.Manifest.OnResume) == "function" then
			Fresh = true
		end

		local Origin = Record.Origin

		if Fresh and Origin then
			self:Remove(Id)
			if Origin.Kind == "url" then
				return self:LoadUrl(Origin.Value)
			end
			return self:LoadFile(Origin.Value)
		end

		self:Disable(Id)

		local Success = self:Enable(Id)
		if Success and type(Record.Manifest.OnResume) == "function" and Record.Api then
			task.spawn(function()
				local ResumeSuccess, ResumeProblem = pcall(Record.Manifest.OnResume, Record.Api)
				if not ResumeSuccess then
					self:Report(Id, ResumeProblem)
				end
			end)
		end

		return Record
	end

	function Extension:GetExtension(Id: string): ExtensionRecord?
		return self.Records[Id]
	end

	function Extension:IsEnabled(Id: string): boolean
		local Record = self.Records[Id]
		return Record ~= nil and Record.State == "Enabled"
	end

	function Extension:Require(Id: string): Dict
		local Record = self.Records[Id]
		assert(Record, `Extension - unknown extension: "{tostring(Id)}"`)

		if Record.State ~= "Enabled" then
			local Success, Reason = self:Enable(Id)
			assert(Success, `Extension - failed to enable "{Id}": {tostring(Reason)}`)
		end

		return Record.Exports
	end

	function Extension:ExtensionHasCapability(Id: string, Name: string): boolean
		local Record = self.Records[Id]
		return Record ~= nil and table.find(Record.Capabilities, Name) ~= nil
	end

	function Extension:ListExtensions(): { Dict }
		local List: { Dict } = {}

		for _, Record in self.Records do
			table.insert(List, {
				Id = Record.Id,
				Name = Record.Name,
				Version = Record.Version,
				Author = Record.Author,
				Description = Record.Description,
				Tags = table.clone(Record.Tags),
				Dependencies = table.clone(Record.Dependencies),
				Capabilities = table.clone(Record.Capabilities),
				State = Record.State,
				Error = Record.Error,
			})
		end

		table.sort(List, function(A, B)
			return A.Id < B.Id
		end)

		return List
	end

	function Extension:FindByTag(Tag: string): { ExtensionRecord }
		local Result: { ExtensionRecord } = {}

		for _, Record in self.Records do
			if table.find(Record.Tags, Tag) then
				table.insert(Result, Record)
			end
		end

		return Result
	end

	function Extension:Adopt(Result: any, ChunkName: string?, Origin: Dict?): any
		if type(Result) ~= "table" then
			return Result
		end

		if type(Result.Load) == "function" and type(Result.Id) == "string" then
			local Record = self:Define(Result, false)
			Record.Origin = Origin
			if Result.AutoEnable ~= false then
				self:Enable(Result.Id)
			end
			return Record
		end

		if type(Result.Build) == "function" then
			local Name = Result.Name or (ChunkName and ChunkName:match("([^/\\]+)%.lua$"))
			assert(Name, `Extension - definition from {tostring(ChunkName)} needs a Name`)
			return self:RegisterElement(Name, Result)
		end

		return Result
	end

	function Extension:LoadSource(Source: string, ChunkName: string?, Origin: Dict?): any
		local Chunk, Problem = loadstring(Source, if ChunkName then "=" .. ChunkName else nil)
		if not Chunk then
			error(`Extension - {tostring(ChunkName or "chunk")}: {tostring(Problem)}`, 0)
		end
		return self:Adopt(Chunk(self), ChunkName, Origin)
	end

	function Extension:LoadFile(Path: string): any
		return self:LoadSource(readfile(Path), Path, { Kind = "file", Value = Path })
	end

	function Extension:LoadUrl(Url: string, ChunkName: string?): any
		local Success, Source = pcall(function()
			return game:HttpGet(Url)
		end)
		assert(Success, `Extension - failed to fetch {Url}: {tostring(Source)}`)
		return self:LoadSource(Source, ChunkName or Url, { Kind = "url", Value = Url })
	end

	function Extension:LoadFolder(Folder: string?): { string }
		Folder = Folder or self.Folder

		local Loaded: { string } = {}

		if type(isfolder) ~= "function" or not isfolder(Folder) then
			return Loaded
		end

		local Files: { string } = {}

		for _, Path in listfiles(Folder) do
			local Normal = string.gsub(Path, "\\", "/")
			if string.lower(Normal):match("%.lua$") then
				table.insert(Files, Normal)
			elseif isfolder(Normal) and isfile(`{Normal}/Main.lua`) then
				table.insert(Files, `{Normal}/Main.lua`)
			end
		end

		table.sort(Files)

		for _, File in Files do
			local Success, Result = pcall(self.LoadFile, self, File)
			if Success then
				table.insert(Loaded, if type(Result) == "table" then (Result.Name or Result.Id or File) else File)
			else
				Extension:Report("Extension", Result)
			end
		end

		return Loaded
	end

	function Extension:LoadExtensions(Folder: string?): { string }
		return self:LoadFolder(Folder or self.ExtensionFolder)
	end

	function Extension:Shutdown()
		for Index = #self.LoadOrder, 1, -1 do
			local Id = self.LoadOrder[Index]
			if Id then
				self:Disable(Id)
			end
		end

		for Context in self.LiveContexts do
			Context:Dispose()
		end

		self:Debug("Shutdown complete")
	end
end

-- This is the most important thing to return all built-in managers 
-- !DO NOT DELETE THIS CODE I WILL KILL YOU IF YOU DELETE THIS!
local Managers = {
	SaveManager = SaveManager,
	InterfaceManager = InterfaceManager,
	Extension = Extension,
}

local Owners = {}

for Name, Manager in next, Managers do
	for Key in next, Manager do
		Owners[Key] = if Owners[Key] == nil then Name else false
	end
end

local function Resolve(Slot, Name)
	local Target = Managers[Name]
	Slot.Target = Target

	for _, Call in next, Slot.Queue do
		if Call.Method then
			local Method = Target[Call.Key]
			if type(Method) == "function" then
				Method(Target, table.unpack(Call.Arguments, 1, Call.Arguments.n))
			end
		else
			Target[Call.Key] = Call.Value
		end
	end
	table.clear(Slot.Queue)

	if type(Target.Activate) == "function" then
		Target:Activate()
	end
end

local function Pending(Slot, Proxy, Key)
	local Stored = Slot.Values[Key]
	if Stored ~= nil then
		return Stored
	end

	for _, Manager in next, Managers do
		if type(Manager[Key]) == "function" then
			return function(Self, ...)
				table.insert(Slot.Queue, { Method = true, Key = Key, Arguments = table.pack(...) })
			end
		end
	end

	local Shared
	for _, Manager in next, Managers do
		local Value = Manager[Key]
		if Value ~= nil then
			if Shared ~= nil and Shared ~= Value then
				return nil
			end
			Shared = Value
		end
	end

	return Shared
end

local function CreateSlot()
	local Slot = { Queue = {}, Values = {} }
	local Proxy = {}

	setmetatable(Proxy, {
		__index = function(_, Key)
			if not Slot.Target then
				local Owner = Owners[Key]
				if not Owner then
					return Pending(Slot, Proxy, Key)
				end
				Resolve(Slot, Owner)
			end

			local Target = Slot.Target
			local Value = Target[Key]

			if type(Value) == "function" then
				return function(Self, ...)
					return Value(if Self == Proxy then Target else Self, ...)
				end
			end

			return Value
		end,
		__newindex = function(_, Key, Value)
			if not Slot.Target then
				local Owner = Owners[Key]
				if not Owner then
					Slot.Values[Key] = Value
					table.insert(Slot.Queue, { Key = Key, Value = Value })
					return
				end
				Resolve(Slot, Owner)
			end

			Slot.Target[Key] = Value
		end,
	})

	return Proxy
end

return Library, CreateSlot(), CreateSlot(), CreateSlot()
