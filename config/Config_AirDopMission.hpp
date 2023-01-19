class AirDrop_Master {
	timeupstart = 60;//Nach Server Start Warte zeit in Min
	mincivcount = 10;//An hand der Zivlisten anzahl wird der Airdrop aktiviert

	airdroppositions[] = {{4572.43,21392.3,0},{9106.71,7917.23,0},{17369.6,10416.4,0},{22210.3,13936.1,0},{22511,21764.9,0},{14400.6,23001.5,0}};

	MainVeh = "B_Heli_Transport_03_unarmed_F";
	SecondVeh = "B_Heli_Attack_01_F";
	/* Items in der Box */
	Wepaonsrandom[] = {1, 2, 4};
	weaponboxitems[] = {
		"srifle_DMR_01_F",
		"srifle_EBR_F",
		"srifle_LRR_F",
		"LMG_Mk200_F",
		"hgun_Rook40_F",
		"FirstAidKit",
		"ToolKit",
		"U_B_CombatUniform_mcam",
		"U_O_CombatUniform_ocamo",
		"V_PlateCarrier_Kerry",
		"H_HelmetB",
		"H_HelmetIA_net",
		"U_I_L_Uniform_01_camo_F"
	};
	Backpacksrandom[] = {1, 2, 4};
	backpackboxitems[] = {
		"B_OutdoorPack_blk",
		"B_AssaultPack_tna_f",
		"B_Carryall_oucamo",
		"B_Carryall_oli",
		"B_Carryall_cbr",
		"B_Carryall_ghex_f"
	};
	Magazinrandom[] = {1, 2, 4};
	magazinboxitems[] = {
		"16Rnd_9x21_Mag",
		"200Rnd_65x39_cased_Box_Tracer",
		"7Rnd_408_Mag",
		"20Rnd_762x51_Mag",
		"10Rnd_762x54_Mag",
		"11Rnd_45ACP_Mag",
		"30Rnd_65x39_caseless_green"
	};
	Itemsrandom[] = {1, 2, 4};
	itemsboxitems[] = {
		"optic_ACO_grn",
		"optic_Arco_blk_F",
		"muzzle_snds_H",
		"optic_Holosight",
		"acc_pointer_IR"
	};
	vItemsrandom[] = {10, 20, 30};
	vitemsboxitems[] = {
		{"goldbar"},
		{"lootboxnormal"},
		{"lootboxepic"},
		{"lootboxlegend"},
		{"chip3"},
		{"chip2"},
		{"schmerzmittel"},
		{"morphin"},
		{"stihlsaege"},
		{"lockpickplus"},
		{"boltcuttergate"}
	};
};