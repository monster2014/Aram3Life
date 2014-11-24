#include <macro.h>
/*
        File: fn_weaponShopCfg.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Master configuration file for the weapon shops.
       
        Return:
        String: Close the menu
        Array:
        [Shop Name,
        [ //Array of items to add to the store
                [classname,Custom Name (set nil for default),price]
        ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.
 
switch(_shop) do
{
       
	   
	   
	   
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Supplies Shop",
                                        [
											["cse_bandage_basic",nil,5],
											["cse_packing_bandage",nil,5],
											["cse_bandageElastic",nil,9],
											["cse_personal_aid_kit",nil,20],
											["cse_tourniquet",nil,10],
											["cse_splint",nil,10],
											["cse_morphine",nil,10],
											["cse_atropine",nil,10],
											["cse_epinephrine",nil,15],
											["cse_plasma_iv",nil,20],
											["cse_plasma_iv_250",nil,22],
											["cse_plasma_iv_500",nil,25],
											["cse_blood_iv",nil,30],
											["cse_blood_iv_250",nil,32],
											["cse_blood_iv_500",nil,33],
											["cse_saline_iv",nil,30],
											["cse_saline_iv_250",nil,32],
											["cse_saline_iv_500",nil,35],
											["cse_quikclot",nil,35],
											["cse_nasopharyngeal_tube",nil,40],
											["cse_opa",nil,20],
											["cse_liquidSkin",nil,45],
											["cse_chestseal",nil,40]
                                        ]
                                ];
                        };
                };
        };
		case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS"};
                        default {
                                ["EMS Basic Shop",
                                        [
											["A3L_Extinguisher",nil,100],
											["tf_anprc152",nil,100],
                                            ["tf_rt1523g",nil,300],
											["ItemGPS",nil,100],
											["Binocular",nil,150],
											["ToolKit",nil,250],
											["Chemlight_red",nil,100],
											["NVGoggles",nil,120]
                                        ]
                                ];
                        };
                };
        };
		
		
		
		
		
		
		
		
		
        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        default
                        {
                                ["Junior Deputy Shop",
                                        [
												["RH_g17",nil,600],
                                                ["Taser_26","Taser",2000],
												
												["RH_17Rnd_9x19_g17",nil,50],
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
												["RH_X300",nil,100],
												
												["cse_bandage_basic",nil,10],
                                                ["cse_tourniquet",nil,10],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100]
                                        ]
                                ];
                        };
                };
        };
        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a deputy!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not at a deputy rank!"};
                        default
                        {
                                ["Deputy Shop",
                                        [
                                                ["RH_m16a4",nil,8000],
                                                ["RH_g19",nil,650],
                                                ["RH_p226",nil,300],
												["RH_g17",nil,600],
                                                ["Taser_26","Taser",2000],
												
												["30rnd_556x45_STANAG",nil,300],
												["RH_33Rnd_9x19_g18",nil,300],
                                                ["RH_15Rnd_9x19_SIG",nil,100],
												["RH_17Rnd_9x19_g17",nil,50],
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
												["RH_X300",nil,100],
												["RH_SFM952V",nil,100],
												["RH_compM4s",nil,100],
												["RH_reflex",nil,100],
												["RH_eotech553",nil,100],
												
												["cse_bandage_basic",nil,10],
                                                ["cse_tourniquet",nil,10],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100],
                                                ["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["Sergeant Shop",
                                        [
                                                ["RH_m16a4",nil,8000],
                                                ["RH_g19",nil,650],
                                                ["RH_p226",nil,300],
												["RH_g17",nil,600],
												["RH_kimber_nw",nil,600],
                                                ["Taser_26","Taser",2000],
												
												["30rnd_556x45_STANAG",nil,300],
												["RH_33Rnd_9x19_g18",nil,300],
                                                ["RH_15Rnd_9x19_SIG",nil,100],
												["RH_17Rnd_9x19_g17",nil,50],
												["RH_7Rnd_45cal_m1911",nil,50],
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
												["RH_X300",nil,100],
												["RH_SFM952V",nil,100],
												["RH_shortdot",nil,100],
												["RH_compM4s",nil,100],
                                                ["RH_ta31rco",nil,100],
												["RH_reflex",nil,100],
												["RH_eotech553",nil,100],
												
												["cse_bandage_basic",nil,10],
                                                ["cse_tourniquet",nil,10],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100],
                                                ["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
		
        case "cop_swat":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a cop!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
                        default
                        {
                                ["SERT Shop",
                                        [
                                                ["RH_m16a4",nil,8000],
                                                ["RH_M4A1_ris",nil,8000],
                                                ["srifle_EBR_F",nil,8000],
												["RH_M4sbr_b",nil,8000],
                                                ["RH_g19",nil,650],
                                                ["RH_p226",nil,300],
												["RH_g17",nil,600],
												["RH_kimber_nw",nil,600],
                                                ["Taser_26","Taser",2000],
												
												["30rnd_556x45_STANAG",nil,300],
												["RH_30Rnd_556x45_Mk262",nil,500],
												["20Rnd_762x51_Mag",nil,500],
												["RH_33Rnd_9x19_g18",nil,300],
                                                ["RH_15Rnd_9x19_SIG",nil,100],
												["RH_17Rnd_9x19_g17",nil,50],
												["RH_7Rnd_45cal_m1911",nil,50],
                                                ["26_cartridge",nil,50],
                                                ["Chemlight_red",nil,100],
												
												["RH_X300",nil,100],
												["RH_SFM952V",nil,100],
												["RH_shortdot",nil,100],
												["RH_compM4s",nil,100],
                                                ["RH_ta31rco",nil,100],
												["RH_reflex",nil,100],
												["RH_eotech553",nil,100],
												["optic_SOS",nil,100],
												["optic_NVS",nil,100],
												["RH_saker",nil,100],
												["muzzle_snds_M",nil,100],
												["muzzle_snds_B",nil,100],
												
												["cse_bandage_basic",nil,10],
                                                ["cse_tourniquet",nil,10],
                                                ["Binocular",nil,150],
                                                ["ItemGPS",nil,100],
                                                ["ToolKit",nil,250],
                                                ["NVGoggles",nil,2000],
                                                ["tf_anprc152",nil,100],
                                                ["tf_rt1523g",nil,300]
                                        ]
                                ];
                        };
                };
        };
      
        case "rebel":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You don't have a Rebel training license!"};
                        default
                        {
                                ["Mohammed's Jihadi Shop",
                                        [
											["RH_g18",nil,3500],
											["RH_33Rnd_9x19_g18",nil,2500],
											["RH_tec9",nil,7500],              
											["RH_32Rnd_9x19_tec",nil,200],        
											["RH_muzi",nil,8000],              
											["RH_30Rnd_9x19_UZI",nil,125],
											["RH_ar10",nil,12500],
											["RH_20Rnd_762x51_AR10",nil,300],
											["RH_m16a3",nil,14000],
											["RH_m16a4",nil,18000],
											["30rnd_556x45_STANAG",nil,800],
											["30Rnd_556x45_Stanag_Tracer_Red",nil,800],
											["RH_mk12mod1",nil,25000],
											["RH_compM4s",nil,5000],
											["RH_eotech533",nil,5000],
											["RH_shortdot",nil,5000],
											["RH_reflex",nil,5000]
                                        ]
                                ];
                        };
                };
        };
       
        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Billy Joe's Firearms",
                                        [
                                                ["V_Rangemaster_belt",nil,4900],
                                                ["RH_deagle",nil,5000],
                                                ["RH_deagleg",nil,5000],
                                                ["RH_deagles",nil,5000],
                                                ["RH_deaglem",nil,5000],
                                                ["RH_7Rnd_50_AE",nil,100],
                                                ["RH_cz75",nil,6000],
                                                ["RH_16Rnd_9x19_cz",nil,125],
                                                ["RH_sw659",nil,2000],
                                                ["RH_14Rnd_9x19_sw",nil,100],
                                                ["RH_usp",nil,2000],
                                                ["RH_12Rnd_45cal_usp",nil,100],
                                                ["RH_mak",nil,1500],
                                                ["RH_8Rnd_9x18_Mak",nil,75],
                                                ["RH_uspm",nil,1750],
                                                ["RH_16Rnd_40cal_usp",nil,125],
                                                ["RH_m9",nil,1250],
                                                ["RH_15Rnd_9x19_M9",nil,75],
                                                ["RH_m9c",nil,2000],
                                                ["RH_tt33",nil,1750],
                                                ["RH_8Rnd_762_tt33",nil,50],            
                                                ["RH_mk2",nil,1500],
                                                ["RH_10Rnd_22LR_mk2",nil,75],          
                                                ["RH_p226",nil,2500],
                                                ["RH_15Rnd_9x19_SIG",nil,125],      
                                                ["RH_p226s",nil,2500],
                                                ["RH_mateba",nil,2000],            
                                                ["RH_6Rnd_44_Mag",nil,75],              
                                                ["RH_python",nil,1900],            
                                                ["RH_6Rnd_357_Mag",nil,75],            
                                                ["RH_mp412",nil,3000],                  
                                                ["RH_bull",nil,6000],
                                                ["RH_6Rnd_454_Mag",nil,75],            
                                                ["RH_bullb",nil,6000],                          
                                                ["RH_ttracker",nil,6500],          
                                                ["RH_6Rnd_45ACP_Mag",nil,75],      
                                                ["RH_ttracker_g",nil,5000],                
                                                ["RH_fnp45",nil,2000],              
                                                ["RH_15Rnd_45cal_fnp",nil,75],      
                                                ["RH_fnp45t",nil,2000],                  
                                                ["RH_fn57",nil,1500],              
                                                ["RH_20Rnd_57x28_FN",nil,75],        
                                                ["RH_fn57_g",nil,2000],                  
                                                ["RH_fn57_t",nil,2000],                  
                                                ["RH_gsh18",nil,4000],              
                                                ["RH_18Rnd_9x19_gsh",nil,75]
                                               
                                        ]
                                ];
                        };
                };
        };
       
        case "gang":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Hideout Armament",
                                        [
                                                ["RH_g18",nil,3500],
                                                ["RH_33Rnd_9x19_g18",nil,300],
                                                ["RH_tec9",nil,7500],              
                                                ["RH_32Rnd_9x19_tec",nil,200],        
                                                ["RH_muzi",nil,8000],              
                                                ["RH_30Rnd_9x19_UZI",nil,125]
                                        ]
                                ];
                        };
                };
        };
       
        case "genstore":
        {
                ["Altis General Store",
                        [
				["ItemMap",nil,29],
				["cse_bandage_basic",nil,100],
                                ["itemRadio",nil,500],
                                ["Binocular",nil,150],
                                ["ItemGPS",nil,100],
                                ["ToolKit",nil,250],
                                ["FirstAidKit",nil,150],
                                ["NVGoggles_OPFOR",nil,2000],
                                ["NVGoggles",nil,2000],
                                ["Chemlight_red",nil,300],
                                ["Chemlight_yellow",nil,300],
                                ["Chemlight_green",nil,300],
                                ["Chemlight_blue",nil,300]
                        ]
                ];
        };
};
