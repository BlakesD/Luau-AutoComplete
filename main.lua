local AutoComplete = {}
local Standart = {} 


type Standart = {
	TextBox : TextBox, 
	TextLabel : TextLabel, 
	Update : (Standart) -> nil,
	DataBase : <Args>(Args:{}) -> nil, 
}

AutoComplete.new = function() : Standart
	return setmetatable({}, {__index = Standart})	
end


function Standart:DataBase(Data)
	local _Data = {} 
	for _, __Data in Data do 
		if typeof(__Data) == "Instance" then
			table.insert(_Data, __Data.Name)
		else 
			table.insert(_Data, __Data)
		end
	end
	self.Data = _Data
end

function Standart:Clear()
	table.clear(self)
end

function Standart:Update()
	local Text = self.TextBox.Text
	local Match = false
	for _, Data in self.Data do 
		if Data:sub(1, #Text) == Text then
			self.TextLabel.Text = Data
			self.Matched = true
			Match = true
			break
		end
	end

	if not Match then 
		self.TextLabel.Text = ""
		self.Matched = false
	end
end


return AutoComplete
