These files are included as an example to help users of JAS understand how the configuration system works. You are of course free to edit these files and reupload them. 

**BiomeBlacklist.cfg - 
You may wish to have JAS ignore certain biomes entirely and have mobs in those biomes spawn as if JAS was not installed. Example uses would be Twilight Forest. To have JAS ignore Twilight Forest biomes, find the Twilight Forest biomes in the list and change "false" to "true".

**GlobalProperties.cfg -
"Turn gamerule spawning off on start": false, - This completely disables mob spawning. If this is changed to true, it will need to be changed back to false before unistalling JAS otherwise no mobs will spawn at all.
  "Empty vanilla spawnlists": true, - if the above setting is true and this setting is also true, the vanilla spawner will continue attempting to spawn entities but no entites will remain on its spawnlists, thus vanilla will not spawn anything. Must be true in order for JAS to be able to control spawns.
  "Disable Vanilla Chunk Spawning": true, - JAS can also control chunk spawning. Leave "true" for best experience. More information on chunk spawning is available on the JAS wiki - https://github.com/ProjectZulu/JustAnotherSpawner/wiki/Spawning-101#chunk-spawning.

"Sort entities by biome": true - controls the format of the SpawnListEntries. By default, entites are arranged by biome group. If you wished to change the spawn settings for Creeper in the Plains biome, you would open Vanilla.cfg in the SpawnListEntries folder and scroll to the PLAINS biome group. By changing this setting to "false" and reloading your world (a full game restart is not necessary), your SpawnListEntries will be rearranged. Instead of listing entities by biome, the biomes will now be listed by entity.

**LoggingProperties.cfg - by default, JAS will created a log entry for each spawn attempt. This is helpful for testing purposes but I've gone ahead and set all logging options to "false".


**BiomeGoups.cfg - by default, JAS will creates no biome groups as such and so each biome will be listed separately for every entity in your game. I've gone ahead and grouped biomes into a sort of natural habitat system. There are many other ways of grouping biomes. By comparing my BiomeGroups.cfg to a freshly generated default BiomeGroups.cfg, you should be able to see that I have edited the bottom section under Biome Groups. NOT the section under Attribute Groups. Changes made here will be overwritten and are a large source of confusion for those trying to set up JAS configs for the first time.


**CreatureType.cfg - This file allows you to control the total number of entites in your world. A very attractive and powerful feature of JAS. The entites are divided into types (note that it is possible to add your own additional types here). By changing the Spawn Cap, you get to decide how many monsters and creatures you want in your world. You are even able to configure the numbers BY BIOME!
The Spawn Rate is measured in ticks and represents the time between spawn attempts. Ie, for CREATURE, the Spawn Rate of 400 means that JAS will check the world every 400 ticks to see if the spawn cap is filled. If it is not, JAS will go ahead and attempt to spawn an entity from the CREATURE type according to the spawn weights set in the SpawnListEntries. (Note that there's 20 ticks/second in minecraft)

Tags - information on tags can be found on the JAS wiki https://github.com/ProjectZulu/JustAnotherSpawner/wiki/Tags

**LivingGroups.cfg - like biomes, entities can also be grouped. You may wish to have an undead group with Zombies and skeletons and set spawn weights for the LivingGroup instead of for each entity individually. I don't have an example configuration file for entites grouped in such a way but I believe the format would be the same as for BiomeGroups.cfg.

**StructureSpawns.cgf - currently default. This file gives you the ability to customise the entities that appear in structures, such as WitchHuts, Strongholds, etc.

**EntityHandlers (folder) - This is where to apply tags for individual entities. Each mod that adds mobs to your game will have its own folder. To see examples of the Tags in use, open the desertmobs.cfg

The tags I have added there are "Tags": "{!spawn:block,sand:&light,1,6}"
This means "Don't spawn UNLESS you are on sand and it's dark". For the Joust, I've simply added "Tags": "{!spawn:block,sand}" so it can spawn regardless of the light level. There is a ridiculous range of spawn and despawn configurations that can be achieved using JAS Tags. It's nothing short of the most powerful spawn system in the game. The examples I've given are rather simple ones to show where and how to use them.

**SpawnListEntries (folder) - here is where the spawn weights are set, grouping entites by the Biome Groups I set up earlier. In order to have your spawns correspond exactly to the weights set here, it is important to not that some mob adding mods HAVE THEIR OWN SPAWNERS. This can interfere and drastically alter the expected results produced by JAS. The solution for this is to disable the spawn systems in those other mods by editing their configuration files (not the files inside the JAS config folder). 

Examples include -

MoCreatures: In MoCreatures own configuration file, MoCreatures.cfg, you will see a list of entities. Replace B:canspawn=true with B:canspawn=false for each entity. Then open MoCSettings.cfg and make sure B:forceDespawns=false. Note: Custom Mob Spawner is NOT a dependency of MoCreatures. MoCreatures works without it and other spawners including JAS will not work with it. Do not install it if you are wanting to use other mob adding mods such as Lycanites.

Lycanites: In the lycanitesmobs config folder, open lycanitesmobs-spawning.cfg. Scroll down to the global spawning section and set     B:"Disable Spawning"=true 

If you have a mod who's mobs are not being added to the SpawnListEntries by JAS, even after disabling the custom spawner, you may have to add them to the lists manually. JAS can handle any entity that is capable of being spawned by the Vanilla spawner. If a mod has been designed in such a way that it's mobs are not able to be spawned, please direct questions to the author of that mod. They may be able to implement a workaround.