local Fluent, SaveManager, InterfaceManager, FloatingButtonManager = loadstring(readfile("Main.lua"))()

local Window = Fluent:CreateWindow({
	Title = "Fluent-Modded",
	SubTitle = "Example Script",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 580),
	Acrylic = true,
	Theme = "Azure",
	MinimizeKey = Enum.KeyCode.LeftControl,
})

local Tabs = {
	Main = Window:AddTab({ Title = "Main", Icon = "home" }),
	Interface = Window:AddTab({ Title = "Interface", Icon = "settings" }),
	Configs = Window:AddTab({ Title = "Configs", Icon = "save" }),
	FloatingButtons = Window:AddTab({ Title = "Floating Buttons", Icon = "circle-dot" }),
}

local Section = Tabs.Main:AddSection("Basic")

Section:AddButton({
	Title = "Button",
	Description = "Runs a callback",
	Callback = function()
		Fluent:Notify({
			Title = "Notification",
			Content = "Button pressed",
			Duration = 5,
		})
	end,
})

local Toggle = Section:AddToggle("MyToggle", {
	Title = "Toggle",
	Description = "Enable or disable something",
	Default = false,
})
Toggle:OnChanged(function()
	print(Toggle.Value)
end)

local Slider = Section:AddSlider("MySlider", {
	Title = "Slider",
	Description = "Pick a number",
	Default = 50,
	Min = 0,
	Max = 100,
	Rounding = 0,
	Callback = function(Value)
		print(Value)
	end,
})

local Dropdown = Section:AddDropdown("MyDropdown", {
	Title = "Dropdown",
	Description = "Pick a value",
	Values = { "Option 1", "Option 2", "Option 3" },
	Multi = false,
	Default = 1,
	Callback = function(Value)
		print(Value)
	end,
})

local Colorpicker = Section:AddColorpicker("MyColorpicker", {
	Title = "Colorpicker",
	Description = "Pick a color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		print(Value)
	end,
})

local Keybind = Section:AddKeybind("MyKeybind", {
	Title = "Keybind",
	Description = "Bind a key",
	Mode = "Toggle",
	Default = "LeftAlt",
	Callback = function(Value)
		print(Value)
	end,
})

local Input = Section:AddInput("MyInput", {
	Title = "Input",
	Description = "Type something",
	Default = "",
	Placeholder = "Enter text",
	Numeric = false,
	Finished = false,
	Callback = function(Value)
		print(Value)
	end,
})

Section:AddParagraph({
	Title = "Paragraph",
	Content = "This is a paragraph element used to display static text or information.",
})

InterfaceManager:SetLibrary(Fluent)
SaveManager:SetLibrary(Fluent)
FloatingButtonManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("FluentModedExample")
SaveManager:SetFolder("FluentModedExample")
FloatingButtonManager:SetFolder("FluentModedExample/FloatingButtons")

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:BuildInterfaceSection(Tabs.Interface)
SaveManager:BuildConfigSection(Tabs.Configs)
FloatingButtonManager:BuildConfigSection(Tabs.FloatingButtons)

SaveManager:LoadAutoloadConfig()
FloatingButtonManager:LoadAutoloadConfig()

Fluent:Notify({
	Title = "Interface",
	Content = "Example loaded",
	SubContent = "Everything initialized successfully",
	Duration = 5,
})
