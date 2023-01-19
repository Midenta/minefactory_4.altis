/*
    File: auction_config.hpp
    Author: Demellion Dismal
    Description: Master config for Perks System.

    Developer Notes: 
    	1. If you want to see how level is scaling based on default formula values you can scroll this file to bottom.
    	2. All code related to perks is open-source SQF file and is chained with "fn_survival.sqf". You can use that to script your own behavior.
    	3. This system is initially bound to husky framework. However it's not hardcoded to it - with enough scripting skills you can bind it to any framework you want.


    Advanced Notes:
    	1. If you are willing to add your own perks - you will need to get it's factor using this function for reading its variable:
    		['myPerkVariable'] call DT_fnc_perkData;
    	2. DT_fnc_perkData always returns number: current perk level * perk factor. In case perk is not learned, always 0.
    	3. To manually add experience points you can use this function, for example, adding 100 experience:
    		[100] call DT_fnc_addExperience; 
    	4. Experience gained over current maximum experience needed amount spans automatically through all next levels.
    	5. You can add a skill trigger pop-up when your skill is triggered. This will create a visual prompt of a triggered skill:
   			DT_fnc_triggerSkill: 
   			ARRAY:
				STRING - Perk variable
				BOOL - Negative perk, true will show up as red indicator.
				BOOL - True to add, false to remove.
				
			Example:
			['myPerkVariable',true,false] call DT_fnc_triggerSkill;	
*/

class perks_config {
	// Basic configruation
	exponentialValue = 100; // Base exponential value for level required experience, based on formula: 100 + (_exponentialValue * (_level min _exponentialCap) * ((ln _level) min _exponentialCap))
	exponentialCap = 50; // Level to cap exponential growth, after this level required experience will not increase. 
	experienceRatio = 1; // Ratio at which experience is gained, 1 - means 100%.
	respecCost = 10000; // Currrency cost to respec player perks.
	respecVariable = "husky_atmbank"; // Currency used to respec the perks.
	thirstVariable = "husky_thirst"; // Vairable for player thirst amount (leave blank if not used)
	hungerVariable = "husky_hunger"; // Vairable for player hunger amount (leave blank if not used)
	respecCurrencyText = "%1 €"; // Currency text format to display
	perksMenuKey = 0x19; // A keyboard key to call the menu. (Default: P)

	// Advanced configruation! You can configure or add new perks here (scripting knowledge required - see Advanced Notes).
	// Removing exisitng perks might cause unexpected behavior for built-in perks system handlers.
	class Perks {
		class Combat {
			displayName = "Weapons";
			class Handgun {
				displayName = "Handguns";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "hg_recoil"; // Variable to call for perk data.
					requiredLevel = 0; 
					maxLevel = 10; // Maximum perk level
					perkFactor = -0.25; // Actual backend value
					perkFactorBare = 15; // What to display in perks details
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "hg_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "hg_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			};
			class SubmachineGun {
				displayName = "Submachine Guns";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "smg_recoil";
					requiredLevel = 0;
					maxLevel = 10; 
					perkFactor = -0.25;
					perkFactorBare = 15;
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "smg_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "smg_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			}; 			 			
			class AssaultRifle {
				displayName = "Asssault Rifles";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "ar_recoil";
					requiredLevel = 0;
					maxLevel = 10; 
					perkFactor = -0.25;
					perkFactorBare = 15;
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "ar_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "ar_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			};
			class Rifle {
				displayName = "Rifles";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "r_recoil";
					requiredLevel = 0;
					maxLevel = 10; 
					perkFactor = -0.25;
					perkFactorBare = 15;
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "r_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "r_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			};
			class SniperRifle {
				displayName = "Sniper Rifles";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "sr_recoil";
					requiredLevel = 0;
					maxLevel = 10; 
					perkFactor = -0.25;
					perkFactorBare = 15;
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "sr_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "sr_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			};
			class MachineGun {
				displayName = "Machineguns";
				class Recoil {
					displayName = "Recoil Compensation";
					descriptionShort = "Decrease recoil ratio.";
					description = "Your combat training pays you off. You know how to compensate your weapon recoil better";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Recoil_ca.paa";
					video = "\asn_perksdata\videos\w_recoil.ogg";
					variable = "mg_recoil";
					requiredLevel = 0;
					maxLevel = 10; 
					perkFactor = -0.25;
					perkFactorBare = 15;
				};
				class Sway {
					displayName = "Sway Compensation";
					descriptionShort = "Decrease sway power.";
					description = "Your combat training pays you off. You know how to properly breath to control your weapon sway";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Shoot_ca.paa";
					video = "\asn_perksdata\videos\w_sway.ogg";
					variable = "mg_sway";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = -0.4;
					perkFactorBare = 20;
				};
				class Speed {
					displayName = "Fire Rate";
					descriptionShort = "Increase weapon fire rate.";
					description = "Your combat training pays you off. You know how to trigger your weapon faster";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Firemode_ca.paa";
					video = "\asn_perksdata\videos\w_firerate.ogg";
					variable = "mg_speed";
					requiredLevel = 30;
					maxLevel = 10; 
					perkFactor = -0.025;
					perkFactorBare = 2.5;
				};								
			}; 			 				 			 
		};
		class Survival {
			displayName = "Survival";
			class Metabolism {
				displayName = "Metabolism";
				class A_Food {
					displayName = "Anabolism (Food)";
					descriptionShort = "Deacreases the amount of generated hunger.";
					description = "Your body is trained to survive extreme conditions without food provisions. Decreases the amount of generated hunger.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Timing_ca.paa";
					video = "\asn_perksdata\videos\s_anab.ogg";
					variable = "metab_ana_food";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = -10;
				};
				class A_Water {
					displayName = "Anabolism (Water)";
					descriptionShort = "Deacreases the amount of generated thirst.";
					description = "Your body is trained to survive extreme conditions without water provisions. Decreases the amount of generated thirst.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Timing_ca.paa";
					video = "\asn_perksdata\videos\s_anab.ogg";
					variable = "metab_ana_water";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = -10;
				};
				class C_Food {
					displayName = "Catabolism (Food)";
					descriptionShort = "Increases the result of consumed food.";
					description = "Your stomach is prepared to proccess anything that gives energy. Increases the result from consumed food.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\BasicMove_ca.paa";
					video = "\asn_perksdata\videos\s_catab.ogg";
					variable = "metab_cat_food";
					requiredLevel = 15;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
				};
				class C_Water {
					displayName = "Catabolism (Water)";
					descriptionShort = "Increases the result of consumed water.";
					description = "Your stomach is prepared to proccess anything that gives energy. Increases the result from consumed water.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\BasicMove_ca.paa";
					video = "\asn_perksdata\videos\s_catab.ogg";
					variable = "metab_cat_water";
					requiredLevel = 15;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
				};
				class Stamina {
					displayName = "Ventilation";
					descriptionShort = "Regenerates your stamina (once per 3 seconds).";
					description = "Your lungs are trained to ventilate air faster. Regenerates your stamina (once per 3 seconds).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Time_trials_ca.paa";
					video = "\asn_perksdata\videos\s_vent.ogg";
					variable = "metab_stamina";
					requiredLevel = 30;
					maxLevel = 3; 
					perkFactor = 0.03;
					perkFactorBare = 3;					
				};							
			};
			class Training {
				displayName = "Training";
				class Visibility {
					displayName = "Perception";
					descriptionShort = "Origin of shots fired will be detected on map or GPS.";
					description = "Basic survival training made you more aware. Origin of shots fired will be detected on map or GPS.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\BasicStances_ca.paa";
					video = "\asn_perksdata\videos\s_per.ogg";
					variable = "train_spy";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = 15;
					perkFactorBare = 15;
					perkFactorText = "m range";					
				};								
				class Weight {
					displayName = "Strength";
					descriptionShort = "Increases the maximum carry weight (virtual).";
					description = "Basic survival training taught you how to balance your body. Increases the maximum carry weight (virtual).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Stamina_OverEncumbrance_CA.paa";
					video = "\asn_perksdata\videos\s_str.ogg";
					variable = "train_weight";
					requiredLevel = 20;
					maxLevel = 5; 
					perkFactor = 10;
					perkFactorBare = 10;
					perkFactorText = " max weight";					
				};
				class Experience {
					displayName = "Intelligence";
					descriptionShort = "Increase experience gained from all sources.";
					description = "Basic survival training made you more coordinated. Increase experience gained from all sources.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Response_ca.paa";
					video = "\asn_perksdata\videos\s_int.ogg";
					variable = "train_exp";
					requiredLevel = 30;
					maxLevel = 5; 
					perkFactor = 0.05;
					perkFactorBare = 5;					
				}								
				class Movement {
					displayName = "Agility";
					descriptionShort = "Increase movement speed.";
					description = "Basic survival training results in a strong muscles. Increase movement speed.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Stamina_ca.paa";
					video = "\asn_perksdata\videos\s_agi.ogg";
					variable = "train_move";
					requiredLevel = 40;
					maxLevel = 5; 
					perkFactor = 0.05;
					perkFactorBare = 5;
				};	
				class Regeneration {
					displayName = "Endurance";
					descriptionShort = "Recuperate your wounds (once per 3 seconds).";
					description = "Basic survival training strengthens your body. Recuperate your wounds (once per 3 seconds).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Stamina_Injury_CA.paa";
					video = "\asn_perksdata\videos\s_end.ogg";
					variable = "train_regen";
					requiredLevel = 50;
					maxLevel = 5; 
					perkFactor = 0.001;
					perkFactorBare = 0.1;
				};										
			};			
		};
		class Medical {
			displayName = "Medical";
			class Healing {
				displayName = "Healing";
				class Exam {
					displayName = "Therapist";
					descriptionShort = "Prepare yourself before procedures.";
					description = "Increase your experience in medical field. Increases healing procedures speed.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Thermal_imaging_ca.paa";
					video = "\asn_perksdata\videos\h_exam.ogg";
					variable = "med_exam";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
					perkFactorText = "% Healing Speed";
					requiredItem = "Medikit"; // display name of item required (actual class is hardcoded to scripts)
				};
				class FirstAid {
					displayName = "First Aid";
					descriptionShort = "Ability to heal body injuries (does not affect bleeding or cripple).";
					description = "You are able to give a first aid to reduce surficial body damage from bullets, fragmentation, burns and other types of damage. Ability to heal body injuries (does not affect bleeding or cripple).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\ActionMenu_ca.paa";
					video = "\asn_perksdata\videos\h_firstaid.ogg";
					variable = "med_firstaid";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
					perkFactorText = "% HP";
					requiredItem = "Medikit"; // display name of item required (actual class is hardcoded to scripts)
				};
				class Bleeding {
					displayName = "Human Patcher";
					descriptionShort = "Ability to stop bleeding.";
					description = "You are able to detect and seize the blood loss. Ability to stop bleeding.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Injury_ca.paa";
					video = "\asn_perksdata\videos\h_bleed.ogg";
					variable = "med_bleed";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = 0.2;
					perkFactorBare = 20;
					perkFactorText = "% chance";
					requiredItem = "Medikit"; // display name of item required (actual class is hardcoded to scripts)
				};
				class Chiropractor { 
					displayName = "Chiropractor";
					descriptionShort = "Ability to heal crippled body parts.";
					description = "You have few skeletons in your wardrobe, literally. Ability to heal crippled body parts.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Incapacitated_ca.paa";
					video = "\asn_perksdata\videos\h_chiro.ogg";
					variable = "med_fracture";
					requiredLevel = 10;
					maxLevel = 5; 
					perkFactor = 0.2;
					perkFactorBare = 20;
					perkFactorText = "% chance";
					requiredItem = "Medikit"; // display name of item required (actual class is hardcoded to scripts)
				};																	
			};		
		};
		class Farming {
			displayName = "Farming";
			class Gathering {
				displayName = "Gathering";
				class Speed {
					displayName = "Quick Hands";
					descriptionShort = "Increases gathering speed.";
					description = "You know how to collect resourses faster. Increases gathering speed.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Take_ca.paa";
					video = "\asn_perksdata\videos\f_gather.ogg";
					variable = "farm_g_speed";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
				};
				class Yield {
					displayName = "Stockpile";
					descriptionShort = "Chance to get double yield from gathering.";
					description = "You know how to collect resources more efficiently. Chance to get double yield from gathering.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Slots_ca.paa";
					video = "\asn_perksdata\videos\f_gather.ogg";
					variable = "farm_g_yield";
					requiredLevel = 20;
					maxLevel = 5; 
					perkFactor = 0.10;
					perkFactorBare = 10;
				};				
			};
			class Processing {
				displayName = "Processing";
				class Speed {
					displayName = "Processing Speed";
					descriptionShort = "Increases processing speed.";
					description = "You utilize some knowledge in resource processing. Increases processing speed.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Rules_ca.paa";
					video = "\asn_perksdata\videos\f_process.ogg";
					variable = "farm_p_speed";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;
				};
				class Yield {
					displayName = "Handyman";
					descriptionShort = "Chance to get double yield from processing.";
					description = "You know how to control the process to avoid material spoilage. Chance to get double yield from processing.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Use_ca.paa";
					video = "\asn_perksdata\videos\f_process.ogg";
					variable = "farm_p_yield";
					requiredLevel = 20;
					maxLevel = 5; 
					perkFactor = 0.10;
					perkFactorBare = 10;
				};	
			};
			class Hunting {
				displayName = "Hunting";
				class Hunter {
					displayName = "Hunter";
					descriptionShort = "Increases gutting speed.";
					description = "You have learned how to skin killed animals properly. Increases gutting speed.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Annoucning_ca.paa";
					video = "\asn_perksdata\videos\f_gut.ogg";
					variable = "farm_hnt_speed";
					requiredLevel = 0;
					maxLevel = 5; 
					perkFactor = 0.1;
					perkFactorBare = 10;					
				};
				class Butcher {
					displayName = "Butcher";
					descriptionShort = "Chance to get three times yield from gutting.";
					description = "You utilize some knowledge about skinning animals. Chance to get three times yield from gutting.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Miss_icon_ca.paa";
					video = "\asn_perksdata\videos\f_gut.ogg";
					variable = "farm_hnt_yield";
					requiredLevel = 20;
					maxLevel = 5; 
					perkFactor = 0.10;
					perkFactorBare = 10;					
				};
			};			
		};
		class Utility {
			displayName = "Utility";
			class General {
				displayName = "General";
				class Lowering {
					displayName = "Friend or Foe";
					descriptionShort = "You will not fire a weapon directly at friendly unit.";
					description = "Combat training made you react to a friendly units without causing a friendly fire. You will not fire a weapon directly at friendly unit.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Lowering_CA.paa";
					video = "\asn_perksdata\videos\u_low.ogg";
					variable = "util_lowering";
					requiredLevel = 0;
					maxLevel = 1; 
					perkFactor = 1;
					perkFactorBare = 100;
					perkFactorText = "% chance";					
				};
				class Stabilization {
					displayName = "Cognitive Stabilization";
					descriptionShort = "Chance to avoid unconsciousness caused by explosions.";
					description = "You know how group yourself to avoid blast injuries caused by a shock wave. Chance to avoid unconsciousness caused by explosions.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Directional_CA.paa";
					video = "\asn_perksdata\videos\u_stab.ogg";
					variable = "util_stabilize";
					requiredLevel = 10;
					maxLevel = 3; 
					perkFactor = 0.33;
					perkFactorBare = 33;
				};				
				class Evade {
					displayName = "Common Sense";
					descriptionShort = "Chance to avoid incoming damage.";
					description = "Your reflexes and some portion of luck makes you able to escape unwanted injuries. Chance to avoid incoming damage.";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Death_ca.paa";
					video = "\asn_perksdata\videos\u_sense.ogg";
					variable = "util_evade";
					requiredLevel = 50;
					maxLevel = 5; 
					perkFactor = 0.10;
					perkFactorBare = 10;
					perkFactorText = "% chance";
				};										
			};
			class Vehicles {
				displayName = "Vehicles";
				class Counter {
					displayName = "Swift Measures";
					descriptionShort = "Countermeasures are triggered automatically when missile is locked on you (main pilot only).";
					description = "Your piloting experience gave you some muscular memory. Countermeasures are triggered automatically when missile is locked on you (main pilot only).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Countermeasures_CA.paa";
					video = "\asn_perksdata\videos\u_counter.ogg";
					variable = "util_counter";
					requiredLevel = 20;
					maxLevel = 1; 
					perkFactor = 1;
					perkFactorBare = 100;
					perkFactorText = "% chance";
				};
				class Thief {
					displayName = "Thief";
					descriptionShort = "Allows you to lockpick locked vehicles (requires toolkit).";
					description = "You utilize some sleight of hand along with fraud. Allows you to lockpick locked vehicles (requires toolkit).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Entering_CA.paa";
					video = "\asn_perksdata\videos\u_thief.ogg";
					variable = "util_thief";
					requiredLevel = 30;
					maxLevel = 4; 
					perkFactor = 0.25;
					perkFactorBare = 25;
					perkFactorText = "% chance";
					requiredItem = "Toolkit";
				};				
				class Saboteur {
					displayName = "Saboteur";
					descriptionShort = "Allows you to sabotage any vehicle and detect sabotages (remote controlled charge only).";
					description = "Allows you to sabotage any vehicle and detect sabotages (remote controlled charge only).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\Mines_CA.paa";
					video = "\asn_perksdata\videos\u_sabot.ogg";
					variable = "util_sabo";
					requiredLevel = 40;
					maxLevel = 4; 
					perkFactor = 0.25;
					perkFactorBare = 25;
					perkFactorText = "% chance";
				};									
				class Engine {
					displayName = "Engine Solution";
					descriptionShort = "Chance to launch an engine which is out-of-order (engine only).";
					description = "You are the clishe itself. Chance to launch engine which is out-of-order (engine only).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\VehicleRepair_CA.paa";
					video = "\asn_perksdata\videos\u_engine.ogg";
					variable = "util_engine";
					requiredLevel = 50;
					maxLevel = 3; 
					perkFactor = 0.03;
					perkFactorBare = 3;
					perkFactorText = "% chance";
				};
				class Rotor {
					displayName = "Flying Weather";
					descriptionShort = "Chance to launch an engine which is out-of-order (engine only).";
					description = "You are the clishe itself. Chance to launch an engine which is out-of-order (engine only).";
					icon = "\A3\Ui_f\data\GUI\Cfg\Hints\TakeOff_CA.paa";
					video = "\asn_perksdata\videos\u_rotor.ogg";
					variable = "util_hengine";
					requiredLevel = 50;
					maxLevel = 3; 
					perkFactor = 0.03;
					perkFactorBare = 3;
					perkFactorText = "% chance";
				};									
			}
		};
	};
};

/* Exponential experience calculator (based on 100 exponential value + level 50 exponential cap)
	LEVEL: 1, EXPERIENCE NEEDED: 100
	LEVEL: 2, EXPERIENCE NEEDED: 238.629
	LEVEL: 3, EXPERIENCE NEEDED: 429.584
	LEVEL: 4, EXPERIENCE NEEDED: 654.518
	LEVEL: 5, EXPERIENCE NEEDED: 904.719
	LEVEL: 6, EXPERIENCE NEEDED: 1175.06
	LEVEL: 7, EXPERIENCE NEEDED: 1462.14
	LEVEL: 8, EXPERIENCE NEEDED: 1763.55
	LEVEL: 9, EXPERIENCE NEEDED: 2077.5
	LEVEL: 10, EXPERIENCE NEEDED: 2402.59
	LEVEL: 11, EXPERIENCE NEEDED: 2737.68
	LEVEL: 12, EXPERIENCE NEEDED: 3081.89
	LEVEL: 13, EXPERIENCE NEEDED: 3434.43
	LEVEL: 14, EXPERIENCE NEEDED: 3794.68
	LEVEL: 15, EXPERIENCE NEEDED: 4162.08
	LEVEL: 16, EXPERIENCE NEEDED: 4536.14
	LEVEL: 17, EXPERIENCE NEEDED: 4916.46
	LEVEL: 18, EXPERIENCE NEEDED: 5302.67
	LEVEL: 19, EXPERIENCE NEEDED: 5694.43
	LEVEL: 20, EXPERIENCE NEEDED: 6091.46
	LEVEL: 21, EXPERIENCE NEEDED: 6493.5
	LEVEL: 22, EXPERIENCE NEEDED: 6900.29
	LEVEL: 23, EXPERIENCE NEEDED: 7311.64
	LEVEL: 24, EXPERIENCE NEEDED: 7727.33
	LEVEL: 25, EXPERIENCE NEEDED: 8147.19
	LEVEL: 26, EXPERIENCE NEEDED: 8571.05
	LEVEL: 27, EXPERIENCE NEEDED: 8998.76
	LEVEL: 28, EXPERIENCE NEEDED: 9430.17
	LEVEL: 29, EXPERIENCE NEEDED: 9865.16
	LEVEL: 30, EXPERIENCE NEEDED: 10303.6
	LEVEL: 31, EXPERIENCE NEEDED: 10745.4
	LEVEL: 32, EXPERIENCE NEEDED: 11190.4
	LEVEL: 33, EXPERIENCE NEEDED: 11638.5
	LEVEL: 34, EXPERIENCE NEEDED: 12089.6
	LEVEL: 35, EXPERIENCE NEEDED: 12543.7
	LEVEL: 36, EXPERIENCE NEEDED: 13000.7
	LEVEL: 37, EXPERIENCE NEEDED: 13460.4
	LEVEL: 38, EXPERIENCE NEEDED: 13922.8
	LEVEL: 39, EXPERIENCE NEEDED: 14387.9
	LEVEL: 40, EXPERIENCE NEEDED: 14855.5
	LEVEL: 41, EXPERIENCE NEEDED: 15325.6
	LEVEL: 42, EXPERIENCE NEEDED: 15798.2
	LEVEL: 43, EXPERIENCE NEEDED: 16273.2
	LEVEL: 44, EXPERIENCE NEEDED: 16750.4
	LEVEL: 45, EXPERIENCE NEEDED: 17230
	LEVEL: 46, EXPERIENCE NEEDED: 17711.8
	LEVEL: 47, EXPERIENCE NEEDED: 18195.7
	LEVEL: 48, EXPERIENCE NEEDED: 18681.8
	LEVEL: 49, EXPERIENCE NEEDED: 19169.9
	LEVEL: 50, EXPERIENCE NEEDED: 19660.1
	LEVEL: 51, EXPERIENCE NEEDED: 19660.1
	LEVEL: 52, EXPERIENCE NEEDED: 19660.1
	LEVEL: 53, EXPERIENCE NEEDED: 19660.1
	LEVEL: 54, EXPERIENCE NEEDED: 19660.1
	LEVEL: 55, EXPERIENCE NEEDED: 19660.1
	LEVEL: 56, EXPERIENCE NEEDED: 19660.1
	LEVEL: 57, EXPERIENCE NEEDED: 19660.1
	LEVEL: 58, EXPERIENCE NEEDED: 19660.1
	LEVEL: 59, EXPERIENCE NEEDED: 19660.1
	LEVEL: 60, EXPERIENCE NEEDED: 19660.1
	LEVEL: 61, EXPERIENCE NEEDED: 19660.1
	LEVEL: 62, EXPERIENCE NEEDED: 19660.1
	LEVEL: 63, EXPERIENCE NEEDED: 19660.1
	LEVEL: 64, EXPERIENCE NEEDED: 19660.1
	LEVEL: 65, EXPERIENCE NEEDED: 19660.1
	LEVEL: 66, EXPERIENCE NEEDED: 19660.1
	LEVEL: 67, EXPERIENCE NEEDED: 19660.1
	LEVEL: 68, EXPERIENCE NEEDED: 19660.1
	LEVEL: 69, EXPERIENCE NEEDED: 19660.1
	LEVEL: 70, EXPERIENCE NEEDED: 19660.1
	LEVEL: 71, EXPERIENCE NEEDED: 19660.1
	LEVEL: 72, EXPERIENCE NEEDED: 19660.1
	LEVEL: 73, EXPERIENCE NEEDED: 19660.1
	LEVEL: 74, EXPERIENCE NEEDED: 19660.1
	LEVEL: 75, EXPERIENCE NEEDED: 19660.1
	LEVEL: 76, EXPERIENCE NEEDED: 19660.1
	LEVEL: 77, EXPERIENCE NEEDED: 19660.1
	LEVEL: 78, EXPERIENCE NEEDED: 19660.1
	LEVEL: 79, EXPERIENCE NEEDED: 19660.1
	LEVEL: 80, EXPERIENCE NEEDED: 19660.1
	LEVEL: 81, EXPERIENCE NEEDED: 19660.1
	LEVEL: 82, EXPERIENCE NEEDED: 19660.1
	LEVEL: 83, EXPERIENCE NEEDED: 19660.1
	LEVEL: 84, EXPERIENCE NEEDED: 19660.1
	LEVEL: 85, EXPERIENCE NEEDED: 19660.1
	LEVEL: 86, EXPERIENCE NEEDED: 19660.1
	LEVEL: 87, EXPERIENCE NEEDED: 19660.1
	LEVEL: 88, EXPERIENCE NEEDED: 19660.1
	LEVEL: 89, EXPERIENCE NEEDED: 19660.1
	LEVEL: 90, EXPERIENCE NEEDED: 19660.1
	LEVEL: 91, EXPERIENCE NEEDED: 19660.1
	LEVEL: 92, EXPERIENCE NEEDED: 19660.1
	LEVEL: 93, EXPERIENCE NEEDED: 19660.1
	LEVEL: 94, EXPERIENCE NEEDED: 19660.1
	LEVEL: 95, EXPERIENCE NEEDED: 19660.1
	LEVEL: 96, EXPERIENCE NEEDED: 19660.1
	LEVEL: 97, EXPERIENCE NEEDED: 19660.1
	LEVEL: 98, EXPERIENCE NEEDED: 19660.1
	LEVEL: 99, EXPERIENCE NEEDED: 19660.1
	LEVEL: 100, EXPERIENCE NEEDED: 19660.1
*/
