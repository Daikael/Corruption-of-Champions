/**
 * ...
 * @author Ormael
 */
package classes.Scenes.Monsters 
{
	import classes.*;
	import classes.internals.*;
	import classes.CoC;
	import classes.GlobalFlags.kFLAGS;
	import classes.Scenes.Camp.CampMakeWinions;
	import classes.Scenes.SceneLib;
	
	public class GolemsImproved extends AbstractGolem
	{
		public var campMake:CampMakeWinions = new CampMakeWinions();
		
		public function backhand():void {
			outputText("The golems visage twists into a grimace of irritation, and few of them swings their hands at you in a vicious backhand.");
			var damage:Number = int (((str + weaponAttack) * 6) - rand(player.tou) - player.armorDef);
			//Dodge
			if (damage <= 0 || (player.getEvasionRoll())) outputText(" You slide underneath the surprise swings!");
			else
			{
				if (hasStatusEffect(StatusEffects.Provoke)) damage = Math.round(damage * statusEffectv2(StatusEffects.Provoke));
				outputText(" They hits you square in the chest from a few different angles. ");
				damage = player.takePhysDamage(damage, true);
			}
		}
		
		public function overhandSmash():void {
			outputText("Raising their fists high overhead, the golems swiftly brings them down in a punishing strike!");
			
			var damage:Number = 150 + int(((str + weaponAttack) * 6) - rand(player.tou) - player.armorDef);
			if (damage <= 0 || rand(100) < 25 || player.getEvasionRoll()) outputText(" You're able to sidestep it just in time.");
			else
			{
				if (hasStatusEffect(StatusEffects.Provoke)) damage = Math.round(damage * statusEffectv2(StatusEffects.Provoke));
				outputText(" The concussive strikes impacts you with a bonecrushing force. ");
				damage = player.takePhysDamage(damage, true);
			}
		}
		
		override protected function performCombatAction():void
		{
			if (hasStatusEffect(StatusEffects.Provoke)) {
				var choiceP:Number = rand(3);
				if (choiceP == 0) eAttack();
				if (choiceP == 1) backhand();
				if (choiceP == 2) overhandSmash();
			}
			else {
				if (this.HPRatio() < 0.6) {
					var choice2:Number = rand(5);
					if (choice2 < 3) eAttack();
					if (choice2 == 3) backhand();
					if (choice2 == 4) overhandSmash();
				}
				else if (this.HPRatio() < 0.8) {
					var choice1:Number = rand(4);
					if (choice1 < 3) eAttack();
					if (choice1 == 3) backhand();
				}
				else eAttack();
			}
		}
		
		override public function defeated(hpVictory:Boolean):void
		{
			if (player.hasStatusEffect(StatusEffects.SoulArena)) SceneLib.combat.finishCombat();
			else campMake.postFightGolemOptions4();
		}
		
		public function GolemsImproved() 
		{
			super(true);
			this.a = "the ";
			this.short = "improved golems";
			this.imageName = "improved golems";
			this.long = "You're currently improved fighting golems. They're all around seven and half feet tall without any sexual characteristics, their stone body covered in cracks and using bare stone fists to smash enemies.";
			initStrTouSpeInte(260, 200, 140, 10);
			initWisLibSensCor(10, 10, 10, 50);
			this.tallness = 90;
			this.drop = NO_DROP;
			this.level = 42;
			this.bonusHP = 700;
			this.additionalXP = 700;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 75;
			this.armorName = "stone";
			this.armorDef = 75;
			this.armorMDef = 15;
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			this.createPerk(PerkLib.EnemyGroupType, 0, 0, 0, 0);
			checkMonster();
		}
		
	}

}