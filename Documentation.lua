--> get gui loadstring
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/mer-police/Mercurt-UI-lib/main/Muricylib.lua"))()

--> create GUI and change settings of it
local GUI = Mercury:Create{
    Name = "BorbHub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://borb.xyz"
}

--> create tabs 
local Tab = GUI:Tab{
	Name = "Fortnite",
	Icon = "rbxassetid://8569322835"
}


--> create buttons 
Tab:Button{
	Name = "Button",
	Description = nil,
	Callback = function() end
}

--> create toggles 

Tab:Toggle{
	Name = "Toggle",
	StartingState = false,
	Description = nil,
	Callback = function(state) end
}
--> create text boxes

Tab:Textbox{
	Name = "Textbox",
	Callback = function(text) end
}
--> dropdowns local MyDropdown = Tab:Dropdown{
	Name = "Dropdown",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Hello", 1}, 		-- {name, value}
		12,			-- or just value, which is also automatically taken as name
		{"Test", "bump the thread pls"}
	},
	Callback = function(item) return end
}

MyDropdown:AddItems({
	{"NewItem", 12},		-- {name, value}
	400				-- or just value, which is also automatically taken as name
})

MyDropdown:RemoveItems({
	"NewItem", "Hello"		-- just the names to get removed (upper/lower case ignored)
})

MyDropdown:Clear()

--> create sliders

Tab:Slider{
	Name = "Slider",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function() end
}

--> create Keybind 
Tab:Keybind{
	Name = "Keybind",
	Keybind = nil,
	Description = nil
}

--> create Notifications
GUI:Notification{
	Title = "Alert",
	Text = "Sussy balls",
	Duration = 3,
	Callback = function() end
}

--> color Picker 
Tab:ColorPicker{
	Style = Mercury.ColorPickerStyles.Legacy,
	Callback = function(color) end
}
--> credit 
GUI:Credit{
	Name = "Creditor's name",
	Description = "Helped with the script",
	V3rm = "link/name",
	Discord = "helo#1234"
}
