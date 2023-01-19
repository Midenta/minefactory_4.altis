private ["_objects","_object","_data"];
_data = [
	["a3\vegetation_f_enoch\tree\t_populusn3s_f.p3d", [3074.79,12008.6,93.3702], [[0,1,0],[0,0,1]]],
	["a3\vegetation_f_enoch\tree\t_populusn3s_f.p3d", [3089.88,11997.4,93.3702], [[0,1,0],[0,0,1]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [3030.37,11920.9,75.0061], [[0.578832,0.795173,-0.180704],[0.069999,0.172331,0.982549]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [3041.9,11940.6,69.2748], [[0.578832,0.795173,-0.180703],[0.10209,0.149191,0.983524]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [3064.92,11975.9,59.4632], [[0.578832,0.795173,-0.180703],[0.10209,0.149191,0.983524]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [3018.71,11904.2,79.9706], [[0.565911,0.824221,0.020111],[0.0064037,-0.0287862,0.999565]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [3001.83,11879.6,81.6538], [[0.565911,0.824221,0.020111],[0.0064037,-0.0287862,0.999565]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2989.03,11857.5,82.826], [[0.565911,0.824221,0.020111],[0.0064037,-0.0287862,0.999565]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2974.09,11834,84.4843], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2961.13,11812.7,85.3554], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2947.1,11792.3,87.0866], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2934.48,11772.1,88.0843], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2924.28,11756,89.3185], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2913.99,11740.6,89.6341], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2903.05,11723.6,90.8991], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2891.97,11704.8,92.25], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [2879.96,11686.5,91.77], [[0.565275,0.824721,-0.017288],[0.0275647,0.00206107,0.999618]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [3006.15,11883.9,119.421], [[0.536143,0.842594,-0.0508473],[0.0299507,0.0412101,0.998701]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [2980.41,11843.4,121.825], [[0.536143,0.842594,-0.0508473],[0.0299507,0.0412101,0.998701]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [2954.72,11803,124.248], [[0.536143,0.842594,-0.0508473],[0.0299507,0.0412101,0.998701]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [2928.97,11762.6,126.652], [[0.536143,0.842594,-0.0508473],[0.0299507,0.0412101,0.998701]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [2903.24,11722.2,129.092], [[0.536143,0.842594,-0.0508473],[0.0299507,0.0412101,0.998701]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [2877.6,11681.9,129.262], [[0.536567,0.842704,0.0441188],[-0.0210453,-0.0389027,0.999021]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_ramp_up_f.p3d", [3025.34,11913.8,116.163], [[0.534039,0.827622,-0.172756],[0.0949081,0.144358,0.984964]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_ramp_f.p3d", [3069.71,11982.9,98.28], [[0.535077,0.832573,-0.143228],[0.0774359,0.12049,0.98969]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_ramp_f.p3d", [3044.36,11943.4,109.365], [[0.535077,0.832573,-0.143228],[0.0774359,0.12049,0.98969]]],
	["a3\signs_f\signt\signt_stop.p3d", [1422.71,7894.05,28.3216], [[-0.79964,0.60048,0],[0,0,1]]],
	["a3\plants_f\tree\t_quercusir2s_f.p3d", [3125.22,12038.1,93.1547], [[0,1,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_l10_term.p3d", [2868.62,11667.3,129.513], [[-0.537156,-0.826413,0.168832],[0.135577,0.112965,0.984306]]],
	["a3\roads_f\roads\city_w10_l10_term.p3d", [2842.21,11626,136.207], [[0.513223,0.833664,-0.203978],[0.14869,0.147705,0.977791]]],
	["a3\roads_f\roads\city_w10_l10.p3d", [2852.54,11642.4,132.961], [[0.526192,0.833578,-0.168135],[0.135572,0.112959,0.984307]]],
	["a3\roads_f\roads\city_w10_l10.p3d", [2847.32,11634.2,134.631], [[0.526192,0.833578,-0.168135],[0.135572,0.112959,0.984307]]],
	["a3\roads_f\roads\city_w10_a15_279_r75.p3d", [1213.27,7553.79,5.76397], [[0,0.958038,-0.286642],[-0.0271889,0.286536,0.957684]]],
	["a3\roads_f\roads\city_w10_a1_146_r1000.p3d", [2860.59,11655,132.668], [[0.535823,0.838861,-0.0959442],[0.0311871,0.0938924,0.995094]]],
	["a3\roads_f\roads\city_w10_a0_573_r1000.p3d", [1212.02,7539.08,7.51781], [[0,0.935524,-0.353263],[-0.0527194,0.352771,0.934223]]],
	["a3\vegetation_f_exp\shrub\b_cycas_f.p3d", [1536.2,7524.2,5.86902], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_exp\shrub\b_cycas_f.p3d", [1540.23,7513.58,5.9137], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_exp\shrub\b_cycas_f.p3d", [1534.28,7511.75,5.86902], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1513.45,7517.72,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1505.41,7513.95,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1517.69,7508.7,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1509.65,7504.93,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1501.17,7523.01,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1509.2,7526.78,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1504.97,7535.8,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\roads_f\roads\city_w10_a0_286_r2000.p3d", [1496.93,7532.03,5.85], [[-0.424779,0.905297,0],[0,0,1]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1542.08,7512.76,5.92521], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1552.26,7516.41,5.9501], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1548,7522.62,5.90772], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1538.53,7523.89,5.86545], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1541.17,7523.45,5.86448], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1534.58,7524.85,5.8501], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1531.26,7523.05,5.8501], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1530.21,7522.1,5.8501], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1537.84,7516.19,5.8501], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\vegetation_f_enoch\bush\b_prunusspinosa_1s.p3d", [1539.74,7517.36,5.85644], [[0,1,0],[-0.015994,0,0.999872]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1546.54,7524.96,5.87704], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1549.73,7521.7,5.92857], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1550.92,7515.2,5.95], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1544.95,7512.68,5.95], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1541.55,7517.4,5.91477], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1540.4,7527.32,5.85], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1539.29,7521.53,5.8761], [[0,1,0],[0,0,1]]],
	["a3\plants_f\bush\b_neriumo2s_white_f.p3d", [1542.69,7521.14,5.90985], [[0,1,0],[0,0,1]]],
	["a3\plants_f\tree\t_broussonetiap1s_f.p3d", [1539,7517.28,5.86583], [[0,1,0],[0,0,1]]],
	["a3\plants_f\tree\t_broussonetiap1s_f.p3d", [1542.46,7521.22,5.91045], [[0,1,0],[0,0,1]]],
	["a3\vegetation_f_enoch\tree\t_acer2s.p3d", [1546.37,7517.28,6.02178], [[0,1,0],[0,0,1]]],
	["a3\vegetation_f_enoch\tree\t_acer2s.p3d", [1534.96,7520.03,5.84192], [[0,1,0],[0,0,1]]],
	["a3\vegetation_f_enoch\tree\t_malusdomestica_2s.p3d", [1536.43,7510.79,5.85017], [[0,0.999999,0.00158197],[-0.00479659,-0.00158195,0.999987]]]
];

_objects = [];
{
	_object = createSimpleObject [(_x select 0), (ASLToAGL(_x select 1))];
	_object setVectorDirAndUp (_x select 2);
	_object setPosASL (_x select 1);
	_objects pushBack _object;
} forEach _data;
_objects;
