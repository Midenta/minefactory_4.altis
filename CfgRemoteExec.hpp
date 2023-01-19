/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

#define F(NAME,TARGET) class NAME { \
    allowedTargets = TARGET; \
};


#define ANYONE 0
#define CLIENT 1
#define SERVER 2
#define HC HC_Husky

class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 0;
		#include "Scripts\cation\cation_remoteExec.cpp"
		#include "maverick\maverick_remoteExec_master.cpp"
        #include "The-Programmer\theprogrammer_remoteExec_master.cpp"



        /* Client only functions */
        F(husky_fnc_AAN,CLIENT)
        F(husky_fnc_addVehicle2Chain,CLIENT)
        F(husky_fnc_adminID,CLIENT)
        F(husky_fnc_adminInfo,CLIENT)
        F(husky_fnc_bountyReceive,CLIENT)
        F(husky_fnc_copLights,CLIENT)
        F(husky_fnc_copSearch,CLIENT)
        F(husky_fnc_copSiren,CLIENT)
        F(husky_fnc_freezePlayer,CLIENT)
        F(husky_fnc_garageRefund,CLIENT)
        F(husky_fnc_giveDiff,CLIENT)
        F(husky_fnc_hideObj,CLIENT)
        F(husky_fnc_impoundMenu,CLIENT)
        F(husky_fnc_jail,CLIENT)
        F(husky_fnc_jailMe,CLIENT)
        F(husky_fnc_knockedOut,CLIENT)
        F(husky_fnc_licenseCheck,CLIENT)
        F(husky_fnc_licensesRead,CLIENT)
        F(husky_fnc_lightHouse,CLIENT)
        F(husky_fnc_mediclights,CLIENT)
        F(husky_fnc_medicRequest,CLIENT)
        F(husky_fnc_medicSiren,CLIENT)
        F(husky_fnc_moveIn,CLIENT)
        F(husky_fnc_pickupItem,CLIENT)
        F(husky_fnc_pickupMoney,CLIENT)
        F(husky_fnc_receiveItem,CLIENT)
        F(husky_fnc_receiveMoney,CLIENT)
        F(husky_fnc_removeLicenses,CLIENT)
        F(husky_fnc_restrain,CLIENT)
        F(husky_fnc_revived,CLIENT)
        F(husky_fnc_robPerson,CLIENT)
        F(husky_fnc_robReceive,CLIENT)
        F(husky_fnc_searchClient,CLIENT)
        F(husky_fnc_seizeClient,CLIENT)
        F(husky_fnc_soundDevice,CLIENT)
        F(husky_fnc_spikeStripEffect,CLIENT)
        F(husky_fnc_tazeSound,CLIENT)
        F(husky_fnc_ticketPaid,CLIENT)
        F(husky_fnc_ticketPrompt,CLIENT)
        F(husky_fnc_vehicleAnimate,CLIENT)
        F(husky_fnc_wantedList,CLIENT)
        F(husky_fnc_wireTransfer,CLIENT)
        F(SOCK_fnc_dataQuery,CLIENT)
        F(SOCK_fnc_insertPlayerInfo,CLIENT)
        F(SOCK_fnc_requestReceived,CLIENT)
        F(SOCK_fnc_updateRequest,CLIENT)
        F(TON_fnc_clientGetKey,CLIENT)
        F(TON_fnc_clientMessage,CLIENT)
        F(TON_fnc_player_query,CLIENT)
		F(husky_fnc_copSiren2,CLIENT)
		F(husky_fnc_copSiren3,CLIENT)
		F(husky_fnc_vehicleEmpd,CLIENT)
		F(husky_fnc_vehicleWarned,CLIENT)
		F(husky_fnc_setupCellPhone,CLIENT)
		F(husky_fnc_copSit,CLIENT)
		F(husky_fnc_copStand,CLIENT)
		F(husky_fnc_bag,CLIENT)
		F(husky_fnc_hasOrgan,CLIENT)
		F(cc_c_setConfig,CLIENT)
		//F(wlkr_cc_reloadstores,CLIENT)
		F(stig_sz_msg_add,CLIENT)
		F(stig_sz_msg_del,CLIENT)
		//F(husky_fnc_zip_viewinventory,CLIENT)
		F(husky_fnc_tieing,CLIENT)
		F(husky_fnc_tieingb,CLIENT)
		F(husky_fnc_gagged,CLIENT)
		F(husky_fnc_farmboost,CLIENT)
		F(husky_fnc_radArea,CLIENT)
		F(DT_fnc_healMe,CLIENT)
		F(husky_fnc_goingToHighBet,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_updateGamblingDatas,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_giveWinnerMoneyGambling,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_newGambler,CLIENT) //GAMBLING by Yasar-S
		F(husky_fnc_goingToHighBet2,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_updateGambling2Datas,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_giveWinnerMoneyGambling2,CLIENT) //GAMBLING by Yasar-S
    	F(husky_fnc_newGambler2,CLIENT) //GAMBLING by Yasar-S
		F(husky_fnc_SperrzoneDel,CLIENT)// SPERRZONEN SYSTEM by Yasar-S
        F(husky_fnc_Sperrzone,CLIENT)// SPERRZONEN SYSTEM by Yasar-S
        F(husky_fnc_thereSperrzone,CLIENT)// SPERRZONEN SYSTEM by Yasar-S
        F(husky_fnc_lzeigen,CLIENT)
        F(husky_fnc_AH_receiver,CLIENT) //Auktionshaus
        F(husky_fnc_airOpen,CLIENT) //Auktionshaus
        /* Neues Gang System */
        F(husky_fnc_groupReceiveMessage,CLIENT)
        F(husky_fnc_groupInvite,CLIENT)
        F(husky_fnc_groupReceiveMoney,CLIENT)
        F(TON_fnc_groupSetLeader,CLIENT)
        F(husky_fnc_groupJoinGroup,CLIENT)


        /* Server only functions */
        F(BIS_fnc_execVM,SERVER)
        F(DB_fnc_insertRequest,SERVER)
        F(DB_fnc_queryRequest,SERVER)
        F(DB_fnc_updatePartial,SERVER)
        F(DB_fnc_updateRequest,SERVER)
        F(husky_fnc_jailSys,SERVER)
        F(husky_fnc_wantedAdd,SERVER)
        F(husky_fnc_wantedBounty,SERVER)
        F(husky_fnc_wantedCrimes,SERVER)
        F(husky_fnc_wantedFetch,SERVER)
        F(husky_fnc_wantedProfUpdate,SERVER)
        F(husky_fnc_wantedRemove,SERVER)
        F(SPY_fnc_cookieJar,SERVER)
        F(SPY_fnc_observe,SERVER)
        F(TON_fnc_addContainer,SERVER)
        F(TON_fnc_addHouse,SERVER)
        F(TON_fnc_chopShopSell,SERVER)
        F(TON_fnc_cleanupRequest,SERVER)
        F(TON_fnc_deleteDBContainer,SERVER)
        F(TON_fnc_getID,SERVER)
        F(TON_fnc_getVehicles,SERVER)
        F(TON_fnc_keyManagement,SERVER)
        F(TON_fnc_manageSC,SERVER)
        F(TON_fnc_pickupAction,SERVER)
        F(TON_fnc_sellHouse,SERVER)
        F(TON_fnc_sellHouseContainer,SERVER)
        F(TON_fnc_setObjVar,SERVER)
        F(TON_fnc_spawnVehicle,SERVER)
        F(TON_fnc_spikeStrip,SERVER)
        F(TON_fnc_updateHouseContainers,SERVER)
        F(TON_fnc_updateHouseTrunk,SERVER)
        F(TON_fnc_vehicleCreate,SERVER)
        F(TON_fnc_vehicleDelete,SERVER)
        F(TON_fnc_vehicleStore,SERVER)
        F(TON_fnc_vehicleUpdate,SERVER)
        F(TON_fnc_handleBlastingCharge,SERVER)
		F(TON_fnc_adjustPrices,SERVER)
        F(TON_fnc_houseGarage,SERVER)
		F(TON_fnc_playerLogged,SERVER)
		F(TON_fnc_getUpdate,SERVER)
		F(TON_fnc_changePrice, SERVER)
		F(husky_fnc_update,CLIENT)
		F(husky_fnc_sendBug,SERVER)
		F(TON_fnc_handleMessages,SERVER)
		F(TON_fnc_msgRequest,SERVER)
		F(DB_fnc_cellPhoneRequest,SERVER)
        F(DB_fnc_saveCellPhone,SERVER)
        F(DB_fnc_getRealTime,SERVER)
		F(HC_fnc_AdvancedLog,SERVER)
		F(ton_fnc_rem_proxy,SERVER)
		F(TON_fnc_mobileCopStation,SERVER)
		F(HC_fnc_AdvancedLog,SERVER)
		F(cc_c_fetchConfig,SERVER)
		//F(wlkr_cc_fetchConfig,SERVER)
		//F(TON_fnc_Plate,SERVER)
		F(TON_fnc_getFarmcodes,SERVER)
		F(TON_fnc_Fahndung,SERVER)
		F(TON_fnc_BugReportInsert,SERVER)
		F(TON_fnc_insureCar,SERVER)
		F(ASN_fnc_controlPanel,SERVER)
		F(DT_fnc_perksSaveDB,SERVER)
		F(AH_KeyCheck,SERVER)
        F(AH_PlayerLoad,SERVER)
        F(AH_LogInterface,SERVER)
		F(ASN_fnc_controlPanel,SERVER)
		F(TON_fnc_newBet,SERVER) //GAMBLING by Yasar-S
		F(HC_fnc_gamblingSetMoney,HC) //GAMBLING by Yasar-S
		F(TON_fnc_newBet2,SERVER) //GAMBLING by Yasar-S
		F(HC_fnc_gambling2SetMoney,HC) //GAMBLING by Yasar-S
		F(TON_fnc_copSperrzone,SERVER)// SPERRZONEN SYSTEM by Yasar-S
        F(TON_fnc_copSperrzonenE,SERVER)// SPERRZONEN SYSTEM by Yasar-S
        F(TON_fnc_copSperrzonenDel,SERVER)// SPERRZONEN SYSTEM by Yasar-S
        F(TON_fnc_updateKammer,SERVER)
        F(TON_fnc_AH_update,SERVER)
        /* Neues Gang System*/
		F(TON_fnc_groupCreate,SERVER) // Neues Gruppen System
        F(TON_fnc_updateGroupPartial,SERVER) // Neues Gruppen System
		//F(TON_fnc_inventarabfrage,SERVER)


		//Polizeicomputer
		F(TON_fnc_bericht1,SERVER)
		F(TON_fnc_wantedlist,SERVER)
		F(TON_fnc_Deleteeintrag,SERVER)
		F(TON_fnc_database_query,SERVER)
		F(TON_fnc_database1_query,SERVER)
		F(TON_fnc_polizei_query,SERVER)
		F(husky_fnc_scheinEntzugNow,CLIENT)
		F(TON_fnc_fsupdate,SERVER)
		F(TON_fnc_statusserver,SERVER)
		F(TON_fnc_lastcheck,SERVER)
		F(husky_fnc_textinfoausgabe,CLIENT)
		F(husky_fnc_pcdb1,CLIENT)

		//Mediccomputer
		F(TON_fnc_bericht1_med,SERVER)
		F(TON_fnc_wantedlist_med,SERVER)
		F(TON_fnc_Deleteeintrag_med,SERVER)
		F(TON_fnc_database_query_med,SERVER)
		F(TON_fnc_database1_query_med,SERVER)
		F(TON_fnc_polizei_query_med,SERVER)
		F(husky_fnc_scheinEntzugNow_med,CLIENT)
		F(TON_fnc_fsupdate_med,SERVER)
		F(TON_fnc_statusserver_med,SERVER)
		F(TON_fnc_lastcheck_med,SERVER)
		F(husky_fnc_textinfoausgabe_med,CLIENT)
		F(husky_fnc_pcdb1_med,CLIENT)

        /* HeadlessClient only functions */
        F(HC_fnc_addContainer,HC)
        F(HC_fnc_addHouse,HC)
        F(HC_fnc_chopShopSell,HC)
        F(HC_fnc_deleteDBContainer,HC)
        F(HC_fnc_getVehicles,HC)
        F(HC_fnc_houseGarage,HC)
        F(HC_fnc_insertRequest,HC)
        F(HC_fnc_insertVehicle,HC)
        F(HC_fnc_jailSys,HC)
        F(HC_fnc_keyManagement,HC)
        F(HC_fnc_queryRequest,HC)
        F(HC_fnc_sellHouse,HC)
        F(HC_fnc_sellHouseContainer,HC)
        F(HC_fnc_spawnVehicle,HC)
        F(HC_fnc_spikeStrip,HC)
        F(HC_fnc_updateHouseContainers,HC)
        F(HC_fnc_updateHouseTrunk,HC)
        F(HC_fnc_updatePartial,HC)
        F(HC_fnc_updateRequest,HC)
        F(HC_fnc_vehicleCreate,HC)
        F(HC_fnc_vehicleDelete,HC)
        F(HC_fnc_vehicleStore,HC)
        F(HC_fnc_vehicleUpdate,HC)
        F(HC_fnc_wantedAdd,HC)
        F(HC_fnc_wantedBounty,HC)
        F(HC_fnc_wantedCrimes,HC)
        F(HC_fnc_wantedFetch,HC)
        F(HC_fnc_wantedProfUpdate,HC)
        F(HC_fnc_wantedRemove,HC)
		F(HC_fnc_cellPhoneRequest,HC)
        F(HC_fnc_saveCellPhone,HC)
		F(HC_fnc_getFarmcodes,HC)
		F(HC_fnc_insureCar,HC)
        F(HC_fnc_AdvancedLog,HC)

        /* Functions for everyone */
		F(BIS_fnc_spawn,ANYONE)
		F(stig_sz_msg_add,ANYONE)
		F(stig_sz_msg_del,ANYONE)
        F(BIS_fnc_effectKilledAirDestruction,ANYONE)
        F(bis_fnc_debugconsoleexec,ANYONE)
        F(BIS_fnc_effectKilledSecondaries,ANYONE)
        F(husky_fnc_animSync,ANYONE)
        F(husky_fnc_broadcast,ANYONE)
        F(husky_fnc_colorVehicle,ANYONE)
        F(husky_fnc_corpse,ANYONE)
        F(husky_fnc_demoChargeTimer,ANYONE)
        F(husky_fnc_flashbang,ANYONE)
        F(husky_fnc_jumpFnc,ANYONE)
        F(husky_fnc_lockVehicle,ANYONE)
        F(husky_fnc_pulloutVeh,ANYONE)
        F(husky_fnc_say3D,ANYONE)
        F(husky_fnc_setFuel,ANYONE)
        F(husky_fnc_simDisable,ANYONE)
        F(SPY_fnc_notifyAdmins,ANYONE)

		F(husky_fnc_idcard_Created,ANYONE)
		F(ton_fnc_updateidcard,ANYONE)
		F(husky_fnc_show_idcard,ANYONE)
        F(husky_fnc_documents_show,ANYONE)
		/*F(ton_fnc_locker_terminatelocker,SERVER)
		F(husky_fnc_locker_initLocker,CLIENT)
		F(ton_fnc_locker_initlocker,SERVER)
		F(ton_fnc_locker_signuplocker,SERVER)
		F(husky_fnc_locker_buylocker,CLIENT)*/
		F(husky_fnc_acceptSellRequest,CLIENT)
		F(husky_fnc_doneObjectSell,CLIENT)
		F(husky_fnc_sellobject_keys,CLIENT)
		F(ton_fnc_aapps_changeObjectOwner,SERVER)
		F(TON_fnc_vehicleImpound,SERVER)
        F(TON_fnc_getimpoundedvehicles,SERVER)
		F(husky_ticket_send_bank,ANYONE)
		F(husky_fnc_searchaction,ANYONE)
		F(husky_fnc_EHK,ANYONE)

		F(SA_Set_Owner,ANYONE)
        F(SA_Simulate_Towing,ANYONE)
        F(SA_Hide_Object_Global,ANYONE)
        F(SA_Attach_Tow_Ropes,ANYONE)
        F(SA_Take_Tow_Ropes,ANYONE)
        F(SA_Pickup_Tow_Ropes,ANYONE)
        F(SA_Drop_Tow_Ropes,ANYONE)
        F(SA_Put_Away_Tow_Ropes,ANYONE)
        F(SA_RemoteExec,ANYONE)
        F(SA_RemoteExecServer,ANYONE)

		F(husky_fnc_lightsOn,ANYONE)
		F(husky_fnc_broadcastParse,ANYONE)
		F(husky_fnc_sosmarker,ANYONE)
        F(husky_fnc_teargas,ANYONE)

		F(husky_fnc_gang_remmoney,CLIENT)
		F(TON_fnc_gang_buy,SERVER)
		F(ton_fnc_gang_checkname,SERVER)
		F(ton_fnc_gang_disband,SERVER)
		F(husky_fnc_gang_readdmoney,CLIENT)
		F(ton_fnc_gang_update,SERVER)
		F(ton_fnc_gang_load,SERVER)
		F(husky_fnc_gang_checkdialog,CLIENT)
		F(husky_fnc_gang_joinGang,CLIENT)
		F(husky_fnc_gang_kicked,CLIENT)
		F(husky_fnc_gang_tag,CLIENT)
		F(ton_fnc_gang_hq_recursive,SERVER)
		F(hc_fnc_gang_buy,HC)
		F(hc_fnc_gang_checkname,HC)
		F(hc_fnc_gang_disband,HC)
		F(hc_fnc_gang_hq_recursive,HC)
		F(hc_fnc_gang_update,HC)
		F(hc_fnc_gang_load,HC)

		F(TON_fnc_playtime_values,HC)
		
		F(Ermen_fnc_checkLagVehInventory,SERVER)
		//F(Ermen_fnc_checkLagAllInOne,SERVER)
    };

    class Commands {
        mode = 1;
        jip = 0;

        F(addHandgunItem,ANYONE)
        F(addMagazine,ANYONE)
        F(addPrimaryWeaponItem,ANYONE)
        F(addWeapon,ANYONE)
        F(hideObjectGlobal,ANYONE)
        F(setFuel,ANYONE)
		F(setunitloadout,CLIENT)
		F(setobjecttexture,CLIENT)
    };
};
