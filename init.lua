function OnPlayerSpawned( player_entity )

	local damagemodels = EntityGetComponent( player_entity, "DamageModelComponent" )
	if( damagemodels ~= nil ) then
		for i,damagemodel in ipairs(damagemodels) do
			ComponentSetValue( damagemodel, "blood_material", "urine" )
			ComponentSetValue( damagemodel, "blood_spray_material", "urine" )
			ComponentSetValue( damagemodel, "blood_multiplier", "0.7" )
			ComponentSetValue( damagemodel, "blood_sprite_directional", "data/particles/bloodsplatters/bloodsplatter_directional_urine_$[1-3].xml" )
			ComponentSetValue( damagemodel, "blood_sprite_large", "data/particles/bloodsplatters/bloodsplatter_urine_$[1-3].xml" )
		end
	end
end