class huskyCfgBackpacks {
    class B_AssaultPack_khk {
        vItemSpace = 40;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_AssaultPack_cbr : B_AssaultPack_khk {};
    class B_AssaultPack_dgtl : B_AssaultPack_khk {};
    class B_AssaultPack_rgr : B_AssaultPack_khk {};
	class B_AssaultPack_ocamo : B_AssaultPack_khk {};
    class B_AssaultPack_sgg : B_AssaultPack_khk {};
    class B_AssaultPack_blk : B_AssaultPack_khk {};
    class B_AssaultPack_mcamo : B_AssaultPack_khk {};
    class B_AssaultPack_tna_f : B_AssaultPack_khk {};
    class B_OutdoorPack_blk : B_AssaultPack_khk {};

    //Feldpack
    class B_FieldPack_cbr {
        vItemSpace = 60;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_FieldPack_khk : B_FieldPack_cbr {};
    class B_FieldPack_blk : B_FieldPack_cbr {};
    class B_FieldPack_ocamo : B_FieldPack_cbr {};
    class B_FieldPack_oucamo : B_FieldPack_cbr {};
    class B_FieldPack_ghex_F : B_FieldPack_cbr {};
    class B_FieldPack_oli : B_FieldPack_cbr {};

    //Taktischer Rucksack
    class B_TacticalPack_rgr {
        vItemSpace = 80;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_TacticalPack_ocamo : B_TacticalPack_rgr {};
    class B_TacticalPack_mcamo : B_TacticalPack_rgr {};
    class B_TacticalPack_oli : B_TacticalPack_rgr {};
    class B_TacticalPack_blk : B_TacticalPack_rgr {};
    class B_Bergen_sgg : B_TacticalPack_rgr {};
    class B_Bergen_rgr : B_TacticalPack_rgr {};
    class B_Bergen_blk : B_TacticalPack_rgr {};
    class B_Bergen_mcamo : B_TacticalPack_rgr {};

    //Seesack
    class B_Kitbag_mcamo {
        vItemSpace = 100;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_Kitbag_sgg : B_Kitbag_mcamo {};
    class B_Kitbag_cbr : B_Kitbag_mcamo {};
    class B_Kitbag_rgr : B_Kitbag_mcamo {};
	
	//ViperHarness Rucksack
    class B_ViperHarness_ghex_F {
        vItemSpace = 130;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };

    class B_ViperHarness_blk_F : B_ViperHarness_ghex_F {};
    class B_ViperHarness_oli_F : B_ViperHarness_ghex_F {};

    //Gro�er Rucksack
    class B_Carryall_ocamo {
        vItemSpace = 140;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_Carryall_oucamo : B_Carryall_ocamo {};
    class B_Carryall_mcamo : B_Carryall_ocamo {};
    class B_Carryall_oli : B_Carryall_ocamo {};
    class B_Carryall_khk : B_Carryall_ocamo {};
    class B_Carryall_cbr : B_Carryall_ocamo {};
    class B_Carryall_ghex_f : B_Carryall_ocamo {};

    //Bergen Rucksack
    class B_Bergen_dgtl_f {
        vItemSpace = 160;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
    class B_Bergen_hex_F : B_Bergen_dgtl_f {};
    class B_Bergen_mcamo_F : B_Bergen_dgtl_f {};
    class B_Bergen_tna_f : B_Bergen_dgtl_f {};
	
	//Beintasche	(Admin Beintasche, NICHT �ndern & NICHT in den Shop packen)
    class B_LegStrapBag_coyote_F {
        vItemSpace = 100000;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
	
	//Beintasche
    class B_CombinationUnitRespirator_01_F {
        vItemSpace = 120;
        conditions = "";
        price = -1;
        storeLiquid= -1;
        textures[] = {};
    };
};
