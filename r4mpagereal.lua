local throw_away = {}

local COOL_SCRIPT = [[
--
]]

function GetBytes()
	for num = 1, #COOL_SCRIPT do
		throw_away[num] = string.byte(COOL_SCRIPT, num)
	end
end

function ConvertString()
	local string_buffer = "";
	for obj = 1, #throw_away do
		string_buffer = string_buffer .. "\\" .. throw_away[obj]
	end
	return string_buffer
end

function Obfuscate()
	GetBytes()
	local str = ConvertString()
	return print('loadstring("' .. str .. '")()')
end

Obfuscate()
