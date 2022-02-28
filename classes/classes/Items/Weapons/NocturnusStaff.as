package classes.Items.Weapons 
{
	import classes.PerkLib;
	import classes.EventParser;
    import classes.TimeAwareInterface;

	public class NocturnusStaff extends WeaponWithPerk
	{
		//Implementation of TimeAwareInterface
        //Recalculate Wizard's multiplier every hour
		public function timeChange():Boolean
		{
			updateWizardsMult();
			return false;
		}
	
		public function timeChangeLarge():Boolean {
            updateWizardsMult();
			return false;
		}
		
        //Normal weapon stuff
		public function NocturnusStaff() 
		{
			super("N.Staff", "N. Staff", "nocturnus staff", "a nocturnus staff", "smack", 6, 960,
					"This corrupted staff is made in black ebonwood and decorated with a bat ornament in bronze. Malice seems to seep through the item, devouring the wielder’s mana to channel its unholy power.",
					"Staff, +200% Spell cost, Spellpower bonus for corruption", PerkLib.WizardsFocus, 0.6, 0, 0, 0, "", "Staff");
		}
		
		public function calcWizardsMult():Number {
			var desc:String = "";
			var multadd:Number = 0.6;
            if (game && game.player)
                multadd += game.player.cor * 0.044;
			return multadd;
		}

        private static var lastCor:Number = 0; //optimization

        public function updateWizardsMult():void {
            if (game.player.cor != lastCor) {
                weapPerk.value1 = calcWizardsMult();
                if (game.player.weapon == game.weapons.N_STAFF) {
                    //re-requip to update player's perk
                    playerRemove();
                    playerEquip();
                }
            }
            lastCor = game.player.cor;
        }

        override public function get descBase():String {
            if (game && game.player)
                return _description + (
                    game.player.cor < 25 ? "\n\nYour pure aura almost breaks the flow of energy inside the staff, decreasing its power!\n" :
                    game.player.cor < 50 ? "\n\nYour pure aura sligtly interrupts your connection with the staff, decreasing its power.\n" :
                    game.player.cor < 75 ? "\n\nYour corrupted aura slightly increases the staff's power.\n" :
                    "\n\nYour corrupted energy flows throgh the staff, empowering it!\n");
            else
                return _description;
        }
		
		override public function get verb():String { 
			return game.player.hasPerk(PerkLib.StaffChanneling) >= 0 ? "shot" : "smack";
		}
	}
}