class Cation_Perm {
    tag = "cat_perm";
    class functions {
        file = "Scripts\cation\perm";
        class initPerm { postInit = 1; };
        class setPerm {};
        class setup {};
        class setupPermDialog {};
        // Server
        class getLevels { postInit = 1; };
        class updatePerm {};
        class updateRank {};
        // HC
        class updatePermHC {};
        class updateRankHC {};
    };
};