local module = {}
module.LeaderCreate = function(parent)
	local leaderstats = Instance.new("Folder")
	
	if parent ~= nil then
		leaderstats.Parent = parent
		
	elseif parent == nil then
		error("ELC Error N1: Parent is nil, please choose parent in arguments")
		
	else
		error("ELC Error N0: Unknown error")

	end
	
	leaderstats.Name = "leaderstats"
	
	return leaderstats
	
end

module.ValueCreate = function(leader, name, startValue)
	local Value = Instance.new("IntValue")
	
	if name ~= nil then
		Value.Name = name
	
	elseif typeof(name) ~= "string" then
		error("ELC Error N2.2: Name isn`t string, please make the name argument a string value")
		
	elseif name == nil then
		error("ELC Error N2.1: Name is nil, please choose name in arguments")
		
	else
		error("ELC Error N0: Unknown error")
		
	end
	
	if leader ~= nil then
		Value.Parent = leader

	elseif leader == nil then
		error("ELC Error N3: leader is nil, please choose leader in arguments")

	else
		error("ELC Error N0: Unknown error")

	end
	
	if startValue ~= nil then
		Value.Value = startValue

	elseif startValue == nil then
		Value.Value = 0
	
	elseif typeof(startValue) == "string" then
		error("ELC Error N4: startValue is string, please make the startValue argument a number or DataStore/DataStore2 value")

	else
		error("ELC Error N0: Unknown error")

	end
	
	return Value
	
end

return module
