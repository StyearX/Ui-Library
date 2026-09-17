local Fluent, SaveManager, InterfaceManager = loadstring(readfile("Fluent/main.lua"))()

local Window = Fluent:CreateWindow({
	Title = "Title btw  " .. Fluent.Version,
	SubTitle = "Subtitle (UI by StyearX)",
	TabWidth = 130,
	Size = UDim2.fromOffset(580, 580),
	Acrylic = true,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl,
	Search = true,
	UserInfo = {
		Position = "Bottom",
		Icon = "rbxthumb://type=AvatarHeadShot&id=1&w=420&h=420",
		Title = "Custom Title",
		Subtitle = "Custom Subtitle",
	},
})

local GeneralSection = Window:AddSection({ Title = "General" })
local ApiSection = Window:AddSection({ Title = "Window API", Collapsible = true })

local Tabs = {
	Layout = GeneralSection:AddTab({ Title = "Layout", Icon = "layout-grid" }),
	Core = GeneralSection:AddTab({ Title = "Core", Icon = "component" }),
	Method = GeneralSection:AddTab({ Title = "Method", Icon = "book-open" }),
	Api = ApiSection:AddTab({ Title = "Window API", Icon = "terminal" }),
	NoIconTab = ApiSection:AddTab({ Title = "No Icon Tab" }),
	Settings = Window:AddTabInHeader({ Title = "Settings", Icon = "settings" }),
	NoIconHeader = Window:AddTabInHeader({ Title = "No Icon Header" }),
}

Window:SelectTab(1)

local Options = Fluent.Options

do
	Tabs.Layout:AddParagraph({
		Title = "VStack & HStack",
		Content = "Every element and its variants arranged with AddHStack and AddVStack."
	})

	local RootHStack = Tabs.Layout:AddHStack({ Gap = 10 })

	local LeftVStack = RootHStack:AddVStack({ Gap = 6 })

	LeftVStack:AddButton({
		Title = "Button",
		Callback = function()
			print("Stack button pressed")
		end
	})

	LeftVStack:AddToggle("StackToggle", { Title = "Toggle", Default = false })

	LeftVStack:AddSlider("StackSlider", {
		Title = "Slider",
		Min = 0,
		Max = 100,
		Default = 50,
		Rounding = 0,
	})

	LeftVStack:AddDropdown("StackDropdown", {
		Title = "Dropdown",
		Values = { "1", "2", "3" },
		Default = 1,
	})

	LeftVStack:AddDropdown("StackDropdownSearch", {
		Title = "Dropdown With Search",
		Search = true,
		Values = { "1", "2", "3", "4", "5" },
		Default = 1,
	})

	LeftVStack:AddDropdown("StackDropdownMulti", {
		Title = "Dropdown With Multi",
		Multi = true,
		Values = { "1", "2", "3" },
		Default = { "1" },
	})

	LeftVStack:AddDropdown("StackDropdownSearchMulti", {
		Title = "Dropdown With Search And Multi",
		Search = true,
		Multi = true,
		Values = { "1", "2", "3", "4", "5" },
		Default = { "1", "3" },
	})

	local RightVStack = RootHStack:AddVStack({ Gap = 6 })

	RightVStack:AddColorpicker("StackColorpicker", {
		Title = "Color Picker",
		Default = Color3.fromRGB(96, 205, 255),
	})

	RightVStack:AddColorpicker("StackColorpickerTransparency", {
		Title = "Color Picker With Transparency",
		Transparency = 0,
		Default = Color3.fromRGB(96, 205, 255),
	})

	RightVStack:AddGradientPicker("StackGradientPicker", {
		Title = "Gradient Picker",
		Default = ColorSequence.new(Color3.fromRGB(255, 0, 128), Color3.fromRGB(0, 128, 255)),
		Rotation = 90,
	})

	RightVStack:AddKeybind("StackKeybindHold", {
		Title = "Keybind Hold",
		Mode = "Hold",
		Default = "Q",
	})

	RightVStack:AddKeybind("StackKeybindToggle", {
		Title = "Keybind Toggle",
		Mode = "Toggle",
		Default = "F",
	})

	RightVStack:AddInput("StackInput", {
		Title = "Input",
		Placeholder = "Type here",
	})

	RightVStack:AddImage({
		Image = "rbxassetid://105249527747322",
		AspectRatio = "16:9",
		Radius = 8,
	})

	Tabs.Layout:AddParagraph({
		Title = "Group",
		Content = "Every element and its variants arranged with AddGroup."
	})

	local LayoutGroup = Tabs.Layout:AddGroup({ Columns = 2, Gap = 10 })

	local GroupLeft = LayoutGroup:AddElement()

	GroupLeft:AddButton({
		Title = "Button",
		Callback = function()
			print("Group button pressed")
		end
	})

	GroupLeft:AddToggle("GroupToggle", { Title = "Toggle", Default = false })

	GroupLeft:AddSlider("GroupSlider", {
		Title = "Slider",
		Min = 0,
		Max = 100,
		Default = 50,
		Rounding = 0,
	})

	GroupLeft:AddDropdown("GroupDropdown", {
		Title = "Dropdown",
		Values = { "A", "B", "C" },
		Default = 1,
	})

	GroupLeft:AddDropdown("GroupDropdownSearch", {
		Title = "Dropdown With Search",
		Search = true,
		Values = { "A", "B", "C", "D", "E" },
		Default = 1,
	})

	GroupLeft:AddDropdown("GroupDropdownMulti", {
		Title = "Dropdown With Multi",
		Multi = true,
		Values = { "A", "B", "C" },
		Default = { "B" },
	})

	GroupLeft:AddDropdown("GroupDropdownSearchMulti", {
		Title = "Dropdown With Search And Multi",
		Search = true,
		Multi = true,
		Values = { "A", "B", "C", "D", "E" },
		Default = { "A", "D" },
	})

	local GroupRight = LayoutGroup:AddElement()

	GroupRight:AddColorpicker("GroupColorpicker", {
		Title = "Color Picker",
		Default = Color3.fromRGB(255, 140, 90),
	})

	GroupRight:AddColorpicker("GroupColorpickerTransparency", {
		Title = "Color Picker With Transparency",
		Transparency = 0,
		Default = Color3.fromRGB(255, 140, 90),
	})

	GroupRight:AddGradientPicker("GroupGradientPicker", {
		Title = "Gradient Picker",
		Default = ColorSequence.new(Color3.fromRGB(255, 170, 0), Color3.fromRGB(140, 0, 255)),
		Rotation = 45,
	})

	GroupRight:AddKeybind("GroupKeybindHold", {
		Title = "Keybind Hold",
		Mode = "Hold",
		Default = "E",
	})

	GroupRight:AddKeybind("GroupKeybindToggle", {
		Title = "Keybind Toggle",
		Mode = "Toggle",
		Default = "R",
	})

	GroupRight:AddInput("GroupInput", {
		Title = "Input",
		Placeholder = "Search...",
	})

	GroupRight:AddImage({
		Image = "rbxassetid://116875029841325",
		AspectRatio = "1:1",
		Radius = 8,
	})
end

do
	Tabs.Core:AddParagraph({
		Title = "Button",
		Content = "Runs a callback when clicked."
	})

	Tabs.Core:AddButton({
		Title = "Button",
		Description = "Very important button",
		Callback = function()
			print("Core button pressed")
		end
	})

	Tabs.Core:AddParagraph({
		Title = "Toggle",
		Content = "A binary switch between on and off."
	})

	local CoreToggle = Tabs.Core:AddToggle("CoreToggle", { Title = "Toggle", Default = false })

	CoreToggle:OnChanged(function()
		print("Toggle changed:", Options.CoreToggle.Value)
	end)

	Tabs.Core:AddParagraph({
		Title = "Slider",
		Content = "Drags between a minimum and maximum numeric value."
	})

	local CoreSlider = Tabs.Core:AddSlider("CoreSlider", {
		Title = "Slider",
		Min = 0,
		Max = 100,
		Default = 50,
		Rounding = 0,
		Callback = function(Value)
			print("Slider changed:", Value)
		end
	})

	Tabs.Core:AddParagraph({
		Title = "Dropdown",
		Content = "Selects one value from a list."
	})

	local CoreDropdown = Tabs.Core:AddDropdown("CoreDropdown", {
		Title = "Dropdown",
		Values = { "1", "2", "3" },
		Default = 1,
	})

	Tabs.Core:AddParagraph({
		Title = "Dropdown With Search",
		Content = "Filters the value list through a search box."
	})

	local CoreDropdownSearch = Tabs.Core:AddDropdown("CoreDropdownSearch", {
		Title = "Dropdown With Search",
		Search = true,
		Values = { "1", "2", "3", "4", "5", "6", "7" },
		Default = 1,
	})

	Tabs.Core:AddParagraph({
		Title = "Dropdown With Multi",
		Content = "Selects more than one value at once."
	})

	local CoreDropdownMulti = Tabs.Core:AddDropdown("CoreDropdownMulti", {
		Title = "Dropdown With Multi",
		Multi = true,
		Values = { "1", "2", "3", "4" },
		Default = { "1", "3" },
	})

	Tabs.Core:AddParagraph({
		Title = "Dropdown With Search And Multi",
		Content = "Combines the search box with multi-select."
	})

	local CoreDropdownSearchMulti = Tabs.Core:AddDropdown("CoreDropdownSearchMulti", {
		Title = "Dropdown With Search And Multi",
		Search = true,
		Multi = true,
		Values = { "1", "2", "3", "4", "5", "6", "7" },
		Default = { "2", "5" },
	})

	Tabs.Core:AddParagraph({
		Title = "Color Picker",
		Content = "Opens a dialog to pick an RGB color."
	})

	local CoreColorpicker = Tabs.Core:AddColorpicker("CoreColorpicker", {
		Title = "Color Picker",
		Default = Color3.fromRGB(96, 205, 255),
	})

	Tabs.Core:AddParagraph({
		Title = "Color Picker With Transparency",
		Content = "Same dialog, with an added transparency slider."
	})

	local CoreColorpickerTransparency = Tabs.Core:AddColorpicker("CoreColorpickerTransparency", {
		Title = "Color Picker With Transparency",
		Transparency = 0,
		Default = Color3.fromRGB(96, 205, 255),
	})

	Tabs.Core:AddParagraph({
		Title = "Gradient Picker",
		Content = "Picks a start and end color, plus rotation, to build a ColorSequence."
	})

	local CoreGradientPicker = Tabs.Core:AddGradientPicker("CoreGradientPicker", {
		Title = "Gradient Picker",
		Default = ColorSequence.new(Color3.fromRGB(255, 0, 128), Color3.fromRGB(0, 128, 255)),
		Rotation = 90,
	})

	Tabs.Core:AddParagraph({
		Title = "Keybind Hold",
		Content = "Value is true only while the bound key is held down."
	})

	local CoreKeybindHold = Tabs.Core:AddKeybind("CoreKeybindHold", {
		Title = "Keybind Hold",
		Mode = "Hold",
		Default = "Q",
	})

	Tabs.Core:AddParagraph({
		Title = "Keybind Toggle",
		Content = "Value flips between true and false on every press."
	})

	local CoreKeybindToggle = Tabs.Core:AddKeybind("CoreKeybindToggle", {
		Title = "Keybind Toggle",
		Mode = "Toggle",
		Default = "F",
	})

	Tabs.Core:AddParagraph({
		Title = "Input",
		Content = "A single line text box."
	})

	local CoreInput = Tabs.Core:AddInput("CoreInput", {
		Title = "Input",
		Default = "Default",
		Placeholder = "Placeholder",
		Numeric = false,
		Finished = false,
	})

	Tabs.Core:AddParagraph({
		Title = "Image",
		Content = "Shows a single image with automatic aspect ratio scaling."
	})

	local CoreImage = Tabs.Core:AddImage({
		Image = "rbxassetid://105249527747322",
		AspectRatio = "16:9",
		Radius = 10,
	})

	Tabs.Core:AddParagraph({
		Title = "Space",
		Content = "An invisible spacer with a fixed height."
	})

	Tabs.Core:AddSpace({ Height = 24 })

	Tabs.Core:AddButton({ Title = "Button Below The Space" })
end

do
	Tabs.Method:AddParagraph({
		Title = "About This Tab",
		Content = "Reference for every element method available in this FluentUI. Every :Add<Element> method also works without the Add prefix (for example :AddButton and :Button are the same call), and some elements have extra alternate names on top of that (Tab also has :Page, Space also has :EmptyFrame). Elements that store a value (Toggle, Slider, Dropdown, Color Picker, Gradient Picker, Keybind, Input) need a unique Flag as their first argument so SaveManager can save and load them, and so InterfaceManager and SaveManager can manage them through Fluent.Options."
	})

	Tabs.Method:AddParagraph({
		Title = "Button",
		Content = "A clickable element that runs a callback and does not store a value.\nMethod:\n:AddButton\n:Button\n-----\nSpecial Property:\nNone\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Toggle",
		Content = "A binary switch between on and off, stored as a boolean.\nMethod:\n:AddToggle\n:Toggle\n:AddSwitch\n:Switch\n-----\nSpecial Property:\n:Default -- Boolean\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Slider",
		Content = "Drags a numeric value between a minimum and maximum.\nMethod:\n:AddSlider\n:Slider\n-----\nSpecial Property:\n:Min (Required) -- Number\n:Max (Required) -- Number\n:Rounding (Required) -- Number\n:Default -- Number\n:Suffix -- String\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Dropdown",
		Content = "Selects one or more values from a list, with optional search filtering.\nMethod:\n:AddDropdown\n:Dropdown\n-----\nSpecial Property:\n:Values (Required) -- Table\n:Default -- Number, or Table when Multi is true\n:Multi -- Boolean\n:Search -- Boolean\n:AllowNull -- Boolean\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Color Picker",
		Content = "Opens a dialog to pick a Color3, optionally with a transparency slider.\nMethod:\n:AddColorpicker\n:Colorpicker\n-----\nSpecial Property:\n:Default (Required) -- Color3\n:Transparency -- Number\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Gradient Picker",
		Content = "Picks a start and end color, plus rotation, and returns a ColorSequence.\nMethod:\n:AddGradientPicker\n:GradientPicker\n-----\nSpecial Property:\n:Default (Required) -- ColorSequence\n:Rotation -- Number\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Keybind",
		Content = "Binds an action to a key or mouse button, in Hold or Toggle mode.\nMethod:\n:AddKeybind\n:Keybind\n-----\nSpecial Property:\n:Default (Required) -- String\n:Mode -- String (\"Hold\" or \"Toggle\")\n:ChangedCallback -- Function\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Input",
		Content = "A single line text box.\nMethod:\n:AddInput\n:Input\n-----\nSpecial Property:\n:Default -- String\n:Placeholder -- String\n:Numeric -- Boolean\n:Finished -- Boolean\n:MaxLength -- Number\n-----\nGlobal Property:\n:Callback -- Function\n:Icon -- String\n:Title (Required) -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Image",
		Content = "Shows a single image with automatic aspect ratio scaling. Does not store a value.\nMethod:\n:AddImage\n:Image\n-----\nSpecial Property:\n:Image (Required) -- String\n:AspectRatio -- String (default \"16:9\")\n:Radius -- Number\n-----\nGlobal Property:\nNone\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Paragraph",
		Content = "A static block of text used for headers and explanations. Does not store a value.\nMethod:\n:AddParagraph\n:Paragraph\n-----\nSpecial Property:\n:Content -- String\n-----\nGlobal Property:\n:Icon -- String\n:Title (Required) -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Space",
		Content = "An invisible spacer used to add gaps between elements. Does not store a value.\nMethod:\n:AddSpace\n:Space\n:AddEmptyFrame\n:EmptyFrame\n-----\nSpecial Property:\n:Height (Required) -- String or Number\n-----\nGlobal Property:\nNone\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Group",
		Content = "Arranges elements side by side in equal columns, each column built with :AddElement.\nMethod:\n:AddGroup\n:Group\n-----\nSpecial Property:\n:Columns -- Number\n:Gap -- Number\n-----\nGlobal Property:\n:Title -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "HStack",
		Content = "Lays views out side by side. Add elements directly for one view per column, or call :AddVStack for a column that stacks multiple elements.\nMethod:\n:AddHStack\n:HStack\n-----\nSpecial Property:\n:Gap -- Number\n-----\nGlobal Property:\n:Title -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "VStack",
		Content = "Stacks elements vertically in a single column, and can also live directly inside an HStack.\nMethod:\n:AddVStack\n:VStack\n-----\nSpecial Property:\n:Gap -- Number\n-----\nGlobal Property:\n:Title -- String\n:Description -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Section",
		Content = "Groups tabs together under a shared header, optionally collapsible.\nMethod:\n:AddSection\n:Section\n-----\nSpecial Property:\n:Title (Required) -- String\n:Collapsible -- Boolean\n-----\nGlobal Property:\nNone\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Tab",
		Content = "A page of elements, added either on the Window or inside a Section.\nMethod:\n:AddTab\n:Tab\n:AddPage\n:Page\n-----\nSpecial Property:\nNone\n-----\nGlobal Property:\n:Icon -- String\n:Title (Required) -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Tab In Header",
		Content = "A tab rendered in the title bar navigator instead of the side list. Calling this on a Section moves the tab to the header instead and warns in the console.\nMethod:\n:AddTabInHeader\n:TabInHeader\n-----\nSpecial Property:\nNone\n-----\nGlobal Property:\n:Icon -- String\n:Title (Required) -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Notify",
		Content = "Shows a notification in the bottom right corner of the screen.\nMethod:\nFluent:Notify\n-----\nSpecial Property:\n:Content (Required) -- String\n:SubContent -- String\n:Duration -- Number\n-----\nGlobal Property:\n:Icon -- String\n:Title (Required) -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Dialog",
		Content = "Shows a blocking dialog box with custom buttons.\nMethod:\nWindow:Dialog\n-----\nSpecial Property:\n:Content (Required) -- String\n:Buttons -- Table\n-----\nGlobal Property:\n:Title (Required) -- String\n-----"
	})

	Tabs.Method:AddParagraph({
		Title = "Side Panel",
		Content = "A dialog-style panel docked beside the window. Supports Button, Toggle, Slider, Dropdown, Colorpicker, GradientPicker and Input.\nMethod:\nWindow:SidePanel\nWindow:Menu\nWindow:SideMenu\n-----\nSpecial Property:\n:Side -- String (\"Left\" or \"Right\")\n:Width -- Number\n:Buttons -- Table\n-----\nGlobal Property:\n:Title -- String\n:Description -- String\n-----"
	})
end

do
	Tabs.Api:AddParagraph({
		Title = "Notify",
		Content = "Fluent:Notify accepts Title, Content, SubContent, Icon and Duration. Duration is optional; without it the notification stays until closed."
	})

	Tabs.Api:AddButton({
		Title = "Notify (Full Properties)",
		Description = "Title, Content, SubContent, Icon and Duration all set",
		Callback = function()
			Fluent:Notify({
				Title = "Notification",
				Content = "This is a notification",
				SubContent = "SubContent",
				Icon = "bell",
				Duration = 6,
			})
		end
	})

	Tabs.Api:AddButton({
		Title = "Notify (Minimal)",
		Description = "Only Title and Content set",
		Callback = function()
			Fluent:Notify({
				Title = "Notification",
				Content = "This is a minimal notification",
			})
		end
	})

	Tabs.Api:AddParagraph({
		Title = "Dialog",
		Content = "Window:Dialog blocks the window with a message and any number of Buttons."
	})

	Tabs.Api:AddButton({
		Title = "Open Dialog",
		Description = "Confirm / Cancel dialog",
		Callback = function()
			Window:Dialog({
				Title = "Title",
				Content = "This is a dialog",
				Buttons = {
					{
						Title = "Confirm",
						Callback = function()
							print("Confirmed the dialog.")
						end
					},
					{
						Title = "Cancel",
						Callback = function()
							print("Cancelled the dialog.")
						end
					}
				}
			})
		end
	})

	Tabs.Api:AddParagraph({
		Title = "Side Panel",
		Content = "Window:SidePanel opens a docked panel with footer Buttons. Only Button, Toggle, Slider, Dropdown, Colorpicker, GradientPicker and Input are supported inside it."
	})

	Tabs.Api:AddButton({
		Title = "Open Side Panel",
		Description = "Right-docked panel with every element the Side Panel supports",
		Callback = function()
			local Panel
			Panel = Window:SidePanel({
				Title = "Side Panel",
				Description = "Click outside to close.",
				Side = "Right",
				Width = 300,
				Buttons = {
					{
						Title = "Cancel",
						CloseOnClick = true,
						Callback = function()
							print("Cancelled")
						end,
					},
					{
						Title = "Confirm",
						CloseOnClick = true,
						Callback = function()
							print("Confirmed")
						end,
					},
				},
			})

			Panel:AddButton({
				Title = "Button",
				Callback = function()
					print("Panel button pressed")
				end,
			})

			Panel:AddToggle("PanelToggle", {
				Title = "Toggle",
				Default = false,
			})

			Panel:AddSlider("PanelSlider", {
				Title = "Slider",
				Min = 0,
				Max = 100,
				Default = 50,
				Rounding = 0,
			})

			Panel:AddDropdown("PanelDropdown", {
				Title = "Dropdown",
				Values = { "1", "2", "3" },
				Default = 1,
			})

			Panel:AddColorpicker("PanelColorpicker", {
				Title = "Colorpicker",
				Default = Color3.fromRGB(96, 205, 255),
			})

			Panel:AddGradientPicker("PanelGradientPicker", {
				Title = "Gradient Picker",
				Default = ColorSequence.new(Color3.fromRGB(255, 0, 128), Color3.fromRGB(0, 128, 255)),
			})

			Panel:AddInput("PanelInput", {
				Title = "Input",
				Placeholder = "Type here",
			})
		end,
	})

	Tabs.Api:AddParagraph({
		Title = "Section",
		Content = "Window:AddSection groups tabs under a header. With Collapsible set, :Open, :Close and :Toggle control whether the section is expanded."
	})

	Tabs.Api:AddButton({
		Title = "Close Window API Section",
		Description = "Calls :Close() on this tab's own Section",
		Callback = function()
			ApiSection:Close()
		end
	})

	Tabs.Api:AddButton({
		Title = "Open Window API Section",
		Description = "Calls :Open() on this tab's own Section",
		Callback = function()
			ApiSection:Open()
		end
	})

	Tabs.Api:AddButton({
		Title = "Toggle Window API Section",
		Description = "Calls :Toggle() on this tab's own Section",
		Callback = function()
			ApiSection:Toggle()
		end
	})

	Tabs.Api:AddParagraph({
		Title = "SelectTab",
		Content = "Window:SelectTab jumps to a tab by its index in creation order."
	})

	Tabs.Api:AddButton({
		Title = "Jump To Layout Tab",
		Description = "Calls Window:SelectTab(1)",
		Callback = function()
			Window:SelectTab(1)
		end
	})

	Tabs.Api:AddParagraph({
		Title = "Global SetTitle / SetDesc",
		Content = "SetTitle and SetDesc work anywhere something has a title: Window, Tab, Section and elements."
	})

	Tabs.Api:AddButton({
		Title = "Rename Everything",
		Description = "Calls :SetTitle / :SetSubTitle on the Window, this Tab, and the General Section",
		Callback = function()
			Window:SetTitle("Renamed Window")
			Window:SetSubTitle("Renamed via :SetSubTitle")
			Tabs.Api:SetTitle("Renamed Tab")
			GeneralSection:SetTitle("Renamed Section")
		end
	})
end

do
	Tabs.NoIconTab:AddParagraph({
		Title = "Section Tabs",
		Content = "This tab was added with ApiSection:AddTab instead of Window:AddTab, and has no Icon field set."
	})

	Tabs.NoIconTab:AddButton({
		Title = "Try Add TabInHeader Into Section",
		Description = "Calls ApiSection:AddTabInHeader, which warns and moves the tab to the header instead",
		Callback = function()
			ApiSection:AddTabInHeader({ Title = "Moved To Header" })
		end
	})

	Tabs.NoIconHeader:AddParagraph({
		Title = "No Icon Header",
		Content = "This TabInHeader (Window:AddTabInHeader) has no Icon field set."
	})
end

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
	Title = "Fluent",
	Content = "The script has been loaded.",
	Duration = 8
})

SaveManager:LoadAutoloadConfig()

