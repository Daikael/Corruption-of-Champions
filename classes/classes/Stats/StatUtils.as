/**
 * Coded by aimozg on 01.06.2018.
 */
package classes.Stats {
import classes.Creature;
import classes.internals.Utils;

import coc.script.Eval;

public class StatUtils {
	public function StatUtils() {
	}

	/**
	 * Warning: can cause infinite recursion if called from owner.findStat() unchecked
	 */
	public static function findStatByPath(owner:IStatHolder, path:String):IStat {
		var parts:Array = path.split(/\./);
		var s:IStat;
		for (var i:int = 0; i<parts.length; i++) {
			if (!owner) break;
			s = owner.findStat(parts[i]);
			owner = s as IStatHolder;
		}
		return s;
	}

	/**
	 * Returns string like "Strength +10" or "Spell Power -50%"
	 */
	public static function explainBuff(stat:String,value:Number):String {
		return explainStat(stat,value,true);
	}
	/**
	 * Returns string like "Strength 10" or "Spell Power -50%"
	 * if withSignum = true, positive values have "+"
	 */
	public static function explainStat(stat:String,value:Number,withSignum:Boolean=false):String {
		var signum:String  = (value >= 0 && withSignum ? '+' : '');
		var x:String       = signum + value;

		if (stat in PlainNumberStats) {
			return PlainNumberStats[stat]+' '+x;
		}
		var percent:String = signum + Math.floor(value * 100) + '%';
		if (stat in PercentageStats) {
			return PercentageStats[stat]+' '+percent;
		}
		trace('[WARN] Unexplainable stat '+stat);
		return stat+' '+x;
	}

	/**
	 * Returns a multi-line string of "BuffName: +20"
	 * @param asPercent show "+20%" instead of "+0.2"
	 * @param includeHidden show hidden buffs
	 */
	public static function describeBuffs(stat:BuffableStat, asPercent:Boolean, includeHidden:Boolean = false):String {
		var buffs:/*Buff*/Array = stat.listBuffs();
		var hasHidden:Boolean = false;
		var text:String = "";
		for each(var buff:Buff in buffs) {
			var value:Number = buff.value;
			if (value >= 0.0 && value < 0.01) continue;
			if (!buff.show && !includeHidden) {
				hasHidden = true;
				continue;
			}
			text += '<b>' + buff.text + ':</b> ';
			if (asPercent) {
				text += (value >= 0 ? '+' : '') + Utils.floor(value * 100) + '%';
			} else {
				text += (value >= 0 ? '+' : '') + Utils.floor(value, 1);
			}
			if (buff.rate != Buff.RATE_PERMANENT) {
				text += ' ('+Utils.numberOfThings(buff.tick, {
					([Buff.RATE_ROUNDS]):'round',
					([Buff.RATE_HOURS]):'hour',
					([Buff.RATE_DAYS]):'day'
				}[buff.rate])+')'
			}
			text += '\n';
		}
		if (hasHidden) text += '<b>Unknown Sources:</b> ±??';
		return text;
	}
	public static function nameOfStat(stat:String):String {
		if (stat in PlainNumberStats) {
			return PlainNumberStats[stat];
		} else if (stat in PercentageStats) {
			return PercentageStats[stat];
		} else {
			trace('[WARN] Unknown stat '+stat);
			return stat;
		}
	}
	public static function isPlainNumberStat(statname:String):Boolean {
		return statname in PlainNumberStats;
	}
	public static function isPercentageStat(statname:String):Boolean {
		return statname in PlainNumberStats;
	}
	public static const PlainNumberStats:Object = Utils.createMapFromPairs([
		// [StatNames.STR, 'Strength']
	]);
	public static const PercentageStats:Object = Utils.createMapFromPairs([
		// [StatNames.SPELLPOWER, 'Spellpower']
	]);
}
}
