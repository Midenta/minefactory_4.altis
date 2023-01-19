
	/* Vehicle kauf Prices */
    // vehicle_purchase_multiplier_CIVILIAN = 1; //Civilian Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_COP = .2; //Cop Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_MEDIC = .2; //Medic Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* Vehicle miet Prices */
    // vehicle_rental_multiplier_CIVILIAN = .60; //Civilian Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_COP = .1; //Cop Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_MEDIC = .1; //Medic Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* Vehicle verkauf Prices */
    // vehicle_sell_multiplier_CIVILIAN = .55; //Civilian Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_COP = .05; //Cop Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_MEDIC = .05; //Medic Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* "Andere" Vehicle Prices */
    // vehicle_chopShop_multiplier = .25; //Chop Shop price for vehicles. TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
    // vehicle_storage_fee_multiplier = .01; //Pull from garage cost --> Cost takes the playersides Buy Price * multiplier
    // vehicle_cop_impound_multiplier = .05; //TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
	/*
	*		Thieves
	*
	*		Thieves-Gaming.de
	*
	*		Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	*		Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
    */
class huskyCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: STRING (Condition)
    *    Textures config follows { Texture Name, side, {texture(s)path}, Condition}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        conditions = "";
        price = -1;
        textures[] = {};
		description = "Tolles Fahrzeug.";
    };

	class Colors {
		textures[] = {
			{ "Black", "civ", {
				"#(argb,8,8,3)color(0,0,0,1.0,CO)"
			} },
			{ "White", "civ", {
				"#(argb,8,8,3)color(1,1,1,1.0,CO)"
			} },
			{ "Grey", "civ", {
				"#(argb,8,8,3)color(0.521569,0.521569,0.521569,1.0,CO)"
			} },
			{ "Grey Blue", "civ", {
				"#(argb,8,8,3)color(0.537255,0.647059,0.811765,1.0,CO)"
			} },
			{ "Dark Blue Grey", "civ", {
				"#(argb,8,8,3)color(0.278431,0.427451,0.713725,1.0,CO)"
			} },
			{ "Light Blue", "civ", {
				"#(argb,8,8,3)color(0.192157,0.556863,0.968627,1.0,CO)"
			} },
			{ "Blue", "civ", {
				"#(argb,8,8,3)color(0.0352941,0.415686,0.882353,1.0,CO)"
			} },
			{ "Dark Blue", "civ", {
				"#(argb,8,8,3)color(0.0235294,0.12549,0.592157,1.0,CO)"
			} },
			{ "Turquoise Blue", "civ", {
				"#(argb,8,8,3)color(0,0.717647,0.717647,1.0,CO)"
			} },
			{ "Bright Red", "civ", {
				"#(argb,8,8,3)color(0.992157,0.258824,0.258824,1.0,CO)"
			} },
			{ "Red", "civ", {
				"#(argb,8,8,3)color(0.843137,0,0,1.0,CO)"
			} },
			{ "Dark Red", "civ", {
				"#(argb,8,8,3)color(0.466667,0,0,1.0,CO)"
			} },
			{ "Bordeaux Red", "civ", {
				"#(argb,8,8,3)color(0.517647,0.0156863,0.027451,1.0,CO)"
			} },
			{ "Light Green", "civ", {
				"#(argb,8,8,3)color(0.270588,0.862745,0.345098,1.0,CO)"
			} },
			{ "Green", "civ", {
				"#(argb,8,8,3)color(0.105882,0.545098,0.156863,1.0,CO)"
			} },
			{ "Dark Green", "civ", {
				"#(argb,8,8,3)color(0.0509804,0.266667,0.0784314,1.0,CO)"
			} },
			{ "Lime Green", "civ", {
				"#(argb,8,8,3)color(0.65098,0.996078,0.00392157,1.0,CO)"
			} },
			{ "Khaki", "civ", {
				"#(argb,8,8,3)color(0.392157,0.447059,0.180392,1.0,CO)"
			} },
			{ "Yellow", "civ", {
				"#(argb,8,8,3)color(0.917647,0.886275,0.356863,1.0,CO)"
			} },
			{ "Orange", "civ", {
				"#(argb,8,8,3)color(0.921569,0.435294,0.137255,1.0,CO)"
			} },
			{ "Ton", "civ", {
				"#(argb,8,8,3)color(0.788235,0.427451,0.380392,1.0,CO)"
			} },
			{ "Brown", "civ", {
				"#(argb,8,8,3)color(0.713725,0.517647,0.305882,1.0,CO)"
			} },
			{ "Dark Brown", "civ", {
				"#(argb,8,8,3)color(0.407843,0.290196,0.168627,1.0,CO)"
			} },
			{ "Pink", "civ", {
				"#(argb,8,8,3)color(0.972549,0.470588,0.756863,1.0,CO)"
			} },
			{ "Dark Pink", "civ", {
				"#(argb,8,8,3)color(0.713725,0.32549,0.843137,1.0,CO)"
			} },
			{ "Lavender", "civ", {
				"#(argb,8,8,3)color(0.717647,0.662745,0.960784,1.0,CO)"
			} },
			{ "Violet", "civ", {
				"#(argb,8,8,3)color(0.392157,0.0431373,0.67451,1.0,CO)"
			} },
			{ "AliceBlue", "civ", {
				"#(rgb,8,8,3)color(0.94,0.97,1.0,1.0,CO)"
			} },
			{ "BlueViolet", "civ", {
				"#(rgb,8,8,3)color(0.54,0.17,0.89,1.0,CO)"
			} },
			{ "CadetBlue", "civ", {
				"#(rgb,8,8,3)color(0.37,0.62,0.63,1.0,CO)"
			} },
			{ "CornflowerBlue", "civ", {
				"#(rgb,8,8,3)color(0.39,0.58,0.93,1.0,CO)"
			} },
			{ "DarkBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.55,1.0,CO)"
			} },
			{ "DarkCyan", "civ", {
				"#(rgb,8,8,3)color(0.0,0.55,0.55,1.0,CO)"
			} },
			{ "DarkSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.28,0.24,0.55,1.0,CO)"
			} },
			{ "DarkTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.0,0.81,0.82,1.0,CO)"
			} },
			{ "DeepSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.75,1.0,1.0,CO)"
			} },
			{ "DodgerBlue", "civ", {
				"#(rgb,8,8,3)color(0.12,0.56,1.0,1.0,CO)"
			} },
			{ "LightBlue", "civ", {
				"#(rgb,8,8,3)color(0.68,0.85,0.90,1.0,CO)"
			} },
			{ "LightCyan", "civ", {
				"#(rgb,8,8,3)color(0.88,1.0,1.0,1,CO)"
			} },
			{ "LightSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.98,1,CO)"
			} },
			{ "LightSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.52,0.44,1.0,1,CO)"
			} },
			{ "LightSteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.77,0.87,1,CO)"
			} },
			{ "MediumAquamarine", "civ", {
				"#(rgb,8,8,3)color(0.40,0.80,0.67,1,CO)"
			} },
			{ "MediumBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.80,1,CO)"
			} },
			{ "MediumSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.48,0.41,0.93,1,CO)"
			} },
			{ "MediumTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.28,0.82,0.80,1,CO)"
			} },
			{ "MidnightBlue", "civ", {
				"#(rgb,8,8,3)color(0.10,0.10,0.44,1,CO)"
			} },
			{ "NavyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "PaleTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.69,0.93,0.93,1,CO)"
			} },
			{ "PowderBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.88,0.90,1,CO)"
			} },
			{ "RoyalBlue", "civ", {
				"#(rgb,8,8,3)color(0.25,0.41,0.88,1,CO)"
			} },
			{ "SkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.92,1,CO)"
			} },
			{ "SlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.42,0.35,0.80,1,CO)"
			} },
			{ "SteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.27,0.51,0.71,1,CO)"
			} },
			{ "Aquamarine", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.83,1,CO)"
			} },
			{ "Azure", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,1.0,1,CO)"
			} },
			{ "Blue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,1.0,1,CO)"
			} },
			{ "Cyan", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,1.0,1,CO)"
			} },
			{ "Navy", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "Turquoise", "civ", {
				"#(rgb,8,8,3)color(0.25,0.88,0.82,1,CO)"
			} },
			{ "RosyBrown", "civ", {
				"#(rgb,8,8,3)color(0.74,0.56,0.56,1,CO)"
			} },
			{ "SaddleBrown", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "SandyBrown", "civ", {
				"#(rgb,8,8,3)color(0.96,0.64,0.38,1,CO)"
			} },
			{ "Beige", "civ", {
				"#(rgb,8,8,3)color(0.96,0.96,0.86,1,CO)"
			} },
			{ "Brown", "civ", {
				"#(rgb,8,8,3)color(0.65,0.16,0.16,1,CO)"
			} },
			{ "Burlywood", "civ", {
				"#(rgb,8,8,3)color(0.87,0.72,0.53,1,CO)"
			} },
			{ "Chocolate", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "Peru", "civ", {
				"#(rgb,8,8,3)color(0.80,0.52,0.25,1,CO)"
			} },
			{ "Tan", "civ", {
				"#(rgb,8,8,3)color(0.82,0.71,0.55,1,CO)"
			} },
			{ "DarkSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.18,0.31,0.31,1,CO)"
			} },
			{ "DimGray", "civ", {
				"#(rgb,8,8,3)color(0.41,0.41,0.41,1,CO)"
			} },
			{ "LightGray", "civ", {
				"#(rgb,8,8,3)color(0.83,0.83,0.83,1,CO)"
			} },
			{ "LightSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.47,0.53,0.60,1,CO)"
			} },
			{ "Gray", "civ", {
				"#(rgb,8,8,3)color(0.75,0.75,0.75,1,CO)"
			} },
			{ "DarkGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.39,0.0,1,CO)"
			} },
			{ "DarkKhaki", "civ", {
				"#(rgb,8,8,3)color(0.74,0.72,0.42,1,CO)"
			} },
			{ "DarkOliveGreen", "civ", {
				"#(rgb,8,8,3)color(0.33,0.42,0.18,1,CO)"
			} },
			{ "DarkSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.74,0.56,1,CO)"
			} },
			{ "ForestGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.55,0.13,1,CO)"
			} },
			{ "GreenYellow", "civ", {
				"#(rgb,8,8,3)color(0.68,1.0,0.18,1,CO)"
			} },
			{ "LawnGreen", "civ", {
				"#(rgb,8,8,3)color(0.49,0.99,0.0,1,CO)"
			} },
			{ "LightGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.93,0.56,1,CO)"
			} },
			{ "LightSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.70,0.67,1,CO)"
			} },
			{ "LimeGreen", "civ", {
				"#(rgb,8,8,3)color(0.20,0.80,0.20,1,CO)"
			} },
			{ "MediumSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.24,0.70,0.44,1,CO)"
			} },
			{ "MediumSpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.98,0.60,1,CO)"
			} },
			{ "MintCream", "civ", {
				"#(rgb,8,8,3)color(0.96,1.0,0.98,1,CO)"
			} },
			{ "OliveDrab", "civ", {
				"#(rgb,8,8,3)color(0.42,0.56,0.14,1,CO)"
			} },
			{ "PaleGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.98,0.60,1,CO)"
			} },
			{ "SeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.18,0.55,0.34,1,CO)"
			} },
			{ "SpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.50,1,CO)"
			} },
			{ "YellowGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.80,0.20,1,CO)"
			} },
			{ "Chartreuse", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.0,1,CO)"
			} },
			{ "Green", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.0,1,CO)"
			} },
			{ "Khaki", "civ", {
				"#(rgb,8,8,3)color(0.55,0.53,0.31,1,CO)"
			} },
			{ "DarkOrange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.55,0.0,1,CO)"
			} },
			{ "DarkSalmon", "civ", {
				"#(rgb,8,8,3)color(0.91,0.59,0.48,1,CO)"
			} },
			{ "LightCoral", "civ", {
				"#(rgb,8,8,3)color(0.94,0.50,0.50,1,CO)"
			} },
			{ "LightSalmon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.63,0.48,1,CO)"
			} },
			{ "PeachPuff", "civ", {
				"#(rgb,8,8,3)color(1.0,0.85,0.73,1,CO)"
			} },
			{ "Bisque", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.77,1,CO)"
			} },
			{ "Coral", "civ", {
				"#(rgb,8,8,3)color(1.0,0.50,0.31,1,CO)"
			} },
			{ "Honeydew", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,0.94,1,CO)"
			} },
			{ "Orange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.65,0.0,1,CO)"
			} },
			{ "Salmon", "civ", {
				"#(rgb,8,8,3)color(0.98,0.50,0.45,1,CO)"
			} },
			{ "Sienna", "civ", {
				"#(rgb,8,8,3)color(0.63,0.32,0.18,1,CO)"
			} },
			{ "DarkRed", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.0,1,CO)"
			} },
			{ "DeepPink", "civ", {
				"#(rgb,8,8,3)color(0.80,0.06,0.46,1,CO)"
			} },
			{ "HotPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.41,0.71,1,CO)"
			} },
			{ "IndianRed", "civ", {
				"#(rgb,8,8,3)color(0.80,0.36,0.36,1,CO)"
			} },
			{ "LightPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.71,0.76,1,CO)"
			} },
			{ "MediumVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.78,0.08,0.52,1,CO)"
			} },
			{ "MistyRose", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.88,1,CO)"
			} },
			{ "OrangeRed", "civ", {
				"#(rgb,8,8,3)color(1.0,0.27,0.0,1,CO)"
			} },
			{ "PaleVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.86,0.44,0.58,1,CO)"
			} },
			{ "VioletRed", "civ", {
				"#(rgb,8,8,3)color(0.82,0.13,0.56,1,CO)"
			} },
			{ "Firebrick", "civ", {
				"#(rgb,8,8,3)color(0.70,0.13,0.13,1,CO)"
			} },
			{ "Pink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.75,0.80,1,CO)"
			} },
			{ "Red", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,0.0,1,CO)"
			} },
			{ "Tomato", "civ", {
				"#(rgb,8,8,3)color(1.0,0.39,0.28,1,CO)"
			} },
			{ "DarkMagenta", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.55,1,CO)"
			} },
			{ "DarkOrchid", "civ", {
				"#(rgb,8,8,3)color(0.60,0.20,0.80,1,CO)"
			} },
			{ "DarkViolet", "civ", {
				"#(rgb,8,8,3)color(0.58,0.0,0.83,1,CO)"
			} },
			{ "LavenderBlush", "civ", {
				"#(rgb,8,8,3)color(1.0,0.94,0.96,1,CO)"
			} },
			{ "MediumOrchid", "civ", {
				"#(rgb,8,8,3)color(0.73,0.33,0.83,1,CO)"
			} },
			{ "MediumPurple", "civ", {
				"#(rgb,8,8,3)color(0.58,0.44,0.86,1,CO)"
			} },
			{ "Lavender", "civ", {
				"#(rgb,8,8,3)color(0.90,0.90,0.98,1,CO)"
			} },
			{ "Magenta", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,1.0,1,CO)"
			} },
			{ "Maroon", "civ", {
				"#(rgb,8,8,3)color(0.69,0.19,0.38,1,CO)"
			} },
			{ "Orchid", "civ", {
				"#(rgb,8,8,3)color(0.85,0.44,0.84,1,CO)"
			} },
			{ "Plum", "civ", {
				"#(rgb,8,8,3)color(0.87,0.63,0.87,1,CO)"
			} },
			{ "Purple", "civ", {
				"#(rgb,8,8,3)color(0.63,0.13,0.94,1,CO)"
			} },
			{ "Thistle", "civ", {
				"#(rgb,8,8,3)color(0.85,0.75,0.85,1,CO)"
			} },
			{ "Violet", "civ", {
				"#(rgb,8,8,3)color(0.93,0.51,0.93,1,CO)"
			} },
			{ "AntiqueWhite", "civ", {
				"#(rgb,8,8,3)color(0.98,0.92,0.84,1,CO)"
			} },
			{ "Linen", "civ", {
				"#(rgb,8,8,3)color(0.98,0.94,0.90,1,CO)"
			} },
			{ "Snow", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.98,1,CO)"
			} },
			{ "White", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,1.0,1,CO)"
			} },
			{ "BlanchedAlmond", "civ", {
				"#(rgb,8,8,3)color(1.0,0.92,0.80,1,CO)"
			} },
			{ "DarkGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.72,0.53,0.04,1,CO)"
			} },
			{ "LemonChiffon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.80,1,CO)"
			} },
			{ "LightGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.87,0.51,1,CO)"
			} },
			{ "LightGoldenrodYellow", "civ", {
				"#(rgb,8,8,3)color(0.98,0.98,0.82,1,CO)"
			} },
			{ "LightYellow", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.88,1,CO)"
			} },
			{ "PaleGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.91,0.67,1,CO)"
			} },
			{ "PapayaWhip", "civ", {
				"#(rgb,8,8,3)color(0.99,0.94,0.84,1,CO)"
			} },
			{ "Cornsilk", "civ", {
				"#(rgb,8,8,3)color(0.99,0.97,0.86,1,CO)"
			} },
			{ "Gold", "civ", {
				"#(rgb,8,8,3)color(1.0,0.84,0.0,1,CO)"
			} },
			{ "Goldenrod", "civ", {
				"#(rgb,8,8,3)color(0.85,0.65,0.13,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.71,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.0,1,CO)"
			} }
		};
	};

    // Apex DLC
    class C_Boat_Transport_02_F {
        vItemSpace = 100;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 25000;
        textures[] = {
            { "Civilian", "civ", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_civilian_CO.paa"
            }, "" },
            { "Black", "cop", {
                "\A3\Boat_F_Exp\Boat_Transport_02\Data\Boat_Transport_02_exterior_CO.paa"
            }, "" }
        };
    };

	class O_LSV_02_unarmed_F {
        vItemSpace = 150;
        conditions = "";
        price = 520000;
        textures[] = {
            /*{ "Policia", "cop", {
                "",
                ""
            }, "" }
			*/
        };
    };

	class B_LSV_01_unarmed_F {
        vItemSpace = 100;
        conditions = "";
        price = 300000;
        textures[] = { };
    };

	class I_LT_01_scout_F {
        vItemSpace = 100;
        conditions = "license_civ_schwarzmarkt || {license_cop_cAir} || {license_med_mAir}";
        price = 30000000;
        textures[] = { };
    };
	class I_LT_01_AT_F {
        vItemSpace = 150;
        conditions = "license_civ_schwarzmarkt || {license_cop_cAir} || {license_med_mAir}";
        price = 30000000;
        textures[] = { };
    };

	// Strider
    class I_MRAP_03_F {
        vItemSpace = 200;
        conditions = "";
        price = 5000000;
        textures[] = {
			{ "", "reb", {
                "\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiStrider.paa"
            }, "call husky_coplevel >= 1" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKStrider.jpg"
            }, "license_cop_copsek" },
			{ "Enrico", "civ", {
                "textures\zivs\hausrecht\Hausrecht Strider.paa"
            }, "license_civ_HausRecht" }
        };
    };

    class C_Van_02_vehicle_F {
        vItemSpace = 300;
        conditions = "";
        price = 250000;
        textures[] = {
			{ "Armazon", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Armazon_CO.paa"
            }, "" },
			{ "BB Zeitlich begrenz", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_BB_CO.paa"	//Zeitlich begrenzt nur erhältlich
            }, "" },
			{ "Schwarz", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_black_CO.paa"
            }, "" },
			{ "Blau", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_blue_CO.paa"
            }, "" },
			{ "BluePearl", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_BluePearl_CO.paa"
            }, "" },
			{ "Orange", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Orange_CO.paa"
            }, "" },
			{ "Daltgreen", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Daltgreen_CO.paa"
            }, "" },
			{ "Tarnfelck 1", "reb", {
                "\A3\soft_f_orange\Van_02\Data\van_body_FIA_01_CO.paa"	//Bald nur im Reb shop
            }, "" },
			{ "Tarnfelck 2", "reb", {
                "\A3\soft_f_orange\Van_02\Data\van_body_FIA_02_CO.paa"	//Bald nur im Reb shop
            }, "" },
			{ "Masked", "reb", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Masked_CO.paa"	//Bald nur im Reb shop
            }, "" },
			{ "Unfertisch", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_FIA_02_unfinished_CO.paa"
            }, "" },
			{ "Fuel", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Fuel_CO.paa"
            }, "" },
			{ "Grün ", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_green_CO.paa"
            }, "" },
			{ "IDAP", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_IDAP_CO.paa"
            }, "" },
			{ "Red", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Red_CO.paa"
            }, "" },
			{ "Redstone", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Redstone_CO.paa"
            }, "" },
			{ "Braun", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Syndikat_CO.paa"
            }, "" },
			{ "Vrana", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Vrana_CO.paa"
            }, "" },
			{ "Weiß", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_white_CO.paa"
            }, "" }
        };
    };

	class B_G_Van_02_vehicle_F {
          vItemSpace = 250;
          conditions = "";
          storeLiquid= false;
          price = 250000;
          textures[] = {};
    };

	// Law of War
    class C_Van_02_transport_F {
        vItemSpace =150;
        conditions = "";
        price = 200000;
        textures[] = {
			{ "Armazon", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Armazon_CO.paa"
            }, "" },
			{ "Schwarz", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_black_CO.paa"
            }, "" },
			{ "Blau", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_blue_CO.paa"
            }, "" },
			{ "BluePearl", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_BluePearl_CO.paa"
            }, "" },
			{ "Orange", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Orange_CO.paa"
            }, "" },
			{ "Daltgreen", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Daltgreen_CO.paa"
            }, "" },
			{ "Unfertisch", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_FIA_02_unfinished_CO.paa"
            }, "" },
			{ "Fuel", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Fuel_CO.paa"
            }, "" },
			{ "Grün ", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_green_CO.paa"
            }, "" },
			{ "IDAP", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_IDAP_CO.paa"
            }, "" },
			{ "Red", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Red_CO.paa"
            }, "" },
			{ "Redstone", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Redstone_CO.paa"
            }, "" },
			{ "Braun", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Syndikat_CO.paa"
            }, "" },
			{ "Vrana", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_Vrana_CO.paa"
            }, "" },
            { "RTW", "med", {
                "textures\guer\fw_rtw.paa"
            }, "" },
			{ "Weiß", "civ", {
                "\A3\soft_f_orange\Van_02\Data\van_body_white_CO.paa"
            }, "" }
		};
    };
    // Apex DLC
    class B_Heli_Transport_03_black_F {
        vItemSpace = 40;
        conditions = "";
        price = 3500000;
        textures[] = { };
    };

	// Apex DLC
    class C_Offroad_02_unarmed_F {
        vItemSpace = 75;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 30000;
        textures[] = {
            { "Blue", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa"
            }, "" },
            { "FR", "med", {
                "textures\guer\FeuerwehrMB-4WD.jpg"
            }, ""},
            { "Red", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa"
            }, "" }
        };
    };

    // Apex DLC
    class C_Scooter_Transport_01_F {
        vItemSpace = 30;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 10000;
        textures[] = {
            { "Black", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Black_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Black_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Blue_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Blue_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Grey_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Grey_co.paa"
            }, "" },
            { "Green", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Lime_co.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Lime_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Red_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_CO.paa"
            }, "" },
            { "Yellow", "civ", {
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_Yellow_CO.paa",
                "\A3\Boat_F_Exp\Scooter_Transport_01\Data\Scooter_Transport_01_VP_Yellow_CO.paa"
            }, "" }
        };
    };

    // Apex DLC
    class O_T_LSV_02_unarmed_F {
        vItemSpace = 150;
        conditions = "";
        price = 500000;
        textures[] = {
            { "Arid", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_arid_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_arid_CO.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_black_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_black_CO.paa"
            }, "" },
            { "Green Hex", "civ", {
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_01_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_02_ghex_CO.paa",
                "\A3\Soft_F_Exp\LSV_02\Data\CSAT_LSV_03_ghex_CO.paa"
            }, "" }
        };
    };

    class I_Truck_02_medical_F {
        vItemSpace = 150;
        conditions = "";
        price = 25000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 200;
        conditions = "";
        price = 45000;
        textures[] = {};
    };

    class O_Truck_03_repair_F  {
        vItemSpace = 200;
        conditions = "";
        price = 300000;
        textures[] = {
            { "TLF", "med", {
                "textures\guer\fw_tempest_1.paa",
                "textures\guer\fw_tempest_2.paa",
                "textures\guer\fw_tempest_3.paa"
            }, "" }
        };
    };

    class B_Truck_01_medical_F {
        vItemSpace = 250;
        conditions = "";
        price = 60000;
        textures[] = {};
    };

     class B_APC_Tracked_01_CRV_F {
        vItemSpace = 250;
        conditions = "";
        price = 12000000;
        textures[] = {
            { "Katschutz", "med", {
                "textures\guer\fw_bobcat.paa",
                "textures\guer\fw_bobcat_2.paa",
                "textures\guer\fw_bobcat_3.paa"
            }, "" },
			{ "Bobcat", "civ", {
                "A3\Armor_F_Beta\APC_Tracked_01\Data\apc_tracked_01_body_crv_co.paa",
				"A3\Armor_F_Beta\APC_Tracked_01\Data\mbt_01_body_co.paa",
				"a3\data_f\vehicles\turret_co.paa",
				"A3\Armor_F_Beta\APC_Tracked_01\Data\apc_tracked_01_crv_co.paa",
				"a3\Armor_F\Data\camonet_NATO_Desert_CO.paa"
            }, "" },
			{ "Bobcat Olive", "civ", {
                "A3\Armor_F_exp\APC_Tracked_01\Data\apc_tracked_01_body_crv_olive_co.paa",
				"A3\Armor_F_exp\APC_Tracked_01\Data\mbt_01_body_olive_co.paa",
				"A3\Data_F_Exp\Vehicles\Turret_olive_CO.paa",
				"A3\Armor_F_exp\APC_Tracked_01\Data\apc_tracked_01_crv_olive_co.paa",
				"a3\Armor_F\Data\camonet_NATO_Green_CO.paa"
            }, "" }
         };
    };

	class B_AFV_Wheeled_01_cannon_F {
        vItemSpace = 250;
        conditions = "";
        price = 12000000;
        textures[] = {  };
    };
	class B_MBT_01_mlrs_F {
        vItemSpace = 250;
        conditions = "";
        price = 12000000;
        textures[] = {  };
    };

    class C_Rubberboat {
        vItemSpace = 45;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 5000;
        textures[] = { };
    };

	class C_Offroad_02_unarmed_black_F {
        vItemSpace = 50;
        conditions = "";
        price = 50000;
        textures[] = {
		    { "Polizei", "cop", {
                "textures\west\PolizeiMB4WD.paa"
            }, "" }
        };
	};

	class B_Heli_Attack_01_F {
        vItemSpace = 50;
        conditions = "";
        price = 70000000;
        textures[] = {
		    { "Polizei", "cop", {
                "textures\west\PolizeiBlackfoot.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKBlackfoot.jpg"
            }, "license_cop_copsek" }
        };
	};


    class B_Heli_Transport_01_F {
        vItemSpace = 200;
        conditions = "license_cop_coppilot || {!(playerSide isEqualTo west)}";
        price = 100000000;
        textures[] = {
			{ "SEK", "cop", {
                "textures\west\sek\SEKGhosthawk1.jpg",
                "textures\west\sek\SEKGhosthawk2.jpg"
            }, "license_cop_copsek" },
            { "Polizei", "cop", {
                "textures\west\PolizeiGhosthawk1.paa",
                "textures\west\PolizeiGhosthawk2.paa"
            }, "" },
            { "Ghost", "civ", {
                "\A3\Air_F_Exp\Heli_Transport_01\Data\Heli_Transport_01_ext01_tropic_CO.paa",
				"\A3\Air_F_Exp\Heli_Transport_01\Data\Heli_Transport_01_ext02_tropic_CO.paa"
            }, "" },
            { "Ghost", "civ", {
                "\A3\Air_F_Exp\Heli_Transport_01\Data\Heli_Transport_01_ext01_sand_CO.paa",
				"\A3\Air_F_Exp\Heli_Transport_01\Data\Heli_Transport_01_ext02_sand_CO.paa"
            }, "" }
         };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        conditions = "license_cop_copboot || {!(playerSide isEqualTo west)}";
        price = 300000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        conditions = "license_cop_copboot || {!(playerSide isEqualTo west)}";
        price = 15000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 750;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1850000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 1000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 15500000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//Hauskiste1 alt
    class Box_IND_Grenades_F {
        vItemSpace = 750;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storagefest1
    class Land_PlasticCase_01_large_CBRN_F {
        vItemSpace = 750;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storagefest2
    class B_supplyCrate_F {
        vItemSpace = 1700;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storagefest3
    class Land_PaperBox_closed_F {
        vItemSpace = 3000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storagefest4
    class Box_East_AmmoVeh_F {
        vItemSpace = 5000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storageuran1
    class HazmatBag_01_F {
        vItemSpace = 750;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storageflussig1
    class Land_MetalBarrel_F {
        vItemSpace = 750;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storageflussig2
    class Land_WaterBarrel_F {
        vItemSpace = 2500;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	//storageflussig3
    class Land_WaterTank_F {
        vItemSpace = 5000;
        conditions = "";
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 100;
        conditions = "";
        price = 100000;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 65;
        conditions = "";
        price = 2000000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        conditions = "license_civ_boat || {!(playerSide isEqualTo civilian)}";
        price = 15000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        conditions = "license_cop_copboot || {!(playerSide isEqualTo west)}";
        price = 30000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 2000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 6850000;
        textures[] = { };
    };

    class B_Truck_01_transport_F {
        vItemSpace = 750;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 2000000;
        textures[] = { };
    };

	 class B_Truck_01_flatbed_F {		//Contact DLC
        vItemSpace = 100;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 5500000;
        textures[] = {
			{ "Hemett", "civ", {
                "\A3\soft_f_beta\Truck_01\Data\Truck_01_ext_01_CO.paa",
				"\A3\soft_f_beta\Truck_01\Data\Truck_01_cargo_CO.paa"
            }, "" },
            { "Pannenhilfe", "med", {
                "textures\guer\FeuerwehrHemtt1Pannenhilfe.jpg",
                "textures\guer\FeuerwehrHemtt2.jpg",
				"textures\guer\FeuerwehrHemtt3Cargo.jpg"
            }, "" }
		};
    };

	 class B_Truck_01_cargo_F {		//Contact DLC
        vItemSpace = 1000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 2850000;
        textures[] = {
            { "Hemett", "civ", {
                "\A3\soft_f_beta\Truck_01\Data\Truck_01_ext_01_CO.paa",
				"\A3\soft_f_beta\Truck_01\Data\Truck_01_cargo_CO.paa"
            }, "" },
            { "Pannenhilfe", "med", {
                "textures\guer\FeuerwehrHemtt1Pannenhilfe.jpg",
                "textures\guer\FeuerwehrHemtt2.jpg",
				"textures\guer\FeuerwehrHemtt3Cargo.jpg"
            }, "" }
		};
	};

	class B_Truck_01_covered_F {
        vItemSpace = 1750;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 5650000;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 200;
        conditions = "";
        price = 3350000;
        textures[] = {
			{"Hyperbeast", "reb", {
                "textures\zivs\cars\HypeIfrFront.paa",
                "textures\zivs\cars\HypeIfrBack4.paa"
            }, "" },
            { "Bergrettung", "med", {
                "textures\guer\fw_ifrit_1.paa",
                "textures\guer\fw_ifrit_2.paa"
            }, "" },
			{ "ACAB", "reb", {
                "textures\zivs\cars\ACABIfrFront.paa",
                "textures\zivs\cars\ACABIfrBack.paa"
            }, "" },
			{"Hunter", "reb", {
                "\a3\soft_f_epc\Truck_03\Data\Truck_03_ext01_CO.paa",
				"\a3\soft_f_epc\Truck_03\Data\Truck_03_ext02_CO.paa"
            }, "" },
			{"Enrico", "civ", {
                "textures\zivs\hausrecht\Hausrecht Hunter 1.paa",
                "textures\zivs\hausrecht\Hausrecht Hunter 2.paa"
            }, "license_civ_HausRecht" }
		};
	};

    class C_Offroad_01_F {
        vItemSpace = 90;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 50000;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiGelandewagen.paa"
            }, "" },
			{ "Feuerwehr", "med", {
                "textures\guer\FeuerwehrGelandewagen.jpg"
            }, "" },
			{ "Red", "cop", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "White", "cop", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "cop", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "cop", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "cop", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
            { "Taxi", "cop", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            }, "" }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 5;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 45000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            }, "" },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            }, "" },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            }, "" },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            }, "" },
            { "Feuerwehr", "med", {
				"textures\guer\FeuerwehrLimousine.jpg"
			}, "" },
			{ "SEK", "cop" , {
				"textures\west\sek\SEKLimousine.jpg"
			}, "license_cop_copsek" },
			{ "Red", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            }, "license_cop_copscharfschuetze" },
            { "Dark Blue", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            }, "license_cop_copscharfschuetze" },
            { "Orange", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            }, "license_cop_copscharfschuetze" },
            { "Black / White", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            }, "license_cop_copscharfschuetze" },
            { "Beige", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            }, "license_cop_copscharfschuetze" },
            { "Green", "cop", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            }, "license_cop_copscharfschuetze" },
			{ "Polizei", "cop", {
                "textures\west\PolizeiLimousine.paa"
            }, "" }
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 25;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 10000;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            }, "" },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            }, "" },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            }, "" },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            }, "" },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            }, "" },
			{ "Polizei", "cop", {
                "textures\west\PolizeiQuad.paa"
            }, "" },
			{ "Feuerwehr", "med", {
                "textures\guer\FeuerwehrQuad.paa"
            }, "" }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1150000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
			{ "Olive", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_blue_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_olive_CO.paa"
            }, "" },
			{ "Tarnfleck 1", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_INDP_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_INDP_CO.paa"
            }, "" },
			{ "Tarnfleck 2", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_OPFOR_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_OPFOR_CO.paa"
            }, "" },
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

	class admin_zamak {
        side = "civ";
        conditions = "license_civ_alice";
        vehicles[] = {
            { "I_Truck_02_transport_F", "" }
        };
    };


    class I_Truck_02_transport_F {
        vItemSpace = 300;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 625000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            }, "" },
			{ "Olive", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_blue_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_olive_CO.paa"
            }, "" },
			{ "Tarnfleck 1", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_INDP_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_INDP_CO.paa"
            }, "" },
			{ "Tarnfleck 2", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_OPFOR_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_OPFOR_CO.paa"
            }, "" },
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 1500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 4550000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 40;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 35000;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            }, "" },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            }, "" },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            }, "" },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            }, "" },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            }, "" },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            }, "" },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            }, "" },
            { "Black", "civ", {
				"#(argb,8,8,3)color(0,0,0,1.0,CO)"
			} },
			{ "White", "civ", {
				"#(argb,8,8,3)color(1,1,1,1.0,CO)"
			} },
			{ "Grey", "civ", {
				"#(argb,8,8,3)color(0.521569,0.521569,0.521569,1.0,CO)"
			} },
			{ "Grey Blue", "civ", {
				"#(argb,8,8,3)color(0.537255,0.647059,0.811765,1.0,CO)"
			} },
			{ "Dark Blue Grey", "civ", {
				"#(argb,8,8,3)color(0.278431,0.427451,0.713725,1.0,CO)"
			} },
			{ "Light Blue", "civ", {
				"#(argb,8,8,3)color(0.192157,0.556863,0.968627,1.0,CO)"
			} },
			{ "Blue", "civ", {
				"#(argb,8,8,3)color(0.0352941,0.415686,0.882353,1.0,CO)"
			} },
			{ "Dark Blue", "civ", {
				"#(argb,8,8,3)color(0.0235294,0.12549,0.592157,1.0,CO)"
			} },
			{ "Turquoise Blue", "civ", {
				"#(argb,8,8,3)color(0,0.717647,0.717647,1.0,CO)"
			} },
			{ "Bright Red", "civ", {
				"#(argb,8,8,3)color(0.992157,0.258824,0.258824,1.0,CO)"
			} },
			{ "Red", "civ", {
				"#(argb,8,8,3)color(0.843137,0,0,1.0,CO)"
			} },
			{ "Dark Red", "civ", {
				"#(argb,8,8,3)color(0.466667,0,0,1.0,CO)"
			} },
			{ "Bordeaux Red", "civ", {
				"#(argb,8,8,3)color(0.517647,0.0156863,0.027451,1.0,CO)"
			} },
			{ "Light Green", "civ", {
				"#(argb,8,8,3)color(0.270588,0.862745,0.345098,1.0,CO)"
			} },
			{ "Green", "civ", {
				"#(argb,8,8,3)color(0.105882,0.545098,0.156863,1.0,CO)"
			} },
			{ "Dark Green", "civ", {
				"#(argb,8,8,3)color(0.0509804,0.266667,0.0784314,1.0,CO)"
			} },
			{ "Lime Green", "civ", {
				"#(argb,8,8,3)color(0.65098,0.996078,0.00392157,1.0,CO)"
			} },
			{ "Khaki", "civ", {
				"#(argb,8,8,3)color(0.392157,0.447059,0.180392,1.0,CO)"
			} },
			{ "Yellow", "civ", {
				"#(argb,8,8,3)color(0.917647,0.886275,0.356863,1.0,CO)"
			} },
			{ "Orange", "civ", {
				"#(argb,8,8,3)color(0.921569,0.435294,0.137255,1.0,CO)"
			} },
			{ "Ton", "civ", {
				"#(argb,8,8,3)color(0.788235,0.427451,0.380392,1.0,CO)"
			} },
			{ "Brown", "civ", {
				"#(argb,8,8,3)color(0.713725,0.517647,0.305882,1.0,CO)"
			} },
			{ "Dark Brown", "civ", {
				"#(argb,8,8,3)color(0.407843,0.290196,0.168627,1.0,CO)"
			} },
			{ "Pink", "civ", {
				"#(argb,8,8,3)color(0.972549,0.470588,0.756863,1.0,CO)"
			} },
			{ "Dark Pink", "civ", {
				"#(argb,8,8,3)color(0.713725,0.32549,0.843137,1.0,CO)"
			} },
			{ "Lavender", "civ", {
				"#(argb,8,8,3)color(0.717647,0.662745,0.960784,1.0,CO)"
			} },
			{ "Violet", "civ", {
				"#(argb,8,8,3)color(0.392157,0.0431373,0.67451,1.0,CO)"
			} },
			{ "AliceBlue", "civ", {
				"#(rgb,8,8,3)color(0.94,0.97,1.0,1.0,CO)"
			} },
			{ "BlueViolet", "civ", {
				"#(rgb,8,8,3)color(0.54,0.17,0.89,1.0,CO)"
			} },
			{ "CadetBlue", "civ", {
				"#(rgb,8,8,3)color(0.37,0.62,0.63,1.0,CO)"
			} },
			{ "CornflowerBlue", "civ", {
				"#(rgb,8,8,3)color(0.39,0.58,0.93,1.0,CO)"
			} },
			{ "DarkBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.55,1.0,CO)"
			} },
			{ "DarkCyan", "civ", {
				"#(rgb,8,8,3)color(0.0,0.55,0.55,1.0,CO)"
			} },
			{ "DarkSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.28,0.24,0.55,1.0,CO)"
			} },
			{ "DarkTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.0,0.81,0.82,1.0,CO)"
			} },
			{ "DeepSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.75,1.0,1.0,CO)"
			} },
			{ "DodgerBlue", "civ", {
				"#(rgb,8,8,3)color(0.12,0.56,1.0,1.0,CO)"
			} },
			{ "LightBlue", "civ", {
				"#(rgb,8,8,3)color(0.68,0.85,0.90,1.0,CO)"
			} },
			{ "LightCyan", "civ", {
				"#(rgb,8,8,3)color(0.88,1.0,1.0,1,CO)"
			} },
			{ "LightSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.98,1,CO)"
			} },
			{ "LightSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.52,0.44,1.0,1,CO)"
			} },
			{ "LightSteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.77,0.87,1,CO)"
			} },
			{ "MediumAquamarine", "civ", {
				"#(rgb,8,8,3)color(0.40,0.80,0.67,1,CO)"
			} },
			{ "MediumBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.80,1,CO)"
			} },
			{ "MediumSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.48,0.41,0.93,1,CO)"
			} },
			{ "MediumTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.28,0.82,0.80,1,CO)"
			} },
			{ "MidnightBlue", "civ", {
				"#(rgb,8,8,3)color(0.10,0.10,0.44,1,CO)"
			} },
			{ "NavyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "PaleTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.69,0.93,0.93,1,CO)"
			} },
			{ "PowderBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.88,0.90,1,CO)"
			} },
			{ "RoyalBlue", "civ", {
				"#(rgb,8,8,3)color(0.25,0.41,0.88,1,CO)"
			} },
			{ "SkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.92,1,CO)"
			} },
			{ "SlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.42,0.35,0.80,1,CO)"
			} },
			{ "SteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.27,0.51,0.71,1,CO)"
			} },
			{ "Aquamarine", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.83,1,CO)"
			} },
			{ "Azure", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,1.0,1,CO)"
			} },
			{ "Blue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,1.0,1,CO)"
			} },
			{ "Cyan", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,1.0,1,CO)"
			} },
			{ "Navy", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "Turquoise", "civ", {
				"#(rgb,8,8,3)color(0.25,0.88,0.82,1,CO)"
			} },
			{ "RosyBrown", "civ", {
				"#(rgb,8,8,3)color(0.74,0.56,0.56,1,CO)"
			} },
			{ "SaddleBrown", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "SandyBrown", "civ", {
				"#(rgb,8,8,3)color(0.96,0.64,0.38,1,CO)"
			} },
			{ "Beige", "civ", {
				"#(rgb,8,8,3)color(0.96,0.96,0.86,1,CO)"
			} },
			{ "Brown", "civ", {
				"#(rgb,8,8,3)color(0.65,0.16,0.16,1,CO)"
			} },
			{ "Burlywood", "civ", {
				"#(rgb,8,8,3)color(0.87,0.72,0.53,1,CO)"
			} },
			{ "Chocolate", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "Peru", "civ", {
				"#(rgb,8,8,3)color(0.80,0.52,0.25,1,CO)"
			} },
			{ "Tan", "civ", {
				"#(rgb,8,8,3)color(0.82,0.71,0.55,1,CO)"
			} },
			{ "DarkSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.18,0.31,0.31,1,CO)"
			} },
			{ "DimGray", "civ", {
				"#(rgb,8,8,3)color(0.41,0.41,0.41,1,CO)"
			} },
			{ "LightGray", "civ", {
				"#(rgb,8,8,3)color(0.83,0.83,0.83,1,CO)"
			} },
			{ "LightSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.47,0.53,0.60,1,CO)"
			} },
			{ "Gray", "civ", {
				"#(rgb,8,8,3)color(0.75,0.75,0.75,1,CO)"
			} },
			{ "DarkGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.39,0.0,1,CO)"
			} },
			{ "DarkKhaki", "civ", {
				"#(rgb,8,8,3)color(0.74,0.72,0.42,1,CO)"
			} },
			{ "DarkOliveGreen", "civ", {
				"#(rgb,8,8,3)color(0.33,0.42,0.18,1,CO)"
			} },
			{ "DarkSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.74,0.56,1,CO)"
			} },
			{ "ForestGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.55,0.13,1,CO)"
			} },
			{ "GreenYellow", "civ", {
				"#(rgb,8,8,3)color(0.68,1.0,0.18,1,CO)"
			} },
			{ "LawnGreen", "civ", {
				"#(rgb,8,8,3)color(0.49,0.99,0.0,1,CO)"
			} },
			{ "LightGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.93,0.56,1,CO)"
			} },
			{ "LightSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.70,0.67,1,CO)"
			} },
			{ "LimeGreen", "civ", {
				"#(rgb,8,8,3)color(0.20,0.80,0.20,1,CO)"
			} },
			{ "MediumSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.24,0.70,0.44,1,CO)"
			} },
			{ "MediumSpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.98,0.60,1,CO)"
			} },
			{ "MintCream", "civ", {
				"#(rgb,8,8,3)color(0.96,1.0,0.98,1,CO)"
			} },
			{ "OliveDrab", "civ", {
				"#(rgb,8,8,3)color(0.42,0.56,0.14,1,CO)"
			} },
			{ "PaleGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.98,0.60,1,CO)"
			} },
			{ "SeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.18,0.55,0.34,1,CO)"
			} },
			{ "SpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.50,1,CO)"
			} },
			{ "YellowGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.80,0.20,1,CO)"
			} },
			{ "Chartreuse", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.0,1,CO)"
			} },
			{ "Green", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.0,1,CO)"
			} },
			{ "Khaki", "civ", {
				"#(rgb,8,8,3)color(0.55,0.53,0.31,1,CO)"
			} },
			{ "DarkOrange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.55,0.0,1,CO)"
			} },
			{ "DarkSalmon", "civ", {
				"#(rgb,8,8,3)color(0.91,0.59,0.48,1,CO)"
			} },
			{ "LightCoral", "civ", {
				"#(rgb,8,8,3)color(0.94,0.50,0.50,1,CO)"
			} },
			{ "LightSalmon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.63,0.48,1,CO)"
			} },
			{ "PeachPuff", "civ", {
				"#(rgb,8,8,3)color(1.0,0.85,0.73,1,CO)"
			} },
			{ "Bisque", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.77,1,CO)"
			} },
			{ "Coral", "civ", {
				"#(rgb,8,8,3)color(1.0,0.50,0.31,1,CO)"
			} },
			{ "Honeydew", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,0.94,1,CO)"
			} },
			{ "Orange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.65,0.0,1,CO)"
			} },
			{ "Salmon", "civ", {
				"#(rgb,8,8,3)color(0.98,0.50,0.45,1,CO)"
			} },
			{ "Sienna", "civ", {
				"#(rgb,8,8,3)color(0.63,0.32,0.18,1,CO)"
			} },
			{ "DarkRed", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.0,1,CO)"
			} },
			{ "DeepPink", "civ", {
				"#(rgb,8,8,3)color(0.80,0.06,0.46,1,CO)"
			} },
			{ "HotPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.41,0.71,1,CO)"
			} },
			{ "IndianRed", "civ", {
				"#(rgb,8,8,3)color(0.80,0.36,0.36,1,CO)"
			} },
			{ "LightPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.71,0.76,1,CO)"
			} },
			{ "MediumVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.78,0.08,0.52,1,CO)"
			} },
			{ "MistyRose", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.88,1,CO)"
			} },
			{ "OrangeRed", "civ", {
				"#(rgb,8,8,3)color(1.0,0.27,0.0,1,CO)"
			} },
			{ "PaleVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.86,0.44,0.58,1,CO)"
			} },
			{ "VioletRed", "civ", {
				"#(rgb,8,8,3)color(0.82,0.13,0.56,1,CO)"
			} },
			{ "Firebrick", "civ", {
				"#(rgb,8,8,3)color(0.70,0.13,0.13,1,CO)"
			} },
			{ "Pink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.75,0.80,1,CO)"
			} },
			{ "Red", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,0.0,1,CO)"
			} },
			{ "Tomato", "civ", {
				"#(rgb,8,8,3)color(1.0,0.39,0.28,1,CO)"
			} },
			{ "DarkMagenta", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.55,1,CO)"
			} },
			{ "DarkOrchid", "civ", {
				"#(rgb,8,8,3)color(0.60,0.20,0.80,1,CO)"
			} },
			{ "DarkViolet", "civ", {
				"#(rgb,8,8,3)color(0.58,0.0,0.83,1,CO)"
			} },
			{ "LavenderBlush", "civ", {
				"#(rgb,8,8,3)color(1.0,0.94,0.96,1,CO)"
			} },
			{ "MediumOrchid", "civ", {
				"#(rgb,8,8,3)color(0.73,0.33,0.83,1,CO)"
			} },
			{ "MediumPurple", "civ", {
				"#(rgb,8,8,3)color(0.58,0.44,0.86,1,CO)"
			} },
			{ "Lavender", "civ", {
				"#(rgb,8,8,3)color(0.90,0.90,0.98,1,CO)"
			} },
			{ "Magenta", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,1.0,1,CO)"
			} },
			{ "Maroon", "civ", {
				"#(rgb,8,8,3)color(0.69,0.19,0.38,1,CO)"
			} },
			{ "Orchid", "civ", {
				"#(rgb,8,8,3)color(0.85,0.44,0.84,1,CO)"
			} },
			{ "Plum", "civ", {
				"#(rgb,8,8,3)color(0.87,0.63,0.87,1,CO)"
			} },
			{ "Purple", "civ", {
				"#(rgb,8,8,3)color(0.63,0.13,0.94,1,CO)"
			} },
			{ "Thistle", "civ", {
				"#(rgb,8,8,3)color(0.85,0.75,0.85,1,CO)"
			} },
			{ "Violet", "civ", {
				"#(rgb,8,8,3)color(0.93,0.51,0.93,1,CO)"
			} },
			{ "AntiqueWhite", "civ", {
				"#(rgb,8,8,3)color(0.98,0.92,0.84,1,CO)"
			} },
			{ "Linen", "civ", {
				"#(rgb,8,8,3)color(0.98,0.94,0.90,1,CO)"
			} },
			{ "Snow", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.98,1,CO)"
			} },
			{ "White", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,1.0,1,CO)"
			} },
			{ "BlanchedAlmond", "civ", {
				"#(rgb,8,8,3)color(1.0,0.92,0.80,1,CO)"
			} },
			{ "DarkGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.72,0.53,0.04,1,CO)"
			} },
			{ "LemonChiffon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.80,1,CO)"
			} },
			{ "LightGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.87,0.51,1,CO)"
			} },
			{ "LightGoldenrodYellow", "civ", {
				"#(rgb,8,8,3)color(0.98,0.98,0.82,1,CO)"
			} },
			{ "LightYellow", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.88,1,CO)"
			} },
			{ "PaleGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.91,0.67,1,CO)"
			} },
			{ "PapayaWhip", "civ", {
				"#(rgb,8,8,3)color(0.99,0.94,0.84,1,CO)"
			} },
			{ "Cornsilk", "civ", {
				"#(rgb,8,8,3)color(0.99,0.97,0.86,1,CO)"
			} },
			{ "Gold", "civ", {
				"#(rgb,8,8,3)color(1.0,0.84,0.0,1,CO)"
			} },
			{ "Goldenrod", "civ", {
				"#(rgb,8,8,3)color(0.85,0.65,0.13,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.71,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.0,1,CO)"
			} }
        };
    };

	class Land_PlasticCase_01_small_gray_F {
    	vItemSpace = 250;
    	licenses[] = { {""}, {""}, {""}, {""} };
    	price = -1;
    	textures[] = {};
    };

    class C_SUV_01_F {
        vItemSpace = 85;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 75000;
        textures[] = {
			{ "Dark Red", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
			}, "" },
			{ "Silver", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
			}, "" },
			{ "Orange", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
			}, "" },
			{ "Tarnfleck", "civ", {
				"textures\zivs\cars\suv_tarnfarben.paa"
			}, "" },
			{ "PSA", "civ", {
				"textures\zivs\psaskins\SUVpsa.jpg"
			}, "license_civ_psa" },
			{ "Vaiphy", "civ", {
				"textures\zivs\vaiphyskins\VAIPHYSKIN.paa"
			}, "license_civ_vaiphy" },
			{ "LaFamilia", "civ", {
				"textures\zivs\familiaskins\LaFamilia_SUV_v9.paa"
			}, "license_civ_lafamilia" },
            { "Feuerwehr", "med", {
				"textures\guer\FeuerwehrSUV.jpg"
			}, "" },
			{ "SEK", "cop" , {
				"textures\west\sek\SEKSUV.jpg"
			}, "license_cop_copsek" },
			{ "Dark Red", "cop", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
			}, "license_cop_copscharfschuetze" },
			{ "Silver", "cop", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
			}, "license_cop_copscharfschuetze" },
			{ "Orange", "cop", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
			}, "license_cop_copscharfschuetze" },
			{ "Tarnfleck", "cop", {
				"textures\zivs\cars\suv_tarnfarben.paa"
			}, "license_cop_copscharfschuetze" },
			{ "Polizei", "cop" , {
				"textures\west\PolizeiSUV.paa"
			}, "call husky_coplevel >= 2" },
			{ "Tempest", "civ", {
				"\a3\soft_f_epc\Truck_03\Data\Truck_03_ext01_CO.paa"
			}, "call husky_adminlevel >= 4" },
			{ "Black", "civ", {
				"#(argb,8,8,3)color(0,0,0,1.0,CO)"
			} },
			{ "White", "civ", {
				"#(argb,8,8,3)color(1,1,1,1.0,CO)"
			} },
			{ "Grey", "civ", {
				"#(argb,8,8,3)color(0.521569,0.521569,0.521569,1.0,CO)"
			} },
			{ "Grey Blue", "civ", {
				"#(argb,8,8,3)color(0.537255,0.647059,0.811765,1.0,CO)"
			} },
			{ "Dark Blue Grey", "civ", {
				"#(argb,8,8,3)color(0.278431,0.427451,0.713725,1.0,CO)"
			} },
			{ "Light Blue", "civ", {
				"#(argb,8,8,3)color(0.192157,0.556863,0.968627,1.0,CO)"
			} },
			{ "Blue", "civ", {
				"#(argb,8,8,3)color(0.0352941,0.415686,0.882353,1.0,CO)"
			} },
			{ "Dark Blue", "civ", {
				"#(argb,8,8,3)color(0.0235294,0.12549,0.592157,1.0,CO)"
			} },
			{ "Turquoise Blue", "civ", {
				"#(argb,8,8,3)color(0,0.717647,0.717647,1.0,CO)"
			} },
			{ "Bright Red", "civ", {
				"#(argb,8,8,3)color(0.992157,0.258824,0.258824,1.0,CO)"
			} },
			{ "Red", "civ", {
				"#(argb,8,8,3)color(0.843137,0,0,1.0,CO)"
			} },
			{ "Dark Red", "civ", {
				"#(argb,8,8,3)color(0.466667,0,0,1.0,CO)"
			} },
			{ "Bordeaux Red", "civ", {
				"#(argb,8,8,3)color(0.517647,0.0156863,0.027451,1.0,CO)"
			} },
			{ "Light Green", "civ", {
				"#(argb,8,8,3)color(0.270588,0.862745,0.345098,1.0,CO)"
			} },
			{ "Green", "civ", {
				"#(argb,8,8,3)color(0.105882,0.545098,0.156863,1.0,CO)"
			} },
			{ "Dark Green", "civ", {
				"#(argb,8,8,3)color(0.0509804,0.266667,0.0784314,1.0,CO)"
			} },
			{ "Lime Green", "civ", {
				"#(argb,8,8,3)color(0.65098,0.996078,0.00392157,1.0,CO)"
			} },
			{ "Khaki", "civ", {
				"#(argb,8,8,3)color(0.392157,0.447059,0.180392,1.0,CO)"
			} },
			{ "Yellow", "civ", {
				"#(argb,8,8,3)color(0.917647,0.886275,0.356863,1.0,CO)"
			} },
			{ "Orange", "civ", {
				"#(argb,8,8,3)color(0.921569,0.435294,0.137255,1.0,CO)"
			} },
			{ "Ton", "civ", {
				"#(argb,8,8,3)color(0.788235,0.427451,0.380392,1.0,CO)"
			} },
			{ "Brown", "civ", {
				"#(argb,8,8,3)color(0.713725,0.517647,0.305882,1.0,CO)"
			} },
			{ "Dark Brown", "civ", {
				"#(argb,8,8,3)color(0.407843,0.290196,0.168627,1.0,CO)"
			} },
			{ "Pink", "civ", {
				"#(argb,8,8,3)color(0.972549,0.470588,0.756863,1.0,CO)"
			} },
			{ "Dark Pink", "civ", {
				"#(argb,8,8,3)color(0.713725,0.32549,0.843137,1.0,CO)"
			} },
			{ "Lavender", "civ", {
				"#(argb,8,8,3)color(0.717647,0.662745,0.960784,1.0,CO)"
			} },
			{ "Violet", "civ", {
				"#(argb,8,8,3)color(0.392157,0.0431373,0.67451,1.0,CO)"
			} },
			{ "AliceBlue", "civ", {
				"#(rgb,8,8,3)color(0.94,0.97,1.0,1.0,CO)"
			} },
			{ "BlueViolet", "civ", {
				"#(rgb,8,8,3)color(0.54,0.17,0.89,1.0,CO)"
			} },
			{ "CadetBlue", "civ", {
				"#(rgb,8,8,3)color(0.37,0.62,0.63,1.0,CO)"
			} },
			{ "CornflowerBlue", "civ", {
				"#(rgb,8,8,3)color(0.39,0.58,0.93,1.0,CO)"
			} },
			{ "DarkBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.55,1.0,CO)"
			} },
			{ "DarkCyan", "civ", {
				"#(rgb,8,8,3)color(0.0,0.55,0.55,1.0,CO)"
			} },
			{ "DarkSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.28,0.24,0.55,1.0,CO)"
			} },
			{ "DarkTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.0,0.81,0.82,1.0,CO)"
			} },
			{ "DeepSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.75,1.0,1.0,CO)"
			} },
			{ "DodgerBlue", "civ", {
				"#(rgb,8,8,3)color(0.12,0.56,1.0,1.0,CO)"
			} },
			{ "LightBlue", "civ", {
				"#(rgb,8,8,3)color(0.68,0.85,0.90,1.0,CO)"
			} },
			{ "LightCyan", "civ", {
				"#(rgb,8,8,3)color(0.88,1.0,1.0,1,CO)"
			} },
			{ "LightSkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.98,1,CO)"
			} },
			{ "LightSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.52,0.44,1.0,1,CO)"
			} },
			{ "LightSteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.77,0.87,1,CO)"
			} },
			{ "MediumAquamarine", "civ", {
				"#(rgb,8,8,3)color(0.40,0.80,0.67,1,CO)"
			} },
			{ "MediumBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.80,1,CO)"
			} },
			{ "MediumSlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.48,0.41,0.93,1,CO)"
			} },
			{ "MediumTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.28,0.82,0.80,1,CO)"
			} },
			{ "MidnightBlue", "civ", {
				"#(rgb,8,8,3)color(0.10,0.10,0.44,1,CO)"
			} },
			{ "NavyBlue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "PaleTurquoise", "civ", {
				"#(rgb,8,8,3)color(0.69,0.93,0.93,1,CO)"
			} },
			{ "PowderBlue", "civ", {
				"#(rgb,8,8,3)color(0.69,0.88,0.90,1,CO)"
			} },
			{ "RoyalBlue", "civ", {
				"#(rgb,8,8,3)color(0.25,0.41,0.88,1,CO)"
			} },
			{ "SkyBlue", "civ", {
				"#(rgb,8,8,3)color(0.53,0.81,0.92,1,CO)"
			} },
			{ "SlateBlue", "civ", {
				"#(rgb,8,8,3)color(0.42,0.35,0.80,1,CO)"
			} },
			{ "SteelBlue", "civ", {
				"#(rgb,8,8,3)color(0.27,0.51,0.71,1,CO)"
			} },
			{ "Aquamarine", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.83,1,CO)"
			} },
			{ "Azure", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,1.0,1,CO)"
			} },
			{ "Blue", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,1.0,1,CO)"
			} },
			{ "Cyan", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,1.0,1,CO)"
			} },
			{ "Navy", "civ", {
				"#(rgb,8,8,3)color(0.0,0.0,0.50,1,CO)"
			} },
			{ "Turquoise", "civ", {
				"#(rgb,8,8,3)color(0.25,0.88,0.82,1,CO)"
			} },
			{ "RosyBrown", "civ", {
				"#(rgb,8,8,3)color(0.74,0.56,0.56,1,CO)"
			} },
			{ "SaddleBrown", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "SandyBrown", "civ", {
				"#(rgb,8,8,3)color(0.96,0.64,0.38,1,CO)"
			} },
			{ "Beige", "civ", {
				"#(rgb,8,8,3)color(0.96,0.96,0.86,1,CO)"
			} },
			{ "Brown", "civ", {
				"#(rgb,8,8,3)color(0.65,0.16,0.16,1,CO)"
			} },
			{ "Burlywood", "civ", {
				"#(rgb,8,8,3)color(0.87,0.72,0.53,1,CO)"
			} },
			{ "Chocolate", "civ", {
				"#(rgb,8,8,3)color(0.55,0.27,0.07,1,CO)"
			} },
			{ "Peru", "civ", {
				"#(rgb,8,8,3)color(0.80,0.52,0.25,1,CO)"
			} },
			{ "Tan", "civ", {
				"#(rgb,8,8,3)color(0.82,0.71,0.55,1,CO)"
			} },
			{ "DarkSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.18,0.31,0.31,1,CO)"
			} },
			{ "DimGray", "civ", {
				"#(rgb,8,8,3)color(0.41,0.41,0.41,1,CO)"
			} },
			{ "LightGray", "civ", {
				"#(rgb,8,8,3)color(0.83,0.83,0.83,1,CO)"
			} },
			{ "LightSlateGray", "civ", {
				"#(rgb,8,8,3)color(0.47,0.53,0.60,1,CO)"
			} },
			{ "Gray", "civ", {
				"#(rgb,8,8,3)color(0.75,0.75,0.75,1,CO)"
			} },
			{ "DarkGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.39,0.0,1,CO)"
			} },
			{ "DarkKhaki", "civ", {
				"#(rgb,8,8,3)color(0.74,0.72,0.42,1,CO)"
			} },
			{ "DarkOliveGreen", "civ", {
				"#(rgb,8,8,3)color(0.33,0.42,0.18,1,CO)"
			} },
			{ "DarkSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.74,0.56,1,CO)"
			} },
			{ "ForestGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.55,0.13,1,CO)"
			} },
			{ "GreenYellow", "civ", {
				"#(rgb,8,8,3)color(0.68,1.0,0.18,1,CO)"
			} },
			{ "LawnGreen", "civ", {
				"#(rgb,8,8,3)color(0.49,0.99,0.0,1,CO)"
			} },
			{ "LightGreen", "civ", {
				"#(rgb,8,8,3)color(0.56,0.93,0.56,1,CO)"
			} },
			{ "LightSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.13,0.70,0.67,1,CO)"
			} },
			{ "LimeGreen", "civ", {
				"#(rgb,8,8,3)color(0.20,0.80,0.20,1,CO)"
			} },
			{ "MediumSeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.24,0.70,0.44,1,CO)"
			} },
			{ "MediumSpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,0.98,0.60,1,CO)"
			} },
			{ "MintCream", "civ", {
				"#(rgb,8,8,3)color(0.96,1.0,0.98,1,CO)"
			} },
			{ "OliveDrab", "civ", {
				"#(rgb,8,8,3)color(0.42,0.56,0.14,1,CO)"
			} },
			{ "PaleGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.98,0.60,1,CO)"
			} },
			{ "SeaGreen", "civ", {
				"#(rgb,8,8,3)color(0.18,0.55,0.34,1,CO)"
			} },
			{ "SpringGreen", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.50,1,CO)"
			} },
			{ "YellowGreen", "civ", {
				"#(rgb,8,8,3)color(0.60,0.80,0.20,1,CO)"
			} },
			{ "Chartreuse", "civ", {
				"#(rgb,8,8,3)color(0.50,1.0,0.0,1,CO)"
			} },
			{ "Green", "civ", {
				"#(rgb,8,8,3)color(0.0,1.0,0.0,1,CO)"
			} },
			{ "Khaki", "civ", {
				"#(rgb,8,8,3)color(0.55,0.53,0.31,1,CO)"
			} },
			{ "DarkOrange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.55,0.0,1,CO)"
			} },
			{ "DarkSalmon", "civ", {
				"#(rgb,8,8,3)color(0.91,0.59,0.48,1,CO)"
			} },
			{ "LightCoral", "civ", {
				"#(rgb,8,8,3)color(0.94,0.50,0.50,1,CO)"
			} },
			{ "LightSalmon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.63,0.48,1,CO)"
			} },
			{ "PeachPuff", "civ", {
				"#(rgb,8,8,3)color(1.0,0.85,0.73,1,CO)"
			} },
			{ "Bisque", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.77,1,CO)"
			} },
			{ "Coral", "civ", {
				"#(rgb,8,8,3)color(1.0,0.50,0.31,1,CO)"
			} },
			{ "Honeydew", "civ", {
				"#(rgb,8,8,3)color(0.94,1.0,0.94,1,CO)"
			} },
			{ "Orange", "civ", {
				"#(rgb,8,8,3)color(1.0,0.65,0.0,1,CO)"
			} },
			{ "Salmon", "civ", {
				"#(rgb,8,8,3)color(0.98,0.50,0.45,1,CO)"
			} },
			{ "Sienna", "civ", {
				"#(rgb,8,8,3)color(0.63,0.32,0.18,1,CO)"
			} },
			{ "DarkRed", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.0,1,CO)"
			} },
			{ "DeepPink", "civ", {
				"#(rgb,8,8,3)color(0.80,0.06,0.46,1,CO)"
			} },
			{ "HotPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.41,0.71,1,CO)"
			} },
			{ "IndianRed", "civ", {
				"#(rgb,8,8,3)color(0.80,0.36,0.36,1,CO)"
			} },
			{ "LightPink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.71,0.76,1,CO)"
			} },
			{ "MediumVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.78,0.08,0.52,1,CO)"
			} },
			{ "MistyRose", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.88,1,CO)"
			} },
			{ "OrangeRed", "civ", {
				"#(rgb,8,8,3)color(1.0,0.27,0.0,1,CO)"
			} },
			{ "PaleVioletRed", "civ", {
				"#(rgb,8,8,3)color(0.86,0.44,0.58,1,CO)"
			} },
			{ "VioletRed", "civ", {
				"#(rgb,8,8,3)color(0.82,0.13,0.56,1,CO)"
			} },
			{ "Firebrick", "civ", {
				"#(rgb,8,8,3)color(0.70,0.13,0.13,1,CO)"
			} },
			{ "Pink", "civ", {
				"#(rgb,8,8,3)color(1.0,0.75,0.80,1,CO)"
			} },
			{ "Red", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,0.0,1,CO)"
			} },
			{ "Tomato", "civ", {
				"#(rgb,8,8,3)color(1.0,0.39,0.28,1,CO)"
			} },
			{ "DarkMagenta", "civ", {
				"#(rgb,8,8,3)color(0.55,0.0,0.55,1,CO)"
			} },
			{ "DarkOrchid", "civ", {
				"#(rgb,8,8,3)color(0.60,0.20,0.80,1,CO)"
			} },
			{ "DarkViolet", "civ", {
				"#(rgb,8,8,3)color(0.58,0.0,0.83,1,CO)"
			} },
			{ "LavenderBlush", "civ", {
				"#(rgb,8,8,3)color(1.0,0.94,0.96,1,CO)"
			} },
			{ "MediumOrchid", "civ", {
				"#(rgb,8,8,3)color(0.73,0.33,0.83,1,CO)"
			} },
			{ "MediumPurple", "civ", {
				"#(rgb,8,8,3)color(0.58,0.44,0.86,1,CO)"
			} },
			{ "Lavender", "civ", {
				"#(rgb,8,8,3)color(0.90,0.90,0.98,1,CO)"
			} },
			{ "Magenta", "civ", {
				"#(rgb,8,8,3)color(1.0,0.0,1.0,1,CO)"
			} },
			{ "Maroon", "civ", {
				"#(rgb,8,8,3)color(0.69,0.19,0.38,1,CO)"
			} },
			{ "Orchid", "civ", {
				"#(rgb,8,8,3)color(0.85,0.44,0.84,1,CO)"
			} },
			{ "Plum", "civ", {
				"#(rgb,8,8,3)color(0.87,0.63,0.87,1,CO)"
			} },
			{ "Purple", "civ", {
				"#(rgb,8,8,3)color(0.63,0.13,0.94,1,CO)"
			} },
			{ "Thistle", "civ", {
				"#(rgb,8,8,3)color(0.85,0.75,0.85,1,CO)"
			} },
			{ "Violet", "civ", {
				"#(rgb,8,8,3)color(0.93,0.51,0.93,1,CO)"
			} },
			{ "AntiqueWhite", "civ", {
				"#(rgb,8,8,3)color(0.98,0.92,0.84,1,CO)"
			} },
			{ "Linen", "civ", {
				"#(rgb,8,8,3)color(0.98,0.94,0.90,1,CO)"
			} },
			{ "Snow", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.98,1,CO)"
			} },
			{ "White", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,1.0,1,CO)"
			} },
			{ "BlanchedAlmond", "civ", {
				"#(rgb,8,8,3)color(1.0,0.92,0.80,1,CO)"
			} },
			{ "DarkGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.72,0.53,0.04,1,CO)"
			} },
			{ "LemonChiffon", "civ", {
				"#(rgb,8,8,3)color(1.0,0.98,0.80,1,CO)"
			} },
			{ "LightGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.87,0.51,1,CO)"
			} },
			{ "LightGoldenrodYellow", "civ", {
				"#(rgb,8,8,3)color(0.98,0.98,0.82,1,CO)"
			} },
			{ "LightYellow", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.88,1,CO)"
			} },
			{ "PaleGoldenrod", "civ", {
				"#(rgb,8,8,3)color(0.93,0.91,0.67,1,CO)"
			} },
			{ "PapayaWhip", "civ", {
				"#(rgb,8,8,3)color(0.99,0.94,0.84,1,CO)"
			} },
			{ "Cornsilk", "civ", {
				"#(rgb,8,8,3)color(0.99,0.97,0.86,1,CO)"
			} },
			{ "Gold", "civ", {
				"#(rgb,8,8,3)color(1.0,0.84,0.0,1,CO)"
			} },
			{ "Goldenrod", "civ", {
				"#(rgb,8,8,3)color(0.85,0.65,0.13,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,0.89,0.71,1,CO)"
			} },
			{ "Moccasin", "civ", {
				"#(rgb,8,8,3)color(1.0,1.0,0.0,1,CO)"
			} }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 150;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 75000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 250;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            }, "" },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            }, "" }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        conditions = "";
        price = 3950000;
        textures[] = {
			{ "Hunter", "civ", {
                "\a3\soft_f\MRAP_01\Data\MRAP_01_int_CO.paa",
                "\a3\soft_f\MRAP_01\Data\MRAP_01_base_CO.paa"
            }, "" },
			{ "ACAB", "reb", {
                "textures\zivs\cars\TestHunterF3.paa",
                "textures\zivs\cars\TestHunterB4.paa"
            }, "" },
			{ "Hyperbeast", "reb", {
                "textures\zivs\cars\HyperHunterF.paa",
                "textures\zivs\cars\HyperHunterB4.paa"
            }, "" },
            { "Feuerwehr", "med", {
                "textures\guer\fw_hunter_1.jpg",
                "textures\guer\fw_hunter_2.jpg"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiHunter1.paa",
                "textures\west\PolizeiHunter2.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKHunter1.jpg",
                "textures\west\sek\SEKHunter2.jpg"
            }, "license_cop_copsek" }
        };
    };

    class B_T_MRAP_01_F {
        vItemSpace = 75;
        conditions = "";
        price = 7500000;
        textures[] = { };
    };

	class I_Heli_light_03_unarmed_F {
        vItemSpace = 65;
        conditions = "";
        price = 3500000;
        textures[] = {
            { "Polizei", "cop", {
                "textures\west\PolizeiHellcat.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKHellcat.jpg"
            }, "license_cop_copsek" }
        };
    };

	class B_Heli_Transport_03_unarmed_F {
        vItemSpace = 1500;
        conditions = "";
        price = 25000000;
        textures[] = {
			{ "Schwarz", "civ", {
                "\a3\air_f_heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_black_CO.paa",
                "\a3\air_f_heli\Heli_Transport_03\Data\Heli_Transport_03_ext02_black_CO.paa"
            }, "" },
			{ "Grün", "civ", {
                "\a3\air_f_heli\Heli_Transport_03\Data\Heli_Transport_03_ext01_CO.paa",
                "\a3\air_f_heli\Heli_Transport_03\Data\Heli_Transport_03_ext02_CO.paa"
            }, "" },
            { "Luftrettung", "med", {
               "textures\guer\FeuerwehrHuron1.jpg",
               "textures\guer\FeuerwehrHuron2.jpg"
            }, "" }
        };
    };

	class O_Heli_Attack_02_F {
          vItemSpace = 600;
          conditions = "";
          storeLiquid= false;
          price = 84500000;
          textures[] = {};
    };

    class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        conditions = "";
        price = 275000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" }
        };
    };

    class B_Heli_Light_01_F {
        vItemSpace = 100;
        conditions = "license_civ_pilot || {license_cop_coppilot} || {license_med_HeliLizenz1}";
        price = 750000;
        textures[] = {
			{ "Hyperbeast", "civ", {
                "textures\zivs\Helis\HyperHumm.paa"
            }, "" },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            }, "" },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            }, "" },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            }, "" },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            }, "" },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            }, "" },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            }, "" },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            }, "" },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            }, "" },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            }, "" },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            }, "" },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            }, "" },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            }, "" },
            { "Luftrettung", "med", {
                "textures\guer\FeuerwehrHummingBird.jpg"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiHummingBird.paa"
            }, ""},
			{ "SEK", "cop", {
                "textures\west\sek\SEKHummingBird.jpg"
            }, "license_cop_copsek"},
			{ "Vaiphy", "civ", {
				"textures\zivs\vaiphyskins\VAIPHYHELI.paa"
			}, "license_civ_vaiphy" },
			{ "LaFamilia", "civ", {
				"textures\zivs\familiaskins\LaFamilia_Hummingbird_v6.paa"
			}, "license_civ_lafamilia" },
			{ "Hyperbeast", "cop", {
                "textures\zivs\Helis\HyperHumm.paa"
            }, "" },
            { "Civ Blue", "cop", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            }, "" },
            { "Civ Red", "cop", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            }, "" },
            { "Blueline", "cop", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            }, "" },
            { "Elliptical", "cop", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            }, "" },
            { "Furious", "cop", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            }, "" }
        };
    };

    class C_Heli_Light_01_civil_F {
        vItemSpace = 100;
        price = 750000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 250;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 3000000;
        textures[] = {
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            }, "" },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            }, "" },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            }, "" },
            { "Feuerwehr", "med", { "textures\guer\FeuerwehrOrca.jpg"
            }, ""  }
        };
    };

    class B_SDV_01_F {
        vItemSpace = 50;
        conditions = "license_civ_boat || {license_cop_copboot} || {(playerSide isEqualTo independent)}";
        price = 50000;
        textures[] = {};
    };

    class C_Van_01_fuel_F {
        vItemSpace = 200;
        vFuelSpace = 19500;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 200000;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            }, "" },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            }, "" }
        };
    };

    class I_Truck_02_fuel_F {
        vItemSpace = 500;
        vFuelSpace = 42000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1150000;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            }, "" },
			{ "Olive", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_blue_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_olive_CO.paa"
            }, "" },
			{ "Tarnfleck 1", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_INDP_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_INDP_CO.paa"
            }, "" },
			{ "Tarnfleck 2", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_OPFOR_CO.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_OPFOR_CO.paa"
            }, "" },
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" }
        };
    };

    class B_Truck_01_fuel_F {
        vItemSpace = 1750;
        vFuelSpace = 90000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 5650000;
        textures[] = {
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
			{ "Löschfahrzeug", "med", {
                "textures\guer\FeuerwehrHemtt1Loschfahrzeug.jpg",
				"textures\guer\FeuerwehrHemtt2.jpg",
				"textures\guer\FeuerwehrHemtt3Fuel.jpg"
            }, "license_med_KraftFahrzeug3" }
		};
    };

	class O_Truck_03_fuel_F {
        vItemSpace = 1250;
        vFuelSpace = 80000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 3575000;
        textures[] = {
			{ "Black", "civ", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            }, "" },
			{ "Opfor", "civ", {
                "\a3\soft_f_epc\Truck_03\Data\Truck_03_ext01_CO.paa",
				"\a3\soft_f_epc\Truck_03\Data\Truck_03_ext02_CO.paa",
				"\a3\soft_f_epc\Truck_03\Data\Truck_03_fuel_CO.paa"
            }, "" }
		};
    };

	class O_T_Truck_03_fuel_ghex_F {
        vItemSpace = 50;
        vFuelSpace = 50000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 250000;
        textures[] = {};
    };

	class O_T_Truck_03_transport_ghex_F {
        vItemSpace = 800;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 1000000;
        textures[] = {};
    };

	class O_T_Truck_03_covered_ghex_F {
        vItemSpace = 1000;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 2000000;
        textures[] = {};
    };

	class O_T_Truck_03_device_ghex_F {
        vItemSpace = 1000;
        conditions = "license_civ_truckingplus || {!(playerSide isEqualTo civilian)}";
        price = 85000000;
        textures[] = { };
    };

	class B_Truck_01_mover_F {
        vItemSpace = 800;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)}";
        price = 5000000;
        textures[] = {
			{ "Hemett", "civ", {
                "\A3\soft_f_beta\Truck_01\Data\Truck_01_ext_01_CO.paa",
				"\A3\soft_f_beta\Truck_01\Data\Truck_01_cargo_CO.paa"
            }, "" },
            { "ESPALA", "med", {
                "textures\guer\FeuerwehrHemtt1.jpg",
                "textures\guer\FeuerwehrHemtt2.jpg"
            }, "" }
		};
	};

	class B_T_Truck_01_mover_F {
        vItemSpace = 800;
        conditions = "license_civ_trucking || {!(playerSide isEqualTo civilian)} || license_cop_copausbilder";
        price = 5000000;
        textures[] = {};
    };

	class B_T_LSV_01_unarmed_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 420000;
        textures[] = {};
    };

	class B_T_LSV_01_unarmed_CTRG_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 420000;
        textures[] = {
            { "Polizei", "cop", {
                "textures\west\PolizeiProwler1.paa",
				"textures\west\PolizeiProwler2.paa",
				"textures\west\PolizeiProwler3.paa",
				"textures\west\PolizeiProwler4.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKProwler1.jpg",
                "textures\west\sek\SEKProwler2.jpg",
				"textures\west\sek\SEKProwler3.jpg",
                "textures\west\sek\SEKProwler4.jpg"
            }, "license_cop_copsek" }
        };
    };

	class O_T_MRAP_02_ghex_F {
        vItemSpace = 60;
        conditions = "license_civ_driver || {!(playerSide isEqualTo civilian)}";
        price = 150000;
        textures[] = { };
    };

	class O_APC_Wheeled_02_rcws_F {
        vItemSpace = 1000;
        conditions = "license_civ_schwarzmarkt || {license_cop_cAir} || {license_med_mAir}";
        storeLiquid= false;
        price = 69500000;
        textures[] = {};
    };

	class O_Heli_Transport_04_F {
        vItemSpace =150;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 12000000;
        textures[] = {  };
    };

	class O_Heli_Transport_04_fuel_F {
        vItemSpace =350;
		vFuelSpace = 25500;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 5500000;
        textures[] = {  };
    };

	class O_Heli_Transport_04_box_F {
        vItemSpace = 800;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 15000000;
        textures[] = {  };
    };

	class O_Heli_Transport_04_bench_F {
        vItemSpace = 210;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 7500000;
        textures[] = {  };
    };

	class O_Heli_Transport_04_covered_F {
        vItemSpace = 210;
        conditions = "license_civ_pilot || {license_med_HeliLizenz1} || {(playerSide isEqualTo west)}";
        price = 7500000;
        textures[] = {  };
    };

	class C_Van_02_medevac_F {
        vItemSpace = 100;
        conditions = "";
        price = 50000;
        textures[] = {
        { "RTW", "med", {
            "textures\guer\fw_RTW.paa"
            }, "" }
        };
    };

	class C_Van_02_service_F {
        vItemSpace = 0;
        conditions = "";
        price = 200000;
        textures[] = {  };
    };

	// Apex DLC
    class C_Plane_Civil_01_F {
        vItemSpace = 750;
        conditions = "license_civ_Flugzeugpilot";
        price = 2425000;
        textures[] = {
            { "Red Line (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Red Line", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_RedLine_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" },
            { "Blue Wave (Tan Interior)", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_tan_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_tan_co.paa"
            }, "" },
            { "Blue Wave", "civ", {
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_01_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_ext_02_Wave_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_01_co.paa",
                "A3\Air_F_Exp\Plane_Civil_01\Data\btt_int_02_co.paa"
            }, "" }
        };
    };

	class C_Plane_Civil_01_racing_F {
        vItemSpace = 100;
        conditions = "license_civ_Flugzeugpilot";
        price = 200000;
        textures[] = {  };
    };

	class I_C_Plane_Civil_01_F {
        vItemSpace = 1250;
        conditions = "license_civ_Flugzeugpilot";
        price = 5375000;
        textures[] = {  };
    };

	class B_T_VTOL_01_vehicle_F {
        vItemSpace = 750;
        conditions = "license_civ_Flugzeugpilot";
        price = 34050000;
        textures[] = { };
    };

	class B_T_VTOL_01_infantry_F {
        vItemSpace = 1200;
        conditions = "license_civ_Flugzeugpilot";
        price = 26000000;
        textures[] = { };
    };
	
	class O_T_VTOL_02_vehicle_F {
        vItemSpace = 170;
        conditions = "license_civ_Flugzeugpilot";
        price = 8500000;
        textures[] = {  };
    };
	
	class O_T_VTOL_02_infantry_F {
        vItemSpace = 1200;
        conditions = "";
        price = 2600000;
        textures[] = {
			{"Luftrettung", "med", {
            "textures\guer\FeuerwehrXian1.jpg",
            "textures\guer\FeuerwehrXian2.jpg",
            "textures\guer\FeuerwehrXian3Links.jpg",
			"textures\guer\FeuerwehrXian4Rechts.jpg"
            }, "" }
		};
    };

    class I_Heli_Transport_02_F {
        vItemSpace = 500;
        conditions = "license_civ_pilot || license_med_HeliLizenz1";
        price = 7500000;
        textures[] = {
            { "Luftrettung", "med", {
            "textures\guer\FeuerwehrMohawk1.jpg",
            "textures\guer\FeuerwehrMohawk2.jpg",
            "textures\guer\FeuerwehrMohawk3.jpg"
            }, "" },
            { "Blau", "civ", {
            "textures\zivs\Helis\blau1.paa",
            "textures\zivs\Helis\blau2.paa",
            "textures\zivs\Helis\blau3.paa"
            }, "" },
            { "Rot", "civ", {
            "textures\zivs\Helis\rot1.paa",
            "textures\zivs\Helis\rot2.paa",
            "textures\zivs\Helis\rot3.paa"
            }, "" }
        };
    };

	class O_T_LSV_02_armed_F {
        vItemSpace = 5;
        conditions = "license_civ_trucking";
        price = 1850000;
        textures[] = { };
	};

	class I_G_Offroad_01_armed_F {
        vItemSpace = 5;
        conditions = "license_civ_trucking";
        price = 1850000;
        textures[] = { };
	};

	class B_Plane_CAS_01_F {
        vItemSpace = 500;
        conditions = "license_civ_jetpilot";
        price = 100000000;
        textures[] = { };
	};

	class B_GEN_Van_02_vehicle_F {
        vItemSpace = 200;
        conditions = "";
        price = 100000;
        textures[] = {
			{ "Polizei Einsatzleitung", "cop", {
                "textures\west\PolizeiVANEinsatzleitung.paa"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiVAN.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKVAN.jpg"
            }, "license_cop_copsek" }
         };
	};

	class B_GEN_Van_02_transport_F {
        vItemSpace = 200;
        conditions = "";
        price = 100000;
        textures[] = {
			{ "Polizei", "cop", {
                "textures\west\PolizeiVANGefangenentransport.paa"
            }, "" },
			{ "Polizei Einsatzleitung", "cop", {
                "textures\west\PolizeiVANEinsatzleitung.paa"
            }, "" },
            { "Polizei", "cop", {
                "textures\west\PolizeiVAN.paa"
            }, "" },
			{ "SEK", "cop", {
                "textures\west\sek\SEKVAN.jpg"
            }, "license_cop_copsek" }
		};
	};

    // Contact DLC
    class I_E_Offroad_01_covered_F {
        vItemSpace = 100;
        conditions = "";
        price = 20000;
        textures[] = { };
    };

    // Contact DLC
    class I_E_Offroad_01_comms_F {
        vItemSpace = 110;
        conditions = "";
        price = 20000;
        textures[] = { };
    };

    class B_GEN_Offroad_01_covered_F {
        vItemSpace = 100;
        conditions = "";
        price = 50000;
        textures[] = { };
    };

	class B_GEN_Offroad_01_comms_F {
        vItemSpace = 100;
        conditions = "";
        price = 50000;
        textures[] = { };
    };
	class C_Offroad_01_covered_F {
        vItemSpace = 100;
        conditions = "";
        price = 55000;
        textures[] = {
			{ "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
			{ "Polizei", "cop", {
                "textures\west\PolizeiGelandewagen.paa",
				"#(argb,8,8,3)color(0.05,0.05,0.05,1)",
				"textures\west\PolizeiGelandewagenCovert.paa"
            }, "" }
		};
    };
	class C_Offroad_01_comms_F {
        vItemSpace = 100;
        conditions = "";
        price = 60000;
        textures[] = {
			{ "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            }, "" },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            }, "" },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            }, "" },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            }, "" },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            }, "" },
			{ "Polizei", "cop", {
                "textures\west\PolizeiGelandewagen.paa",
				"#(argb,8,8,3)color(0.05,0.05,0.05,1)",
				"textures\west\PolizeiGelandewagenCovert.paa"
            }, "" }
		};
    };

	class C_Tractor_01_F {
        vItemSpace = 100;
        conditions = "";
        price = 50000;
        textures[] = { };
    };

	class C_IDAP_UGV_01_F {
        vItemSpace = 100;
        conditions = "";
        price = 500000;
        textures[] = { };
    };
	
	class B_UGV_01_F {
        vItemSpace = 100;
        conditions = "";
        price = 500000;
        textures[] = { };
    };

	class I_UGV_01_F {
        vItemSpace = 100;
        conditions = "";
        price = 500000;
        textures[] = { };
    };

	class Land_Cargo20_vr_F {
		vItemSpace = 25000;
		conditions = "license_civ_schwerlast";
		price = 1000000;
		textures[] = {};
    };

	class Box_NATO_AmmoVeh_F {
		vItemSpace = 855;
		conditions = "license_civ_schwerlast";
		price = 1000000;
		textures[] = {};
    };

	class Land_Cargo20_blue_F {
		vItemSpace = 3255;
		conditions = "license_civ_schwerlast";
		price = 2500000;
		textures[] = {};
    };

	class Land_Cargo20_grey_F : Land_Cargo20_blue_F{}; // Get all information of Land_Cargo20_blue_F
    class Land_Cargo20_military_green_F : Land_Cargo20_blue_F{};
    class Land_Cargo20_red_F : Land_Cargo20_blue_F{};
	class Land_Cargo20_yellow_F : Land_Cargo20_blue_F{};
	class Land_Cargo20_white_F : Land_Cargo20_blue_F{};

	class Land_Cargo40_grey_F {
		vItemSpace = 2500;
		conditions = "license_civ_schwerlast";
		price = 12000000;
		textures[] = {};
    };

	class Land_Device_slingloadable_F {
		vItemSpace = 2000;
		conditions = "license_civ_schwerlast";
		price = 5000000;
		textures[] = {};
    };

    class Land_Cargo20_IDAP_F {
		vItemSpace = 3300;
		conditions = "license_civ_schwerlast";
		price = 4500000;
		textures[] = {};
    };

	class Land_Device_assembled_F {
		vItemSpace = 3500;
		conditions = "license_civ_schwerlast";
		price = 4500000;
		textures[] = {};
    };

	class B_Slingload_01_Fuel_F {
        vItemSpace = 1500;
        conditions = "";
        price = 4650000;
        textures[] = { };
    };

    class Land_Pod_Heli_Transport_04_fuel_F {
        vItemSpace = 1000;
        conditions = "";
        price = 2575000;
        textures[] = { };
    };

	//class Box_East_AmmoVeh_F : Box_NATO_AmmoVeh_F{};
	class Box_IND_AmmoVeh_F : Box_NATO_AmmoVeh_F{};

	/*
	class Land_CargoBox_V1_F {					//
        vItemSpace = 200;
        licenses[] = { {"schwerlast"}, {""}, {""}, {""} };
        price = 150000;
        textures[] = {};
    };*/

	class Land_Cargo10_grey_F {
        vItemSpace = 400;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	class Land_PlasticCase_01_large_gray_F {
        vItemSpace = 600;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	class Land_PlasticCase_01_medium_gray_F {
        vItemSpace = 1200;
        conditions = "";
        price = -1;
        textures[] = {};
    };

	class Land_ShelvesWooden_blue_F {			//kleines Regal
        vItemSpace = 1000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	class Land_Metal_wooden_rack_F {			//großes Regal
        vItemSpace = 2000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
	class Land_CanisterPlastic_F {				//großer flüssigkeits Tank
        vItemSpace = 2000;
        conditions = "";
        price = -1;
        textures[] = {};
    };
};


