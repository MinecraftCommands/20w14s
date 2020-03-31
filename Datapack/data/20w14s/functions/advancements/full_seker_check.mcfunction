tag @s[nbt={Inventory:[{Slot: 100b, id: "minecraft:golden_boots"}, {Slot: 101b, id: "minecraft:golden_leggings"}, {Slot: 102b, id: "minecraft:golden_chestplate"}, {Slot: 103b, id: "minecraft:golden_helmet"}]}] add full_seker

advancement grant @s[tag=full_seker] only 20w14s:adventure/full_seker
advancement revoke @s[tag=!full_seker] only 20w14s:adventure/full_seker_check

tag @s remove full_seker