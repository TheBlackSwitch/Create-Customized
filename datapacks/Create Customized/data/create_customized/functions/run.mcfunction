execute as @e[type=minecraft:skeleton,nbt={ArmorItems:[{id:"minecraft:leather_boots"}]}] run item replace entity @s armor.feet with create_sa:copper_boots

execute as @e[type=minecraft:skeleton,predicate=create_customized:holding_flame_bow] run item modify entity @s weapon.mainhand create_customized:remove_flame

schedule function create_customized:run 10t replace