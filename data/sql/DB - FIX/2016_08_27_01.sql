/*
Issue: Not work quest id 10990 10991 10992 #114
NPCs spawns are inside the Gobjs
*/

UPDATE gameobject_template SET AIName="SmartGameObjectAI", ScriptName = "" WHERE entry IN (185551,185547,185553);
DELETE FROM smart_scripts WHERE entryorguid IN (185551,185547,185553) AND source_type=1;
INSERT INTO smart_scripts VALUES
(185551,1,0,0,64,0,100,0,0,0,0,0,12,22992,7,0,0,0,0,7,0,0,0,0,0,0,0,"Hawk Shrine - On Gossip Hello - Summon Creature 22992"),
(185547,1,0,0,64,0,100,0,0,0,0,0,12,22993,7,0,0,0,0,7,0,0,0,0,0,0,0,"Eagle Shrine - On Gossip Hello - Summon Creature 22993"),
(185553,1,0,0,64,0,100,0,0,0,0,0,12,22994,7,0,0,0,0,7,0,0,0,0,0,0,0,"Hawk Shrine - On Gossip Hello - Summon Creature 22994");
