/**
 * Created by aimozg on 26.01.14.
 */
package classes
{
import classes.Player;
import classes.BodyParts.Arms;
import classes.BodyParts.Face;
import classes.BodyParts.LowerBody;
import classes.BodyParts.Tail;
import classes.GlobalFlags.kFLAGS;
import classes.Perks.*;

public class PerkLib
	{
		public function get game():CoC{
			return CoC.instance;
		}
		// UNSORTED perks TODO these are mostly incorrect perks: tested but never created
		public static const Buttslut:PerkType = mk("Buttslut", "Buttslut",
				"");
		public static const Focused:PerkType = mk("Focused", "Focused",
				"");
/* Never used, removed because it used a numbered event. Could be re-implemented differently if some new monster actually uses it
		public static const LastStrike:PerkType = mk("Last Strike", "Last Strike",
				"");
		public static const AnalFertility:PerkType = mk("Anal Fertility", "Anal Fertility", //Not implemented
				"Unlocks the ability to get anally pregnant other than Satyrs.");

*/
		// Player creation perks
		public static const Fast:PerkType = mk("Fast", "Fast",
				"Gains speed 25% faster.", null, true).withBuffs({'spe.mult':0.50});
		public static const Lusty:PerkType = mk("Lusty", "Lusty",
				"Gains lust 25% faster.", null, true).withBuffs({'lib.mult':0.50});
		public static const Pervert:PerkType = mk("Pervert", "Pervert",
				"Gains corruption 25% faster. Reduces corruption requirement for high-corruption variant of scenes.", null, true);
		public static const Sensitive:PerkType = mk("Sensitive", "Sensitive",
				"Gains sensitivity 25% faster.", null, true).withBuffs({'sens':50});
		public static const Wise:PerkType = mk("Wise", "Wise",
				"Gains wisdom 25% faster.", null, true).withBuffs({'wis.mult':0.50});
		public static const Smart:PerkType = mk("Smart", "Smart",
				"Gains intelligence 25% faster.", null, true).withBuffs({'int.mult':0.50});
		public static const Strong:PerkType = mk("Strong", "Strong",
				"Gains strength 25% faster.", null, true).withBuffs({'str.mult':0.50});
		public static const Tough:PerkType = mk("Tough", "Tough",
				"Gains toughness 25% faster.", null, true).withBuffs({'tou.mult':0.50});
		// Female creation perks
		public static const BigClit:PerkType = mk("Big Clit", "Big Clit",
				"Allows your clit to grow larger more easily and faster.", null, true);
		public static const BigTits:PerkType = mk("Big Tits", "Big Tits",
				"Makes your tits grow larger more easily.", null, true);
		public static const Fertile:PerkType = mk("Fertile", "Fertile",
				"Makes you 15% more likely to become pregnant.", null, true);
		public static const WetPussy:PerkType = mk("Wet Pussy", "Wet Pussy",
				"Keeps your pussy wet and provides a bonus to capacity.", null, true);
		// Male creation perks
		public static const BigCock:PerkType = mk("Big Cock", "Big Cock",
				"Gains cock size 25% faster and with less limitations.", null, true);
		public static const MessyOrgasms:PerkType = mk("Messy Orgasms", "Messy Orgasms",
				"Produces 50% more cum volume.", null, true);

		// Ascension perks
		public static const AscensionCumHose:AscensionCumHosePerk = new AscensionCumHosePerk();
		public static const AscensionDesires:AscensionDesiresPerk = new AscensionDesiresPerk();
		public static const AscensionEndurance:AscensionEndurancePerk = new AscensionEndurancePerk();
		public static const AscensionHardiness:AscensionHardinessPerk = new AscensionHardinessPerk();
		public static const AscensionFertility:AscensionFertilityPerk = new AscensionFertilityPerk();
		public static const AscensionFortune:AscensionFortunePerk = new AscensionFortunePerk();
		public static const AscensionFury:AscensionFuryPerk = new AscensionFuryPerk();
		public static const AscensionInnerPower:AscensionInnerPowerPerk = new AscensionInnerPowerPerk();
		public static const AscensionMilkFaucet:AscensionMilkFaucetPerk = new AscensionMilkFaucetPerk();
		public static const AscensionMoralShifter:AscensionMoralShifterPerk = new AscensionMoralShifterPerk();
		public static const AscensionMysticality:AscensionMysticalityPerk = new AscensionMysticalityPerk();
		public static const AscensionSoulPurity:AscensionSoulPurityPerk = new AscensionSoulPurityPerk();
		public static const AscensionSpiritualEnlightenment:AscensionSpiritualEnlightenmentPerk = new AscensionSpiritualEnlightenmentPerk();
		public static const AscensionTolerance:AscensionTolerancePerk = new AscensionTolerancePerk();
		public static const AscensionTranshumanism:AscensionTranshumanismPerk = new AscensionTranshumanismPerk();
		public static const AscensionTranshumanismStr:AscensionTranshumanismStrPerk = new AscensionTranshumanismStrPerk();
		public static const AscensionTranshumanismTou:AscensionTranshumanismTouPerk = new AscensionTranshumanismTouPerk();
		public static const AscensionTranshumanismSpe:AscensionTranshumanismSpePerk = new AscensionTranshumanismSpePerk();
		public static const AscensionTranshumanismInt:AscensionTranshumanismIntPerk = new AscensionTranshumanismIntPerk();
		public static const AscensionTranshumanismWis:AscensionTranshumanismWisPerk = new AscensionTranshumanismWisPerk();
		public static const AscensionTranshumanismLib:AscensionTranshumanismLibPerk = new AscensionTranshumanismLibPerk();
		public static const AscensionTranshumanismSen:AscensionTranshumanismSenPerk = new AscensionTranshumanismSenPerk();
		public static const AscensionVirility:AscensionVirilityPerk = new AscensionVirilityPerk();
		public static const AscensionWisdom:AscensionWisdomPerk = new AscensionWisdomPerk();

		// Ascension Rare perks
		public static const AscensionAdditionalOrganMutationX:PerkType = new AscensionOrganMutationX();
		public static const AscensionBuildingPrestigeX:PerkType = new AscensionBuildPrestigeX();

		public static const AscensionCruelChimerasThesis:PerkType = mk("Ascension: Cruel Chimera's Thesis", "Ascension: Cruel Chimera's Thesis",
				"Allows you to reduce the number of points required by one to acquire race-specific effects.");
		public static const AscensionHerosHeritage:PerkType = mk("Ascension: Hero's Heritage", "Ascension: Hero's Heritage",
				"After you reincarnated, you ended up in the body of a local hero descendant possessing a much firmer body and resolve giving you a slightly easier start to your quest in Mareth.");
		public static const AscensionHerosLineage:PerkType = mk("Ascension: Hero's Lineage", "Ascension: Hero's Lineage",
				"The body you reincarnate into has a stronger hero lineage than you, granting you an even better start before venturing into Mareth. You would probably need it.");
		public static const AscensionHybridTheory:PerkType = mk("Ascension: Hybrid Theory", "Ascension: Hybrid Theory",
				"Allows you to reduce the number of points required by one to acquire race-specific effects.");
		public static const AscensionNaturalMetamorph:PerkType = mk("Ascension: Natural Metamorph", "Ascension: Natural Metamorph",
				"While others had to work hard to unlock their metamorphic potential, it came naturally to you. Whatever the reason for that is... truth be told you try not to think about it, afraid of what it might mean for you. As long as it's nothing harmful for you in the long run, right?");
		public static const AscensionUnderdog:PerkType = mk("Ascension: Underdog", "Ascension: Underdog",
				"You're the underdog. Gain twice as much exp for beating up enemies above your current level with double the limit after which increases to gained exp stops.");// Also allow to use 'accidentally' finding all forgotten or hidden legacies from times before the demon invasion.");
		//Unable to migrate for now.

		//public static const AscensionTrancendentalGeneticMemoryStageX:PerkType = new AscensionTrancendentGenMemX();
		public static const AscensionTranscendentalGeneticMemoryStage1:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 1)", "Ascension: Transcendental Genetic Memory (Stage 1)",
				"Allows you to retain up to 15 chosen unlocked metamorphic options.");
		public static const AscensionTranscendentalGeneticMemoryStage2:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 2)", "Ascension: Transcendental Genetic Memory (Stage 2)",
				"Allows you to retain up to 30 chosen unlocked metamorphic options.");
		public static const AscensionTranscendentalGeneticMemoryStage3:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 3)", "Ascension: Transcendental Genetic Memory (Stage 3)",
				"Allows you to retain up to 45 chosen unlocked metamorphic options.");
		public static const AscensionTranscendentalGeneticMemoryStage4:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 4)", "Ascension: Transcendental Genetic Memory (Stage 4)",
				"Allows you to retain up to 60 chosen unlocked metamorphic options.");
		public static const AscensionTranscendentalGeneticMemoryStage5:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 5)", "Ascension: Transcendental Genetic Memory (Stage 5)",
				"Allows you to retain up to 75 chosen unlocked metamorphic options.");
		public static const AscensionTranscendentalGeneticMemoryStage6:PerkType = mk("Ascension: Transcendental Genetic Memory (Stage 6)", "Ascension: Transcendental Genetic Memory (Stage 6)",
				"Allows you to retain up to 90 chosen unlocked metamorphic options.");

		//public static const AscensionUnlockedPotentialStageX:PerkType = new AscensionUnlockPotentialX();
		public static const AscensionUnlockedPotential:PerkType = mk("Ascension: Unlocked Potential", "Ascension: Unlocked Potential",
				"Due to your past experiences, your body gets stronger faster than in your past life (increased passive hp (+80), lust (+6), fatigue (+6) gains at lvl-up).")
				.withBuffs({'maxfatigue_perlevel':+6,'maxlust_perlevel':+6});
		public static const AscensionUnlockedPotential2ndStage:PerkType = mk("Ascension: Unlocked Potential (2nd Stage)", "Ascension: Unlocked Potential (2nd Stage)",
				"Due to your past experiences, your body gets stronger faster than in your past life (increased passive wrath (+10), mana (+12), soulforce (+6) gains at lvl-up).")
				.withBuffs({'maxwrath_perlevel':+10,'maxmana_perlevel':+12,'maxsf_perlevel':+6});
		public static const AscensionUnlockedPotential3rdStage:PerkType = mk("Ascension: Unlocked Potential (3rd Stage)", "Ascension: Unlocked Potential (3rd Stage)",
				"Due to your past experiences, your body gets stronger faster than in your past life (2nd increase to passive hp (+80), lust (+6), fatigue (+6) gains at lvl-up).")
				.withBuffs({'maxfatigue_perlevel':+6,'maxlust_perlevel':+6});
		public static const AscensionUnlockedPotential4thStage:PerkType = mk("Ascension: Unlocked Potential (4th Stage)", "Ascension: Unlocked Potential (4th Stage)",
				"Due to your past experiences, your body gets stronger faster than in your past life (2nd increase to passive wrath (+10), mana (+12), soulforce (+6) gains at lvl-up).")
				.withBuffs({'maxwrath_perlevel':+10,'maxmana_perlevel':+12,'maxsf_perlevel':+6});
		//	public static const AscensionBuildingPrestige07:PerkType = mk("Ascension: Building Prestige (7th Stage)", "Ascension: Building Prestige (7th Stage)",
		//			"Your understanding of prestige jobs from previous lives allows you to pick an 8th one at lvl 42+.");
		//	public static const AscensionBuildingPrestige08:PerkType = mk("Ascension: Building Prestige (8th Stage)", "Ascension: Building Prestige (8th Stage)",
		//			"Your understanding of prestige jobs from previous lives allows you to pick a 9th one at lvl 42+.");
		//	public static const Ascension:PerkType = mk("Ascension: Artifical-made Metamorph", "Ascension: Artifical-made Metamorph",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");
		//	public static const Ascension:PerkType = mk("Ascension: ", "Ascension: ",
		//			".");

		//Deprecated Ascension Perks, kept only for upgrading. --Perhaps a seperate Lib for deprecated Perks?
		//Organs
		public static const AscensionAdditionalOrganMutation01:PerkType = mk("Ascension: Additional Organ Mutation (1st Stage)", "Ascension: Additional Organ Mutation (1st Stage)",
				"Numerous internal mutations changed your body to allow handle a 2nd mutation of the same organ/internal body part.");
		public static const AscensionAdditionalOrganMutation02:PerkType = mk("Ascension: Additional Organ Mutation (2nd Stage)", "Ascension: Additional Organ Mutation (2nd Stage)",
				"Numerous internal mutations changed your body to allow handle a 3rd mutation of the same organ/internal body part.");
		public static const AscensionAdditionalOrganMutation03:PerkType = mk("Ascension: Additional Organ Mutation (3rd Stage)", "Ascension: Additional Organ Mutation (3rd Stage)",
				"Numerous internal mutations changed your body to allow handle a 4th mutation of the same organ/internal body part.");
		public static const AscensionAdditionalOrganMutation04:PerkType = mk("Ascension: Additional Organ Mutation (4th Stage)", "Ascension: Additional Organ Mutation (4th Stage)",
				"Numerous internal mutations changed your body to allow handle a 5th mutation of the same organ/internal body part.");
		//Prestige
		public static const AscensionBuildingPrestige01:PerkType = mk("Ascension: Building Prestige (1st Stage)", "Ascension: Building Prestige (1st Stage)",
				"Your understanding of prestige jobs from your previous life allows you to pick a 2nd one at lvl 42+.");
		public static const AscensionBuildingPrestige02:PerkType = mk("Ascension: Building Prestige (2nd Stage)", "Ascension: Building Prestige (2nd Stage)",
				"Your understanding of prestige jobs from previous lives allows you to pick a 3rd one at lvl 42+.");
		public static const AscensionBuildingPrestige03:PerkType = mk("Ascension: Building Prestige (3rd Stage)", "Ascension: Building Prestige (3rd Stage)",
				"Your understanding of prestige jobs from previous lives allows you to pick a 4th one at lvl 42+.");
		public static const AscensionBuildingPrestige04:PerkType = mk("Ascension: Building Prestige (4th Stage)", "Ascension: Building Prestige (4th Stage)",
				"Your understanding of prestige jobs from previous lives allows you to pick a 5th one at lvl 42+.");
		public static const AscensionBuildingPrestige05:PerkType = mk("Ascension: Building Prestige (5th Stage)", "Ascension: Building Prestige (5th Stage)",
				"Your understanding of prestige jobs from previous lives allows you to pick a 6th one at lvl 42+.");
		public static const AscensionBuildingPrestige06:PerkType = mk("Ascension: Building Prestige (6th Stage)", "Ascension: Building Prestige (6th Stage)",
				"Your understanding of prestige jobs from previous lives allows you to pick a 7th one at lvl 42+.");

		// Bloodline perks
		public static const DragonsDescendant:PerkType = mk("Dragon's descendant", "Dragon's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a Dragon. (+2 to dragon score)");
		public static const BloodlineDragon:PerkType = mk("Bloodline: Dragon", "Bloodline: Dragon",
				"Your Dragon bloodline appears strongly within you. (+2 to dragon score)", null, true);
		public static const ElfsDescendant:PerkType = mk("Elf's descendant", "Elf's descendant",
				"You are a descendant of your ancestor, who was the child of a human and an Elf. (+2 to elf score)");
		public static const BloodlineElf:PerkType = mk("Bloodline: Elf", "Bloodline: Elf",
				"Your Elf bloodline appears strongly within you. (+2 to elf score)", null, true);
		public static const GoblinsDescendant:PerkType = mk("Race's descendant", "Race's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a Goblin. (+2 to goblin score)");
		public static const BloodlineGoblin:PerkType = mk("Bloodline: Goblin", "Bloodline: Goblin",
				"Your Goblin bloodline appears strongly within you. (+2 to goblin score)", null, true);
		public static const KitsunesDescendant:PerkType = mk("Kitsune's descendant", "Kitsune's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a Kitsune. (+2 to kitsune score)");
		public static const BloodlineKitsune:PerkType = mk("Bloodline: Kitsune", "Bloodline: Kitsune",
				"Your Kitsune bloodline appears strongly within you. (+2 to kitsune score)", null, true);
		public static const RaijusDescendant:PerkType = mk("Raiju's descendant", "Raiju's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a Raiju. (+2 to raiju score)");
		public static const BloodlineRaiju:PerkType = mk("Bloodline: Raiju", "Bloodline: Raiju",
				"Your Raiju bloodline appears strongly within you. (+2 to raiju score)", null, true);
		public static const MelkiesDescendant:PerkType = mk("Melkie's descendant", "Melkie's descendant",
				"You are a descendant of your ancestor, who was the child of a human and an Melkie. (+2 to melkie score)");
		public static const BloodlineMelkie:PerkType = mk("Bloodline: Melkie", "Bloodline: Melkie",
				"Your Melkie bloodline appears strongly within you. (+2 to melkie score)", null, true);
		public static const MinotaursDescendant:PerkType = mk("Minotaur's descendant", "Minotaur's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a Minotaur. (+2 to minotaur/cow score)");
		public static const BloodlineMinotaur:PerkType = mk("Bloodline: Minotaur", "Bloodline: Minotaur",
				"Your Minotaur bloodline appears strongly within you. (+2 to minotaur/cow score)", null, true);
		public static const OnisDescendant:PerkType = mk("Oni's descendant", "Oni's descendant",
				"You are a descendant of your ancestor, who was the child of a human and an Oni. (+2 to oni score)");
		public static const BloodlineOni:PerkType = mk("Bloodline: Oni", "Bloodline: Oni",
				"Your Oni bloodline appears strongly within you. (+2 to oni score)", null, true);
		public static const OrcsDescendant:PerkType = mk("Orc's descendant", "Orc's descendant",
				"You are a descendant of your ancestor, who was the child of a human and an Orc. (+2 to orc score)");
		public static const BloodlineOrc:PerkType = mk("Bloodline: Orc", "Bloodline: Orc",
				"Your Orc bloodline appears strongly within you. (+2 to orc score)", null, true);
		public static const VampiresDescendant:PerkType = mk("Vampire's descendant", "Vampire's descendant",
				"You are a descendant of your ancestor, who was the child of a human and a vampire. (+2 to vampire score)");
		public static const BloodlineVampire:PerkType = mk("Bloodline: Vampire", "Bloodline: Vampire",
				"Your Vampire bloodline appears strongly within you. (+2 to vampire score)", null, true);
	//	public static const sDescendant:PerkType = mk("Race's descendant", "Race's descendant",
	//			"You are a descendant of your ancestor, who was the child of a human and a (Race). (+2 to  score)");
	//	public static const Bloodline:PerkType = mk("Bloodline: Demon", "Bloodline: Demon",
	//			"Your Demonic bloodline appears strongly within you. (+2 to  score)", null, true);
	//	public static const sDescendant:PerkType = mk("Race's descendant", "Race's descendant",
	//			"You are a descendant of your ancestor, who was the child of a human and a (Race). (+2 to  score)");
	//	public static const Bloodline:PerkType = mk("Bloodline: Demon", "Bloodline: Demon",
	//			"Your Demonic bloodline appears strongly within you. (+2 to  score)", null, true);

		// History perks
		public static const HistoryAlchemist:PerkType = mk("History: Alchemist", "History: Alchemist",
				"Alchemical experience makes items more reactive to your body.");
		public static const PastLifeAlchemist:PerkType = mk("Past Life: Alchemist", "Past Life: Alchemist",
				"Alchemical experience makes items more reactive to your body.", null, true);
		public static const HistoryCultivator:PerkType = mk("History: Cultivator", "History: Cultivator",
				"Soulforce is easier to keep giving you a 10% increase to your maximum amount.");
		public static const PastLifeCultivator:PerkType = mk("Past Life: Cultivator", "Past Life: Cultivator",
				"Soulforce is easier to keep giving you a 10% increase to your maximum amount.", null, true);
		public static const HistoryFighter:PerkType = mk("History: Fighter", "History: Fighter",
				"A Past full of conflict increases physical melee damage dealt by 10% and acc by 20%.");
		public static const PastLifeFighter:PerkType = mk("Past Life: Fighter", "Past Life: Fighter",
				"A Past full of conflict increases physical melee damage dealt by 10% and acc by 20%.", null, true);
		public static const HistoryFortune:PerkType = mk("History: Fortune", "History: Fortune",
				"Your luck and skills at gathering currency allows you to get 15% more gems from victories.");
		public static const PastLifeFortune:PerkType = mk("Past Life: Fortune", "Past Life: Fortune",
				"Your luck and skills at gathering currency allows you to get 15% more gems from victories.", null, true);
		public static const HistoryHealer:PerkType = mk("History: Healer", "History: Healer",
				"Healing experience increases HP gains by 20%.");
		public static const PastLifeHealer:PerkType = mk("Past Life: Healer", "Past Life: Healer",
				"Healing experience increases HP gains by 20%.", null, true);
		public static const HistoryReligious:PerkType = mk("History: Religious", "History: Religious",
				"Replaces masturbate with meditate when corruption less than or equal to 66. Reduces minimum libido slightly.");
		public static const PastLifeReligious:PerkType = mk("Past Life: Religious", "Past Life: Religious",
				"Replaces masturbate with meditate when corruption less than or equal to 66. Reduces minimum libido slightly.", null, true);
		public static const HistoryScholar:PerkType = mk("History: Scholar", "History: Scholar",
				"Time spent focusing your mind makes your max mana increase by 10%.");
		public static const PastLifeScholar:PerkType = mk("Past Life: Scholar", "Past Life: Scholar",
				"Time spent focusing your mind makes your max mana increase by 10%.", null, true);
		public static const HistoryScout:PerkType = mk("History: Scout", "History: Scout",
				"A past full of archery training increases physical range damage dealt by 10% and acc by 20%.");
		public static const PastLifeScout:PerkType = mk("Past Life: Scout", "Past Life: Scout",
				"A past full of archery training increases physical range damage dealt by 10% and acc by 20%.", null, true);
		public static const HistorySlacker:PerkType = mk("History: Slacker", "History: Slacker",
				"Regenerate fatigue 20% faster.");
		public static const PastLifeSlacker:PerkType = mk("Past Life: Slacker", "Past Life: Slacker",
				"Regenerate fatigue 20% faster.", null, true);
		public static const HistorySlut:PerkType = mk("History: Slut", "History: Slut",
				"Sexual experience has made you more able to handle large insertions and more resistant to stretching.");
		public static const PastLifeSlut:PerkType = mk("Past Life: Slut", "Past Life: Slut",
				"Sexual experience has made you more able to handle large insertions and more resistant to stretching.", null, true);
		public static const HistorySmith:PerkType = mk("History: Smith", "History: Smith",
				"Knowledge of armor and fitting increases armor effectiveness by roughly 5% each (phys + mag).");
		public static const PastLifeSmith:PerkType = mk("Past Life: Smith", "Past Life: Smith",
				"Knowledge of armor and fitting increases armor effectiveness by roughly 5% each (phys + mag).", null, true);
		public static const HistoryTactician:PerkType = mk("History: Tactician", "History: Tactician",
				"Tactical knowledge allows you to increase effectivness of your subordinates. (+10% to minions/pets damage).");
		public static const PastLifeTactician:PerkType = mk("Past Life: Tactician", "Past Life: Tactician",
				"Tactical knowledge allows you to increase effectivness of your subordinates. (+10% to minions/pets damage).", null, true);
		public static const HistoryWhore:PerkType = mk("History: Whore", "History: Whore",
				"Seductive experience causes your tease attacks to be 15% more effective.");
		public static const PastLifeWhore:PerkType = mk("Past Life: Whore", "Past Life: Whore",
				"Seductive experience causes your tease attacks to be 15% more effective.", null, true);

		// Ordinary (levelup) perks
		public static const AdrenalineRush:PerkType = mk("Adrenaline Rush", "Adrenaline Rush",
				"Always start combat with 100 more points of wrath.",
				"You've chosen the 'Adrenaline Rush' perk, to always start combat with 100 more points of wrath.");
		public static const AdvancedGolemancyTheory:PerkType = mk("Advanced Golemancy Theory", "Advanced Golemancy Theory",
				"Enable option to make steel golems and store 1 such golem.",
				"You've chosen the 'Advanced Golemancy Theory' perk, allowing to make steel golems.");
		public static const BalanceBreaker:PerkType = mk("Balance breaker", "Balance breaker",
				"Your brutal strikes while wielding maces or hammers may leave your opponents disoriented. (Attacks with maces/hammers can powerstun and ignore stun immunity but with halved stun chance)",
				"You've chosen the 'Balance breaker' perk. Your brutal strikes while wielding maces or hammers may leave your opponents disoriented. (Attacks with maces/hammers can powerstun and ignore stun immunity but with halved stun chance)");
		public static const BoneSoul:PerkType = mk("Bone soul", "Bone soul",
				"When the bone reserve is at 0 you can still cast necromancy spells. However the effect of these spells is reduced by 50%. If the player has more than 50 demon bones, damage is instead increased by 10% per 10 bone owned up to 200%. Increase limit of stored demonic bones by 100.",
				"You've chosen the 'Bone soul' perk. When the bone reserve is at 0 you can still cast necromancy spells. However the effect of these spells is reduced by 50%. If the player has more than 50 demon bones, damage is instead increased by 10% per 10 bone owned up to 200%. Increase limit of stored demonic bones by 100.");
		public static const ChallengingShout:PerkType = mk("Challenging shout", "Challenging shout",
				"You can now use the ability Warrior Shout! (+20% of max/overmax wrath)",
				"You've chosen the 'Challenging shout' perk, gaining access to use Warrior Shout special. (+20% of max/overmax wrath)");
		public static const ControlFreak:PerkType = mk("Control freak", "Control freak",
				"Grapple damage and tease damage increase by 50% for each consecutive round you are holding grapple. Damage multiplier reset to 1 once grapple ends.",
				"You've chosen the 'Control freak' perk. Grapple damage and tease damage increase by 50% for each consecutive round you are holding grapple. Damage multiplier reset to 1 once grapple ends.");
		public static const CorruptMagic:PerkType = mk("Corrupt magic", "Corrupt magic",
				"Your spells gain aligned damage, dealing more damage against the pure. Spells that drain health heals for twice as much while Dark Ritual is active.",
				"You've chosen the 'Corrupt magic' perk. Your spells gain aligned damage, dealing more damage against the pure. Spells that drain health heals for twice as much while Dark Ritual is active.");
		public static const CursedTag:PerkType = mk("Cursed Tag", "Cursed Tag",
				"Through arcane study, you've begun to understand the magical working of your cursed tag, allowing you to improve your abilities by altering some of the unholy text. This allows you to add one power from a list of abilities.",
				"You've chosen the 'Cursed Tag' perk. Through arcane study, you've begun to understand the magical working of your cursed tag, allowing you to improve your abilities by altering some of the unholy text. This allows you to add one power from a list of abilities.");
		public static const DarkRitual:PerkType = mk("Dark Ritual", "Dark Ritual",
				"Allow to use the Dark Ritual option wich can be Toggled on or off. While Dark Ritual is active spells are 300% stronger but consume 10% health on cast as they are paid in blood.",
				"You've chosen the 'Dark Ritual' perk, Allowing you to sacricice health to empower your spells.");
		public static const DivineArmament:PerkType = mk("Divine armament", "Divine armament",
				"Charge weapon/armor spell power is doubled and works at full power even when using heavy armor. If wearing a robe, PC gains a bonus to armor equal to 1/3 of its level. Staves wielded without a shield can now be used to block (10%) and gain a tripled base damage value on physical attacks.",
				"You've chosen the 'Divine armament' perk. Charge weapon/armor spell power is doubled and works at full power even when using heavy armor. If wearing a robe, PC gains a bonus to armor equal to 1/3 of its level. Staves wielded without a shield can now be used to block (10%) and gain a tripled base damage value on physical attacks.");
		public static const DivineKnowledge:PerkType = mk("Divine Knowledge", "Divine Knowledge",
				"Allow to cast divine magic spells as long corruption is 20-, locks out access to black spells and deal 20% more dmg when using white or divine magic to attack corrupted enemies.",
				"You've chosen the 'Divine Knowledge' perk. Allow to cast divine magic spells as long corruption is 20-, locks out access to black spells and deal 20% more dmg when using white or divine magic to attack corrupted enemies.");
		public static const FuriousStrikes:PerkType = mk("Furious strikes", "Furious strikes",
				"Wrath generated by base melee/range attacks and abilities increases by 100%.",
				"You've chosen the 'Furious strikes' perk, wrath generated by base melee/range attacks and abilities increases by 100%.");
		public static const GreaterCursedTag:PerkType = mk("Greater Cursed Tag", "Greater Cursed Tag",
				"You benefit from all undead powers at all times.",
				"You've chosen the 'Cursed Tag' perk. You benefit from all undead powers at all times.");
		public static const GreaterHarvest:PerkType = mk("Greater harvest", "Greater harvest",
				"A demon is now considered to carry 5 to 20 bones and you may now have up to 6 Skeleton of each type.",
				"You've chosen the 'Greater harvest' perk. A demon is now considered to carry 5 to 20 bones and you may now have up to 6 Skeleton of each type.");
		public static const HexKnowledge:PerkType = mk("Hex Knowledge", "Hex Knowledge",
				"Allow to cast hex magic spells as long corruption is 80+, locks out access to white spells and deal 20% more dmg when using black or hex magic to attack pure enemies.",
				"You've chosen the 'Hex Knowledge' perk. Allow to cast hex magic spells as long corruption is 80+, locks out access to white spells and deal 20% more dmg when using black or hex magic to attack pure enemies.");
		public static const ImprovedAdrenaline:PerkType = mk("Improved Adrenaline", "Improved Adrenaline",
				"Increase wrath generated with using melee/range/specials by 1% of max wrath.",
				"You've chosen the 'Improved Adrenaline' perk, increasing wrath generated with using melee/range/specials by 1% of max wrath.");
		public static const ImprovedCursedTag:PerkType = mk("Improved Cursed Tag", "Improved Cursed Tag",
				"You may keep 2 undead powers active at all times.",
				"You've chosen the 'Cursed Tag' perk. You may keep 2 undead powers active at all times.");
		public static const KnightlySword:PerkType = mk("Knightly sword", "Knightly sword",
				"Regular swords increases parry chance by 15% and grants an extra +10% damage reduction when paired with a shield.",
				"You've chosen the 'Knightly sword' perk. Regular swords increases parry chance by 15% and grants an extra +10% damage reduction when paired with a shield.");
		public static const LockAndLoad:PerkType = mk("Lock and load", "Lock and load",
				"You gained decreased accuracy penalty (-5%) for multi attacks and slight increased firerate (+1 attack per 2 attacks).",
				"You've chosen the 'Lock and load' perk, gaining decreased accuracy penalty (-5%) for multi attacks and slight increased firerate (+1 attack per 2 attacks).");
		public static const MagesWrath:PerkType = mk("Mage's Wrath", "Mage's Wrath",
				"Magic Bolt (and Elemental Bolt if PC knows it) will be castable in (Ex) version that increase their power 2x while additionaly using 100 wrath. Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Mage's Wrath' perk, allowing to cast some simple spells with using wrath to enpower them and increase safe limit of wrath for spellcasting.");
		public static const MagesWrathEx:PerkType = mk("Mage's Wrath (Ex)", "Mage's Wrath (Ex)",
				"Tier 1 elemental spells will be castable in (Ex) version that increase their power 2x while additionaly using 100 wrath. Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Mage's Wrath (Ex)' perk, allowing to cast tier 1 elemental spells with using wrath to enpower them and increase safe limit of wrath for spellcasting.");
		public static const ManaCore:PerkType = mk("Mana Core", "Mana Core",
				"Increase max mana by 10% + 10% to 15% (per each attained magical mastery stage) of base value.",
				"You've chosen the 'Mana Core' perk. As a result of extended magical training and exercises you managed to form mana core in your body, which resulted in increased capacity to store mana.");
		public static const NaturalArsenal:PerkType = mk("Natural Arsenal", "Natural Arsenal",
				"All natural weapon based racial abilities gain a +50% damage bonus.",
				"You've chosen the 'Natural Arsenal' perk, all natural weapon based racial abilities gain a +50% damage bonus.");
		public static const NaturalInstincts:PerkType = mk("Natural Instincts", "Natural Instincts",
				"All racial ability cooldowns are reduced by one. Enable autocast of Crinos Shape at start of combat.",
				"You've chosen the 'Natural Instincts' perk, all racial ability cooldowns are reduced by one. Enable autocast of Crinos Shape at start of combat.");
		public static const OrthodoxDuelist:PerkType = mk("Orthodox duelist", "Orthodox duelist",
				"Wielding a dueling sword with no off hand, increases critical damage by 20% and the chance to parry blows by 10% based on speed.",
				"You've chosen the 'Orthodox duelist' perk. Wielding a dueling sword with no off hand, increases critical damage by 20% and the chance to parry blows by 10% based on speed.");
		public static const PrimedClipWarp:PerkType = mk("Primed Clip Warp", "Primed Clip Warp",
				"Triples max ammo (600% of base ammo count) and give 25% chance to not use ammo after each single attack.",
				"You've chosen the 'Primed Clip Warp' perk. Triples max ammo (600% of base ammo count) and give 25% chance to not use ammo after each single attack.");
		public static const PureMagic:PerkType = mk("Pure magic", "Pure magic",
				"Your spells gain aligned damage, dealing more damage against the corrupt. Buff spells now last for the battle duration.",
				"You've chosen the 'Pure magic' perk. Your spells gain aligned damage, dealing more damage against the corrupt. Buff spells now last for the battle duration.");
		public static const RatatoskrSmarts:PerkType = mk("Ratatoskr smarts", "Ratatoskr smarts",
				"Allows to perma Weird words.",
				"You've chosen the 'Ratatoskr smarts' perk, Allows to perma Weird words.").withBuffs({'int.mult':0.05});
		public static const RatatoskrSmartsEvolved:PerkType = mk("Ratatoskr smarts (Evolved)", "Ratatoskr smarts (Evolved)",
				"Increase the damage of Weird words by 20%. Lower cooldown of Knowledge overload by 1 turn.",
				"You've chosen the 'Ratatoskr smarts (Evolved)' perk, Increase the damage of Weird words by 20%. Lower cooldown of Knowledge overload by 1 turn.").withBuffs({'int.mult':0.10});
		public static const RatatoskrSmartsFinalForm:PerkType = mk("Ratatoskr smarts (Final Form)", "Ratatoskr smarts (Final Form)",
				"Increase the damage of Weird words by another 30%. Lower cooldowns of ratatoskr specials by 1 turn. Knowledge is power is now three times as effective.",
				"You've chosen the 'Ratatoskr smarts (Final Form)' perk, Increase the damage of Weird words by another 30%. Lower cooldowns of ratatoskr specials by 1 turn. Knowledge is power is now three times as effective.").withBuffs({'int.mult':0.20});
		public static const Sadomasochism:PerkType = mk("Sadomasochism", "Sadomasochism",
				"You are aroused by the helplessness of your opponent just as much as you get aroused in getting hit. This causes your tease to become stronger when you are close to defeat. (PC gains +20% tease damage with low health and +20% tease damage with high arousal to either PC or the target.)",
				"You've chosen the 'Sadomasochism' perk. You are aroused by the helplessness of your opponent just as much as you get aroused in getting hit. This causes your tease to become stronger when you are close to defeat.");
		public static const SharedPower:PerkType = mk("Shared power", "Shared power",
				"Each elementalist perk learned gives a +10% multi bonus to health, damage and spell power when in an infused state.",
				"You've chosen the 'Shared power' perk. Each elementalist perk learned gives a +10% multi bonus to health, damage and spell power when in an infused state.");
		public static const SilverForMonsters:PerkType = mk("Silver for monsters", "Silver for monsters",
				"Firearms deals 20% extra damage and 50% increased critical damage to demons and their corrupted servants.",
				"You've chosen the 'Silver for monsters' perk. Firearms deals 20% extra damage and 50% increased critical damage to demons and their corrupted servants.");
		public static const SkeletonLord:PerkType = mk("Skeleton Lord", "Skeleton Lord",
				"You may now control up to 10 skeleton of each type. Allow to levitate all skeletons.",
				"You've chosen the 'Skeleton Lord' perk. You may now control up to 10 skeleton of each type. Allow to levitate all skeletons.");
		public static const Survivalist3:PerkType = mk("Survivalist 3", "Survivalist 3",
				"Slows hunger rate by another 20%.",
				"You've chosen the 'Survivalist 3' perk.  With this perk, your hunger rate is reduced second time by another 20%.");
		public static const TaintedMagazine:PerkType = mk("Tainted Magazine", "Tainted Magazine",
				"Increase reload cost by 2 and doubles max ammo (200% of base ammo count).",
				"You've chosen the 'Tainted Magazine' perk. Increase reload cost by 2 and doubles max ammo (200% of base ammo count).");
		public static const UnbreakableBind:PerkType = mk("Unbreakable bind", "Unbreakable bind",
				"Improves all binding abilities efficiency by 100%.",
				"You've chosen the 'Unbreakable bind' perk. Improves all binding abilities efficiency by 100%.");
		public static const UnlimitedRage:PerkType = mk("Unlimited rage", "Unlimited rage",
				"Wrath generated by base melee/range attacks and abilities increases by 100%.",
				"You've chosen the 'Unlimited rage' perk, wrath generated by base melee/range attacks and abilities increases by 100%.");
		public static const VexedNocking:PerkType = mk("Vexed nocking", "Vexed nocking",
				"Increase Power Attack/Shoot damage multiplier ratio from 1:2/5/10 to 1:4/10/20. Additional increase initial bonus to damage from 50 to 100%.",
				"You've chosen the 'Vexed nocking' perk. Increase Power Attack/Shoot damage multiplier ratio from 1:2/5/10 to 1:4/10/20. Additional increase initial bonus to damage from 50 to 100%.");
		public static const WayOfTheWarrior:PerkType = mk("Way of the Warrior", "Way of the Warrior",
				"Enable autocast of Warrior's rage and boost it based on PC current stats. (+1 per 10 pts of core stat value)",
				"You've chosen the 'Way of the Warrior' perk, allowing to enable autocast of Warrior's rage and boost it based on PC current stats.");
		//public static const BloodSacrifice:PerkType = mk("Blood Sacrifice", "Blood Sacrifice",
				//"You are currently sacrificing blood to empower your spells.",
				//"You are currently sacrificing blood to empower your spells.");
		public static const TooAngryToDie:PerkType = mk("Too Angry to Die", "Too Angry to Die",
				"",//stay alive when berserking at cost of super fast 20%(or 25%) max wrath drain per turn when below min HP or above max Lust (?drain decreased by some specific perks?)?
				"You've chosen the 'Too Angry to Die' perk, .")
				.withBuffs({'maxwrath_base':+3000});
		public static const WarMageNovice:PerkType = mk("Novice War Mage", "Novice War Mage",
				"Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Novice War Mage' perk, increasing wrath bar by 50 and safe limit for spellcasting increasing by 5%.")
				.withBuffs({'maxwrath_base':+50});
		public static const WarMageApprentice:PerkType = mk("Apprentice War Mage", "Apprentice War Mage",
				"In-combat mana recovery increased by 10. Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Apprentice War Mage' perk, increasing wrath bar by 50, increasing in-combat mana recovery by 10 and safe limit for spellcasting increasing by 5%.")
				.withBuffs({'maxwrath_base':+50});
		public static const WarMageAdept:PerkType = mk("Adept War Mage", "Adept War Mage",
				"In-combat mana recovery increased by 15. Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Adept War Mage' perk, increasing wrath bar by 150, increasing in-combat mana recovery by 15 and safe limit for spellcasting increasing by 5%.")
				.withBuffs({'maxwrath_base':+150});
		public static const WarMageExpert:PerkType = mk("Expert War Mage", "Expert War Mage",
				". Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Expert War Mage' perk, and safe limit for spellcasting increased by 5%.");
		public static const WarMageMaster:PerkType = mk("Master War Mage", "Master War Mage",
				". Safe limit for spellcasting increased by 5%.",
				"You've chosen the 'Master War Mage' perk, and safe limit for spellcasting increased by 5%.");
		public static const FlyingSwordPath:PerkType = mk("Flying Sword Path", "Flying Sword Path",
				"Allow to control flying swords. With spending enough soulforce can even fly on them. (+50 max soulforce)",
				"You've chosen the 'Flying Sword Path' perk. Allow to control flying swords. With spending enough soulforce can even fly on them. (+50 max soulforce)")
				.withBuffs({'maxsf_base':+50});
		public static const SoaringBlades:PerkType = mk("Soaring Blades", "Soaring Blades",
				"Reduce SF cost of attacking with flying swords or flying on them by 20% per each stage of dantain attained.",
				"You've chosen the 'Soaring Blades' perk. Reduce SF cost of attacking with flying swords or flying on them by 20% per each stage of dantain attained.");
		public static const VenomousDiet:PerkType = mk("Venomous Diet", "Venomous Diet",
				"Increase venom/web recharge speed based on current hunger level. (will have no effect if max venom/web is at 0)",
				"You've chosen the 'Venomous Diet' perk. Increase venom/web recharge speed based on current hunger level. (will have no effect if max venom/web is at 0)");
		public static const HighlyVenomousDiet:PerkType = mk("Highly Venomous Diet", "Higly Venomous Diet",
				"Increase venom/web recharge speed at cost of faster getting hungry. (will have no effect if max venom/web is at 0)",
				"You've chosen the 'Higly Venomous Diet' perk. Increase venom/web recharge speed at cost of faster getting hungry. (will have no effect if max venom/web is at 0)");
		public static const AxillaryVenomGlands:PerkType = mk("Axillary Venom Glands", "Axillary Venom Glands",
				"Increase venom/web recharge speed based by 100% at cost of 1% of max HP lost per tick. (if hunger mode is active will instead drain hunger 2x faster)",
				"You've chosen the 'Axillary Venom Glands' perk. Increase venom/web recharge speed based by 100% at cost of 1% of max HP lost per tick. (if hunger mode is active will instead drain hunger 2x faster)");
		public static const VenomousAdiposeTissue:PerkType = mk("Venomous Adipose Tissue", "Venomous Adipose Tissue",
				"Increase venom/web recharge speed and maximum capacity based on current toughness and thickness. (higher tou/thick value the smaller increases) (will have no effect if max venom/web is at 0) (will have no effect if max venom/web is at 0)",
				"You've chosen the 'Venomous Adipose Tissue' perk. Increase venom/web recharge speed and maximum capacity based on current toughness and thickness. (higher tou/thick value the smaller increases)");
		public static const LiftOff:PerkType = mk("Lift Off", "Lift Off",
				"Allows you to start combat already flying.",
				"You've chosen the 'Lift Off' perk, allowing you to start combat already flying.");
		public static const GreyMagic:PerkType = mk("Grey Magic", "Grey Magic",
				"Access to learn and cast grey magic spells. (+30 to max lust)",
				"You've chosen the 'Grey Magic' perk, gaining access to grey spells. (+30 to max lust)")
				.withBuffs({'maxlust_base':+30});
		public static const DefensiveStaffChanneling:PerkType = mk("Defensive Staff Channeling", "Defensive Staff Channeling",
				"When you would cast defensive spell holding staff it effects would be increased a bit (higher defensive effect or longer duration).",
				"You've chosen the 'Defensive Staff Channeling' perk. When you would cast defensive spell holding staff it effects would be increased a bit (higher defensive effect or longer duration).");
		public static const OffensiveStaffChanneling:PerkType = mk("Offensive Staff Channeling", "Offensive Staff Channeling",
				".",
				"You've chosen the 'Offensive Staff Channeling' perk. .");
		public static const ElementalConjurerKnowledge:PerkType = mk("Elemental Conjurer Knowledge", "Elemental Conjurer Knowledge",
				"You gained knowledge how to make elementals rank up process less resource consuming. (-40% needed mana/fatigue and 40% less HP lost during failure)",
				"You've chosen the 'Elemental Conjurer Knowledge' perk, gaining knowledge how to make elementals rank up process less resource consuming. (-40% needed mana/fatigue and 40% less HP lost during failure)");
		public static const ElementalConjurerKnowledgeEx:PerkType = mk("Elemental Conjurer Knowledge (Ex)", "Elemental Conjurer Knowledge (Ex)",
				"Decrease chance to fail when ranking up an elemental or/and replace mana with elemental energy gained from sacrificing elemental shards to arcane circle.",
				"You've chosen the 'Elemental Conjurer Knowledge (Ex)' perk, .");
		public static const ElementalConjurerKnowledgeSu:PerkType = mk("Elemental Conjurer Knowledge (Su)", "Elemental Conjurer Knowledge (Su)",
				"Allow to convert soulforce into elemental energy.",
				"You've chosen the 'Elemental Conjurer Knowledge (Su)' perk, .");
		public static const ElementalTouch:PerkType = mk("Elemental touch", "Elemental touch",
				"Unarmed strikes and elemental skills inflict a status to your victim when infused respectively Frostbite, Burn, Acid and Bleed.",
				"You've chosen the 'Elemental touch' perk. Unarmed strikes and elemental skills inflict a status to your victim when infused respectively Frostbite, Burn, Acid and Bleed.");
		public static const PartySynergy:PerkType = mk("Party Synergy", "Party Synergy",
				"You and your companions in party will recieve multi bonus to basic stats like str or wis (+20% for PC and +50% for henchman). With each member beyond first bonus will increase arithmeticaly.",
				"You've chosen the 'Party Synergy' perk. You and your companions in party will recieve multi bonus to basic stats like str or wis (+20% for PC and +50% for henchman). With each member beyond first bonus will increase arithmeticaly.");
		/*public static const JobBeastlord:PerkType = mk("Job: Beastlord", "Job: Beastlord",
				".",
				"You've chosen the 'Job: Beastlord' perk, .");
				"You've trained to use of your own body and natural weapons to their limits in fights.",
				"You've chosen the 'Job: Beast Warrior' perk, training yourself in the art of feral combat.").withBuffs({'str.mult':0.05,'tou.mult':0.05,'spe.mult':0.05, "int.mult":-0.05, "wis.mult":-0.05});
		*/
		public static const ElementsOfMarethBasic:PerkType = mk("Elements of Mareth: ", "Elements of Mareth: ",
				"You can now summon and command ice, lightning and darkness elementals. Also increase elementals command limit by 1.",
				"You've chosen the 'Elements of Mareth: ' perk, your time spent in Mareth allowing you to get basic understanding of native elements that aren't classified as one of four traditional.");
		/*public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, .");
		public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, .");
		public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, .");
		public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, .");
		public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, .");
		public static const :PerkType = mk("", "",
				".",
				"You've chosen the '' perk, increasing amount of food you can eat. As side effect your vitality increased (+x to max Tou (scalable)).");*/
		public static const Acclimation:PerkType = mk("Acclimation", "Acclimation",
				"Reduces lust gain by 15%.",
				"You've chosen the 'Acclimation' perk, making your body 15% more resistant to lust, up to a maximum of 75%.");
		public static const Acolyte:PerkType = mk("Acolyte", "Acolyte",
				"You carry that long pole with a lit flame on it... you no longer sleep during mass, so you know how to further decrease your minimum libido and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Acolyte' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const AdvancedAerialCombat:PerkType = mk("Advanced Aerial Combat", "Advanced Aerial Combat",
				"You are trained to fight while in flight. (extend flight duration while using wings by 2 turns and increase evasion when flying by 5%)",
				"You've chosen the 'Advanced Aerial Combat' perk, you trained to fight while in flight. (extend flight duration while using wings by 2 turns and increase evasion when flying by 5%)");
		public static const AdvancedAerobatics:PerkType = mk("Advanced Aerobatics", "Advanced Aerobatics",
				"You understand the properties of wind resistance and aerodynamics nearly perfectly. (increase accuracy to melee/range attacks by 50% when flying)",
				"You've chosen the 'Advanced Aerobatics' perk. You understand the properties of wind resistance and aerodynamics nearly perfectly. (increase accuracy to melee/range attacks by 50% when flying)");
		public static const AdvancedAllRounderEducation:PerkType = mk("Advanced All-Rounder Education", "Advanced All-Rounder Education",
				"Limit of advanced job you can learn is increased by 3.",
				"You've chosen the 'Advanced All-Rounder Education' perk, expanding amount of advanced jobs you can learn. (+3)");
		public static const AdvancedEndurance:PerkType = mk("Advanced Endurance", "Advanced Endurance",
				"Increases maximum fatigue by 200.",
				"You've chosen the 'Advanced Endurance' perk. Thanks to your advanced physical conditioning, your maximum fatigue has been increased by 200!")
				.withBuffs({'maxfatigue_base':+200});
		public static const AdvancedMagiculesTheory:PerkType = mk("Advanced Magicules Theory", "Advanced Magicules Theory",
				"[if(player.wis>=150)" +
						"Increases magical critical hit chance by up to 30% (Wisdom-based)." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Advanced Magicules Theory' perk, increasing magical critical hit chance by up to 30% (Wisdom-based).");
		public static const AdvancedSelfControl:PerkType = mk("Advanced Self-Control", "Advanced Self-Control",
				"Increases maximum lust by 300.",
				"You've chosen the 'Advanced Self-Control' perk. Thanks to your advanced mental conditioning, your maximum lust has been increased by 300!")
				.withBuffs({'maxlust_base':+300});
		public static const AdvancedSpirituality:PerkType = mk("Advanced Spirituality", "Advanced Spirituality",
				"Increases maximum mana by 900.",
				"You've chosen the 'Advanced Spirituality' perk. Thanks to your advanced mystical conditioning, your maximum mana has been increased by 900!")
				.withBuffs({'maxmana_base':+900});
		public static const AdvancedTranquilness:PerkType = mk("Advanced Tranquilness", "Advanced Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Advanced Tranquilness' perk. Thanks to your advanced anger managment training, your maximum wrath has been increased by 500!")
				.withBuffs({'maxwrath_base':+500});
		public static const AerialCombat:PerkType = mk("Aerial Combat", "Aerial Combat",
				"You trained basics of fighting while flying (allow melee attacks with any weapon at cost of 30% accuracy penalty).",
				"You've chosen the 'Aerial Combat' perk, you trained basics of fighting while flying.");
		public static const Aerobatics:PerkType = mk("Aerobatics", "Aerobatics",
				"You understand the properties of wind resistance and aerodynamics and how to optimize your situation in the air. (increase accuracy to melee/range attacks by 20% when flying)",
				"You've chosen the 'Aerobatics' perk. You understand the properties of wind resistance and aerodynamics and how to optimize your situation in the air.");
		public static const Agility:PerkType = mk("Agility", "Agility",
				"Boosts armor points by a portion of your speed on light/medium armors.",
				"You've chosen the 'Agility' perk, increasing the effectiveness of Light/Medium armors by a portion of your speed.");
		public static const AlchemicalCartridge:PerkType = mk("Alchemical cartridge", "Alchemical cartridge",
				"Add your intelligence to gun damage as a modifier.",
				"You've chosen the 'Alchemical cartridge' perk, adding intelligence scaling to firearms damage.");
		public static const AllSeeing:PerkType = mk("All-Seeing", "All-Seeing",
				"You see everything... so you should have expected this description, and the 10% soul force gain.",
				"You've chosen the 'All-Seeing' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const AlphaAndOmega:PerkType = mk("Alpha and Omega", "Alpha and Omega",
				"Add up to 2 to each stat per level but remove all chimerical disposition stat gains and increase racial skill power by 50%. Stacks on top of Apex.",
				"You've chosen the 'Alpha and Omega' perk. Further increasing your specialization into a unique race and increasing racial skill power by an additionnal 50%.");
		public static const Amateur:PerkType = mk("Amateur", "Amateur",
				"You've just started out on your sex life. You don't know much, but you can tease well. (+15% tease dmg)",
				"You've chosen the 'Amateur' perk, gaining +15% tease dmg.");
		public static const AmateurGunslinger:PerkType = mk("Amateur Gunslinger", "Amateur Gunslinger",
				"Gain an extra firearm attack per turn (2nd one).",
				"You've chosen the 'Amateur Gunslinger' perk, gaining an extra firearm attack per turn.");
		public static const AnatomyExpert:PerkType = mk("Anatomy expert", "Anatomy expert",
				"Your continued study of your opponents anatomy granted you insight to their weak point allowing you to strike precisely where it will hurt the most for increased critical chances and damage with thrown weapon. (+10% crit chance and +50% crit dmg)",
				"You've chosen the 'Anatomy expert' perk. Your continued study of your opponents anatomy granted you insight to their weak point allowing you to strike precisely where it will hurt the most for increased critical chances and damage with thrown weapon. (+10% crit chance and +50% crit dmg)");
		public static const Anger:PerkType = mk("Anger", "Anger",
				"For every 1% of missing HP you gain 1% bonus damage.",
				"You've chosen the 'Anger' perk, increasing damage based on your missing HP.")
				.withBuffs({'maxwrath_base':+2000});
		public static const Anvil:PerkType = mk("Anvil", "Anvil",
				"Now that you have an anvil, your work can be done even better, once again increasing your armor proficiency, how you used to work without all of this is the question... (+5% phys/mag resistance)",
				"You've chosen the 'Anvil' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const Apex:PerkType = mk("Apex", "Apex",
				"Add up to 2 to each stat per level but remove all chimerical disposition stat gains and increase racial skill power by 50%. Stacks on top of Racial Paragon.",
				"You've chosen the 'Apex' perk. Further increasing your specialisation into a unique race and increasing racial skill power by 50%.");
		public static const ApprenticeGolemMaker:PerkType = mk("Apprentice Golem Maker", "Apprentice Golem Maker",
				"Your proficiency in making golems allows to decrease by 10 mana cost of their creation, lower by 2% chance of core shattering, storing more golems/golem cores and increase dmg scaling up on current int/wis.",
				"You've chosen the 'Apprentice Golem Maker' perk, increasing your proficiency in making golems.");
		public static const ArcanePoolI:PerkType = mk("Arcane Pool I", "Arcane Pool I",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool I' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcanePoolII:PerkType = mk("Arcane Pool II", "Arcane Pool II",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool II' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcanePoolIII:PerkType = mk("Arcane Pool III", "Arcane Pool III",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool III' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcanePoolIV:PerkType = mk("Arcane Pool IV", "Arcane Pool IV",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool IV' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcanePoolV:PerkType = mk("Arcane Pool V", "Arcane Pool V",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool V' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcanePoolVI:PerkType = mk("Arcane Pool VI", "Arcane Pool VI",
				"+3 extra mana per point of intelligence and wisdom.",
				"You've chosen the 'Arcane Pool VI' perk, granting +3 extra maximum mana for each point of intelligence and wisdom.")
				.withBuffs({'maxmana_perint':+3,'maxmana_perwis':+3});
		public static const ArcaneRegenerationEpic:PerkType = mk("Arcane Regeneration (Epic)", "Arcane Regeneration (Epic)",
				"[if (player.inte>=100)" +
						"Increase by 30 base mana recovery and 15% max mana." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Arcane Regeneration (Epic)' perk, increasing mana recovery and mana pool.");
		public static const ArcaneRegenerationLegendary:PerkType = mk("Arcane Regeneration (Legendary)", "Arcane Regeneration (Legendary)",
				"[if (player.inte>=125)" +
						"Increase by 40 base mana recovery and 20% max mana." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Arcane Regeneration (Legendary)' perk, increasing mana recovery and mana pool.");
		public static const ArcaneRegenerationMajor:PerkType = mk("Arcane Regeneration (Major)", "Arcane Regeneration (Major)",
				"[if (player.inte>=75)" +
						"Increase by 20 base mana recovery and 10% max mana." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Arcane Regeneration (Major)' perk, increasing mana recovery and mana pool.");
		public static const ArcaneRegenerationMinor:PerkType = mk("Arcane Regeneration (Minor)", "Arcane Regeneration (Minor)",
				"[if (player.inte>=50)" +
						"Increase by 10 base mana recovery and 5% max mana." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Arcane Regeneration (Minor)' perk, increasing mana recovery and mana pool.");
		public static const ArcaneRegenerationMythical:PerkType = mk("Arcane Regeneration (Mythical)", "Arcane Regeneration (Mythical)",
				"[if (player.inte>=150)" +
						"Increase by 50 base mana recovery and 25% max mana." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Arcane Regeneration (Mythical)' perk, increasing mana recovery and mana pool.");
		public static const ArchersStaminaI:PerkType = mk("Archer's Stamina I", "Archer's Stamina I",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina I' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const ArchersStaminaII:PerkType = mk("Archer's Stamina II", "Archer's Stamina II",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina II' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const ArchersStaminaIII:PerkType = mk("Archer's Stamina III", "Archer's Stamina III",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina III' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const ArchersStaminaIV:PerkType = mk("Archer's Stamina IV", "Archer's Stamina IV",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina IV' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const ArchersStaminaV:PerkType = mk("Archer's Stamina V", "Archer's Stamina V",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina V' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const ArchersStaminaVI:PerkType = mk("Archer's Stamina VI", "Archer's Stamina VI",
				"+1 extra fatigue per point of speed.",
				"You've chosen the 'Archer's Stamina VI' perk, granting +1 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1});
		public static const Archmage:PerkType = mk("Archmage", "Archmage",
				"[if (player.inte>=100)" +
						"Increases base spell strength by 30%, mana pool by 180 and lust bar by 45." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Archmage' perk, increasing base spell strength by 30%, base mana pool by 180 and lust bar by 45.")
				.withBuffs({'maxlust_base':+45});
		public static const ArcaneLash:PerkType = mk("Arcane Lash", "Arcane Lash",
				"Your whip act as a catalyst for your lust inducing spells as well as for magic weapon.",
				"You've chosen the 'Arcane Lash' perk, causing you to increase effects of lust inducing spells and weapon when using whip.");
		public static const Arm0r:PerkType = mk("Armor", "Armor",
				"You finally forged your best piece of work! With all of your accumulated knowledge and tools, you can make good armor better, and forge great armor, further increasing your proficiency all things armor! (+5% phys/mag resistance)",
				"You've chosen the 'Armor' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const ArmorMaster:PerkType = mk("Armor Master", "Armor Master",
				"Boosts armor points by a portion of your speed on heavy armors.",
				"You've chosen the 'Armor Master' perk, increasing the effectiveness of Heavy armors by a portion of your speed.");
		public static const ArouseTheAudience:PerkType = mk("Arouse the audience", "Arouse the audience",
				"Increase the damage of non periodic tease against groups by 50% and periodic by 20%.",
				"You've chosen the 'Arouse the audience' perk, increasing the damage of tease against groups.");
		public static const ArousingAura:PerkType = mk("Arousing Aura", "Arousing Aura",
				"Exude a lust-inducing aura (Req's corruption of 70 or more)",
				"You've chosen the 'Arousing Aura' perk, causing you to radiate an aura of lust when your corruption is over 70.");
		public static const AyoArmorProficiency:PerkType = mk("Ayo Armor Proficiency", "Ayo Armor Proficiency",
				"Wearing Ayo Armor's grants 10% damage reduction.",
				"You've chosen the 'Ayo Armor Proficiency' perk.  Due to your specialization in wearing ayo armor's you gain a little bit of damage reduction.");
		public static const Backlash:PerkType = mk("Backlash", "Backlash",
				"Raises parry chance with your fist by an extra 5% when wearing no shield. When you manage to block an attack with your fist do a single attack in response.",
				"You've chosen the 'Backlash' perk, raising parry chance with your fist when wearing no shield. When you manage to block an attack with your fist do a single counterattack.");
		public static const BasicAllRounderEducation:PerkType = mk("Basic All-Rounder Education", "Basic All-Rounder Education",
				"Limit of advanced job you can learn is increased by 3.",
				"You've chosen the 'Basic All-Rounder Education' perk, expanding amount of advanced jobs you can learn. (+3)");
		public static const BasicEndurance:PerkType = mk("Basic Endurance", "Basic Endurance",
				"Increases maximum fatigue.",
				"You've chosen the 'Basic Endurance' perk. Thanks to your basic physical conditioning, your maximum fatigue has been increased by 30!")
				.withBuffs({'maxfatigue_base':+30});
		public static const BasicSelfControl:PerkType = mk("Basic Self-Control", "Basic Self-Control",
				"Increases maximum lust.",
				"You've chosen the 'Basic Self-Control' perk. Thanks to your basic mental conditioning, your maximum lust has been increased by 45!")
				.withBuffs({'maxlust_base':+45});
		public static const BasicSpirituality:PerkType = mk("Basic Spirituality", "Basic Spirituality",
				"Increases maximum mana.",
				"You've chosen the 'Basic Spirituality' perk. Thanks to your basic mystical conditioning, your maximum mana has been increased by 135!")
				.withBuffs({'maxmana_base':+135});
		public static const BasicTranquilness:PerkType = mk("Basic Tranquilness", "Basic Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Basic Tranquilness' perk. Thanks to your basic anger managment training, your maximum wrath has been increased by 75!")
				.withBuffs({'maxwrath_base':+75});
		public static const BeginnerGolemMaker:PerkType = mk("Beginner Golem Maker", "Beginner Golem Maker",
				"Your proficiency in making golems allows to lower by 2% chance of core shattering, storing more golems/golem cores and increase dmg scaling up on current int/wis.",
				"You've chosen the 'Beginner Golem Maker' perk, increasing your proficiency in making golems.");
		public static const Battleflash:PerkType = mk("Battleflash", "Battleflash",
				"Start every battle with Blink enabled, if you meet Black Magic requirements before it starts.",
				"You've chosen the 'Battleflash' perk. You start every battle with Blink effect, as long as your Lust is sufficient to cast it before battle.");
		public static const Battlemage:PerkType = mk("Battlemage", "Battlemage",
				"Start every battle with Might enabled, if you meet Black Magic requirements before it starts.",
				"You've chosen the 'Battlemage' perk. You start every battle with Might effect, as long as your Lust is sufficient to cast it before battle.");
		public static const Battleshield:PerkType = mk("Battleshield", "Battleshield",
				"Start every battle with Blink enabled, if you meet Black Magic requirements before it starts.",
				"You've chosen the 'Battleshield' perk. You start every battle with Mana Shield, as long as your Lust is sufficient to cast it before battle.");
		public static const Bellows:PerkType = mk("Bellows", "Bellows",
				"You've found an efficient way to keep the fire hot, allowing you to work faster. This increases your armor proficiency. (+5% phys/mag resistance)",
				"You've chosen the 'Bellows' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const Berzerker:PerkType = mk("Berzerker", "Berserker",
				"[if(player.str>=75)" +
						"Grants 'Berserk' ability." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Berserker' perk, which unlocks the 'Berserk' magical ability.  Berserking increases attack and lust resistance but reduces physical defenses.")
				.withBuffs({'maxwrath_base':+500});
		public static const BerserkerArmor:PerkType = mk("Berserker Armor", "Berserker Armor",
				"Augments the potency of all rage effects as well as Crinos shape. Wrath Gained from taking damage and dealing damage increased. Does not hinder movement or beast warrior powers.",
				"Augments the potency of all rage effects as well as Crinos shape. Wrath Gained from taking damage and dealing damage increased. Does not hinder movement or beast warrior powers.\n");
		public static const BiggerGolemBagI:PerkType = mk("Bigger Golem Bag I", "Bigger Golem Bag I",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag I' perk, increasing your golems bag.");
		public static const BiggerGolemBagII:PerkType = mk("Bigger Golem Bag II", "Bigger Golem Bag II",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag II' perk, increasing your golems bag.");
		public static const BiggerGolemBagIII:PerkType = mk("Bigger Golem Bag III", "Bigger Golem Bag III",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag III' perk, increasing your golems bag.");
		public static const BiggerGolemBagIV:PerkType = mk("Bigger Golem Bag IV", "Bigger Golem Bag IV",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag IV' perk, increasing your golems bag.");
		public static const BiggerGolemBagV:PerkType = mk("Bigger Golem Bag V", "Bigger Golem Bag V",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag V' perk, increasing your golems bag.");
		public static const BiggerGolemBagVI:PerkType = mk("Bigger Golem Bag VI", "Bigger Golem Bag VI",
				"Your extra dimensional golem bag can store 6 more temporary (and 1 more permanent when becoming Master Golem Maker) golems.",
				"You've chosen the 'Bigger Golem Bag VI' perk, increasing your golems bag.");
		public static const BladeBarrier:PerkType = mk("Blade Barrier", "Blade Barrier",
				"Chance to parry is further increased by +15% when dual wielding.",
				"You've chosen the 'Blade Barrier' perk. Chance to parry is further increased by +15% when dual wielding.");
		public static const Blademaster:PerkType = mk("Blademaster", "Blademaster",
				"Gain +5% to critical strike chance when wielding weapon with blade (sword, dueling sword, axe, dagger) and not using a shield.",
				"You've chosen the 'Blademaster' perk.  Your chance of critical hit is increased by 5% as long as you're wielding weapon with blade (sword, dueling sword, axe, dagger) and not using a shield.");
		public static const BlessedByLadyGodiva:PerkType = mk("Blessed by Lady Godiva", "Blessed by Lady Godiva",
				"Oh now she blesses you? As it's painfully obvious you have the Goddess of chance's favor... you get even more money upon victory... yay... (15% more gems from victories)",
				"You've chosen the 'Blessed by Lady Godiva' perk, increasing gem gains from victories by 15%.");
		public static const BlessingOfTheAncestorTree:PerkType = mk("Blessing of the ancestor tree", "Blessing of the ancestor tree",
				"You have been 'blessed' by an elven ancestor tree and made into a true elf, binding your soul to the forest," +
				" however you no longer have the ability to transform again. +50% Speed, +30% intelligence, +40% Libido +50 permanent corruption.").withBuffs({'spe.mult':0.5,'int.mult':0.3,'lib.mult':0.4});
		public static const BodyCultivator:PerkType = mk("Body Cultivator", "Body Cultivator",
				"Allow you to train your soul cultivator body to make it as tough as artifacts. (+1 to armor, +2 to unarmed attack, +100 max HP, +0.5% HP regen)",
				"You've chosen the 'Body Cultivator' perk, starting journey on the body cultivators path! (+1 to armor, +2 to unarmed attack, +100 max HP, +0.5% HP regen)");
		public static const BodyOfSteel:PerkType = mk("Body of Steel", "Body of Steel",
				"Your physical body has become a honed weapon, capable of striking most enemies down. With your body made of steel, your melee damage has increased again. (+10% melee phys dmg)",
				"You've chosen the 'Body of Steel' perk, gaining +10% melee phys dmg.");
		public static const BonesOfSteel:PerkType = mk("Bones of Steel", "Bones of Steel",
				"Your body has adapted to constant fighting, making your bones as hard as steel, increasing the damage dealt with melee attacks. (+10% melee phys dmg)",
				"You've chosen the 'Bones of Steel' perk, gaining +10% melee phys dmg.");
		public static const Brawler:PerkType = mk("Brawler", "Brawler",
				"Brawling experience allows you to make two unarmed attacks in a turn.",
				"You've chosen the 'Brawler' perk, allowing you to make two unarmed attacks in a turn!");
		public static const Brawn:PerkType = mk("Brawn", "Brawn",
				"You have increased your striking power. (+10% to phantom Str bonus, +5% to unarmed atk)",
				"You've chosen the 'Brawn' perk, increasing your striking power. (+10% to phantom Str bonus, +5% to unarmed atk)");
		public static const BrothelOwner:PerkType = mk("Brothel Owner", "Brothel Owner",
				"You are now above having sex by yourself, having created an industry and now teach new women and men to have sex. These allow you to refine your tricks, increasing your tease damage by 15%.",
				"You've chosen the 'Brothel Owner' perk, gaining +15% tease dmg.");
		public static const BrutalBlows:PerkType = mk("Brutal Blows", "Brutal Blows",
				"[if(player.str>=75)" +
						"Reduces enemy armor with each hit." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Brutal Blows' perk, which reduces enemy armor with each hit.");
		public static const Brute:PerkType = mk("Brute", "Brute",
				"You have increased your striking strength. (+20% of max core Str as phantom Str)",
				"You've chosen the 'Brute' perk, increased your striking strength. (+20% of max core Str as phantom Str)");
		public static const Cardinal:PerkType = mk("Cardinal", "Cardinal",
				"You are on of the more important people of faith, and an aid to the pope themself. Your dedication to both the pope and your faith decreases the minimum libido you have and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Cardinal' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const CarefulButRecklessAimAndShooting:PerkType = mk("Careful but Reckless Aim and Shooting", "Careful but Reckless Aim and Shooting",
				"Increase accuracy by 30%.",
				"You've chosen the 'Careful but Reckless Aim and Shooting' perk, improving your accuracy by 30% at the cost of lowering your toughness.").withBuffs({'tou.mult':-0.15});
		public static const CatchTheBlade:PerkType = mk("Catch the blade", "Catch the blade",
				"[if(player.spe>=50)" +
						"Increases deflect chance by up to 15% while using only fists/fist weapons. (Speed-based)." +
						"|" +
						"<b>You are not fast enough to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Catch the blade' perk, giving you a chance to deflect blow with your fists. (Speed-based).");
		public static const CatlikeNimbleness:PerkType = mk("Cat-like Nimbleness", "Cat-like Nimbleness",
				"Your transformed joins allows you to move with greater nimbleness, increasing evasion.",
				"You've chosen the 'Cat-like Nimbleness' perk. Your transformed joins allows you to move more with greater nimbleness, increasing evasion.");
		public static const CatlikeNimblenessEvolved:PerkType = mk("Cat-like Nimbleness (Evolved)", "Cat-like Nimbleness (Evolved)",
				"Your nimble body allows you to move with even better nimbleness than before, further increasing evasion.",
				"You've chosen the 'Cat-like Nimbleness (Evolved)' perk. Your nimble body allows you to move with even better nimbleness than before, further increasing evasion.").withBuffs({'spe.mult':0.10});
		public static const CatlikeNimblenessFinalForm:PerkType = mk("Cat-like Nimbleness (Final Form)", "Cat-like Nimbleness (Final Form)",
				"Your nimble body allows you to move with even greater nimbleness than before, further increasing evasion.",
				"You've chosen the 'Cat-like Nimbleness (Final Form)' perk. Your nimble body allows you to move with even greater nimbleness than before, further increasing evasion.").withBuffs({'spe.mult':0.20});
		public static const Channeling:PerkType = mk("Channeling", "Channeling",
				"[if (player.inte>=60)" +
						"Increases base spell strength by 20% and base mana pool by 90." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Channeling' perk, boosting the strength of your spellcasting and expanding your mana pool!");
		public static const ChargedCore:PerkType = mk("Charged Core", "Charged Core",
				"At the cost of using additional mana you can charge each temporary golem core allowing them to deal minor area of effect damages (it have small synergistic effect when more golems attacks at once).",
				"You've chosen the 'Charged Core' perk, learning how to make golems attacks be slight stronger.");
		public static const CheatDeath:PerkType = mk("Cheat Death", "Cheat Death",
				"Increasing healing spells effect by another 100% when below 10% max HP (cumulative with Close to death perk effect for total boost of 150%).",
				"You've chosen the 'Cheat Death' perk, increasing healing spells effect when below 10% max HP.");
		public static const CheetahI:PerkType = mk("Cheetah I", "Cheetah I",
				"+4 extra HP per point of speed.",
				"You've chosen the 'Cheetah I' perk, granting +4 extra maximum HP for each point of speed.");
		public static const CheetahII:PerkType = mk("Cheetah II", "Cheetah II",
				"+4 extra HP per point of speed.",
				"You've chosen the 'Cheetah II' perk, granting +4 extra maximum HP for each point of speed.");
		public static const CheetahIII:PerkType = mk("Cheetah III", "Cheetah III",
				"+4 extra HP per point of speed.",
				"You've chosen the 'Cheetah III' perk, granting +4 extra maximum HP for each point of speed.");
		public static const CheetahIV:PerkType = mk("Cheetah IV", "Cheetah IV",
				"+4extra HP per point of speed.",
				"You've chosen the 'Cheetah IV' perk, granting +4 extra maximum HP for each point of speed.");
		public static const CheetahV:PerkType = mk("Cheetah V", "Cheetah V",
				"+4 extra HP per point of speed.",
				"You've chosen the 'Cheetah V' perk, granting +4 extra maximum HP for each point of speed.");
		public static const CheetahVI:PerkType = mk("Cheetah VI", "Cheetah VI",
				"+4 extra HP per point of speed.",
				"You've chosen the 'Cheetah VI' perk, granting +4 extra maximum HP for each point of speed.");
		public static const ChimericalBodyAdvancedStage:PerkType = mk("Chimerical Body: Advanced Stage", "Chimerical Body: Advanced Stage",
				"Your chimerical body attained Advanced Stage. (negate up to 8 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Advanced Stage' perk. Constant mutations rised your body adaptiveness to advanced level.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.15,'int.mult':0.05,'wis.mult':0.10,'sens':5});
		public static const ChimericalBodyBasicStage:PerkType = mk("Chimerical Body: Basic Stage", "Chimerical Body: Basic Stage",
				"Your chimerical body attained Basic Stage. (negate up to 4 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Basic Stage' perk. Your body reach adaptation stage for most base type of chimera.").withBuffs({'str.mult':0.05,'tou.mult':0.05,'spe.mult':0.05,'int.mult':0.05,'wis.mult':0.10,'sens':5});
		public static const ChimericalBodyEpicStage:PerkType = mk("Chimerical Body: Epic Stage", "Chimerical Body: Epic Stage",
				"Your chimerical body attained Epic Stage. (negate up to 14 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Epic Stage' perk. Constant mutations rised your body adaptiveness to Epic level.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.10,'int.mult':0.20,'wis.mult':0.20,'lib.mult':0.15,'sens':15});
		public static const ChimericalBodyImprovedStage:PerkType = mk("Chimerical Body: Improved Stage", "Chimerical Body: Improved Stage",
				"Your chimerical body attained Improved Stage. (negate up to 6 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Improved Stage' perk. Constant mutations rised your body adaptiveness into improved level.").withBuffs({'str.mult':0.05,'tou.mult':0.05,'spe.mult':0.05,'int.mult':0.05,'wis.mult':0.05,'lib.mult':0.10,'sens':5});
		public static const ChimericalBodyInitialStage:PerkType = mk("Chimerical Body: Initial Stage", "Chimerical Body: Initial Stage",
				"Your chimerical body attained Initial Stage. (negate up to 2 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Initial Stage' perk. Constant mutations causing your body to slowly start adapt to increased metabolism needs.").withBuffs({'tou.mult':0.05,'lib.mult':0.05});
		public static const ChimericalBodyPeerlessStage:PerkType = mk("Chimerical Body: Peerless Stage", "Chimerical Body: Peerless Stage",
				"Your chimerical body attained Peerless Stage. (negate up to 12 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Peerless Stage' perk. Constant mutations rised your body adaptiveness to peerless level.").withBuffs({'str.mult':0.15,'tou.mult':0.15,'spe.mult':0.15,'int.mult':0.10,'wis.mult':0.10,'lib.mult':0.05,'sens':10});
		public static const ChimericalBodySuperiorStage:PerkType = mk("Chimerical Body: Superior Stage", "Chimerical Body: Superior Stage",
				"Your chimerical body attained Superior Stage. (negate up to 10 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Superior Stage' perk. Constant mutations rised your body adaptiveness to superior level.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.10,'int.mult':0.10,'wis.mult':0.10,'lib.mult':0.05,'sens':5});
		public static const ChimericalBodySemiAdvancedStage:PerkType = mk("Chimerical Body: Semi-Advanced Stage", "Chimerical Body: Semi-Advanced Stage",
				"Your chimerical body attained Semi-Advanced Stage. (negate up to 7 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Semi-Advanced Stage' perk. Constant mutations rised your body adaptiveness beyond improved level.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.05,'int.mult':0.05,'wis.mult':0.05,'lib.mult':0.05,'sens':5});
		public static const ChimericalBodySemiBasicStage:PerkType = mk("Chimerical Body: Semi-Basic Stage", "Chimerical Body: Semi-Basic Stage",
				"Your chimerical body attained Semi-Basic Stage. (negate up to 3 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Semi-Basic Stage' perk. Your body will reach apex stage of adaptation for most base type of chimera.").withBuffs({'str.mult':0.05,'spe.mult':0.05,'int.mult':0.05});
		public static const ChimericalBodySemiEpicStage:PerkType = mk("Chimerical Body: Semi-Epic Stage", "Chimerical Body: Semi-Epic Stage",
				"Your chimerical body attained Semi-Peerless Stage. (negate up to 13 racial perk points negative effects // +1 to racial score when PC have third racial specific mutation perk)",
				"You've chosen the 'Chimerical Body: Semi-Epic Stage' perk. Constant mutations rised your body adaptiveness beyond peerless level.");
		public static const ChimericalBodySemiImprovedStage:PerkType = mk("Chimerical Body: Semi-Improved Stage", "Chimerical Body: Semi-Improved Stage",
				"Your chimerical body attained Semi-Basic Stage. (negate up to 5 racial perk points negative effects // +1 to racial score when PC have first racial specific mutation perk)",
				"You've chosen the 'Chimerical Body: Semi-Improved Stage' perk. Constant mutations rised your body adaptiveness beyond basic level.");
		public static const ChimericalBodySemiPeerlessStage:PerkType = mk("Chimerical Body: Semi-Peerless Stage", "Chimerical Body: Semi-Peerless Stage",
				"Your chimerical body attained Semi-Peerless Stage. (negate up to 11 racial perk points negative effects)",
				"You've chosen the 'Chimerical Body: Semi-Peerless Stage' perk. Constant mutations rised your body adaptiveness beyond superior level.").withBuffs({'str.mult':0.15,'tou.mult':0.15,'spe.mult':0.15,'int.mult':0.05,'wis.mult':0.05,'lib.mult':0.10,'sens':10});
		public static const ChimericalBodySemiSuperiorStage:PerkType = mk("Chimerical Body: Semi-Superior Stage", "Chimerical Body: Semi-Superior Stage",
				"Your chimerical body attained Semi-Superior Stage. (negate up to 9 racial perk points negative effects // +1 to racial score when PC have second racial specific mutation perk)",
				"You've chosen the 'Chimerical Body: Semi-Superior Stage' perk. Constant mutations rised your body adaptiveness beyond advanced level.");
		public static const ChimericalBodyUltimateStage:PerkType = mk("Chimerical Body: Ultimate Stage", "Chimerical Body: Ultimate Stage",
				".",
				"You've chosen the 'Chimerical Body: Ultimate Stage' perk.").withBuffs({'str.mult':0.05,'int.mult':0.05,'wis.mult':0.05});
		public static const ChimericalBodyStage:PerkType = mk("Chimerical Body:  Stage", "Chimerical Body:  Stage",
				"",
				"You've chosen the 'Chimerical Body:  Stage' perk.").withBuffs({'str.mult':0.05,'int.mult':0.05,'wis.mult':0.05});
		public static const ChurchOfTheGun:PerkType = mk("Church of the gun", "Church of the gun",
				"Add your wisdom to gun damage as a modifier.",
				"You've chosen the 'Church of the gun' perk, adding wisdom scaling to firearms damage.");
		public static const ClawingFlurry:PerkType = mk("Clawing flurry", "Clawing flurry",
				"When attacking with your natural weapons, add an additional attack striking up to 5 times.",
				"You've chosen the 'Clawing flurry' perk, gaining an additional attack with your natural weapons!")
				.withBuffs({'maxwrath_base':+250});
		public static const ClawTraining:PerkType = mk("Claw training", "Claw training",
				"Gain 1 extra natural attack with your natural weapons.",
				"You've chosen the 'Claw training' perk, gain 1 extra natural attack with your natural weapons!")
				.withBuffs({'maxwrath_base':+100});
		public static const CloseToDeath:PerkType = mk("Close to death", "Close to death",
				"Increasing healing spells effect by 50% when below 25% max HP.",
				"You've chosen the 'Close to death' perk, increasing healing spells effect when below 25% max HP.");
		public static const ColdBlooded:PerkType = mk("Cold Blooded", "Cold Blooded",
				"Reduces minimum lust by up to 20, down to min of 20. Caps min lust at 80.",
				"You've chosen the 'Cold Blooded' perk.  Thanks to increased control over your desires, your minimum lust is reduced! (Won't reduce minimum lust below 20 though.)");
		public static const ColdAim:PerkType = mk("Cold Aim", "Cold Aim",
				"Careful but Reckless Aim and Shooting no longer reduce your Toughness.",
				"You've chosen the 'Cold Aim' perk, causing Careful but Reckless Aim and Shooting to no longer reduce your Toughness.").withBuffs({'tou.mult':0.15});
		public static const ColderFury:PerkType = mk("Colder Fury", "Colder Fury",
				"Berserking does not reduce your magic resistance (increase atk boost).",
				"You've chosen the 'Colder Fury' perk, causing Berserking to not reduce your magic resistance (increase atk boost).")
				.withBuffs({'maxwrath_base':+375});
		public static const ColderLust:PerkType = mk("Colder Lust", "Colder Lust",
				"Lustzerking does not reduce your magic resistance (increase atk boost).",
				"You've chosen the 'Colder Lust' perk, causing Lustzerking to not reduce your magic resistance (increase atk boost).")
				.withBuffs({'maxwrath_base':+375});
		public static const ColdFury:PerkType = mk("Cold Fury", "Cold Fury",
				"Berserking does not reduce your armor (increase atk boost a bit).",
				"You've chosen the 'Cold Fury' perk, causing Berserking to not reduce your armor (increase atk boost a bit).")
				.withBuffs({'maxwrath_base':+250});
		public static const ColdLust:PerkType = mk("Cold Lust", "Cold Lust",
				"Lustzerking does not reduce your lust resistance (increase atk boost a bit).",
				"You've chosen the 'Cold Lust' perk, causing Lustzerking to not reduce your lust resistance (increase atk boost a bit).")
				.withBuffs({'maxwrath_base':+250});
		public static const Collector:PerkType = mk("Collector", "Collector",
				"This is getting out of hand! Why do you need so much money? Just, take it and leave... you monster. Take your added bonus upon victory and get out of my sight. (15% more gems from victories)",
				"You've chosen the 'Collector' perk, increasing gem gains from victories by 15%.");
		public static const Combo:PerkType = mk("Combo", "Combo",
				"Gain an extra attack with fist (weapon).",
				"You've chosen the 'Combo' perk, gaining an extra attack with fist (weapon).");
		public static const ComboMaster:PerkType = mk("Combo Master", "Combo Master",
				"Gain another extra attack with fist (weapon).",
				"You've chosen the 'Combo Master' perk, gaining another extra attack with fist (weapon).");
		public static const Convergence:PerkType = mk("Convergence", "Convergence",
				"Grey magic area of effect spells strike three times against single targets.",
				"You've chosen the 'Convergence' perk, gaining chance to attack single targets three times with grey aoe spells.");// and third tier white and black
		public static const CorruptedLibido:PerkType = mk("Corrupted Libido", "Corrupted Libido",
				"Reduces lust gain by 10%.",
				"You've chosen the 'Corrupted Libido' perk.  As a result of your body's corruption, you've become a bit harder to turn on. (Lust gain reduced by 10%!)");
		public static const Creationism:PerkType = mk("Creationism", "Creationism",
				"You have surpassed the pinnacle of alchemy, placing yourself on the level of gods. By creating the perfect transformative, you have guaranteed its potent effects +2% alchemy/mutagen boost.",
				"You've chosen the 'Creationism' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const CriticalPerformance:PerkType = mk("Critical performance", "Critical performance",
				"Allows your non periodic tease damage to critically hit based on your libido, maximum +20%.",
				"You've chosen the 'Critical performance' perk, allowing your non periodic tease damage to critically hit based on your libido.");
		public static const Cupid:PerkType = mk("Cupid", "Cupid",
				"You arrows are charged with heavy black magic inflicting lust on those pierced by them.",
				"You've chosen the 'Cupid' perk, allowing you to shoot arrows inflicting lust.");
		public static const CycloneStage1:PerkType = mk("Cyclone (Stage 1)", "Cyclone (Stage 1)",
				"Increasing crit chance for aoe like whirlwind by 10%.",
				"You've chosen the 'Cyclone (Stage 1)' perk, increasing crit chance for aoe specials like whirlwind.");
		public static const CycloneStage2:PerkType = mk("Cyclone (Stage 2)", "Cyclone (Stage 2)",
				"Increasing crit chance for aoe like whirlwind by 15%.",
				"You've chosen the 'Cyclone (Stage 2)' perk, increasing crit chance for aoe specials like whirlwind.");
		public static const CycloneStage3:PerkType = mk("Cyclone (Stage 3)", "Cyclone (Stage 3)",
				"Increasing crit chance for aoe like whirlwind by 20%.",
				"You've chosen the 'Cyclone (Stage 3)' perk, increasing crit chance for aoe specials like whirlwind.");
		public static const CycloneStage4:PerkType = mk("Cyclone (Stage 4)", "Cyclone (Stage 4)",
				"Increasing crit chance for aoe like whirlwind by 20% and damage multipier by 50% of base value.",
				"You've chosen the 'Cyclone (Stage 4)' perk, increasing crit chance and damage for aoe specials like whirlwind.");
		public static const CycloneStage5:PerkType = mk("Cyclone (Stage 5)", "Cyclone (Stage 5)",
				"Increasing crit chance for aoe like whirlwind by 25% and damage multipier by 150% of base value.",
				"You've chosen the 'Cyclone (Stage 5)' perk, increasing crit chance and damage for aoe specials like whirlwind.");
		public static const DancersVitalityI:PerkType = mk("Dancer's Vitality I", "Dancer's Vitality I",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality I' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const DancersVitalityII:PerkType = mk("Dancer's Vitality II", "Dancer's Vitality II",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality II' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const DancersVitalityIII:PerkType = mk("Dancer's Vitality III", "Dancer's Vitality III",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality III' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const DancersVitalityIV:PerkType = mk("Dancer's Vitality IV", "Dancer's Vitality IV",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality IV' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const DancersVitalityV:PerkType = mk("Dancer's Vitality V", "Dancer's Vitality V",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality V' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const DancersVitalityVI:PerkType = mk("Dancer's Vitality VI", "Dancer's Vitality VI",
				"+1.5 extra fatigue per point of speed.",
				"You've chosen the 'Dancer's Vitality VI' perk, granting +1.5 extra maximum fatigue for each point of speed.")
				.withBuffs({'maxfatigue_perspe':+1.5});
		public static const Dantain:PerkType = mk("Dantian", "Dantian",
				"Increase max soulforce by 10% + 10% to 25% (per each attained cultivation stage) of base value.",
				"You've chosen the 'Dantian' perk.  As a result of many cultivation sessions you managed to find dantian in your body, which resulted in increased capacity to store soulforce.");
		public static const DaoistCultivator:PerkType = mk("Daoist Cultivator", "Daoist Cultivator",
				"Allow you to train your soul cultivator mind to unleash soulskills with their apex power. (+20% soulskill/m.soulskill power, -10% soulskills cost, +50% base soulforce recovery multiplier)",
				"You've chosen the 'Daoist Cultivator' perk, starting journey on the daoist cultivators path! (+20% soulskill/m.soulskill power, -10% soulskills cost, +50% base soulforce recovery multiplier)")
				.withBuffs({'maxsf_base':+25});
		public static const DaoistApprenticeStage:PerkType = mk("Daoist: Apprentice Stage", "Daoist: Apprentice Stage",
				"Your reached first stage of Daoist path. (+40% soulskill/m.soulskill power, +40 max SF at S.Apprentice, S.Personage, S.Warrior stages)",
				"You've chosen the 'Daoist: Apprentice Stage' perk, progressing on your Daoist path. (+40% soulskill/m.soulskill power, +40 max SF at S.Apprentice, S.Personage, S.Warrior stages)");
		public static const DaoistElderStage:PerkType = mk("Daoist: Elder Stage", "Daoist: Elder Stage",
				"Your reached third stage of Daoist path. (+80% soulskill/m.soulskill power, +100 max SF at S.Exalt, S.Overlord, S.Tyrant stages)",
				"You've chosen the 'Daoist: Elder Stage' perk, progressing on your Daoist path. (+80% soulskill/m.soulskill power, +100 max SF at S.Exalt, S.Overlord, S.Tyrant stages)");
		public static const DaoistOverlordStage:PerkType = mk("Daoist: Overlord Stage", "Daoist: Overlord Stage",
				"Your reached fourth stage of Daoist path. (+100% soulskill/m.soulskill power, +150 max SF S.King, S.Emperor, S.Ancestor stages)",
				"You've chosen the 'Daoist: Overlord Stage' perk, progressing on your Daoist path. (+100% soulskill/m.soulskill power, +150 max SF S.King, S.Emperor, S.Ancestor stages)");
		public static const DaoistTyrantStage:PerkType = mk("Daoist: Tyrant Stage", "Daoist: Tyrant Stage",
				"Your reached fifth stage of Daoist path.",
				"You've chosen the 'Daoist: Tyrant Stage' perk, progressing on your Daoist path. (+150% soulskill/m.soulskill power, +70 max SF at )");
		public static const DaoistWarriorStage:PerkType = mk("Daoist: Warrior Stage", "Daoist: Warrior Stage",
				"Your reached second stage of Daoist path. (+60% soulskill/m.soulskill power, +60 max SF at S.Sprite, S.Scholar, S.Elder stages)",
				"You've chosen the 'Daoist: Warrior Stage' perk, progressing on your Daoist path. (+60% soulskill/m.soulskill power, +60 max SF at S.Sprite, S.Scholar, S.Elder stages)");
		public static const DazzlingDisplay:PerkType = mk("Dazzling display", "Dazzling display",
				"Teasing can stun enemy for one round or increase lust damage for grapple-type teases.",
				"You've chosen the 'Dazzling display' perk, allowing to slightly increase tease damage or even stun your enemy for a short moment.");
		public static const DeadlyAim:PerkType = mk("Deadly Aim", "Deadly Aim",
				"Arrows/Bolts ignore damage reductions piercing right through your opponent armor weak points (ignore enemy dmg red).",
				"You've chosen the 'Deadly Aim' perk, causing arrows/bolts to ignore the damage reductions of opponent.");
		public static const DeadlySneaker:PerkType = mk("Deadly sneaker", "Deadly sneaker",
				"Increase sneaky attack dmg by 200% base value (4x).",
				"You've chosen the 'Deadly sneaker' perk. Increase sneaky attack dmg by 200% base value (4x).");
		public static const DeadlyThrow:PerkType = mk("Deadly Throw", "Deadly Throw",
				"You learned how to use throwing weapon with better efficiency adding your speed to the damage.",
				"You've chosen the 'Deadly Throw' perk, adding your speed to throwing weapon damage.");
		public static const Dean:PerkType = mk("Dean", "Dean",
				"You control a section of the school as a member of the school board, answering only to the president. This increases max mana by 10%.",
				"You've chosen the 'Dean' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const DeathPlunge:PerkType = mk("Death plunge", "Death plunge",
				"When using Great Dive you may add your weapon damage as part of the attack damage as if using power attack at its current maximum value consuming no wrath in the process.",
				"You've chosen the 'Death plunge' perk. When using Great Dive you may add your weapon damage as part of the attack damage as if using power attack at its current maximum value consuming no wrath in the process.");
		public static const DecaAttackSmall:PerkType = mk("Deca Attack (Small)", "Deca Attack (Small)",
				"Allows you to perform ten melee attacks with small weapons per round.",
				"You've chosen the 'Deca Attack (Small)' perk. This allows you to make ten melee attacks with small weapons.");
		public static const DefenceStance:PerkType = mk("Defence Stance", "Defence Stance",
				"Defend move now reduce incoming damage a littl more and allow recovering fatigue/mana/soulforce.",
				"You've chosen the 'Defence Stance' perk, training to master you defence pose.");
		public static const DemonicDesireI:PerkType = mk("Demonic Desire I", "Demonic Desire I",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire I' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const DemonicDesireII:PerkType = mk("Demonic Desire II", "Demonic Desire II",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire II' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const DemonicDesireIII:PerkType = mk("Demonic Desire III", "Demonic Desire III",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire III' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const DemonicDesireIV:PerkType = mk("Demonic Desire IV", "Demonic Desire IV",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire IV' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const DemonicDesireV:PerkType = mk("Demonic Desire V", "Demonic Desire V",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire V' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const DemonicDesireVI:PerkType = mk("Demonic Desire VI", "Demonic Desire VI",
				"Raises max lust by 5% of base value.",
				"You've chosen the 'Demonic Desire VI' perk, giving you an additional 5% of base value to max lust!")
				.withBuffs({'maxlust_mult':+0.05});
		public static const Desensitization:PerkType = mk("Desensitization", "Desensitization",
				"Negative effects of sensitivity are reduced by 5%.",
				"You've chosen the 'Desensitization' perk, decreasing negative effects of sensitivity by 5%.");
		public static const DevastatingCharge:PerkType = mk("Devastating charge", "Devastating charge",
				"When using the charge action you have a 20% chance to stun the opponent for a round. Charge is 50% more powerful.",
				"You've chosen the 'Devastating charge' perk, when using the charge action you have a 20% chance to stun the opponent for a round. Charge is 50% more powerful.");
		public static const Diehard:PerkType = mk("Diehard", "Diehard",
				"You can't lose by HP until your health drops into the negatives any more than 2% of max HP + 600(scalable). When below 0 HP would lose 1% of max HP per turn.",
				"You've chosen the 'Diehard' perk, allowing to contiue fight even when below 0 HP.");
		public static const Doctor:PerkType = mk("Doctor", "Doctor",
				"You got promoted to a doctor, allowing you to cure a wider variety of ailments. This knowledge allows you to heal yourself better, increasing health regen.",
				"You've chosen the 'Doctor' perk, increasing HP gains by 20%.");
		public static const DoubleAttack:PerkType = mk("Double Attack", "Double Attack",
				"Allows you to perform two melee attacks with normal sized weapons per round.",
				"You've chosen the 'Double Attack' perk.  This allows you to make two melee attacks with non-large weapons.")
				.withBuffs({'maxwrath_base':+50});
		public static const DoubleAttackLarge:PerkType = mk("Double Attack (Large)", "Double Attack (Large)",
				"Allows you to perform two melee attacks with large weapons per round.",
				"You've chosen the 'Double Attack (Large)' perk.  This allows you to make two melee attacks with large weapons.")
				.withBuffs({'maxwrath_base':+100});
		public static const DoubleAttackSmall:PerkType = mk("Double Attack (Small)", "Double Attack (Small)",
				"Allows you to perform two melee attacks with small weapons per round.",
				"You've chosen the 'Double Attack (Small)' perk.  This allows you to make two melee attacks with small weapons.");
		public static const DoubleStrike:PerkType = mk("Double Strike", "Double Strike",
				"Allows you to perform two range attacks per round.",
				"You've chosen the 'Double Strike' perk.  This allows you to make two range attacks.");
		public static const DualWield:PerkType = mk("Dual Wield", "Dual Wield",
				"Allows you to wield two weapons.",
				"You've chosen the 'Dual Wield' perk, training skill of using two weapons.");
		public static const DualWieldFirearms:PerkType = mk("Dual Wield (Firearms)", "Dual Wield (Firearms)",
				"Allows you to wield two firearms (non 2H ones) more effectively. (damage and accuracy penalties decreased by 20% and 10%)",
				"You've chosen the 'Dual Wield (Firearms)' perk, training skill of using two firearms (non 2H ones). (damage and accuracy penalties decreased by 20% and 10%)");
		public static const DualWieldLarge:PerkType = mk("Dual Wield (Large)", "Dual Wield (Large)",
				"Allows you to wield two large sized melee weapons more effectively. (damage and accuracy penalties decreased by 20% and 10%)",
				"You've chosen the 'Dual Wield (Large)' perk, training skill of using two large melee weapons. (damage and accuracy penalties decreased by 20% and 10%)");
		public static const DualWieldNormal:PerkType = mk("Dual Wield (Normal)", "Dual Wield (Normal)",
				"Allows you to wield two normal sized melee weapons more effectively. (damage and accuracy penalties decreased by 20% and 10%)",
				"You've chosen the 'Dual Wield (Normal)' perk, training skill of using two normal sized melee weapons. (damage and accuracy penalties decreased by 20% and 10%)");
		public static const DualWieldSmall:PerkType = mk("Dual Wield (Small)", "Dual Wield (Small)",
				"Allows you to wield two small sized melee weapons more effectively. (damage and accuracy penalties decreased by 20% and 10%)",
				"You've chosen the 'Dual Wield (Small)' perk, training skill of using two small melee weapons. (damage and accuracy penalties decreased by 20% and 10%)");
		public static const EagleEye:PerkType = mk("Eagle eye", "Eagle eye",
				"Increase traditional range weapons (like bows) base attack by another 50%.",
				"You've chosen the 'Eagle eye' perk, increasing traditional range weapons base attack.");
		public static const EclipsingShadow:PerkType = mk("Eclipsing Shadow", "Eclipsing Shadow",
				"Cumulative 20% damage increase for every subsequent darkness spell. Each turn without casted darkness spell lower damage by 20%.",
				"You've chosen the 'Eclipsing Shadow' perk. Cumulative 20% damage increase for every subsequent darkness spell. Each turn without casted darkness spell lower damage by 20%.");
		public static const EclipsingShadowEx:PerkType = mk("Eclipsing Shadow (Ex)", "Eclipsing Shadow (Ex)",
				"Increase to cumulative damage by 10%. Penalty for turn without casted darkness spell decreased by 5%.",
				"You've chosen the 'Eclipsing Shadow (Ex)' perk. Increase to cumulative damage by 10%. Penalty for turn without casted darkness spell decreased by 5%.");
		public static const EclipsingShadowSu:PerkType = mk("Eclipsing Shadow (Su)", "Eclipsing Shadow (Su)",
				"Prevent decay of cumulative damage increase bonus when channeling darkness based attack. Penalty for turn without casted darkness spell decreased by another 5%.",
				"You've chosen the 'Eclipsing Shadow (Su)' perk. Prevent decay of cumulative damage increase bonus when channeling darkness based attack. Penalty for turn without casted darkness spell decreased by another 5%.");
		public static const EclipticMind:PerkType = mk("Ecliptic Mind", "Ecliptic Mind",
				"Allows to retains aura at all time, gaining whichever corresponds to your alignment. Empower the effect of your aura based on your purity or corruption score.",
				"You've chosen the 'Ecliptic Mind' perk. Allows to retains aura at all time, gaining whichever corresponds to your alignment. Empower the effect of your aura based on your purity or corruption score.");
		public static const EclipticMindEvolved:PerkType = mk("Ecliptic Mind (Evolved)", "Ecliptic Mind (Evolved)",
				"Further empower the effect of your aura based on your purity or corruption score. Aura effect is doubled against creatures of the opposite alignment.",
				"You've chosen the 'Ecliptic Mind (Evolved)' perk. Further empower the effect of your aura based on your purity or corruption score. Aura effect is doubled against creatures of the opposite alignment.");
		public static const EclipticMindFinalForm:PerkType = mk("Ecliptic Mind (Final Form)", "Ecliptic Mind (Final Form)",
				"Further empower the effect of your aura based on your purity or corruption score. Aura effect is tripled against creatures of the opposite alignment. Gain minor regeneration based on your alignment.",
				"You've chosen the 'Ecliptic Mind (Final Form)' perk. Further empower the effect of your aura based on your purity or corruption score. Aura effect is tripled against creatures of the opposite alignment. Gain minor regeneration based on your alignment.");
		public static const ElementalArrows:PerkType = mk("Elemental Arrows", "Elemental Arrows",
				"Shoot elemental arrows adding your intelligence to your damage.",
				"You've chosen the 'Elemental Arrows' perk, allowing you to shoot elemental arrows.");
		public static const ElementalBolt:PerkType = mk("Elemental Bolt", "Elemental Bolt",
				"Enable use of Elemental bolt. (would prevent decay of buff from building up elemental damage)",
				"You've chosen the 'Elemental Bolt' perk. Enable use of Elemental bolt. (would prevent decay of buff from building up elemental damage)");
		public static const ElementalBondFlesh:PerkType = mk("Elemental Bond: Flesh", "Elemental Bond: Flesh",
				"You gains bonus to max HP depending on amount of summoned elementals and their ranks.",
				"You've chosen the 'Elemental Bond: Flesh' perk, allowing you to form bond with summoned elementals to share recived damage.");
		public static const ElementalBondUrges:PerkType = mk("Elemental Bond: Urges", "Elemental Bond: Urges",
				"You gains bonus to max Lust depending on amount of summoned elementals and their ranks.",
				"You've chosen the 'Elemental Bond: Urges' perk, allowing you to form bond with summoned elementals to share recived lust damage.");
		public static const ElementalConjurerDedication:PerkType = mk("Elemental Conjurer Dedication", "Elemental Conjurer Dedication",
				"Your elementals attack power is greatly enhanced at the cost of physical body fragility.",
				"You've chosen the 'Elemental Conjurer Dedication' perk, dedicating yourself to pursue path of elemental conjuring at the cost of physical fragility.").withBuffs({'str.mult':-0.30,'tou.mult':-0.30,'spe.mult':-0.30,'int.mult':0.40,'wis.mult':0.60});
		public static const ElementalConjurerResolve:PerkType = mk("Elemental Conjurer Resolve", "Elemental Conjurer Resolve",
				"Your elementals attack power is enhanced at the cost of weakening physical body.",
				"You've chosen the 'Elemental Conjurer Resolve' perk, showing your resolve to purse elementals enhancing at the cost of physical weakening.").withBuffs({'str.mult':-0.15,'tou.mult':-0.15,'spe.mult':-0.15,'int.mult':0.20,'wis.mult':0.30});
		public static const ElementalConjurerSacrifice:PerkType = mk("Elemental Conjurer Sacrifice", "Elemental Conjurer Sacrifice",
				"Your elementals attack power is enhanced beyond limits at the cost of similar weakening physical ones.",
				"You've chosen the 'Elemental Conjurer Sacrifice' perk, showing your will to sacrifice everything in reaching perfect elementals enhancing.").withBuffs({'str.mult':-0.45,'tou.mult':-0.45,'spe.mult':-0.45,'int.mult':0.60,'wis.mult':0.90});
		public static const ElementalContractRank1:PerkType = mk("Elemental Contract Rank 1", "Elemental Contract Rank 1",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 1.",
				"You've chosen the 'Elemental Contract Rank 1' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank2:PerkType = mk("Elemental Contract Rank 2", "Elemental Contract Rank 2",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 2.",
				"You've chosen the 'Elemental Contract Rank 2' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank3:PerkType = mk("Elemental Contract Rank 3", "Elemental Contract Rank 3",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 3.",
				"You've chosen the 'Elemental Contract Rank 3' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank4:PerkType = mk("Elemental Contract Rank 4", "Elemental Contract Rank 4",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 4.",
				"You've chosen the 'Elemental Contract Rank 4' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank5:PerkType = mk("Elemental Contract Rank 5", "Elemental Contract Rank 5",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 5.",
				"You've chosen the 'Elemental Contract Rank 5' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank6:PerkType = mk("Elemental Contract Rank 6", "Elemental Contract Rank 6",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 6.",
				"You've chosen the 'Elemental Contract Rank 6' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank7:PerkType = mk("Elemental Contract Rank 7", "Elemental Contract Rank 7",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 7.",
				"You've chosen the 'Elemental Contract Rank 7' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank8:PerkType = mk("Elemental Contract Rank 8", "Elemental Contract Rank 8",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 8.",
				"You've chosen the 'Elemental Contract Rank 8' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank9:PerkType = mk("Elemental Contract Rank 9", "Elemental Contract Rank 9",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to rank 9.",
				"You've chosen the 'Elemental Contract Rank 9' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank10:PerkType = mk("Elemental Contract Rank 10", "Elemental Contract Rank 10",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 9th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 10' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank11:PerkType = mk("Elemental Contract Rank 11", "Elemental Contract Rank 11",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 8th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 11' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank12:PerkType = mk("Elemental Contract Rank 12", "Elemental Contract Rank 12",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 7th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 12' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank13:PerkType = mk("Elemental Contract Rank 13", "Elemental Contract Rank 13",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 6th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 13' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank14:PerkType = mk("Elemental Contract Rank 14", "Elemental Contract Rank 14",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 5th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 14' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank15:PerkType = mk("Elemental Contract Rank 15", "Elemental Contract Rank 15",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 4th Elder rank.",
				"You've chosen the 'Elemental Contract Rank 15' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank16:PerkType = mk("Elemental Contract Rank 16", "Elemental Contract Rank 16",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 3rd Elder rank.",
				"You've chosen the 'Elemental Contract Rank 16' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank17:PerkType = mk("Elemental Contract Rank 17", "Elemental Contract Rank 17",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 2nd Elder rank.",
				"You've chosen the 'Elemental Contract Rank 17' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank18:PerkType = mk("Elemental Contract Rank 18", "Elemental Contract Rank 18",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to 1st Elder rank.",
				"You've chosen the 'Elemental Contract Rank 18' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank19:PerkType = mk("Elemental Contract Rank 19", "Elemental Contract Rank 19",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to Grand Elder rank.",
				"You've chosen the 'Elemental Contract Rank 19' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank20:PerkType = mk("Elemental Contract Rank 20", "Elemental Contract Rank 20",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Low) Lord rank.",
				"You've chosen the 'Elemental Contract Rank 20' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank21:PerkType = mk("Elemental Contract Rank 21", "Elemental Contract Rank 21",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Mid) Lord rank.",
				"You've chosen the 'Elemental Contract Rank 21' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank22:PerkType = mk("Elemental Contract Rank 22", "Elemental Contract Rank 22",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Advanced) Lord rank.",
				"You've chosen the 'Elemental Contract Rank 22' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank23:PerkType = mk("Elemental Contract Rank 23", "Elemental Contract Rank 23",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Peak) Lord rank.",
				"You've chosen the 'Elemental Contract Rank 23' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank24:PerkType = mk("Elemental Contract Rank 24", "Elemental Contract Rank 24",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Low) Baron rank.",
				"You've chosen the 'Elemental Contract Rank 24' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank25:PerkType = mk("Elemental Contract Rank 25", "Elemental Contract Rank 25",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Mid) Baron rank.",
				"You've chosen the 'Elemental Contract Rank 25' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank26:PerkType = mk("Elemental Contract Rank 26", "Elemental Contract Rank 26",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Advanced) Baron rank.",
				"You've chosen the 'Elemental Contract Rank 26' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank27:PerkType = mk("Elemental Contract Rank 27", "Elemental Contract Rank 27",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Peak) Baron rank.",
				"You've chosen the 'Elemental Contract Rank 27' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank28:PerkType = mk("Elemental Contract Rank 28", "Elemental Contract Rank 28",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Low) Viscount rank.",
				"You've chosen the 'Elemental Contract Rank 28' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank29:PerkType = mk("Elemental Contract Rank 29", "Elemental Contract Rank 29",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Mid) Viscount rank.",
				"You've chosen the 'Elemental Contract Rank 29' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank30:PerkType = mk("Elemental Contract Rank 30", "Elemental Contract Rank 30",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Advanced) Viscount rank.",
				"You've chosen the 'Elemental Contract Rank 30' perk, rising your ability to command more and stronger elementals.");
		public static const ElementalContractRank31:PerkType = mk("Elemental Contract Rank 31", "Elemental Contract Rank 31",
				"As Elemental Contract rank increase, the number and maximum rank of elementals you can command increases by 1. Allow to rank-up summoned elementals to (Peak) Viscount rank.",
				"You've chosen the 'Elemental Contract Rank 31' perk, rising your ability to command more and stronger elementals.");
		public static const ElementsOfMarethAdvanced:PerkType = mk("Elements of Mareth: Advanced", "Elements of Mareth: Advanced",
				"You can now summon and command poison, purity and corruption elementals. Also increase elementals command limit by 1.",
				"You've chosen the 'Elements of Mareth: Advanced' perk, your time spent in Mareth allowing you to get advanced understanding of native elements that aren't classified as one of four traditional.");
		public static const ElementsOfMarethBasics:PerkType = mk("Elements of Mareth: Basics", "Elements of Mareth: Basics",
				"You can now summon and command ice, lightning and darkness elementals. Also increase elementals command limit by 1.",
				"You've chosen the 'Elements of Mareth: Basics' perk, your time spent in Mareth allowing you to get basic understanding of native elements that aren't classified as one of four traditional.");
		public static const ElementsOfTheOrtodoxPath:PerkType = mk("Elements of the orthodox Path", "Elements of the orthodox Path",
				"You can now summon and command ether, wood and metal elementals. Also increase elementals command limit by 1.",
				"You've chosen the 'Elements of the orthodox Path' perk, your time spent on studing elements allowing you to call those mentioned in more orthodox writings.");
		public static const Embodiment:PerkType = mk("Embodiment", "Embodiment",
				"You embody the principles of the monks... as usual you should only expect the 10% soulforce gain.",
				"You've chosen the 'Embodiment' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const EnableCriticals:PerkType = mk("Enable Criticals", "Enable Criticals",
				"You now score crits on all naturaly immune to them enemies like constructs, goo or plants.",
				"You've chosen the 'Enable Criticals' perk, allowing you to get crits on normaly immune to this enemy types.");
		public static const Enchantment:PerkType = mk("Enchantment", "Enchantment",
				"Using your arcane knowledge associated with alchemy,  you enchant each item to further power its effects +2% alchemy/mutagen boost.",
				"You've chosen the 'Enchantment' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const EngineersFriend:PerkType = mk("Engineer's Friend", "Engineer's Friend",
				"Ah Spah's sappin' mah Sentrah! (Damn that's a thick accent... best take the +10% ranged damage buff before he turns it on you)",
				"You've chosen the 'Engineer's Friend' perk, gaining +10% range phys dmg.");
		public static const Enhancement:PerkType = mk("Enhancement", "Enhancement",
				"Using your knowledge of alchemy, you've found a way to enhance the effects of transformatives +2% alchemy/mutagen boost.",
				"You've chosen the 'Enhancement' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const EnvenomedBolt:PerkType = mk("Envenomed Bolt", "Envenomed Bolt",
				"By carefully collecting your venom you can apply poison to your arrows and bolts.",
				"You've chosen the 'Envenomed Bolt' perk, allowing you to apply your own venom to arrows and bolts.");
		public static const EpicBrawn:PerkType = mk("Epic Brawn", "Epic Brawn",
				"You have improved your striking power to epic level. (+25% to phantom Str bonus, +20% to unarmed atk)",
				"You've chosen the 'Epic Brawn' perk, improving your striking power to epic level. (+25% to phantom Str bonus, +20% to unarmed atk)");
		public static const EpicBrute:PerkType = mk("Epic Brute", "Epic Brute",
				"You have improved your striking strength to epic level. (+80% of max core Str as phantom Str)",
				"You've chosen the 'Epic Brute' perk, improving your striking strength to epic level. (+80% of max core Str as phantom Str)");
		public static const EpicDesensitization:PerkType = mk("Epic Desensitization", "Epic Desensitization",
				"Negative effects of sensitivity are reduced by 15%.",
				"You've chosen the 'Epic Desensitization' perk, decreasing negative effects of sensitivity by 15%.");
		public static const EpicDiehard:PerkType = mk("Epic Diehard", "Epic Diehard",
				"You can't lose by HP until your health drops into the negatives any more than 8% of max HP + 2400(scalable). HP limit cumulative with other Diehard perks and when below 0 HP will not longer loose 1% of max HP per turn.",
				"You've chosen the 'Epic Diehard' perk, getting third upgrade of Diehard effect.");
		public static const EpicEndurance:PerkType = mk("Epic Endurance", "Epic Endurance",
				"Increases maximum fatigue by 4500.",
				"You've chosen the 'Epic Endurance' perk. Thanks to your epic physical conditioning, your maximum fatigue has been increased by 4500!")
				.withBuffs({'maxfatigue_base':+4500});
		public static const EpicGolemMaker:PerkType = mk("Epic Golem Maker", "Epic Golem Maker",
				"Your proficiency in making golems allows to make stronger golems. Also allow to make and store 1 improved stone golem.",
				"You've chosen the 'Epic Golem Maker' perk, increasing your proficiency in making golems. Also allow to make improved stone golems.").withBuffs({'int.mult':0.10,'wis.mult':0.10});
		public static const EpicGolemMaker2ndCircle:PerkType = mk("Epic Golem Maker (2nd Circle)", "Epic Golem Maker (2nd Circle)",
				"Your proficiency in making golems allows to make stronger than before golems. Allow to store 1 more improved stone golem.",
				"You've chosen the 'Epic Golem Maker (2nd Circle)' perk, increasing your proficiency in making golems. Allow to store 1 more improved stone golem.").withBuffs({'int.mult':0.20,'wis.mult':0.20});
		public static const EpicGolemMaker3rdCircle:PerkType = mk("Epic Golem Maker (3rd Circle)", "Epic Golem Maker (3rd Circle)",
				"Your proficiency in making golems allows to make stronger golems as much stronger their creator became and slightly rise your intelligence and wisdom. Allow to store 1 more improved stone golem.",
				"You've chosen the 'Epic Golem Maker (3rd Circle)' perk, increasing your proficiency in making golems. Allow to store 1 more improved stone golem.").withBuffs({'int.mult':0.30,'wis.mult':0.30});
		public static const EpicIntelligence:PerkType = mk("Epic Intelligence", "Epic Intelligence",
				"",
				"You've chosen the 'Epic Intelligence' perk.").withBuffs({'int.mult':0.35});
		public static const EpicLibido:PerkType = mk("Epic Libido", "Epic Libido",
				"",
				"You've chosen the 'Epic Libido' perk.").withBuffs({'lib.mult':0.35});
		public static const EpicLifeline:PerkType = mk("Epic Lifeline", "Epic Lifeline",
				"Increases self healing by 240 out of combat and by 120 in combat (using defend option will double it).",
				"You've chosen the 'Epic Lifeline' perk, increasing your self healing to epic level.");
		public static const EpicSelfControl:PerkType = mk("Epic Self-Control", "Epic Self-Control",
				"Increases maximum lust by 6750.",
				"You've chosen the 'Epic Self-Control' perk. Thanks to your epic mental conditioning, your maximum lust has been increased by 6750!")
				.withBuffs({'maxlust_base':+6750});
		public static const EpicSensitivity:PerkType = mk("Epic Sensitivity", "Epic Sensitivity",
				"",
				"You've chosen the 'Epic Sensitivity' perk.").withBuffs({'sens':140});
		public static const EpicSpeed:PerkType = mk("Epic Speed", "Epic Speed",
				"",
				"You've chosen the 'Epic Speed' perk.").withBuffs({'spe.mult':0.35});
		public static const EpicSpirituality:PerkType = mk("Epic Spirituality", "Epic Spirituality",
				"Increases maximum mana by 20250.",
				"You've chosen the 'Epic Spirituality' perk. Thanks to your epic mystical conditioning, your maximum mana has been increased by 20250!")
				.withBuffs({'maxmana_base':+20250});
		public static const EpicStrength:PerkType = mk("Epic Strength", "Epic Strength",
				"",
				"You've chosen the 'Epic Strength' perk.").withBuffs({'str.mult':0.35});
		public static const EpicToughness:PerkType = mk("Epic Toughness", "Epic Toughness",
				"",
				"You've chosen the 'Epic Toughness' perk.").withBuffs({'tou.mult':0.35});
		public static const EpicTranquilness:PerkType = mk("Epic Tranquilness", "Epic Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Epic Tranquilness' perk. Thanks to your epic anger managment training, your maximum wrath has been increased by 11250!")
				.withBuffs({'maxwrath_base':+11250});
		public static const EpicWisdom:PerkType = mk("Epic Wisdom", "Epic Wisdom",
				"",
				"You've chosen the 'Epic Wisdom' perk.").withBuffs({'wis.mult':0.35});
		public static const EromancyBeginner:PerkType = mk("Eromancy (Beginner)", "Eromancy (Beginner)",
				"+3 extra maximum mana for each point of intelligence and +1 extra maximum fatigue for each point of libido.",
				"You've chosen the 'Eromancy (Beginner)' perk, granting +3 extra maximum mana for each point of intelligence and +1 extra maximum fatigue for each point of libido.");
		public static const EromancyExpert:PerkType = mk("Eromancy (Expert)", "Eromancy (Expert)",
				"+3 extra maximum mana for each point of intelligence and +2 extra maximum fatigue for each point of libido, bonus to lust dmg dealt by m. specials similary to the one given by Arcane Lash.",
				"You've chosen the 'Eromancy (Expert)' perk, granting +3 extra maximum mana for each point of intelligence and +2 extra maximum fatigue for each point of libido, bonus to lust dmg dealt by m. specials similary to the one given by Arcane Lash.");
		public static const EromancyMaster:PerkType = mk("Eromancy (Master)", "Eromancy (Master)",
				"+6 extra maximum mana for each point of intelligence and +2 extra maximum fatigue for each point of libido, tease exp for use of Arouse spell or m. specials dealing lust dmg.",
				"You've chosen the 'Eromancy (Master)' perk, granting +6 extra maximum mana for each point of intelligence and +2 extra maximum fatigue for each point of libido, tease exp for use of Arouse spell or m. specials dealing lust dmg.");
		public static const Escort:PerkType = mk("Escort", "Escort",
				"You've gotten so good you can now charge people money for having sex with you. There's many tricks you learned, increasing your tease damage by 15%.",
				"You've chosen the 'Escort' perk, gaining +15% tease dmg.");
		public static const EternalyLastingBuffs:PerkType = mk("(Eternaly) Lasting Buffs", "(Eternaly) Lasting Buffs",
				"Buff spells last another 5 turns longer at another 2x increase of their costs.",
				"You've chosen the '(Eternaly) Lasting Buffs' perk. Your mastery over buffs reached (eternaly) lasting level. (+5 turns duration and increasing cost 2x)");
		public static const Evade:PerkType = mk("Evade", "Evade",
				"Increases chances of evading enemy attacks. (+5% to evasion)",
				"You've chosen the 'Evade' perk, allowing you to avoid enemy attacks more often! (+5% to evasion)");
		public static const EverLastingBuffs:PerkType = mk("(Ever)Lasting Buffs", "(Ever)Lasting Buffs",
				"Buff spells last 5 turns longer at the double of normal costs.",
				"You've chosen the '(Ever)Lasting Buffs' perk. Your mastery over buffs reached (ever)lasting level. (+5 turns duration and increasing cost 2x)");
		public static const ExpertAllRounderEducation:PerkType = mk("Expert All-Rounder Education", "Expert All-Rounder Education",
				"Limit of advanced job you can learn is increased by 3.",
				"You've chosen the 'Expert All-Rounder Education' perk, expanding amount of advanced jobs you can learn. (+3)");
		public static const ExpertGolemMaker:PerkType = mk("Expert Golem Maker", "Expert Golem Maker",
				"Your proficiency in making golems allows them to attack even flying enemies, lower by 5% chance of core shattering, storing more golems/golem cores and increase dmg scaling up on current int/wis.",
				"You've chosen the 'Expert Golem Maker' perk, increasing your proficiency in making golems.");
		public static const ExpertGunslinger:PerkType = mk("Expert Gunslinger", "Expert Gunslinger",
				"Gain an extra firearm attack per turn (3rd one).",
				"You've chosen the 'Expert Gunslinger' perk, gaining an extra firearm attack per turn.");
		public static const ExplosiveCartridge:PerkType = mk("Explosive cartridge", "Explosive cartridge",
				"Gunshots deals double damage against groups (of any size) and large enemies (9+ ft. tall).",
				"You've chosen the 'Explosive cartridge' perk, allowing for your gunshots dealing extra damage to group (of any size) or large enemies (9+ ft. tall).");
		public static const ExtraClawAttack:PerkType = mk("Extra claw attack", "Extra claw attack",
				"When attacking with your natural weapons, add an additional attack striking up to 3 times.",
				"You've chosen the 'Extra claw attack' perk, gaining an additional attack with your natural weapons!")
				.withBuffs({'maxwrath_base':+150});
		public static const ExtremelyLucky:PerkType = mk("Extremely Lucky", "Extremely Lucky",
				"You're banned from casinos with that luck of yours, but you still find stuff lying around after battles, increasing your gain upon victory. (15% more gems from victories)",
				"You've chosen the 'Extremely Lucky' perk, increasing gem gains from victories by 15%.");
		public static const EyesOfTheHunterAdept:PerkType = mk("Eyes of the Hunter (Adept)", "Eyes of the Hunter (Adept)",
				"You to deal 10% damage and have 5% higher critical chance against Huge, Groups, Beast or Animal-morph, Construct, Feral, Goo, True Demon type enemies. (req. 50+ sensitivity)",
				"You've chosen the 'Eyes of the Hunter (Adept)' perk, allowing you to deal 10% damage and have 5% higher critical chance against Huge, Groups, Beast or Animal-morph, Construct, Feral, Goo, True Demon type enemies.");
		public static const EyesOfTheHunterExpert:PerkType = mk("Eyes of the Hunter (Expert)", "Eyes of the Hunter (Expert)",
				"You to deal 10% damage and have 5% higher critical chance against Giant, Large Groups, Elemental, Ghost, Plant, Fire/Ice/Lightning/Darkness Vulnerability type enemies (req. 75+ sensitivity)",
				"You've chosen the 'Eyes of the Hunter (Expert)' perk, allowing you to deal 10% damage and have 5% higher critical chance against Giant, Large Groups, Elemental, Ghost, Plant, Fire/Ice/Lightning/Darkness Vulnerability type enemies.");
		public static const EyesOfTheHunterGrandMaster:PerkType = mk("Eyes of the Hunter (Grand Master)", "Eyes of the Hunter (Grand Master)",
				"You to deal 10% damage and have 5% higher critical chance against God, Boss type enemies (req. 100+ sensitivity)",
				"You've chosen the 'Eyes of the Hunter (Grand Master)' perk, allowing you to deal 10% damage and have 5% higher critical chance against God, Boss type enemies.");
		public static const EyesOfTheHunterMaster:PerkType = mk("Eyes of the Hunter (Master)", "Eyes of the Hunter (Master)",
				"You to deal 10% damage and have 5% higher critical chance against Colossal, Flesh Construct, God, Boss, Fire/Ice/Lightning/Darkness Nature type enemies (req. 100+ sensitivity)",
				"You've chosen the 'Eyes of the Hunter (Master)' perk, allowing you to deal 10% damage and have 5% higher critical chance against Colossal, Flesh Construct, God, Boss, Fire/Ice/Lightning/Darkness Nature type enemies.");
		public static const EyesOfTheHunterNovice:PerkType = mk("Eyes of the Hunter (Novice)", "Eyes of the Hunter (Novice)",
				"Allow see few more than usual infomations about enemy (req. 25+ sensitivity).",
				"You've chosen the 'Eyes of the Hunter (Novice)' perk, allowing you to gain more information about enemy you fight.");
		public static const EyesOfTheHunterEx:PerkType = mk("Eyes of the Hunter (Ex)", "Eyes of the Hunter (Ex)",
				"Allowing you to be able to fight much higher level enemies than you as long your sensitivtiy is high enough. (increase by 1 lvl (up to 30) per 25 sensitivity cap on lvl diff after which attacks deal 1 dmg to enemy)",
				"You've chosen the 'Eyes of the Hunter (Ex)' perk, allowing you to be able to fight much higher level enemies than you as long your sensitivtiy is high enough. (increase by 1 lvl (up to 30) per 25 sensitivity cap on lvl diff after which attacks deal 1 dmg to enemy)");
		public static const EyesOfTheHunterSu:PerkType = mk("Eyes of the Hunter (Su)", "Eyes of the Hunter (Su)",
				"Allowing you to increase critical chance and overeal damage dealt to enemies (all with specific type that eyes of hunter allow to recognize) based on how high is sensitivty. (+1% crit chance/+2% damage per 5 sensitvity up to 95%/190% bonus)",
				"You've chosen the 'Eyes of the Hunter (Su)' perk, allowing you to increase critical chance and overeal damage dealt to enemies (all with specific type that eyes of hunter allow to recognize) based on how high is sensitivty. (+1% crit chance/+2% damage per 5 sensitvity up to 95%/190% bonus)");
		public static const Feint:PerkType = mk("Feint", "Feint",
				"Unlock p. special 'Feint' that have chance to cause 1 turn long distraction of enemy(ies) that allow to use sneaky attack.",
				"You've chosen the 'Feint' perk. Unlock p. special 'Feint' that have chance to cause 1 turn long distraction of enemy(ies) that allow to use sneaky attack.");
		public static const FeralArmor:PerkType = mk("Feral Armor", "Feral Armor",
				"Gain extra armor based on your toughness so long as you’re naked and have any form of natural armor.",
				"You've chosen the 'Feral Armor' perk, gaining extra armor as long you are naked and have any natural armor!")
				.withBuffs({'maxwrath_base':+100});
		public static const FertilityMinus:PerkType = mk("Fertility-", "Fertility-",
				"Decreases fertility rating by 15 and cum volume by up to 30%. (Req's libido of less than 25.)",
				"You've chosen the 'Fertility-' perk, making it harder to get pregnant.  It also decreases your cum volume by up to 30% (if appropriate)!");
		public static const FertilityPlus:PerkType = mk("Fertility+", "Fertility+",
				"Increases fertility rating by 15 and cum volume by up to 50%.",
				"You've chosen the 'Fertility+' perk, making it easier to get pregnant.  It also increases your cum volume by up to 50% (if appropriate)!");
		public static const FirstAttackElementals:PerkType = mk("First Attack: Elementals", "First Attack: Elementals",
				"Instead of melee attacking in PC place one of summoned elementals will attack before PC allowing latter to take any action even personaly attaking with melee weapon. Or allow to use both options at once.",
				"You've chosen the 'First Attack: Elementals' perk, allowing your summoned elementals to attack independly from you.");
		public static const FirstAttackElementalsEx:PerkType = mk("First Attack: Elementals (Ex)", "First Attack: Elementals (Ex)",
				"Your summoned elementals when attacking would deal 5%/10%/20% more for each normal/rare/unique elemental in group/party outside the attacking elemental. In case of option when elemental attack on it own it would attack 2 or 3 times (10% chance).",
				"You've chosen the 'First Attack: Elementals (Ex)' perk, allowing your summoned elementals to deal more damage the more total amount of summoned elementals you have and sometimes them hitting more often.");
		public static const FirstAttackElementalsSu:PerkType = mk("First Attack: Elementals (Su)", "First Attack: Elementals (Su)",
				"Mana cost scaling of elemental attacking based on int/wis stats lowered by 68% and 84%. Additionaly cost halfed before final rounding up. Elemental always attack 4 times. Epic elementals can now also attack (as another turn of elementals attacks)",
				"You've chosen the 'First Attack: Elementals (Su)' perk, becoming more efficient in reducing mana costs of elementals attacks and increasing their attacks per turn. Epic elementals would now join attack of it lesser kind. (int and wis scaling of costs decreased by ~68% and ~84%, 4 attacks per action)");
		public static const FirstAttackGolems:PerkType = mk("First Attack: Golems", "First Attack: Golems",
				"Before your actions one or more of your golems will attack.",
				"You've chosen the 'First Attack: Golems' perk, allowing some of your permanent golems strike before you.");
		public static const FirstResponse:PerkType = mk("First Response", "First Response",
				"Your time running into disaster to take care of others allows you to take better care of wounds, further increasing your regen.",
				"You've chosen the 'First Response' perk, increasing HP gains by 20%.");
		public static const FleshBodyApprenticeStage:PerkType = mk("Flesh Body: Apprentice Stage", "Flesh Body: Apprentice Stage",
				"Your reached first stage of body cultivating. (+5 to unarmed attack, +2 to armor, +1 to magic resistance, +250 max HP at S.Apprentice, S.Personage, S.Warrior stages)",
				"You've chosen the 'Flesh Body: Apprentice Stage' perk, working on cultivating power of your fleshy body. (+5 to unarmed attack, +2 to armor, +1 to magic resistance, +250 max HP at S.Apprentice, S.Personage, S.Warrior stages)");
		public static const FleshBodyElderStage:PerkType = mk("Flesh Body: Elder Stage", "Flesh Body: Elder Stage",
				"Your reached third stage of body cultivating. (+11 to unarmed attack, +6 to armor, +5 to magic resistance, +600 max HP at S.Exalt, S.Overlord, S.Tyrant stages)",
				"You've chosen the 'Flesh Body: Elder Stage' perk, working on cultivating power of your fleshy body. (+11 to unarmed attack, +6 to armor, +5 to magic resistance, +600 max HP at S.Exalt, S.Overlord, S.Tyrant stages)");
		public static const FleshBodyOverlordStage:PerkType = mk("Flesh Body: Overlord Stage", "Flesh Body: Overlord Stage",
				"Your reached fourth stage of body cultivating. (+14 to unarmed attack, +8 to armor, +7 to magic resistance, +800 max HP S.King, S.Emperor, S.Ancestor stages)",
				"You've chosen the 'Flesh Body: Overlord Stage' perk, working on cultivating power of your fleshy body. (+14 to unarmed attack, +8 to armor, +7 to magic resistance, +800 max HP S.King, S.Emperor, S.Ancestor stages)");
		public static const FleshBodyTyrantStage:PerkType = mk("Flesh Body: Tyrant Stage", "Flesh Body: Tyrant Stage",
				"Your reached fifth stage of body cultivating.",
				"You've chosen the 'Flesh Body: Tyrant Stage' perk, working on cultivating power of your fleshy body. (+17 to unarmed attack, +10 to armor, +9 to magic resistance, +1000 max HP at )");
		public static const FleshBodyWarriorStage:PerkType = mk("Flesh Body: Warrior Stage", "Flesh Body: Warrior Stage",
				"Your reached second stage of body cultivating. (+8 to unarmed attack, +4 to armor, +3 to magic resistance, +400 max HP at S.Sprite, S.Scholar, S.Elder stages)",
				"You've chosen the 'Flesh Body: Warrior Stage' perk, working on cultivating power of your fleshy body. (+8 to unarmed attack, +4 to armor, +3 to magic resistance, +400 max HP at S.Sprite, S.Scholar, S.Elder stages)");
		public static const FlurryOfBlows:PerkType = mk("Flurry of Blows", "Flurry of Blows",
				"Gain two additional attack when fighting with fist or fist weapon. All physical soulforce ability now also strike twice!",
				"You've chosen the 'Flurry of Blows' perk, gaining two additional attack when fighting with fist or fist weapon. All physical soulforce ability now also strike twice.");
		public static const FuelForTheFire:PerkType = mk("Fuel for the Fire", "Fuel for the Fire",
				"Increase two times wrath gains from getting hit.",
				"You've chosen the 'Fuel for the Fire' perk, increasing gained wrath after taking damage.")
				.withBuffs({'maxwrath_base':+2500});
		public static const FocusedMind:PerkType = mk("Focused Mind", "Focused Mind",
				"Black Magic is less likely to backfire and White Magic threshold is increased.",
				"You've chosen the 'Focused Mind' perk. Black Magic is less likely to backfire and White Magic threshold is increased.");
		public static const FortressOfIntellect:PerkType = mk("Fortress of Intellect", "Fortress of Intellect",
				"Might increases intelligence instead of strength (toggleable).",
				"You've chosen the 'Fortress of Intellect' perk. You can now change Might to boost intelligence instead of strength.");
		public static const FourthRing:PerkType = mk("Fourth Ring", "Fourth Ring",
				"Your expert understanding of magic pools allows you to equip fourth ring.",
				"You've chosen the 'Fourth Ring' perk, reaching expert understanding of magic pools to allow you equip fourth ring.");
		public static const Furnace:PerkType = mk("Furnace", "Furnace",
				"I don't know how you worked without one, but now you have a furnace! Now take your upgraded armor proficiency while I get answers... (+5% phys/mag resistance)",
				"You've chosen the 'Furnace' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const Fusion:PerkType = mk("Fusion", "Fusion",
				"Using your knowledge of alchemy and enhancement, you found a way to fuse two of the same item together, further enhacing transformative effects +2% alchemy/mutagen boost.",
				"You've chosen the 'Fusion' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const GigantGrip:PerkType = mk("Gigant's Grip", "Gigant's Grip",
				"Gain an ability to wield large weapons and massive shields in one hand. (+5 to max Str)",
				"You've chosen the 'Gigant's Grip' perk, gaining an ability to wield large weapons and massive shields in one hand.").withBuffs({'str.mult':0.5});
		public static const GigantGripEx:PerkType = mk("Gigant's Grip (Ex)", "Gigant's Grip (Ex)",
				"Allow to apply all perks boosting Large weapon performance (increased atk and etc.) to Massive weapons. Exception are perks that allow for multi attacks of large weapons.",
				"You've chosen the 'Gigant's Grip (Ex)' perk, allowing to apply all perks boosting Large weapon performance (increased atk and etc.) to Massive weapons. Exception are perks that allow for multi attacks of large weapons.").withBuffs({'str.mult':0.5,'tou.mult':0.5});
		public static const GigantGripSu:PerkType = mk("Gigant's Grip (Su)", "Gigant's Grip (Su)",
				"Gain an ability to wield four large weapons as long you have 4 or more arms.",
				"You've chosen the 'Gigant's Grip (Su)' perk, gaining an ability to wield large weapons in each hands no mather how many you got.").withBuffs({'str.mult':0.5,'tou.mult':0.5,'spe.mult':0.5});
		public static const GiantsReach:PerkType = mk("Giant's Reach", "Giant's Reach",
				"When fighting groups of enemies with Large weapons it creates small shockwaves increasing range (and damage) of AoE attacks.",
				"You've chosen the 'Giant's Reach' perk. Increase range of attacks with large weapons in fights against group enemies.");
		public static const GiftOfLust:PerkType = mk("Gift of Lust", "Gift of Lust",
				"You enhanced your Transference special to transfer 25% of your current arousal to your opponent at 25% lower fatigue cost.",
				"You've chosen the 'Gift of Lust' perk, enhancing special Transference to transfer 10% more lust to enemy.");
		public static const GlacialStorm:PerkType = mk("Glacial Storm", "Glacial Storm",
				"Cumulative 20% damage increase for every subsequent ice spell. Each turn without casted ice spell lower damage by 20%.",
				"You've chosen the 'Glacial Storm' perk. Cumulative 20% damage increase for every subsequent ice spell. Each turn without casted ice spell lower damage by 20%.");
		public static const GlacialStormEx:PerkType = mk("Glacial Storm (Ex)", "Glacial Storm (Ex)",
				"Increase to cumulative damage by 10%. Penalty for turn without casted ice spell decreased by 5%.",
				"You've chosen the 'Glacial Storm (Ex)' perk. Increase to cumulative damage by 10%. Penalty for turn without casted ice spell decreased by 5%.");
		public static const GlacialStormSu:PerkType = mk("Glacial Storm (Su)", "Glacial Storm (Su)",
				"Prevent decay of cumulative damage increase bonus when channeling ice based attack. Penalty for turn without casted ice spell decreased by another 5%.",
				"You've chosen the 'Glacial Storm (Su)' perk. Prevent decay of cumulative damage increase bonus when channeling ice based attack. Penalty for turn without casted ice spell decreased by another 5%.");
		public static const GodOfSteel:PerkType = mk("God of Steel", "God of Steel",
				"You have surpassed your mortal self to become the embodiment of melee damage, further increasing it. (+10% melee phys dmg)",
				"You've chosen the 'God of Steel' perk, gaining +10% melee phys dmg.");
		public static const GolemArmyCaptain:PerkType = mk("Golem Army Captain", "Golem Army Captain",
				"+1/1/3/6 to max limit stored of pernament steel and (permanent improved/normal)/temporary stone golems.",
				"You've chosen the 'Golem Army Captain' perk, allowing to store additional permanent steel golem and (improved stone +1/stone +3) and temporary (+6) stone golems in your golem bag.");
		public static const GolemArmyColonel:PerkType = mk("Golem Army Colonel", "Golem Army Colonel",
				"+1/1/1/6/12 to max limit stored of pernament (improved/normal) steel and (permanent improved/normal)/temporary stone golems.",
				"You've chosen the 'Golem Army Colonel' perk, allowing to store additional permanent (improved/normal) steel golem and (improved stone +1/stone +6) and temporary (+12) stone golems in your golem bag.");
		public static const GolemArmyGeneral:PerkType = mk("Golem Army General", "Golem Army Brigadier General",
				"+1/1/1/7/14 to max limit stored of pernament (improved/normal) steel and (permanent improved/normal)/temporary stone golems.",
				"You've chosen the 'Golem Army Brigadier General' perk, allowing to store additional permanent (improved/normal) steel golem and (improved stone +1/stone +7) and temporary (+14) stone golems in your golem bag.");
		public static const GolemArmyJuniorLieutenant:PerkType = mk("Golem Army Junior Lieutenant", "Golem Army Junior Lieutenant",
				"+1/2 to max limit stored of permanent/temporary stone golems.",
				"You've chosen the 'Golem Army Junior Lieutenant' perk, allowing to store additional permanent (+1) and temporary (+2) stone golems in your golem bag.");
		public static const GolemArmyLieutenant:PerkType = mk("Golem Army Lieutenant", "Golem Army Lieutenant",
				"+2/4 to max limit of stored permanent/temporary stone golems.",// +1 to max limit for stored permanent steel golems.
				"You've chosen the 'Golem Army Lieutenant' perk, allowing to store additional permanent (+2) and temporary (+4) stone golems golems in your golem bag.");// Allow to store steel golem. (+1)
		public static const GolemArmyLieutenantColonel:PerkType = mk("Golem Army Lieutenant Colonel", "Golem Army Lieutenant Colonel",
				"+1/1/5/10 to max limit stored of pernament steel and (permanent improved/normal)/temporary stone golems.",
				"You've chosen the 'Golem Army Lieutenant Colonel' perk, allowing to store additional permanent steel golem and (improved stone +1/stone +5) and temporary (+10) stone golems in your golem bag.");
		public static const GolemArmyMajor:PerkType = mk("Golem Army Major", "Golem Army Major",
				"+1/1/4/8 to max limit stored of pernament steel and (permanent improved/normal)/temporary stone golems.",
				"You've chosen the 'Golem Army Major' perk, allowing to store additional permanent steel golem and (improved stone +1/stone +4) and temporary (+8) stone golems in your golem bag.");
		public static const GolemArmyMajorGeneral:PerkType = mk("Golem Army Major General", "Golem Army Major General",
				"",
				"You've chosen the 'Golem Army Major General' perk, allowing to store additional permanent (improved/normal) steel golem and (improved stone +1/stone +8) and temporary (+16) stone golems in your golem bag.");
		public static const GoliathI:PerkType = mk("Goliath I", "Goliath I",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath I' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GoliathII:PerkType = mk("Goliath II", "Goliath II",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath II' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GoliathIII:PerkType = mk("Goliath III", "Goliath III",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath III' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GoliathIV:PerkType = mk("Goliath IV", "Goliath IV",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath IV' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GoliathV:PerkType = mk("Goliath V", "Goliath V",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath V' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GoliathVI:PerkType = mk("Goliath VI", "Goliath VI",
				"+8 extra HP per point of strength.",
				"You've chosen the 'Goliath VI' perk, granting +8 extra maximum HP for each point of strength.");
		public static const GrabbingGrandmaster:PerkType = mk("Grabbing Grandmaster", "Grabbing Grandmaster",
				"The toss to the floor from Grabbing Styles comes with such power that the foe is left out of breath. Scaling with strength, up to 20% chance of stunning the opponent for 1 round after the toss. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Grabbing Grandmaster' perk, wich makes the toss to the floor from Grabbing Styles increase in power to the point that the foe is left out of breath. Scaling with strength, up to 20% chance of stunning the opponent for 1 round after the toss. This only work when fighting unarmed with no shield equiped.");
		public static const GrabbingMaster:PerkType = mk("Grabbing Master", "Grabbing Master",
				"Double the chances of activating grabbing style. And double your strength modifier to determine the maximum size you can grapple. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Grabbing Master' perk. This double the chances of activating grabbing style. And double the maximum size you can grapple. This only work when fighting unarmed with no shield equiped.");
		public static const GrabbingStyle:PerkType = mk("Grabbing Style", "Grabbing Style",
				"Add a chance per unarmed strike hit based on strength to chain the attack with a second strike, grabbing and slamming your foe around. Higher strengths lets you grab larger foes. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Grabbing Style' perk, wich adds a chance per unarmed strike hit based on strength to chain the attack with a second strike, grabbing and slamming your foe around. Higher strengths lets you grab larger foes. This only work when fighting unarmed with no shield equiped.");
		public static const GrandArchmage:PerkType = mk("Grand Archmage", "Grand Archmage",
				"[if (player.inte>=125)" +
						"Increases base spell strength by 40%, mana pool by 225 and lust bar by 60." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Archmage' perk, increasing base spell strength by 40%, mana pool by 225 and lust bar by 60.")
				.withBuffs({'maxlust_base':+60});
		public static const GrandArchmage2ndCircle:PerkType = mk("Grand Archmage (2nd Circle)", "Grand Archmage (2nd Circle)",
				"[if (player.inte>=150)" +
						"Increases base spell strength by 50%, mana pool by 270 and lust bar by 75." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Archmage (2nd Circle)' perk, increasing base spell strength by 50%, mana pool by 270 and lust bar by 75.")
				.withBuffs({'maxlust_base':+75});
		public static const GrandArchmage3rdCircle:PerkType = mk("Grand Archmage (3rd Circle)", "Grand Archmage (3rd Circle)",
				"[if (player.inte>=175)" +
						"Increases base spell strength by 60%, mana pool by 315 and lust bar by 90." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Archmage (3rd Circle)' perk, increasing base spell strength by 60%, mana pool by 315 and lust bar by 390.")
				.withBuffs({'maxlust_base':+90});
		public static const GrandBlademaster:PerkType = mk("Grand Blademaster", "Grand Blademaster",
				"Gain +15% to critical strike chance when wielding weapon with blade (sword, dueling sword, axe) and not using a shield.",
				"You've chosen the 'Grand Blademaster' perk.  Your chance of critical hit is increased by 15% as long as you're wielding weapon with blade like sword and not using a shield.");
		public static const GrandGreyArchmage:PerkType = mk("Grand Grey Archmage", "Grand Grey Archmage",
				"[if (player.inte>=225)" +
						"Increases grey spell strength by 40%, mana pool by 600, lust bar by 160, regain it 100% faster. Grey spells can be cast without limitation due to current lust." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Grey Archmage' perk. Your grey spell power, mana pool, lust bar and mana recovery are greatly increased. Grey spells can be cast without limitation due to current lust.")
				.withBuffs({'maxlust_base':+160});
		public static const GrandMage:PerkType = mk("Grand Mage", "Grand Mage",
				"[if (player.inte>=75)" +
						"Increases base spell strength by 30%, base mana pool by 135 and lust bar by 30." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Mage' perk, increasing base spell strength by 30%, mana pool by 135 and lust bar by 30.")
				.withBuffs({'maxlust_base':+30});
		public static const GrandMasterGolemMaker:PerkType = mk("Grand-Master Golem Maker", "Grand-Master Golem Maker",
				"Your proficiency in making golems allows to make golems that can attack flying enemies at small cost in mana drawn from it owner (aka PC). Also allowing to store one more in golem bag.",
				"You've chosen the 'Grand-Master Golem Maker' perk, increasing your proficiency in making golems.");
		public static const GrandTactician:PerkType = mk("Grand Tactician", "Grand Tactician",
				"[if(player.inte>=150)" +
						"Increases physical critical hit chance by up to 30% (Intelligence-based)." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grand Tactician' perk, increasing physical critical hit chance by up to 30% (Intelligence-based).");
		public static const GreaterAerialCombat:PerkType = mk("Greater Aerial Combat", "Greater Aerial Combat",
				"You have learned to use air and gravity to your own benefit. (extend flight duration while using wings by 4 turns and increase evasion when flying by 15%)",
				"You've chosen the 'Greater Aerial Combat' perk, you learned to use air and gravity to your own benefit.");
		public static const GreaterBrawn:PerkType = mk("Greater Brawn", "Greater Brawn",
				"You have greatly improved your striking power. (+20% to phantom Str bonus, +15% to unarmed atk)",
				"You've chosen the 'Greater Brawn' perk, greatly improving your striking power. (+20% to phantom Str bonus, +15% to unarmed atk)");
		public static const GreaterBrute:PerkType = mk("Greater Brute", "Greater Brute",
				"You have greatly improved your striking strength. (+60% of max core Str as phantom Str)",
				"You've chosen the 'Greater Brute' perk, greatly improving your striking strength. (+60% of max core Str as phantom Str)");
		public static const GreaterCrinosShape:PerkType = mk("Greater Crinos Shape", "Greater Crinos Shape",
				"Crinos Shape increase to physical might rise to 80% of core str/tou/spe.",
				"You've chosen the 'Greater Crinos Shape' perk, gaining another increase to phys stats boost in Crinos Shape (+80%).")
				.withBuffs({'maxwrath_base':+400});
		public static const GreaterDesensitization:PerkType = mk("Greater Desensitization", "Greater Desensitization",
				"Negative effects of sensitivity are reduced by 10%.",
				"You've chosen the 'Greater Desensitization' perk, decreasing negative effects of sensitivity by 10%.");
		public static const GreaterDiehard:PerkType = mk("Greater Diehard", "Greater Diehard",
				"You can't lose by HP until your health drops into the negatives any more than 6% of max HP + 1800(scalable). HP limit cumulative with other Diehard perks.",
				"You've chosen the 'Greater Diehard' perk, getting second increase to limit of maintaining Diehard effects.");
		public static const GreaterEvade:PerkType = mk("Greater Evade", "Greater Evade",
				"Increases chances of evading enemy attacks. (+15% to evasion)",
				"You've chosen the 'Greater Evade' perk, allowing you to avoid enemy attacks more often! (+15% to evasion)");
		public static const GreaterFeint:PerkType = mk("Greater feint", "Greater feint",
				"Increase duration of enemy(ies) distraction by 2 turns.",
				"You've chosen the 'Greater feint' perk. Increase duration of enemy(ies) distraction by 2 turns.");
		public static const GreaterGiftOfLust:PerkType = mk("Greater Gift of Lust", "Greater Gift of Lust",
				"You enhanced your Transference special second time to transfer 40% of your current arousal to your opponent at doubled fatigue cost compared to previous enhance (1,5x of orginal fatigue cost).",
				"You've chosen the 'Greater Gift of Lust' perk, enhancing Transference special second time to transfer 15% more lust to enemy at increased fatigue cost.");
		public static const GreaterLifeline:PerkType = mk("Greater Lifeline", "Greater Lifeline",
				"Increases self healing by 180 out of combat and by 90 in combat (using defend option will double it).",
				"You've chosen the 'Greater Lifeline' perk, greatly increasing your self healing.");
		public static const Greedy:PerkType = mk("Greedy", "Greedy",
				"Double all gems gained!",
				"Double all gems gained.");
		public static const GreyArchmage:PerkType = mk("Grey Archmage", "Grey Archmage",
				"[if (player.inte>=175)" +
						"Increases grey spell strength by 30%, mana pool by 450, lust bar by 80 and regain mana 75% faster." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grey Archmage' perk, increasing grey spell power strength by 30%, mana pool by 600, lust bar by 150 and boosting mana recovery by large margin.")
				.withBuffs({'maxlust_base':+80});
		public static const GreyMage:PerkType = mk("Grey Mage", "Grey Mage",
				"[if (player.inte>=125)" +
						"Increases grey spell strength by 20%, mana pool by 300, lust bar by 40, regain it 50% faster, treshold for Black Magic is 30 lust and for White 30 lust below current max." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grey Mage' perk. Your grey spell power, mana pool, lust bar and mana recovery are greatly increased, treshold for White Magic rised and for Black lowered.")
				.withBuffs({'maxlust_base':+40});
		public static const GreyMageApprentice:PerkType = mk("Grey Mage Apprentice", "Grey Mage Apprentice",
				"[if (player.inte>=75)" +
						"Increases grey spell strength by 10%, mana pool by 150, lust bar by 20, regain it 25% faster." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Grey Mage Apprentice' perk. Your grey spell power, mana pool, lust bar and mana recovery are increased.")
				.withBuffs({'maxlust_base':+20});
		public static const HeavyArmorProficiency:PerkType = mk("Heavy Armor Proficiency", "Heavy Armor Proficiency",
				"Wearing Heavy Armor's grants 10% damage reduction.",
				"You've chosen the 'Heavy Armor Proficiency' perk.  Due to your specialization in wearing heavy armor's you gain a little bit of damage reduction.");
		public static const HalfStepToAdvancedEndurance:PerkType = mk("Half-step-to Advanced Endurance", "Half-step-to Advanced Endurance",
				"Increases maximum fatigue by 120.",
				"You've chosen the 'Half-step-to Advanced Endurance' perk. Thanks to your advanced physical conditioning, your maximum fatigue has been increased by 120!")
				.withBuffs({'maxfatigue_base':+120});
		public static const HalfStepToAdvancedSelfControl:PerkType = mk("Half-step-to Advanced Self-Control", "Half-step-to Advanced Self-Control",
				"Increases maximum lust by 180.",
				"You've chosen the 'Half-step-to Advanced Self-Control' perk. Thanks to your advanced mental conditioning, your maximum lust has been increased by 180!")
				.withBuffs({'maxlust_base':+180});
		public static const HalfStepToAdvancedSpirituality:PerkType = mk("Half-step-to Advanced Spirituality", "Half-step-to Advanced Spirituality",
				"Increases maximum mana by 540.",
				"You've chosen the 'Half-step-to Advanced Spirituality' perk. Thanks to your advanced mystical conditioning, your maximum mana has been increased by 540!")
				.withBuffs({'maxmana_base':+540});
		public static const HalfStepToAdvancedTranquilness:PerkType = mk("Half-step-to Advanced Tranquilness", "Half-step-to Advanced Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Advanced Tranquilness' perk. Thanks to your advanced anger managment training, your maximum wrath has been increased by 300!")
				.withBuffs({'maxwrath_base':+300});;
		public static const HalfStepToEpicEndurance:PerkType = mk("Half-step-to Epic Endurance", "Half-step-to Epic Endurance",
				"Increases maximum fatigue by 3000.",
				"You've chosen the 'Half-step-to Epic Endurance' perk. Thanks to your epic physical conditioning, your maximum fatigue has been increased by 3000!")
				.withBuffs({'maxfatigue_base':+3000});
		public static const HalfStepToEpicSelfControl:PerkType = mk("Half-step-to Epic Self-Control", "Half-step-to Epic Self-Control",
				"Increases maximum lust by 4500.",
				"You've chosen the 'Half-step-to Epic Self-Control' perk. Thanks to your epic mental conditioning, your maximum lust has been increased by 4500!")
				.withBuffs({'maxlust_base':+4500});
		public static const HalfStepToEpicSpirituality:PerkType = mk("Half-step-to Epic Spirituality", "Half-step-to Epic Spirituality",
				"Increases maximum mana by 13500.",
				"You've chosen the 'Half-step-to Epic Spirituality' perk. Thanks to your epic mystical conditioning, your maximum mana has been increased by 13500!")
				.withBuffs({'maxmana_base':+13500});
		public static const HalfStepToEpicTranquilness:PerkType = mk("Half-step-to Epic Tranquilness", "Half-step-to Epic Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Epic Tranquilness' perk. Thanks to your epic anger managment training, your maximum wrath has been increased by 7500!")
				.withBuffs({'maxwrath_base':+7500});
		public static const HalfStepToImprovedEndurance:PerkType = mk("Half-step-to Improved Endurance", "Half-step-to Improved Endurance",
				"Increases maximum fatigue by 50.",
				"You've chosen the 'Half-step-to Improved Endurance' perk. Thanks to your improved physical conditioning, your maximum fatigue has been increased by 50!")
				.withBuffs({'maxfatigue_base':+50});
		public static const HalfStepToImprovedSelfControl:PerkType = mk("Half-step-to Improved Self-Control", "Half-step-to Improved Self-Control",
				"Increases maximum lust by 75.",
				"You've chosen the 'Half-step-to Improved Self-Control' perk. Thanks to your improved mental conditioning, your maximum lust has been increased by 75!")
				.withBuffs({'maxlust_base':+75});
		public static const HalfStepToImprovedSpirituality:PerkType = mk("Half-step-to Improved Spirituality", "Half-step-to Improved Spirituality",
				"Increases maximum mana by 225.",
				"You've chosen the 'Half-step-to Improved Spirituality' perk. Thanks to your improved mystical conditioning, your maximum mana has been increased by 225!")
				.withBuffs({'maxmana_base':+225});
		public static const HalfStepToImprovedTranquilness:PerkType = mk("Half-step-to Improved Tranquilness", "Half-step-to Improved Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Improved Tranquilness' perk. Thanks to your improved anger managment training, your maximum wrath has been increased by 125!")
				.withBuffs({'maxwrath_base':+125});
		public static const HalfStepToInhumanEndurance:PerkType = mk("Half-step-to Inhuman Endurance", "Half-step-to Inhuman Endurance",
				"Increases maximum fatigue by 1500.",
				"You've chosen the 'Half-step-to Inhuman Endurance' perk. Thanks to your inhuman physical conditioning, your maximum fatigue has been increased by 1500!")
				.withBuffs({'maxfatigue_base':+1500});
		public static const HalfStepToInhumanSelfControl:PerkType = mk("Half-step-to Inhuman Self-Control", "Half-step-to Inhuman Self-Control",
				"Increases maximum lust by 2250.",
				"You've chosen the 'Half-step-to Inhuman Self-Control' perk. Thanks to your inhuman mental conditioning, your maximum lust has been increased by 2250!")
				.withBuffs({'maxlust_base':+2250});
		public static const HalfStepToInhumanSpirituality:PerkType = mk("Half-step-to Inhuman Spirituality", "Half-step-to Inhuman Spirituality",
				"Increases maximum mana by 6750.",
				"You've chosen the 'Half-step-to Inhuman Spirituality' perk. Thanks to your inhuman mystical conditioning, your maximum mana has been increased by 6750!")
				.withBuffs({'maxmana_base':+6750});
		public static const HalfStepToInhumanTranquilness:PerkType = mk("Half-step-to Inhuman Tranquilness", "Half-step-to Inhuman Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Inhuman Tranquilness' perk. Thanks to your inhuman anger managment training, your maximum wrath has been increased by 3750!")
				.withBuffs({'maxwrath_base':+3750});
		public static const HalfStepToLegendaryEndurance:PerkType = mk("Half-step-to Legendary Endurance", "Half-step-to Legendary Endurance",
				"Increases maximum fatigue by 7000.",
				"You've chosen the 'Half-step-to Legendary Endurance' perk. Thanks to your legendary physical conditioning, your maximum fatigue has been increased by 7000!")
				.withBuffs({'maxfatigue_base':+7000});
		public static const HalfStepToLegendarySelfControl:PerkType = mk("Half-step-to Legendary Self-Control", "Half-step-to Legendary Self-Control",
				"Increases maximum lust by 10500.",
				"You've chosen the 'Half-step-to Legendary Self-Control' perk. Thanks to your legendary mental conditioning, your maximum lust has been increased by 10500!")
				.withBuffs({'maxlust_base':+10500});
		public static const HalfStepToLegendarySpirituality:PerkType = mk("Half-step-to Legendary Spirituality", "Half-step-to Legendary Spirituality",
				"Increases maximum mana by 31500.",
				"You've chosen the 'Half-step-to Legendary Spirituality' perk. Thanks to your legendary mystical conditioning, your maximum mana has been increased by 31500!")
				.withBuffs({'maxmana_base':+31500});
		public static const HalfStepToLegendaryTranquilness:PerkType = mk("Half-step-to Legendary Tranquilness", "Half-step-to Legendary Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Legendary Tranquilness' perk. Thanks to your legendary anger managment training, your maximum wrath has been increased by 17500!")
				.withBuffs({'maxwrath_base':+17500});
		public static const HalfStepToMythicalEndurance:PerkType = mk("Half-step-to Mythical Endurance", "Half-step-to Mythical Endurance",
				"Increases maximum fatigue by 15000.",
				"You've chosen the 'Half-step-to Mythical Endurance' perk. Thanks to your mythical physical conditioning, your maximum fatigue has been increased by 15000!")
				.withBuffs({'maxfatigue_base':+15000});
		public static const HalfStepToMythicalSelfControl:PerkType = mk("Half-step-to Mythical Self-Control", "Half-step-to Mythical Self-Control",
				"Increases maximum lust by 22500.",
				"You've chosen the 'Half-step-to Mythical Self-Control' perk. Thanks to your mythical mental conditioning, your maximum lust has been increased by 22500!")
				.withBuffs({'maxlust_base':+22500});
		public static const HalfStepToMythicalSpirituality:PerkType = mk("Half-step-to Mythical Spirituality", "Half-step-to Mythical Spirituality",
				"Increases maximum mana by 67500.",
				"You've chosen the 'Half-step-to Mythical Spirituality' perk. Thanks to your mythical mystical conditioning, your maximum mana has been increased by 67500!")
				.withBuffs({'maxmana_base':+67500});
		public static const HalfStepToMythicalTranquilness:PerkType = mk("Half-step-to Mythical Tranquilness", "Half-step-to Mythical Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Mythical Tranquilness' perk. Thanks to your mythical anger managment training, your maximum wrath has been increased by 37500!")
				.withBuffs({'maxwrath_base':+37500});
		public static const HalfStepToPeerlessEndurance:PerkType = mk("Half-step-to Peerless Endurance", "Half-step-to Peerless Endurance",
				"Increases maximum fatigue by 700.",
				"You've chosen the 'Half-step-to Peerless Endurance' perk. Thanks to your peerless physical conditioning, your maximum fatigue has been increased by 700!")
				.withBuffs({'maxfatigue_base':+700});
		public static const HalfStepToPeerlessSelfControl:PerkType = mk("Half-step-to Peerless Self-Control", "Half-step-to Peerless Self-Control",
				"Increases maximum lust by 1050.",
				"You've chosen the 'Half-step-to Peerless Self-Control' perk. Thanks to your peerless mental conditioning, your maximum lust has been increased by 1050!")
				.withBuffs({'maxlust_base':+1050});
		public static const HalfStepToPeerlessSpirituality:PerkType = mk("Half-step-to Peerless Spirituality", "Half-step-to Peerless Spirituality",
				"Increases maximum mana by 3150.",
				"You've chosen the 'Half-step-to Peerless Spirituality' perk. Thanks to your peerless mystical conditioning, your maximum mana has been increased by 3150!")
				.withBuffs({'maxmana_base':+3150});
		public static const HalfStepToPeerlessTranquilness:PerkType = mk("Half-step-to Peerless Tranquilness", "Half-step-to Peerless Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Peerless Tranquilness' perk. Thanks to your peerless anger managment training, your maximum wrath has been increased by 1750!")
				.withBuffs({'maxwrath_base':+1750});
		public static const HalfStepToSuperiorEndurance:PerkType = mk("Half-step-to Superior Endurance", "Half-step-to Superior Endurance",
				"Increases maximum fatigue by 320.",
				"You've chosen the 'Half-step-to Superior Endurance' perk. Thanks to your superior physical conditioning, your maximum fatigue has been increased by 320!")
				.withBuffs({'maxfatigue_base':+320});
		public static const HalfStepToSuperiorSelfControl:PerkType = mk("Half-step-to Superior Self-Control", "Half-step-to Superior Self-Control",
				"Increases maximum lust by 480.",
				"You've chosen the 'Half-step-to Superior Self-Control' perk. Thanks to your superior mental conditioning, your maximum lust has been increased by 480!")
				.withBuffs({'maxlust_base':+480});
		public static const HalfStepToSuperiorSpirituality:PerkType = mk("Half-step-to Superior Spirituality", "Half-step-to Superior Spirituality",
				"Increases maximum mana by 1440.",
				"You've chosen the 'Half-step-to Superior Spirituality' perk. Thanks to your superior mystical conditioning, your maximum mana has been increased by 1440!")
				.withBuffs({'maxmana_base':+1440});
		public static const HalfStepToSuperiorTranquilness:PerkType = mk("Half-step-to Superior Tranquilness", "Half-step-to Superior Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Half-step-to Superior Tranquilness' perk. Thanks to your superior anger managment training, your maximum wrath has been increased by 800!")
				.withBuffs({'maxwrath_base':+800});
		public static const Hammer:PerkType = mk("Hammer", "Hammer",
				"You found a hammer! Now you can pound out any dents in your armor, increasing its proficiency! Look at you growing up. (+5% phys/mag resistance)",
				"You've chosen the 'Hammer' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const HeartOfSteel:PerkType = mk("Heart of Steel", "Heart of Steel",
				"Even your heart has grown used to fighting, after all, the saying goes 'Steel your heart', further increasing your melee strength. (+10% melee phys dmg)",
				"You've chosen the 'Heart of Steel' perk, gaining +10% melee phys dmg.");
		public static const HeavysFriend:PerkType = mk("Heavy's Friend", "Heavy's Friend",
				"I like you! Cover Heavy! (You'll definitely need that +10% ranged damage buff if you're going in front of that dude)",
				"You've chosen the 'Heavy's Friend' perk, gaining +10% range phys dmg.");
		public static const HectaAttackSmall:PerkType = mk("Hecta Attack (Small)", "Hecta Attack (Small)",
				"Allows you to perform seven melee attacks with small weapons per round.",
				"You've chosen the 'Hecta Attack (Small)' perk. This allows you to make seven melee attacks with small weapons.");
		public static const Heroism:PerkType = mk("Heroism", "Heroism",
				"Allows you to deal double damage toward boss or gigant sized enemies.",
				"You've chosen the 'Heroism' perk. Due to your heroic stance you can now deal more damage toward boss or gigant type enemies.");
		public static const HexaAttack:PerkType = mk("Hexa Attack", "Hexa Attack",
				"Allows you to perform six melee attacks with normal sized weapons per round.",
				"You've chosen the 'Hexa Attack' perk. This allows you to make six melee attacks with non-large weapons.")
				.withBuffs({'maxwrath_base':+50});
		public static const HexaAttackSmall:PerkType = mk("Hexa Attack (Small)", "Hexa Attack (Small)",
				"Allows you to perform six melee attacks with small weapons per round.",
				"You've chosen the 'Hexa Attack (Small)' perk. This allows you to make six melee attacks with small weapons.");
		public static const HiddenDualMomentum:PerkType = mk("Hidden Dual Momentum", "Hidden Dual Momentum",
				"You've trained in using your speed to enhance power of your dual large weapons swings.",
				"You've chosen the 'Hidden Dual Momentum' perk, allowing to use your speed to enhance power of your attacks with dual large weapons.");
		public static const HiddenMomentum:PerkType = mk("Hidden Momentum", "Hidden Momentum",
				"You've trained in using your speed to enhance power of your single large weapons swings.",
				"You've chosen the 'Hidden Momentum' perk, allowing to use your speed to enhance power of your attacks with single large weapons.");
		public static const HighVoltage:PerkType = mk("High Voltage", "High Voltage",
				"Cumulative 20% damage increase for every subsequent lightning spell. Each turn without casted lightning spell lower damage by 20%.",
				"You've chosen the 'High Voltage' perk. Cumulative 20% damage increase for every subsequent lightning spell. Each turn without casted lightning spell lower damage by 20%.");
		public static const HighVoltageEx:PerkType = mk("High Voltage (Ex)", "High Voltage (Ex)",
				"Increase to cumulative damage by 10%. Penalty for turn without casted lightning spell decreased by 5%.",
				"You've chosen the 'High Voltage (Ex)' perk. Increase to cumulative damage by 10%. Penalty for turn without casted lightning spell decreased by 5%.");
		public static const HighVoltageSu:PerkType = mk("High Voltage (Su)", "High Voltage (Su)",
				"Prevent decay of cumulative damage increase bonus when channeling lightning based attack. Penalty for turn without casted lightning spell decreased by another 5%.",
				"You've chosen the 'High Voltage (Su)' perk. Prevent decay of cumulative damage increase bonus when channeling lightning based attack. Penalty for turn without casted lightning spell decreased by another 5%.");
		public static const Hoarder:PerkType = mk("Hoarder", "Hoarder",
				"That's what you are, a hoarder. I bet you don't even spend the money. Sleep well at night knowing you're ruining the economy... while you take more money after each victory. (15% more gems from victories)",
				"You've chosen the 'Hoarder' perk, increasing gem gains from victories by 15%.");
		public static const HoldWithBothHands:PerkType = mk("Hold With Both Hands", "Hold With Both Hands",
				"Gain +20% strength modifier with melee weapons when not using a shield.",
				"You've chosen the 'Hold With Both Hands' perk.  As long as you're wielding a melee weapon and you're not using a shield, you gain 20% strength modifier to damage.");
		public static const HotBlooded:PerkType = mk("Hot Blooded", "Hot Blooded",
				"Raises minimum lust by 20.",
				"You've chosen the 'Hot Blooded' perk.  As a result of your enhanced libido, your lust no longer drops below 20!");
		public static const ImmovableObject:PerkType = mk("Immovable Object", "Immovable Object",
				"[if(player.tou>=75)" +
						"Grants 10% physical damage reduction.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Immovable Object' perk, granting 10% physical damage reduction.</b>");
		public static const Impale:PerkType = mk("Impale", "Impale",
				"Damage bonus of spears and lances critical hits is doubled as long your speed is high enough.",
				"You've chosen the 'Impale' perk. Your spear and lance critical hit attacks bonus damages are doubled.");
		public static const ImprovedBrawn:PerkType = mk("Improved Brawn", "Improved Brawn",
				"You have improved your striking power. (+15% to phantom Str bonus, +10% to unarmed atk)",
				"You've chosen the 'Improved Brawn' perk, improving your striking power. (+15% to phantom Str bonus, +10% to unarmed atk)");
		public static const ImprovedBrute:PerkType = mk("Improved Brute", "Improved Brute",
				"You have improved your striking strength. (+40% of max core Str as phantom Str)",
				"You've chosen the 'Improved Brute' perk, improving your striking strength. (+40% of max core Str as phantom Str)");
		public static const ImprovedCrinosShape:PerkType = mk("Improved Crinos Shape", "Improved Crinos Shape",
				"Crinos Shape increase to physical might rise to 40% of core str/tou/spe.",
				"You've chosen the 'Improved Crinos Shape' perk, increasing boost recived by using Crinos Shape (+40%).")
				.withBuffs({'maxwrath_base':+200});
		public static const ImprovedDiehard:PerkType = mk("Improved Diehard", "Improved Diehard",
				"You can't lose by HP until your health drops into the negatives any more than 4% of max HP + 1200(scalable). HP limit cumulative with other Diehard perks.",
				"You've chosen the 'Improved Diehard' perk, increasing limit on how long you can fight.");
		public static const ImprovedEndurance:PerkType = mk("Improved Endurance", "Improved Endurance",
				"Increases maximum fatigue by 80.",
				"You've chosen the 'Improved Endurance' perk. Thanks to your improved physical conditioning, your maximum fatigue has been increased by 80!")
				.withBuffs({'maxfatigue_base':+80});
		public static const ImprovedEvade:PerkType = mk("Improved Evade", "Improved Evade",
				"Increases chances of evading enemy attacks. (+10% to evasion)",
				"You've chosen the 'Improved Evade' perk, allowing you to avoid enemy attacks more often! (+10% to evasion)");
		public static const ImprovedLifeline:PerkType = mk("Improved Lifeline", "Improved Lifeline",
				"Increases self healing by 120 out of combat and by 60 in combat (using defend option will double it).",
				"You've chosen the 'Improved Lifeline' perk, improving your self healing.");
		public static const ImprovedSelfControl:PerkType = mk("Improved Self-Control", "Improved Self-Control",
				"Increases maximum lust by 120.",
				"You've chosen the 'Improved Self-Control' perk. Thanks to your improved mental conditioning, your maximum lust has been increased by 120!")
				.withBuffs({'maxlust_base':+120});
		public static const ImprovedSpirituality:PerkType = mk("Improved Spirituality", "Improved Spirituality",
				"Increases maximum mana by 360.",
				"You've chosen the 'Improved Spirituality' perk. Thanks to your improved mystical conditioning, your maximum mana has been increased by 360!")
				.withBuffs({'maxmana_base':+360});
		public static const ImprovedTranquilness:PerkType = mk("Improved Tranquilness", "Improved Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Improved Tranquilness' perk. Thanks to your improved anger managment training, your maximum wrath has been increased by 200!")
				.withBuffs({'maxwrath_base':+200});
		public static const ImprovingNaturesBlueprintsNaturalArmor:PerkType = mk("Improving Nature's Blueprints (Natural Armor)", "Improving Nature's Blueprints (Natural Armor)",
				"Charge Armor can be casted even if PC is not wearing any armor as long it have any form of natural armor (any skin type providing bonus to armor) and slight boost armor while under Crinos Shape effects.",
				"You've chosen the 'Improving Nature's Blueprints (Natural Armor)' perk, allowing you to use Charge Armor even without wearing any armor and slight boost armor when using Crinos Shape.");
		public static const ImprovingNaturesBlueprintsNaturalWeapons:PerkType = mk("Improving Nature's Blueprints (Natural Weapons)", "Improving Nature's Blueprints (Natural Weapons)",
				"Charge Weapon can be cast whenever PC hold any weapon or merely using bare fists. And slight boost unarmed attacks while under Crinos Shape effects.",
				"You've chosen the 'Improving Nature's Blueprints (Natural Weapons)' perk, allowing you to use Charge Weapon even without holding any weapon and slight boost unarmed attacks when using Crinos Shape.");
		public static const ImprovingNaturesBlueprintsApexPredator:PerkType = mk("Improving Nature's Blueprints (Apex Predator)", "Improving Nature's Blueprints (Apex Predator)",
				"Changing negative bonuses to max Int and Wis from Job: Beast Warrior is the same value positive bonuses. While using Crinos shape increasing natural regeneration by 2% of max HP per turn.",
				"You've chosen the 'Improving Nature's Blueprints (Apex Predator)' perk, allowing you to become an Apex Predator that isn't dull and slow witted along with increased regeneration while using Crinos Shape.").withBuffs({'int.mult':0.10,'wis.mult':0.10});
		public static const InControl:PerkType = mk("In Control", "In Control",
				"You are in control of your desires, that's it... except another 10% soul force gain.",
				"You've chosen the 'In Control' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const InhumanDesireI:PerkType = mk("Inhuman Desire I", "Inhuman Desire I",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire I' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanDesireII:PerkType = mk("Inhuman Desire II", "Inhuman Desire II",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire II' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanDesireIII:PerkType = mk("Inhuman Desire III", "Inhuman Desire III",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire III' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanDesireIV:PerkType = mk("Inhuman Desire IV", "Inhuman Desire IV",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire IV' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanDesireV:PerkType = mk("Inhuman Desire V", "Inhuman Desire V",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire V' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanDesireVI:PerkType = mk("Inhuman Desire VI", "Inhuman Desire VI",
				"+3 extra LP per point of libido.",
				"You've chosen the 'Inhuman Desire VI' perk, granting an extra +3 to maximum LP for each point of libido.")
				.withBuffs({'maxlust_perlib':+3});
		public static const InhumanEndurance:PerkType = mk("Inhuman Endurance", "Inhuman Endurance",
				"Increases maximum fatigue by 2000.",
				"You've chosen the 'Inhuman Endurance' perk. Thanks to your inhuman physical conditioning, your maximum fatigue has been increased by 2000!")
				.withBuffs({'maxfatigue_base':+2000});
		public static const InhumanSelfControl:PerkType = mk("Inhuman Self-Control", "Inhuman Self-Control",
				"Increases maximum lust by 3000.",
				"You've chosen the 'Inhuman Self-Control' perk. Thanks to your inhuman mental conditioning, your maximum lust has been increased by 3000!")
				.withBuffs({'maxlust_base':+3000});
		public static const InhumanSpirituality:PerkType = mk("Inhuman Spirituality", "Inhuman Spirituality",
				"Increases maximum mana by 9000.",
				"You've chosen the 'Inhuman Spirituality' perk. Thanks to your inhuman mystical conditioning, your maximum mana has been increased by 9000!")
				.withBuffs({'maxmana_base':+9000});
		public static const InhumanTranquilness:PerkType = mk("Inhuman Tranquilness", "Inhuman Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Inhuman Tranquilness' perk. Thanks to your inhuman anger managment training, your maximum wrath has been increased by 5000!")
				.withBuffs({'maxwrath_base':+5000});
		public static const InsightfulResourcesI:PerkType = mk("Insightful Resources I", "Insightful Resources I",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources I' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const InsightfulResourcesII:PerkType = mk("Insightful Resources II", "Insightful Resources II",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources II' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const InsightfulResourcesIII:PerkType = mk("Insightful Resources III", "Insightful Resources III",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources III' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const InsightfulResourcesIV:PerkType = mk("Insightful Resources IV", "Insightful Resources IV",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources IV' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const InsightfulResourcesV:PerkType = mk("Insightful Resources V", "Insightful Resources V",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources V' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const InsightfulResourcesVI:PerkType = mk("Insightful Resources VI", "Insightful Resources VI",
				"+5 extra soulforce per point of wisdom.",
				"You've chosen the 'Insightful Resources VI' perk, granting +5 extra maximum soulforce for each point of wisdom.")
				.withBuffs({'maxsf_perwis':+3});
		public static const IntermediateAllRounderEducation:PerkType = mk("Intermediate All-Rounder Education", "Intermediate All-Rounder Education",
				"Limit of advanced job you can learn is increased by 3.",
				"You've chosen the 'Intermediate All-Rounder Education' perk, expanding amount of advanced jobs you can learn. (+3)");
		public static const IronFistsI:PerkType = mk("Iron Fists I", "Iron Fists I",
				"Hardens your fists to increase attack rating by 10.",
				"You've chosen the 'Iron Fists I' perk, hardening your fists. This increases attack power by 10.");
		public static const IronFistsII:PerkType = mk("Iron Fists II", "Iron Fists II",
				"Further hardens your fists to increase attack rating by another 10.",
				"You've chosen the 'Iron Fists II' perk, further hardening your fists. This increases attack power by another 10.");
		public static const IronFistsIII:PerkType = mk("Iron Fists III", "Iron Fists III",
				"Even more hardens your fists to increase attack rating again by 10.",
				"You've chosen the 'Iron Fists III' perk, even further hardening your fists. This increases attack power again by 10.");
		public static const IronFistsIV:PerkType = mk("Iron Fists IV", "Iron Fists IV",
				"Next training to harden your fists increased their attack rating by 10.",
				"You've chosen the 'Iron Fists IV' perk, again hardening your fists. This increases attack power for another 10.");
		public static const IronFistsV:PerkType = mk("Iron Fists V", "Iron Fists V",
				"Almost hellish training increeased your fists attack rating by another 10.",
				"You've chosen the 'Iron Fists V' perk, to once again make your first more tough. This increases attack power once more for 10.");
		public static const IronFistsVI:PerkType = mk("Iron Fists VI", "Iron Fists VI",
				"Another round of almost hellish training increased your fists attack rating by another 10.",
				"You've chosen the 'Iron Fists VI' perk, to again make your first tougher. This increases attack power again for 10.");
		public static const IronMan:PerkType = mk("Iron Man", "Iron Man",
				"Reduces the fatigue cost of physical specials by 50%.",
				"You've chosen the 'Iron Man' perk, reducing the fatigue cost of physical special attacks by 50%");
		public static const IronStomach:PerkType = mk("Iron Stomach", "Iron Stomach",
				"Increase max Satiety by 50 and limit when PC gain weight from eating too much by 5.",
				"You've chosen the 'Iron Stomach' perk, increasing your limit for eating without getting fat.");
		public static const IronStomachEx:PerkType = mk("Iron Stomach (Ex)", "Iron Stomach (Ex)",
				"Increase max Satiety by 100 and limit when PC gain weight from eating too much by another 10.",
				"You've chosen the 'Iron Stomach (Ex)' perk, getting second increase to maximum amount of food you can eat before you start to getting fat.");
		public static const IronStomachSu:PerkType = mk("Iron Stomach (Su)", "Iron Stomach (Su)",
				"Increase max Satiety by 200, limit when PC gain weight from eating too much by another 15.",
				"You've chosen the 'Iron Stomach (Su)' perk, making yourself capable to eat more without getting overweigh.").withBuffs({'tou.mult':0.05});
		/*public static const IronStomach:PerkType = mk("Iron Stomach", "Iron Stomach",
				"Reduces the fatigue cost of physical specials by 50%.",
				"You've chosen the 'Iron Stomach' perk, reducing the fatigue cost of physical special attacks by 50%");*/
		public static const JabbingGrandmaster:PerkType = mk("Jabbing Grandmaster", "Jabbing Grandmaster",
				"Gain up to 10% chance (scaling with speed) of doing 1 extra attack on each unarmed strike. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Jabbing Grandmaster' perk, wich grants up to 10% chance (scaling with speed) of doing 1 extra attack on each unarmed strike. This only work when fighting unarmed with no shield equiped.");
		public static const JabbingMaster:PerkType = mk("Jabbing Master", "Jabbing Master",
				"Double the damage bonus from Jabbing style. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Jabbing Master' perk. This double the damage bonus from Jabbing style. This only work when fighting unarmed with no shield equiped.");
		public static const JabbingStyle:PerkType = mk("Jabbing Style", "Jabbing Style",
				"Make each unarmed strike successive blow deadlier by striking the same area multiple times. Damage of each successful attack when full attacking increases exponentially by a percentage based on your speed (up to 25%). This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Jabbing Style' perk, wich makes each unarmed strike successive blow deadlier by striking the same area multiple times. Damage of each successful attack when full attacking increases exponentially by a percentage based on your speed (up to 10%). This only work when fighting unarmed with no shield equiped.");
		public static const JobAllRounder:PerkType = mk("Job: All-Rounder", "Job: All-Rounder",
				"You've combined all basic jobs training effects into an all-round fighting style. +10% to all stats",
				"You've chosen the 'Job: All-Rounder' perk, to combine effects of training in all eight basic jobs. +10% to all stats").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.10,'int.mult':0.10,'wis.mult':0.10,'lib.mult':0.10,'sens':6}, false);
		public static const JobBeastWarrior:PerkType = mk("Job: Beast Warrior", "Job: Beast Warrior",
				"You've trained to use of your own body and natural weapons to their limits in fights.",
				"You've chosen the 'Job: Beast Warrior' perk, training yourself in the art of feral combat.").withBuffs({'str.mult':0.05,'tou.mult':0.05,'spe.mult':0.05, "int.mult":-0.05, "wis.mult":-0.05,'maxwrath_base':+100});
		public static const JobBrawler:PerkType = mk("Job: Brawler", "Job: Brawler",
				"You've trained in unarmed combat.",
				"You've chosen the 'Job: Brawler' perk, training yourself to became Brawler.").withBuffs({'str.mult':0.10});
		public static const JobCourtesan:PerkType = mk("Job: Courtesan", "Job: Courtesan",
				"You've mastered all various uses of tease.",
				"You've chosen the 'Job: Courtesan' perk, training yourself to became Courtesan.").withBuffs({'lib.mult':0.15,'maxlust_base':+60});
		public static const JobDefender:PerkType = mk("Job: Defender", "Job: Defender",
				"You've trained in withstanding even the heaviest attacks head on.",
				"You've chosen the 'Job: Defender' perk, training yourself to became Defender.").withBuffs({'tou.mult':0.15});
		public static const JobDervish:PerkType = mk("Job: Dervish", "Job: Dervish",
				"You've trained in multi meele attacks combat and using of medium sized dual weapons.",
				"You've chosen the 'Job: Dervish' perk, training yourself to became Dervish.").withBuffs({'spe.mult':0.10,'maxwrath_base':+100});
		public static const JobElementalConjurer:PerkType = mk("Job: Elemental Conjurer", "Job: Elemental Conjurer",
				"You've trained in summoning various types of elementals.",
				"You've chosen the 'Job: Elemental Conjurer' perk, training yourself to call elementals.").withBuffs({'wis.mult':0.05});
		public static const JobEnchanter:PerkType = mk("Job: Enchanter", "Job: Enchanter",
				"You've trained in casting empowered buffs.",
				"You've chosen the 'Job: Enchanter' perk, training yourself to became Enchanter.").withBuffs({'int.mult':0.15});
		public static const JobEromancer:PerkType = mk("Job: Eromancer", "Job: Eromancer",
				"You've mastered the power of erotic magics.",
				"You've chosen the 'Job: Eromancer' perk, training yourself to became Eromancer.").withBuffs({'int.mult':0.05,'lib.mult':0.05});
		public static const JobGolemancer:PerkType = mk("Job: Golemancer", "Job: Golemancer",
				"You've mastered the art of making golems.",
				"You've chosen the 'Job: Golemancer' perk, training yourself to became golems maker.").withBuffs({'int.mult':0.05,'wis.mult':0.05});
		public static const JobGuardian:PerkType = mk("Job: Guardian", "Job: Guardian",
				"You've trained in defensive combat.",
				"You've chosen the 'Job: Guardian' perk, training yourself to became Guardian.").withBuffs({'tou.mult':0.05});
		public static const JobGunslinger:PerkType = mk("Job: Gunslinger", "Job: Gunslinger",
				"You've trained in ranged combat using firearms.",
				"You've chosen the 'Job: Gunslinger' perk, training yourself to became Gunslinger.").withBuffs({'wis.mult':0.10,'maxfatigue_base':10});
		public static const JobHealer:PerkType = mk("Job: Healer", "Job: Healer",
				"You've trained in using more effectively heal spells and effects.",
				"You've chosen the 'Job: Healer' perk, training yourself to became Healer.").withBuffs({'int.mult':0.05,'wis.mult':0.05});
		public static const JobHunter:PerkType = mk("Job: Hunter", "Job: Hunter",
				"You've trained in combat with traditional range weapons (like bows).",
				"You've chosen the 'Job: Hunter' perk, training yourself to became Hunter.").withBuffs({'spe.mult':0.10,'int.mult':0.05,'maxfatigue_base':50});
		public static const JobKnight:PerkType = mk("Job: Knight", "Job: Knight",
				"You've trained in combat using shields and heaviest armors.",
				"You've chosen the 'Job: Knight' perk, training yourself to became Knight.").withBuffs({'tou.mult':0.10});
		public static const JobLeader:PerkType = mk("Job: Leader", "Job: Leader",
				"You've trained in ways to better lead combat companions or command minions.",
				"You've chosen the 'Job: Leader' perk, training yourself to better lead your companions or command minions.").withBuffs({'int.mult':0.05,'wis.mult':0.05,'lib.mult':-0.05});
		public static const JobMonk:PerkType = mk("Job: Monk", "Job: Monk",
				"You've trained in unarmed combat.",
				"You've chosen the 'Job: Monk' perk, training yourself to became Monk.").withBuffs({'wis.mult':0.15});
		public static const JobRanger:PerkType = mk("Job: Ranger", "Job: Ranger",
				"You've trained in ranged combat.",
				"You've chosen the 'Job: Ranger' perk, training yourself to became Ranger.").withBuffs({'spe.mult':0.05,'maxfatigue_base':5});
		public static const JobRogue:PerkType = mk("Job: Rogue", "Job: Rogue",
				"You've trained in how to strike at your opponent's vital points and use various deadly tricks. (+5 to max str/spe - scalable)",
				"You've chosen the 'Job: Rogue' perk, training yourself to became Rogue.").withBuffs({'str.mult':0.05,'spe.mult':0.05});
		public static const JobSeducer:PerkType = mk("Job: Seducer", "Job: Seducer",
				"You've trained the art of seduction.",
				"You've chosen the 'Job: Seducer' perk, training yourself to became Seducer.").withBuffs({'lib.mult':0.05,'maxlust_base':+30});
		public static const JobSorcerer:PerkType = mk("Job: Sorcerer", "Job: Sorcerer",
				"You've trained in magic combat.",
				"You've chosen the 'Job: Sorcerer' perk, training yourself to became Sorcerer.").withBuffs({'int.mult':0.05});
		public static const JobSoulCultivator:PerkType = mk("Job: Soul Cultivator", "Job: Soul Cultivator",
				"You've cultivated powers of your soul.",
				"You've chosen the 'Job: Soul Cultivator' perk, starting journey of the soul cultivation path!").withBuffs({'wis.mult':0.05,'maxsf_base':+50});
		public static const JobSwordsman:PerkType = mk("Job: Swordsman", "Job: Swordsman",
				"You've trained in using large weapons in fights.",
				"You've chosen the 'Job: Swordsman' perk, training yourself to became Swordsman.").withBuffs({'str.mult':0.10,'maxwrath_base':+100});
		public static const JobWarlord:PerkType = mk("Job: Warlord", "Job: Warlord",
				"You've trained in combat against group of enemies.",
				"You've chosen the 'Job: Warlord' perk, training yourself to became Warlord.").withBuffs({'tou.mult':0.20,'maxwrath_base':+100});
		public static const JobWarrior:PerkType = mk("Job: Warrior", "Job: Warrior",
				"You've trained in melee combat.",
				"You've chosen the 'Job: Warrior' perk, training yourself to became Warrior.").withBuffs({'str.mult':0.05,'maxwrath_base':+50});
		public static const Juggernaut:PerkType = mk("Juggernaut", "Juggernaut",
				"When wearing heavy armor, you have extra 10% damage resistance and are immune to damage from being constricted/squeezed (req. 100+ tou).",
				"You've chosen the 'Juggernaut' perk, granting extra 10% damage resistance when wearing heavy armor and immunity to damage from been constricted/squeezed.");
		public static const LadyGodivasFavoriteChild:PerkType = mk("Lady Godiva's favorite Child", "Lady Godiva's favorite Child",
				"That's the source of your fortune not only are you her child but you're also her favorite. Gain 15% more gems from victories.",
				"You've chosen the 'Lady Godiva's favorite Child' perk, increasing gem gains from victories by 15%.");
		public static const Lazy:PerkType = mk("LAZY!!!", "LAZY!!!",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'LAZY!!!' perk, gaining +20% fatigue recovery rate.");
		public static const LegendaryBrawn:PerkType = mk("Legendary Brawn", "Legendary Brawn",
				"You have improved your striking power to epic level. (+30% to phantom Str bonus, +25% to unarmed atk)",
				"You've chosen the 'Legendary Brawn' perk, improving your striking power to epic level. (+30% to phantom Str bonus, +25% to unarmed atk)");
		public static const LegendaryBrute:PerkType = mk("Legendary Brute", "Legendary Brute",
				"You have improved your striking strength to epic level. (+100% of max core Str as phantom Str)",
				"You've chosen the 'Legendary Brute' perk, improving your striking strength to epic level. (+100% of max core Str as phantom Str)");
		public static const LegendaryDesensitization:PerkType = mk("Legendary Desensitization", "Legendary Desensitization",
				"Negative effects of sensitivity are reduced by 20%.",
				"You've chosen the 'Legendary Desensitization' perk, decreasing negative effects of sensitivity by 20%.");
		public static const LegendaryEndurance:PerkType = mk("Legendary Endurance", "Legendary Endurance",
				"Increases maximum fatigue by 10000.",
				"You've chosen the 'Legendary Endurance' perk. Thanks to your legendary physical conditioning, your maximum fatigue has been increased by 10000!")
				.withBuffs({'maxfatigue_base':+10000});
		public static const LegendaryGolemMaker:PerkType = mk("Legendary Golem Maker", "Legendary Golem Maker",
				"Your proficiency in making golems allows to make stronger golems with higher ranked upgrades. Also allow to make and store 1 improved steel golem.",
				"You've chosen the 'Legendary Golem Maker' perk, increasing your proficiency in making golems and quality of their upgrades. Also allow to make improved steel golems.").withBuffs({'int.mult':0.40,'wis.mult':0.40});
		public static const LegendaryGolemMaker2ndCircle:PerkType = mk("Legendary Golem Maker (2nd Circle)", "Legendary Golem Maker (2nd Circle)",
				"Your pernament golems mana efficiency is improved (20% less of mana used before adding effect of upgrades that can lower it even lower). Allow to store 1 more improved steel golem.",
				"You've chosen the 'Legendary Golem Maker (2nd Circle)' perk, increasing your golems mana efficiency. Allow to store additional improved steel golem.").withBuffs({'int.mult':0.50,'wis.mult':0.50});/*
		public static const LegendaryGolemMaker3rdCircle:PerkType = mk("Legendary Golem Maker (3rd Circle)", "Legendary Golem Maker (3rd Circle)",
				".",
				"You've chosen the 'Legendary Golem Maker (3rd Circle)' perk, .").withBuffs({'int.mult':0.60,'wis.mult':0.60});*/
		public static const MythicalGolemMaker:PerkType = mk("Mythical Golem Maker", "Mythical Golem Maker",
				".",
				"You've chosen the 'Mythical Golem Maker' perk, .").withBuffs({'int.mult':0.80,'wis.mult':0.80});/*
		public static const MythicalGolemMaker2ndCircle:PerkType = mk("Mythical Golem Maker (2nd Circle)", "Mythical Golem Maker (2nd Circle)",
				".",
				"You've chosen the 'Mythical Golem Maker (2nd Circle)' perk, .").withBuffs({'int.mult':1.00,'wis.mult':1.00});
		public static const MythicalGolemMaker3rdCircle:PerkType = mk("Mythical Golem Maker (3rd Circle)", "Mythical Golem Maker (3rd Circle)",
				".",
				"You've chosen the 'Mythical Golem Maker (3rd Circle)' perk, .").withBuffs({'int.mult':1.20,'wis.mult':1.20});*/
		public static const LegendaryIntelligence:PerkType = mk("Legendary Intelligence", "Legendary Intelligence",
				"",
				"You've chosen the 'Legendary Intelligence' perk.").withBuffs({'int.mult':0.50});
		public static const LegendaryLibido:PerkType = mk("Legendary Libido", "Legendary Libido",
				"",
				"You've chosen the 'Legendary Libido' perk.").withBuffs({'lib.mult':0.50});
		public static const LegendarySelfControl:PerkType = mk("Legendary Self-Control", "Legendary Self-Control",
				"Increases maximum lust by 15000.",
				"You've chosen the 'Legendary Self-Control' perk. Thanks to your legendary mental conditioning, your maximum lust has been increased by 15000!")
				.withBuffs({'maxlust_base':+15000});
		public static const LegendarySensitivity:PerkType = mk("Legendary Sensitivity", "Legendary Sensitivity",
				"",
				"You've chosen the 'Legendary Sensitivity' perk.").withBuffs({'sens':200});
		public static const LegendarySpeed:PerkType = mk("Legendary Speed", "Legendary Speed",
				"",
				"You've chosen the 'Legendary Speed' perk.").withBuffs({'spe.mult':0.50});
		public static const LegendarySpirituality:PerkType = mk("Legendary Spirituality", "Legendary Spirituality",
				"Increases maximum mana by 45000.",
				"You've chosen the 'Legendary Spirituality' perk. Thanks to your legendary mystical conditioning, your maximum mana has been increased by 45000!")
				.withBuffs({'maxmana_base':+45000});
		public static const LegendaryStrength:PerkType = mk("Legendary Strength", "Legendary Strength",
				"",
				"You've chosen the 'Legendary Strength' perk.").withBuffs({'str.mult':0.50});
		public static const LegendaryToughness:PerkType = mk("Legendary Toughness", "Legendary Toughness",
				"",
				"You've chosen the 'Legendary Toughness' perk.").withBuffs({'tou.mult':0.50});
		public static const LegendaryTranquilness:PerkType = mk("Legendary Tranquilness", "Legendary Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Legendary Tranquilness' perk. Thanks to your legendary anger managment training, your maximum wrath has been increased by 25000!")
				.withBuffs({'maxwrath_base':+25000});
		public static const LegendaryWisdom:PerkType = mk("Legendary Wisdom", "Legendary Wisdom",
				"",
				"You've chosen the 'Legendary Wisdom' perk.").withBuffs({'wis.mult':0.50});
		public static const Lifeline:PerkType = mk("Lifeline", "Lifeline",
				"Increases self healing by 90 out of combat and by 45 in combat (using defend option will double it).",
				"You've chosen the 'Lifeline' perk, increasing your self healing.");
		public static const LightningReload:PerkType = mk("Lightning Reload", "Lightning Reload",
				"Allow to reload in middle of shooting as long PC have enough fatigue for that without ending turn and decrease reload fatigue cost by 50%.",
				"You've chosen the 'Lightning Reload' perk, lowering even more time needed to reload with ammo range weapons like pistols and decrease reload fatigue cost by 50%.")
				.withBuffs({'maxfatigue_base':+60});
		public static const LightningStrikes:PerkType = mk("Lightning Strikes", "Lightning Strikes",
				"[if(player.spe>=60)" +
						"Increases the attack damage for non-heavy/non-small melee weapons.</b>" +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Lightning Strikes' perk, increasing the attack damage for non-heavy/non-small melee weapons.</b>");
		public static const LimitBreakerBody1stStage:PerkType = mk("Limit Breaker: Body (1st stage)", "Limit Breaker: Body (1st stage)",
				"Breaking your limits for 'body' for the first time grants you +5% max HP and Wrath.",
				"You've chosen the 'Limit Breaker: Body (1st stage)' perk, breaking your limits for 'body' for the first time. (+5% max HP and Wrath)")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const LimitBreakerFlesh1stStage:PerkType = mk("Limit Breaker: Flesh (1st stage)", "Limit Breaker: Flesh (1st stage)",
				"Breaking your limits for 'flesh' for the first time.",
				"You've chosen the 'Limit Breaker: Flesh (1st stage)' perk, breaking your limits for 'flesh' for the first time.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.10});
		public static const LimitBreakerHeart1stStage:PerkType = mk("Limit Breaker: Heart (1st stage)", "Limit Breaker: Heart (1st stage)",
				"Breaking your limits for 'heart' for the first time grants you +5% max Lust and Fatigue.",
				"You've chosen the 'Limit Breaker: Heart (1st stage)' perk, breaking your limits for 'heart' for the first time. (+5% max Lust and Fatigue)")
				.withBuffs({'maxfatigue_mult':+0.05,'maxlust_mult':+0.05});
		public static const LimitBreakerPsyche1stStage:PerkType = mk("Limit Breaker: Psyche (1st stage)", "Limit Breaker: Psyche (1st stage)",
				"Breaking your limits for 'psyche' for the first time.",
				"You've chosen the 'Limit Breaker: Psyche (1st stage)' perk, breaking your limits for 'psyche' for the first time.").withBuffs({'int.mult':0.10,'wis.mult':0.10,'lib.mult':0.10,'sens':10});
		public static const LimitBreakerSoul1stStage:PerkType = mk("Limit Breaker: Soul (1st stage)", "Limit Breaker: Soul (1st stage)",
				"Breaking your limits for 'soul' for the first time grants you +5% max Mana and Soulforce.",
				"You've chosen the 'Limit Breaker: Soul (1st stage)' perk, breaking your limits for 'soul' for the first time. (+5% max Mana and Soulforce)")
				.withBuffs({'maxmana_mult':+0.05,'maxsf_mult':+0.05});
		public static const LimitBreakerBody2ndStage:PerkType = mk("Limit Breaker: Body (2nd stage)", "Limit Breaker: Body (2nd stage)",
				"Breaking your limits for 'body' for the second time grants you +10% max HP and Wrath.",
				"You've chosen the 'Limit Breaker: Body (2nd stage)' perk, breaking your limits for 'body' for the second time. (+10% max HP and Wrath)")
				.withBuffs({'maxwrath_mult':+0.10,'maxsf_mult':+0.10});
		public static const LimitBreakerFlesh2ndStage:PerkType = mk("Limit Breaker: Flesh (2nd stage)", "Limit Breaker: Flesh (2nd stage)",
				"Breaking your limits for 'flesh' for the second time.",
				"You've chosen the 'Limit Breaker: Flesh (2nd stage)' perk, breaking your limits for 'flesh' for the second time.").withBuffs({'str.mult':0.20,'tou.mult':0.20,'spe.mult':0.20});
		public static const LimitBreakerHeart2ndStage:PerkType = mk("Limit Breaker: Heart (2nd stage)", "Limit Breaker: Heart (2nd stage)",
				"Breaking your limits for 'heart' for the second time grants you +10% max Lust and Fatigue.",
				"You've chosen the 'Limit Breaker: Heart (2nd stage)' perk, breaking your limits for 'heart' for the second time. (+10% max Lust and Fatigue)")
				.withBuffs({'maxfatigue_mult':+0.1,'maxlust_mult':+0.1});
		public static const LimitBreakerPsyche2ndStage:PerkType = mk("Limit Breaker: Psyche (2nd stage)", "Limit Breaker: Psyche (2nd stage)",
				"Breaking your limits for 'psyche' for the second time.",
				"You've chosen the 'Limit Breaker: Psyche (2nd stage)' perk, breaking your limits for 'psyche' for the second time.").withBuffs({'int.mult':0.20,'wis.mult':0.20,'lib.mult':0.20,'sens':20});
		public static const LimitBreakerSoul2ndStage:PerkType = mk("Limit Breaker: Soul (2nd stage)", "Limit Breaker: Soul (2nd stage)",
				"Breaking your limits for 'soul' for the second time grants you +10% max Mana and Soulforce.",
				"You've chosen the 'Limit Breaker: Soul (2nd stage)' perk, breaking your limits for 'soul' for the second time. (+10% max Mana and Soulforce)")
				.withBuffs({'maxmana_mult':+0.1});
		public static const LongerLastingBuffsI:PerkType = mk("Long(er) Lasting Buffs I", "Long(er) Lasting Buffs I",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs I' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const LongerLastingBuffsII:PerkType = mk("Long(er) Lasting Buffs II", "Long(er) Lasting Buffs II",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs II' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const LongerLastingBuffsIII:PerkType = mk("Long(er) Lasting Buffs III", "Long(er) Lasting Buffs III",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs III' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const LongerLastingBuffsIV:PerkType = mk("Long(er) Lasting Buffs IV", "Long(er) Lasting Buffs IV",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs IV' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const LongerLastingBuffsV:PerkType = mk("Long(er) Lasting Buffs V", "Long(er) Lasting Buffs V",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs V' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const LongerLastingBuffsVI:PerkType = mk("Long(er) Lasting Buffs VI", "Long(er) Lasting Buffs VI",
				"Buff spells last 1 turn longer.",
				"You've chosen the 'Long(er) Lasting Buffs VI' perk. Constant use of buffs allowed you to optimize them a little bit.");
		public static const Lucky:PerkType = mk("Lucky", "Lucky",
				"You just happen to stumble across money where ever you go, increasing the money gained upon victory. (15% more gems from victories)",
				"You've chosen the 'Lucky' perk, increasing gem gains from victories by 15%.");
		public static const LungingAttacks:PerkType = mk("Lunging Attacks", "Lunging Attacks",
				"[if(player.spe>=75)" +
						"Grants 50% armor penetration for standard attacks." +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Lunging Attacks' perk, granting 50% armor penetration for standard attacks.");
		public static const LyingDown:PerkType = mk("Lying Down", "Lying Down",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'Lying Down' perk, gaining +20% fatigue recovery rate.");
		public static const Mage:PerkType = mk("Mage", "Mage",
				"[if (player.inte>=50)" +
						"Increases base spell strength by 10%, mana pool by 90 and lust bar by 15." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Mage' perk.  You are able to focus your magical abilities even more keenly, boosting your base spell effects by 10%, mana pool by 90 and lust bar by 15.")
				.withBuffs({'maxlust_base':+15});
		public static const MagicMetabolism:PerkType = mk("Magic Metabolism", "Magic Metabolism",
				"When your hunger level go down below 50, you start loosing mana (5:1 ratio for mana:hunger decay) instead of hunger when it should happen. If your mana is empty, hunger works as usual.",
				"You've chosen the 'Magic Metabolism' perk. If PC have enough mana can use it as way to keep hunger around 50 pts.");
		public static const MagiculesTheory:PerkType = mk("Magicules Theory", "Magicules Theory",
				"[if(player.wis>=50)" +
						"Increases magical critical hit chance by up to 10% (Wisdom-based)." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Magicules Theory' perk, increasing magical critical hit chance by up to 10% (Wisdom-based).");
		public static const MakeItDouble:PerkType = mk("Make it Double", "Make it Double",
				"Increased damage when using specials like Whirlwind/Whipping with dual weapons rather than single weapons.",
				"You've chosen the 'Make it Double' perk, allowing to make full use of dual weapons when using moves like whirlwind or whipping.");
		public static const ManaAffinityI:PerkType = mk("Mana Affinity I", "Mana Affinity I",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity I' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const ManaAffinityII:PerkType = mk("Mana Affinity II", "Mana Affinity II",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity II' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const ManaAffinityIII:PerkType = mk("Mana Affinity III", "Mana Affinity III",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity III' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const ManaAffinityIV:PerkType = mk("Mana Affinity IV", "Mana Affinity IV",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity IV' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const ManaAffinityV:PerkType = mk("Mana Affinity V", "Mana Affinity V",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity V' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const ManaAffinityVI:PerkType = mk("Mana Affinity VI", "Mana Affinity VI",
				"Raises max mana by 3% of base value and regain it 25% faster.",
				"You've chosen the 'Mana Affinity VI' perk, giving you an additional 3% of base value mana and boosting it recovery rate.")
				.withBuffs({'maxmana_mult':+0.03});
		public static const Manyshot:PerkType = mk("Manyshot", "Manyshot",
				"You always shoot two arrows instead of one on your first strike.",
				"You've chosen the 'Manyshot' perk, to always shoot two arrows instead of one on your first strike.");
		public static const MarkedForDeath:PerkType = mk("Marked for death", "Marked for death",
				"You can now use sneak attack with ranged weapon. (bows and snipper firearms)",
				"You've chosen the 'Marked for death' perk. You can now use sneak attack with ranged weapon. (bows and snipper firearms)");
		public static const Masochist:PerkType = mk("Masochist", "Masochist",
				"Take 20% less physical damage but gain lust when you take damage.",
				"You've chosen the 'Masochist' perk, reducing the damage you take but raising your lust each time!  This perk only functions while your libido is at or above 60!");
		public static const MasterAllRounderEducation:PerkType = mk("Master All-Rounder Education", "Master All-Rounder Education",
				"Limit of advanced job you can learn is increased by 3.",
				"You've chosen the 'Master All-Rounder Education' perk, expanding amount of advanced jobs you can learn. (+3)");
		public static const MasterCrinosShape:PerkType = mk("Master Crinos Shape", "Master Crinos Shape",
				"Crinos Shape increase to physical might rise to 160% of core str/tou/spe.",
				"You've chosen the 'Master Crinos Shape' perk, once again increasing boost gained in Crinos Shape (+160%).")
				.withBuffs({'maxwrath_base':+800});
		public static const MasteredDefenceStance:PerkType = mk("Mastered Defence Stance", "Mastered Defence Stance",
				"Defend move now futher reduce incoming damage and allow for slight improved fatigue/mana/soulforce recovery.",
				"You've chosen the 'Mastered Defence Stance' perk, finally attaining mastery with your defence pose.");
		public static const MasterGolemMaker:PerkType = mk("Master Golem Maker", "Master Golem Maker",
				"Your proficiency in making golems allows to make permanent golems that will not longer shatter after one attack. Allows to store one such golem in golem bag. Storing more temporal golems/golem cores and increase their dmg scaling up on current int/wis.",
				"You've chosen the 'Master Golem Maker' perk, increasing your proficiency in making golems.");
		public static const MasterGunslinger:PerkType = mk("Master Gunslinger", "Master Gunslinger",
				"Gain an extra firearm attack per turn (4th one).",
				"You've chosen the 'Master Gunslinger' perk, gaining an extra firearm attack per turn.");
		public static const Medic:PerkType = mk("MEDIC!!!", "MEDIC!!!",
				"You stole someone's skeleton from them, and nobody noticed until the patient woke up. While your doctor's license may be revoked, you are still the best medic in the world, increasing your health regen... now if only Heavy would stop screaming at you.",
				"You've chosen the 'MEDIC!!!' perk, increasing HP gains by 20%.");
		public static const Medicine:PerkType = mk("Medicine", "Medicine",
				"Grants 15% chance per round of cleansing poisons/drugs from your body. Increases HP restoration on rest.",
				"You've chosen the 'Medicine' perk, giving you a chance to remove debilitating poisons automatically! Also, increases HP restoration on rest.");
		public static const MelkieSong:PerkType = mk("Melkie Song", "Melkie Song",
				"Your voice is supernaturaly enhanced and may be used during battle to arouse foes.");
		public static const Metamorph:MetamorphPerk = new MetamorphPerk();
		public static const MetamorphEx:PerkType = mk("Metamorph (Ex)", "Metamorph (Ex)",
				"Mold your own body even further than before using genetic memory and soulforce.",
				"You've chosen the 'Metamorph (Ex)' perk, giving you a more options to mold your own body.");
		public static const Metamorphable:PerkType = mk("Metamorphable", "Metamorphable",
				"You can manipulate your soul force to change your body... but this increases your soul force by 10%.",
				"You've chosen the 'Metamorphable' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const MeteorStrike:PerkType = mk("Meteor Strike", "Meteor Strike",
				"Double the chance for Jabbing grandmaster to do extra attacks and doubling the damage from grabbing style. This only work when fighting unarmed with no shield equiped.",
				"You've chosen the 'Meteor Strike' perk, doubling the chance for Jabbing grandmaster to do extra attacks and doubling the damage from grabbing style. This only work when fighting unarmed with no shield equiped.");
		public static const MindOfSteel:PerkType = mk("Mind of Steel", "Mind of Steel",
				"Careful now, you're becoming too much like a weapon. You're mindset has become that of a weapon, allowing you to connect with your melee weapon to deal even more damage. (+10% melee phys dmg)",
				"You've chosen the 'Mind of Steel' perk, gaining +10% melee phys dmg.");
		public static const MindOverBodyI:PerkType = mk("Mind over Body I", "Mind over Body I",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body I' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MindOverBodyII:PerkType = mk("Mind over Body II", "Mind over Body II",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body II' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MindOverBodyIII:PerkType = mk("Mind over Body III", "Mind over Body III",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body III' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MindOverBodyIV:PerkType = mk("Mind over Body IV", "Mind over Body IV",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body IV' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MindOverBodyV:PerkType = mk("Mind over Body V", "Mind over Body V",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body V' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MindOverBodyVI:PerkType = mk("Mind over Body VI", "Mind over Body VI",
				"+6 extra mana per point of intelligence.",
				"You've chosen the 'Mind over Body VI' perk, granting +6 extra maximum mana for each point of intelligence.")
				.withBuffs({'maxmana_perint':+6});
		public static const MoneyFinder:PerkType = mk("Money Finder", "Money Finder",
				"Some people get all the luck it seems... Shut up and take our money is what all enemies scream at you upon defeat, increasing your gains on victory. (15% more gems from victories)",
				"You've chosen the 'Money Finder' perk, increasing gem gains from victories by 15%.");
		public static const Motivation:PerkType = mk("Motivation", "Motivation",
				"Decrease to 20% henchmans idle time during combat. Increase dmg dealt by ~50%.",
				"You've chosen the 'Motivation' perk. Decrease to 10% henchmans idle time during combat. Increase dmg dealt by ~50%.");
		public static const MotivationEx:PerkType = mk("Motivation (Ex)", "Motivation (Ex)",
				"Decrease to 1% henchmans idle time during combat. Increase dmg dealt by ~50% each time you reach specific level treshold (up to 4 times).",
				"You've chosen the 'Motivation (Ex)' perk. Increase dmg dealt by ~50% each time you reach specific level treshold (up to 4 times).");
		public static const MotivationSu:PerkType = mk("Motivation (Su)", "Motivation (Su)",
				"All henchman do two actions in their turn and increase power of their attacks by 150% of currently boost provided by previous Motivcation perks.",
				"You've chosen the 'Motivation (Su)' perk. All henchman do two actions in their turn and increase power of their attacks by 150% of currently boost provided by previous Motivcation perks.");
		public static const MultiClawAttack:PerkType = mk("Multi Claw Attack", "Multi Claw Attack",
				"When attacking with your natural weapons, add an additional attack striking up to 4 times.",
				"You've chosen the 'Multi Claw Attack' perk, gaining an additional attack with your natural weapons!")
				.withBuffs({'maxwrath_base':+200});
		public static const Multishot:PerkType = mk("Multishot", "Multishot",
				"Allows you to perform additional range attack per round.",
				"You've chosen the 'Multishot' perk, This allows you to make additional range attack.");
		public static const MusclesOfSteel:PerkType = mk("Muscles of Steel", "Muscles of Steel",
				"Your body has further adapted to fighting, strengthening your muscles so that they too possess the power of steel to further your melee power. (+10% melee phys dmg)",
				"You've chosen the 'Muscles of Steel' perk, gaining +10% melee phys dmg.");
		public static const MythicalBrawn:PerkType = mk("Mythical Brawn", "Mythical Brawn",
				"You have improved your striking power to epic level. (+35% to phantom Str bonus, +30% to unarmed atk)",
				"You've chosen the 'Mythical Brawn' perk, improving your striking power to epic level. (+35% to phantom Str bonus, +30% to unarmed atk)");
		public static const MythicalBrute:PerkType = mk("Mythical Brute", "Mythical Brute",
				"You have improved your striking strength to epic level. (+120% of max core Str as phantom Str)",
				"You've chosen the 'Mythical Brute' perk, improving your striking strength to epic level. (+120% of max core Str as phantom Str)");
		public static const MythicalDesensitization:PerkType = mk("Mythical Desensitization", "Mythical Desensitization",
				"Negative effects of sensitivity are reduced by 25%.",
				"You've chosen the 'Mythical Desensitization' perk, decreasing negative effects of sensitivity by 25%.");
		public static const MythicalEndurance:PerkType = mk("Mythical Endurance", "Mythical Endurance",
				"Increases maximum fatigue by 20000.",
				"You've chosen the 'Mythical Endurance' perk. Thanks to your mythical physical conditioning, your maximum fatigue has been increased by 20000!")
				.withBuffs({'maxfatigue_base':+20000});
		public static const MythicalIntelligence:PerkType = mk("Mythical Intelligence", "Mythical Intelligence",
				"",
				"You've chosen the 'Mythical Intelligence' perk.").withBuffs({'int.mult':0.65});
		public static const MythicalLibido:PerkType = mk("Mythical Libido", "Mythical Libido",
				"",
				"You've chosen the 'Mythical Libido' perk.").withBuffs({'lib.mult':0.65});
		public static const MythicalSelfControl:PerkType = mk("Mythical Self-Control", "Mythical Self-Control",
				"Increases maximum lust by 30000.",
				"You've chosen the 'Mythical Self-Control' perk. Thanks to your mythical mental conditioning, your maximum lust has been increased by 30000!")
				.withBuffs({'maxlust_base':+30000});
		public static const MythicalSensitivity:PerkType = mk("Mythical Sensitivity", "Mythical Sensitivity",
				"",
				"You've chosen the 'Mythical Sensitivity' perk.").withBuffs({'sens':260});
		public static const MythicalSpeed:PerkType = mk("Mythical Speed", "Mythical Speed",
				"",
				"You've chosen the 'Mythical Speed' perk.").withBuffs({'spe.mult':0.65});
		public static const MythicalSpirituality:PerkType = mk("Mythical Spirituality", "Mythical Spirituality",
				"Increases maximum mana by 90000.",
				"You've chosen the 'Mythical Spirituality' perk. Thanks to your mythical mystical conditioning, your maximum mana has been increased by 90000!")
				.withBuffs({'maxmana_base':+90000});
		public static const MythicalStrength:PerkType = mk("Mythical Strength", "Mythical Strength",
				"",
				"You've chosen the 'Mythical Strength' perk.").withBuffs({'str.mult':0.65});
		public static const MythicalToughness:PerkType = mk("Mythical Toughness", "Mythical Toughness",
				"",
				"You've chosen the 'Mythical Toughness' perk.").withBuffs({'tou.mult':0.65});
		public static const MythicalTranquilness:PerkType = mk("Mythical Tranquilness", "Mythical Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Mythical Tranquilness' perk. Thanks to your mythical anger managment training, your maximum wrath has been increased by 50000!")
				.withBuffs({'maxwrath_base':+50000});
		public static const MythicalWisdom:PerkType = mk("Mythical Wisdom", "Mythical Wisdom",
				"Increases maximum wisdom by 65 + 15 * NG tier.",
				"You've chosen the 'Mythical Wisdom' perk. Increases maximum wisdom by 65 + 15 * NG tier.").withBuffs({'wis.mult':0.65});
		public static const NakedTruth:PerkType = mk("Naked Truth", "Naked Truth",
				"Opponent have a hard time dealing serious damage as the sight of your naked body distract them (+10% dmg reduction).",
				"You've chosen the 'Naked Truth' perk, causing opponent have a hard time dealing serious damage as the sight of your naked body distract them.");
		public static const NamedBullet:PerkType = mk("Named Bullet", "Named Bullet",
				"Bosses fears your guns, add 50% increased damage to bosses.",
				"You've chosen the 'Named Bullet' perk, allowing for your guns deal extra damage to boss enemies.");
		public static const Napping:PerkType = mk("Napping", "Napping",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'Napping' perk, gaining +20% fatigue recovery rate.");
		public static const NaturalHealingEpic:PerkType = mk("Natural healing (Epic)", "Natural healing (Epic)",
				"Incease healing power by 50% and lower healing spells mana costs by 20%.",
				"You've chosen the 'Natural healing (Epic)' perk, increasing healing spells effectivnes and lowering their costs.");
		public static const NaturalHealingLegendary:PerkType = mk("Natural healing (Legendary)", "Natural healing (Legendary)",
				"Incease healing power by 60% and lower healing spells mana costs by 25%.",
				"You've chosen the 'Natural healing (Legendary)' perk, increasing healing spells effectivnes and lowering their costs.");
		public static const NaturalHealingMajor:PerkType = mk("Natural healing (Major)", "Natural healing (Major)",
				"Incease healing power by 40% and lower healing spells mana costs by 15%.",
				"You've chosen the 'Natural healing (Major)' perk, increasing healing spells effectivnes and lowering their costs.");
		public static const NaturalHealingMinor:PerkType = mk("Natural healing (Minor)", "Natural healing (Minor)",
				"Incease healing power by 30% and lower healing spells mana costs by 10%.",
				"You've chosen the 'Natural healing (Minor)' perk, increasing healing spells effectivnes and lowering their costs.");
		public static const Naturaljouster:PerkType = mk("Natural jouster", "Natural jouster",
				"Increase attack power of spears/lances when you attack once each turn and have taur/drider lower body or 2,5x higher speed if you not have one of this specific lower body types (60+ for taurs/drider and 150+ for others).",
				"You've chosen the 'Natural jouster' perk. As long you will have taur or drider lower body and attack once per turn your spear/lance attack power will be three time higher.");
		public static const NaturaljousterMastergrade:PerkType = mk("Natural jouster (Master grade)", "Natural jouster (Master grade)",
				"Increase attack power of spears/lances when you attack once each turn and have taur/drider lower body or 2,5x higher speed if you not have one of this specific lower body types (180+ for taurs/drider and 450+ for others).",
				"You've chosen the 'Natural jouster (Master grade)' perk. As long you will have taur or drider lower body and attack once per turn your spear/lance attack power will be five time higher.");
		public static const NaturesSpringI:PerkType = mk("Nature's Spring I", "Nature's Spring I",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring I' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const NaturesSpringII:PerkType = mk("Nature's Spring II", "Nature's Spring II",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring II' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const NaturesSpringIII:PerkType = mk("Nature's Spring III", "Nature's Spring III",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring III' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const NaturesSpringIV:PerkType = mk("Nature's Spring IV", "Nature's Spring IV",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring IV' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const NaturesSpringV:PerkType = mk("Nature's Spring V", "Nature's Spring V",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring V' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const NaturesSpringVI:PerkType = mk("Nature's Spring VI", "Nature's Spring VI",
				"Raises max fatigue by 20 and regain it 5% faster.",
				"You've chosen the 'Nature's Spring VI' perk, giving you an additional 20 fatigue and boosting your fatigue recovery rate.")
				.withBuffs({'maxfatigue_base':+20});
		public static const Nerd:PerkType = mk("NERD!!!", "NERD!!!",
				"Piccolo's words, not mine... but they are perfect for describing you. Increase max mana by 10%.",
				"You've chosen the 'NERD!!!' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const NonaAttackSmall:PerkType = mk("Nona Attack (Small)", "Nona Attack (Small)",
				"Allows you to perform nine melee attacks with small weapons per round.",
				"You've chosen the 'Nona Attack (Small)' perk. This allows you to make nine melee attacks with small weapons.");
		public static const Nurse:PerkType = mk("Nurse", "Nurse",
				"Constantly running around tending to the sick has made you better at taking care of yourself, increasing health regen.",
				"You've chosen the 'Nurse' perk, increasing HP gains by 20%.");
		public static const Nymphomania:PerkType = mk("Nymphomania", "Nymphomania",
				"Raises minimum lust by up to 30.",
				"You've chosen the 'Nymphomania' perk.  Due to the incredible amount of corruption you've been exposed to, you've begun to live in a state of minor constant arousal.  Your minimum lust will be increased by 30.");
		public static const OctaAttackSmall:PerkType = mk("Octa Attack (Small)", "Octa Attack (Small)",
				"Allows you to perform eight melee attacks with small weapons per round.",
				"You've chosen the 'Octa Attack (Small)' perk. This allows you to make eight melee attacks with small weapons.");
		public static const OniTyrantKimono:PerkType = mk("Oni Tyrant Kimono", "Oni Tyrant Kimono",
				"Increase rampage duration by 4 rounds and add +40% to melee physical damage.");
		public static const OniEnlightenedKimono:PerkType = mk("Oni Noble Kimono", "Oni Noble Kimono",
				"Increase rampage duration by 4 rounds and add +40% to melee physical damage.");
		public static const OniDrinkingJug:PerkType = mk("Oni enchanted drinking jug", "Oni enchanted drinking jug",
				"Grant an infinite supply of non transformative alcohol. Furthermore drunken power duration is doubled.");
		public static const Paramedic:PerkType = mk("Paramedic", "Paramedic",
				"Having been a part of the emergency team called out, you can handle working in high stress environments effectively, further increasing your health regen.",
				"You've chosen the 'Paramedic' perk, increasing HP gains by 20%.");
		public static const Parry:PerkType = mk("Parry", "Parry",
				"[if(player.spe>=50)" +
						"Increases deflect chance by up to 10% while wielding a weapon. (Speed-based)." +
						"|" +
						"<b>You are not fast enough to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Parry' perk, giving you a chance to deflect blow with your weapon. (Speed-based).");
		public static const Pastor:PerkType = mk("Pastor", "Pastor",
				"Congratulations! You went from sleeping during the sermon, to being the putting people to sleep with sermons! The sheer devotion to your faith lowers you minimum libido and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Pastor' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const PathOfEnlightenment:PerkType = mk("Path of Enlightenment", "Path of Enlightenment",
				"You walk a path of enlightenment... You should stop expecting anything other than the 10% more soulforce.",
				"You've chosen the 'Path of Enlightenment' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const PeerlessEndurance:PerkType = mk("Peerless Endurance", "Peerless Endurance",
				"Increases maximum fatigue by 1000.",
				"You've chosen the 'Peerless Endurance' perk. Thanks to your peerless physical conditioning, your maximum fatigue has been increased by 1000!</b>")
				.withBuffs({'maxfatigue_base':+1000});
		public static const PeerlessSelfControl:PerkType = mk("Peerless Self-Control", "Peerless Self-Control",
				"Increases maximum lust by 1500.",
				"You've chosen the 'Peerless Self-Control' perk. Thanks to your peerless mental conditioning, your maximum lust has been increased by 1500!</b>")
				.withBuffs({'maxlust_base':+1500});
		public static const PeerlessSpirituality:PerkType = mk("Peerless Spirituality", "Peerless Spirituality",
				"Increases maximum mana by 4500.",
				"You've chosen the 'Peerless Spirituality' perk. Thanks to your peerless mystical conditioning, your maximum mana has been increased by 4500!</b>")
				.withBuffs({'maxmana_base':+4500});
		public static const PeerlessTranquilness:PerkType = mk("Peerless Tranquilness", "Peerless Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Peerless Tranquilness' perk. Thanks to your peerless anger managment training, your maximum wrath has been increased by 2500!</b>")
				.withBuffs({'maxwrath_base':+2500});
		public static const PentaAttack:PerkType = mk("Penta Attack", "Penta Attack",
				"Allows you to perform five melee attacks with normal sized weapons per round.",
				"You've chosen the 'Penta Attack' perk.  This allows you to make five melee attacks with non-large weapons.")
				.withBuffs({'maxwrath_base':+50});
		public static const PentaAttackSmall:PerkType = mk("Penta Attack (Small)", "Penta Attack (Small)",
				"Allows you to perform five melee attacks with small weapons per round.",
				"You've chosen the 'Penta Attack (Small)' perk.  This allows you to make five melee attacks with small weapons.");
		public static const PerfectDefenceStance:PerkType = mk("Perfect Defence Stance", "Perfect Defence Stance",
				"Defend move now massively reduce incoming damage and allow for improved fatigue/mana/soulforce recovery.",
				"You've chosen the 'Perfect Defence Stance' perk, perfecting your defence pose beyond mastery level.");
		public static const Perfection:PerkType = mk("Perfection", "Perfection",
				"The ultimate stage of alchemy, you have perfected the art of making transformatives more effective. This is a level very few have reached +2% alchemy/mutagen boost.",
				"You've chosen the 'Perfection' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const PerfectStrike:PerkType = mk("Perfect strike", "Perfect strike",
				"When you strike (with puch/kick/soulblast) a stunned or frozen solid opponent you deal extra damage (50%).",
				"You've chosen the 'Perfect strike' perk, allowing to deal more damage to stunned or frozen solid enemeis with punch/kick type soulskills.");
		public static const PewWarmer:PerkType = mk("Pew Warmer", "Pew Warmer",
				"You attend mass, but have a small tendecy to sleep during the sermon... but hey, merely attending was enough to help lower your minimum libido and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Pew Warmer' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const PhantomStrike:PerkType = mk("Phantom Strike", "Phantom Strike",
				"Allows to attack twice with some P. Specials at double cost. (Wing Slap, Stone Claw, Tail Slam, Kick and few others)",
				"You've chosen the 'Phantom Strike' perk, allowing to attack twice with some P. Specials at double cost.");
		public static const Poisoning:PerkType = mk("Poisoning", "Poisoning",
				"By carefully collecting your venom you can apply poison to your small weapons.",
				"You've chosen the 'Poisoning' perk, allowing you to apply your own venom to small weapons.");
		public static const Pope:PerkType = mk("Pope", "Pope",
				"You are the most important mortal in your faith, the pinnacle of faith and devotion! Of course this means your minimum libido and lust resistance is as far as it will go! (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Pope' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const Pornstar:PerkType = mk("Pornstar", "Pornstar",
				"You are famous for your acts of sex, with many teenagers dreaming of having a chance with you. All the tips you learned help your tease damage by 15%.",
				"You've chosen the 'Pornstar' perk, gaining +15% tease dmg.");
		public static const PowerShot:PerkType = mk("Power Shot", "Power Shot",
				"Enable Power Shoot p. special. Add some of your strength (~40% of str scaling value) to bow damage.",
				"You've chosen the 'Power Shot' perk. Enable Power Shoot p. special. Add some of your strength (~40% of str scaling value) to bow damage.");
		public static const PowerSweep:PerkType = mk("Power Sweep", "Power Sweep",
				"Allows the use of whirlwind using one handed weapons at 75% of the normal effect. Large weapon gain a 25% bonus to whirlwind damage (Does not include fist).",
				"You've chosen the 'Power Sweep' perk.  This allows you to improve Whirlwind attack.");
		public static const PracticedShot:PerkType = mk("Practiced shot", "Practiced shot",
				"Increase traditional range weapons (like bows) base attack by 50%.",
				"You've chosen the 'Practiced shot' perk, increasing traditional range weapons base attack.");
		public static const Precision:PerkType = mk("Precision", "Precision",
				"Reduces enemy armor by 10. (Req's 25+ Intelligence)",
				"You've chosen the 'Precision' perk.  Thanks to your intelligence, you're now more adept at finding and striking an enemy's weak points, reducing their damage resistance from armor by 10.  If your intelligence ever drops below 25 you'll no longer be smart enough to benefit from this perk.");
		public static const President:PerkType = mk("President", "President",
				"You own the school board, controlling what classes are taught, further increasing max mana by 10%.",
				"You've chosen the 'President' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const PrestigeJobArcaneArcher:PerkType = mk("Prestige Job: Arcane Archer", "Prestige Job: Arcane Archer",
				"You've trained in prestige art of combining magic and arrows.",
				"You've chosen the 'Prestige Job: Arcane Archer' perk, training yourself to became Arcane Archer.").withBuffs({'spe.mult':0.55,'int.mult':0.65,'maxfatigue_base':600});
		public static const PrestigeJobArchpriest:PerkType = mk("Prestige Job: Arch-priest", "Prestige Job: Arch-priest",
				"You've trained in prestige art of divine magic. (+20% to white magic spellpower, -40% to black magic spellpower)",
				"You've chosen the 'Prestige Job: Arch-priest' perk, training yourself to became Arch-priest.").withBuffs({'tou.mult':0.45,'int.mult':0.75});
		public static const PrestigeJobBerserker:PerkType = mk("Prestige Job: Berserker", "Prestige Job: Berserker",
				"You've trained in prestige art of perfect mastery over all forms of berserking.",
				"You've chosen the 'Prestige Job: Berserker' perk, training yourself to became Berserker.").withBuffs({'str.mult':1.00,'tou.mult':0.20,'maxwrath_base':+1000});
		public static const PrestigeJobBindmaster:PerkType = mk("Prestige Job: Bindmaster", "Prestige Job: Bindmaster",
				"You've trained in prestige art of perfect mastery over all forms of binding.",
				"You've chosen the 'Prestige Job: Bindmaster' perk, training yourself to became Bindmaster.").withBuffs({'tou.mult':0.30,'lib.mult':0.90});
		public static const PrestigeJobDruid:PerkType = mk("Prestige Job: Druid", "Prestige Job: Druid",
				"You've trained in prestige art of fusing with elementals. (allow to fuse with one of four basic epic elementals)",
				"You've chosen the 'Prestige Job: Druid' perk, training yourself to became Druid.").withBuffs({'tou.mult':0.50,'wis.mult':0.70});
		public static const PrestigeJobNecromancer:PerkType = mk("Prestige Job: Necromancer", "Prestige Job: Necromancer",
				"You've trained in prestige art of mastery over animating bone constructs and using necromancer spells.",
				"You've chosen the 'Prestige Job: Necromancer' perk, training yourself to became Necromancer.").withBuffs({'tou.mult':0.30,'wis.mult':0.90});
		public static const PrestigeJobSeer:PerkType = mk("Prestige Job: Seer", "Prestige Job: Seer",
				"You've trained in prestige art of combining soulforce and magic.",
				"You've chosen the 'Prestige Job: Seer' perk, training yourself to became Seer.").withBuffs({'int.mult':0.75,'wis.mult':0.45,'maxsf_base':+500,'maxfatigue_base':+900});
		public static const PrestigeJobSentinel:PerkType = mk("Prestige Job: Sentinel", "Prestige Job: Sentinel",
				"You've trained in prestige art that brings 'tanking' to a whole new level.",
				"You've chosen the 'Prestige Job: Sentinel' perk, training yourself to became Sentinel.").withBuffs({'str.mult':0.20,'tou.mult':1.00});
		public static const PrestigeJobSoulArcher:PerkType = mk("Prestige Job: Soul Archer", "Prestige Job: Soul Archer",
				"You've trained in prestige art of combining soulforce and arrows.",
				"You've chosen the 'Prestige Job: Soul Archer' perk, training yourself to became Soul Archer.").withBuffs({'spe.mult':0.55,'wis.mult':0.65,'maxsf_base':+1000,'maxfatigue_base':150});
		public static const PrestigeJobSoulArtMaster:PerkType = mk("Prestige Job: Soul Art Master", "Prestige Job: Soul Art Master",
				"You've trained in prestige art of combine soulforce with physical attacks to various deadly effect.",
				"You've chosen the 'Prestige Job: Soul Art Master' perk, training yourself to became Soul Art Master.").withBuffs({'str.mult':0.50,'wis.mult':0.70});
		public static const PrestigeJobSpellKnight:PerkType = mk("Prestige Job: Spell-Knight", "Prestige Job: Spell-Knight",
				"You've trained in prestige art of combining swordplay and magic.",
				"You've chosen the 'Prestige Job: Spell-Knight' perk, training yourself to became Spell-Knight.").withBuffs({'str.mult':0.50,'int.mult':0.70});
		public static const PrestigeJobStalker:PerkType = mk("Prestige Job: Stalker", "Prestige Job: Stalker",
				"You've trained in prestige art of combining master survivalist and expert huntsman.",
				"You've chosen the 'Prestige Job: Stalker' perk, training yourself to became Stalker.").withBuffs({'str.mult':0.80,'spe.mult':0.40});
		public static const PrestigeJobTempest:PerkType = mk("Prestige Job: Tempest", "Prestige Job: Tempest",
				"You've trained in prestige art of dual wielding as you hack and slice through your opponents like a raging storm of steel.",
				"You've chosen the 'Prestige Job: Tempest' perk, training yourself to became Tempest.").withBuffs({'str.mult':0.30,'spe.mult':0.90,'maxwrath_base':+500});
		public static const PrestigeJobWarlock:PerkType = mk("Prestige Job: Warlock", "Prestige Job: Warlock",
				"You've trained in prestige art of hex magic. (+20% to black magic spellpower, -40% to white magic spellpower)",
				"You've chosen the 'Prestige Job: Warlock' perk, training yourself to became Warlock.").withBuffs({'int.mult':0.75,'lib.mult':0.45});
		public static const Priest:PerkType = mk("Priest", "Priest",
				"You now speak during mass, your words of wisdom empowering others and you to have a lower minimum libido and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Priest' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const PrimalFuryI:PerkType = mk("Primal Fury I", "Primal Fury I",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury I' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const PrimalFuryII:PerkType = mk("Primal Fury II", "Primal Fury II",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury II' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const PrimalFuryIII:PerkType = mk("Primal Fury III", "Primal Fury III",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury III' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const PrimalFuryIV:PerkType = mk("Primal Fury IV", "Primal Fury IV",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury IV' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const PrimalFuryV:PerkType = mk("Primal Fury V", "Primal Fury V",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury V' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const PrimalFuryVI:PerkType = mk("Primal Fury VI", "Primal Fury VI",
				"Raises max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.",
				"You've chosen the 'Primal Fury VI' perk, increasing max Wrath by 5%, generates 2 point of Wrath out of combat and double this amount during fight.")
				.withBuffs({'maxwrath_mult':+0.05});
		public static const Principle:PerkType = mk("Principle", "Principle",
				"You oversee the day to day actions inside the school, your studious nature increasing max mana by 10%.",
				"You've chosen the 'Principle' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const Professor:PerkType = mk("Professor", "Professor",
				"You're more important than the standard teacher, and your paycheck reflects that. You're hired for your knowledge which increases max mana by 10%.",
				"You've chosen the 'Professor' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const Prostitute:PerkType = mk("Prostitute", "Prostitute",
				"It's official, everyone knows to go to you for sex. You're still new to the business, but you learned some new tricks. (+15% tease dmg)",
				"You've chosen the 'Prostitute' perk, gaining +15% tease dmg.");
		public static const PurityElixir:PurityElixirPerk = new PurityElixirPerk();
		public static const PyrosFriend:PerkType = mk("Pyro's Friend", "Pyro's Friend",
				"Mmmphmm! (No idea what he? is trying to say... but same rules apply... +10% ranged damage buff)",
				"You've chosen the 'Pyro's Friend' perk, gaining +10% range phys dmg.");
		public static const QuadrupleAttack:PerkType = mk("Quadruple Attack", "Quadruple Attack",
				"Allows you to perform four melee attacks with normal sized weapons per round.",
				"You've chosen the 'Quadruple Attack' perk.  This allows you to make four melee attacks with non-large weapons.")
				.withBuffs({'maxwrath_base':+50});
		public static const QuadrupleAttackSmall:PerkType = mk("Quadruple Attack (Small)", "Quadruple Attack (Small)",
				"Allows you to perform four melee attacks with small weapons per round.",
				"You've chosen the 'Quadruple Attack (Small)' perk.  This allows you to make four melee attacks with small weapons.");
		public static const QuickStrike:PerkType = mk("Quick Strike", "Quick Strike",
				"Add speed based scaling of melee attacks when using small weapon(s). It effect is added on top of Speed Demon perk boost.",
				"You've chosen the 'Quick Strike' perk, allowing you to use your speed when attacking with small melee weapons.");
		public static const RacialParagon:PerkType = mk("Racial Paragon", "Racial Paragon",
				"Add up to 1 to each stat per level and increase racial skill power by 50% but remove all chimerical disposition stat gains and degeneration as well lock you into a single race.",
				"You've chosen the 'Racial Paragon' perk, chosing to specialise into a specific race and increasing racial skill power by 50%.");
		public static const Rage:PerkType = mk("Rage", "Rage",
				"Increasing crit chance by up to 50% in berserk state that would reset after succesful crit attack.",
				"You've chosen the 'Rage' perk, increasing crit chance by up to 50% in berserk state until next crit attack.")
				.withBuffs({'maxwrath_base':+1500});
		public static const RagingInferno:PerkType = mk("Raging Inferno", "Raging Inferno",
				"Cumulative 20% damage increase for every subsequent fire spell. Each turn without casted fire spell lower damage by 20%.",
				"You've chosen the 'Raging Inferno' perk. Cumulative 20% damage increase for every subsequent fire spell. Each turn without casted fire spell lower damage by 20%.");
		public static const RagingInfernoEx:PerkType = mk("Raging Inferno (Ex)", "Raging Inferno (Ex)",
				"Increase to cumulative damage by 10%. Penalty for turn without casted fire spell decreased by 5%.",
				"You've chosen the 'Raging Inferno (Ex)' perk. Increase to cumulative damage by 10%. Penalty for turn without casted fire spell decreased by 5%.");
		public static const RagingInfernoSu:PerkType = mk("Raging Inferno (Su)", "Raging Inferno (Su)",
				"Prevent decay of cumulative damage increase bonus when channeling fire based attack. Penalty for turn without casted fire spell decreased by another 5%.",
				"You've chosen the 'Raging Inferno (Su)' perk. Prevent decay of cumulative damage increase bonus when channeling fire based attack. Penalty for turn without casted fire spell decreased by another 5%.");
		public static const RapidReload:PerkType = mk("Rapid Reload", "Rapid Reload",
				"Allow to not spend whole turn to use Reload button as long PC got enough fatigue.",
				"You've chosen the 'Rapid Reload' perk, lowering time needed to reload ammo for range weapons like pistols.")
				.withBuffs({'maxfatigue_base':+20});
		public static const RecoveryMantra:PerkType = mk("Recovery mantra", "Recovery mantra",
				"Gain soulforce recovery equal to 2% of your total soulforce.",
				"You've chosen the 'Recovery mantra' perk, gaining soulfroce recovery rate equal to 2% of your total soulforce.");
		public static const RecuperationSleep:PerkType = mk("Recuperation Sleep", "Recuperation Sleep",
				"Gain +100% boost to health and fatigue recovery during sleep.",
				"You've chosen the 'Recuperation Sleep' perk, boosting your health and fatigue recovery rate while sleeping!");
		public static const RefinedBodyI:PerkType = mk("Refined Body I", "Refined Body I",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body I' perk, giving you an additional 5% to base HP!");
		public static const RefinedBodyII:PerkType = mk("Refined Body II", "Refined Body II",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body II' perk, giving you an additional 5% to base HP!");
		public static const RefinedBodyIII:PerkType = mk("Refined Body III", "Refined Body III",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body III' perk, giving you an additional 5% to base HP!");
		public static const RefinedBodyIV:PerkType = mk("Refined Body IV", "Refined Body IV",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body IV' perk, giving you an additional 5% to base HP!");
		public static const RefinedBodyV:PerkType = mk("Refined Body V", "Refined Body V",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body V' perk, giving you an additional 5% to base HP!");
		public static const RefinedBodyVI:PerkType = mk("Refined Body VI", "Refined Body VI",
				"Raises max HP by 5% of base value.",
				"You've chosen the 'Refined Body VI' perk, giving you an additional 5% to base HP!");
		public static const Refinement:PerkType = mk("Refinement", "Refinement",
				"Using your acquired knowledge, you refine each item to increase its effects on your body, further increasing the changes +2% alchemy/mutagen boost.",
				"You've chosen the 'Refinement' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const Regeneration:RegenerationPerk = new RegenerationPerk();
		public static const Regeneration2:Regeneration2Perk = new Regeneration2Perk();
		public static const Regeneration3:Regeneration3Perk = new Regeneration3Perk();
		public static const Regeneration4:Regeneration4Perk = new Regeneration4Perk();
		public static const Regeneration5:Regeneration5Perk = new Regeneration5Perk();
		public static const Regeneration6:Regeneration6Perk = new Regeneration6Perk();
		public static const RejuvenationSleep:PerkType = mk("Rejuvenation Sleep", "Rejuvenation Sleep",
				"Gain +200% boost to health and fatigue recovery during sleep.",
				"You've chosen the 'Rejuvenation Sleep' perk, boosting your health and fatigue recovery rate while sleeping!");
		public static const ResistanceI:PerkType = mk("Resistance I", "Resistance I",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance I' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceII:PerkType = mk("Resistance II", "Resistance II",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance II' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceIII:PerkType = mk("Resistance III", "Resistance III",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance III' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceIV:PerkType = mk("Resistance IV", "Resistance IV",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance IV' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceV:PerkType = mk("Resistance V", "Resistance V",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance V' perk, reducing the rate at which your lust increases by 5%.");
		public static const ResistanceVI:PerkType = mk("Resistance VI", "Resistance VI",
				"Reduces lust gain by 5%.",
				"You've chosen the 'Resistance VI' perk, reducing the rate at which your lust increases by 5%.");
		public static const Resolute:PerkType = mk("Resolute", "Resolute",
				"[if(player.tou>=75)" +
						"Grants immunity to stuns and some statuses.</b>" +
						"|" +
						"<b>You aren't tough enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Resolute' perk, granting immunity to stuns and some statuses.</b>");
		public static const Runner:PerkType = mk("Runner", "Runner",
				"Increases chances of escaping combat.",
				"You've chosen the 'Runner' perk, increasing your chances to escape from your foes when fleeing!");
		public static const Sadist:PerkType = mk("Sadist", "Sadist",
				"Deal 20% more damage, but gain lust at the same time.",
				"You've chosen the 'Sadist' perk, increasing damage by 20 percent but causing you to gain lust from dealing damage.");
		public static const Saint:PerkType = mk("Saint", "Saint",
				"You go on periodic journeys to spread your faith and help those in need. These constant pilgrimages decrease your minimum libido and boost lust resistance. (-2 min libido/+5% to lust resistance)",
				"You've chosen the 'Saint' perk, lowering min libido by 2 and rise lust resistance by 5%.");
		public static const Saturation:PerkType = mk("Saturation", "Saturation",
				"Using your advanced knowledge, you soak each transformative in a special liquid to enhance their effects +2% alchemy/mutagen boost.",
				"You've chosen the 'Saturation' perk, number of possible effects of transformatives +2% alchemy/mutagen boost.");
		public static const ScyllaInkGlands:PerkType = mk("Scylla Ink Glands", "Scylla Ink Glands",
				"Your Scylla Ink Glands increase rate at which your body produce ink and slight boost to your natural strength.",
				"You've chosen the 'Scylla Ink Glands' perk, due to repeadly use of ink attack leading to denveloping ink glands!").withBuffs({'str.mult':0.10});
		public static const ScyllaInkGlandsEvolved:PerkType = mk("Scylla Ink Glands (Evolved)", "Scylla Ink Glands (Evolved)",
				"WiP perk.",
				"You've chosen the 'Scylla Ink Glands (Evolved)' perk, WiP perk!");
		public static const SecondRing:PerkType = mk("Second Ring", "Second Ring",
				"Your basic understanding of magic pools allows you to equip second ring.",
				"You've chosen the 'Second Ring' perk, reaching basic understanding of magic pools to allow you equip second ring.");
		public static const SecondWind:PerkType = mk("Second Wind", "Second Wind",
				"Using half remaining fatigue increase by 5% regeneration in combat for 10 turns.",
				"You've chosen the 'Second Wind' perk, allowing to once per fight increase for few turns natural regeneration at cost of some fatigue.");
		public static const Seduction:PerkType = mk("Seduction", "Seduction",
				"Upgrades your tease attack, making it more effective.",
				"You've chosen the 'Seduction' perk, upgrading the 'tease' attack with a more powerful damage and a higher chance of success.");
		public static const Sensual:PerkType = mk("Sensual", "Sensual",
				"Lowering by ~40% needed exp to lvl-up tease and +1 more tease exp after succes.",
				"You've chosen the 'Sensual' perk, lowering by ~40% needed exp to lvl-up tease and +1 more tease exp after succes.");
		public static const SexChampion:PerkType = mk("Sex Champion", "Sex Champion",
				"You are the shining symbol of the sex industry, the beacon of hope for those aspiring in the industry. The sheer number of tricks and tips you have up your tease damage 15%.",
				"You've chosen the 'Sex Champion' perk, gaining +15% tease dmg.");
		public static const SexDeity:PerkType = mk("Sex Deity", "Sex Deity",
				"Screw Xeria, you're the true sex deity! You're holiness empowers your sex drive, increasing your tease damage by 15%.",
				"You've chosen the 'Sex Deity' perk, gaining +15% tease dmg.");
		public static const Sharpshooter:PerkType = mk("Sharpshooter", "Sharpshooter",
				"Allow to increase non-bow range weapons attack up to 200% (Intelligence-based).",
				"You've chosen the 'Sharpshooter' perk, allowing to slightly increase non-bow range weapons attack.");
		public static const ShieldCombat:PerkType = mk("Shield Combat", "Shield Combat",
				"When you block an attack riposte with a shield bash (need to wear shield allowing to use this move) damaging your opponent. Also minimaly improve block chance.",
				"You've chosen the 'Shield Combat' perk, allowing to riposte with a shield bash when you block an attack. Also minimaly improve block chance.");
		public static const ShieldExpertise:PerkType = mk("Shield Expertise", "Shield Expertise",
				"When you wearing a shield (one that allow use of shield bash) add quarter of block value to your armor (at least 1).",
				"You've chosen the 'Shield Expertise' perk, allowing to increase you armor when using shield.");
		public static const ShieldGrandmastery:PerkType = mk("Shield Grandmastery", "Shield Grandmastery",
				"[if(player.tou>=100)" +
						"Increases block chance by up to 10% while using a shield (one that allow use of shield bash / Toughness-based) and lowering by 50% wrath cost." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Shield Grandmastery' perk, lowering wrath cost and increasing block chance as long as you're wielding a shield (Toughness-based).");
		public static const ShieldHarmony:PerkType = mk("Shield Harmony", "Shield Harmony",
				"[if(player.tou>=100)" +
						"When you using shield (one that allow use of shield bash) and isn't stunned, you gain 10% phys damage reduction." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Shield Harmony' perk, allowing to reduce recived phys damage when using shield.");
		public static const ShieldMastery:PerkType = mk("Shield Mastery", "Shield Mastery",
				"[if(player.tou>=50)" +
						"Increases block chance by up to 10% while using a shield (one that allow use of shield bash /Toughness-based)." +
						"|" +
						"<b>You are not durable enough to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Shield Mastery' perk, increasing block chance by up to 10% as long as you're wielding a shield (Toughness-based).");
		public static const ShieldSlam:PerkType = mk("Shield Slam", "Shield Slam",
				"Reduces shield bash diminishing returns by 50% and increases bash damage by 20%.",
				"You've chosen the 'Shield Slam' perk.  Stun diminishing returns is reduced by 50% and shield bash damage is increased by 20%.");
		public static const ShieldWard:PerkType = mk("Shield Ward", "Shield Ward",
				"When you wearing a shield (one that allow use of shield bash) lower chance to be knocked back or disarmed by enemy attacks.",
				"You've chosen the 'Shield Ward' perk, allowing to lower chance to be knocked back or disarmed when using shield.");
		public static const ShitYouTouchedSasha:PerkType = mk("SHIT YOU TOUCHED SASHA!!!", "SHIT YOU TOUCHED SASHA!!!",
				"DIE!!! (You're fucked... not even this final +10% ranged damage buff will save your sorry ass...)",
				"You've chosen the 'SHIT YOU TOUCHED SASHA!!!' perk, gaining +10% range phys dmg.");
		public static const ShootTheLoadAndHitTheRoad:PerkType = mk("Shoot the load and hit the road", "Shoot the load and hit the road",
				"Removes penalty to libido and boost slightly speed. (+5 to max spe - scalable).",
				"You've chosen the 'Shoot the load and hit the road' perk, removing penalty to libido and slight boosting speed.").withBuffs({'spe.mult':0.05,'lib.mult':0.05});
		public static const SkippingWork:PerkType = mk("Skipping Work", "Skipping Work",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'Skipping Work' perk, gaining +20% fatigue recovery rate.");
		public static const Slayer:PerkType = mk("Slayer", "Slayer",
				"Increase sneaky attack dmg by another 300% base value (7x).",
				"You've chosen the 'Slayer' perk. Increase sneaky attack dmg by another 300% base value (7x).");
		public static const SluttySimplicity:PerkType = mk("Slutty Simplicity", "Slutty Simplicity",
				"Increases by 10% tease effect when you are naked. (Undergarments won't disable this perk.)",
				"You've chosen the 'Slutty Simplicity' perk, granting increased tease effect when you are naked.");
		public static const SneakyAttack:PerkType = mk("Sneaky attack", "Sneaky attack",
				"Strike the vitals of a stunned, blinded or distracted opponent for heavy damage (2x).",
				"You've chosen the 'Sneaky attack' perk. Strike the vitals of a stunned, blinded or distracted opponent for heavy damage (2x).");
		public static const SnipersFriend:PerkType = mk("Sniper's Friend", "Sniper's Friend",
				"Angry Ausie Noises! (Did you understand him? Neither did I... be careful of the piss jars and get that +10% ranged damage buff!)",
				"You've chosen the 'Sniper's Friend' perk, gaining +10% range phys dmg.");
		public static const SoldiersFriend:PerkType = mk("Soldier's Friend", "Soldier's Friend",
				"Get out there ya commie! (Just go, don't argue with him and take a +10% ranged damage buff)",
				"You've chosen the 'Soldier's Friend' perk, gaining +10% range phys dmg.");
		public static const SoulAncestor:PerkType = mk("Soul Ancestor", "Soul Ancestor",
				"Allow reaching 12th stage of soul cultivation. (+35 max Hunger, +5 to max Wis, +140 max SF at lvl 72, 74, 76; +25% to max SF at lvl 72)",
				"You've chosen the 'Soul Ancestor' perk, reaching 12th stage of soul cultivation! (+35 max Hunger, +140 max SF at lvl 72, 74, 76; +25% to max SF at lvl 72)").withBuffs({'wis.mult':0.05});
		public static const SoulApprentice:PerkType = mk("Soul Apprentice", "Soul Apprentice",
				"Allow reaching 1st stage of soul cultivation. (+20 max Hunger, +5 to max Wis, +30 max SF at lvl 6, 8, 10; +10% to max SF at lvl 6)",
				"You've chosen the 'Soul Apprentice' perk, reaching 1st stage of soul cultivation! (+20 max Hunger, +30 max SF at lvl 6, 8, 10; +10% to max SF at lvl 6)").withBuffs({'wis.mult':0.05});
		public static const SoulEmperor:PerkType = mk("Soul Emperor", "Soul Emperor",
				"Allow reaching 11th stage of soul cultivation. (+35 max Hunger, +5 to max Wis, +130 max SF at lvl 66, 68, 70; +25% to max SF at lvl 66)",
				"You've chosen the 'Soul Emperor' perk, reaching 11th stage of soul cultivation! (+35 max Hunger, +130 max SF at lvl 66, 68, 70; +25% to max SF at lvl 66)").withBuffs({'wis.mult':0.05});
		public static const SoulElder:PerkType = mk("Soul Elder", "Soul Elder",
				"Allow reaching 6th stage of soul cultivation. (+25 max Hunger, +5 to max Wis, +80 max SF at lvl 36, 38, 40; +15% to max SF at lvl 36)",
				"You've chosen the 'Soul Elder' perk, reaching 6th stage of soul cultivation! (+25 max Hunger, +80 max SF at lvl 36, 38, 40; +15% to max SF at lvl 36)").withBuffs({'wis.mult':0.05});
		public static const SoulExalt:PerkType = mk("Soul Exalt", "Soul Exalt",
				"Allow reaching 7th stage of soul cultivation. (+30 max Hunger, +5 to max Wis, +90 max SF at lvl 42, 44, 46; +20% to max SF at lvl 42)",
				"You've chosen the 'Soul Exalt' perk, reaching 7th stage of soul cultivation! (+30 max Hunger, +90 max SF at lvl 42, 44, 46; +20% to max SF at lvl 42)").withBuffs({'wis.mult':0.05});
		public static const SoulKing:PerkType = mk("Soul King", "Soul King",
				"Allow reaching 10th stage of soul cultivation. (+35 max Hunger, +5 to max Wis, +120 max SF at lvl 60, 62, 64; +25% to max SF at lvl 60)",
				"You've chosen the 'Soul King' perk, reaching 10th stage of soul cultivation! (+35 max Hunger, +120 max SF at lvl 60, 62, 64; +25% to max SF at lvl 60)").withBuffs({'wis.mult':0.05});
		public static const SoulOfSteel:PerkType = mk("Soul of Steel", "Soul of Steel",
				"Every aspect of you has become a weapon. Your melee damage has increased yet again, but could you even be considered living at this point? (+10% melee phys dmg)",
				"You've chosen the 'Soul of Steel' perk, gaining +10% melee phys dmg.");
		public static const SoulOverlord:PerkType = mk("Soul Overlord", "Soul Overlord",
				"Allow reaching 8th stage of soul cultivation. (+30 max Hunger, +5 to max Wis, +100 max SF at lvl 48, 50, 52; +20% to max SF at lvl 48)",
				"You've chosen the 'Soul Overlord' perk, reaching 8th stage of soul cultivation! (+30 max Hunger, +100 max SF at lvl 48, 50, 52; +20% to max SF at lvl 48)").withBuffs({'wis.mult':0.05});
		public static const SoulPersonage:PerkType = mk("Soul Personage", "Soul Personage",
				"Allow reaching 2nd stage of soul cultivation. (+20 max Hunger, +5 to max Wis, +40 max SF at lvl 12, 14, 16; +10% to max SF at lvl 12)",
				"You've chosen the 'Soul Personage' perk, reaching 2nd stage of soul cultivation! (+20 max Hunger, +40 max SF at lvl 12, 14, 16; +10% to max SF at lvl 12)").withBuffs({'wis.mult':0.05});
		public static const SoulPowered:PerkType = mk("Soul Powered", "Soul Powered",
				"You use your soul force more than anything else... increasing its size by 10%.",
				"You've chosen the 'Soul Powered' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const SoulScholar:PerkType = mk("Soul Scholar", "Soul Scholar",
				"Allow reaching 5th stage of soul cultivation. (+25 max Hunger, +5 to max Wis, +70 max SF at lvl 30, 32, 34; +15% to max SF at lvl 30)",
				"You've chosen the 'Soul Scholar' perk, reaching 5th stage of soul cultivation! (+25 max Hunger, +70 max SF at lvl 30, 32, 34; +15% to max SF at lvl 30)").withBuffs({'wis.mult':0.05});
		public static const SoulSprite:PerkType = mk("Soul Sprite", "Soul Sprite",
				"Allow reaching 4th stage of soul cultivation. (+25 max Hunger, +5 to max Wis, +60 max SF at lvl 24, 26, 28; +15% to max SF at lvl 24)",
				"You've chosen the 'Soul Sprite' perk, reaching 4th stage of soul cultivation! (+25 max Hunger, +60 max SF at lvl 24, 26, 28; +15% to max SF at lvl 24)").withBuffs({'wis.mult':0.05});
		public static const SoulTyrant:PerkType = mk("Soul Tyrant", "Soul Tyrant",
				"Allow reaching 9th stage of soul cultivation. (+30 max Hunger, +5 to max Wis, +110 max SF at lvl 54, 56, 58; +20% to max SF at lvl 54)",
				"You've chosen the 'Soul Tyrant' perk, reaching 9th stage of soul cultivation! (+30 max Hunger, +110 max SF at lvl 54, 56, 58; +20% to max SF at lvl 54)").withBuffs({'wis.mult':0.05});
		public static const SoulWarrior:PerkType = mk("Soul Warrior", "Soul Warrior",
				"Allow reaching 3rd stage of soul cultivation. (+20 max Hunger, +5 to max Wis, +50 max SF at lvl 18, 20, 22; +10% to max SF at lvl 18)",
				"You've chosen the 'Soul Warrior' perk, reaching 3rd stage of soul cultivation! (+20 max Hunger, +50 max SF at lvl 18, 20, 22; +10% to max SF at lvl 18)").withBuffs({'wis.mult':0.05});
		public static const Spectre:PerkType = mk("Spectre", "Spectre",
				"You have mastered dematerialization, so now you can use it to avoid incoming attacks (+10% to dodge chance) and slip from enemy grasp (you can try to possess during struggle, and even if not successfull you'll escape from constriction).",
				"You've chosen the 'Spectre' perk. You have mastered dematerialization, so now you can use it to avoid incoming attacks (+10% to dodge chance) and slip from enemy grasp (you can try to possess during struggle, and even if not successfull you'll escape from constriction).");
		public static const SpeedDemon:PerkType = mk("Speed Demon", "Speed Demon",
				"Add speed based scaling of melee attacks when using smaller than large weapon(s).",
				"You've chosen the 'Speed Demon' perk, allowing you to use your speed when attacking with smaller than large melee weapons.");
		public static const SpeedyRecovery:PerkType = mk("Speedy Recovery", "Speedy Recovery",
				"Regain fatigue +50% faster.",
				"You've chosen the 'Speedy Recovery' perk, boosting your fatigue recovery rate!");
		public static const SpeedyRecuperation:PerkType = mk("Speedy Recuperation", "Speedy Recuperation",
				"Regain fatigue +100% faster.",
				"You've chosen the 'Speedy Recuperation' perk, boosting your fatigue recovery rate!");
		public static const SpeedyRejuvenation:PerkType = mk("Speedy Rejuvenation", "Speedy Rejuvenation",
				"Regain fatigue +200% faster.",
				"You've chosen the 'Speedy Rejuvenation' perk, boosting your fatigue recovery rate!");
		public static const Spellarmor:PerkType = mk("Spellarmor", "Spellarmor",
				"Start every battle with Charge Armor enabled, if you meet White Magic requirements before it starts.",
				"You've chosen the 'Spellarmor' perk. You start every battle with Charge Armor effect, as long as your Lust is not preventing you from casting it before battle.");
		public static const Spellpower:PerkType = mk("Spellpower", "Spellpower",
				"[if (player.inte>=50)" +
						"Increases base spell strength by 10% and mana pool by 45." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Spellpower' perk.  Thanks to your sizeable intellect and willpower, you are able to more effectively use magic, boosting base spell effects by 10% and mana pool by 45.");
		public static const SpellpowerHealing:PerkType = mk("Spellpower: Healing", "Spellpower: Healing",
				"[if (player.wis>=50)" +
						"Increases base spell strength by 20% and mana pool by 90." +
						"|" +
						"<b>You are too dumb to gain benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Spellpower: Healing' perk.  Thanks to your sizeable intellect and willpower, you are able to more effectively use magic, boosting base healing spell effects by 20% and mana pool by 90.");
		public static const Spellsword:PerkType = mk("Spellsword", "Spellsword",
				"Start every battle with Charge Weapon enabled, if you meet White Magic requirements before it starts.",
				"You've chosen the 'Spellsword' perk. You start every battle with Charge Weapon effect, as long as your Lust is not preventing you from casting it before battle.");
		public static const SpinAttack:PerkType = mk("Spin Attack", "Spin Attack",
				"Allow using P. Special Wing Slap when having proper type of wings and flying. (the bigger (higher tier) wings the higher dmg)",
				"You've chosen the 'Spin Attack' perk, learning to use your wings to use Wing Slam attack when in air.");
		public static const SpiritedDive:PerkType = mk("Spirited Dive", "Spirited Dive",
				"You can perform a terrifying dive-bomb attack. (Great Dive have full AoE dmg bonus vs Groups)",
				"You've chosen the 'Spirited Dive' perk, learning to perform terrifying dive-bomb attack. (AoE dmg on Great Dive)");
		public static const SpysEnemy:PerkType = mk("Spy's Enemy", "Spy's Enemy",
				"Backst- Enemy Spy is here! Aww Dammit! (Close call there... I'd take the +10% ranged damage buff before he comes back)",
				"You've chosen the 'Spy's Enemy' perk, gaining +10% range phys dmg.");
		public static const StarlightStrikes:PerkType = mk("Starlight Strikes", "Starlight Strikes",
				"[if(player.spe>=60)" +
						"Increases the attack damage for small weapons.</b>" +
						"|" +
						"<b>You are too slow to benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Starlight Strikes' perk, increasing the attack damage for small weapons.</b>");
		public static const SteelImpact:PerkType = mk("Steel Impact", "Steel Impact",
				"Add a part of your toughness to your weapon and shield damage.",
				"You've chosen the 'Steel Impact' perk. Increasing damage of your weapon and shield.");
		public static const SteelStorm:PerkType = mk("Steel Storm", "Steel Storm",
				"Gain two (or four/six if PC normaly attack 5+/9+ times per turn) extra attack when dual wielding.",
				"You've chosen the 'Steel Storm' perk. Gain two (or four/six if PC normaly attack 5+/9+ times per turn) extra attack when dual wielding.");
		public static const Straddle:PerkType = mk("Straddle", "Straddle",
				"You may now perform the straddle action in battle against stunned foes. Initiating a grappling stance. This grapple efficiency is based on libido and only function on single target humanoids.\n",
				"You've chosen the 'Straddle' perk, allowing you to further tease your stunned foe through devastating grappling techniques.");
		public static const StraddleImproved:PerkType = mk("Improved Straddle", "Improved Straddle",
				"Increase the straddle maneuver maximum duration by two rounds.",
				"You've chosen the 'Improved Straddle' perk, Allowing you to increase the straddle maneuver maximum duration by two rounds.");
		public static const StrongElementalBond:PerkType = mk("Strong Elemental Bond", "Strong Elemental Bond",
				"Lower by 10 needed mana to sustain active elemental in combat and +2 mana regeneration.",
				"You've chosen the 'Strong Elemental Bond' perk, enhancing your connection with elementals and lowering mana needed to maintain bonds.");
		public static const StrongElementalBondEx:PerkType = mk("Strong Elemental Bond (Ex)", "Strong Elemental Bond (Ex)",
				"Lower by 20 needed mana to sustain active elemental in combat and +4 mana regeneration.",
				"You've chosen the 'Strong Elemental Bond (Ex)' perk, enhancing your connection with elementals and lowering mana needed to maintain bonds.");
		public static const StrongElementalBondSu:PerkType = mk("Strong Elemental Bond (Su)", "Strong Elemental Bond (Su)",
				"Lower by 30 needed mana to sustain active elemental in combat and +6 mana regeneration.",
				"You've chosen the 'Strong Elemental Bond (Su)' perk, enhancing your connection with elementals and lowering mana needed to maintain bonds.");
		public static const StrongerElementalBond:PerkType = mk("Stronger Elemental Bond", "Stronger Elemental Bond",
				"Lower by 40 needed mana to sustain active elemental in combat and +8 mana regeneration.",
				"You've chosen the 'Stronger Elemental Bond' perk, futher enhancing your connection with elementals.");
		public static const StrongerElementalBondEx:PerkType = mk("Stronger Elemental Bond (Ex)", "Stronger Elemental Bond (Ex)",
				"Lower by 50 needed mana to sustain active elemental in combat and +10 mana regeneration.",
				"You've chosen the 'Stronger Elemental Bond (Ex)' perk, futher enhancing your connection with elementals.");
		public static const StrongerElementalBondSu:PerkType = mk("Stronger Elemental Bond (Su)", "Stronger Elemental Bond (Su)",
				"Lower by 60 needed mana to sustain active elemental in combat and +12 mana regeneration.",
				"You've chosen the 'Stronger Elemental Bond (Su)' perk, futher enhancing your connection with elementals.");
		public static const StrongestElementalBond:PerkType = mk("Strongest Elemental Bond", "Strongest Elemental Bond",
				"Lower by 70 needed mana to sustain active elemental in combat and +14 mana regeneration.",
				"You've chosen the 'Strongest Elemental Bond' perk, reaching near the peak of connection strength with your elementals.");
		public static const StrongestElementalBondEx:PerkType = mk("Strongest Elemental Bond (Ex)", "Strongest Elemental Bond (Ex)",
				"Lower by 80 needed mana to sustain active elemental in combat and +16 mana regeneration.",
				"You've chosen the 'Strongest Elemental Bond (Ex)' perk, reaching near the peak of connection strength with your elementals.");
		public static const StrongestElementalBondSu:PerkType = mk("Strongest Elemental Bond (Su)", "Strongest Elemental Bond (Su)",
				"Lower by 90 needed mana to sustain active elemental in combat and +18 mana regeneration.",
				"You've chosen the 'Strongest Elemental Bond (Su)' perk, reaching near the peak of connection strength with your elementals.");
		public static const Studious:PerkType = mk("Studious", "Studious",
				"You're a new student, kinda have to be studious. Your hours of study has helped you increase max mana by 10%.",
				"You've chosen the 'Studious' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const SuperChargedCore:PerkType = mk("Super Charged Core", "Super Charged Core",
				"At the cost of using additional mana you can super charge each temporary golem core attaing ever better effects than before. Allow to deal reduced (50%) damage to enemies that are immune to physical attacks.",
				"You've chosen the 'Super Charged Core' perk, learning how to make core charging more effective. Even to be able damage enemeis highly resistant to physical attacks.");
		public static const SuperiorEndurance:PerkType = mk("Superior Endurance", "Superior Endurance",
				"Increases maximum fatigue by 500.",
				"You've chosen the 'Superior Endurance' perk. Thanks to your superior physical conditioning, your maximum fatigue has been increased by 500!</b>")
				.withBuffs({'maxfatigue_base':+500});
		public static const SuperiorSelfControl:PerkType = mk("Superior Self-Control", "Superior Self-Control",
				"Increases maximum lust by 750.",
				"You've chosen the 'Superior Self-Control' perk. Thanks to your superior mental conditioning, your maximum lust has been increased by 750!</b>")
				.withBuffs({'maxlust_base':+750});
		public static const SuperiorSpirituality:PerkType = mk("Superior Spirituality", "Superior Spirituality",
				"Increases maximum mana by 2250.",
				"You've chosen the 'Superior Spirituality' perk. Thanks to your superior mystical conditioning, your maximum mana has been increased by 2250!</b>")
				.withBuffs({'maxmana_base':+2250});
		public static const SuperiorTranquilness:PerkType = mk("Superior Tranquilness", "Superior Tranquilness",
				"Increases maximum wrath.",
				"You've chosen the 'Superior Tranquilness' perk. Thanks to your superior anger managment training, your maximum wrath has been increased by 1250!</b>")
				.withBuffs({'maxwrath_base':+1250});
		public static const SuperSensual:PerkType = mk("Super Sensual", "Super Sensual",
				"Lowering by another ~40% needed exp to lvl-up tease, increasing max tease lvl cap to 70, increasing a bit lust dmg when tease chance is above 100% (each 1% above 100% increase lust dmg by ~2%) and +2 more tease exp after succes.",
				"You've chosen the 'Super Sensual' perk, lowering by another ~33% needed exp to lvl-up tease, increasing max tease lvl cap to 70, increasing a bit lust dmg when tease chance is above 100% and +2 more tease exp after succes.");
		public static const Surgeon:PerkType = mk("Surgeon", "Surgeon",
				"You saved many lives while working, and thus have an intimate knowledge of how your body works, knowing exactly what to do in any situation. This helps you take care of yourself, and increases health regen.",
				"You've chosen the 'Surgeon' perk, increasing HP gains by 20%.");
		public static const SurgeonsAide:PerkType = mk("Surgeon's Aide", "Surgeon's Aide",
				"You were the head aide of the surgeon, making sure they had everything they need. By working to make sure nothing went wrong, you have a better understanding at how to heal yourself, increasing health regen.",
				"You've chosen the 'Surgeon's Aide' perk, increasing HP gains by 20%.");
		public static const Survivalist:PerkType = mk("Survivalist", "Survivalist",
				"Slows hunger rate by 20%.",
				"You've chosen the 'Survivalist' perk.  With this perk, your hunger rate is reduced by 20%.");
		public static const Survivalist2:PerkType = mk("Survivalist 2", "Survivalist 2",
				"Slows hunger rate by further 20%.",
				"You've chosen the 'Survivalist 2' perk.  With this perk, your hunger rate is reduced by another 20%.");
		public static const StaffChanneling:PerkType = mk("Staff Channeling", "Staff Channeling",
				"Melee attacks with staffs would turn to ranged magic bolts. In additiona to hitting enemy next to you they would enable hitting enemies out of your reach (for ex. flying enemies).",
				"You've chosen the 'Staff Channeling' perk. Melee attacks with staffs would turn to ranged magic bolts. In addition to hitting an enemy next to you, they would enable hitting enemies out of your reach (for ex. flying enemies).");
		public static const StrongBack:PerkType = mk("Strong Back", "Strong Back",
				"Enables sixth item slot.",
				"You've chosen the 'Strong Back' perk, enabling a sixth item slot.");
		public static const StrongBack2:PerkType = mk("Strong Back 2: Strong Harder", "Strong Back 2: Strong Harder",
				"Enables seventh item slot.",
				"You've chosen the 'Strong Back 2: Strong Harder' perk, enabling a seventh item slot.");
		public static const StrongBack3:PerkType = mk("Strong Back 3: Strong Hardest", "Strong Back 3: Strong Hardest",
				"Enables eighth item slot.",
				"You've chosen the 'Strong Back 3: Strong Hardest' perk, enabling a eighth item slot.");
		public static const SwiftCasting:PerkType = mk("Swift casting", "Swift casting",
				"When attacking with melee using a one handed weapon with no shield equiped, pc can Chose the an available spell in combat options to cast during the round. It will be used at the end of the full attack.",
				"You've chosen the 'Swift casting' perk, allowing to cast one of simple spells after melee attack.");
		public static const Tactician:PerkType = mk("Tactician", "Tactician",
				"[if(player.inte>=50)" +
						"Increases physical critical hit chance by up to 10% (Intelligence-based)." +
						"|" +
						"<b>You are too dumb to gain any benefit from this perk.</b>" +
						"]",
				"You've chosen the 'Tactician' perk, increasing physical critical hit chance by up to 10% (Intelligence-based).");
		public static const TakingABreak:PerkType = mk("Taking a Break", "Taking a Break",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'Taking a Break' perk, gaining +20% fatigue recovery rate.");
		public static const TankI:PerkType = mk("Tank I", "Tank I",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank I' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const TankII:PerkType = mk("Tank II", "Tank II",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank II' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const TankIII:PerkType = mk("Tank III", "Tank III",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank III' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const TankIV:PerkType = mk("Tank IV", "Tank IV",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank IV' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const TankV:PerkType = mk("Tank V", "Tank V",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank V' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const TankVI:PerkType = mk("Tank VI", "Tank VI",
				"+12 extra HP per point of toughness.",
				"You've chosen the 'Tank VI' perk, granting +12 extra maximum HP for each point of toughness.");
		public static const Teacher:PerkType = mk("Teacher", "Teacher",
				"Instead of being taught, now you teach others. Your skill allows you to increase max mana by 10%.",
				"You've chosen the 'Teacher' perk, gaining +10% max Mana.")
				.withBuffs({'maxmana_mult':+0.1});
		public static const Telekinesis:PerkType = mk("Telekinesis", "Telekinesis",
				"You have the power to wield and throw objects with your mind alone. Gain a bonus to damage based on inteligence when using thrown weapons and aquire additionnal attacks based on character level.");
		public static const TemporalGolemsRestructuration:PerkType = mk("Temporal Golems Restructuration", "Temporal Golems Restructuration",
				"Allow to use option of send more than 5 temporary golems to attack in one turn. Adding option to make 5 temporary golems at once and shorten a bit time to make 1 temporary golem. (+5 to max limit of stored temporary stone golems)",
				"You've chosen the 'Temporal Golems Restructuration' perk, adding option to make faster and more temporary golems at once and have option to send more of them at once to attack. (+5 to max limit of stored temporary stone golems)");
		public static const TemporalGolemsRestructurationEx:PerkType = mk("Temporal Golems Restructuration (Ex)", "Temporal Golems Restructuration (Ex)",
				"Allow to use option of send all temporary golems to attack in one turn. Adding option to make 20 temporary golems at once and shorten a bit time to make 1 temporary golem. (+10 to max limit of stored temporary stone golems)",
				"You've chosen the 'Temporal Golems Restructuration' perk, adding option to make faster and more temporary golems at once and have option to send them all at once to attack. (+10 to max limit of stored temporary stone golems)");
		public static const ThirdRing:PerkType = mk("Third Ring", "Third Ring",
				"Your advanced understanding of magic pools allows you to equip third ring.",
				"You've chosen the 'Third Ring' perk, reaching advanced understanding of magic pools to allow you equip third ring.");
		public static const ThirstForBlood:PerkType = mk("Thirst for blood", "Thirst for blood",
				"Weapon and effect that causes bleed damage have this damage increased by 50%.",
				"You've chosen the 'Thirst for blood' perk, increasing damage done by bleed effects.");
		public static const ThunderousStrikes:PerkType = mk("Thunderous Strikes", "Thunderous Strikes",
				"+20% 'Attack' damage while strength is at or above 80.",
				"You've chosen the 'Thunderous Strikes' perk, increasing normal damage by 20% while your strength is over 80.");
		public static const TitanGrip:PerkType = mk("Titan's Grip", "Titan's Grip",
				"Gain an ability to wield massive weapons in one hand. (+5 to max Str)",
				"You've chosen the 'Titan's Grip' perk, gaining an ability to wield large weapons in one hand. (+5 to max Str)").withBuffs({'str.mult':0.5});
		public static const TitanGripEx:PerkType = mk("Titan's Grip (Ex)", "Titan's Grip (Ex)",
				"Gain an ability to wield large weapons in one hand. (+5 to max Str/Tou)",
				"You've chosen the 'Titan's Grip (Ex)' perk, gaining an ability to wield large weapons in one hand. (+5 to max Str/Tou)").withBuffs({'str.mult':0.5,'tou.mult':0.5});
		public static const TitanGripSu:PerkType = mk("Titan's Grip (Su)", "Titan's Grip (Su)",
				"Gain an ability to wield large weapons in one hand. (+5 to max Str/Tou/Spe)",
				"You've chosen the 'Titan's Grip (Su)' perk, gaining an ability to wield large weapons in one hand. (+5 to max Str/Tou/Spe)").withBuffs({'str.mult':0.5,'tou.mult':0.5,'spe.mult':0.5});
		public static const Tongs:PerkType = mk("Tongs", "Tongs",
				"You no longer burn your hands when forging, allowing you to actually get work done! This increases armor proficiency. (+5% phys/mag resistance)",
				"You've chosen the 'Tongs' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const Tornado:PerkType = mk("Tornado", "Tornado",
				"Increasing damage of aoe like whirlwind by 100% of base value.",
				"You've chosen the 'Tornado' perk, increasing damage by aoe specials like whirlwind.");
		public static const ToughHide:PerkType = mk("Tough Hide", "Tough Hide",
				"Increase your armor by 2 and magic resistance by 1 so long as you have scale chitin fur or other natural armor. (boost scalable with ng tiers)",
				"You've chosen the 'Tough Hide' perk, increase your armor and magic resistance as long you have any natural armor!");
		public static const TrachealSystem:PerkType = mk("Tracheal System", "Tracheal System",
				"Your body possesses rudimentary respiratory system of the insects.",
				"You've chosen the 'Tracheal System' perk, by becoming much more insect-like your body started to denvelop crude version of insects breathing system.");
		public static const TrachealSystemEvolved:PerkType = mk("Tracheal System (Evolved)", "Tracheal System (Evolved)",
				"Your body possesses half developed respiratory system of the insects. (+5 to max str (scalable))",
				"You've chosen the 'Tracheal System (Evolved)' perk, continuous exposition to insectoidal changes caused your tracheal system evolution into more complete form.").withBuffs({'str.mult':0.05});
		public static const TrachealSystemFinalForm:PerkType = mk("Tracheal System (Final Form)", "Tracheal System (Final Form)",
				"Your body possesses fully developed respiratory system of the insects. (+10 to max spe (scalable))",
				"You've chosen the 'Tracheal System (Final Form)' perk, continued exposition to insectoidal changes caused your tracheal system evolution into it final form.").withBuffs({'spe.mult':0.10});
		public static const TraditionalMageI:PerkType = mk("Traditional Mage I", "Traditional Mage I",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage I' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const TraditionalMageII:PerkType = mk("Traditional Mage II", "Traditional Mage II",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage II' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const TraditionalMageIII:PerkType = mk("Traditional Mage III", "Traditional Mage III",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage III' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const TraditionalMageIV:PerkType = mk("Traditional Mage IV", "Traditional Mage IV",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage IV' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const TraditionalMageV:PerkType = mk("Traditional Mage V", "Traditional Mage V",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage V' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const TraditionalMageVI:PerkType = mk("Traditional Mage VI", "Traditional Mage VI",
				"You gain 100% spell effect multiplier while using a staff and either a tome or no ranged weapon.",
				"You've chosen the 'Traditional Mage VI' perk, boosting your base spell effects while using a staff and either a tome or no ranged weapon.");
		public static const Trance:PerkType = mk("Trance", "Trance",
				"Unlocked ability to enter a state in which PC assumes a crystalline form, enhancing physical and mental abilities at cost of constant using soulforce.",
				"You've chosen the 'Trance' perk, which unlock 'Trance' special. It enhancing physical and mental abilities at cost of constant using soulforce.");
		public static const Transference:PerkType = mk("Transference", "Transference",
				"Your mastery of lust and desire allows you to transfer 15% of your current arousal to your opponent.",
				"You've chosen the 'Transference' perk, granting ability to transfer your own arousal to your opponent.");
		public static const TravelingMerchantOutfit:PerkType = mk("Traveling Merchant Outfit", "Traveling Merchant Outfit",
				"Double gems gained from selling items and gems found. Gem based abilities are more powerful.",
				"Double gems gained from selling items and gems found. Gem based abilities are more powerful.");
		public static const TripleAttack:PerkType = mk("Triple Attack", "Triple Attack",
				"Allows you to perform three melee attacks with normal sized weapons per round.",
				"You've chosen the 'Triple Attack' perk.  This allows you to make three melee attacks with non-large weapons.")
				.withBuffs({'maxwrath_base':+50});
		public static const TripleAttackLarge:PerkType = mk("Triple Attack (Large)", "Triple Attack (Large)",
				"Allows you to perform three melee attacks with large weapons per round.",
				"You've chosen the 'Triple Attack (Large)' perk.  This allows you to make three melee attacks with large weapons.")
				.withBuffs({'maxwrath_base':+100});
		public static const TripleAttackSmall:PerkType = mk("Triple Attack (Small)", "Triple Attack (Small)",
				"Allows you to perform three melee attacks with small weapons per round.",
				"You've chosen the 'Triple Attack (Small)' perk.  This allows you to make three melee attacks with small weapons.");
		public static const TripleStrike:PerkType = mk("Triple Strike", "Triple Strike",
				"Allows you to perform three range attacks per round.",
				"You've chosen the 'Triple Strike' perk.  This allows you to make three range attacks.");
		public static const TwinRiposte:PerkType = mk("Twin Riposte", "Twin Riposte",
				"Upon a successful parry when dual wielding deal two attack.",
				"You've chosen the 'Twin Riposte' perk. Upon a successful parry when dual wielding deal two attack.");
		public static const Unhindered:PerkType = mk("Unhindered", "Unhindered",
				"Increases chances of evading enemy attacks when you are naked. (Undergarments won't disable this perk.)",
				"You've chosen the 'Unhindered' perk, granting chance to evade when you are naked.");
		public static const UnlockArdor:PerkType = mk("Unlock: Ardor", "Unlock: Ardor (1st Stage)",
				"Unlocking ardor grants additional 3 Lust on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Ardor (1st Stage)' perk, allowing you to increase passive Lust gains on lvl-up!")
				.withBuffs({'maxlust_perlevel':+3});
		public static const UnlockArdor2ndStage:PerkType = mk("Unlock: Ardor (2nd Stage)", "Unlock: Ardor (2nd Stage)",
				"Unlocking ardor grants additional 3 Lust on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Ardor (2nd Stage)' perk, allowing you to increase passive Lust gains on lvl-up!")
				.withBuffs({'maxlust_perlevel':+3});
		public static const UnlockArdor3rdStage:PerkType = mk("Unlock: Ardor (3rd Stage)", "Unlock: Ardor (3rd Stage)",
				"Unlocking ardor grants additional 3 Lust on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Ardor (3rd Stage)' perk, allowing you to increase passive Lust gains on lvl-up!")
				.withBuffs({'maxlust_perlevel':+3});
		public static const UnlockArdor4thStage:PerkType = mk("Unlock: Ardor (4th Stage)", "Unlock: Ardor (4th Stage)",
				"Unlocking ardor grants additional 3 Lust on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Ardor (4th Stage)' perk, allowing you to increase passive Lust gains on lvl-up!")
				.withBuffs({'maxlust_perlevel':+3});
		public static const UnlockBody:PerkType = mk("Unlock: Body", "Unlock: Body (1st Stage)",
				"Unlocking body potential grants additional 60 HP on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Body (1st Stage)' perk, allowing you to increase passive HP gains on lvl-up!");
		public static const UnlockBody2ndStage:PerkType = mk("Unlock: Body (2nd Stage)", "Unlock: Body (2nd Stage)",
				"Unlocking body potential grants additional 60 HP on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Body (2nd Stage)' perk, allowing you to increase passive HP gains on lvl-up!");
		public static const UnlockBody3rdStage:PerkType = mk("Unlock: Body (3rd Stage)", "Unlock: Body (3rd Stage)",
				"Unlocking body potential grants additional 60 HP on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Body (3rd Stage)' perk, allowing you to increase passive HP gains on lvl-up!");
		public static const UnlockBody4thStage:PerkType = mk("Unlock: Body (4th Stage)", "Unlock: Body (4th Stage)",
				"Unlocking body potential grants additional 60 HP on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Body (4th Stage)' perk, allowing you to increase passive HP gains on lvl-up!");
		public static const UnlockEndurance:PerkType = mk("Unlock: Endurance", "Unlock: Endurance (1st Stage)",
				"Unlocking innate endurance grants additional 5 Fatigue on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Endurance (1st Stage)' perk, allowing you to increase passive Fatigue gains on lvl-up!")
				.withBuffs({'maxfatigue_perlevel':+5});
		public static const UnlockEndurance2ndStage:PerkType = mk("Unlock: Endurance (2nd Stage)", "Unlock: Endurance (2nd Stage)",
				"Unlocking innate endurance grants additional 5 Fatigue on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Endurance (2nd Stage)' perk, allowing you to increase passive Fatigue gains on lvl-up!")
				.withBuffs({'maxfatigue_perlevel':+5});
		public static const UnlockEndurance3rdStage:PerkType = mk("Unlock: Endurance (3rd Stage)", "Unlock: Endurance (3rd Stage)",
				"Unlocking innate endurance grants additional 5 Fatigue on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Endurance (3rd Stage)' perk, allowing you to increase passive Fatigue gains on lvl-up!")
				.withBuffs({'maxfatigue_perlevel':+5});
		public static const UnlockEndurance4thStage:PerkType = mk("Unlock: Endurance (4th Stage)", "Unlock: Endurance (4th Stage)",
				"Unlocking innate endurance grants additional 5 Fatigue on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Endurance (4th Stage)' perk, allowing you to increase passive Fatigue gains on lvl-up!")
				.withBuffs({'maxfatigue_perlevel':+5});
		public static const UnlockId:PerkType = mk("Unlock: Id", "Unlock: Id (1st Stage)",
				"Unlocking id grants additional 5 Wrath on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Id (1st Stage)' perk, allowing you to increase passive Wrath gains on lvl-up!")
				.withBuffs({'maxwrath_perlevel':+5});
		public static const UnlockId2ndStage:PerkType = mk("Unlock: Id (2nd Stage)", "Unlock: Id (2nd Stage)",
				"Unlocking id grants additional 5 Wrath on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Id (2nd Stage)' perk, allowing you to increase passive Wrath gains on lvl-up!")
				.withBuffs({'maxwrath_perlevel':+5});
		public static const UnlockId3rdStage:PerkType = mk("Unlock: Id (3rd Stage)", "Unlock: Id (3rd Stage)",
				"Unlocking id grants additional 5 Wrath on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Id (3rd Stage)' perk, allowing you to increase passive Wrath gains on lvl-up!")
				.withBuffs({'maxwrath_perlevel':+5});
		public static const UnlockId4thStage:PerkType = mk("Unlock: Id (4th Stage)", "Unlock: Id (4th Stage)",
				"Unlocking id grants additional 5 Wrath on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Id (4th Stage)' perk, allowing you to increase passive Wrath gains on lvl-up!")
				.withBuffs({'maxwrath_perlevel':+5});
		public static const UnlockSpirit:PerkType = mk("Unlock: Spirit", "Unlock: Spirit (1st Stage)",
				"Unlocking spirit potential grants additional 5 Soulforce on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Spirit (1st Stage)' perk, allowing you to increase passive Soulforce gains on lvl-up!")
				.withBuffs({'maxsf_perlevel':+5});
		public static const UnlockSpirit2ndStage:PerkType = mk("Unlock: Spirit (2nd Stage)", "Unlock: Spirit (2nd Stage)",
				"Unlocking spirit potential grants additional 5 Soulforce Spirit each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Spirit (2nd Stage)' perk, allowing you to increase passive Soulforce gains on lvl-up!")
				.withBuffs({'maxsf_perlevel':+5});
		public static const UnlockSpirit3rdStage:PerkType = mk("Unlock: Spirit (3rd Stage)", "Unlock: Spirit (3rd Stage)",
				"Unlocking spirit potential grants additional 5 Soulforce on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Spirit (3rd Stage)' perk, allowing you to increase passive Soulforce gains on lvl-up!")
				.withBuffs({'maxsf_perlevel':+5});
		public static const UnlockSpirit4thStage:PerkType = mk("Unlock: Spirit (4th Stage)", "Unlock: Spirit (4th Stage)",
				"Unlocking spirit potential grants additional 5 Soulforce on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Spirit (4th Stage)' perk, allowing you to increase passive Soulforce gains on lvl-up!")
				.withBuffs({'maxsf_perlevel':+5});
		public static const UnlockForce:PerkType = mk("Unlock: Force", "Unlock: Force (1st Stage)",
				"Unlocking magic potential grants additional 10 Mana on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Force (1st Stage)' perk, allowing you to increase passive Mana gains on lvl-up!")
				.withBuffs({'maxmana_perlevel':+10});
		public static const UnlockForce2ndStage:PerkType = mk("Unlock: Force (2nd Stage)", "Unlock: Force (2nd Stage)",
				"Unlocking magic potential grants additional 10 Mana on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Force (2nd Stage)' perk, allowing you to increase passive Mana gains on lvl-up!")
				.withBuffs({'maxmana_perlevel':+10});
		public static const UnlockForce3rdStage:PerkType = mk("Unlock: Force (3rd Stage)", "Unlock: Force (3rd Stage)",
				"Unlocking magic potential grants additional 10 Mana on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Force (3rd Stage)' perk, allowing you to increase passive Mana gains on lvl-up!")
				.withBuffs({'maxmana_perlevel':+10});
		public static const UnlockForce4thStage:PerkType = mk("Unlock: Force (4th Stage)", "Unlock: Force (4th Stage)",
				"Unlocking magic potential grants additional 10 Mana on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Force (4th Stage)' perk, allowing you to increase passive Mana gains on lvl-up!")
				.withBuffs({'maxmana_perlevel':+10});
		public static const VampiricBlade:PerkType = mk("Vampiric blade", "Vampiric blade",
				"PC recovers 0.5/1/2/4 % of its health each time it strikes with a melee attack. (% restored depend on weapon size used)",
				"You've chosen the 'Vampiric blade' perk, recovering some HP after each succesfull melee attack.");
		public static const VerdantMight:PerkType = mk("Verdant Might", "Verdant Might",
				"As a plant when using natural weapon your damage scaling is based on Toughness instead of strength.",
				"As a plant when using natural weapon your damage scaling is based on Toughness instead of strength.");
		public static const VitalShot:PerkType = mk("Vital Shot", "Vital Shot",
				"Gain a +10% chance to do a critical strike with arrows.",
				"You've chosen the 'Vital Shot' perk, gaining an additional +10% chance to cause a critical hit with arrows.");
		public static const VladimirRegalia:PerkType = mk("Vladimir Regalia", "Vladimir Regalia",
				"+100% damage dealt from grapple and Dark ability, Player suffer from 5% degeneration during the day but regenerate 5% faster at night instead.",
				"+100% damage dealt from grapple and Dark ability, Player suffer from 5% degeneration during the day but regenerate 5% faster at night instead.");
		public static const WalpurgisIzaliaRobe:PerkType = mk("Walpurgis Izalia Robe", "Walpurgis Izalia Robe",
				"Increase fire and darkness damage by 100%, weaken all other elemental damage by 99%, increase fire resistance by 25%, reduce spellcasting cost by 60%.",
				"Increase fire damage by 100%, weaken all other elemental damage by 99%, increase fire resistance by 25%, reduce spellcasting cost by 60%.");
		public static const IceQueenGown:PerkType = mk("Ice Queen Gown", "Ice Queen Gown",
				"Freeze the heart of the wielder and grant a weakness to fire and a resistance to ice but double cold and light damage. A yuki onna also gains greater regeneration and the black frost aura.");
		public static const WarCaster:PerkType = mk("War caster", "War caster",
				"Increases magical and physical critical chance by up to 25% based on intelligence.",
				"You've chosen the 'War caster' perk, increasing magical and physical critical chance by up to 25% based on intelligence.");
		public static const Weap0n:PerkType = mk("Weapon", "Weapon",
				"Now that you've forged your first weapon, you have a better handling on how they work, allowing you to forge even better armor. Once again, your proficiency in armors increase! (+5% phys/mag resistance)",
				"You've chosen the 'Weapon' perk, increasing armor proficiency. (+5% phys/mag resistance)");
		public static const WeaponGrandMastery:PerkType = mk("Weapon Grandmastery", "Weapon Grandmastery",
				"[if(player.str>139)" +
						"Double damage bonus of weapons classified as 'Large' and 'Dual Large'. Additionaly 10% higher chance to crit with dual large weapons." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Weapon Grandmastery' perk, doubling the effectiveness of large or dual large weapons.").withBuffs({'str.mult':0.10});
		public static const WeaponMastery:PerkType = mk("Weapon Mastery", "Weapon Mastery",
				"[if(player.str>99)" +
						"One and half damage bonus of weapons classified as 'Large'. Additionaly 10% higher chance to crit with those weapons." +
						"|" +
						"<b>You aren't strong enough to benefit from this anymore.</b>" +
						"]",
				"You've chosen the 'Weapon Mastery' perk, getting one and half of the effectiveness of large weapons.").withBuffs({'str.mult':0.05});
		public static const WellAdjusted:PerkType = mk("Well Adjusted", "Well Adjusted",
				"You gain half as much lust as time passes in Mareth.",
				"You've chosen the 'Well Adjusted' perk, reducing the amount of lust you naturally gain over time while in this strange land!");
		public static const Whipping:PerkType = mk("Whipping", "Whipping",
				"Whipping special deal increased damage based on current strength.",
				"You've chosen the 'Whipping' perk, making your Whipping special stronger.");
		public static const Whirlwind:PerkType = mk("Whirlwind", "Whirlwind",
				"Whirlwind special deal increased damage based on current strength.",
				"You've chosen the 'Whirlwind' perk, making your Whirlwind special stronger.");
		public static const WhirlwindFeral:PerkType = mk("Feral Whirlwind", "Feral Whirlwind",
				"Feral Whirlwind special deal increased damage based on current strength and unarmed bonus.",
				"You've chosen the 'Feral Whirlwind' perk, making your Feral Whirlwind special stronger.");
		public static const Whistles:PerkType = mk("Whistles", "Whistles",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'Whistles' perk, gaining +20% fatigue recovery rate.");
		public static const WildQuiver:PerkType = mk("Wild Quiver", "Wild Quiver",
				"You grab and shoot arrows at blinding speed, gaining an extra shot.",
				"You've chosen the 'Wild Quiver' perk, you combine it with triple attack and manyshot to shoot up to 5 times.");
		public static const WisenedHealer:PerkType = mk("Wisened Healer", "Wisened Healer",
				"Adds wisdom based scaling to healing spells at cost of doubling spells costs.",
				"You've chosen the 'Wisened Healer' perk. Increasing healing spells effects based on current wisdom.");/*
		public static const WispBrigadierGeneral:PerkType = mk("Wisp Brigadier General", "Wisp Brigadier General",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 60% (210% in total).",
				"You've chosen the 'Wisp Brigadier General' perk, training your wisp to Wisp Brigadier General.");*/
		public static const WispCaptain:PerkType = mk("Wisp Captain", "Wisp Captain",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 30% (60% in total).",
				"You've chosen the 'Wisp Captain' perk, training your wisp to Wisp Captain.");
		public static const WispColonel:PerkType = mk("Wisp Colonel", "Wisp Colonel",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 50% (150% in total).",
				"You've chosen the 'Wisp Colonel' perk, training your wisp to Wisp Colonel.");/*
		public static const WispColonelGeneral:PerkType = mk("Wisp Colonel General", "Wisp Colonel General",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 90% (450% in total).",
				"You've chosen the 'Wisp Colonel General' perk, training your wisp to Wisp Lieutenant General.");
		public static const WispFieldMarshal:PerkType = mk("Wisp Field Marshal", "Wisp Field Marshal",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 100% (550% in total).",
				"You've chosen the 'Wisp Field Marshal' perk, training your wisp to Wisp Lieutenant General.");*/
		public static const WispLieutenant:PerkType = mk("Wisp Lieutenant", "Wisp Lieutenant",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 20% (30% in total).",
				"You've chosen the 'Wisp Lieutenant' perk, training your wisp to Wisp Lieutenant.");/*
		public static const WispLieutenantGeneral:PerkType = mk("Wisp Lieutenant General", "Wisp Lieutenant General",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 80% (360% in total).",
				"You've chosen the 'Wisp Lieutenant General' perk, training your wisp to Wisp Lieutenant General.");*/
		public static const WispMajor:PerkType = mk("Wisp Major", "Wisp Major",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 40% (100% in total).",
				"You've chosen the 'Wisp Major' perk, training your wisp to Wisp Major.");/*
		public static const WispMajorGeneral:PerkType = mk("Wisp Major General", "Wisp Major General",
				"Increase wisp commanding aura boosting other summoned pets/minions attack power effects by 70% (280% in total).",
				"You've chosen the 'Wisp Major General' perk, training your wisp to Wisp Brigadier General.");*/
		public static const Wizened:PerkType = mk("Wizened", "Wizened",
				"You are wise, what did you expect, something wise? You do get 10% more soulforce though.",
				"You've chosen the 'Wizened' perk, gaining +10% max Soulforce.")
				.withBuffs({'maxsf_mult':+0.1});
		public static const ZZZ:PerkType = mk("ZZZ", "ZZZ",
				"Sample Text Here/+20% fatigue recovery rate",
				"You've chosen the 'ZZZ' perk, gaining +20% fatigue recovery rate.");
		//Perki obecnie nie używanie nigdzie - do usuniecia lub wykorzystania w czymś innym
		public static const UnlockMind:PerkType = mk("Unlock: Mind", "Unlock: Mind (1st Stage)",
				"Unlocking mind potential grants additional 5 Mana on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Mind (1st Stage)' perk, allowing you to increase passive Mana gains on lvl-up!");
		public static const UnlockMind2ndStage:PerkType = mk("Unlock: Mind (2nd Stage)", "Unlock: Mind (2nd Stage)",
				"Unlocking mind potential grants additional 5 Soulforce on each lvl-up (retroactive effect).",
				"You've chosen the 'Unlock: Mind (2nd Stage)' perk, allowing you to increase passive Soulforce gains on lvl-up!");
		public static const JobSoulArcher:PerkType = mk("Job: Soul Archer", "Job: Soul Archer",
				"You've trained in art of combining soulforce and arrows.",
				"You chose 'Job: Soul Archer' perk, training yourself to become a Soul Archer.").withBuffs({'spe.mult':0.60,'wis.mult':0.20});
		public static const JobArcaneArcher:PerkType = mk("Job: Arcane Archer", "Job: Arcane Archer",
				"You've trained in art of combining magic and arrows.",
				"You chose 'Job: Arcane Archer' perk, training yourself to become a Arcane Archer.").withBuffs({'spe.mult':0.60,'int.mult':0.20});
		public static const JobArcher:PerkType = mk("Job: Archer", "Job: Archer",
				"You've trained in ranged combat.",
				"You chose 'Job: Archer' perk, training yourself to become an Archer.").withBuffs({'str.mult':0.05});
		public static const JobBarbarian:PerkType = mk("Job: Barbarian", "Job: Barbarian",
				"You've trained in using large weapons in fights.",
				"You chose 'Job: Barbarian' perk, training yourself to become a Barbarian.").withBuffs({'str.mult':0.20});
		public static const PrestigeJobGreySage:PerkType = mk("Prestige Job: Grey Sage", "Prestige Job: Grey Sage",
				"You've trained in prestige art of perfect mastery over all forms of aoe magic spells. (+80 to max int - scalable)",
				"You've chosen the 'Prestige Job: Grey Sage' perk, training yourself to became Grey Sage - master of area spells.").withBuffs({'int.mult':0.80,'maxlust_base':+300});

		// Needlework perks
		public static const ChiReflowAttack:PerkType = mk("Chi Reflow - Attack", "Chi Reflow - Attack",
				"Regular attacks boosted, but damage resistance decreased.");
		public static const ChiReflowDefense:PerkType = mk("Chi Reflow - Defense", "Chi Reflow - Defense",
				"Passive damage resistance, but at the cost of speed").withBuffs({'spe.mult':-0.20});
		public static const ChiReflowLust:PerkType = mk("Chi Reflow - Lust", "Chi Reflow - Lust",
				"Lust resistance and Tease are enhanced, but Libido and Sensitivity gains increased.");
		public static const ChiReflowMagic:PerkType = mk("Chi Reflow - Magic", "Chi Reflow - Magic",
				"Magic attacks boosted, but regular attacks are weaker.");
		public static const ChiReflowSpeed:PerkType = mk("Chi Reflow - Speed", "Chi Reflow - Speed",
				"Speed reductions are halved but at the cost of strength").withBuffs({'str.mult': -0.20});

		// Piercing perks
		public static const PiercedCrimstone:PiercedCrimstonePerk = new PiercedCrimstonePerk();
		public static const PiercedIcestone:PiercedIcestonePerk = new PiercedIcestonePerk();
		public static const PiercedFertite:PiercedFertitePerk = new PiercedFertitePerk();
		public static const PiercedFurrite:PerkType = mk("Pierced: Furrite", "Pierced: Furrite",
				"Increases chances of encountering 'furry' foes.");
		public static const PiercedLethite:PerkType = mk("Pierced: Lethite", "Pierced: Lethite",
				"Increases chances of encountering demonic foes.");
		// Cock sock perks
		public static const LustyRegeneration:PerkType = mk("Lusty Regeneration", "Lusty Regeneration",
				"Regenerates 0,5% of HP per round in combat and 1% of HP per hour.");
		public static const MidasCock:PerkType = mk("Midas Cock", "Midas Cock",
				"Increases the gems awarded from victory in battle.");
		public static const PentUp:PentUpPerk = new PentUpPerk();
		public static const PhallicPotential:PerkType = mk("Phallic Potential", "Phallic Potential",
				"Increases the effects of penis-enlarging transformations.");
		public static const PhallicRestraint:PerkType = mk("Phallic Restraint", "Phallic Restraint",
				"Reduces the effects of penis-enlarging transformations.");

		// Non-weapon equipment perks
		public static const Ambition:AmbitionPerk = new AmbitionPerk();
		public static const BlindImmunity:PerkType = mk("Blind Immunity", "Blind Immunity", "Gives PC immunity to enemy blinding effects.");
		public static const BloodMage:PerkType = mk("Blood Mage", "Blood Mage",
				"Spellcasting now consumes health instead of mana!",null,true);
		public static const FairyQueenRegalia:PerkType = mk("Fairy Queen Regalia", "Fairy Queen Regalia",
				"Misdirection, Slutty seduction 10, Increase Fae storm chances to proc multiple status,reduce spellcasting cost by 60%.");
		public static const KrakenBlackDress:PerkType = mk("Kraken black dress", "Kraken black dress",
				"Increase ink spray duration by 1 round and doubles Grapple damage.",null,true);
		public static const LastResort:PerkType = mk("Last Resort", "Last Resort",
				"When mana is too low to cast a spell, automatically cast from hp instead.",null,true);
		public static const Obsession:ObsessionPerk = new ObsessionPerk();
		public static const Sanctuary:PerkType = mk("Sanctuary", "Sanctuary", "Regenerates up to 1% of HP scaling on purity.");
		public static const SeersInsight:SeersInsightPerk = new SeersInsightPerk();
		public static const ScandalousSuccubusClothing:PerkType = mk("Scandalous Succubus Clothing", "Scandalous Succubus Clothing",
				"Slutty seduction 15, Count as naked, +25% to Lust strike tease damage, Double tease experience gained, Raise corruption over time, Incompatible with bra or panty, double the effect of Masochist and Sadist.",null,true);
		public static const SkullOrnament:PerkType = mk("Skull hair ornament", "Skull hair ornament",
				"Raise magic damage by up to 60% based on user corruption.",null,true);
		public static const SluttySeduction:SluttySeductionPerk = new SluttySeductionPerk();
		public static const WellspringOfLust:PerkType = mk("Wellspring of Lust", "Wellspring of Lust",
				"At the beginning of combat, gain lust up to black magic threshold if lust is bellow black magic threshold.",null,true);
		public static const WizardsEnduranceAndSluttySeduction:WizardsEnduranceAndSluttySeductionPerk = new WizardsEnduranceAndSluttySeductionPerk();
		public static const WizardsAndDaoistsEndurance:WizardsAndDaoistsEndurancePerk = new WizardsAndDaoistsEndurancePerk();
		public static const WizardsEndurance:WizardsEndurancePerk = new WizardsEndurancePerk();

		public static function gearPerks():Array{	//Re:EnemyPerkList
			var gPerks:Array = [];
			gPerks.push(Ambition);
			gPerks.push(BlindImmunity);
			gPerks.push(BloodMage);
			gPerks.push(FairyQueenRegalia);
			gPerks.push(KrakenBlackDress);
			gPerks.push(LastResort);
			gPerks.push(Obsession);
			gPerks.push(Sanctuary);
			gPerks.push(SeersInsight);
			gPerks.push(ScandalousSuccubusClothing);
			gPerks.push(SkullOrnament);
			gPerks.push(SluttySeduction);
			gPerks.push(WellspringOfLust);
			gPerks.push(WizardsEnduranceAndSluttySeduction);
			gPerks.push(WizardsAndDaoistsEndurance);
			gPerks.push(WizardsEndurance);
			return gPerks;
		}

		// Melee & Range weapon perks
		public static const Accuracy1:Accuracy1Perk = new Accuracy1Perk();
		public static const Accuracy2:Accuracy2Perk = new Accuracy2Perk();
		public static const BladeWarden:PerkType = mk("Blade-Warden", "Blade-Warden",
				"Enables Resonance Volley soul skill while equipped: Perform a ranged attack where each arrow after the first gets an additional 10% accuracy for every arrow before it.",null,true);
		public static const BodyCultivatorsFocus:BodyCultivatorsFocusPerk = new BodyCultivatorsFocusPerk();
		public static const BodyCultivatorsFocusRange:BodyCultivatorsFocusRangePerk = new BodyCultivatorsFocusRangePerk();
		public static const DaoistsFocus:DaoistsFocusPerk = new DaoistsFocusPerk();
		public static const DaoistsFocusRange:DaoistsFocusRangePerk = new DaoistsFocusRangePerk();
		public static const DexterousSwordsmanship:PerkType = mk("Dexterous swordsmanship", "Dexterous swordsmanship",
				"Increases parry chance by 10% while wielding a weapon.",null,true);
		public static const InariBlessedKimono:PerkType = mk("Inari Blessed Kimono", "Inari Blessed Kimono",
				"Increase the potency of all spells and soulskills by up to 50% based on purity and empower all kitsunes ability. reduce spellcasting cost by 60%.",null,true);
		public static const MageWarden:PerkType = mk("Mage-Warden", "Mage-Warden",
				"Enables Resonance Volley soul skill while equipped: Perform a ranged attack where each arrow after the first gets an additional 10% accuracy for every arrow before it.",null,true);
		public static const SagesKnowledge:SagesKnowledgePerk = new SagesKnowledgePerk();
		public static const StrifeWarden:PerkType = mk("Strife-Warden", "Strife-Warden",
				"Enables Beat of War soul skill while equipped: Attack with low-moderate additional soul damage, gain strength equal to 15% your base strength until end of battle. This effect stacks.",null,true);
		public static const TamamoNoMaeCursedKimono:PerkType = mk("Tamamo no Mae Cursed Kimono", "Tamamo no Mae Cursed Kimono",
				"Increase the potency of all spells and soulskills by up to 50% based on corruption and empower all kitsunes ability. reduce spellcasting cost by 60%.",null,true);
		public static const WildWarden:PerkType = mk("Wild-Warden", "Wild-Warden",
				"Enables Resonance Volley soul skill while equipped: Perform a ranged attack where each arrow after the first gets an additional 10% accuracy for every arrow before it.",null,true);
		public static const WizardsAndDaoistsFocus:WizardsAndDaoistsFocusPerk = new WizardsAndDaoistsFocusPerk();
		public static const WizardsFocus:WizardsFocusPerk = new WizardsFocusPerk();

		public static function weaPerks():Array{	//Re:EnemyPerkList
			var wPerks:Array = [];
			wPerks.push(Accuracy1);
			wPerks.push(Accuracy2);
			wPerks.push(BladeWarden);
			wPerks.push(BodyCultivatorsFocus);
			wPerks.push(BodyCultivatorsFocusRange);
			wPerks.push(DaoistsFocus);
			wPerks.push(DaoistsFocusRange);
			wPerks.push(DexterousSwordsmanship);
			wPerks.push(InariBlessedKimono);
			wPerks.push(MageWarden);
			wPerks.push(SagesKnowledge);
			wPerks.push(StrifeWarden);
			wPerks.push(TamamoNoMaeCursedKimono);
			wPerks.push(WildWarden);
			wPerks.push(WizardsAndDaoistsFocus);
			wPerks.push(WizardsFocus);
			return wPerks;
		}

		// Achievement perks
		public static const BowShooting:BowShootingPerk = new BowShootingPerk();
		public static const BroodMother:PerkType = mk("Brood Mother", "Brood Mother",
				"Pregnancy moves twice as fast as a normal woman's.");
		public static const SpellcastingAffinity:SpellcastingAffinityPerk = new SpellcastingAffinityPerk();
		public static const Cultivation:PerkType = mk("Cultivation", "Cultivation",
				"Allow to cultivate powers of the soul.",//nigdzie nieużyty wcześniej perk name
				"You've chosen the 'Cultivation' perk, starting your journey on the soul cultivation path!");//potem przerobić na coć innego - moze jak perki do czarów i łuku bedzie dawać jakieś korzyści do soul skills po odpowiednio dużej ilości ich użycia czy cos xD

		// Hidden/Deity Jobs perks
		public static const HiddenJobAsura:PerkType = mk("Hidden Job: Asura", "Hidden Job: Asura",
				"You've trained in Way of Asura. Being that reached mastery of unleashing wrath to great effect. (+10% of OverMax Wrath)");
		public static const AbsoluteStrength:PerkType = mk("Absolute Strength", "Absolute Strength",
				"Increase strength based on current amount of wrath as long wrath is above 50% (1:2 ratio). Also wrath outside of combat will not decay and even with correct perks can slowly rise. (+10% of OverMax Wrath)");
		public static const LikeAnAsuraBoss:PerkType = mk("Like A-sura Boss", "Like A-sura Boss",
				"Adds to toggle starting in Asura Form at combat start, increase to physical might rise to 120%/60%/40% of core str/tou/spe. (+10% of OverMax Wrath)");
		public static const ICastAsuraFist:PerkType = mk("I Cast (Asura) Fist", "I Cast (Asura) Fist",
				"Safe treshold for magic/m.specials is calculated based on overmax wrath not max wrath, +50% of base max wrath. (+10% of OverMax Wrath)")
				.withBuffs({'maxwrath_mult':+0.5});
		public static const HiddenJobBloodDemon:PerkType = mk("Hidden Job: Blood Demon", "Hidden Job: Blood Demon",
				"You've trained in the art of blood demons. Beings that reached mastery of using their own or others blood to great effect. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power)");
		public static const WayOfTheBlood:PerkType = mk("Way of the Blood", "Way of the Blood",
				"Allowing you use of your health to substitute using soulforce in almost all soulskills. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power)");
		public static const YourPainMyPower:PerkType = mk("Your Pain My Power", "Your Pain My Power",
				"You absorb all the blood spilled and wrath generated by enemy under Bleed effects into yourself. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power)");
		public static const MyBloodForBloodPuppies:PerkType = mk("My Blood for Blood Puppies", "My Blood for Blood Puppies",
				"During fight small part of your blood from into blood puppies that can attack on your behalf with blood soulskills. When you grow in mastery of blood they would grow stronger with you. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power)");
		public static const AsuraStrength:PerkType = mk("Asura Strength", "Asura Strength",
				"Gain Asura Strength, Asura Form increase to physical might rise to 180%/90%/60% of core str/tou/spe and generate one additional pair of semi-transparent arms. (+10% of OverMax Wrath/Base STR Cap)");
		public static const BloodDemonToughness:PerkType = mk("Blood Demon Toughness", "Blood Demon Toughness",
				"Gain Blood Demon Toughness. When below 0 HP it would negate any negative effect of other perks that would cause negative HP regen. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power/Base TOU Cap, +0,5% HP regen)");
		public static const DeityJobMunchkin:PerkType = mk("Deity Job: Munchkin", "Deity Job: Munchkin",
				"You're Munchkin, an ultimate being that possess a god-like body and powers. (+20% max HP/Lust/Wrath, +10% max SF/Mana/Fatigue, increase limit of negative HP equal to all stats (aside of corruption) added up)")
				.withBuffs({
					'maxlust_mult':+0.2,
					'maxwrath_mult':+0.2,
					'maxmana_mult':+0.1,
					'maxsf_mult':+0.1,
					'maxfatigue_mult':+0.1
				});
		public static const MunchkinAtGym:PerkType = mk("Munchkin @Gym", "Munchkin @Gym",
				"Increase by 5% caps for mutagen, alchemic, knowledge multi.").withBuffs({'str.mult':0.25,'tou.mult':0.25,'spe.mult':0.25,"int.mult":0.25,'wis.mult':0.25,'lib.mult':0.25,'sens':100}, false);
		public static const AsuraToughness:PerkType = mk("Asura Toughness", "Asura Toughness",
				"X th Asura super perk. (+10% of OverMax Wrath/Base TOU Cap)");
		public static const BloodDemonWisdom:PerkType = mk("Blood Demon Wisdom", "Blood Demon Wisdom",
				"X th Blood demon super perk. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power/Base WIS Cap)");
		public static const AsuraSpeed:PerkType = mk("Asura Speed", "Asura Speed",
				"X th Asura super perk. (+10% of OverMax Wrath/Base SPE Cap)");
		public static const BloodDemonIntelligence:PerkType = mk("Blood Demon Intelligence", "Blood Demon Intelligence",
				"X th Blood demon super perk. (+10% of OverMax HP, -5% blood spells/soulskills cost, +10% blood spells/soulskills power/Base INT Cap)");
		public static const MunchkinAtWork:PerkType = mk("Munchkin @Work", "Munchkin @Work",
				"+2 prestige job slots, +1 hidden job slot.");//?increase to overmax HP/Wrath/Lust??
		public static const HiddenJob4:PerkType = mk("Hidden Job: 4", "Hidden Job: 4",
				".");
		public static const HiddenJob3:PerkType = mk("Hidden Job: 3", "Hidden Job: 3",
				".");
		public static const HiddenJob2:PerkType = mk("Hidden Job: 2", "Hidden Job: 2",
				".");
		public static const HiddenJob1:PerkType = mk("Hidden Job: 1", "Hidden Job: 1",
				".");

		// Other super perks
		public static const SuperPerk1:PerkType = mk("Super Perk 1", "Super Perk 1",
				".");
		public static const SuperPerk2:PerkType = mk("Super Perk 2", "Super Perk 2",
				".");
		public static const SuperPerk3:PerkType = mk("Super Perk 3", "Super Perk 3",
				".");

		// Mutation perks
		public static const AcidSpit:PerkType = mk("Acid Spit", "Acid Spit",
				"Allows access to a cave wyrm acid spit attack.");
		public static const AlrauneNectar:PerkType = mk("Alraune Nectar", "Alraune Nectar",
				"You yourself produce an endless supply of alraune nectar.");
		public static const AzureflameBreath:PerkType = mk("Azureflame Breath", "Azureflame Breath",
				"Allows access to a cave wyrm azureflame breath attack.");
		public static const Androgyny:PerkType = mk("Androgyny", "Androgyny",
				"No gender limits on facial masculinity or femininity.");
		public static const AquaticAffinity:PerkType = mk("Aquatic Affinity", "Aquatic Affinity",
				"When in an aquatic battle you gains a +30 to strength and speed.");
		public static const AvatorOfCorruption:PerkType = mk("Avatar of Corruption", "Avatar of Corruption",
				"Your impure body grants you shortened spellcasting cooldown and empowered black and healing magic.");
		public static const AvatorOfPurity:PerkType = mk("Avatar of Purity", "Avatar of Purity",
				"Your pure body grants you shortened spellcasting cooldown and empowered white and healing magic.");
		public static const BasiliskWomb:PerkType = mk("Basilisk Womb", "Basilisk Womb",
				"Enables your eggs to be properly fertilized into basilisks of both genders!");
		public static const BeeOvipositor:PerkType = mk("Bee Ovipositor", "Bee Ovipositor",
				"Allows you to lay eggs through a special organ on your insect abdomen, though you need at least 10 eggs to lay.");
		public static const BicornBlessing:PerkType = mk("Bicorn Blessing", "Bicorn Blessing",
				"Your are blessed with the unholy power of a bicorn and while above 80 corruption your black magic is increased by 20% and lust resistance by 10%.");
		public static const BigHandAndFeet:PerkType = mk("Big hand and feet", "Big hand and feet",
				"Increase strength modifier on unarmed attack by 100%.");
		public static const BimboBody:PerkType = mk("Bimbo Body", "Bimbo Body",
				"Gives the body of a bimbo.  Tits will never stay below a 'DD' cup, libido is raised, lust resistance is raised, and upgrades tease.")
				.withBuffs({'lib.mult':0.50,'sens':45,'maxlust_base':+60});
		public static const BimboBrains:PerkType = mk("Bimbo Brains", "Bimbo Brains",
				"Now that you've drank bimbo liquer, you'll never, like, have the attention span and intelligence you once did!  But it's okay, 'cause you get to be so horny an' stuff!").withBuffs({'int.mult':-0.50});
		public static const BouncyBody:PerkType = mk("Bouncy body", "Bouncy body",
				"Attacks that would deal more than half of your health have a chance to simply punt you around, reducing damage taken by 25%.");
		public static const BroBody:PerkType = mk("Bro Body", "Bro Body",
				"Grants an ubermasculine body that's sure to impress.")
				.withBuffs({'lib.mult':0.50,'sens':45,'maxlust_base':+60});
		public static const BroBrains:PerkType = mk("Bro Brains", "Bro Brains",
				"Makes thou... thin... fuck, that shit's for nerds.").withBuffs({'int.mult':-0.50});
		public static const BullStrength:PerkType = mk("Bull Strength", "Bull Strength",
				"Increase strength by a percentage based on milk or cum production up to 50% of total value.");
		public static const BunnyEggs:PerkType = mk("Bunny Eggs", "Bunny Eggs",
				"Laying eggs has become a normal part of your bunny-body's routine.");
		public static const ColdAffinity:PerkType = mk("Cold Affinity", "Cold Affinity",
				"You have high resistance to cold effects, immunity to the frozen condition, and mastery over ice abilities and magic. However, you are highly susceptible to fire.");
		public static const ColdMastery:PerkType = mk("Cold Mastery", "Cold Mastery",
				"You now have complete control over the ice element adding your own inner power to all cold based attack.");
		public static const CorruptedKitsune:PerkType = mk("Corrupted Kitsune", "Corrupted Kitsune",
				"The mystical energy of the kitsunes surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells, but your method of attaining it has corrupted the transformation, preventing you from achieving true enlightenment.",null,true);
		public static const CorruptedNinetails:PerkType = mk("Corrupted Nine-tails", "Corrupted Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells, but your method of attaining it has corrupted the transformation, preventing you from achieving true enlightenment.",null,true);
		public static const CursedWound:PerkType = mk("Cursed Wound", "CursedWound",
				"All damage dealt by a Kamaitachi’s scythes causes your victims to bleed from cursed wounds. This bleed stacks on itself and cannot be removed by anything short of magic or your will.");
		public static const DarkCharm:PerkType = mk("Dark Charm", "Dark Charm",
				"Allows access to demons charm attacks.");
		public static const DarkenedKitsune:DarkenedKitsunePerk = new DarkenedKitsunePerk();
		public static const DarkSlimeCore:PerkType = mk("Dark Slime Core", "Dark Slime Core",
				"Grants more control over your slimy body, allowing you to go twice as long without fluids.");
		public static const DeadMetabolism:PerkType = mk("Dead metabolism", "Dead metabolism",
				"Kills off hunger. (hunger meter wouldn't decay with time)");
		public static const DemonEnergyThirst:PerkType = mk("Demonic hunger", "Demonic hunger",
				"You can metabolise sex into energy and can feed from your partners orgasms.");
		public static const Diapause:PerkType = mk("Diapause", "Diapause",
				"Pregnancy does not advance normally, but develops quickly after taking in fluids.");
		public static const DisplacerMilkAddict:PerkType = mk("Displacer Milk Addict", "Displacer Milk Addict",
				"Causes you to crave milk frequently.");
		public static const DragonDarknessBreath:PerkType = mk("Dragon darkness breath", "Dragon darkness breath",
				"Allows access to a dragon darkness breath attack.");
		public static const DragonFireBreath:PerkType = mk("Dragon fire breath", "Dragon fire breath",
				"Allows access to a dragon fire breath attack.");
		public static const DragonIceBreath:PerkType = mk("Dragon ice breath", "Dragon ice breath",
				"Allows access to a dragon ice breath attack.");
		public static const DragonLightningBreath:PerkType = mk("Dragon lightning breath", "Dragon lightning breath",
				"Allows access to a dragon lightning breath attack.");
		public static const DragonWaterBreath:PerkType = mk("Dragon water breath", "Dragon water breath",
				"Allows access to a sea dragon water breath attack. Mixing water with electricity may yield surprising results.");
		public static const EasterBunnyBalls:PerkType = mk("Easter bunny balls", "Easter bunny balls",
				"Your balls constantly grows until emptied through your cock, producing eggs.");
		public static const ElectrifiedDesire:PerkType = mk("Electrified Desire", "Electrified Desire",
				"Masturbating only makes you hornier. Furthermore, your ability to entice, tease and zap things is enhanced the more horny you are.");
		public static const ElementalConjurerMindAndBodyDedication:PerkType = mk("Elemental Conjurer Mind and Body Dedication", "Elemental Conjurer Mind and Body Dedication",
				"Removes all negative modifiers to PC max Str/Tou/Spe caused by picking perk Elemental Conjurer Dedication.").withBuffs({'str.mult':0.30,'tou.mult':0.30,'spe.mult':0.30});
		public static const ElementalConjurerMindAndBodyResolve:PerkType = mk("Elemental Conjurer Mind and Body Resolve", "Elemental Conjurer Mind and Body Resolve",
				"Removes all negative modifiers to PC max Str/Tou/Spe caused by picking perk Elemental Conjurer Resolve.").withBuffs({'str.mult':0.15,'tou.mult':0.15,'spe.mult':0.15});
		public static const ElementalConjurerMindAndBodySacrifice:PerkType = mk("Elemental Conjurer Mind and Body Sacrifice", "Elemental Conjurer Mind and Body Sacrifice",
				"Removes all negative modifiers to PC max Str/Tou/Spe caused by picking perk Elemental Conjurer Sacrifice.").withBuffs({'str.mult':0.45,'tou.mult':0.45,'spe.mult':0.45});
		public static const ElvenSense:PerkType = mk("Elven Sense", "Elven Sense",
				"Gain a chance to dodge attacks and an increased chance to score critical hits.");
		public static const EndlessHunger:PerkType = mk("Endless Hunger", "Endless Hunger",
				"Your hunger progress at twice the normal speed but must be sated through oral sex. As a result, you are completely unable to obtain a body shape larger than a thin frame.");
		public static const Enigma:PerkType = mk("Enigma", "Enigma",
				"Your bottomless insight somehow transmutes itself into raw power, allowing you to add half of your intelligence and wisdom as a modifier to strength and toughness.");
		public static const EnergyDependent:PerkType = mk("Energy dependent", "Energy dependent",
				"You become faster, smarter and clearer of mind when well fed in life force. However you become dim witted and stiffer than a corpse when starved. You cannot recover soul force through normal means.");
		public static const EnlightenedKitsune:PerkType = mk("Enlightened Kitsune", "Enlightened Kitsune",
				"The mystical energy of the kitsunes surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells.",null,true);
		public static const EnlightenedNinetails:PerkType = mk("Enlightened Nine-tails", "Enlightened Nine-tails",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  Your boundless magic allows you to recover quickly after casting spells.",null,true);
		public static const EzekielBlessing:PerkType = mk("Ezekiel Blessing", "Ezekiel Blessing",
				"You've received the blessing of Ezekiel, enhancing your body and mind. +10 to all stats.").withBuffs({'sens':10}, false);
		public static const Feeder:PerkType = mk("Feeder", "Feeder",
				"Lactation does not decrease and gives a compulsion to breastfeed others.");
		public static const FenrirSpikedCollar:PerkType = mk("Fenrir's Gleipnir Collar", "Fenrir's Gleipnir Collar",
				"The spectral chain Gleipnir and runed collar-spikes increase damage reduction by 10%, but you are forever chained to the role of the Fenrir.");
		public static const FenrirSpiritstrike:PerkType = mk("Fenrir's Spirit strike", "Fenrir's Spirit strike",
				"Fenrir's power allows you to deal devastating damage with your bite attack to any creature possessing a soul.");
		public static const Ferocity:PerkType = mk("Ferocity", "Ferocity",
				"You can remains conscious and continue fighting even if your HP is below 0. You gonna loose 1% of max HP each round and would loose fight when negative HP reach 7% (or more if PC got other perks to stay undefeated below 0%) of max HP.");
		public static const FireAffinity:PerkType = mk("Fire Affinity", "Fire Affinity",
				"You have high resistance to fire effects, immunity to the burn condition, and mastery over fire abilities and magic. However, you are highly susceptible to ice.");
		public static const FlawlessBody:PerkType = mk("Flawless Body", "Flawless Body",
				"Your elven body with its flawless form and skin is so alluring it reinforces your ability to tease.");
		public static const Flexibility:PerkType = mk("Flexibility", "Flexibility",
				"Grants cat-like flexibility.  Useful for dodging and 'fun'.");
		public static const FreezingBreath:PerkType = mk("Freezing Breath (F)", "Freezing Breath (F)",
				"Allows access to Fenrir (AoE) freezing breath attack.");
		public static const FreezingBreathYeti:PerkType = mk("Freezing Breath (Y)", "Freezing Breath (Y)",
				"Allows access to Yeti freezing breath attack.");
		public static const FutaFaculties:PerkType = mk("Futa Faculties", "Futa Faculties",
				"It's super hard to think about stuff that like, isn't working out or fucking!").withBuffs({'int.mult':-0.50});
		public static const FutaForm:PerkType = mk("Futa Form", "Futa Form",
				"Ensures that your body fits the Futa look (Tits DD+, Dick 8\"+, & Pussy).  Also keeps your lusts burning bright and improves the tease skill.")
				.withBuffs({'lib.mult':0.50,'sens':45,'maxlust_base':+60});
		public static const GeneticMemory:PerkType = mk("Genetic Memory", "Genetic Memory",
				"Your body can remember almost any transformation it undergone.");
		public static const Ghostslinger:PerkType = mk("Ghost-slinger", "Ghost-slinger",
				"Increases damage with guns and thrown weapons by 15%.");
		public static const GoblinoidBlood:PerkType = mk("Goblinoid blood", "Goblinoid blood",
				"Your blood is highly susceptible to chemical drugs, stimulants and poisons.");
		public static const HaltedVitals:PerkType = mk("Halted vitals", "Halted vitals",
				"Your vitals are frozen in time by the magic of the curse tag, allowing you to live without the need for breathing, eating and a heartbeat. It also reduces damage taken from physical attacks by 20%. Furthermore your vitality is based of your libido rather then your toughness.");
		public static const HarpySong:PerkType = mk("Harpy Song", "Harpy Song",
				"Your voice is supernaturaly enhanced and may be used during battle to arouse foes.");
		public static const HarpyWomb:PerkType = mk("Harpy Womb", "Harpy Womb",
				"Increases all laid eggs to large size so long as you have harpy legs and a harpy tail.");
		public static const HydraAcidBreath:PerkType = mk("Hydra acid breath", "Hydra acid breath",
				"Allows access to a hydra acid breath attack.");
		public static const HydraRegeneration:PerkType = mk("Hydra Regeneration", "Hydra Regeneration",
				"(Amount of hydra heads)% health and (Amount of hydra heads) points of fatigue regeneration but double hunger decaying speed. Stops for 5 rounds when damaged by fire.");
		public static const IcyFlesh:PerkType = mk("Icy flesh", "Icy flesh",
				"You are about as frigid and dead as a corpse however your mastery of ice magic grants you the ability to harden your flesh to the durability of diamonds. Gain an intelligence modifier as a bonus to health calculation equal to that of toughness as well as 1% regeneration. Gain an extra 40% resistance to cold.");
		public static const ImprovedVenomGland:PerkType = mk("Improved venom gland", "Improved venom gland",
				"Increase slightly your venom max capacity and refill speed.");
		public static const ImprovedVenomGlandEx:PerkType = mk("Improved venom gland (Ex)", "Improved venom gland (Ex)",
				"Increase your venom max capacity and refill speed. Decrease by 25% costs of specials/passives that req. use of venom/web.");
		public static const ImprovedVenomGlandSu:PerkType = mk("Improved venom gland (Su)", "Improved venom gland (Su)",
				"Increase by large margin your venom max capacity and refill speed. Venom specials effects increased by 100% at 50% increased cost.");
		public static const Incorporeality:PerkType = mk("Incorporeality", "Incorporeality",
				"Allows you to fade into a ghost-like state and temporarily possess others.");
		public static const InkSpray:PerkType = mk("Ink Spray", "Ink Spray",
				"Allows you to shoot blinding and probably slightly arousing ink out of your genitalia similar like octopus.");
		public static const Insanity:PerkType = mk("Insanity", "Insanity",
				"You have become immune to anything that would damage your mind and gained increased insight however your unhinged personality greatly weakens your wisdom.").withBuffs({'int.mult':0.20,'wis.mult':-0.40});
		public static const JunglesWanderer:PerkType = mk("Jungle’s Wanderer", "Jungle’s Wanderer",
				"Your nimble body has adapted to moving through jungles and forests, evading enemy attacks with ease and making yourself harder to catch. (+35 to the Evasion percentage)");
		public static const KitsuneEnergyThirst:PerkType = mk("Kitsune hunger", "Kitsune hunger",
				"You can metabolise sex into life force and can feed from your partners orgasms.");
		public static const KnowledgeIsPower:PerkType = mk("Knowledge is power", "Knowledge is power",
				"You become more powerful the more you know about Mareth. Increase spell and physical damage by a percentage based on how much of the codex was read.");
		public static const LifeLeech:PerkType = mk("Life leech", "Life leech",
				"Your unarmed strike steals vital energy from your victims, dealing 5% extra damage and restoring 1% mana, health, fatigue and soulforce per hit.");
		public static const Lycanthropy:PerkType = mk("Lycanthropy", "Lycanthropy",
				"Your strength and urges are directly tied to the cycle of the moon. Furthermore, your skin is more resistant to physical damage and your claws are sharper than normal.");
		public static const LycanthropyDormant:PerkType = mk("Dormant Lycanthropy", "Dormant Lycanthropy",
				"You sometimes hear echoes of the call of the moon. If you were more of a werewolf you likely would feel its pull again. A lycanthrope is never truly cured.");
		//public static const Vulpesthropy:PerkType = mk("Vulpesthropy", "Vulpesthropy",
		//		"Your strength and urges are directly tied to the cycle of the moon. Furthermore, your skin is more resistant to magical damage       .");
		//public static const VulpesthropyDormant:PerkType = mk("Dormant Vulpesthropy", "Dormant Vulpesthropy",
		//		"You sometimes hear echoes of the call of the moon. If you were more of a werefox you likely would feel its pull again. A vulpesthrope is never truly cured.")
		public static const LactaBovineImmunity:PerkType = mk("Lacta Bovine Immunity", "Lacta Bovine Immunity",
				"You are seldom immune to all the dangerous effect of minotaur cum but you are also naturaly addicted to it.");
		public static const LightningAffinity:PerkType = mk("Lightning Affinity", "Lightning Affinity",
				"Increase all damage dealt with lightning spells by 100% and reduce lightning damage taken by 50%.");
		public static const LightningClaw:PerkType = mk("Lightning claw", "Lightning claw",
				"Your natural weapons are charged with raiju electricity adding a lusty discharge effect to all attacks.");
		public static const LizanRegeneration:PerkType = mk("Lizan Regeneration", "Lizan Regeneration",
				"Regenerates 1.5% of HP per round in combat and 3% of HP per hour and additional slightly increasing maximal attainable natural healing rate.");
		public static const FromTheFrozenWaste:PerkType = mk("From the frozen waste", "Lord of the Frozen Wastes",
				"The icy wastes where winter reigns are your domain. You are resistant to cold but vulnerable to heat.");
		public static const Lustzerker:PerkType = mk("Lustzerker", "Lustzerker",
				"Lustserking increases attack and physical defenses resistance but reduces lust resistance.")
				.withBuffs({'maxwrath_base':+500});
		public static const ManticoreCumAddict:PerkType = mk("Manticore Cum Addict", "Manticore Cum Addict",
				"Causes you to crave cum frequently.  Yet at the same time grants you immunity to Minotaur Cum addiction.");
		public static const MantisOvipositor:PerkType = mk("Mantis Ovipositor", "Mantis Ovipositor",
				"Allows you to lay eggs through a special organ on your insect abdomen, though you need at least 10 eggs to lay.");
		public static const MilkMaid:MilkMaidPerk = new MilkMaidPerk();
		public static const MinotaurCumAddict:PerkType = mk("Minotaur Cum Addict", "Minotaur Cum Addict",
				"Causes you to crave minotaur cum frequently.  You cannot shake this addiction.");
		public static const MinotaurCumResistance:PerkType = mk("Minotaur Cum Resistance", "Minotaur Cum Resistance",
				"You can never become a Minotaur Cum Addict. Grants immunity to Minotaur Cum addiction.");
		public static const MindbreakerBrain1toX:MindBreakerBrain = new MindBreakerBrain();
		//public static const ELFElvenSpearDancingFlurry1to4:ELFElvenSpearDancingFlurry = new ELFElvenSpearDancingFlurry();
		public static const NaturalHerbalism:PerkType = mk("Natural herbalism", "Natural herbalism",
				"Gain three times as many herbs and items from gathering and crafting. Poultice heals for 50% more. Gain herbalism experience faster.");
		public static const Necromancy:PerkType = mk("Necromancy", "Necromancy",
				"Black magic effectiveness is increased by 50%. Soulforce regenerate passively by 2%.");//, Hex and Necromancy		 and recharge 1 round faster
		public static const NinetailsKitsuneOfBalance:PerkType = mk("Nine-tails Kitsune of Balance", "Nine-tails Kitsune of Balance",
				"The mystical energy of the nine-tails surges through you, filling you with phenomenal cosmic power!  You tread the narrow path between corruption and true enlightment maintaining a balance that allow to fuse both sides powers.",null,true);
		public static const TrueSeeing:PerkType = mk("True seeing", "True seeing",
				"Your vision is magical in nature and see the world as it truly is defeating glamors, illusions and spatial displacement. You also have a +20% to your base accuracy from your peerless view.");
		public static const Omnicaster:PerkType = mk("Omnicaster", "Omnicaster",
				"Your magic power is as manyfold as the number of your eyes. Deal less individual damage but cast multiple spells at the same time.");
		public static const Oviposition:PerkType = mk("Oviposition", "Oviposition",
				"Causes you to regularly lay eggs when not otherwise pregnant.");
		public static const PhantomShooting:PerkType = mk("Phantom Shooting", "Phantom Shooting",
				"Thanks to your ghostly form, throwing weapons and firearms now drains some of your ectoplasm with each use instead of using ammunition. (+5% dmg)");
		public static const PhoenixFireBreath:PerkType = mk("Phoenix fire breath", "Phoenix fire breath",
				"Allows access to a phoenix fire breath attack.");
		public static const PlantKnowledge:PerkType = mk("Plant knowledge", "Plant knowledge",
				"Your nature as a plant gives you an instinctual knowledge of herbalism. Add some of your libido to your herbalism skill scaling and gain herbalism experience faster.");
		public static const PoisonNails:PerkType = mk("Poison nails", "Poison nails",
				"Your nails inflict a deadly poison on strike, damaging your foe’s toughness, speed and arousing them.");
		public static const PsionicEmpowerment:PerkType = mk("Psionic Empowerment", "Psionic Empowerment",
			"Your powers expands in accordance with each new convert that joins the sisterhood hivemind.");
		public static const PurityBlessing:PerkType = mk("Purity Blessing", "Purity Blessing",
				"Reduces the rate at which your corruption, libido, and lust increase. Reduces minimum libido and lust slightly.");
		public static const RapierTraining:PerkType = mk("Rapier Training", "Rapier Training",
				"After finishing of your training, increase attack power of any rapier you're using.");
		public static const Rigidity:PerkType = mk("Rigidity", "Rigidity",
				"Your cadaverous rigidity prevents any form of escape in battle.");
		public static const SatyrSexuality:PerkType = mk("Satyr Sexuality", "Satyr Sexuality",
				"Thanks to your satyr biology, you now have the ability to impregnate both vaginas and asses. Also increases your virility rating. (Anal impregnation not implemented yet)");
		public static const SlimeCore:PerkType = mk("Slime Core", "Slime Core",
				"Grants more control over your slimy body, allowing you to go twice as long without fluids.");
		public static const SpiderOvipositor:PerkType = mk("Spider Ovipositor", "Spider Ovipositor",
				"Allows you to lay eggs through a special organ on your arachnid abdomen, though you need at least 10 eggs to lay.");
		public static const StrengthOfStone:PerkType = mk("Strenght of stone", "Strenght of stone",
				"Add half of the gargoyle toughness as a bonus to strength.");
		public static const SuperStrength:PerkType = mk("Super strength", "Super strength",
				"Unarmed strike damage modifier from strength is doubled.");
		public static const ThickSkin:PerkType = mk("Thick Skin", "Thick Skin",
				"Toughens your dermis to provide 2 points of armor and 1 point of magic resistance.");
		public static const TitanicStrength:PerkType = mk("Titanic Strength", "Titanic Strength",
				"Increase max Strength by a percentage equal to the size in ft of the player x4.");
		public static const TransformationResistance:PerkType = mk("Transformation Resistance", "Transformation Resistance",
				"Reduces the likelihood of undergoing a transformation. Disables Bad Ends from transformative items.");
		public static const UnnaturalStrength:PerkType = mk("Unnatural Strength", "Unnatural Strength",
				"The more sated you are the stronger you get, although your satisfaction is fleeting.");
		public static const WendigoCurse:PerkType = mk("Wendigo Curse", "Wendigo Curse",
				"Your body and soul has been cursed by a wendigo. Transformative no longer have an effect on you.");
		public static const ZenjisInfluence1:PerkType = mk("Zenji's influence 1", "Zenji's influence 1",
				"Increases maximum mana and fatigue by 10%.")
				.withBuffs({'maxmana_mult':+0.10,'maxfatigue_mult':+0.10});
		public static const ZenjisInfluence2:PerkType = mk("Zenji's influence 2", "Zenji's influence 2",
				"Reduces effect from curses by 40%.");
		public static const ZenjisInfluence3:PerkType = mk("Zenji's influence 3", "Zenji's influence 3",
				"Reduces physical special cost by 20%. Increase physical special damage by 50% and spellpower by 30%.");

		// Quest, Event & NPC perks
		public static const AffinityGnome:PerkType = mk("Affinity (Gnome)", "Affinity (Gnome)",
				"Gain a boon based on the terrain, abundance of plants grants regeneration 15% while rocky ground gives +20% Damage reduction. Aquatic or snowy terrain gives nothing.");
		public static const AffinityIgnis:PerkType = mk("Affinity (Ignis)", "Affinity (Ignis)",
				"+100% fire damage dealt +100% ice damage taken, takes massive damage (5% max HP) per round while underwater.");
		public static const AffinitySylph:PerkType = mk("Affinity (Sylph)", "Affinity (Sylph)",
				"When outdoors you are considered to be permanently flying, allowing you to use great dive and flying skills at will. Useless underwater.");
		public static const AffinityUndine:PerkType = mk("Affinity (Undine)", "Affinity (Undine)",
				"Can breath underwater and gain +50 to speed and spell power while underwater. Weak to electricity (-100% resistance).");
		public static const AdvancedLeadership:PerkType = mk("Advanced Leadership", "Advanced Leadership",
				"Allows to form 4 people party.");
		public static const AuraOfCorruption:PerkType = mk("Aura of Corruption", "Aura of Corruption",
				"You radiate corruption, tainting everything near you with uncontrollable lust.");
		public static const AuraOfPurity:PerkType = mk("Aura of Purity", "Aura of Purity",
				"Those of impure heart who come close to you are seared by holy fire and blinded by your inner light.");
		public static const BasicLeadership:PerkType = mk("Basic Leadership", "Basic Leadership",
				"Allows to form 2 people party.");
		public static const BasiliskResistance:PerkType = mk("Basilisk Resistance", "Basilisk Resistance",
				"Grants immunity to Basilisk's paralyzing gaze. Disables Basilisk Bad End.");
		public static const BodyTempering:BodyTemperingPerk = new BodyTemperingPerk();
		public static const BulgeArmor:PerkType = mk("Bulge Armor", "Bulge Armor",
				"Grants a 5 point damage bonus to dick-based tease attacks.");
		public static const Cornucopia:PerkType = mk("Cornucopia", "Cornucopia",
				"Vaginal and Anal capacities increased by 30.");
		public static const DemonicLethicite:PerkType = mk("Demonic Lethicite", "Demonic Lethicite",
				"Improves soulforce and makes you more demonic.");//Effects: maxSoulforce += lib; +1 demonscore; 10 min corruption
		public static const DemonSlayer:DemonSlayerPerk = new DemonSlayerPerk();
		public static const DualMind:PerkType = mk("Dual Mind", "Dual Mind",
				"Greatly empower the tease ability.");
		public static const EclassHeavenTribulationSurvivor:PerkType = mk("E class Heaven Tribulation Survivor", "E class Heaven Tribulation Survivor",
				"You have survived the fourth trial on cultivation path: E class Heaven Tribulation. +25% to all stats.").withBuffs({'str.mult':0.25,'tou.mult':0.25,'spe.mult':0.25,'int.mult':0.25,'wis.mult':0.25,'lib.mult':0.25,'sens':125}, false);
		public static const ElementalBody:PerkType = mk("Elemental", "Elemental",
				"You are currently in elemental form.");
		public static const ELFArcherCovenant:PerkType = mk("Archer Covenant", "Archer Covenant",
				"As an elf, gain a 25% increase to bow damage when not wielding a shield or a melee weapon other than a Spear.");
		public static const ELFElvenBattleStyle:PerkType = mk("Elven Battle Style", "Elven Battle Style",
				"As an elf, substitute your strenght to your intelligence modifier for spear damage when full attacking.");
		public static const ELFElvenSpearDancingTechnique:PerkType = mk("Elven Spear Dancing Technique", "Elven Spear Dancing Technique",
				"As an elf, deal additional tease damage based on your speed while wielding a spear.");
		public static const ELFElvenSpearDancingFlurry1to4:ELFElvenSpearDancingFlurry = new ELFElvenSpearDancingFlurry();
		public static const ELFMasterShot:PerkType = mk("Master Shot", "Master Shot",
				"As an elf, add one extra attack to archery full attacks.");
		public static const ElvenBounty:ElvenBountyPerk = new ElvenBountyPerk();
		public static const ElvenRangerArmor:PerkType = mk("Elven Ranger Armor", "Elven Ranger Armor",
				"+50% to Bow and spear damage, Count as naked, Slutty seduction +8.");
		public static const FclassHeavenTribulationSurvivor:PerkType = mk("F class Heaven Tribulation Survivor", "F class Heaven Tribulation Survivor",
				"You have survived the third trial on cultivation path: F class Heaven Tribulation. +20% to all stats.").withBuffs({'str.mult':0.20,'tou.mult':0.20,'spe.mult':0.20,'int.mult':0.20,'wis.mult':0.20,'lib.mult':0.20,'sens':100}, false);
		public static const FeralHunter:FeralHunterPerk = new FeralHunterPerk();
		public static const FerasBoonAlpha:PerkType = mk("Fera's Boon - Alpha", "Fera's Boon - Alpha",
				"Increases the rate your cum builds up and cum production in general.");
		public static const FerasBoonBreedingBitch:PerkType = mk("Fera's Boon - Breeding Bitch", "Fera's Boon - Breeding Bitch",
				"Increases fertility and reduces the time it takes to birth young.");
		public static const FerasBoonMilkingTwat:PerkType = mk("Fera's Boon - Milking Twat", "Fera's Boon - Milking Twat",
				"Keeps your pussy from ever getting too loose and increases pregnancy speed.");
		public static const FerasBoonSeeder:PerkType = mk("Fera's Boon - Seeder", "Fera's Boon - Seeder",
				"Increases cum output by 1,000 mLs.");
		public static const FerasBoonWideOpen:PerkType = mk("Fera's Boon - Wide Open", "Fera's Boon - Wide Open",
				"Keeps your pussy permanently gaped and increases pregnancy speed.");
		public static const FireLord:PerkType = mk("Fire Lord", "Fire Lord",
				"Akbal's blessings grant the ability to breathe burning green flames.");
		public static const FluidBody:PerkType = mk("Fluid Body", "Fluid Body",
				"You are extremely resilient to physical strike when naked reducing physical damage taken by 50% but become aroused as attacks penetrates you. You also can slip out of any mundane grapple without effort (100% escape chance).");
		public static const GargoyleCorrupted:PerkType = mk("Corrupted Gargoyle", "Corrupted Gargoyle",
				"You need constant intakes of sexual fluids to stay alive.");
		public static const GargoylePure:PerkType = mk("Gargoyle", "Pure Gargoyle",
				"Need to gain sustenance from soulforce to stay alive.");
		public static const GclassHeavenTribulationSurvivor:PerkType = mk("G class Heaven Tribulation Survivor", "G class Heaven Tribulation Survivor",
				"You have survived the second trial on cultivation path: G class Heaven Tribulation. +15% to all stats.").withBuffs({'str.mult':0.15,'tou.mult':0.15,'spe.mult':0.15,'int.mult':0.15,'wis.mult':0.15,'lib.mult':0.15,'sens':75}, false);
		public static const HclassHeavenTribulationSurvivor:PerkType = mk("H class Heaven Tribulation Survivor", "H class Heaven Tribulation Survivor",
				"You have survived the first trial on cultivation path: H class Heaven Tribulation. +10% to all stats.").withBuffs({'str.mult':0.10,'tou.mult':0.10,'spe.mult':0.10,'int.mult':0.10,'wis.mult':0.10,'lib.mult':0.10,'sens':50}, false);
		public static const Hellfire:PerkType = mk("Hellfire", "Hellfire",
				"Grants a corrupted fire breath attack, like the hellhounds in the mountains.");
		public static const IntermediateLeadership:PerkType = mk("Intermediate Leadership", "Intermediate Leadership",
				"Allows to form 3 people party.");
		public static const LuststickAdapted:PerkType = mk("Luststick Adapted", "Luststick Adapted",
				"Grants immunity to the lust-increasing effects of lust-stick and allows its use.");
		public static const MagicalFertility:MagicalFertilityPerk = new MagicalFertilityPerk();
		public static const MagicalVirility:MagicalVirilityPerk = new MagicalVirilityPerk();
		public static const MaraesGiftButtslut:PerkType = mk("Marae's Gift - Buttslut", "Marae's Gift - Buttslut",
				"Makes your anus provide lubrication when aroused.");
		public static const MaraesGiftFertility:PerkType = mk("Marae's Gift - Fertility", "Marae's Gift - Fertility",
				"Greatly increases fertility and halves base pregnancy speed.");
		public static const MaraesGiftProfractory:PerkType = mk("Marae's Gift - Profractory", "Marae's Gift - Profractory",
				"Causes your cum to build up at 3x the normal rate.");
		public static const MaraesGiftStud:PerkType = mk("Marae's Gift - Stud", "Marae's Gift - Stud",
				"Increases your cum production and potency greatly.");
		public static const MarbleResistant:PerkType = mk("Marble Resistant", "Marble Resistant",
				"Provides resistance to the addictive effects of bottled LaBova milk.");
		public static const MarblesMilk:PerkType = mk("Marble's Milk", "Marble's Milk",
				"Requires you to drink LaBova milk frequently or eventually die.  You cannot shake this addiction.");
		public static const MightyFist:PerkType = mk("Mighty Fist", "Mighty Fist",
				"Regular fist attacks now have a chance to cause stun and fist damage is increased by 5 (x NG tier).");
		public static const Misdirection:PerkType = mk("Misdirection", "Misdirection",
				"Grants additional evasion chances while wearing Raphael's red bodysuit or any other agile armor.");
		public static const MorphicWeaponry:PerkType = mk("Morphic Weaponry", "Morphic Weaponry",
				"Gains a number of extra tentacle-like natural weapon attacks based on your level (+1 per 10 level).");
		public static const OmnibusGift:PerkType = mk("Omnibus' Gift", "Omnibus' Gift",
				"Increases minimum lust but provides some lust resistance.")
				.withBuffs({'maxlust_base':+45});
		public static const OneTrackMind:PerkType = mk("One Track Mind", "One Track Mind",
				"Your constant desire for sex causes your sexual organs to be able to take larger insertions and disgorge greater amounts of fluid.");
		public static const Phylactery:PerkType = mk("Phylactery", "Phylactery",
				"Your soul has been safely stored into a phylactery allowing you to fully unlock your potential as a demon.").withBuffs({'int.mult':0.75});
		public static const PilgrimsBounty:PerkType = mk("Pilgrim's Bounty", "Pilgrim's Bounty",
				"Causes you to always cum as hard as if you had max lust.");
		public static const ProductivityDrugs:PerkType = new ProductivityDrugsPerk();
		public static const PureAndLoving:PerkType = mk("Pure and Loving", "Pure and Loving",
				"Your caring attitude towards love and romance makes you slightly more resistant to lust and corruption.");
		public static const SenseCorruption:PerkType = mk("Sense Corruption", "Sense Corruption",
				"Allow you to determine how corrupted or pure the enemy is.");
		public static const SenseWrath:PerkType = mk("Sense Wrath", "Sense Wrath",
				"Allow you to determine how much wrath the enemy has.");
		public static const SensualLover:PerkType = mk("Sensual Lover", "Sensual Lover",
				"Your sensual attitude towards love and romance makes your tease ability slightly more effective.");
		public static const SoulSense:PerkType = mk("Soul Sense", "Soul Sense",
				"Your strong affinity toward soullforce helped to denvelop another sense called 'Soul Sense' by a fellow soul cultivators.");
		public static const SoulTempering:SoulTemperingPerk = new SoulTemperingPerk();
		public static const TransformationImmunity:PerkType = mk("Construct Transformation immunity", "Construct Transformation Immunity",
				"As a magical construct you are immune to all effects that change the body of living beings, including most transformatives on Mareth (work as the regular transformative resistance except it reduce the odds of getting a body part tfed to 0 although stats increasing effects still could be triggered).");
		public static const TransformationImmunityAtlach:PerkType = mk("Atlach Nacha Transformation immunity", "Eldritch Transformation Immunity",
				"Your body is far too warped by eldritch powers to be transformed into anything else (work as the regular transformative resistance except it reduce the odds of getting a body part tfed to 0 although stats increasing effects still could be triggered).");
		public static const TransformationImmunityFairy:PerkType = mk("Fae Transformation immunity", "Fae Transformation Immunity",
				"Fae magic has turned you into a full fairy, lacking a normal human constitution you have become immune to transformations (work as the regular transformative resistance except it reduce the odds of getting a body part tfed to 0 although stats increasing effects still could be triggered).");
		public static const TrollResistance:PerkType = mk("Troll Resistance", "Troll Resistance",
				"Your troll hide grants you protection from magical effects. (Increases magic resist by 15% (fire resist by 7,5%))");
		public static const Undeath:PerkType = mk("Undeath", "Undeath",
				"With a body that lacks a heartbeat, breath or working digestive system you are unable to gain benefit from transformative items. You're bodily functions are pretty much dead for lack of a better word (it reduce the odds of getting a body part tf'd to 0%).");
		public static const UnicornBlessing:PerkType = mk("Unicorn Blessing", "Unicorn Blessing",
				"You are blessed with the power of a unicorn and while below 20 corruption all white magic spells are 20% stronger and lust resistance increased by 10%.");
		public static const Venomancy:PerkType = mk("Venomancy", "Venomancy",
				"Grants the Venomancy ability. While active, apply venom effect to spellcasting the venom benefiting from caster perks multipliers but cost a charge each time.")
		public static const Whispered:PerkType = mk("Whispered", "Whispered",
				"Akbal's blessings grant limited telepathy that can induce fear.");

		public static const ControlledBreath:ControlledBreathPerk = new ControlledBreathPerk();
		public static const CleansingPalm:CleansingPalmPerk = new CleansingPalmPerk();
		public static const Enlightened:EnlightenedPerk = new EnlightenedPerk();
		public static const StarSphereMastery:StarSphereMasteryPerk = new StarSphereMasteryPerk();

		// Monster perks
		// Please add any perks below to the enemyPerkList below. Required for PerkDB filtering of PC-unobtainable perks.
		public static const Acid:PerkType = mk("Acid", "Acid", "");
		public static const AlwaysSuccesfullRunaway:PerkType = mk("Always Succesfull Runaway", "Always Succesfull Runaway", "");
		public static const DarknessNature:PerkType = mk("Darkness Nature", "Darkness Nature", "");
		public static const DarknessVulnerability:PerkType = mk("Darkness Vulnerability", "Darkness Vulnerability", "");//NYU
		public static const Enemy300Type:PerkType = mk("300-type enemy", "300-type enemy", "");
		public static const EnemyBeastOrAnimalMorphType:PerkType = mk("Beast or Animal-morph enemy type", "Beast or Animal-morph enemy type", "");
		public static const EnemyBossType:PerkType = mk("Boss-type enemy", "Boss-type enemy", "");
		public static const EnemyChampionType:PerkType = mk("Champion-type enemy", "Champion-type enemy", "");//NYU
		public static const EnemyColossalType:PerkType = mk("Colossal-sized type enemy", "Colossal-sized type enemy", "");//50+ ft. tall   //NYU
		public static const EnemyConstructType:PerkType = mk("Construct-type enemy", "Construct-type enemy", "");
		public static const EnemyElementalType:PerkType = mk("Elemental-type enemy", "Elemental-type enemy", "");
		public static const EnemyEliteType:PerkType = mk("Elite-type enemy", "Elite-type enemy", "");//NYU
		public static const EnemyFeralType:PerkType = mk("Feral-type enemy", "Feral-type enemy", "");
		public static const EnemyFleshConstructType:PerkType = mk("Flesh Construct-type enemy", "Flesh Construct-type enemy", "");
		public static const EnemyForBeginnersType:PerkType = mk("For Beginners-type enemy", "For Beginners-type enemy", "");
		public static const EnemyGhostType:PerkType = mk("Ghost-type enemy", "Ghost-type enemy", "");
		public static const EnemyGigantType:PerkType = mk("Gigant-sized type enemy", "Gigant-sized type enemy", "");//22+ ft. tall
		public static const EnemyGodType:PerkType = mk("God-type enemy", "God-type enemy", "");
		public static const EnemyGooType:PerkType = mk("Goo-type enemy", "Goo-type enemy", "");
		public static const EnemyGroupType:PerkType = mk("Group-type enemy", "Group-type enemy", "");
		public static const EnemyHugeType:PerkType = mk("Huge-sized type enemy", "Huge-sized type enemy", "");//9+ ft. tall
		public static const EnemyLargeGroupType:PerkType = mk("Large Group-type enemy", "Large Group-type enemy", "");
		public static const EnemyPlantType:PerkType = mk("Plant-type enemy", "Plant-type enemy", "");
		public static const EnemyTrueDemon:PerkType = mk("True Demon-type enemy", "True Demon-type enemy", "");
		public static const EnemyResiliance:PerkType = mk("Resiliance Enemy", "Resiliance Enemy", "");
		public static const FireNature:PerkType = mk("Fire Nature", "Fire Nature", "");
		public static const FireVulnerability:PerkType = mk("Fire Vulnerability", "Fire Vulnerability", "");
		public static const IceNature:PerkType = mk("Ice Nature", "Ice Nature", "");
		public static const IceVulnerability:PerkType = mk("Ice Vulnerability", "Ice Vulnerability", "");
		public static const LightningNature:PerkType = mk("Lightning Nature", "Lightning Nature", "");
		public static const LightningVulnerability:PerkType = mk("Lightning Vulnerability", "Lightning Vulnerability", "");
		public static const MonsterRegeneration:PerkType = mk("Monster Regeneration", "Monster Regeneration", "");
		public static const NoExpGained:PerkType = mk("No Exp Gained", "No Exp Gained", "");
		public static const NoGemsLost:PerkType = mk("No Gems Lost", "No Gems Lost", "");
		public static const Sentience:PerkType = mk("Sentience", "Sentience", "");
		public static const ShieldWielder:PerkType = mk("Shield wielder", "Shield wielder", "");
		public static const TeaseResistance:PerkType = mk("Tease Resistance", "Tease Resistance", "");//NYU
		public static const UniqueNPC:PerkType = mk("Unique npc", "Unique npc", "");

		//Ugly workaround to not having a proper list of specific-type perks.
		//Tagging system for perks by classification would help, similar to WeaponsLib.
		public static function enemyPerkList():Array{
			var ePerkL:Array = [];
			ePerkL.push(Acid);
			ePerkL.push(AlwaysSuccesfullRunaway);
			ePerkL.push(DarknessNature);
			ePerkL.push(DarknessVulnerability);
			ePerkL.push(Enemy300Type);
			ePerkL.push(EnemyBeastOrAnimalMorphType);
			ePerkL.push(EnemyBossType);
			ePerkL.push(EnemyChampionType);
			ePerkL.push(EnemyColossalType);
			ePerkL.push(EnemyConstructType);
			ePerkL.push(EnemyElementalType);
			ePerkL.push(EnemyEliteType);
			ePerkL.push(EnemyFeralType);
			ePerkL.push(EnemyFleshConstructType);
			ePerkL.push(EnemyForBeginnersType);
			ePerkL.push(EnemyGhostType);
			ePerkL.push(EnemyGigantType);
			ePerkL.push(EnemyGodType);
			ePerkL.push(EnemyGooType);
			ePerkL.push(EnemyGroupType);
			ePerkL.push(EnemyHugeType);
			ePerkL.push(EnemyLargeGroupType);
			ePerkL.push(EnemyPlantType);
			ePerkL.push(EnemyTrueDemon);
			ePerkL.push(EnemyResiliance);
			ePerkL.push(FireNature);
			ePerkL.push(FireVulnerability);
			ePerkL.push(IceNature);
			ePerkL.push(IceVulnerability);
			ePerkL.push(LightningNature);
			ePerkL.push(LightningVulnerability);
			ePerkL.push(MonsterRegeneration);
			ePerkL.push(NoExpGained);
			ePerkL.push(NoGemsLost);
			ePerkL.push(Sentience);
			ePerkL.push(ShieldWielder);
			ePerkL.push(TeaseResistance);
			ePerkL.push(UniqueNPC);
			return ePerkL;
		}

		//public static const Enemy_Type:PerkType = mk("-type enemy", "-type enemy", "");undead?
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", "");
		//public static const :PerkType = mk("", "", ""); na poźniej dopisane perki wzór
//dodać także typy perków dla poszczególnych ras przeciwników tak, ze bedą mogły one mieć jakieś korzyści też (np. jak ma Dragon nature to bonusy jak PC miałby dragon score > 6))

		private static function mk(id:String, name:String, desc:String, longDesc:String = null, keepOnAscension:Boolean = false):PerkType
		{
			return new PerkType(id, name, desc, longDesc, keepOnAscension);
		}

	// Perk requirements
	private static function initDependencies():void {
        try {
			//------------
            // STRENGTH
            //------------
            JobWarrior.requireStr(10);
            StrongBack.requireStr(20);
            StrongBack2.requireLevel(2)
					.requirePerk(StrongBack)
                    .requireStr(40);
            StrongBack3.requireLevel(4)
					.requirePerk(StrongBack2)
                    .requireStr(60);
            BasicTranquilness.requireStr(30)
                    .requireTou(10)
                    .requireSpe(10);
            UnlockId.requireStr(20);
            ChallengingShout.requireStr(25)
                    .requirePerk(JobWarrior);
            //Tier 1 Strength Perks
            ThunderousStrikes.requireLevel(6)
                    .requireStr(80)
                    .requirePerk(JobWarrior);
            BrutalBlows.requireLevel(6)
                    .requireStr(75)
                    .requirePerk(JobWarrior);
            FuriousStrikes.requireLevel(6)
                    .requireStr(30)
                    .requirePerk(JobWarrior);
            JobBrawler.requireAdvancedJobSlot()
					.requireLevel(6)
                    .requireStr(60)
					.requirePerk(JobWarrior);
            JobSwordsman.requireAdvancedJobSlot()
					.requireLevel(6)
                    .requireStr(60)
					.requirePerk(JobWarrior);
            IronFistsI.requireLevel(6)
                    .requireStr(60)
                    .requirePerk(JobBrawler);
            IronFistsII.requireNGPlus(1)
                    .requireLevel(8)
                    .requireStr(75)
                    .requirePerk(IronFistsI);
            IronFistsIII.requireNGPlus(2)
                    .requireLevel(10)
                    .requireStr(90)
                    .requirePerk(IronFistsII);
            Parry.requireLevel(6)
                    .requireStr(50)
                    .requireSpe(50);
            ThirstForBlood.requireLevel(6)
                    .requireStr(75)
                    .requirePerk(JobWarrior);
            Brute.requireLevel(6)
                    .requireStr(60)
                    .requirePerk(JobBrawler);
            HalfStepToImprovedTranquilness.requireStr(60)
                    .requireTou(20)
                    .requireSpe(20)
                    .requirePerk(BasicTranquilness)
                    .requireLevel(6);
            //Tier 2 Strength Perks
            AdrenalineRush.requireLevel(12)
                    .requirePerk(FuriousStrikes);
            BalanceBreaker.requireLevel(12)
                    .requireStr(100)
                    .requirePerk(JobWarrior);
            OrthodoxDuelist.requireLevel(12)
                    .requireStr(100)
                    .requirePerk(JobWarrior);
            KnightlySword.requireLevel(12)
                    .requireStr(100)
                    .requirePerk(JobWarrior);
            IronFistsIV.requireNGPlus(3)
                    .requireLevel(12)
                    .requireStr(105)
                    .requirePerk(IronFistsIII);
            IronFistsV.requireNGPlus(4)
                    .requireLevel(14)
                    .requireStr(120)
                    .requirePerk(IronFistsIV);
            IronFistsVI.requireNGPlus(5)
                    .requireLevel(16)
                    .requireStr(135)
                    .requirePerk(IronFistsV);
            Berzerker.requireLevel(12)
                    .requireStr(75);
            HoldWithBothHands.requireLevel(12)
                    .requireStr(80)
                    .requirePerk(JobWarrior);
            ShieldSlam.requireLevel(12)
                    .requireStr(80)
                    .requireTou(60);
            WeaponMastery.requireLevel(12)
                    .requirePerk(JobSwordsman)
                    .requireStr(100);
            DoubleAttackLarge.requireLevel(12)
                    .requirePerk(JobSwordsman)
                    .requireStr(75)
                    .requireSpe(50);
            Brawn.requireLevel(12)
                    .requireStr(75)
                    .requirePerk(Brute);
            PhantomStrike.requireLevel(12)
                    .requireStr(80)
                    .requirePerk(IronFistsI);
            ImprovedTranquilness.requireStr(90)
                    .requireTou(30)
                    .requireSpe(30)
                    .requirePerk(HalfStepToImprovedTranquilness)
                    .requireLevel(12);
            //Tier 3 Strength Perks
            ColdFury.requireLevel(18)
                    .requirePerks(Berzerker, ImprovedSelfControl)
                    .requireStr(75);
            WayOfTheWarrior.requireLevel(18)
                    .requirePerk(JobWarrior);
            UnlimitedRage.requireLevel(18)
                    .requireStr(60)
                    .requirePerk(FuriousStrikes);
            GigantGrip.requireLevel(18)
                    .requirePerk(WeaponMastery)
                    .requireStr(100);
            HiddenMomentum.requireLevel(18)
                    .requirePerk(JobSwordsman)
                    .requireStr(75)
                    .requireSpe(50);
            ImprovedBrute.requireLevel(18)
                    .requireStr(90)
                    .requirePerk(Brute);
            HalfStepToAdvancedTranquilness.requireStr(120)
                    .requireTou(40)
                    .requireSpe(40)
                    .requirePerk(ImprovedTranquilness)
                    .requireLevel(18);
            //Tier 4 Strength Perks
            WeaponGrandMastery.requirePerk(WeaponMastery)
                    .requireStr(140)
                    .requireLevel(24);
            ImprovedAdrenaline.requireLevel(24)
                    .requireStr(110)
                    .requirePerk(UnlimitedRage);
            DualWieldLarge.requirePerks(DualWield, GigantGrip)
                    .requireStr(125)
                    .requireLevel(24);
            TripleAttackLarge.requirePerk(DoubleAttackLarge)
                    .requireStr(125)
                    .requireSpe(100)
                    .requireLevel(24);
            GigantGripEx.requireLevel(24)
                    .requireStr(120)
                    .requirePerk(GigantGrip);
            ImprovedBrawn.requireLevel(24)
                    .requireStr(105)
                    .requirePerks(Brawn, Brute);
            AdvancedTranquilness.requireStr(150)
                    .requireTou(50)
                    .requireSpe(50)
                    .requirePerk(HalfStepToAdvancedTranquilness)
                    .requireLevel(24);
            //Tier 5 Strength Perks
            HiddenDualMomentum.requirePerks(HiddenMomentum, DualWieldLarge)
                    .requireStr(150)
                    .requireSpe(100)
                    .requireLevel(30);
            UnlockId2ndStage.requirePerk(UnlockId)
                    .requireStr(125)
                    .requireLevel(30);
            HalfStepToSuperiorTranquilness.requireStr(180)
                    .requireTou(60)
                    .requireSpe(60)
                    .requirePerk(AdvancedTranquilness)
                    .requireLevel(30);
            ColderFury.requireLevel(30)
                    .requirePerks(ColdFury, AdvancedSelfControl)
                    .requireStr(150);
            GreaterBrute.requireLevel(30)
                    .requireStr(120)
                    .requirePerk(ImprovedBrute);
            //Tier 6 Strength Perks
            SuperiorTranquilness.requireStr(210)
                    .requireTou(70)
                    .requireSpe(70)
                    .requirePerk(HalfStepToSuperiorTranquilness)
                    .requireLevel(36);
            EpicStrength.requireStr(10)
                    .requireLevel(36);
            GreaterBrawn.requireLevel(36)
                    .requireStr(135)
                    .requirePerks(ImprovedBrawn, ImprovedBrute);
            //HiddenDualMomentum.requirePerk(HiddenMomentum).requireStr(175).requireSpe(100).requireLevel(30);	//herculanmight - perk dodający limit do str cap (i może do max tone też)
            //a może właśnie perk dodający do max str cap tyle ile wynosi obecnie PC tone?
            //Tier 7 Strength Perks
            HalfStepToPeerlessTranquilness.requireStr(240)
                    .requireTou(80)
                    .requireSpe(80)
                    .requirePerk(SuperiorTranquilness)
                    .requireLevel(42);
            EpicBrute.requireLevel(42)
                    .requireStr(150)
                    .requirePerk(GreaterBrute);
            //Tier 8 Strength Perks
            PeerlessTranquilness.requireStr(270)
                    .requireTou(90)
                    .requireSpe(90)
                    .requirePerk(HalfStepToPeerlessTranquilness)
                    .requireLevel(48);
            EpicBrawn.requireLevel(48)
                    .requireStr(165)
                    .requirePerks(GreaterBrawn, GreaterBrute);
            //Tier 9 Strength Perks
            PrestigeJobBerserker.requirePrestigeJobSlot()
                    .requirePerks(JobSwordsman, JobGuardian)
                    .requireAnyPerk(Berzerker, Lustzerker)
                    .requireStr(200)
                    .requireLevel(54);
            /*PrestigeJobStalker.requirePrestigeJobSlot()
                    .requirePerk(JobWarrior)
                    .requirePerk(JobHunter)
                    .requireStr(150)
                    .requireSpe(150)
                    .requireLevel(54);*/
            PrestigeJobSpellKnight.requirePrestigeJobSlot()
                    .requireStr(200)
                    .requireInt(150)
                    .requireLevel(54)
					.requireCustomFunction(function (player:Player):Boolean {
                        return player.statusEffectv1(StatusEffects.AlvinaTraining2) >= 1 || player.statusEffectv1(StatusEffects.SiegweirdTraining2) >= 1;
                    }, "Get menthorship from one of the two greatest mages in mareth.");
            HalfStepToInhumanTranquilness.requireStr(300)
                    .requireTou(100)
                    .requireSpe(100)
                    .requirePerk(PeerlessTranquilness)
                    .requireLevel(54);
            LegendaryBrute.requireLevel(54)
                    .requireStr(180)
                    .requirePerk(EpicBrute);
            //Tier 10 Strength Perks
            Rage.requirePerk(PrestigeJobBerserker)
                    .requireLevel(60);
            SwiftCasting.requireLevel(60)
                    .requirePerk(PrestigeJobSpellKnight)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsWhitefire) || player.hasStatusEffect(StatusEffects.KnowsIceSpike) || player.hasStatusEffect(StatusEffects.KnowsLightningBolt) || player.hasStatusEffect(StatusEffects.KnowsDarknessShard);
                    }, "Whitefire or Ice Spike or Lightning Bolt or Darkness Shard spell");
            InhumanTranquilness.requireStr(330)
                    .requireTou(110)
                    .requireSpe(110)
                    .requirePerk(HalfStepToInhumanTranquilness)
                    .requireLevel(60);
            UnlockId3rdStage.requirePerk(UnlockId2ndStage)
                    .requireStr(230)
                    .requireLevel(60);
            LegendaryBrawn.requireLevel(60)
                    .requireStr(195)
                    .requirePerks(EpicBrawn, EpicBrute);
            //Tier 11 Strength Perks
            Anger.requirePerk(Rage)
                    .requireLevel(66);
            WarCaster.requirePerk(SwiftCasting)
                    .requireLevel(66);
            HalfStepToEpicTranquilness.requireStr(360)
                    .requireTou(120)
                    .requireSpe(120)
                    .requirePerk(InhumanTranquilness)
                    .requireLevel(66);
            LegendaryStrength.requireStr(15)
                    .requirePerk(EpicStrength)
                    .requireLevel(66);
            MythicalBrute.requireLevel(66)
                    .requireStr(210)
                    .requirePerk(LegendaryBrute);
            //Tier 12 Strength Perks
            FuelForTheFire.requirePerk(Anger)
                    .requireLevel(72);
            VampiricBlade.requirePerk(WarCaster)
                    .requireLevel(72);
            EpicTranquilness.requireStr(390)
                    .requireTou(130)
                    .requireSpe(130)
                    .requirePerk(HalfStepToEpicTranquilness)
                    .requireLevel(72);
            MythicalBrawn.requireLevel(72)
                    .requireStr(225)
                    .requirePerks(LegendaryBrawn, LegendaryBrute);
            //Tier 13 Strength Perks
            //TooAngryToDie.requirePerk(FuelForTheFire)
                    //.requireLevel(78);
            HalfStepToLegendaryTranquilness.requireStr(420)
                    .requireTou(140)
                    .requireSpe(140)
                    .requirePerk(EpicTranquilness)
                    .requireLevel(78);
            //Tier 14 Strength Perks
            LegendaryTranquilness.requireStr(450)
                    .requireTou(150)
                    .requireSpe(150)
                    .requirePerk(HalfStepToLegendaryTranquilness)
                    .requireLevel(84);
            //Tier 15 Strength Perks
            HalfStepToMythicalTranquilness.requireStr(480)
                    .requireTou(160)
                    .requireSpe(160)
                    .requirePerk(LegendaryTranquilness)
                    .requireLevel(90);
            UnlockId4thStage.requirePerk(UnlockId3rdStage)
                    .requireStr(335)
                    .requireLevel(90);
            //Tier 16 Strength Perks
            MythicalTranquilness.requireStr(510)
                    .requireTou(170)
                    .requireSpe(170)
                    .requirePerk(HalfStepToMythicalTranquilness)
                    .requireLevel(96);
            MythicalStrength.requireStr(20)
                    .requirePerk(LegendaryStrength)
                    .requireLevel(96);
            //------------
            // TOUGHNESS
            //------------
            JobGuardian.requireTou(10);
            TankI.requirePerk(JobGuardian)
                    .requireTou(25);
            TankII.requirePerk(TankI)
                    .requireTou(40)
                    .requireLevel(2)
                    .requireNGPlus(1);
            TankIII.requirePerk(TankII)
                    .requireTou(55)
                    .requireLevel(4)
                    .requireNGPlus(2);
            Regeneration.requireTou(50);
            Regeneration2.requirePerk(Regeneration)
                    .requireTou(70)
                    .requireLevel(2)
                    .requireNGPlus(1);
            Regeneration3.requirePerk(Regeneration2)
                    .requireTou(90)
                    .requireLevel(4)
                    .requireNGPlus(2);
            BasicEndurance.requireTou(30)
                    .requireStr(20);
            UnlockBody.requireTou(20);
            //Tier 1 Toughness Perks
            TankIV.requirePerk(TankIII)
                    .requireTou(70)
                    .requireNGPlus(3)
                    .requireLevel(6);
            TankV.requirePerk(TankIV)
                    .requireTou(85)
                    .requireLevel(8)
                    .requireNGPlus(4);
            TankVI.requirePerk(TankV)
                    .requireTou(100)
                    .requireLevel(10)
                    .requireNGPlus(5);
            Regeneration4.requirePerk(Regeneration3)
                    .requireTou(110)
                    .requireNGPlus(3)
                    .requireLevel(6);
            Regeneration5.requirePerk(Regeneration4)
                    .requireTou(130)
                    .requireLevel(8)
                    .requireNGPlus(4);
            Regeneration6.requirePerk(Regeneration5)
                    .requireTou(150)
                    .requireLevel(10)
                    .requireNGPlus(5);
            RefinedBodyI.requirePerk(TankI)
                    .requireTou(60)
                    .requireLevel(6);
            RefinedBodyII.requirePerk(RefinedBodyI)
                    .requireTou(80)
                    .requireLevel(8)
                    .requireNGPlus(1);
            RefinedBodyIII.requirePerk(RefinedBodyII)
                    .requireTou(100)
                    .requireLevel(10)
                    .requireNGPlus(2);
            JobKnight.requireAdvancedJobSlot()
					.requirePerk(JobGuardian)
                    .requireTou(50)
                    .requireLevel(6);
            ShieldMastery.requirePerk(JobKnight)
                    .requireTou(50)
                    .requireLevel(6);
            HalfStepToImprovedEndurance.requireTou(60)
                    .requireStr(40)
                    .requirePerk(BasicEndurance)
                    .requireLevel(6);
            ArmorMaster.requirePerk(JobKnight)
                    .requireTou(50)
                    .requireLevel(6);
            //Tier 2 Toughness Perks
            JobDefender.requireAdvancedJobSlot()
					.requirePerk(JobGuardian)
                    .requireTou(75)
                    .requireLevel(12);
            ImmovableObject.requirePerk(JobDefender)
                    .requireTou(75)
                    .requireLevel(12);
            Resolute.requirePerk(JobDefender)
                    .requireTou(75)
                    .requireLevel(12);
            HeavyArmorProficiency.requirePerk(JobKnight)
                    .requireTou(75)
                    .requireLevel(12);
            IronMan.requireTou(60)
                    .requireLevel(12);
            RefinedBodyIV.requirePerk(RefinedBodyIII)
                    .requireTou(120)
                    .requireNGPlus(3)
                    .requireLevel(12);
            RefinedBodyV.requirePerk(RefinedBodyIV)
                    .requireTou(140)
                    .requireLevel(14)
                    .requireNGPlus(4);
            RefinedBodyVI.requirePerk(RefinedBodyV)
                    .requireTou(140)
                    .requireLevel(16)
                    .requireNGPlus(5);
            ImprovedEndurance.requireTou(90)
                    .requireStr(60)
                    .requirePerk(HalfStepToImprovedEndurance)
                    .requireLevel(12);
            ShieldExpertise.requirePerk(JobKnight)
                    .requireTou(70)
                    .requireLevel(12);
            //Tier 3 Toughness Perks
            Juggernaut.requireTou(100)
                    .requirePerk(HeavyArmorProficiency)
                    .requireLevel(18);
            AyoArmorProficiency.requireTou(100)
					.requirePerk(HeavyArmorProficiency)
                    .requireLevel(18);
            HalfStepToAdvancedEndurance.requireTou(120)
                    .requireStr(80)
                    .requireLevel(18)
                    .requirePerk(ImprovedEndurance);
            DefenceStance.requirePerk(JobDefender)
                    .requireTou(80)
                    .requireLevel(18);
            ShieldHarmony.requirePerk(ShieldExpertise)
                    .requireTou(80)
                    .requireLevel(18);
            Lifeline.requirePerk(JobDefender)
                    .requireTou(75)
                    .requireLevel(18);
            //Tier 4 Toughness Perks
            AdvancedEndurance.requireLevel(24)
                    .requireTou(150)
                    .requireStr(100)
                    .requirePerk(HalfStepToAdvancedEndurance);
            ShieldGrandmastery.requirePerk(ShieldMastery)
                    .requireTou(100)
                    .requireLevel(24);
            //perk związany z ayotech armors na pewno tu umieścić coś podobnego do juggernaut pewnie a moze właśnie wersja juggernaut dla ayo tech armors może?
            MasteredDefenceStance.requirePerk(DefenceStance)
                    .requireTou(120)
                    .requireLevel(24);
            GoliathI.requirePerks(JobDefender, TankI)
                    .requireTou(100)
                    .requireLevel(24);
            GoliathII.requirePerk(GoliathI)
                    .requireTou(115)
                    .requireLevel(26)
                    .requireNGPlus(1);
            GoliathIII.requirePerk(GoliathII)
                    .requireTou(130)
                    .requireLevel(28)
                    .requireNGPlus(2);
            ImprovedLifeline.requirePerk(Lifeline)
                    .requireTou(125)
                    .requireLevel(24);
            //Tier 5 Toughness Perks
            HalfStepToSuperiorEndurance.requireTou(180)
                    .requireStr(120)
                    .requirePerk(AdvancedEndurance)
                    .requireLevel(30);
            PerfectDefenceStance.requirePerk(MasteredDefenceStance)
                    .requireTou(160)
                    .requireLevel(30);
            ShieldWard.requirePerk(ShieldGrandmastery)
                    .requireTou(120)
                    .requireLevel(30);
            GoliathIV.requirePerk(GoliathIII)
                    .requireTou(145)
                    .requireLevel(30)
                    .requireNGPlus(3);
            GoliathV.requirePerk(GoliathIV)
                    .requireTou(160)
                    .requireLevel(32)
                    .requireNGPlus(4);
            GoliathVI.requirePerk(GoliathV)
                    .requireTou(175)
                    .requireLevel(34)
                    .requireNGPlus(5);
            UnlockBody2ndStage.requirePerk(UnlockBody)
                    .requireTou(125)
                    .requireLevel(30);
            //Tier 6 Toughness Perks
            SuperiorEndurance.requireTou(210)
                    .requireStr(140)
                    .requirePerk(HalfStepToSuperiorEndurance)
                    .requireLevel(36);
            CheetahI.requirePerk(GoliathI)
                    .requireTou(150)
                    .requireLevel(36);
            CheetahII.requirePerk(CheetahI)
                    .requireTou(165)
                    .requireLevel(38)
                    .requireNGPlus(1);
            CheetahIII.requirePerk(CheetahII)
                    .requireTou(180)
                    .requireLevel(40)
                    .requireNGPlus(2);
            EpicToughness.requireTou(10)
                    .requireLevel(36);
            GreaterLifeline.requirePerk(ImprovedLifeline)
                    .requireTou(175)
                    .requireLevel(36);
            //Tier 7 Toughness Perks
            HalfStepToPeerlessEndurance.requireTou(240)
                    .requireStr(160)
                    .requirePerk(SuperiorEndurance)
                    .requireLevel(42);
            CheetahIV.requirePerk(CheetahIII)
                    .requireTou(195)
                    .requireLevel(42)
                    .requireNGPlus(3);
            CheetahV.requirePerk(CheetahIV)
                    .requireTou(210)
                    .requireLevel(44)
                    .requireNGPlus(4);
            CheetahVI.requirePerk(CheetahV)
                    .requireTou(225)
                    .requireLevel(46)
                    .requireNGPlus(5);
            //Tier 8 Toughness Perks
            PeerlessEndurance.requireTou(270)
                    .requireStr(180)
                    .requirePerk(HalfStepToPeerlessEndurance)
                    .requireLevel(48);
            EpicLifeline.requirePerk(GreaterLifeline)
                    .requireTou(225)
                    .requireLevel(48);
            //Tier 9 Toughness Perks
            PrestigeJobSentinel.requirePrestigeJobSlot()
                    .requirePerks(JobKnight, JobWarrior)
                    .requireTou(200)
                    .requireLevel(54);
            HalfStepToInhumanEndurance.requireTou(300)
                    .requireStr(200)
                    .requirePerk(PeerlessEndurance)
                    .requireLevel(54);
            //Tier 10 Toughness Perks
            SteelImpact.requirePerk(PrestigeJobSentinel)
                    .requireLevel(60);
            InhumanEndurance.requireTou(330)
                    .requireStr(220)
                    .requirePerk(HalfStepToInhumanEndurance)
                    .requireLevel(60);
            UnlockBody3rdStage.requirePerk(UnlockBody2ndStage)
                    .requireTou(230)
                    .requireLevel(60);
            //Tier 11 Toughness Perks
            ShieldCombat.requirePerk(SteelImpact)
                    .requireLevel(66);
            HalfStepToEpicEndurance.requireTou(360)
                    .requireStr(240)
                    .requirePerk(InhumanEndurance)
                    .requireLevel(66);
            LegendaryToughness.requireTou(15)
                    .requirePerk(EpicToughness)
                    .requireLevel(66);
            //Tier 12 Toughness Perks
            SecondWind.requirePerk(ShieldCombat)
                    .requireLevel(72);
            EpicEndurance.requireTou(390)
                    .requireStr(260)
                    .requirePerk(HalfStepToEpicEndurance)
                    .requireLevel(72);
            //Tier 13 Toughness Perks
            HalfStepToLegendaryEndurance.requireTou(420)
                    .requireStr(280)
                    .requirePerk(EpicEndurance)
                    .requireLevel(78);
            //Tier 14 Toughness Perks
            LegendaryEndurance.requireTou(450)
                    .requireStr(300)
                    .requirePerk(HalfStepToLegendaryEndurance)
                    .requireLevel(84);
            //Tier 15 Toughness Perks
            HalfStepToMythicalEndurance.requireTou(480)
                    .requireStr(320)
                    .requirePerk(LegendaryEndurance)
                    .requireLevel(90);
            UnlockBody4thStage.requirePerk(UnlockBody3rdStage)
                    .requireTou(335)
                    .requireLevel(90);
            //Tier 16 Toughness Perks
            MythicalEndurance.requireTou(510)
                    .requireStr(340)
                    .requirePerk(HalfStepToMythicalEndurance)
                    .requireLevel(96);
            MythicalToughness.requireTou(20)
                    .requirePerk(LegendaryToughness)
                    .requireLevel(96);
            //------------
            // SPEED
            //------------
            JobRanger.requireSpe(10);
            Runner.requireSpe(25);
            //slot 3 - speed perk
            Evade.requireSpe(20);
            ArchersStaminaI.requirePerk(JobRanger)
                    .requireSpe(25);
            ArchersStaminaII.requirePerk(ArchersStaminaI)
                    .requireSpe(45)
                    .requireLevel(2)
                    .requireNGPlus(1);
            ArchersStaminaIII.requirePerk(ArchersStaminaII)
                    .requireSpe(65)
                    .requireLevel(4)
                    .requireNGPlus(2);
            CarefulButRecklessAimAndShooting.requirePerk(JobRanger)
                    .requireSpe(30);
            Sharpshooter.requirePerk(JobRanger);
            PowerShot.requirePerk(JobRanger);
            NaturesSpringI.requirePerk(ArchersStaminaI)
                    .requireSpe(30);
            NaturesSpringII.requirePerk(NaturesSpringI)
                    .requireSpe(50)
                    .requireLevel(2)
                    .requireNGPlus(1);
            NaturesSpringIII.requirePerk(NaturesSpringII)
                    .requireSpe(70)
                    .requireLevel(4)
                    .requireNGPlus(2);
            UnlockEndurance.requireSpe(20);
            //Tier 1 Speed Perks
            //Agility - A small portion of your speed is applied to your defense rating when wearing light armors.
            Agility.requireSpe(75)
                    .requirePerk(Runner)
                    .requireLevel(6);
            //slot 3 - Double Attack perk
            DoubleAttack.requirePerk(JobDervish)
                    .requireSpe(50)
                    .requireLevel(6);
            DoubleStrike.requirePerk(JobRanger)
                    .requireSpe(50)
                    .requireLevel(6);
            Unhindered.requireSpe(75)
                    .requirePerk(Evade)
                    .requireLevel(6);
            LightningStrikes.requireSpe(60)
                    .requireLevel(6);
            Naturaljouster.requireSpe(60)
                    .requireLevel(6);
            VitalShot.requireSpe(60)
                    .requirePerks(JobRanger, Tactician)
                    .requireLevel(6);
            DeadlyAim.requireSpe(60)
                    .requirePerks(JobRanger, Precision)
                    .requireLevel(6);
            ArchersStaminaIV.requirePerk(ArchersStaminaIII)
                    .requireSpe(85)
                    .requireNGPlus(3)
                    .requireLevel(6);
            ArchersStaminaV.requirePerk(ArchersStaminaIV)
                    .requireSpe(105)
                    .requireLevel(8)
                    .requireNGPlus(4);
            ArchersStaminaVI.requirePerk(ArchersStaminaV)
                    .requireSpe(125)
                    .requireLevel(10)
                    .requireNGPlus(5);
            JobDervish.requireAdvancedJobSlot()
					.requireAnyPerk(JobRanger, JobWarrior)
                    .requireSpe(30)
                    .requireStr(20)
                    .requireLevel(6);
            NaturesSpringIV.requirePerk(NaturesSpringIII)
                    .requireSpe(90)
                    .requireNGPlus(3)
                    .requireLevel(6);
            NaturesSpringV.requirePerk(NaturesSpringIV)
                    .requireSpe(110)
                    .requireLevel(8)
                    .requireNGPlus(4);
            NaturesSpringVI.requirePerk(NaturesSpringV)
                    .requireSpe(130)
                    .requireLevel(10)
                    .requireNGPlus(5);
            JobRogue.requireAdvancedJobSlot()
					.requirePerks(JobRanger, Evade)
                    .requireSpe(25)
                    .requireStr(25)
                    .requireLevel(6);
            DualWieldSmall.requirePerks(DualWield, JobRogue)
                    .requireLevel(6);
            SneakyAttack.requirePerk(JobRogue)
                    .requireLevel(6);
            DoubleAttackSmall.requirePerk(JobRogue)
                    .requireSpe(40)
                    .requireLevel(6);
            StarlightStrikes.requirePerk(JobRogue)
                    .requireSpe(60)
                    .requireLevel(6);
            DualWieldNormal.requirePerk(DualWield)
					.requireAnyPerk(JobDervish, JobWarrior)
                    .requireLevel(6);
            /*Brawler.requireMinSpe(60)
					.requireMinStr(60);*/ //Would it be fitting to have Urta teach you?
            //Tier 2 Speed Perks
            LungingAttacks.requireSpe(75)
                    .requireLevel(12);
            Blademaster.requireSpe(80)
                    .requireStr(60)
                    .requireLevel(12);
            TripleAttack.requirePerk(DoubleAttack)
                    .requireSpe(75)
                    .requireLevel(12);
            SluttySimplicity.requireSpe(80)
                    .requireLib(50)
                    .requirePerk(Unhindered)
                    .requireLevel(12);
            NakedTruth.requireSpe(80)
                    .requireLib(50)
                    .requirePerk(Unhindered)
                    .requireLevel(12);
            TripleStrike.requirePerk(DoubleStrike)
                    .requireSpe(75)
                    .requireLevel(12);
            JobHunter.requireAdvancedJobSlot()
					.requirePerks(JobRanger, ArchersStaminaI)
                    .requireSpe(80)
                    .requireLevel(12);
            ColdAim.requirePerk(CarefulButRecklessAimAndShooting)
                    .requireSpe(50)
                    .requireLevel(12);
            DancersVitalityI.requirePerk(JobDervish)
                    .requireSpe(60)
                    .requireLevel(12);
            DancersVitalityII.requirePerk(DancersVitalityI)
                    .requireSpe(75)
                    .requireLevel(14)
                    .requireNGPlus(1);
            DancersVitalityIII.requirePerk(DancersVitalityII)
                    .requireSpe(90)
                    .requireLevel(16)
                    .requireNGPlus(2);
            DeadlyThrow.requirePerk(JobHunter)
                    .requireLevel(12);
            DeadlySneaker.requirePerk(SneakyAttack)
                    .requireSpe(60)
                    .requireLevel(12);
            MarkedForDeath.requireAnyPerk(JobHunter, JobGunslinger)
                    .requireLevel(12);
            Feint.requireAnyPerk(SneakyAttack, MarkedForDeath)
                    .requireSpe(50)
                    .requireLevel(12);
            TripleAttackSmall.requirePerk(DoubleAttackSmall)
                    .requireSpe(55)
                    .requireLevel(12);
            QuadrupleAttackSmall.requirePerk(TripleAttackSmall)
                    .requireSpe(70)
                    .requireLevel(12);
            ImprovedEvade.requirePerks(JobRanger, Evade)
                    .requireSpe(60)
                    .requireLevel(12);
            PracticedShot.requirePerk(JobRanger)
                    .requireSpe(75)
                    .requireLevel(12);
            SpeedDemon.requireAnyPerk(JobDervish, JobRogue)
                    .requireSpe(90)
                    .requireLevel(12);
            DevastatingCharge.requirePerk(Naturaljouster)
                    .requireSpe(90)
                    .requireLevel(12);
            //Tier 3 Speed Perks
            Manyshot.requirePerks(JobHunter, TripleStrike)
                    .requireSpe(100)
                    .requireLevel(18);
            QuadrupleAttack.requirePerk(TripleAttack)
                    .requireSpe(100)
                    .requireLevel(18);
            EnvenomedBolt.requireLevel(18)
                    .requirePerk(JobHunter)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.tail.isAny(Tail.BEE_ABDOMEN, Tail.SCORPION, Tail.MANTICORE_PUSSYTAIL)
                                || player.facePart.isAny(Face.SNAKE_FANGS, Face.SPIDER_FANGS) || player.hasPerk(MutationsLib.VenomGlands);
                    }, "Venom-producing tail, abdomen, fangs or having Venom Glands mutation");
            DancersVitalityIV.requirePerk(DancersVitalityIII)
                    .requireSpe(105)
                    .requireNGPlus(3)
                    .requireLevel(18);
            DancersVitalityV.requirePerk(DancersVitalityIV)
                    .requireSpe(120)
                    .requireLevel(20)
                    .requireNGPlus(4);
            DancersVitalityVI.requirePerk(DancersVitalityV)
                    .requireSpe(140)
                    .requireLevel(22)
                    .requireNGPlus(5);
            Impale.requirePerk(Naturaljouster)
                    .requireSpe(100)
                    .requireLevel(18);
            AnatomyExpert.requirePerk(DeadlyThrow)
                    .requireLevel(18);
            GreaterFeint.requirePerk(Feint)
                    .requireSpe(100)
                    .requireLevel(18);
            PentaAttackSmall.requirePerk(QuadrupleAttackSmall)
                    .requireSpe(85)
                    .requireLevel(18);
            HexaAttackSmall.requirePerk(PentaAttackSmall)
                    .requireSpe(100)
                    .requireLevel(18);
            QuickStrike.requirePerk(SpeedDemon)
                    .requireSpe(120)
                    .requireLevel(18);
            Poisoning.requireLevel(18)
                    .requirePerk(JobRogue)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.tail.isAny(Tail.BEE_ABDOMEN, Tail.SCORPION, Tail.MANTICORE_PUSSYTAIL)
                                || player.facePart.isAny(Face.SNAKE_FANGS, Face.SPIDER_FANGS) || player.hasPerk(MutationsLib.VenomGlands);
                    }, "Venom-producing tail, abdomen, fangs or having Venom Glands mutation");
            //Tier 4 Speed Perks
            WildQuiver.requirePerk(Manyshot)
                    .requireSpe(125)
                    .requireLevel(24);
            PentaAttack.requirePerk(QuadrupleAttack)
                    .requireSpe(125)
                    .requireLevel(24);
            Slayer.requirePerk(DeadlySneaker)
                    .requireSpe(120)
                    .requireLevel(12);
            HectaAttackSmall.requirePerk(HexaAttackSmall)
                    .requireSpe(115)
                    .requireLevel(24);
            OctaAttackSmall.requirePerk(HectaAttackSmall)
                    .requireSpe(130)
                    .requireLevel(24);
            GreaterEvade.requirePerk(ImprovedEvade)
                    .requireSpe(100)
                    .requireLevel(24);
            EagleEye.requirePerk(PracticedShot)
                    .requireSpe(125)
                    .requireLevel(24);
            //Tier 5 Speed Perks
            HexaAttack.requirePerk(PentaAttack)
                    .requireSpe(150)
                    .requireLevel(30);
            Multishot.requirePerk(WildQuiver)
                    .requireSpe(150)
                    .requireLevel(30);
            UnlockEndurance2ndStage.requirePerk(UnlockEndurance)
                    .requireSpe(125)
                    .requireLevel(30);
            NonaAttackSmall.requirePerk(OctaAttackSmall)
                    .requireSpe(145)
                    .requireLevel(30);
            DecaAttackSmall.requirePerk(NonaAttackSmall)
                    .requireSpe(160)
                    .requireLevel(30);
            //Tier 6 Speed Perks
            NaturaljousterMastergrade.requirePerk(Naturaljouster)
                    .requireSpe(180)
                    .requireLevel(36);
			EpicSpeed.requireSpe(10)
                    .requireLevel(36);
            GrandBlademaster.requirePerk(Blademaster)
                    .requireSpe(160)
                    .requireStr(120)
                    .requireLevel(36);
            //Tier 7 Speed Perks
            //Tier 8 Speed Perks
            //Tier 9 Speed Perks
            PrestigeJobArcaneArcher.requirePrestigeJobSlot()
                    .requirePerks(JobSorcerer, JobHunter)
                    .requireSpe(200)
                    .requireInt(150)
                    .requireLevel(54);
            PrestigeJobTempest.requirePrestigeJobSlot()
                    .requirePerks(JobDervish, JobWarrior, DualWield)
                    .requireSpe(200)
                    .requireLevel(54);
			//Tier 10 Speed Perks
            ElementalArrows.requireLevel(60)
                    .requirePerk(PrestigeJobArcaneArcher)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsWhitefire) || player.hasStatusEffect(StatusEffects.KnowsIceSpike) || player.hasStatusEffect(StatusEffects.KnowsLightningBolt) || player.hasStatusEffect(StatusEffects.KnowsDarknessShard);
                    }, "Whitefire or Ice Spike or Lightning Bolt or Darkness Shard spell");
            SteelStorm.requireLevel(60)
                    .requirePerk(PrestigeJobTempest);
            UnlockEndurance3rdStage.requirePerk(UnlockEndurance2ndStage)
                    .requireSpe(230)
                    .requireLevel(60);
			//Tier 11 Speed Perks
            Cupid.requireLevel(66)
                    .requirePerk(ElementalArrows)
                    .requireStatusEffect(StatusEffects.KnowsArouse, "Arouse spell");
            BladeBarrier.requireLevel(66)
                    .requirePerk(SteelStorm);
			LegendarySpeed.requireSpe(15)
                    .requirePerk(EpicSpeed)
                    .requireLevel(66);
			//Tier 12 Speed Perks
            TwinRiposte.requireLevel(72)
                    .requirePerks(Parry, BladeBarrier);
			/*		PrestigeJobSoulArcher.requirePrestigeJobSlot()
					 .requirePerk(SoulOverlord)
					 .requirePerk(JobHunter)
					 .requireSpe(200)
					 .requireLevel(72);
                    */
            //Tier 13 Speed Perks
			//Tier 14 Speed Perks
			//Tier 15 Speed Perks
            UnlockEndurance4thStage.requirePerk(UnlockEndurance3rdStage)
                    .requireSpe(335)
                    .requireLevel(90);
			//Tier 16 Speed Perks
            MythicalSpeed.requireSpe(20)
                    .requirePerk(LegendarySpeed)
                    .requireLevel(96);
            //------------
            // INTELLIGENCE
            //------------
            JobSorcerer.requireInt(10);
            //Slot 4 - precision - -10 enemy toughness for damage calc
            Precision.requireInt(25);
            //Spellpower - boosts spell power
            Spellpower.requirePerk(JobSorcerer)
                    .requireInt(50);
            MagesWrath.requirePerk(JobSorcerer)
                    .requireInt(50);
            ManaCore.requirePerk(JobSorcerer)
                    .requireMaxMana(345);
            WarMageNovice.requireAnyPerk(JobSorcerer, JobHealer)
                    .requireInt(40);
            UnlockForce.requireInt(20);
            MindOverBodyI.requireAnyPerk(JobSorcerer, JobHealer, JobElementalConjurer, JobGolemancer)
                    .requireInt(25);
            MindOverBodyII.requirePerk(MindOverBodyI)
                    .requireInt(45)
                    .requireLevel(2)
                    .requireNGPlus(1);
            MindOverBodyIII.requirePerk(MindOverBodyII)
                    .requireInt(65)
                    .requireLevel(4)
                    .requireNGPlus(2);
            BasicSpirituality.requireWis(20)
                    .requireInt(30);
            GreyMagic.requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsWhitefire) || player.hasStatusEffect(StatusEffects.KnowsPyreBurst) || player.hasStatusEffect(StatusEffects.KnowsLightningBolt) || player.hasStatusEffect(StatusEffects.KnowsChainLighting);
                    }, "Whitefire or Pyre Burst or Lightning Bolt or Chain Lighting spell")
					.requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsIceSpike) || player.hasStatusEffect(StatusEffects.KnowsArcticGale) || player.hasStatusEffect(StatusEffects.KnowsDarknessShard) || player.hasStatusEffect(StatusEffects.KnowsDuskWave);
                    }, "Ice Spike or Arctic Gale or Darkness Shard or Dusk Wave spell")
					.requireInt(25);
            //Tier 1 Intelligence Perks
            Mage.requirePerk(Spellpower)
                    .requireInt(50)
                    .requireLevel(6);
            Tactician.requireInt(50)
                    .requireLevel(6);
            Channeling.requirePerks(Spellpower, Mage)
                    .requireInt(60)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.spellCount() > 0;
                    }, "Any spell")
                    .requireLevel(6);
            Medicine.requireInt(60);
            StaffChanneling.requirePerk(Channeling)
                    .requireInt(60)
                    .requireLevel(6);
            MagesWrathEx.requirePerk(MagesWrath)
                    .requireInt(75)
                    .requireLevel(6);
            MindOverBodyIV.requirePerk(MindOverBodyIII)
                    .requireInt(85)
                    .requireNGPlus(3)
                    .requireLevel(6);
            MindOverBodyV.requirePerk(MindOverBodyIV)
                    .requireInt(105)
                    .requireLevel(8)
                    .requireNGPlus(4);
            MindOverBodyVI.requirePerk(MindOverBodyV)
                    .requireInt(125)
                    .requireLevel(10)
                    .requireNGPlus(5);
            ManaAffinityI.requirePerk(MindOverBodyI)
                    .requireInt(50)
					.requireLevel(6);
            ManaAffinityII.requirePerk(ManaAffinityI)
                    .requireInt(70)
                    .requireLevel(8)
                    .requireNGPlus(1);
            ManaAffinityIII.requirePerk(ManaAffinityII)
                    .requireInt(90)
                    .requireLevel(10)
                    .requireNGPlus(2);
            HalfStepToImprovedSpirituality.requireWis(40)
                    .requireInt(60)
                    .requirePerk(BasicSpirituality)
                    .requireLevel(6);
            ArcaneRegenerationMinor.requireAnyPerk(JobSorcerer, JobHealer, JobElementalConjurer, JobGolemancer)
                    .requireInt(50)
                    .requireLevel(6);
            GreyMageApprentice.requirePerk(GreyMagic)
                    .requireInt(75)
                    .requireLevel(6);
            //Tier 2 Intelligence perks
            GrandMage.requirePerk(Mage)
                    .requireInt(75)
                    .requireLevel(12);
            JobEnchanter.requireAdvancedJobSlot()
					.requirePerk(Mage)
                    .requireInt(75)
                    .requireLevel(12);
            FocusedMind.requirePerk(Mage)
                    .requireInt(75)
                    .requireLevel(12);
            RagingInferno.requirePerks(GrandMage, Channeling)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsWhitefire)
                                || player.hasStatusEffect(StatusEffects.KnowsPyreBurst)
                                || player.hasStatusEffect(StatusEffects.KnowsFireStorm)
                                || player.hasPerk(DragonFireBreath)
                                || player.hasPerk(FireLord)
                                || player.hasPerk(Hellfire)
                                || player.hasPerk(EnlightenedKitsune)
                                || player.hasPerk(CorruptedKitsune);
                    }, "Any fire spell")
                    .requireLevel(12)
                    .requireInt(75);
            GlacialStorm.requirePerks(GrandMage, Channeling)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsIceSpike)
                                || player.hasStatusEffect(StatusEffects.KnowsArcticGale)
                                || player.hasStatusEffect(StatusEffects.KnowsIceRain)
                                || player.hasPerk(DragonIceBreath)
                                || player.hasPerk(FreezingBreath)
                                || player.hasPerk(FreezingBreathYeti);
                    }, "Any ice spell")
                    .requireLevel(12)
                    .requireInt(75);
            HighVoltage.requirePerks(GrandMage, Channeling)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsLightningBolt)
                                || player.hasStatusEffect(StatusEffects.KnowsChainLighting)
                                || player.hasPerk(DragonLightningBreath);
                    }, "Any lightning spell")
                    .requireLevel(12)
                    .requireInt(75);
            EclipsingShadow.requirePerks(GrandMage, Channeling)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsDarknessShard)
                                || player.hasStatusEffect(StatusEffects.KnowsDuskWave)
                                || player.hasPerk(DragonDarknessBreath);
                    }, "Any darkness spell")
                    .requireLevel(12)
                    .requireInt(75);
            // Spell-boosting perks
            // Battlemage: auto-use Might
            Battlemage.requireLevel(12)
                    .requirePerks(JobEnchanter, Channeling)
                    .requireInt(80)
                    .requireStatusEffect(StatusEffects.KnowsMight, "Might spell");
            // Spellsword: auto-use Charge Weapon
            Spellsword.requireLevel(12)
                    .requirePerks(JobEnchanter, Channeling)
                    .requireInt(80)
                    .requireStatusEffect(StatusEffects.KnowsCharge, "Charge spell");
            ManaAffinityIV.requirePerk(ManaAffinityIII)
                    .requireInt(110)
                    .requireNGPlus(3)
                    .requireLevel(12);
            ManaAffinityV.requirePerk(ManaAffinityIV)
                    .requireInt(130)
                    .requireLevel(14)
                    .requireNGPlus(4);
            ManaAffinityVI.requirePerk(ManaAffinityV)
                    .requireInt(150)
                    .requireLevel(16)
                    .requireNGPlus(5);
            ImprovedSpirituality.requireWis(60)
                    .requireInt(90)
                    .requirePerk(HalfStepToImprovedSpirituality)
                    .requireLevel(12);
            ArcaneRegenerationMajor.requirePerks(GrandMage, ArcaneRegenerationMinor)
                    .requireInt(75)
                    .requireLevel(12);
            MagicMetabolism.requireHungerEnabled()
					.requirePerk(Channeling)
                    .requireInt(75)
                    .requireLevel(12);
            WarMageApprentice.requirePerk(WarMageNovice)
                    .requireInt(80)
                    .requireLevel(12);
            //Tier 3 Intelligence perks
            Archmage.requirePerk(GrandMage)
                    .requireInt(100).requireLevel(18);
            // Battleflash: auto-use Blink
            Battleflash.requireLevel(18)
                    .requirePerk(Battlemage)
                    .requireInt(90)
                    .requireStatusEffect(StatusEffects.KnowsBlink, "Blink spell");
            // Spellarmor: auto-use Charge Armor
            Spellarmor.requireLevel(18)
                    .requirePerk(Spellsword)
                    .requireInt(90)
                    .requireStatusEffect(StatusEffects.KnowsChargeA, "Charge Armor spell");
            TraditionalMageI.requireLevel(18)
                    .requirePerk(GrandMage)
                    .requireInt(80);
            TraditionalMageII.requireLevel(20)
                    .requirePerk(TraditionalMageI)
                    .requireInt(100)
                    .requireNGPlus(1);
            TraditionalMageIII.requireLevel(22)
                    .requirePerk(TraditionalMageII)
                    .requireInt(120)
                    .requireNGPlus(2);
            HalfStepToAdvancedSpirituality.requireWis(80)
                    .requireInt(120)
                    .requirePerk(ImprovedSpirituality)
                    .requireLevel(18);
            FortressOfIntellect.requireStatusEffect(StatusEffects.KnowsMight, "Might spell")
                    .requirePerk(GrandMage)
                    .requireInt(100)
                    .requireLevel(18);
            ArcaneRegenerationEpic.requirePerks(Archmage, ArcaneRegenerationMajor)
                    .requireInt(100)
                    .requireLevel(18);
            GreyMage.requirePerk(GreyMageApprentice)
                    .requireInt(125)
                    .requireLevel(18);
            Battleshield.requireStatusEffect(StatusEffects.KnowsManaShield, "Mana Shield spell")
                    .requirePerk(JobEnchanter)
                    .requireInt(100)
                    .requireLevel(18);
            DefensiveStaffChanneling.requirePerks(StaffChanneling, JobEnchanter)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.hasStatusEffect(StatusEffects.KnowsManaShield)
                                || player.hasStatusEffect(StatusEffects.KnowsBlizzard);
                    }, "Any defensive spell")
                    .requireInt(120)
                    .requireLevel(18);
            //Tier 4 Intelligence perks
            GrandArchmage.requirePerks(Archmage, FocusedMind)
                    .requireInt(125)
                    .requireLevel(24);
            TraditionalMageIV.requireLevel(24)
                    .requirePerk(TraditionalMageIII)
                    .requireInt(140)
                    .requireNGPlus(3);
            TraditionalMageV.requireLevel(26)
                    .requirePerk(TraditionalMageIV)
                    .requireInt(160)
                    .requireNGPlus(4);
            TraditionalMageVI.requireLevel(28)
                    .requirePerk(TraditionalMageV)
                    .requireInt(180)
                    .requireNGPlus(5);
            AdvancedSpirituality.requireWis(100)
                    .requireInt(150)
                    .requirePerk(HalfStepToAdvancedSpirituality)
                    .requireLevel(24);
            LongerLastingBuffsI.requirePerk(JobEnchanter)
                    .requireInt(120)
                    .requireLevel(24);
            LongerLastingBuffsII.requirePerk(LongerLastingBuffsI)
                    .requireInt(140)
                    .requireLevel(26)
                    .requireNGPlus(1);
            LongerLastingBuffsIII.requirePerk(LongerLastingBuffsII)
                    .requireInt(160)
                    .requireLevel(28)
                    .requireNGPlus(2);
            ArcaneRegenerationLegendary.requirePerks(GrandArchmage, ArcaneRegenerationEpic)
                    .requireInt(125)
                    .requireLevel(24);
			ElementalBolt.requireAnyPerk(RagingInferno, GlacialStorm, HighVoltage, EclipsingShadow)
                    .requireInt(125)
                    .requireLevel(24);
            WarMageAdept.requirePerk(WarMageApprentice)
                    .requireInt(120)
                    .requireLevel(24);
            //Tier 5 Intelligence perks
            GrandArchmage2ndCircle.requirePerk(GrandArchmage)
                    .requireInt(150)
                    .requireLevel(30);
            HalfStepToSuperiorSpirituality.requireWis(120)
                    .requireInt(180)
                    .requirePerk(AdvancedSpirituality)
                    .requireLevel(30);
            LongerLastingBuffsIV.requirePerk(LongerLastingBuffsIII)
                    .requireInt(180)
                    .requireLevel(30)
                    .requireNGPlus(3);
            LongerLastingBuffsV.requirePerk(LongerLastingBuffsIV)
                    .requireInt(200)
                    .requireLevel(32)
                    .requireNGPlus(4);
            LongerLastingBuffsVI.requirePerk(LongerLastingBuffsV)
                    .requireInt(220)
                    .requireLevel(34)
                    .requireNGPlus(5);
            EverLastingBuffs.requirePerk(JobEnchanter)
                    .requireInt(160)
                    .requireLevel(30);
            ArcaneRegenerationMythical.requirePerks(GrandArchmage2ndCircle, ArcaneRegenerationLegendary)
                    .requireInt(150)
                    .requireLevel(30);
            RagingInfernoEx.requirePerks(GrandArchmage, RagingInferno)
                    .requireLevel(30)
                    .requireInt(150);
            GlacialStormEx.requirePerks(GrandArchmage, GlacialStorm)
                    .requireLevel(30)
                    .requireInt(150);
            HighVoltageEx.requirePerks(GrandArchmage, HighVoltage)
                    .requireLevel(30)
                    .requireInt(150);
            EclipsingShadowEx.requirePerks(GrandArchmage, EclipsingShadow)
                    .requireLevel(30)
                    .requireInt(150);
            UnlockForce2ndStage.requirePerk(UnlockForce)
                    .requireInt(125)
                    .requireLevel(30);
            //Tier 6 Intelligence perks
            GrandArchmage3rdCircle.requirePerk(GrandArchmage2ndCircle)
                    .requireInt(175)
                    .requireLevel(36);
            EternalyLastingBuffs.requirePerk(EverLastingBuffs)
                    .requireInt(190)
                    .requireLevel(36);
            SuperiorSpirituality.requireWis(140)
                    .requireInt(210)
                    .requirePerk(HalfStepToSuperiorSpirituality)
                    .requireLevel(36);
            EpicIntelligence.requireInt(10)
                    .requireLevel(36);
            GrandTactician.requirePerk(Tactician)
                    .requireInt(150)
                    .requireLevel(36);
            GreyArchmage.requirePerk(GreyMage)
                    .requireInt(175)
                    .requireLevel(36);
            Convergence.requirePerk(GreyMage)
                    .requireInt(175)
                    .requireLevel(36);
            //Tier 7 Intelligence perks
			HalfStepToPeerlessSpirituality.requireWis(160)
                    .requireInt(240)
                    .requirePerk(SuperiorSpirituality)
                    .requireLevel(42);
            //Tier 8 Intelligence perks
            PeerlessSpirituality.requireWis(180)
                    .requireInt(270)
                    .requirePerk(HalfStepToPeerlessSpirituality)
                    .requireLevel(48);
            GrandGreyArchmage.requirePerk(GreyArchmage)
                    .requireInt(225)
                    .requireLevel(48);
            //Tier 9 Intelligence perks
        /*	PrestigeJobSeer.requirePrestigeJobSlot()
                    .requirePerk(GrandArchmage3rdCircle)
                    .requirePerk(SoulElder)
                    .requireInt(200)
                    .requireLevel(54);
			PrestigeJobGreySage.requirePrestigeJobSlot()
                    .requirePerks(GrandArchmage3rdCircle, JobEnchanter)
                    .requireInt(200)
                    .requireLevel(54);
        */	PrestigeJobWarlock.requirePrestigeJobSlot()
                    .requirePerks(GrandArchmage3rdCircle, JobEromancer)
                    .requireInt(200)
                    .requireLevel(54)
					.requireCustomFunction(function (player:Player):Boolean {
                        return player.statusEffectv1(StatusEffects.AlvinaTraining2) > 2;
                    }, "Finished a certain black mage quest line up to the third part of the training");//Alvina
        	PrestigeJobArchpriest.requirePrestigeJobSlot()
                    .requirePerks(JobEnchanter, JobGuardian)
                    .requireInt(200)
                    .requireLevel(54)
					.requireCustomFunction(function (player:Player):Boolean {
                        return player.statusEffectv1(StatusEffects.SiegweirdTraining2) > 1;
                    }, "Finished a certain paladin quest line up to the second part of the training");//Siegweird
            HalfStepToInhumanSpirituality.requireWis(200)
                    .requireInt(300)
                    .requirePerk(PeerlessSpirituality)
                    .requireLevel(54);
			RagingInfernoSu.requirePerks(GrandArchmage3rdCircle, RagingInfernoEx)
                    .requireLevel(54)
                    .requireInt(300);
            GlacialStormSu.requirePerks(GrandArchmage3rdCircle, GlacialStormEx)
                    .requireLevel(54)
                    .requireInt(300);
            HighVoltageSu.requirePerks(GrandArchmage3rdCircle, HighVoltageEx)
                    .requireLevel(54)
                    .requireInt(300);
            EclipsingShadowSu.requirePerks(GrandArchmage3rdCircle, EclipsingShadowEx)
                    .requireLevel(54)
                    .requireInt(300);
            //Tier 10 Intelligence perks
            /*Trance.requirePerk(PrestigeJobSeer)
					.requireInt(240)
					.requireLevel(60);*/
            HexKnowledge.requirePerk(PrestigeJobWarlock)
                    .requireInt(225)
                    .requireLevel(60);
            DivineKnowledge.requirePerk(PrestigeJobArchpriest)
                    .requireInt(225)
                    .requireLevel(60);
            InhumanSpirituality.requireWis(220)
                    .requireInt(330)
                    .requirePerk(HalfStepToInhumanSpirituality)
                    .requireLevel(60);
            UnlockForce3rdStage.requirePerk(UnlockForce2ndStage)
                    .requireInt(230)
                    .requireLevel(60);
            //Tier 11 Intelligence perks
            DarkRitual.requirePerk(HexKnowledge)
					.requireInt(250)
					.requireLevel(66);
            DivineArmament.requirePerk(DivineKnowledge)
					.requireInt(250)
					.requireLevel(66);
            HalfStepToEpicSpirituality.requireWis(240)
                    .requireInt(360)
                    .requirePerk(InhumanSpirituality)
                    .requireLevel(66);
            LegendaryIntelligence.requireInt(15)
                    .requirePerk(EpicIntelligence)
                    .requireLevel(66);
            //Tier 12 Intelligence perks
            CorruptMagic.requirePerk(DarkRitual)
					.requireInt(275)
					.requireLevel(72);
            PureMagic.requirePerk(DivineArmament)
					.requireInt(275)
					.requireLevel(72);
            EpicSpirituality.requireWis(260)
                    .requireInt(390)
                    .requirePerk(HalfStepToEpicSpirituality)
                    .requireLevel(72);
            //Tier 13 Intelligence perks
            HalfStepToLegendarySpirituality.requireWis(280)
                    .requireInt(420)
                    .requirePerk(EpicSpirituality)
                    .requireLevel(78);
            //Tier 14 Intelligence perks
            LegendarySpirituality.requireWis(300)
                    .requireInt(450)
                    .requirePerk(HalfStepToLegendarySpirituality)
                    .requireLevel(84);
            //Tier 15 Intelligence perks
            HalfStepToMythicalSpirituality.requireWis(320)
                    .requireInt(480)
                    .requirePerk(LegendarySpirituality)
                    .requireLevel(90);
            UnlockForce4thStage.requirePerk(UnlockForce3rdStage)
                    .requireInt(335)
                    .requireLevel(90);
            //Tier 16 Intelligence perks
            MythicalSpirituality.requireWis(340)
                    .requireInt(510)
                    .requirePerk(HalfStepToMythicalSpirituality)
                    .requireLevel(96);
            MythicalIntelligence.requireInt(20)
                    .requirePerk(LegendaryIntelligence)
                    .requireLevel(96);
            //------------
            // WISDOM
            //------------
            JobElementalConjurer.requireAdvancedJobSlot()
					.requirePerk(JobLeader)
                    .requireWis(10);
            ElementalConjurerResolve.requirePerk(JobElementalConjurer)
                    .requireWis(20);
            ElementalContractRank1.requirePerk(ElementalConjurerResolve)
                    .requireWis(25);
            ElementsOfTheOrtodoxPath.requirePerk(ElementalContractRank1)
                    .requireWis(30);
            ElementsOfMarethBasics.requirePerk(ElementsOfTheOrtodoxPath)
                    .requireWis(35);
            UnlockSpirit.requireWis(20);
            JobGunslinger.requireAdvancedJobSlot()
					.requirePerk(JobRanger)
					.requireWis(25)
					.requireTou(20)
                    .requireSpe(15);
            //Tier 1 Wisdom perks
            ElementalContractRank2.requirePerk(ElementalContractRank1)
                    .requireWis(50)
                    .requireLevel(6);
            ElementalBondFlesh.requirePerk(ElementalContractRank1)
                    .requireWis(50)
                    .requireLevel(6);
            ElementsOfMarethAdvanced.requirePerk(ElementsOfMarethBasics)
					.requireWis(50)
					.requireLevel(6);
            MagiculesTheory.requireWis(50)
                    .requireLevel(6);
            JobMonk.requireAdvancedJobSlot()
					.requirePerk(JobSoulCultivator)
					.requireWis(40)
                    .requireLevel(6);
            AlchemicalCartridge.requirePerk(JobGunslinger)
					.requireWis(30)
                    .requireTou(25)
                    .requireInt(20)
                    .requireLevel(6);
            DualWieldFirearms.requirePerks(DualWield, JobGunslinger)
					.requireWis(25)
					.requireTou(20)
                    .requireSpe(15)
                    .requireLevel(6);
            //Tier 2 Wisdom perks
            Combo.requirePerk(JobMonk)
                    .requireWis(75)
                    .requireSpe(50)
                    .requireLevel(12);
			GrabbingStyle.requirePerk(JobMonk)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(12);
			GrabbingMaster.requirePerk(GrabbingStyle)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(16);
			GrabbingGrandmaster.requirePerk(GrabbingMaster)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(20);
			JabbingStyle.requirePerks(JobMonk, SpeedDemon)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(12);
			JabbingMaster.requirePerk(JabbingStyle)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(16);
			JabbingGrandmaster.requirePerk(JabbingMaster)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(20);
			MeteorStrike.requirePerks(JabbingGrandmaster, GrabbingGrandmaster)
					.requireWis(75)
					.requireSpe(50)
					.requireLevel(24);
            ElementalContractRank3.requirePerk(ElementalContractRank2)
                    .requireWis(75)
                    .requireLevel(12);
            ElementalBondUrges.requirePerk(ElementalContractRank2)
                    .requireWis(75)
                    .requireLevel(12);
            StrongElementalBond.requirePerk(ElementalContractRank3)
                    .requireWis(75)
                    .requireLevel(12);
            AmateurGunslinger.requirePerk(JobGunslinger)
					.requireWis(35)
					.requireTou(30)
                    .requireSpe(25)
                    .requireLevel(12);
            RapidReload.requirePerk(JobGunslinger)
					.requireWis(35)
                    .requireTou(30)
                    .requireSpe(25)
                    .requireLevel(12);
            ChurchOfTheGun.requirePerk(AlchemicalCartridge)
					.requireWis(35)
                    .requireTou(30)
                    .requireInt(25)
                    .requireLevel(12);
            //Tier 3 Wisdom perks
            ElementalContractRank4.requirePerk(ElementalContractRank3)
                    .requireWis(100)
                    .requireLevel(18);
			ElementalConjurerKnowledge.requirePerk(ElementalContractRank2)
					.requireWis(100)
                    .requireLevel(18);
            CatchTheBlade.requirePerk(JobMonk)
                    .requireWis(80)
                    .requireSpe(100)
                    .requireLevel(18);
			ExplosiveCartridge.requirePerk(AmateurGunslinger)
					.requireWis(50)
                    .requireTou(45)
                    .requireSpe(40)
                    .requireLevel(18);
			TaintedMagazine.requirePerk(AmateurGunslinger)
					.requireWis(55)
                    .requireTou(50)
                    .requireSpe(45)
                    .requireLevel(18);
            //Tier 4 Wisdom perks
            ComboMaster.requirePerk(Combo)
                    .requireWis(125)
                    .requireSpe(100)
                    .requireLevel(24);
            ElementalContractRank5.requirePerks(ElementalContractRank4, ElementalConjurerDedication)
                    .requireWis(125)
                    .requireLevel(24);
            StrongElementalBondEx.requirePerks(StrongElementalBond, ElementalContractRank5)
                    .requireWis(125)
                    .requireLevel(24);
            ElementalConjurerDedication.requirePerk(ElementalConjurerResolve)
                    .requireWis(120)
                    .requireLevel(24);
            FirstAttackElementals.requirePerks(StrongElementalBond, ElementalContractRank4)
                    .requireLevel(24);
            ExpertGunslinger.requirePerk(AmateurGunslinger)
					.requireWis(65)
                    .requireTou(60)
                    .requireSpe(55)
                    .requireLevel(24);
            LightningReload.requirePerk(RapidReload)
					.requireWis(65)
                    .requireTou(60)
                    .requireSpe(55)
                    .requireLevel(24);
            SilverForMonsters.requirePerk(ExpertGunslinger)
					.requireWis(70)
                    .requireTou(65)
                    .requireSpe(60)
                    .requireLevel(24);
			//Tier 5 Wisdom perks
            UnlockSpirit2ndStage.requirePerk(UnlockSpirit)
                    .requireWis(125)
                    .requireLevel(30);
            ElementalContractRank6.requirePerk(ElementalContractRank5)
                    .requireWis(150)
                    .requireLevel(30);
            FirstAttackElementalsEx.requirePerks(FirstAttackElementals, ElementalContractRank5)
                    .requireLevel(30);
			/*ElementalConjurerKnowledgeEx.requirePerks(ElementalConjurerKnowledge, ElementalContractRank4)
					.requireWis(150)
                    .requireLevel(30);*/
			NamedBullet.requirePerk(ExpertGunslinger)
					.requireWis(80)
                    .requireTou(75)
                    .requireSpe(70)
                    .requireLevel(30);
            LockAndLoad.requirePerk(ExpertGunslinger)
					.requireWis(80)
                    .requireTou(75)
                    .requireSpe(70)
                    .requireLevel(30);
            //Tier 6 Wisdom perks
            ElementalContractRank7.requirePerk(ElementalContractRank6)
                    .requireWis(175)
                    .requireLevel(36);
            StrongElementalBondSu.requirePerks(StrongElementalBondEx, ElementalContractRank7)
                    .requireWis(175)
                    .requireLevel(36);
            FirstAttackElementalsSu.requirePerks(FirstAttackElementalsEx, ElementalContractRank6)
                    .requireLevel(36);
            EpicWisdom.requireWis(10)
                    .requireLevel(36);
            AdvancedMagiculesTheory.requirePerk(MagiculesTheory)
                    .requireWis(150)
                    .requireLevel(36);
            MasterGunslinger.requirePerk(ExpertGunslinger)
					.requireWis(95)
                    .requireTou(90)
                    .requireSpe(85)
                    .requireLevel(36);
			PrimedClipWarp.requirePerk(TaintedMagazine)
					.requireWis(100)
                    .requireTou(95)
                    .requireSpe(90)
                    .requireLevel(36);
            //Tier 7 Wisdom perks
            ElementalContractRank8.requirePerk(ElementalContractRank7)
                    .requireWis(200)
                    .requireLevel(42);
            //Tier 8 Wisdom perks
            ElementalContractRank9.requirePerks(ElementalContractRank8, ElementalConjurerSacrifice)
                    .requireWis(225)
                    .requireLevel(48);
            ElementalConjurerSacrifice.requirePerk(ElementalConjurerDedication)
                    .requireWis(220)
                    .requireLevel(48);
            //Tier 9 Wisdom perks
            PrestigeJobSoulArtMaster.requirePrestigeJobSlot()
                    .requirePerks(FleshBodyApprenticeStage, JobMonk)
                    .requireWis(200)
                    .requireLevel(54);
			PrestigeJobNecromancer.requirePrestigeJobSlot()
                    .requirePerks(DaoistApprenticeStage, JobGolemancer)
					.requireInt(125)
					.requireWis(175)
                    .requireLevel(54);
			PrestigeJobDruid.requirePrestigeJobSlot()
                    .requirePerk(Archmage)
                    .requirePerk(ElementalContractRank7)
                    .requireWis(200)
                    .requireLevel(54);
            ElementalContractRank10.requirePerk(ElementalContractRank9)
                    .requireWis(250)
                    .requireLevel(54);
			//This perk below (with others as well) for some reason stack overflows when using requirePerks.
            StrongerElementalBond.requirePerks(StrongElementalBondSu, ElementalContractRank10)
                    .requireWis(250)
                    .requireLevel(54);
            //Tier 10 Wisdom perks
            PerfectStrike.requireLevel(60)
                    .requirePerk(PrestigeJobSoulArtMaster);
            GreaterHarvest.requireLevel(60)
                    .requirePerk(PrestigeJobNecromancer);
            SharedPower.requireLevel(60)
                    .requirePerk(PrestigeJobDruid);
            ElementalContractRank11.requirePerk(ElementalContractRank10)
                    .requireWis(275)
                    .requireLevel(60);
            UnlockSpirit3rdStage.requirePerk(UnlockSpirit2ndStage)
                    .requireWis(230)
                    .requireLevel(60);
            //Tier 11 Wisdom perks
            Backlash.requireLevel(66)
                    .requirePerk(PerfectStrike);
            BoneSoul.requireLevel(66)
                    .requirePerk(GreaterHarvest);
            ElementalTouch.requireLevel(66)
                    .requirePerk(SharedPower);
            ElementalContractRank12.requirePerk(ElementalContractRank11)
                    .requireWis(300)
                    .requireLevel(66);
			/*ElementalConjurerKnowledgeSu.requirePerks(ElementalConjurerKnowledgeEx, ElementalContractRank10)
					.requireWis(300)
                    .requireLevel(66);*/
            LegendaryWisdom.requireWis(15)
                    .requirePerk(EpicWisdom)
                    .requireLevel(66);
            //Tier 12 Wisdom perks
            FlurryOfBlows.requireLevel(72)
                    .requirePerks(ComboMaster, Backlash);
            SkeletonLord.requireLevel(72)
                    .requirePerk(BoneSoul);
            ElementalContractRank13.requirePerk(ElementalContractRank12)
                    .requireWis(325)
                    .requireLevel(72);
            StrongerElementalBondEx.requirePerks(StrongerElementalBond, ElementalContractRank13)
                    .requireWis(325)
                    .requireLevel(72);
            //Tier 13 Wisdom perks
            RecoveryMantra.requireLevel(78)
                    .requirePerk(FlurryOfBlows);
			ElementalContractRank14.requirePerk(ElementalContractRank13)
                    .requireWis(350)
                    .requireLevel(78);
            //Tier 14 Wisdom perks
			ElementalContractRank15.requirePerk(ElementalContractRank14)
                    .requireWis(375)
                    .requireLevel(84);
            //Tier 15 Wisdom perks
			UnlockSpirit4thStage.requirePerk(UnlockSpirit3rdStage)
                    .requireWis(335)
                    .requireLevel(90);
			ElementalContractRank16.requirePerk(ElementalContractRank15)
                    .requireWis(400)
                    .requireLevel(90);
            StrongerElementalBondSu.requirePerks(StrongerElementalBondEx, ElementalContractRank16)
                    .requireWis(400)
                    .requireLevel(90);
			///Tier 16 Wisdom perks
			ElementalContractRank17.requirePerk(ElementalContractRank16)
                    .requireWis(425)
                    .requireLevel(96);
            MythicalWisdom.requireWis(20)
                    .requirePerk(LegendaryWisdom)
                    .requireLevel(96);
			///Tier 17 Wisdom perks
			ElementalContractRank18.requirePerk(ElementalContractRank17)
                    .requireWis(450)
                    .requireLevel(102);
			///Tier 18 Wisdom perks
			ElementalContractRank19.requirePerk(ElementalContractRank18)
                    .requireWis(475)
                    .requireLevel(108);
			///Tier 19 Wisdom perks
			ElementalContractRank20.requirePerk(ElementalContractRank19)
                    .requireWis(500)
                    .requireLevel(114);
            StrongestElementalBond.requirePerks(StrongerElementalBondSu, ElementalContractRank20)
                    .requireWis(500)
                    .requireLevel(90);
			///Tier 20 Wisdom perks
			ElementalContractRank21.requirePerk(ElementalContractRank20)
                    .requireWis(525)
                    .requireLevel(120);
			///Tier 21 Wisdom perks
			ElementalContractRank22.requirePerk(ElementalContractRank21)
                    .requireWis(550)
                    .requireLevel(126);
			///Tier 22 Wisdom perks
			ElementalContractRank23.requirePerk(ElementalContractRank22)
                    .requireWis(575)
                    .requireLevel(132);
			///Tier 23 Wisdom perks
			ElementalContractRank24.requirePerk(ElementalContractRank23)
                    .requireWis(600)
                    .requireLevel(138);
            StrongestElementalBondEx.requirePerks(StrongestElementalBond, ElementalContractRank24)
                    .requireWis(600)
                    .requireLevel(138);
			///Tier 24 Wisdom perks
			ElementalContractRank25.requirePerk(ElementalContractRank24)
                    .requireWis(625)
                    .requireLevel(144);
			///Tier 25 Wisdom perks
			ElementalContractRank26.requirePerk(ElementalContractRank25)
                    .requireWis(650)
                    .requireLevel(150);
			///Tier 26 Wisdom perks
			ElementalContractRank27.requirePerk(ElementalContractRank26)
                    .requireWis(675)
                    .requireLevel(156);
			///Tier 27 Wisdom perks
			ElementalContractRank28.requirePerk(ElementalContractRank27)
                    .requireWis(700)
                    .requireLevel(162);
            StrongestElementalBondSu.requirePerks(StrongestElementalBondEx, ElementalContractRank28)
                    .requireWis(700)
                    .requireLevel(162);
			///Tier 28 Wisdom perks
			ElementalContractRank29.requirePerk(ElementalContractRank28)
                    .requireWis(725)
                    .requireLevel(168);
			///Tier 29 Wisdom perks
			ElementalContractRank30.requirePerk(ElementalContractRank29)
                    .requireWis(750)
                    .requireLevel(174);
			///Tier 30 Wisdom perks
			ElementalContractRank31.requirePerk(ElementalContractRank30)
                    .requireWis(775)
                    .requireLevel(180);
            //------------
            // LIBIDO
            //------------
            //slot 5 - libido perks

            //Slot 5 - Fertile+ increases cum production and fertility (+15%)
            JobSeducer.requireLib(10);
            UnlockArdor.requireLib(20);
            FertilityPlus.requireLib(25);
            FertilityPlus.defaultValue1 = 15;
            FertilityPlus.defaultValue2 = 1.75;
            BasicSelfControl.requireLib(30)
                    .requireInt(20);
            Sensual.requirePerk(JobSeducer)
                    .requireLib(20);
            SuperSensual.requirePerk(Sensual)
                    .requireLib(40);
            //Slot 5 - minimum libido
            ColdBlooded.requireMinLust(20);
            ColdBlooded.defaultValue1 = 20;
            HotBlooded.requireLib(50);
            HotBlooded.defaultValue1 = 20;
            //Tier 1 Libido Perks
            //Slot 5 - minimum libido
            //Slot 5 - Fertility- decreases cum production and fertility.
            FertilityMinus.requireLibLessThan(25)
                    .requireLevel(6);
            FertilityMinus.defaultValue1 = 15;
            FertilityMinus.defaultValue2 = 0.7;
            WellAdjusted.requireLib(60)
                    .requireLevel(6);
            //Slot 5 - minimum libido
            Masochist.requireLib(60)
                    .requireCor(50)
                    .requireLevel(6);
            JobEromancer.requireAdvancedJobSlot()
					.requirePerk(JobSeducer)
                    .requireLib(35)
                    .requireInt(35)
                    .requireLevel(6);
            ArcaneLash.requirePerk(JobEromancer)
					.requireLevel(6);
            EromancyBeginner.requirePerk(JobEromancer)
					.requireLib(45)
                    .requireInt(45)
                    .requireLevel(6);
            HalfStepToImprovedSelfControl.requireLib(60)
                    .requireInt(40)
                    .requirePerk(BasicSelfControl)
                    .requireLevel(6);
            InhumanDesireI.requirePerk(JobSeducer)
                    .requireLib(50)
                    .requireLevel(6);
            InhumanDesireII.requirePerk(InhumanDesireI)
                    .requireLib(70)
                    .requireLevel(8)
                    .requireNGPlus(1);
            InhumanDesireIII.requirePerk(InhumanDesireII)
                    .requireLib(90)
                    .requireLevel(10)
                    .requireNGPlus(2);
            //Tier 2 Libido Perks
            InhumanDesireIV.requirePerk(InhumanDesireIII)
                    .requireLib(110)
                    .requireNGPlus(3)
                    .requireLevel(12);
            InhumanDesireV.requirePerk(InhumanDesireIV)
                    .requireLib(130)
                    .requireLevel(14)
                    .requireNGPlus(4);
            InhumanDesireVI.requirePerk(InhumanDesireV)
                    .requireLib(150)
                    .requireLevel(16)
                    .requireNGPlus(5);
            DemonicDesireI.requirePerk(InhumanDesireI)
                    .requireLib(75)
                    .requireLevel(12);
            DemonicDesireII.requirePerk(DemonicDesireI)
                    .requireLib(95)
                    .requireLevel(14)
                    .requireNGPlus(1);
            DemonicDesireIII.requirePerk(DemonicDesireII)
                    .requireLib(115)
                    .requireLevel(16)
                    .requireNGPlus(2);
            ImprovedSelfControl.requireLib(90)
                    .requireInt(60)
                    .requirePerk(HalfStepToImprovedSelfControl)
                    .requireLevel(12);
            Transference.requirePerk(JobEromancer)
                    .requireLevel(12)
                    .requireLib(50)
                    .requireStatusEffect(StatusEffects.KnowsArouse, "Arouse spell");
            EromancyExpert.requirePerk(EromancyBeginner)
					.requireLib(65)
                    .requireInt(65)
                    .requireLevel(12);
            JobCourtesan.requireAdvancedJobSlot()
					.requirePerk(JobSeducer)
                    .requireLib(50)
                    .requireLevel(12);
            DazzlingDisplay.requirePerk(JobCourtesan)
                    .requireLib(50)
                    .requireLevel(12);
			Straddle.requirePerk(JobCourtesan)
					.requireLib(75)
					.requireLevel(12);
            //Tier 3 Libido Perks
            DemonicDesireIV.requirePerk(DemonicDesireIII)
                    .requireLib(135)
                    .requireNGPlus(3)
                    .requireLevel(18);
            DemonicDesireV.requirePerk(DemonicDesireIV)
                    .requireLib(155)
                    .requireLevel(20)
                    .requireNGPlus(4);
            DemonicDesireVI.requirePerk(DemonicDesireV)
                    .requireLib(175)
                    .requireLevel(22)
                    .requireNGPlus(5);
            HalfStepToAdvancedSelfControl.requireLib(120)
                    .requireInt(80)
                    .requirePerk(ImprovedSelfControl)
                    .requireLevel(18);
            ColdLust.requirePerks(Lustzerker, ImprovedSelfControl)
                    .requireLib(75)
                    .requireLevel(18);
            EromancyMaster.requirePerk(EromancyExpert)
					.requireLib(85)
                    .requireInt(85)
                    .requireLevel(18);
            ArouseTheAudience.requirePerk(JobCourtesan)
                    .requireLib(75)
                    .requireLevel(18);
            //Tier 4 Libido Perks
            AdvancedSelfControl.requireLib(150)
                    .requireInt(100)
                    .requirePerk(HalfStepToAdvancedSelfControl)
                    .requireLevel(24);
            CriticalPerformance.requirePerk(JobCourtesan)
                    .requireLib(100)
                    .requireLevel(24);
            GiftOfLust.requirePerks(Transference, EromancyBeginner)
					.requireLevel(24)
                    .requireLib(100);
			StraddleImproved.requirePerk(Straddle)
					.requireLib(150)
					.requireLevel(24);
            //Tier 5 Libido Perks
            HalfStepToSuperiorSelfControl.requireLib(180)
                    .requireInt(120)
                    .requirePerk(AdvancedSelfControl)
                    .requireLevel(30);
            ColderLust.requirePerks(ColdLust, AdvancedSelfControl)
                    .requireLib(150)
                    .requireLevel(30);
            UnlockArdor2ndStage.requirePerk(UnlockArdor)
                    .requireLib(125)
                    .requireLevel(30);
            //Tier 6 Libido Perks
            SuperiorSelfControl.requireLib(210)
                    .requireInt(140)
                    .requirePerk(HalfStepToSuperiorSelfControl)
                    .requireLevel(36);
            EpicLibido.requireLib(10)
                    .requireLevel(36);
            GreaterGiftOfLust.requirePerks(GiftOfLust, EromancyExpert)
					.requireLevel(36)
                    .requireLib(150);
            //Tier 7 Libido Perks
            PrestigeJobBindmaster.requirePrestigeJobSlot()
                    .requirePerks(JobEromancer, JobGuardian)
                    .requireLib(200)
                    .requireLevel(42);
        	HalfStepToPeerlessSelfControl.requireLib(240)
                    .requireInt(160)
                    .requirePerk(SuperiorSelfControl)
                    .requireLevel(42);
            //Tier 8 Libido Perks
            UnbreakableBind.requirePerk(PrestigeJobBindmaster)
                    .requireLevel(48);
            PeerlessSelfControl.requireLib(270)
                    .requireInt(180)
                    .requirePerk(HalfStepToPeerlessSelfControl)
                    .requireLevel(48);
            //Tier 9 Libido Perks
            Sadomasochism.requirePerk(UnbreakableBind)
                    .requireLevel(54);
            HalfStepToInhumanSelfControl.requireLib(300)
                    .requireInt(200)
                    .requirePerk(PeerlessSelfControl)
                    .requireLevel(54);
            //Tier 10 Libido Perks
            ControlFreak.requirePerk(Sadomasochism)
                    .requireLevel(60);
            InhumanSelfControl.requireLib(330)
                    .requireInt(220)
                    .requirePerk(HalfStepToInhumanSelfControl)
                    .requireLevel(60);
            UnlockArdor3rdStage.requirePerk(UnlockArdor2ndStage)
                    .requireLib(230)
                    .requireLevel(60);
            //Tier 11 Libido Perks
            HalfStepToEpicSelfControl.requireLib(360)
                    .requireInt(240)
                    .requirePerk(InhumanSelfControl)
                    .requireLevel(66);
            LegendaryLibido.requireLib(15)
                    .requirePerk(EpicLibido)
                    .requireLevel(66);
            //Tier 12 Libido Perks
            EpicSelfControl.requireLib(390)
                    .requireInt(260)
                    .requirePerk(HalfStepToEpicSelfControl)
                    .requireLevel(72);
            //Tier 13 Libido Perks
            HalfStepToLegendarySelfControl.requireLib(420)
                    .requireInt(280)
                    .requirePerk(EpicSelfControl)
                    .requireLevel(78);
            //Tier 14 Libido Perks
            LegendarySelfControl.requireLib(450)
                    .requireInt(300)
                    .requirePerk(HalfStepToLegendarySelfControl)
                    .requireLevel(84);
            //Tier 15 Libido Perks
            HalfStepToMythicalSelfControl.requireLib(480)
                    .requireInt(320)
                    .requirePerk(LegendarySelfControl)
                    .requireLevel(90);
            UnlockArdor4thStage.requirePerk(UnlockArdor3rdStage)
                    .requireLib(335)
                    .requireLevel(90);
            //Tier 16 Libido Perks
            MythicalSelfControl.requireLib(510)
                    .requireInt(340)
                    .requirePerk(HalfStepToMythicalSelfControl)
                    .requireLevel(96);
            MythicalLibido.requireLib(20)
                    .requirePerk(LegendaryLibido)
                    .requireLevel(96);
            //------------
            // SENSITIVITY
            //------------
            //Slot 6 - Tier 0
            EyesOfTheHunterNovice.requireSen(25);
            Desensitization.requireSen(10);
			//.requireMinSens(25);
            //Tier 1 Sensitivity Perks
            EyesOfTheHunterAdept.requireSen(50)
                    .requirePerk(EyesOfTheHunterNovice)
                    .requireLevel(6);
            //Tier 2 Sensitivity Perks
            EyesOfTheHunterExpert.requireSen(75)
                    .requirePerk(EyesOfTheHunterAdept)
                    .requireLevel(12);
            //Tier 3 Sensitivity Perks
            EyesOfTheHunterMaster.requireSen(100)
                    .requirePerk(EyesOfTheHunterExpert)
                    .requireLevel(18);
            //Tier 4 Sensitivity Perks
            EyesOfTheHunterGrandMaster.requireSen(125)
                    .requirePerk(EyesOfTheHunterMaster)
                    .requireLevel(24);
            //Tier 5 Sensitivity Perks
            EyesOfTheHunterEx.requireSen(25)
                    .requirePerk(EyesOfTheHunterNovice)
                    .requireLevel(30);
            GreaterDesensitization.requireSen(20)
                    .requirePerk(Desensitization)
                    .requireLevel(30);
            //Tier 6 Sensitivity Perks
			EpicSensitivity.requireSen(10)
                    .requireLevel(36);
            //Tier 7 Sensitivity Perks
            EyesOfTheHunterSu.requireSen(25)
                    .requirePerk(EyesOfTheHunterEx)
                    .requireLevel(42);
            //Tier 8 Sensitivity Perks
            //Tier 9 Sensitivity Perks
            //Tier 10 Sensitivity Perks
            EpicDesensitization.requireSen(50)
                    .requirePerk(GreaterDesensitization)
                    .requireLevel(60);
            //Tier 11 Sensitivity Perks
            LegendarySensitivity.requireSen(15)
                    .requirePerk(EpicSensitivity)
                    .requireLevel(66);
            //Tier 12 Sensitivity Perks
            //Tier 13 Sensitivity Perks
            //Tier 14 Sensitivity Perks
            //Tier 15 Sensitivity Perks
            //LegendaryDesensitization.requireSen(100)
            //        .requirePerk(EpicDesensitization)
            //        .requireLevel(90);
            //Tier 16 Sensitivity Perks
            MythicalSensitivity.requireSen(20)
                    .requirePerk(LegendarySensitivity)
                    .requireLevel(96);
            //Tier 17 Sensitivity Perks
            //Tier 18 Sensitivity Perks
            //Tier 19 Sensitivity Perks
            //Tier 20 Sensitivity Perks
            //MythicalDesensitization.requireSen(200)
            //        .requirePerk(LegendaryDesensitization)
            //        .requireLevel(120);
            //Tier 21 Sensitivity Perks
            //------------
            // CORRUPTION
            //------------
            //Slot 7 - Corrupted Libido - lust raises 10% slower.
            CorruptedLibido.requireCor(10);
            CorruptedLibido.defaultValue1 = 20;
            //Slot 7 - Seduction (Must have seduced Jojo)
            Seduction.requireCor(15);
            //Slot 7 - Nymphomania
            Nymphomania.requireCor(15)
                    .requirePerk(CorruptedLibido);
            //Slot 7 - UNFINISHED :3
            Acclimation.requireCor(15)
                    .requirePerk(CorruptedLibido)
                    .requireMinLust(20);
			//
            //Tier 1 Corruption Perks - acclimation over-rides
            Sadist.requireCor(20)
                    .requirePerk(CorruptedLibido)
                    .requireLevel(6);
            ArousingAura.requireCor(25)
                    .requirePerk(CorruptedLibido)
                    .requireLevel(6);
            //Tier 2
            /*if (requireMinLevel(12))
			{
			if (requirePerk(JobSeducer)
			.requireMinCor(50)) {
			_add(new PerkClass(PerkLib				job:corrupter czy jakoś tak - daje efekt iż wszyscy reaguja jakby pc miał 10/15/20/25 mniej corruption, nie wiem czy jeszcze jakiś efekt dodać
			}
			}*/
            //Tier 3
            //Tier 4
            //------------
            // SOULFORCE
            //------------
            //Tier 0
            JobSoulCultivator.requireWis(10);
            SoulApprentice.requireWis(20)
                    .requirePerk(JobSoulCultivator);
            Dantain.requirePerk(JobSoulCultivator)
                    .requireMaxSoulforce(100);
            BodyCultivator.requirePerk(JobSoulCultivator);
            DaoistCultivator.requirePerk(JobSoulCultivator);
            //HeartCultivator.requirePerk(JobSoulCultivator);		//psionic/min powers cultivation/psion class from D&D?
            //requirePerk(JobSoulCultivator)		//allowing to use soulforce options more times per day - 1/2/3 time more?
            FlyingSwordPath.requirePerk(JobSoulCultivator);
			SoaringBlades.requirePerks(Dantain, FlyingSwordPath);
            //Tier 1
            SoulPersonage.requireLevel(9)
                    .requirePerk(SoulApprentice)
                    .requireWis(40);
            InsightfulResourcesI.requireLevel(6)
                    .requireWis(50)
                    .requirePerk(JobSoulCultivator);
            FleshBodyApprenticeStage.requireLevel(6)
                    .requirePerk(BodyCultivator);
            DaoistApprenticeStage.requireLevel(6)
                    .requirePerk(DaoistCultivator);
            InsightfulResourcesII.requireLevel(6)
                    .requirePerk(InsightfulResourcesI)
                    .requireWis(70)
                    .requireLevel(8)
                    .requireNGPlus(1);
            InsightfulResourcesIII.requirePerk(InsightfulResourcesII)
                    .requireWis(90)
                    .requireLevel(10)
                    .requireNGPlus(2);
            //Tier 2
            InsightfulResourcesIV.requireLevel(12)
                    .requirePerk(InsightfulResourcesIII)
                    .requireWis(110)
                    .requireNGPlus(3);
            InsightfulResourcesV.requirePerk(InsightfulResourcesIV)
                    .requireWis(130)
                    .requireLevel(20)
                    .requireNGPlus(4);
            InsightfulResourcesVI.requirePerk(InsightfulResourcesV)
                    .requireWis(150)
                    .requireLevel(22)
                    .requireNGPlus(5);
            //Tier 3
            SoulWarrior.requirePerk(SoulPersonage)
                    .requireWis(80)
                    .requireLevel(18);
            //2nd perk for flying swords slots
            //Tier 4
            SoulSprite.requirePerks(SoulWarrior, HclassHeavenTribulationSurvivor)
					.requireWis(100)
                    .requireLevel(27);
            FleshBodyWarriorStage.requireLevel(24)
                    .requirePerk(FleshBodyApprenticeStage);
            DaoistWarriorStage.requireLevel(24)
                    .requirePerk(DaoistApprenticeStage);
            //Tier 5
			//Tier 6
            SoulScholar.requirePerk(SoulSprite)
                    .requireWis(140)
                    .requireLevel(36);
            //Tier 7
            SoulElder.requirePerk(SoulScholar)
                    .requireWis(160)
                    .requireLevel(45);
            //Tier 8
            //Tier 9
            SoulExalt.requirePerks(SoulElder, GclassHeavenTribulationSurvivor)
                    .requireWis(200)
                    .requireLevel(54);
            //Tier 10
            FleshBodyElderStage.requireLevel(60)
                    .requirePerk(FleshBodyWarriorStage);
            DaoistElderStage.requireLevel(60)
                    .requirePerk(DaoistWarriorStage);
            //Tier 11
            SoulOverlord.requirePerk(SoulExalt)
                    .requireWis(240)
                    .requireLevel(66);
            //Tier 12
            //Tier 13
            SoulTyrant.requirePerks(SoulOverlord, FclassHeavenTribulationSurvivor)
                    .requireWis(280)
					.requireLevel(78);
            //Tier 14
            //Tier 15
     		SoulKing.requirePerk(SoulTyrant)
                    .requireWis(320)
                    .requireLevel(90);
            //Tier 16
            FleshBodyOverlordStage.requireLevel(96)
                    .requirePerk(FleshBodyElderStage);
            DaoistOverlordStage.requireLevel(96)
                    .requirePerk(DaoistElderStage);
            //Tier 17
            SoulEmperor.requirePerk(SoulKing)//s	, EclassHeavenTribulationSurvivor
                    .requireWis(360)
                    .requireLevel(102);
            //Tier 18
            //Tier 19
            SoulAncestor.requirePerk(SoulEmperor)
                    .requireWis(400)
                    .requireLevel(114);
            //Tier 20
     		//------------
            // MISCELLANEOUS
            //------------
            //Tier 0
            CatlikeNimbleness.requirePerk(Flexibility).requireCustomFunction(function (player:Player):Boolean {
                return player.catScore() >= 4 || player.nekomataScore() >= 4 || player.displacerbeastScore() >= 4 || player.hellcatScore() >= 4 || player.cheshireScore() >= 4 || player.sphinxScore() >= 4;
            }, "Any cat race");
			EclipticMind.requireCustomFunction(function (player:Player):Boolean {
				return player.alicornScore() >= 12 || player.unicornScore() >= 12 || player.alicornkinScore() >= 10|| player.unicornkinScore() >= 10 ;
			}, "Unicorn or Bicorn race");
            RatatoskrSmarts.requirePerk(KnowledgeIsPower).requireCustomFunction(function (player:Player):Boolean {//.requireAdrenalGlandsMutationSlot()
                return player.ratatoskrScore() >= 4;
            }, "Squirrel/Ratatoskr race");
            ScyllaInkGlands.requirePerk(InkSpray).requireCustomFunction(function (player:Player):Boolean {
                return player.scyllaScore() >= 5;
            }, "Scylla race");
            TrachealSystem.requireCustomFunction(function (player:Player):Boolean {
		//		return player.lowerBody == LowerBody.DRIDER;
		//	}, "Drider Lower Body").requireCustomFunction(function (player:Player):Boolean {
                return player.beeScore() >= 4 || player.mantisScore() >= 4 || player.scorpionScore() >= 4 || player.spiderScore() >= 4 || player.cancerScore() >= 4 || player.atlachNachaScore() >= 17;
            }, "Any insect race");
            /*
			if (player.() >=  && ) {
			_add(new PerkClass(PerkLib.));
			}
			if (player.() >=  && ) {
			_add(new PerkClass(PerkLib.));
			}
			Phoenix Thorax czy jakiś inny związany z morphami perk ub coś związane z gardłem - dla ras mogących używać ultradźwieki jako atak lub kogoś typu banshee atak wyciem

			Perk związany ze skórą

			Perk związany z układem nerwowym

			Perk związany z koścmi

			if (flags[kFLAGS.HUNGER_ENABLED] > 0 && game.player.humanScore() < 5) {
			_add(new PerkClass(PerkLib.)); - zelazny zoladek czy cos w tym stylu
			}
			*/
            Metamorph.requirePerk(GeneticMemory);
            //MetamorphEx.requirePerk(Metamorph);
            //	JobArtificer.requireInt(25)
            //				.requireWis(25);
            JobBeastWarrior.requireStr(20)
					.requireTou(20)
					.requireSpe(20);
            PrimalFuryI.requirePerk(JobBeastWarrior);
            PrimalFuryII.requirePerk(PrimalFuryI)
					.requireLevel(2)
					.requireNGPlus(1);
            PrimalFuryIII.requirePerk(PrimalFuryII)
					.requireLevel(4)
					.requireNGPlus(2);
			ToughHide.requirePerk(JobBeastWarrior)
					.requireTou(30);
			AerialCombat.requireStr(20)
					.requireSpe(20)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.canFly() || player.canFlyNoWings();
                    }, "Can fly");
            IronStomach.requireHungerEnabled();
            JobLeader.requireInt(10)
					.requireWis(10);
            Motivation.requirePerks(JobLeader, BasicLeadership);
			VenomousDiet.requireHungerEnabled()
					.requireMaxVenom(100);
			VenomousAdiposeTissue.requireTou(10)
					.requireMaxVenom(100);
			CursedTag.requireCustomFunction(function (player:Player):Boolean {
                return player.jiangshiScore() >= 20;
            }, "Jiangshi race");
			ImprovedCursedTag.requirePerk(CursedTag).requireCustomFunction(function (player:Player):Boolean {
                return player.jiangshiScore() >= 20;
            }, "Jiangshi race");
			GreaterCursedTag.requirePerk(ImprovedCursedTag).requireCustomFunction(function (player:Player):Boolean {
                return player.jiangshiScore() >= 20;
            }, "Jiangshi race");
            //Tier 1
            CatlikeNimblenessEvolved.requireLevel(6)
					.requirePerk(CatlikeNimbleness)
					.requireCustomFunction(function (player:Player):Boolean {
						return player.catScore() >= 7 || player.nekomataScore() >= 8 || player.displacerbeastScore() >= 8 || player.hellcatScore() >= 8 || player.cheshireScore() >= 8 || player.sphinxScore() >= 8;
					}, "Any cat race");
            RatatoskrSmartsEvolved.requireLevel(6).requirePerk(RatatoskrSmarts).requireCustomFunction(function (player:Player):Boolean {
                return player.ratatoskrScore() >= 8;
            }, "Squirrel/Ratatoskr race");
            ScyllaInkGlandsEvolved.requireLevel(6).requirePerk(ScyllaInkGlands).requireCustomFunction(function (player:Player):Boolean {
                return player.scyllaScore() >= 10;
            }, "Scylla race");
            TrachealSystemEvolved.requireLevel(6).requirePerk(TrachealSystem).requireCustomFunction(function (player:Player):Boolean {
		//		return player.lowerBody == LowerBody.DRIDER;
		//	}, "Drider Lower Body").requireCustomFunction(function (player:Player):Boolean {
                return player.beeScore() >= 8 || player.mantisScore() >= 8 || player.scorpionScore() >= 8 || player.spiderScore() >= 8 || player.cancerScore() >= 8 || player.atlachNachaScore() >= 17;
            }, "Any insect race");
			ChimericalBodyInitialStage.requireLevel(6)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 2;
                    }, "Two racial perks");
			RacialParagon.requireLevel(6);
            //Speedy Recovery - Regain Fatigue 50% faster.
            SpeedyRecovery.requireLevel(6);
            ResistanceI.requireLevel(6);
            Heroism.requireLevel(6);
            DualWield.requireLevel(6);
            Diehard.requireLevel(6);
            Survivalist.requireLevel(6)
                    .requireHungerEnabled();
            ResistanceII.requirePerk(ResistanceI)
                    .requireLevel(8)
                    .requireNGPlus(1);
            ResistanceIII.requirePerk(ResistanceII)
                    .requireLevel(10)
                    .requireNGPlus(2);
            JobGolemancer.requireAdvancedJobSlot()
					.requirePerk(JobLeader)
                    .requireLevel(6)
                    .requireInt(25)
                    .requireWis(25);
            ArcanePoolI.requireLevel(6)
                    .requireInt(30)
                    .requireWis(30)
                    .requireAnyPerk(JobElementalConjurer, JobGolemancer);
            ArcanePoolII.requireLevel(8)
                    .requireInt(40)
                    .requireWis(40)
                    .requirePerk(ArcanePoolI)
                    .requireNGPlus(1);
            ArcanePoolIII.requireLevel(10)
                    .requireInt(50)
                    .requireWis(50)
                    .requirePerk(ArcanePoolII)
                    .requireNGPlus(2);
            BeginnerGolemMaker.requireLevel(6)
                    .requireInt(30)
                    .requireWis(30)
                    .requirePerk(JobGolemancer);
            BiggerGolemBagI.requireLevel(6)
                    .requireInt(40)
                    .requireWis(40)
                    .requirePerk(JobGolemancer);
            BiggerGolemBagII.requireLevel(8)
                    .requireInt(60)
                    .requireWis(60)
                    .requirePerk(BiggerGolemBagI)
                    .requireNGPlus(1);
            BiggerGolemBagIII.requireLevel(10)
                    .requireInt(80)
                    .requireWis(80)
                    .requirePerk(BiggerGolemBagII)
                    .requireNGPlus(2);
            ImprovingNaturesBlueprintsNaturalWeapons.requirePerk(JobBeastWarrior)
                    .requireStr(35)
                    .requireTou(35)
                    .requireSpe(35)
                    .requireLevel(6);
            PrimalFuryIV.requirePerk(PrimalFuryIII)
                    .requireNGPlus(3);
            PrimalFuryV.requirePerk(PrimalFuryIV)
                    .requireLevel(8)
                    .requireNGPlus(4);
            PrimalFuryVI.requirePerk(PrimalFuryV)
                    .requireLevel(10)
                    .requireNGPlus(5);
            FeralArmor.requirePerk(ToughHide)
					.requireLevel(6)
					.requireTou(60);
            ClawTraining.requirePerk(JobBeastWarrior)
					.requireLevel(6)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.hasNaturalWeapons() || player.haveNaturalClawsTypeWeapon();
					}, "Any natural weapon");
            JobHealer.requireAdvancedJobSlot()
					.requireAnyPerk(JobSorcerer, JobSoulCultivator)
					.requireLevel(6)
                    .requireInt(30)
                    .requireWis(30);
            SpellpowerHealing.requireLevel(6)
                    .requirePerk(JobHealer)
                    .requireWis(50);
            WisenedHealer.requireLevel(6)
                    .requirePerk(JobHealer)
                    .requireWis(50);
			DeathPlunge.requireLevel(6)
                    .requirePerk(AerialCombat);
			SpiritedDive.requireLevel(6)
                    .requirePerk(AerialCombat);
			Spectre.requireLevel(6)
                    .requirePerks(Evade, Runner, Incorporeality);
			IronStomachEx.requireLevel(6)
                    .requirePerk(IronStomach);
            WispLieutenant.requireLevel(6)
                    .requirePerk(JobLeader)
					.requireInt(50)
					.requireWis(50)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.playerMinionsCount() >= 3;
					}, "3+ pets/minions");
            ShootTheLoadAndHitTheRoad.requireLevel(6)
                    .requirePerk(JobLeader)
					.requireInt(60)
					.requireWis(60);
			Enhancement.requireLevel(6)
					.requireAnyPerk(HistoryAlchemist, PastLifeAlchemist);
			Wizened.requireLevel(6)
					.requireAnyPerk(HistoryCultivator, PastLifeCultivator);
			BonesOfSteel.requireLevel(6)
					.requireAnyPerk(HistoryFighter, PastLifeFighter);
			Lucky.requireLevel(6)
					.requireAnyPerk(HistoryFortune, PastLifeFortune);
			Nurse.requireLevel(6)
					.requireAnyPerk(HistoryHealer, PastLifeHealer);
			PewWarmer.requireLevel(6)
					.requireAnyPerk(HistoryReligious, PastLifeReligious);
			Studious.requireLevel(6)
					.requireAnyPerk(HistoryScholar, PastLifeScholar);
			SoldiersFriend.requireLevel(6)
					.requireAnyPerk(HistoryScout, PastLifeScout);
			Whistles.requireLevel(6)
					.requireAnyPerk(HistorySlacker, PastLifeSlacker);
			//??Slut??
			Tongs.requireLevel(6)
					.requireAnyPerk(HistorySmith, PastLifeSmith);
			Amateur.requireLevel(6)
					.requireAnyPerk(HistoryWhore, PastLifeWhore);
            //Tier 2
			EclipticMindEvolved.requireLevel(12).requirePerk(EclipticMind).requireCustomFunction(function (player:Player):Boolean {
				return player.alicornScore() >= 12 || player.unicornScore() >= 12 || player.alicornkinScore() >= 10|| player.unicornkinScore() >= 10 ;
			}, "Unicorn or Bicorn race");
			ChimericalBodySemiBasicStage.requirePerk(ChimericalBodyInitialStage)
                    .requireLevel(12)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 4;
                    }, "Four racial perks");
			Apex.requireLevel(12)
					.requirePerk(RacialParagon);
            Survivalist2.requireLevel(12)
                    .requireHungerEnabled()
                    .requirePerk(Survivalist);
            ResistanceIV.requireLevel(12)
                    .requirePerk(ResistanceIII)
                    .requireNGPlus(3);
            ResistanceV.requirePerk(ResistanceIV)
                    .requireLevel(14)
                    .requireNGPlus(4);
            ResistanceVI.requirePerk(ResistanceV)
                    .requireLevel(16)
                    .requireNGPlus(5);
            Whirlwind.requireLevel(12)
                    .requirePerk(JobSwordsman);
            Whipping.requireLevel(12)
                    .requirePerk(JobEromancer);
            WhirlwindFeral.requireLevel(12)
                    .requirePerk(JobBeastWarrior);
            NaturalInstincts.requireLevel(12)
                    .requirePerk(JobBeastWarrior);
            ArcanePoolIV.requireLevel(12)
                    .requireInt(60)
                    .requireWis(60)
                    .requirePerk(ArcanePoolIII)
                    .requireNGPlus(3);
            ArcanePoolV.requireLevel(14)
                    .requireInt(70)
                    .requireWis(70)
                    .requirePerk(ArcanePoolIV)
                    .requireNGPlus(4);
            ArcanePoolVI.requireLevel(16)
                    .requireInt(80)
                    .requireWis(80)
                    .requirePerk(ArcanePoolV)
                    .requireNGPlus(5);
            ApprenticeGolemMaker.requireLevel(12)
                    .requireInt(50)
                    .requireWis(50)
                    .requirePerk(BeginnerGolemMaker);
            BiggerGolemBagIV.requireLevel(12)
                    .requireInt(100)
                    .requireWis(100)
                    .requirePerk(BiggerGolemBagIII)
                    .requireNGPlus(3);
            BiggerGolemBagV.requireLevel(14)
                    .requireInt(120)
                    .requireWis(120)
                    .requirePerk(BiggerGolemBagIV)
                    .requireNGPlus(4);
            BiggerGolemBagVI.requireLevel(14)
                    .requireInt(140)
                    .requireWis(140)
                    .requirePerk(BiggerGolemBagV)
                    .requireNGPlus(5);
            ChargedCore.requireLevel(12)
                    .requireInt(70)
                    .requireWis(70)
                    .requirePerk(JobGolemancer);
            ImprovedCrinosShape.requirePerk(ImprovingNaturesBlueprintsNaturalWeapons)
                    .requireStr(50)
                    .requireTou(50)
                    .requireSpe(50)
                    .requireLevel(12);
            ExtraClawAttack.requireLevel(12)
                    .requirePerk(ClawTraining)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.hasNaturalWeapons() || player.haveNaturalClawsTypeWeapon();
					}, "Any natural weapon");
            NaturalHealingMinor.requireLevel(12)
                    .requirePerk(WisenedHealer)
                    .requireInt(15)
                    .requireWis(60);
            CloseToDeath.requireLevel(12)
                    .requirePerk(JobHealer)
                    .requireInt(50)
                    .requireWis(50);
			AdvancedAerialCombat.requireLevel(12)
					.requirePerk(AerialCombat)
					.requireStr(35)
					.requireSpe(35);
			Aerobatics.requireLevel(12)
					.requirePerk(AerialCombat)
					.requireStr(30)
					.requireSpe(40);
			HighlyVenomousDiet.requirePerk(VenomousDiet);
			AxillaryVenomGlands.requirePerk(VenomousAdiposeTissue);
            //Tier 3
            RatatoskrSmartsFinalForm.requireLevel(18).requirePerk(RatatoskrSmartsEvolved).requireCustomFunction(function (player:Player):Boolean {
                return player.ratatoskrScore() >= 12;
            }, "Squirrel/Ratatoskr race");
            ChimericalBodyBasicStage.requirePerk(ChimericalBodySemiBasicStage)
                    .requireLevel(18)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 8;
                    }, "Eight racial perks");
			AlphaAndOmega.requireLevel(18)
					.requirePerk(Apex);
            JobWarlord.requireAdvancedJobSlot()
					.requireAnyPerk(Whirlwind, Whipping, WhirlwindFeral)
                    .requireLevel(18);
            PowerSweep.requireLevel(18)
                    .requireStr(60)
                    .requireTou(60)
                    .requirePerks(Whirlwind, JobWarlord);
            CycloneStage1.requireLevel(18)
                    .requireStr(50)
                    .requireTou(50)
                    .requirePerk(JobWarlord);
            ExpertGolemMaker.requireLevel(18)
                    .requireInt(70)
                    .requireWis(70)
                    .requirePerk(ApprenticeGolemMaker);
            SuperChargedCore.requireLevel(18)
                    .requireInt(90)
                    .requireWis(90)
                    .requirePerks(ExpertGolemMaker, ChargedCore);
            MakeItDouble.requireLevel(18)
                    .requireStr(50)
                    .requireTou(50)
                    .requirePerk(JobWarlord);
            ImprovingNaturesBlueprintsNaturalArmor.requirePerk(ImprovedCrinosShape)
                    .requireStr(65)
                    .requireTou(65)
                    .requireSpe(65)
                    .requireLevel(18);
            SpeedyRecuperation.requirePerk(SpeedyRecovery)
							  .requireLevel(18);
            RecuperationSleep.requirePerk(SpeedyRecovery)
							 .requireLevel(18);
            NaturalHealingMajor.requireLevel(18)
                    .requirePerk(NaturalHealingMinor)
                    .requireInt(20)
                    .requireWis(80);
            MultiClawAttack.requireLevel(18)
                    .requirePerk(ExtraClawAttack)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.hasNaturalWeapons() || player.haveNaturalClawsTypeWeapon();
					}, "Any natural weapon");
            NaturalArsenal.requireLevel(18)
					.requireStr(60)
					.requireSpe(60)
                    .requirePerk(NaturalInstincts);
			SpinAttack.requireLevel(18)
					.requirePerk(Aerobatics)
					.requireStr(60)
					.requireSpe(60);
            ImprovedDiehard.requireLevel(18)
                    .requirePerk(Diehard);
            MotivationEx.requireLevel(18)
                    .requirePerk(Motivation);//.requirePerk(IntermediateLeadership)
            VexedNocking.requireLevel(18)
					.requireStr(10)
					.requireSpe(10);
            Survivalist3.requireLevel(18)
                    .requireHungerEnabled()
                    .requirePerk(Survivalist2);
			LiftOff.requireLevel(18)
					.requirePerk(Aerobatics)
					.requireStr(40)
					.requireSpe(45);
            //Tier 4
			CatlikeNimblenessFinalForm.requireLevel(24)
				.requirePerk(CatlikeNimblenessEvolved)
				.requireCustomFunction(function (player:Player):Boolean {
					return player.catScore() >= 10 || player.nekomataScore() >= 12 || player.displacerbeastScore() >= 12 || player.hellcatScore() >= 12 || player.cheshireScore() >= 12 || player.sphinxScore() >= 12;
			}, "Any cat race");
            TrachealSystemFinalForm.requireLevel(24).requirePerk(TrachealSystemEvolved).requireCustomFunction(function (player:Player):Boolean {
		//		return player.lowerBody == LowerBody.DRIDER;
		//	}, "Drider Lower Body").requireCustomFunction(function (player:Player):Boolean {
                return player.beeScore() >= 12 || player.mantisScore() >= 12 || player.scorpionScore() >= 12 || player.spiderScore() >= 12 || player.cancerScore() >= 12 || player.atlachNachaScore() >= 17;
            }, "Any insect race");
			ChimericalBodySemiImprovedStage.requirePerk(ChimericalBodyBasicStage)
                    .requireLevel(24)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 12;
                    }, "Twelve racial perks");
			JobAllRounder.requireLevel(24)
                    .requirePerks(JobBeastWarrior , JobGuardian, JobLeader, JobRanger, JobSeducer, JobSorcerer, JobSoulCultivator, JobWarrior)
                    //.requirePerk(JobGuardian)
                    //.requirePerk(JobLeader)
                    //.requirePerk(JobRanger)
                    //.requirePerk(JobSeducer)
                    //.requirePerk(JobSorcerer)
                    //.requirePerk(JobSoulCultivator)
                    //.requirePerk(JobWarrior)
                    .requireStr(75)
                    .requireTou(75)
                    .requireSpe(75)
                    .requireInt(75)
                    .requireWis(75)
                    .requireLib(45)
					.requireSen(45);
            Tornado.requireLevel(24)
                    .requireStr(75)
                    .requireTou(75)
                    .requirePerk(JobWarlord);
            CycloneStage2.requireLevel(24)
                    .requireStr(70)
                    .requireTou(70)
                    .requirePerk(CycloneStage1);
            MasterGolemMaker.requireLevel(24)
                    .requireInt(100)
                    .requireWis(100)
                    .requirePerk(ExpertGolemMaker);
            GiantsReach.requireLevel(24)
                    .requireStr(100)
                    .requireTou(100)
                    .requirePerk(JobWarlord);
            EnableCriticals.requireLevel(24);
            GreaterCrinosShape.requirePerk(ImprovingNaturesBlueprintsNaturalArmor)
                    .requireStr(80)
                    .requireTou(80)
                    .requireSpe(80)
                    .requireLevel(24);
            FirstAttackGolems.requireLevel(24)
                    .requirePerk(MasterGolemMaker);
            NaturalHealingEpic.requireLevel(24)
                    .requirePerk(NaturalHealingMajor)
                    .requireInt(25)
                    .requireWis(100);
            ClawingFlurry.requireLevel(24)
                    .requirePerk(MultiClawAttack)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.hasNaturalWeapons() || player.haveNaturalClawsTypeWeapon();
					}, "Any natural weapon");
            CheatDeath.requireLevel(24)
                    .requirePerk(CloseToDeath)
                    .requireInt(100)
                    .requireWis(100);
			GreaterAerialCombat.requireLevel(24)
					.requirePerk(AdvancedAerialCombat)
					.requireStr(50)
					.requireSpe(50);
			IronStomachSu.requireLevel(24)
                    .requirePerk(IronStomachEx);
			Fusion.requireLevel(24)
					.requirePerk(Enhancement);
			PathOfEnlightenment.requireLevel(24)
					.requirePerk(Wizened);
			MusclesOfSteel.requireLevel(24)
					.requirePerk(BonesOfSteel);
			ExtremelyLucky.requireLevel(24)
					.requirePerk(Lucky);
			Doctor.requireLevel(24)
					.requirePerk(Nurse);
			Acolyte.requireLevel(24)
					.requirePerk(PewWarmer);
			Teacher.requireLevel(24)
					.requirePerk(Studious);
			PyrosFriend.requireLevel(24)
					.requirePerk(SoldiersFriend);
			LyingDown.requireLevel(24)
					.requirePerk(Whistles);
			//??Slut??
			Bellows.requireLevel(24)
					.requirePerk(Tongs);
			Prostitute.requireLevel(24)
					.requirePerk(Amateur);
            BasicAllRounderEducation.requireLevel(24)
                    .requirePerk(JobAllRounder);
            WispCaptain.requireLevel(27)
                    .requirePerk(WispLieutenant)
					.requireInt(100)
					.requireWis(100)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.playerMinionsCount() >= 6;
					}, "6+ pets/minions");
            //Tier 5
			EclipticMindFinalForm.requireLevel(30).requirePerk(EclipticMindEvolved).requireCustomFunction(function (player:Player):Boolean {
				return player.alicornScore() >= 12 || player.unicornScore() >= 12 || player.alicornkinScore() >= 10|| player.unicornkinScore() >= 10 ;
			}, "Unicorn or Bicorn race");
            ChimericalBodyImprovedStage.requirePerk(ChimericalBodySemiImprovedStage)
                    .requireLevel(30)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 18;
                    }, "Eighteen racial perks");
            //na razie jest perk GreyMage, potrzeba jeszcze pare innych perków tak z 3-5 innych jeszcze)
            CycloneStage3.requireLevel(30)
                    .requireStr(90)
                    .requireTou(90)
                    .requirePerk(CycloneStage2);
            ImprovingNaturesBlueprintsApexPredator.requirePerk(GreaterCrinosShape)
                    .requireStr(95)
                    .requireTou(95)
                    .requireSpe(95)
                    .requireLevel(30);
            GolemArmyJuniorLieutenant.requireLevel(30)
                    .requireInt(110)
                    .requireWis(110)
                    .requirePerk(MasterGolemMaker);
            TemporalGolemsRestructuration.requireLevel(30)
                    .requireInt(110)
                    .requireWis(110)
                    .requirePerk(MasterGolemMaker);
            SpeedyRejuvenation.requirePerk(SpeedyRecuperation)
							  .requireLevel(30);
            RejuvenationSleep.requirePerk(RecuperationSleep)
							 .requireLevel(30);
            NaturalHealingLegendary.requireLevel(30)
                    .requirePerk(NaturalHealingEpic)
                    .requireInt(30)
                    .requireWis(120);
			AdvancedAerobatics.requireLevel(30)
					.requirePerk(Aerobatics)
					.requireStr(90)
					.requireSpe(120);
            GreaterDiehard.requireLevel(30)
                    .requirePerk(ImprovedDiehard);
            IntermediateAllRounderEducation.requireLevel(30)
                    .requirePerk(BasicAllRounderEducation);
			SecondRing.requireLevel(30);
            //Tier 6
            ChimericalBodySemiAdvancedStage.requirePerk(ChimericalBodyImprovedStage)
                    .requireLevel(36)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 24;
                    }, "Twenty four racial perks");
            CycloneStage4.requireLevel(36)
                    .requireStr(120)
                    .requireTou(120)
                    .requirePerk(CycloneStage3);
            MasterCrinosShape.requirePerk(ImprovingNaturesBlueprintsApexPredator)
                    .requireStr(110)
                    .requireTou(110)
                    .requireSpe(110)
                    .requireLevel(36);
            GrandMasterGolemMaker.requireLevel(36)
                    .requireInt(125)
                    .requireWis(125)
                    .requirePerk(MasterGolemMaker);
            MotivationSu.requireLevel(36)
                    .requirePerk(MotivationEx);//.requirePerk(AdvancedLeadership)
            AdvancedAllRounderEducation.requireLevel(36)
                    .requirePerk(IntermediateAllRounderEducation);
            //Tier 7
            ChimericalBodyAdvancedStage.requirePerk(ChimericalBodySemiAdvancedStage)
                    .requireLevel(42)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 32;
                    }, "Thirty two racial perks");
            CycloneStage5.requireLevel(42)
                    .requireStr(160)
                    .requireTou(160)
                    .requirePerk(CycloneStage4);
            GolemArmyLieutenant.requireLevel(42)
                    .requireInt(135)
                    .requireWis(135)
                    .requirePerks(GolemArmyJuniorLieutenant, GrandMasterGolemMaker);
            AdvancedGolemancyTheory.requireLevel(42)
                    .requireInt(140)
                    .requireWis(140)
                    .requirePerk(GrandMasterGolemMaker);
            EpicDiehard.requireLevel(42)
                    .requirePerks(EpicToughness, GreaterDiehard);
			Enchantment.requireLevel(42)
					.requirePerk(Fusion);
			Embodiment.requireLevel(42)
					.requirePerk(PathOfEnlightenment);
			HeartOfSteel.requireLevel(42)
					.requirePerk(MusclesOfSteel);
			MoneyFinder.requireLevel(42)
					.requirePerk(ExtremelyLucky);
			FirstResponse.requireLevel(42)
					.requirePerk(Doctor);
			Priest.requireLevel(42)
					.requirePerk(Acolyte);
			Professor.requireLevel(42)
					.requirePerk(Teacher);
			HeavysFriend.requireLevel(42)
					.requirePerk(PyrosFriend);
			TakingABreak.requireLevel(42)
					.requirePerk(LyingDown);
			//??Slut??
			Furnace.requireLevel(42)
					.requirePerk(Bellows);
			Escort.requireLevel(42)
					.requirePerk(Prostitute);
			LimitBreakerBody1stStage.requireLevel(42);
            ExpertAllRounderEducation.requireLevel(42)
                    .requirePerk(AdvancedAllRounderEducation);
            //Tier 8
            ChimericalBodySemiSuperiorStage.requirePerk(ChimericalBodyAdvancedStage)
                    .requireLevel(48)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 40;
                    }, "Forty racial perks");
            EpicGolemMaker.requireLevel(48)
                    .requireInt(150)
                    .requireWis(150)
                    .requirePerks(GrandMasterGolemMaker, AdvancedGolemancyTheory);
			LimitBreakerHeart1stStage.requireLevel(48)
					.requirePerk(LimitBreakerBody1stStage);
            MasterAllRounderEducation.requireLevel(48)
                    .requirePerk(ExpertAllRounderEducation);
            //Tier 9
            ChimericalBodySuperiorStage.requirePerk(ChimericalBodySemiSuperiorStage)
                    .requireLevel(48)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 50;
                    }, "Fifty racial perks");
            GolemArmyCaptain.requireLevel(54)
                    .requireInt(160)
                    .requireWis(160)
                    .requirePerks(GolemArmyLieutenant, EpicGolemMaker);
            TemporalGolemsRestructurationEx.requireLevel(54)
                    .requireInt(160)
                    .requireWis(160)
                    .requirePerks(TemporalGolemsRestructuration, GrandMasterGolemMaker);
            WispMajor.requireLevel(54)
                    .requirePerk(WispCaptain)
					.requireInt(160)
					.requireWis(160)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.playerMinionsCount() >= 10;
					}, "10+ pets/minions");
			LimitBreakerFlesh1stStage.requireLevel(54)
					.requirePerk(LimitBreakerHeart1stStage);
            //Tier 10
            ChimericalBodySemiPeerlessStage.requirePerk(ChimericalBodySuperiorStage)
                    .requireLevel(60)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 61;
                    }, "Sixty one racial perks");
            EpicGolemMaker2ndCircle.requireLevel(60)
                    .requireInt(175)
                    .requireWis(175)
                    .requirePerk(EpicGolemMaker);
			LimitBreakerPsyche1stStage.requireLevel(60)
					.requirePerk(LimitBreakerFlesh1stStage);
			ThirdRing.requireLevel(60)
                    .requirePerk(SecondRing);
            //Tier 11
            ChimericalBodyPeerlessStage.requirePerk(ChimericalBodySemiPeerlessStage)
                    .requireLevel(66)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 72;
                    }, "Seventy two racial perks");
            GolemArmyMajor.requireLevel(66)
                    .requireInt(185)
                    .requireWis(185)
                    .requirePerks(GolemArmyCaptain, EpicGolemMaker2ndCircle);
			LimitBreakerSoul1stStage.requireLevel(66)
					.requirePerk(LimitBreakerPsyche1stStage);
            //Tier 12
            ChimericalBodySemiEpicStage.requirePerk(ChimericalBodyPeerlessStage)
                     .requireLevel(72)
                     .requireCustomFunction(function (player:Player):Boolean {
                         return player.internalChimeraScore() >= 85;
                     }, "Eighty five racial perks");
            EpicGolemMaker3rdCircle.requireLevel(72)
                    .requireInt(200)
                    .requireWis(200)
                    .requirePerk(EpicGolemMaker2ndCircle);
			Refinement.requireLevel(72)
					.requirePerk(Enchantment);
			InControl.requireLevel(72)
					.requirePerk(Embodiment);
			BodyOfSteel.requireLevel(72)
					.requirePerk(HeartOfSteel);
			Collector.requireLevel(72)
					.requirePerk(MoneyFinder);
			Paramedic.requireLevel(72)
					.requirePerk(FirstResponse);
			Pastor.requireLevel(72)
					.requirePerk(Priest);
			Principle.requireLevel(72)
					.requirePerk(Professor);
			EngineersFriend.requireLevel(72)
					.requirePerk(HeavysFriend);
			SkippingWork.requireLevel(72)
					.requirePerk(TakingABreak);
			//??Slut??
			Hammer.requireLevel(72)
					.requirePerk(Furnace);
			BrothelOwner.requireLevel(72)
					.requirePerk(Escort);
			LimitBreakerBody2ndStage.requireLevel(72)
					.requirePerk(LimitBreakerSoul1stStage);
            //Tier 13
            ChimericalBodyEpicStage.requirePerk(ChimericalBodySemiEpicStage)
                    .requireLevel(78)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.internalChimeraScore() >= 99;
                    }, "Ninety nine racial perks");
            GolemArmyLieutenantColonel.requireLevel(78)
                    .requireInt(210)
                    .requireWis(210)
                    .requirePerks(GolemArmyMajor, EpicGolemMaker3rdCircle);
            WispColonel.requireLevel(72)
                    .requirePerk(WispMajor)
					.requireInt(210)
					.requireWis(210)
					.requireCustomFunction(function (player:Player):Boolean {
					return player.playerMinionsCount() >= 15;
					}, "15+ pets/minions");
			LimitBreakerHeart2ndStage.requireLevel(78)
					.requirePerk(LimitBreakerBody2ndStage);
            //Tier 14
            LegendaryGolemMaker.requireLevel(84)
                    .requireInt(225)
                    .requireWis(225)
                    .requirePerk(EpicGolemMaker3rdCircle);
			LimitBreakerFlesh2ndStage.requireLevel(84)
					.requirePerk(LimitBreakerHeart2ndStage);
            //Tier 15
            GolemArmyColonel.requireLevel(90)
                    .requireInt(235)
                    .requireWis(235)
                    .requirePerks(GolemArmyLieutenantColonel, LegendaryGolemMaker);
			LimitBreakerPsyche2ndStage.requireLevel(90)
					.requirePerk(LimitBreakerFlesh2ndStage);
			FourthRing.requireLevel(90)
                    .requirePerk(ThirdRing);
            //Tier 16
            LegendaryGolemMaker2ndCircle.requireLevel(96)
                    .requireInt(250)
                    .requireWis(250)
                    .requirePerk(LegendaryGolemMaker);
			LimitBreakerSoul2ndStage.requireLevel(96)
					.requirePerk(LimitBreakerPsyche2ndStage);
            //Tier 17
            GolemArmyGeneral.requireLevel(102)
                    .requireInt(260)
                    .requireWis(260)
                    .requirePerks(GolemArmyColonel, LegendaryGolemMaker2ndCircle);
			Saturation.requireLevel(102)
					.requirePerk(Refinement);
			Metamorphable.requireLevel(102)
					.requirePerk(InControl);
			MindOfSteel.requireLevel(102)
					.requirePerk(BodyOfSteel);
			Hoarder.requireLevel(102)
					.requirePerk(Collector);
			SurgeonsAide.requireLevel(102)
					.requirePerk(Paramedic);
			Saint.requireLevel(102)
					.requirePerk(Pastor);
			Dean.requireLevel(102)
					.requirePerk(Principle);
			SnipersFriend.requireLevel(102)
					.requirePerk(EngineersFriend);
			Napping.requireLevel(102)
					.requirePerk(SkippingWork);
			//??Slut??
			Anvil.requireLevel(102)
					.requirePerk(Hammer);
			Pornstar.requireLevel(102)
					.requirePerk(BrothelOwner);
            //Tier 18

            //Tier 19

            //Tier 20

            //Tier 21

            //Tier 22

            //Tier 23

            //Tier 24

            //Tier 25

            //Tier 26

            //Tier 27

            //Tier 28

            //Tier 29

            //Tier 30
			Perfection.requireLevel(180)
					.requirePerk(Saturation);
			SoulPowered.requireLevel(180)
					.requirePerk(Metamorphable);
			SoulOfSteel.requireLevel(180)
					.requirePerk(MindOfSteel);
			BlessedByLadyGodiva.requireLevel(180)
					.requirePerk(Hoarder);
			Surgeon.requireLevel(180)
					.requirePerk(SurgeonsAide);
			Cardinal.requireLevel(180)
					.requirePerk(Saint);
			President.requireLevel(180)
					.requirePerk(Dean);
			SpysEnemy.requireLevel(180)
					.requirePerk(SnipersFriend);
			ZZZ.requireLevel(180)
					.requirePerk(Napping);
			//??Slut??
			Weap0n.requireLevel(180)
					.requirePerk(Anvil);
			SexChampion.requireLevel(180)
					.requirePerk(Pornstar);
			// ChimericalBodyUltimateStage.requirePerk(ChimericalBodyInitialStage)
            //        .requireLevel(1)
            //        .requireCustomFunction(function (player:Player):Boolean {
            //            return player.internalChimeraScore() >= 2;
            //        }, "Two racial perks");//TYLKO do szybkich testów rasowych/rasowych perków mutacyjnych
        } catch (e:Error) {
            trace(e.getStackTrace());
        }
	}
	initDependencies();
}
}
