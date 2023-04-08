local PLUGIN = PLUGIN

PLUGIN.name = "Advanced Quests"
PLUGIN.author = "D.K !"
PLUGIN.description = "Adds an advanced quest system based on the ZeMysticalTaco plugin with several features added by D.K."

GLOBAL_Quests = {
	["test1"] = { -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Core of Man", -- Name of the quest.
		["dialogue"] = { -- Dialogue of the quest.
			["start"] = "The flesh that binds spreads! The flesh is sickly and the core of man is forgotten. Head my word and listen well! Bring the core of man. The vital essence of man and I will share with you the deepest of wisdoms. A promise to know more! The flesh is but a vessel to something greater!", -- Departure message.
			["complete"] = "The core of humanity is stored here. We are made of this flesh and blood bound together if we wish to or not. Take this book and head my call! The flesh is connected!", -- End message.
			["question"] = "Every soul is bound to this center of flesh. The flesh of life. Ripped out and the blood stalls and we wither.Look towards your fellow man. Bounded are we all and in death we are one." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["secretknowledgevol1"] = 1 --tokens 
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["heart"] = 1 --item id's must be used
		},
		["icon"] = "materials/questsicon/unkown.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "The Path least followed", -- Brief description of the quest.
		["objective"] = "- A Core Of Man", -- Objective(s) to be completed in the quest.
		["about"] = [[A man of strange tounge and accent has come to these lands. His men claim he spreads truths long forgotten and his wisdom is endless. He offers a book of his teachings if you bring him a core of a man.. whatever that means.]], -- Summary of the quest
	},

-- [[[
	["rescuecharle"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Center of Knowledge", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Head my words and listen well! The flesh that is sickly is not only sickly due to the weakness in vitality but also in mind! The center of knowledge of humanity! Our all encompossing knowledge is contained in some mass of flesh. Dissect this libarby. Pick at this flesh and discover wisdom. Ignorance may be bliss to some but in the end it rots the mind to nothing! The collective knowledge of humanity is our only solution.", -- Departure message.
			["complete"] = "Our knowledge. Our understanding. All stored within this sack of flesh. Broken down it is nothing but electricity if  you would believe it. Biological means to understand. It is rotten I can see.Stained from ignorance, repression and dogma. Life is meaningless without understanding.Here is this book. Understand it and revive yourself. Ignorance of the unknown is a fatal flaw.", -- -- End message.
			["question"] = "The knowledge of man is stored within us. The squishy flesh were we ourselves are stored. Find it within fellow man where we are stored." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["secretknowledgevol2"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["brain"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "The path of the Forgotten", -- Brief description of the quest.
		["objective"] = [[- The Center Of Knowledge]], -- Objective(s) to be completed in the quest.
		["about"] = [[A man of strange tounge and accent has come to these lands. His men claim he spreads truths long forgotten and his wisdom is endless. He offers a book of his teachings if you bring him a core of a man.. whatever that means.]], -- Summary of the quest
	},
    ["rescuecharle2"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Casual Heresy", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "I got assigned this new piece of scrap of a bike. My last one was full kicked out with the newest shit but the commissar deemed it too 'heretical' for me to keep. Good thing he had a bit of an accident ey? Well anyway I need to jazz this one up a bit so if you could get me some steel I can make it worth your while.", -- Departure message.
			["complete"] = "Fuck ye man. Here is some cash for the trouble. Remember though... snitchs end up as corpse starch", -- -- End message.
			["question"] = "Fuck if I know man just go find something somewhere. Those mechanicus freaks might have some but your guess is as good as mine" -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["thrones"] = 4
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["valuable4"] = 3, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Aid in the scouts attempt to improve his bike by getting steel bars", -- Brief description of the quest.
		["objective"] = [[- Get three steel bars]], -- Objective(s) to be completed in the quest.
		["about"] = [[A fellow member of the regiment has asked for you to help him improve his bike. He seems to have murdered a previous commissar but it seems he still lost his bike. He offers something worth your while if you get him steel bars to help improve his bike.]], -- Summary of the quest
	},
	["rescuecharle3"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Dry As The Desert", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Greetings Unit. You seem to be in standby mode. This unit requests you retrieve twenty litres of Promethium. My caculations estimate a high likelyhood of excellent compensation if task completed. Encouragement protocols finished.Converstation continuation activated.", -- Departure message.
			["complete"] = "Thank you Unit. This will allow us to run the generators by my caculations for an extra two days and four hours and five seconds. This chemical kit will be satisfactory for your compensation.", -- -- End message.
			["question"] = "Obtain by whatever means necessary. This unit lacks compassion protocols to care." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["chemistryset"] = 1,
			["frenzon"] = 5
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["promethium"] = 4, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Help Omnidex keep the generators running", -- Brief description of the quest.
		["objective"] = [[- Obtain 4 barrels of promethium]], -- Objective(s) to be completed in the quest.
		["about"] = [[It seems the generators supplies are low and Omnidex would like you to get more of it. He seems to offer something in return but what satisfactory means you have no clue]], -- Summary of the quest
	},
	["rescuecharle4"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Friendly Competition", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Greetings. I hope you do not find my room too messy. I am Bile and I am looking into matters of munitions. The amount of ammo we have is small and dwindles by the day. The astartes though if you ever seen them seem to almost never run out! Those munitions are highly secrective among forgeworlds so I intend to study them and further our campaign. The more ammo we have the more you can kill yes? Go out there and find some bolt rounds then.", -- Departure message.
			["complete"] = "Quiet marvelous this will allow me to get one up on that blasted Omnide- I mean help our units combat efficency. Here take this as a token of my gratitude and remember to keep your guns machine spirit well pleased!", -- -- End message.
			["question"] = "Your missions you partake in might have some laying around. Its not everyday you find bolt rounds do you?" -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["boltpistol"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["valuable2"] = 5, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Help Bile create brand new munitions", -- Brief description of the quest.
		["objective"] = [[- Obtain 5 boxes of bolter rounds]], -- Objective(s) to be completed in the quest.
		["about"] = [[It seems Bile wants to help aid in more ammunition creation to help advance the companies campaign here. To do so he needs bolt rounds to study them to obtain a greater understanding. He did mention a great reward and you did remember him gesturing to a bolt pistol on the screen. Maybe this is worth your while?]], -- Summary of the quest
	},
	["rescuecharle5"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "War Of Attrtion", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Hello I hope everything is doing fine out there. I may be stuck inside all the time but the situation is no less of a mess in here then out there. This has been a war of attrition and we are losing it. Everyday I get more and more men in these beds and less and less get out. My supplies have dwindiled to the point where I have to ask you if you can help. We have enough natural chemical compounds to make treatments but not enough kits to go around to make it. Find me one of them and you will save alot of your fellow troopers lives.", -- Departure message.
			["complete"] = "Thank you so much. I am going to get one of the medics to start getting this set up right away. Here take this as a token of my gratitude. We may have a chance of survivng this attrition after all.", -- -- End message.
			["question"] = "The local towns may have some but I wouldnt count on it. Find some outside traders they may be loaded with tools of all kinds." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["localwineexotic"] = 1,
			["stimm"] = 10
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["valuable3"] = 3, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "The medics are desperate. Aid them in getting equipment.", -- Brief description of the quest.
		["objective"] = [[- Obtain 3 Chemical Equipment Kits]], -- Objective(s) to be completed in the quest.
		["about"] = [[Sasha Velen, leader of the emergency medical team seems to be on her wits end. She needs more equipment to manufacture medicine but it seems the equipment they have is not sufficent. More and more men are dieing and being wounded from this war of attrition. Helping here will be a help to the war effort.]], -- Summary of the quest
	},
	["rescuecharle1"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "The Temperate Monk", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Blessed be the *Hic* emperor be on you my child.... His ble- *hic* shine brightly on you. I have seen... the light! Yes! He has instructed you... *hic* to provide a nice... holy! Beverage to quench my thirst. Bring me some local wine and quench this holy mans throat!", -- Departure message.
			["complete"] = "The Emperor shines bright on you! Here take this token of a holy mans appreciation! I have been reading it but I think I may have spi *Hic* something on it.", -- -- End message.
			["question"] = "The loca- *hic* perhaps sells some. I am not a man well attuned with them" -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["ancientscroll"] = 1,
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["localwinepoor"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "A holy man requests you quench his thrist", -- Brief description of the quest.
		["objective"] = [[- Obtain some local wine]], -- Objective(s) to be completed in the quest.
		["about"] = [[The monk seems to be in deep contemplation and requires a beverage to quench his thirst. Find him local poor wine to help him continue his holy duties.]], -- Summary of the quest
	},
	["rescuecharle125"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Caged Within", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "*You stare at a crate. It seems to be of a sturdy make so getting it open by force is really not a choice. There are three keyholes. Perhaps you will be able to find these keys and see what is inside*", -- Departure message.
			["complete"] = "Emperor have mercy", -- -- End message.
			["question"] = "..." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["bacaracollectionofteachings"] = 1,
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["bacarkeyone"] = 1, --item id's must be used
			["bacarkeytwo"] = 1,
			["bacarkeythree"] = 1,
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "A Random Crate is Locked at the Base", -- Brief description of the quest.
		["objective"] = [[- Figure out how to open it]], -- Objective(s) to be completed in the quest.
		["about"] = [[A crate is locked and can only be opened with some keys it seems. You wonder what is inside]], -- Summary of the quest
	},
	["rescuecharle124"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "A Sample Collector", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Unit Detected. Order: Retrieve biosamples from tyranids. Further Study Required as ordered by creator. ", -- Departure message.
			["complete"] = "Task : Completed. The Unit shall recieve compensation. *A small item is given to you*", -- -- End message.
			["question"] = "Kill specimens. Retrive Biosample" -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["bacarkeyone"] = 1,
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["biosampletyranid"] = 3, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "A servitor requires your services", -- Brief description of the quest.
		["objective"] = [[- Obtain three tyranid biosamples]], -- Objective(s) to be completed in the quest.
		["about"] = [[A medical servitor by the medical post is requesting biosamples from tyrandids to study. This thing seems trustworthy enough I guess.]], -- Summary of the quest
	},
	["rescuecharle123"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "A Cryptic Voice", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "BZZZZT..... If you are listening please....... BZZZZ.... retrive datafiles and upload them to the .... VOX Unit...", -- Departure message.
			["complete"] = "BZZZZZT Data retrieved.... Look under the vox unit before you and find your thank you *Click*", -- -- End message.
			["question"] = "*The radio is filled with static*" -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["bacarkeytwo"] = 1,
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["datapadwithfiles"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "A voice on the Vox requests help", -- Brief description of the quest.
		["objective"] = [[- Find the datafiles it requests]], -- Objective(s) to be completed in the quest.
		["about"] = [[A voice on the vox has requested you aid them in getting files back. The staic is heavy so you cant make it out but it must be some vox operator needing assistance since its on official channels]], -- Summary of the quest
	},
	["rescuecharle122"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Vox Troubles", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Fucking piece of shit... Hey how are ye I have been trying to get our vox equipment up to shape but this bloody thing just wont work. I usually use a vox set I carry around for this type of work but I lost it in a routine patrol. If ye can get it for me I would appreciate it.", -- Departure message.
			["complete"] = "Cheers lad you are a lifesaver. Some lad though while you went out came and asked me to give you this key. I didnt have a good look at him since I was attempting to get that machine working but its probably just a mate of yours.", -- -- End message.
			["question"] = "Think I lost the unit in the town but I aint too certain to be honest with ye." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["bacarkeythree"] = 1,
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["brokenvoxset"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "A trooper needs his vox unit back", -- Brief description of the quest.
		["objective"] = [[- Find the mans broken vox set]], -- Objective(s) to be completed in the quest.
		["about"] = [[A trooper working on the bases vox systems seems to be having trouble getting it all working. He asks for you to retrieve his vox set to help get everythingin working order.]], -- Summary of the quest
	},
	["retrieva17"] = { -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "A Fair Trade", --the name that shows up in the tab menu
		["dialogue"] = { -- all of these are self explanatory, \n means a new line, the text in the box doesn't wrap automatically so try to new line after every sentence.
			["start"] = "Well look who we have here. Well if ye looking for stims your shit out of luck im all out but I do have something that might peak your interest. A weird fucking contraption that I have no clue what to do with. Bring me some chemicals and ill offer this thing to ye. It aint worth anything to me anyway.",
			["complete"] = "Great, this is good. Take this thing... It gives me the creeps anyway",
			["question"] = "Fuck if I know. Just get those chemicals are all I need. I need about ten of those green ones"
		},
		["reward"] = {
			["eldrich"] = 1, --use item ID's, if you dont know the ID or you want an item made just put in a name and i'll fix it later
		},
		["requirements"] = {
			["unknownchem1"] = 10
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Retrieve ten green chemicals", -- Brief description of the quest.
		["objective"] = [[- Get ten chemicals that are green and hand them over to the scout]], -- Objective(s) to be completed in the quest.
		["about"] = [[A man huddled beside some crates is looking for some chemicals. He seems to be offering some strange device in exchange for chemicals. It would get the stims moving once more to do this.]], -- Summary of the quest
	},	
		["rescuecharle274"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "A Miner in need.", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "I got assigned here to mine in this shithole, but i'm completely out of it man. They forgot to give me any equipment or knowledge on how to operate any of these machines. And now this generator is broken fuck man. How about ya help me out? You bring me some electronics to fix this generator and i pay you in some neat items i found.", -- Departure message.
			["complete"] = "You're a life saver man i won't forget it.", -- -- End message.
			["question"] = "Don't really know man, that's why i'm asking you to get." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["amethyst"] = 1,
			["emerald"] = 1,
			["diamond"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["advelectronics"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Aid in the scouts attempt to improve his bike by getting steel bars", -- Brief description of the quest.
		["objective"] = [[- Get one advanced Electronic]], -- Objective(s) to be completed in the quest.
		["about"] = [[A Local Miner has requested you aid and requests some advanced electronics he needs to help him repair the generator that keeps breaking a lot.]], -- Summary of the quest
	},	
		["rescuecharle275"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "A Doctor.", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Oh god emperor i am so screwed! Oh i didn't see you there Mercenary, here for your check up? I'm sorry i can't provide it unfortunately one of those little twats has stolen my medical equipment. Could you maybe help me get it back?", -- Departure message.
			["complete"] = "Oh eternal blessings upon you without it i wouldn't know what to do anymore.", -- -- End message.
			["question"] = "Man i don't know maybe try and buy one or find the thief?All i need is two bandages and i can normally do my job good enough before inspection." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["rainbow"] =1,
			["detox"] = 1,
			["stimm"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["badmedkit"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Aid in the scouts attempt to improve his bike by getting steel bars", -- Brief description of the quest.
		["objective"] = [[- Get a Medkit.]], -- Objective(s) to be completed in the quest.
		["about"] = [[The ship's doctor has requested you get him some medical equipment as his got stolen.]], -- Summary of the quest
	},	
		["rescuecharle294874"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "The Mechanical God", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "Omnissiah's Blessings upon you, you require work? I can provide, i am currently in need of several motors to utilize in repairing a damaged machine and honoring it's machine spirit. Provide me with this and i shall provide you with much more.", -- Departure message.
			["complete"] = "Omnissiah Guides you forth.", -- -- End message.
			["question"] = "Try dissecting useless machines to gain the components." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["promethium"] =1,
			["tools"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["mortor"] = 2, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Aid in the scouts attempt to improve his bike by getting steel bars", -- Brief description of the quest.
		["objective"] = [[- Get two motors.]], -- Objective(s) to be completed in the quest.
		["about"] = [[A local Tech Priest requests for your aid.]], -- Summary of the quest
	},	
		["rescuecharle295"] = {  -- Unique Quest ID. (important just make sure it's unique)
		["name"] = "Da Dakka", -- Name of the quest.
		["dialogue"] = { --  Dialogue of the quest.
			["start"] = "I didnt se ya dere ya lil git i iz Nob Skulbreaka, got ired ere recentl to du sum gud krumping but i iz lost mi shoota! Sum gretchin stol it from me! I iz gunna krump da lil git! But i iz need a new shoota kweek! Giev me one and i'l give ya sum shinies.", -- Departure message.
			["complete"] = "Ah you iz a real git i gunna du sum gud krumping wit tis!", -- -- End message.
			["question"] = "I iz dunno kno is why i ask ya git." -- Have more information about the quest.
		},
		["reward"] = { -- Award(s).
			["goldware"] =2,
			["goldware"] =2,
			["electronics"] = 1
		},
		["requirements"] = { -- Items required in order to complete the quest.
			["orkshoota"] = 1, --item id's must be used
		},
		["icon"] = "materials/questsicon/virus.png", -- Put the link of the mission icon (materials) for the quests menu.
		["description"] = "Aid in the scouts attempt to improve his bike by getting steel bars", -- Brief description of the quest.
		["objective"] = [[- Get an Ork shoota.]], -- Objective(s) to be completed in the quest.
		["about"] = [[A greenskin needs his shoota back.]], -- Summary of the quest
	}
}

-- The unique ID is very important, just make sure it is unique.
--[[-------------------------------------------------------------------------
Additionals can only go one layer deep.
TODO: Make it so that you can go infinitely with additionals.
---------------------------------------------------------------------------]]
GLOBAL_PreDefinedDialogue = {
	["test1"] = {
		["Button"] = "Additional information to add ?",
		["Response"] = [[ Not really just that this quest is a test, but what exactly do you want to know?
		]],
		["Callback"] = false,
		["Additional"] = {
			["characterquestiontest1"] = {
				["Button"] = "What are you good for then ?",
				["Response"] = [[ Good question, haha. ]]
			},
			["arealocation"] = {
				["Button"] = "Where do I go?",
				["Response"] = [[ Nowhere ! This is a test quest. ]]
			}
		}
	},
	["TheFollowerSupermantrt1"] = {
		["Button"] = "What is your name?",
		["Response"] = [[My name is but long forgotten. I am part of this motely band of travellers. We traverse the deserts for knowledge and understanding. I am but a disciple. A man who follows their words. They hold great knowledge and for that I follow.
		]],
		["Callback"] = false,
		["Additional"] = {
			["thefollowersupermantrt1add"] = {
				["Button"] = "The Voice?",
				["Response"] = [[A man of wisdom. A man of justice and purity. The God Emperor is his word and his voice is unrivaled by any other priest of the ministorium. Head his word and pay respect for you have never seen a more holy priest.]]
			},
			["thefollowersupermantrt1addadd"] = {
				["Button"] = "The Broken?",
				["Response"] = [[We had travelled to a town recently and it was here where we found him. He took the words to heart of the voice and now aids us in the duty of spreading his word. The voice helps many and those he helps, help him in return]]
			},
			["thefollowersupermantrt1addaddadd"] = {
				["Button"] = "The Trader?",
				["Response"] = [[*He stares blankly at you* Who? It is but me, the voice and the broken?]]
			}
		}
	},
	["OperatorDimitri"] = {
		["Button"] = "Hows the work?",
		["Response"] = [[Fucking horrible. Those rustbuckets aint got enough hands so the bosses are making us help em. I nearly lost my finger cause of it! Can ye believe those bastards..
		]],
		["Callback"] = false,
		["Additional"] = {
			["thefollowersupermantrt1add"] = {
				["Button"] = "Need Help?",
				["Response"] = [[Nah I aint got anything but if ye want to help go talk to those mechanical caculators. They probably could use some help.]]
			}
		}
	},
	["OperatorShiv"] = {
		["Button"] = "You okay?",
		["Response"] = [[Bit beat up... those mechanicus cant really tell when ye are pushing people too far. They are a callious bunch of pricks really but they keep this ship sailing I guess...
		]],
		["Callback"] = false,
		["Additional"] = {
			["thefollowersupermantrt1add"] = {
				["Button"] = "Hows the generators?",
				["Response"] = [[They are running like they seem like. Quite horribly. Everything is missing something and we cant even replace a screw without those mechanicus fellas arguing something fierce. Go talk to em maybe ye can sort something out.]]
			}
		}
	},
	["TheFollowerSupermantrt2"] = {
		["Button"] = "Why are you scratching your wound?",
		["Response"] = [[ Only in suffering are we truly free. To be broken and remade to once again be broken is the cycle of all things.
		]],
		["Callback"] = false,
		["Additional"] = {
			["thefollowersupermantrt2add"] = {
				["Button"] = "Suffering?",
				["Response"] = [[We all live our lives in agony. Mine is to suffer this unending torture. This boiling of my veins and shattering of my spirit. Yours is a different story. Your agony is of a another breed.]]
			},
			["thefollowersupermantrt2addadd"] = {
				["Button"] = "Why are you broken?",
				["Response"] = [[Years ago I was whole. I then lost my heart. The core of myself. The core of man. I was tramutised and had no where to turn and in the deepest depths, where I thought I could go no lower I did. These dark depths I lost myself I no longer had an understanding of what it was to be me. There I lost my core of knowledge, the centerplace for my own understanding. It was only here I became whole. Here I will remain whole until the time comes for me to break once more.]]
			}
		}
	},
	["GoodsSupermantrt1"] = {
		["Button"] = "Who are you?",
		["Response"] = [[ Fuck off. If ye got business with him go chat to him. Any wrong moves and you head will be on a spike outside.
		]],
		["Callback"] = false,
		["Additional"] = {
		}
	},

	["rescuecharle"] = {
		["Button"] = "Don't we know it already?",
		["Response"] = [[ There is little chance...
		]],
		["Callback"] = false,
		["Additional"] = {
		}
	}
}

ix.util.Include("sv_plugin.lua")
ix.util.Include("cl_plugin.lua")
ix.util.Include("cl_hooks.lua")


if(CLIENT) then

	local PANEL = {}


	function PANEL:Init()
		if (IsValid(ix.gui.journal)) then
			ix.gui.journal:Remove()
		end

		self:Dock(FILL)

		ix.gui.journal = self


		local client = LocalPlayer()
		local character = client:GetCharacter()
		local quests = character:GetData("quests", {})
		local finishquests = character:GetData("finishquests", {})

		local rnd = table.Random(quests)

		local color = ix.config.Get("color", Color(255, 255, 255))

		self.index = {}

		for index, v in pairs(quests) do
			for k2, v2 in pairs(GLOBAL_Quests) do

				if v == k2 then

					self.index = self:Add("DFrame")
					self.index:Dock(TOP)
					self.index:SetHeight(100)
					self.index:DockMargin(20, 20, 20, 0)
					self.index:SetTitle(v2.name or "Unknown")
					self.index:SetDraggable(false)
					self.index:ShowCloseButton(false)

					self.index.icon = vgui.Create("Material", self.index)
					self.index.icon:SetSize(64, 64)
					self.index.icon:Dock(LEFT)
					self.index.icon:SetMaterial(v2.icon or "materials/questsicon/unkown.png")

					self.index.description = self.index:Add("DLabel")
					self.index.description:SetText(v2.description or "Unknown")
					self.index.description:Dock(TOP)
					self.index.description:DockMargin(10, 2, 0, 0)
					self.index.description:SetFont("ixGenericFont")
					self.index.description:SetColor(Color(255, 255, 255))

					--self.index.description = self.index:Add("DLabel")
					--self.index.description:SetText(description)
					--self.index.description:Dock(TOP)
					--self.index.description:SetFont("ixGenericFont")
					--self.index.description:DockMargin(10, 4, 0, 0)


					self.index.details = self.index:Add("DButton")
					self.index.details:Dock(BOTTOM)
					self.index.details:DockMargin(10, 0, 0, 0)
					self.index.details:SetText("Détails")
					self.index.details.DoClick = function()
						if (IsValid(self.questdetails)) then
							self.questdetails:Remove()
						end

					self.questdetails = self:Add("DFrame")
					self.questdetails:Center()
					self.questdetails:SetSize(500, 350)
					self.questdetails:SetTitle(v2.name)
					self.questdetails:MakePopup()

					self.questdetails.containertop = self.questdetails:Add("DPanel")
					self.questdetails.containertop:SetSize(480, 150)
					self.questdetails.containertop:SetPos(10, 30)

					self.questdetails.objective = self.questdetails.containertop:Add("DPanel")
					self.questdetails.objective:SetPos(160, 10)
					self.questdetails.objective:SetSize(310, 20)

					self.questdetails.objectiveTitle = self.questdetails.objective:Add("DLabel")
					self.questdetails.objectiveTitle:SetText("Objectif(s) de la quête")
					self.questdetails.objectiveTitle:SizeToContents()
					self.questdetails.objectiveTitle:Center()

					self.questdetails.objectiveContainer = self.questdetails.containertop:Add("DPanel")
					self.questdetails.objectiveContainer:SetPos(160, 30.5)
					self.questdetails.objectiveContainer:SetSize(310, 80)

					self.questdetails.objectiveContainerScroll = self.questdetails.objectiveContainer:Add("DScrollPanel")
					self.questdetails.objectiveContainerScroll:SetPos(5, 0)
					self.questdetails.objectiveContainerScroll:SetSize(310, 80)

					self.questdetails.objectiveContainerScrollText = self.questdetails.objectiveContainerScroll:Add("DLabel")
					self.questdetails.objectiveContainerScrollText:SetText(v2.objective or "Unknown")
					self.questdetails.objectiveContainerScrollText:Dock(TOP)
					self.questdetails.objectiveContainerScrollText:SizeToContents()

					self.questdetails.bCancel = self.questdetails.containertop:Add("DButton")
					self.questdetails.bCancel:Dock(BOTTOM)
					self.questdetails.bCancel:DockMargin(160, 0, 10, 10)
					self.questdetails.bCancel:SetText("Abandon the quest")
					self.questdetails.bCancel.DoClick = function()
						netstream.Start("QuestCancel", v)
						self:Remove()
						client:Notify("Press the 'Quests' button again to review your quests.")
					end

					self.questdetails.containertop2 = self.questdetails.containertop:Add("DPanel")
					self.questdetails.containertop2:SetSize(150, 150)

					self.questdetails.icon = vgui.Create("Material", self.questdetails.containertop2)
					self.questdetails.icon:SetSize(64, 64)
					self.questdetails.icon:Dock(LEFT)
					self.questdetails.icon:DockMargin(43, 43, 43, 43)
					self.questdetails.icon:SetMaterial(v2.icon or "materials/questsicon/unkown.png")

					self.questdetails.containerbottom = self.questdetails:Add("DPanel")
					self.questdetails.containerbottom:SetSize(480, 155)
					self.questdetails.containerbottom:SetPos(10, 185)

					self.questdetails.containerbottom.about = self.questdetails.containerbottom:Add("DPanel")
					self.questdetails.containerbottom.about:SetPos(0, 0)
					self.questdetails.containerbottom.about:SetSize(480, 20)

					self.questdetails.containerbottom.aboutTitle = self.questdetails.containerbottom.about:Add("DLabel")
					self.questdetails.containerbottom.aboutTitle:SetText("Summary of the quest")
					self.questdetails.containerbottom.aboutTitle:SizeToContents()
					self.questdetails.containerbottom.aboutTitle:Center()

					self.questdetails.containerbottom.containerabout = self.questdetails.containerbottom:Add("DPanel")
					self.questdetails.containerbottom.containerabout:SetPos(0, 20)
					self.questdetails.containerbottom.containerabout:SetSize(480, 135)

					self.questdetails.containerbottom.containeraboutscroll = self.questdetails.containerbottom.containerabout:Add("DScrollPanel")
					self.questdetails.containerbottom.containeraboutscroll:SetPos(5, 0)
					self.questdetails.containerbottom.containeraboutscroll:SetSize(478, 135)

					self.questdetails.containerbottom.containeraboutscrolltext = self.questdetails.containerbottom.containeraboutscroll:Add("DLabel")
					self.questdetails.containerbottom.containeraboutscrolltext:SetText(v2.about or "Unknown")
					self.questdetails.containerbottom.containeraboutscrolltext:Dock(TOP)
					self.questdetails.containerbottom.containeraboutscrolltext:SizeToContents()

		--			self.index.rarity = self.index.leftPanel:Add("DLabel")
		--			self.index.rarity:SetText(item.rarity .. "%")
		--			self.index.rarity:Dock(RIGHT)
		--			self.index.rarity:SetFont("ixMediumFont")
		--			self.index.rarity:DockMargin(0, -60, 0, 0)

					end

				end
			end
		end
	end

	vgui.Register("ixCharacterJournal", PANEL, "DScrollPanel")


-- ------------------------------------------------------------------------------ --


	local PANEL = {}


	function PANEL:Init()
		if (IsValid(ix.gui.detailsquest)) then
			ix.gui.detailsquest:Remove()
		end

		ix.gui.detailsquest = self


	end

	vgui.Register("ixDetailsQuest", PANEL, "DFrame")


end