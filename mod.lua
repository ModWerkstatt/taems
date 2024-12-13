function data()
  return {  
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING", 
		name = _("mod_name"),
		description = _(
						"mod_desc"
						),
		authors = {
			{
				name = 'jay_',
				role = 'CREATOR',
				text = 'Modell',
				tfnetId = 28954,
			},
					    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },  
		},
		params = {			
			{
				key = "soundCheck",
				name = _("sound_check"),
				uiType = "CHECKBOX",
				values = { "No", "Yes", },				
				defaultIndex = 1,	
			},
		},
		tags = { "Europe", "Vehicle", "Freight", "Wagon", "Gas" },
		dependencies = {},
		}, 
		
		runFn = function (settings, modParams)
		local params = modParams[getCurrentModId()]
	
		local function metadataHandler(fileName, data)
			if params.soundCheck == 0 then
				if fileName:match('/vehicle/waggon/Zagkks161/zagkks161_([^/]*.mdl)') then
					data.metadata.railVehicle.soundSet.name = "waggon_freight_modern"
				end
			end
			return data
		end

		addModifier( "loadModel", metadataHandler )
	end,
}
end