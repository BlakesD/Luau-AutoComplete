# Luau-AutoComplete


An automatic fill that is very easy and quick to use, and can be used to fill in player names or any database offered.
Example:
![image](https://github.com/BlakesD/Luau-AutoComplete/assets/71955720/96e10bb8-1fc2-4fad-b117-ed98a5b94a1c)

Use:
```lua
local AutoComplete = require(Path/To/Object).new()

AutoComplete.TextLabel = TextLabel -- Text label that will have the shaddow effect
AutoComplete.TextBox = TextBox -- Box that player will write
AutoComplete:DataBase(ListOfPossibleCharacters)

TextBox:GetPropertyChangedSignal("Text"):Connect(function()
  AutoComplete:Update()
end)
