/**
 * ...
 * @author Ormael and others
 */
package classes.Scenes.Places.HeXinDao
{
	import classes.*;
	import classes.BodyParts.Arms;
	import classes.BodyParts.Eyes;
	import classes.BodyParts.Face;
	import classes.BodyParts.Horns;
	import classes.BodyParts.LowerBody;
	import classes.BodyParts.Tail;
	import classes.GlobalFlags.kFLAGS;
	import classes.GlobalFlags.kACHIEVEMENTS;
	import classes.Scenes.SceneLib;
	import classes.Scenes.Dungeons.RiverDungeon;
	import classes.Items.ArmorLib;
	import classes.Items.HeadJewelryLib;
	import classes.Items.ShieldLib;
	import classes.Items.UndergarmentLib;
	import classes.Items.WeaponLib;
	import classes.Items.WeaponRangeLib;
	import classes.internals.SaveableState;

	public class JourneyToTheEast extends HeXinDaoAbstractContent implements SaveableState
	{
		public var riverdungeon:RiverDungeon = new RiverDungeon();

		public static var AhriStatsToPerksConvertCounter:Number;
		public static var AhriTavernTalks:Boolean;

		public function stateObjectName():String {
			return "JourneyToTheEast";
		}

		public function resetState():void {
			AhriStatsToPerksConvertCounter = 0;
			AhriTavernTalks = false;
		}

		public function saveToObject():Object {
			return {
				"AhriStatsToPerksConvertCounter": AhriStatsToPerksConvertCounter,
				"AhriTavernTalks": AhriTavernTalks
			};
		}

		public function loadFromObject(o:Object, ignoreErrors:Boolean):void {
			if (o) {
				AhriStatsToPerksConvertCounter = o["AhriStatsToPerksConvertCounter"];
				AhriTavernTalks = o["AhriTavernTalks"];
			} else {
				// loading from old save
				resetState();
			}
		}

		public function JourneyToTheEast()
		{
			Saves.registerSaveableState(this);
		}

		public function enteringInn(first:Boolean = true):void {
			clearOutput();
			if(first){
				outputText("You enter the town local Inn ‘Journey to the East’ and look around. ");
			}
			outputText("You can see many people enjoying a meal or drink in the dining hall, a barman standing by ready to serve drinks.");
			if (flags[kFLAGS.CHI_CHI_FOLLOWER] != 2 && flags[kFLAGS.CHI_CHI_FOLLOWER] != 5 && !player.hasStatusEffect(StatusEffects.ChiChiOff) && model.time.hours >= 18 && rand(4) == 0) {
				ChiChiDrunkSex();
				return;
			}
			menu();
			addButton(0, "Drink", drinkAlcohol);
			addButton(2, "Felix", shadyPerson).hint("A strange two headed morph with two tails is sitting at the table near bar.");
			addButton(4, "Adv.Guild", SceneLib.adventureGuild.BoardkeeperYangMain);
			//addButtonDisabled(5, "???", "You see some suspicious looking human bimbo with animal tail in one of inn corners.");
			//addButtonDisabled(6, "Monkey", "You see human bimbo with amazonian build and monkey tail sitting at the table on the rights side of inn.");
			//addButton(6, "Monkey", SceneLib.waizabi.bimboMonkey).hint("You see human bimbo with amazonian build and monkey tail sitting at the table on the rights side of inn.");//monkey bimbo go go - Waiz'abi
			if (workHoursMadam()) {
				if (AhriTavernTalks) addButton(7, "Madam", visitMadam).hint("You see 'Madam' sitting at one of the inn tables.");
				else addButton(7, "???", visitMadam).hint("You see mysterious looking animal-morph sitting at one of the inn tables.");//Ahri
			}
			else {
				if (AhriTavernTalks) addButtonDisabled(7, "Madam", "'Madam' isn't currently at her usual table in the inn.");
			}
			if (flags[kFLAGS.MICHIKO_FOLLOWER] < 1) addButton(8, "???", SceneLib.michikoFollower.firstMeetingMichiko).hint("You see some suspicious looking squirrel in one of inn corners.");
			if (flags[kFLAGS.CURSE_OF_THE_JIANGSHI] < 2 && (player.humanScore() >= (player.humanMaxScore() - player.internalChimeraScore()))) {
				if (flags[kFLAGS.CURSE_OF_THE_JIANGSHI] < 1) addButton(9, "???", firstTimeMeetingNekomataBoy).hint("A strange cat morph with two tails is sitting at one of the tables muttering to himself.");
				if (flags[kFLAGS.CURSE_OF_THE_JIANGSHI] == 1) addButton(9, "???", firstTimeMeetingNekomataBoy).hint("A strange cat morph with two tails is sitting at one of the tables muttering to himself.");
			}
			if (flags[kFLAGS.NEISA_FOLLOWER] == 1) addButton(10, "ShieldMaiden", firstTimeMeetingNeisa);
			if (flags[kFLAGS.NEISA_FOLLOWER] == 2) addButton(10, "Neisa", meetingNeisaAfterDecline);
			if (flags[kFLAGS.NEISA_FOLLOWER] == 3) addButton(10, "Neisa", NeisabutPCgotKOd);
			if (flags[kFLAGS.NEISA_FOLLOWER] == 4 || flags[kFLAGS.NEISA_FOLLOWER] == 5) addButton(10, "Neisa", meetingNeisaPostDungeonExploration).hint("Neisa is sitting at a table enjoying one of the local drinks.");
			if (flags[kFLAGS.NEISA_FOLLOWER] == 6) addButton(10, "Neisa", meetingNeisaPostDungeonExploration2).hint("Neisa is sitting at a table enjoying one of the local drinks.");
			addButton(14, "Leave", heXinDao.riverislandVillageStuff);
		}

		private function drinkAlcohol():void {
			clearOutput();
			outputText("You go sit at the counter and the barman comes over to take your order.\n\n");
			outputText("\"<i>Good ");
			if (model.time.hours >= 16) outputText("afternoon");
			else outputText("morning");
			outputText(" " + player.mf("mister", "miss") + ", what can I get you?</i>\"\n\n");
			menu();
			addButton(0, "ManUp B", buyDrink, consumables.MANUP_B, 1).hint("1 spirit stone");
			addButton(1, "Gob.Ale", buyDrink, consumables.GOB_ALE, 1).hint("1 spirit stone");
			addButton(2, "OrcMead", buyDrink, consumables.ORCMEAD, 1).hint("1 spirit stone");
			addButton(3, "OniSake", buyDrink, consumables.ONISAKE, 1).hint("1 spirit stone");
			addButton(5, "Fiery S", buyDrink, consumables.FIERYS_, 1).hint("1 spirit stone");
			addButton(6, "SalamFW", buyDrink, consumables.SALAMFW, 1).hint("1 spirit stone");
			addButton(7, "NoceLiq", buyDrink, consumables.NOCELIQ, 2).hint("2 spirit stones");
			addButton(12, "BimboL", buyDrink, consumables.BIMBOLQ, 100).hint("100 spirit stones");
			addButton(13, "BroBrew", buyDrink, consumables.BROBREW, 100).hint("100 spirit stones");
			addButton(14, "Back", notThirsty);
		}
		//drink list (to be expanded) some generic nonTF beers
		private function notThirsty():void {
			clearOutput();
			outputText("In the end you realise you are not thirsty after all and wave a goodbye before leaving.\n\n");
			doNext(curry(enteringInn,false));
		}
		private function buyDrink(drink:ItemType, amount:int):void{
			var cost:int = amount;
			if(flags[kFLAGS.SPIRIT_STONES] < cost){
				outputText("\n\nBarman shakes his head, indicating you need " + String(cost - flags[kFLAGS.SPIRIT_STONES]) + " more spirit stones to purchase this drink.");
				doNext(drinkAlcohol);
				return;
			}
			flags[kFLAGS.SPIRIT_STONES] -= cost;
			statScreenRefresh();
			outputText("\n\nThe barman hands over the drink you ordered. ");
			inventory.takeItem(drink, drinkAlcohol);
		}

		private function shadyPerson(second:Boolean = true):void {
			clearOutput();//Felix - male beffy bro nekomata twin herald npc
			if (second) {
				outputText("You approach the table seeing very peculiar looking being. It almost looks like someone would fuse two races: cat and dog one.\n\nIt have two heads, two pairs of arms and even two tails. ");
				outputText("Left side of body looking clearly canine with dog shaped head, which almost all the time watching over surrounding. Right one looking feline but not with those lithe cat races but with noticable musculature. Seeing your approaching cat heat turns toward you and looking at you with it feline eyes.\n\n");
			}
			outputText("\"<i>Welcome to 'Felix Corner' traveler. Do you wanna buy something?</i>\" asks the cat head ending it with a short purr. \"<i>We have waries if you have the spirit stones.</i>\"\n\n");
			outputText("After that the other one head stops looking around to look you directly into the eyes to add. \"<i>If you not interested then get lost... we not have a whole day for idle chatting!!!</i>\"\n\n");
			menu();
			addButton(10, necklaces.EZEKIELN.shortName, itemBuy, necklaces.EZEKIELN).hint("50 spirit stones");
			addButton(11, headjewelries.EZEKIELC.shortName, itemBuy, headjewelries.EZEKIELC).hint("40 spirit stones");
			addButton(12, jewelries.EZEKIELS.shortName, itemBuy, jewelries.EZEKIELS).hint("10 spirit stones");
			addButton(14, "Back", curry(enteringInn,false));
			statScreenRefresh();
		}
		private function itemBuy(itype:ItemType):void {
			clearOutput();
			outputText("\"<i>That'll be " + itype.value / 10 + " spirit stones.</i>\"");
			//outputText("The gruff metal-working husky gives you a slight nod and slams the weapon down on the edge of his stand.  He grunts, \"<i>That'll be " + itype.value + " gems.</i>\"");
			if(flags[kFLAGS.SPIRIT_STONES] < itype.value / 10) {
				outputText("\n\nYou count out your spirit stones and realize it's beyond your price range.");
				//Goto shop main menu
				doNext(curry(shadyPerson,false));
				return;
			}
			else outputText("\n\nDo you buy it?\n\n");
			//Go to debit/update function or back to shop window
			doYesNo(curry(debitItem,itype), curry(shadyPerson,false));
		}
		private function debitItem(itype:ItemType):void {
			flags[kFLAGS.SPIRIT_STONES] -= itype.value / 10;
			statScreenRefresh();
			inventory.takeItem(itype, curry(shadyPerson,false));
		}

		private function workHoursMadam():Boolean {
			if ((model.time.hours >= 7 && model.time.hours <= 9) || (model.time.hours >= 19 && model.time.hours <= 21)) return true;
			return false;
		}
		private function visitMadam():void {
			clearOutput();//Madam - female kishoo npc for stat points to perk points conversion		outputText("\"<i></i>\"\n\n");
			if (AhriTavernTalks) {
				outputText("\"<i>You came back? What do you seek from this Madam?</i>\" You can swear to see her eyes glow for a moment under the hood as she looking at you. \"<i>Another session to exchange your grown potential to increased ability to develop mystical abilities?</i>\"\n\n");
			}
			else {
				outputText("When you apporach the table you see a person covered wholy by the loose robe. For a moment it looks like it not noticed your presence next to it.\n\n");
				outputText("\"<i>Greeting potential customer. You can call me Madam,</i>\" clearly female voice with undeniable subtle charm interrupts the silence. \"<i>You came to my table seeking my services? I not able to provide alot aside something i call 'conversion'.</i>\"\n\n");
				outputText("Conversion? Seeing your puzzle expression she continues, \"<i>I would take a bit of your grown potential to exchange it for increased ability to develop mystical abilities. But...</i>\" she make a gesture with one of her hands showing briefly her hand with five outstretched fingers \"<i>...I shall only do this five times. No more and no less than five.</i>\"\n\n");
				outputText("Just like that without any string attatched?\n\n");
				outputText("\"<i>Of course there would be additional price. Ten spirit stones.</i>\" She pause before asking \"<i>So dear customer would you like me to perform this conversion on you?</i>\"\n\n");
				AhriTavernTalks = true;
			}
			menu();
			addButton(1, "Convert", visitMadamConvert);
			addButton(3, "Back", curry(enteringInn,false));
		}
		private function visitMadamConvert():void {
			clearOutput();
			if (flags[kFLAGS.SPIRIT_STONES] < 10) {
				outputText("\"<i>Ten Spirit Stones.</i>\" Madam shakes her head, \"<i>Come see me again when you gather them.</i>\"\n\n");
				doNext(visitMadam);
			}
			else if (player.statPoints < 5) {
				outputText("\"<i>Seems your grown potential isn't sufficient.</i>\" Madam shakes her head, \"<i>Come see me again when it would increase.</i>\"\n\n");
				doNext(visitMadam);
			}
			else if (AhriStatsToPerksConvertCounter > 4 && AhriTavernTalks > 0) {
				outputText("\"<i>It's unfotunate but i can't help you anymore,</i>\" Madam rise her hand to show five fingers, \"<i>My service can be repeated maximum five times and you dear customer reached this limit.</i>\"\n\n");
				doNext(visitMadam);
			}
			else {
				outputText("After recieving payment Madam puts them in bag that was on her robes belt. \"<i>Come we can't do 'it' here,</i>\" she starts to walk toward door that lead to backroom of the inn. As you already paid, you follow her to short corridor behind doors. Opening one of the side room doors she monition for you to come inside.\n\n");
				outputText("\"<i>Please sit down as whole process would take some time.</i>\" She points toward casual looking sofa. After you sit and find comfortable postion she walsk behinds you. \"<i>Dear customer please close your eyes.</i>\" she nearly whisper it with extremely hypnotizing voice next to your ear.\n\n");
				outputText("You close the eyes and then you feal weird energy that start spread, starting form sides of you head, in your body. It feels extremly comfortable and before you notice it caused you to fell asleep.\n\n");
				outputText("When you wake up, it feel something missing in your body and yet at the same time something new appeared too. Looking around there is noone aside you in the room, with doors left opened wide. Looks like madam wanted to say 'return on your own'. Slightly unsatisfied you returns to the drinkin hall.\n\n");
				if (AhriStatsToPerksConvertCounter > 0) AhriStatsToPerksConvertCounter += 1;
				else AhriStatsToPerksConvertCounter = 1;
				flags[kFLAGS.SPIRIT_STONES] -= 10;
				player.statPoints -= 5;
				player.perkPoints += 1;
				doNext(curry(enteringInn,false));
				eachMinuteCount(30);
			}
		}
		public function NeisabutPCgotKOd():void {
			clearOutput();
			outputText("As you walk towards Neisa, she does a double take as she sees you alive and well.");
			outputText("\"Well damn. How'd you survive.... nevermind. I don't want to know. You still owe me for that expedition, so I'll be waiting here until you're better prepared.\"");
			outputText("Unless... you want to go back in now?")
			menu();
			addButton(1, "Yes", reenteringTheDungeon).hint("That will make you go to the dungeon right away!");
			addButton(3, "No", firstTimeMeetingNeisaNo);
		}

		public function reenteringTheDungeon():void{
			outputText("\n\nWith a nod, you shake her hand, and she gets up from her chair, before the two of you head back towards the dungeon.");
			var strNeisa:Number = 50;
			strNeisa *= (1 + (0.2 * player.newGamePlusMod()));
			strNeisa = Math.round(strNeisa);
			var meleeAtkNeisa:Number = 12;
			meleeAtkNeisa += (1 + (int)(meleeAtkNeisa / 5)) * player.newGamePlusMod();
			player.createStatusEffect(StatusEffects.CombatFollowerNeisa, strNeisa, meleeAtkNeisa, 0, 0);
			flags[kFLAGS.PLAYER_COMPANION_1] = "Neisa";
			doNext(riverdungeon.enterDungeon);
		}

		public function firstTimeMeetingNeisa():void {
			clearOutput();
			outputText("A woman figure in heavy armor is sitting on one of the chair. You can barely see that she got blue eyes and black hairs under that highly covering helmet visor.\n\n");
			outputText("\"<i>What you looking at? If it's for a job yes I’m a merc and I will do my craft for cash if its not then leave me back to my drink.</i>\"\n\n");
			outputText("You outright admit to indeed be looking for  a mercenary. What kind of payment shed require to simply accompany you in that cave outside?\n\n");
			outputText("\"<i>Oh this again? Guess the guards had enough after the tenth idiot disappeared in the depths and never came back up. Sure I could accompany you in there providing you give me a proper pay in treasures. Hell It doesn't look like you are getting in otherwise so you might as well deal with it?</i>\"\n\n");
			outputText("Do you purchase the mercenary Services?\n\n");
			menu();
			addButton(1, "Yes", firstTimeMeetingNeisaYes).hint("That will make you go to the dungeon right away!");
			addButton(3, "No", firstTimeMeetingNeisaNo);
		}
		public function firstTimeMeetingNeisaYes():void {
			outputText("You shake hand with the mercenary sealing the deal.\n\n");
			outputText("\"<i>You won’t regret it down there, everything counts. By the way names Neisa try not to forget it too fast.</i>\"\n\n");
			outputText("Well you finally can enter the dungeon. You guess having another warrior with you should at least reduce the chance whatever lives in there gets a shot at using your prone body if your defeated.\n\n");
			outputText("Seeing as you come in pair the guards let you in thought with a final warning.\n\n");
			outputText("\"<i>Try not to die down there a lot of people went in and never came back.</i>\"\n\n");
			outputText("You will keep that in mind.\n\n");
			var strNeisa:Number = 50;
			strNeisa *= (1 + (0.2 * player.newGamePlusMod()));
			strNeisa = Math.round(strNeisa);
			var meleeAtkNeisa:Number = 12;
			meleeAtkNeisa += (1 + (int)(meleeAtkNeisa / 5)) * player.newGamePlusMod();
			player.createStatusEffect(StatusEffects.CombatFollowerNeisa, strNeisa, meleeAtkNeisa, 0, 0);
			flags[kFLAGS.PLAYER_COMPANION_1] = "Neisa";
			flags[kFLAGS.NEISA_FOLLOWER] = 3;
			doNext(riverdungeon.enterDungeon);
		}
		public function firstTimeMeetingNeisaNo():void {
			outputText("You are not interested into a mercenary right now but you thank her for proposing. She shrug it off.\n\n");
			outputText("\"<i>No skin of my back come back over if ya change your mind.</i>\"\n\n");
			flags[kFLAGS.NEISA_FOLLOWER] = 2;
			doNext(curry(enteringInn,false));
		}
		public function meetingNeisaAfterDecline():void {
			outputText("The mercenary come to attention as you approach her.\n\n");
			outputText("\"<i>So changed your mind about it?</i>\"\n\n");
			outputText("Do you hire her?\n\n");
			menu();
			addButton(1, "Yes", firstTimeMeetingNeisaYes).hint("That will make you go to the dungeon right away!");
			addButton(3, "No", firstTimeMeetingNeisaNo);
		}
		public function meetingNeisaPostDungeonExploration():void {
			if (flags[kFLAGS.NEISA_FOLLOWER] == 5) {
				outputText("You walk up to Neisa who reminds you right away.\n\n");
				outputText("\"<i>I work for 1 spirit stone a day and payment is once per week, this is not negotiable.</i>\"\n\n");
			}
			else {
				outputText("You walk up to Neisa who acknowledges your presence right away.\n\n");
				outputText("\"<i>Aye [name] how's the adventuring going? I've been without a contract for a while now and it so happens I could lend you my help. For a modest fee of course. Only 1 spirit stone a day payable once per week, I need something to subsist on.</i>\"\n\n");
				outputText("Do you hire her?\n\n");
			}
			menu();
			addButton(1, "Hire her", meetingNeisaPostDungeonExplorationHireHer);
			addButton(3, "No", meetingNeisaPostDungeonExplorationNo);
		}
		public function meetingNeisaPostDungeonExploration2():void {
			outputText("Neisa gets to the point right away.\n\n");
			outputText("\"<i>I'm still waiting for those 10 spirit stone you owe me [name].</i>\"\n\n");
			menu();
			if (flags[kFLAGS.SPIRIT_STONES] >= 10) addButton(1, "Pay", meetingNeisaPostDungeonExplorationPay);
			else addButtonDisabled(1, "Pay", "You still not have 10 spirit stones to pay back.");
			addButton(3, "Don't pay", meetingNeisaPostDungeonExplorationDontPay);
		}
		public function meetingNeisaPostDungeonExplorationDontPay():void {
			outputText("You walk away to go get the cash, gosh you're lucky she doesn't send the city guards on your back.\n\n");
			doNext(curry(enteringInn,false));
		}
		public function meetingNeisaPostDungeonExplorationPay():void {
			flags[kFLAGS.SPIRIT_STONES] -= 10;
			outputText("You hand over the payment, Neisa counting to be sure.\n\n");
			outputText("\"<i>Looks like we're even. I'll pass on the fact you skipped the payment and offer you my aid again so long as you can afford it.</i>\"\n\n");
			menu();
			addButton(1, "Hire her", meetingNeisaPostDungeonExplorationHireHer);
			addButton(3, "No", meetingNeisaPostDungeonExplorationNo);
		}
		public function meetingNeisaPostDungeonExplorationHireHer():void {
			outputText("Neisa packs up her things, ready to accompany you.\n\n");
			outputText("\"<i>Well lead the way, Boss.</i>\"\n\n");
			outputText("(<b>Neisa has been added to the Followers menu!</b>)\n\n");
			if (flags[kFLAGS.NEISA_FOLLOWER] < 6) {
				flags[kFLAGS.NEISA_LVL_UP] = 1;
				flags[kFLAGS.NEISA_DEFEATS_COUNTER] = 0;
				if (flags[kFLAGS.NEISA_AFFECTION] < 10) flags[kFLAGS.NEISA_AFFECTION] = 1;
			}
			flags[kFLAGS.NEISA_FOLLOWER] = 7;
			doNext(camp.returnToCampUseOneHour);
		}
		public function meetingNeisaPostDungeonExplorationNo():void {
			outputText("Nah you don't have that much right now.\n\n");
			outputText("\"<i>Well I hope whatever you meet out there doesn't outright kill or fuck the soul out of you then. See me again if you ever change your mind.</i>\"\n\n");
			if (flags[kFLAGS.NEISA_FOLLOWER] == 4) flags[kFLAGS.NEISA_FOLLOWER] = 5;
			doNext(curry(enteringInn,false));
		}

		public function firstTimeMeetingNekomataBoy():void {
			clearOutput();
			if (flags[kFLAGS.CURSE_OF_THE_JIANGSHI] == 1) {
				outputText("You wave again at the sketchy cat morph.\n\n");
				outputText("\"<i>Hey it's you the human! Have you thought it through and are you ready to take on my offer? There's 3000 gems down the line if you say yes.</i>\"\n\n");
			}
			else {
				outputText("You wave at the weird cat morph who lifts his eyes from his drink to acknowledge you then opens his eyes wide in surprise.\n\n");
				outputText("\"<i>A real human, here of all places? You just came at the perfect time "+player.mf("mister","miss")+"!</i>\"\n\n");
				outputText("The perfect time?\n\n");
				outputText("\"<i>I am a researcher studying the flow of Chi in the human body, the spiritual energy outsiders calls soulforce. I would like you to assist me in proving my thesis that humans are naturally disposed to soulforce.</i>\"\n\n");
				outputText("What is in it for you?\n\n");
				outputText("\"<i>Gems… how about three thousand? I know you outsiders have no interest in spirit stones and all I need is your collaboration here and now.</i>\"\n\n");
				outputText("Why now… he sure did make an interesting offer. Do you shake hands and seal the deal with him?"+(flags[kFLAGS.PATCHOULI_FOLLOWER] >= 2 ? " Something tells you catmorphs aren't exactly the most trustworthy of people. It might be Patchouli who's getting in your head again.":"")+"\n\n");
			}
			menu();
			addButton(1, "No", firstTimeMeetingNekomataBoyNo);
			addButton(3, "Yes", firstTimeMeetingNekomataBoyYes);
		}
		public function firstTimeMeetingNekomataBoyNo():void {
			outputText("Yeah no, this is looking too good to be true and truth be told it likely is. You tell the sketchy cat you will pass on it for now and head back towards the bar.\n\n");
			flags[kFLAGS.CURSE_OF_THE_JIANGSHI] = 1;
			doNext(curry(enteringInn,false));
		}
		public function firstTimeMeetingNekomataBoyYes():void {
			clearOutput();
			outputText("You shake hand with the twin tailed cat morph.\n\n");
			outputText("\"<i>It's a deal! Now come over to my house, I will get those tests done fast and then you can leave three thousand gems richer.</i>\"\n\n");
			outputText("He leads you to a big house at the far side of town and once inside, shows you the way to his lobby.\n\n");
			outputText("\"<i>After you, just go sit in the chair on the side, close your eyes and relax.</i>\"\n\n");
			outputText("You walk down the stairs then head for a chair to the side but just as you head for the seat you're suddenly struck by something heavy behind the head.\n\n");
			flags[kFLAGS.CURSE_OF_THE_JIANGSHI] = 2;
			doNext(firstTimeMeetingNekomataBoyYesPart2);
		}
		public function firstTimeMeetingNekomataBoyYesPart2():void {
			clearOutput();
			outputText("You wake up a few minutes later strapped to what appears to be a table. Your mind feels hazy, as if you were floating in the fog.\n\n");
			outputText("\"<i>Awake so soon? Well I guess that’s fine, it’s not like I don't enjoy when they struggle anyway. Can you even hear me in there? Well that's unlikely, what with all the sedative I injected in you, couldn't afford you waking and putting up a fight while I was playing dress up right?</i>\"\n\n");
			outputText("The cat morph chuckles to himself and you indeed notice the guy took his time to rid you of your armor, weaponry and other troublesome equipment. You're now dressed in what appears to be traditional oriental clothes fit for a "+player.mf("man","woman albeit of a somewhat risqué style")+", he even took the time to braid your hair.\n\n");
			outputText("\"<i>See, I have a client up there who is VERY fond of humans… human sex slaves that is. This guy likes his slaves obedient and always ready to serve with the bare minimum willpower yet willing and capable of defending him. Friend, it so happens that the slave market is an ever evolving business, one I intend to get rich with, so you’re going to help me with that. Did you know that by ");
			outputText("violently stripping potential slaves of their life forces, pouring a decent amount of corruption and making them energy dependant, you can create efficient and willing sex zombies? You of all people shall become the fruit of my years of research into creating the perfect slave, I call this new model of sex zombie, Jiangshi. First things first though, let's make you better looking.</i>\"\n\n");
			outputText("You try to protest but before you know it the mad cat grabs what appears to be a paper tag and sticks it to your forehead. The cat chuckles.\n\n");
			outputText("\"<i>Don't you worry it will all be over soon, the suffering is momentary if there is any. All you will think about is sex and within seconds you will be too empty headed to care about anything else.</i>\"\n\n");
			if (player.gender > 1 && player.biggestTitSize() > 0) {
				outputText("You moan, confused as your breast begins to heat up and inflate, your nipples stiffening as your boobs balloons in to ");
				if (player.biggestTitSize() < 7) {
					outputText("a pretty impressive E.");
					player.growTits((7 - player.biggestTitSize()), 1, false, 3);
				}
				else {
					player.growTits(1, 1, false, 3);
					outputText("a pretty impressive " + player.biggestTitSize() + ".");
				}
				if (player.hasCock()) outputText(" This said the transformation doesn't end there as heat begins to move down to your crotch.");
			}
			if (player.gender == 1) {
				outputText(" Your penis suddenly begins to drip pre as you immediately go erect, the blood vessels pulsing purple as if your cock was possessed while your member inflates in size, gaining five extra inches!");
				player.increaseCock(0, 5);
			}
			if (player.femininity > 50) player.femininity = 100;
			else player.femininity = 0;
			outputText(" The sexual changes are so intense you cum at once, your expression turning vacant. Your face begins to tingle as the magic alters your hormones, maxing out your "+player.mf("masculinity","femininity")+", you sure must look great right now. It'd be nice if it ended there but it doesn't, you watch in horror as your skin begins to bleach out, becoming paler by the second. You hear the last ");
			outputText("of your heartbeat a few seconds later before it falls silent. Your body stiffens to mimic this inertia, moving your joints is going to be difficult. Despite all this your sensations don't all die out, instead you begin to hear a different kind of heartbeat, the cat’s cock looks increasingly tempting now. How do you know it has a cock? It'd be a simple guess if not for the fact ");
			outputText("that you can smell and literally see his soulforce accumulating at his crotch. You need to get off this table and get to it, you yearn for it desperately. Food… this thing is food! Your mind begins to recede into a sluggish state, all of your thoughts focusing on sex. You voice your need with a long dim witted moan, trying to reach for the cat morph’s robe with your stiff yet tied up arms.\n\n");
			outputText("\"<i>Looks like the changes are about over, Ahh don't I love that vacant stupid expression of yours, that’s the look of just anybody who can only think about dicks and cunts. So, since you’re already this eager, how about you took a direct taste of mine, Eh???</i>\"\n\n");
			outputText("He grins wide and opens up his wizard robe, revealing the hardening cock you have been focusing on all this time before he unstraps you from the table and lets you get up on your own. Without hesitation you take his cock inside your mouth. He grumbles to himself, annoyed at your sluggish somewhat stiff motions but you still manage to properly suck him.\n\n");
			outputText("\"<i>Um, I didn't consider rigor mortis in my calculation, I will need to mention this hiccup to the client… at least "+player.mf("he","she")+" makes up for the clumsy moves with sheer determination and relentlessness.</i>\"\n\n");
			outputText("A few seconds later he finally orgasms, causing that amassed energy in his cock to flood down your throat in a white cascade. You almost faint as pleasure floods your head along with his energy yet thoughts becomes increasingly clearer as this seems to not only restore your mind but also sharpen it, heck not just your mind but your movement also becomes more fluid. ");
			outputText("It would seem your torturer messed up something in the charm and instead of removing your free will only emptied you of it, turning you into some kind of energy vampire that gets dumber when starved. Well your face might be stuck in that zombie like expression right now but your mind is racing as you take full awareness of the situation, and how easily it would be to turn the tables on your captor.\n\n");
			outputText("Satisfied with fucking your throat, the cat morph heads to the back of the room to retrieve a big box, likely the one he intended for you to lay into until he shipped you to whatever asshole serves as his client. Poor guy thinks you're too stupid to attempt anything. He gets one hell of a surprise as you grab his left arm with until now unprecedented agility, immobilizing him and begin ");
			outputText("to drink directly from the tap of his life force through your hand. He did say something about making you capable of guarding your master too, right? Seems he loaded you with quite a few upgrades. Guess he didn't account for the risks of getting overwhelmed by his own creations as you literally drain his soulforce until he passes out. ");
			outputText("You let him fall limply on the ground and look at him, he has foam at the mouth. Geeze your nails are poisonous too? While you doubt you killed him, you don't want him to just get away with this either so you dump him in the box he originally reserved for you and lock him up.\n\n");
			outputText("Thinking your problems to be over, you attempt to remove the cursed spell tag on your forehead but to your surprise it just doesn't come off. Guess you're stuck into this weird zombie like existence until you can find someone to help you with this. You literally hop out of the mage’s house, arm stretched forward, and head back to camp.\n\n");
			outputText("(<b>Gained Perks: Halted vitals, Super strength, Poison nails, Rigidity, Life leech, Undeath, Energy dependent</b>)\n\n");
			var skincolor:Number = rand(3);
			if (skincolor == 0) player.skinTone = "snow white";
			else if (skincolor == 1) player.skinTone = "ghostly pale";
			else player.skinTone = "light blue";
			CoC.instance.transformations.FaceJiangshi.applyEffect(false);
			player.eyes.type = Eyes.JIANGSHI;
			CoC.instance.transformations.EyesChangeColor(["turquoise"]).applyEffect(false);
			player.horns.type = Horns.SPELL_TAG;
			player.horns.count = 1;
			player.arms.type = Arms.JIANGSHI;
			player.lowerBody = LowerBody.JIANGSHI;
			player.createPerk(PerkLib.HaltedVitals, 0, 0, 0, 0);
			player.createPerk(PerkLib.SuperStrength, 0, 0, 0, 0);
			player.createPerk(PerkLib.PoisonNails, 0, 0, 0, 0);
			player.createPerk(PerkLib.Rigidity, 0, 0, 0, 0);
			player.createPerk(PerkLib.LifeLeech, 0, 0, 0, 0);
			player.createPerk(PerkLib.Undeath, 0, 0, 0, 0);
			player.createPerk(PerkLib.EnergyDependent, 0, 0, 0, 0);
			if (flags[kFLAGS.HAIR_GROWTH_STOPPED_BECAUSE_LIZARD] == 0) flags[kFLAGS.HAIR_GROWTH_STOPPED_BECAUSE_LIZARD]++;
			if (player.weapon != WeaponLib.FISTS) {
				if (flags[kFLAGS.AETHER_DEXTER_TWIN_AT_CAMP] == 2) flags[kFLAGS.AETHER_DEXTER_TWIN_AT_CAMP] = 1;
				else flags[kFLAGS.PLAYER_DISARMED_WEAPON_ID] = player.weapon.id;
				player.setWeapon(WeaponLib.FISTS);
			}
			if (player.weaponRange != WeaponRangeLib.NOTHING) {
				flags[kFLAGS.PLAYER_DISARMED_WEAPON_R_ID] = player.weaponRange.id;
				player.setWeaponRange(WeaponRangeLib.NOTHING);
			}
			if (player.shield != ShieldLib.NOTHING) {
				if (flags[kFLAGS.AETHER_SINISTER_TWIN_AT_CAMP] == 2) flags[kFLAGS.AETHER_SINISTER_TWIN_AT_CAMP] = 1;
				else flags[kFLAGS.PLAYER_DISARMED_SHIELD_ID] = player.shield.id;
				player.setShield(ShieldLib.NOTHING);
			}
			if (player.armor != ArmorLib.NOTHING) {
				if (player.armorName == "goo armor") player.armor.removeText();
				else flags[kFLAGS.PLAYER_DISARMED_ARMOR_ID] = player.armor.id;
			}
			player.setArmor(armors.TRADITC);
			if (player.lowerGarment != UndergarmentLib.NOTHING) {
				flags[kFLAGS.PLAYER_DISARMED_UNDERWEAR_BOTTOM_ID] = player.lowerGarment.id;
				player.setUndergarment(UndergarmentLib.NOTHING, UndergarmentLib.TYPE_LOWERWEAR);
			}
			if (player.upperGarment != UndergarmentLib.NOTHING) {
				flags[kFLAGS.PLAYER_DISARMED_UNDERWEAR_UPPER_ID] = player.upperGarment.id;
				player.setUndergarment(UndergarmentLib.NOTHING, UndergarmentLib.TYPE_UPPERWEAR);
			}
			if (player.headJewelry != HeadJewelryLib.NOTHING) flags[kFLAGS.PLAYER_DISARMED_HEAD_ACCESORY_ID] = player.headJewelry.id;
			player.setHeadJewelry(headjewelries.JIANGCT);
			if (player.hasPerk(PerkLib.BimboBody)) player.removePerk(PerkLib.BimboBody);
			if (player.hasPerk(PerkLib.BimboBrains)) player.removePerk(PerkLib.BimboBrains);
			if (player.hasPerk(PerkLib.BroBody)) player.removePerk(PerkLib.BroBody);
			if (player.hasPerk(PerkLib.BroBrains)) player.removePerk(PerkLib.BroBrains);
			if (player.hasPerk(PerkLib.FutaForm)) player.removePerk(PerkLib.FutaForm);
			if (player.hasPerk(PerkLib.FutaFaculties)) player.removePerk(PerkLib.FutaFaculties);
			player.statStore.replaceBuffObject({'str.mult':0.2,'tou.mult':0.2,'lib.mult':0.2,'sens':80}, 'Jiangshi Curse Tag', { text: 'Jiangshi Curse Tag' });
			player.strtouspeintwislibsenCalculation2();
			awardAchievement("Thriller", kACHIEVEMENTS.EPIC_THRILLER);
			CoC.instance.mainViewManager.updateCharviewIfNeeded();
			doNext(camp.returnToCampUseFourHours);
		}

		public function ChiChiDrunkSex():void {
			clearOutput();
			outputText("As you enter the bar you hear a feminine laughter swiftly spotting what seems to be ");
			if (flags[kFLAGS.CHI_CHI_FOLLOWER] >= 1 && flags[kFLAGS.CHI_CHI_AFFECTION] >= 20) outputText("Chi Chi");
			else if (flags[kFLAGS.CHI_CHI_FOLLOWER] >= 1 && flags[kFLAGS.CHI_CHI_AFFECTION] < 20) outputText("Chi Chi the waitress from the exotic food restaurant");
			else outputText("a blazing mouse girl");
			outputText(" sitting on one of the stool drinking sake.\n\n");
			outputText("\"<i>Yeah, and after I told it I was the top girl here I punched it in the face, Woooooooo!</i>\"\n\n");
			outputText("The barman sighs, pretending not to notice the drunken mouse, aside for when he has to serve her a new drink. Just as you are about to order something she realises you are there and engages in conversation.\n\n");
			if (flags[kFLAGS.CHI_CHI_FOLLOWER] > 2) outputText("\"<i>Gaaaaah, [name], why do you hang around all those girls. Worse why do you fuck with them and not me?! Its like you are a " + player.mf("go go boy","cheap whore") + " selling your body to everyone and thish drives me mad! Yeaaa, I’m going to prove them all I’m the top shlut!</i>\"");
			else if (flags[kFLAGS.CHI_CHI_FOLLOWER] == 1) outputText("\"<i>Hey... you’re that so called champ who lost in the arena?! Well I like you. I like you so much I’d want you as my " + player.mf("boy","girl") + "friend but waaaah I’m way too shy to tell you that right! Well don’t go tell [name] I like " + player.mf("him","her") + " got it? Yeah who cares about that! Barman a round for [name] the best person I met woooo. Now let’s have sex!</i>\"\n\n");
			else outputText("\"<i>Hey you... yesh you, the tall person over there! Think you can fight?! Well I’m pretty sure nobody in this village hash the guts to anyway. If you dare show up in the arena I will beat you to death like I do everyone. Now that I think of it, there are other kinds of battle I can beat people in. Bet you're the kind who fucks every demon you meet. Well not tonight, letsh bang!</i>\"");
			outputText("Wait, what? You barely have the time to mutter a reply before the red cheeked mousette pushes you on the nearest table and climbs over you. The barman pulls a curtain around your table, he must be used to this.\n\n");
			outputText("\"<i>Yeshh you heard me you big idiot. I’m going to fuck with you here and now! So don’t you dare try to run away because I will get very mad if you do.</i>\"\n\n");
			outputText("Do you let her?\n\n");
			menu();
			addButton(0, "Let Her", drunksex,true);
			addButton(1, "Refuse", drunksex,false);
		}
		private function drunksex(selected:Boolean):void {
			clearOutput();
			if (!selected) {
				outputText("" + (flags[kFLAGS.CHI_CHI_FOLLOWER] > 0 ? "Chi Chi" : "The mouse") + " is clearly out of it. Better stop her now before she does something she will regret later. You shove her to the side and run for the exit of the bar. Hearing her swear in background. Once outside you head back to camp.");
				doNext(camp.returnToCampUseOneHour);
			}
			else {
				outputText("You would have to be an idiot indeed to refuse this free fuck. The drunken mouse girl licks her lips in anticipation, grabbing your clothes and begins to removing them one-by-one. Unsurprisingly, her own clothes barely takes a second to remove. She is so close now you can feel her breath on your neck.");
				if (flags[kFLAGS.CHI_CHI_FOLLOWER] < 1) {
					outputText(" The mousette introduces herself.\n\n");
					outputText("\"<i>My name’s Chi Chi by the way, but... oh why does it matter? What's important is that we are about to have a lot of fun.</i>\"");
				}
				//post marriage
				if (player.hasCock()) {
					outputText(" Chi Chi initiates with a wet but warm kiss; Her tongue dancing tango with yours. While small in stature, she displays an uncommon level of strength rarely seen even among animal morphs. What’s more concerning is that you aren't sure how her burning tail and fur isn't actually setting everything on fire around her, especially you. You inquire on this matter.\n\n");
					outputText("\"<i>That’sh because I’m burning with passion for you big idiot! My flamesh won’t burn anything I wish not to. Or maybe they will. I never recalled how that one inn caught fire. Just you wait, I'll set both of our body aflame with desire. Your cock will be as hot as my embers.</i>\"\n\n");
					outputText("Well it's too late to back down anyway and, even if you did, the drunken megamouse is clearly going to keep you pinned down. Not to make your partner wait anymore, you slowly tease the entrance of her warm canal with your [cock]. If anything, despite being wet you can already feel how hot her oven is from the outside and can’t help but hope you won’t end up burned. Chi Chi however has no such concern and out of impatience starts stroking your dick with her embery tail.\n\n");
					outputText("\"<i>Come on, I know you want to put it in. What are you waiting for dumbassh?! I’m positively burning here.</i>\"\n\n");
					outputText("You're surprised by the direct contact with her fiery tail, even more so by the fact that it didn’t leave your dick with a third degree burn. Deciding to give the hot mouse what she wants, you put it in. Her vagina immediately starts milking you as if it was a thirsty mouth seeking water, and the frantic moving of her hips up down doesn’t help it.\n\n");
					outputText("\"<i>Gah doushe me! Don’t you shee how much I’m burning! Put that fire out with your manwater!</i>\"\n\n");
					outputText("Her pussy starts heating even more and before you know it, it actually transfers to you. Wow, your urethra is indeed as if possessed by some kind of angry efreeti. It's so hot you can’t think straight anymore, only the cool passage of cum can free you from this heat! You begin to piston in and out of Chi Chi desperate for a cooling release.\n\n");
					outputText("Both desperate for a way to get rid of the heat, the two of you manage to cum together, your jizz filling Chi Chi to the brim before slowly dripping on the ground. Chi Chi sighs in relief and exhaustion falling limp on the table.\n\n");
					outputText("\"<i>" + (flags[kFLAGS.CHI_CHI_FOLLOWER] > 2 ? "You're the besht [name] you know that? Let'sh do thish again sometimes, I jusht can’t get enough of it." : "You're a good boyfriend you know that? Let'sh do thish again sometimes.") + "</i>\"\n\n");
					outputText("She finally passes out, which is a good thing because, even if you're as tired as her, you think it'd be wise if you headed back to camp before she came back to her senses" + (flags[kFLAGS.CHI_CHI_FOLLOWER] == 2 ? ", especially because you're pretty sure she will beat you to death if she discovers the two of you had sex while she was drunk" : "") + ". You exit the establishment under the somewhat relieved gaze of the barman who gently proceeds to also get the sleeping inferno-mouse out with the help of a bouncer.\n\n");
				}
				else {
					outputText("Chi Chi initiates with a wet but warm kiss her tongue dancing tango with yours. While small in stature she displays an uncommon level of strength rarely seen even among animal morphs. What’s more concerning is that you aren't sure how come her burning tail and fur isn't actually setting on fire everything around her starting with you. You inquire on this matter.\n\n");
					outputText("\"<i>Thatsh because I’m burning with passion for you, big idiot! My flamesh won’t burn anything I wish not to. Or maybe they will. I never recalled how that one inn caught fire. Just you wait I'll set both of our body aflame with desire. Your pussy will be as hot as my embers.</i>\"\n\n");
					outputText("Well it's too late to back down anyway and, even if you did, the drunken megamouse is clearly going to keep you pinned down. Not to make your partner wait anymore you begin to grind your pussy lips against hers making her gasp in surprise at your initiative.\n\n");
					outputText("\"<i>Oh?! Finally fighting back? Good I love a girl that tries.</i>\"\n\n");
					outputText("Chi Chi begins to grind herself in response, making you both coo. For a drunk she clearly knows what she’s doing, almost like if drunken sex was an expertise of hers. You’re swiftly forced out back to reality as your blazing partner accelerates the tempo, causing you to moan in pleasure. Well now there's no way you going to simply lose this! You get the mouse ears with your hands and start caressing them. Chi Chi has a positive reaction and you are clearly getting to her however ");
					outputText("that's counting without her hidden weapon. Her burning tail lashes out like a whip and slides between you, aiming for your cunt. Before you can stop it you already have 15 inch of hot mouse tail in your [pussy] and Chi Chi uses it to fuck your brain out. The fuck isn't all that happens it seems her very heat start to spread on to you. Wow your cunt is indeed as if possessed by some kind of angry efreeti. It's so hot you can’t think straight anymore, ");
					outputText("only the cool passage of your girl-juices can free you from this heat! Meanwhile she grinds against her own tail bump but you have decided not to let her get off at her own pace. You swiftly slide " + (player.tailType > Tail.NONE ? "your tail" : "a pair of finger") + " in the smoking hot hinezumi cunt and retaliate with a set of rapid movement of your own.\n\n");
					outputText("Both desperate for a way to get rid of the heat and unable to fully outpace her, the two of you still manage to cum together your girl juices melding together and staining the ground. Chi Chi sighs in relief and exhaustion falling limp on the table.\n\n");
					outputText("\"<i>" + (flags[kFLAGS.CHI_CHI_FOLLOWER] > 2 ? "You're the besht [name] you know that? Let'sh do thish again sometimes, I jusht can’t get enough of it." : "You're a good girlfriend you know that? Let'sh do thish again sometimes.") + "</i>\"\n\n");
					outputText("She finally pass out which is a good thing because, even if you're as tired as her, you think it'd be wise if you headed back to camp before she came back to her senses" + (flags[kFLAGS.CHI_CHI_FOLLOWER] == 2 ? ", especially because you're pretty sure she will beat you to death if she discovers the two of you had sex while she was drunk" : "") + ". You exit the establishment under the somewhat relieved gaze of the barman who gently proceeded to also get the sleeping mouse out with the help of a bouncer.\n\n");
				}
				player.orgasm();
				if (flags[kFLAGS.CHI_CHI_FOLLOWER] < 1) flags[kFLAGS.CHI_CHI_FOLLOWER] = 1;
				doNext(camp.returnToCampUseOneHour);
			}
		}
	}
}