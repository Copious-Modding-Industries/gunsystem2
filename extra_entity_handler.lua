local extra_entities = {}

for entity, count in pairs(extra_entities) do
    for i=1,count do
        EntityLoadToEntity(entity, projectile)
    end
end
c = {
    extra_entities = {},
    add_extra_ents = function( path, count ) 
        c.extra_entities[path] = (c.extra_entities[path] or 0) + count
    end
}

-- theoretical actions to test
action = function ()
    c.fire_rate_wait = c.fire_rate_wait + 15
    c.add_extra_ents('data/entities/misc/larpa_death.xml', 1)
    draw_actions( 1, true )
end

action = function ()
    if extra_entities['data/entities/misc/larpa_death.xml'] < 10 then
        c.fire_rate_wait = c.fire_rate_wait + 15
        c.add_extra_ents('data/entities/misc/larpa_death.xml', 1)
    end
    draw_actions( 1, true )
end

extra_entities['data/entities/misc/larpa_death.xml'] = (extra_entities['data/entities/misc/larpa_death.xml'] or 0) + 1