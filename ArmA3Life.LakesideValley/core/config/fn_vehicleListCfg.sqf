#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",5000],
			["IVORY_R8",80000],
			["IVORY_R8SPYDER",85000],
			["IVORY_REV",180000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["IVORY_PRIUS",5000],
			["A3L_CVPILBFD",10000],
			["Jonzie_Ambulance",25000],
			["A3L_AmberLamps",25000],
			["A3L_Laddertruck",40000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000],
			["C_Heli_Light_01_civil_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F", 150000]
		];
	};
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			["A3L_AMC",65000],
			["A3L_AMXRed",65000],
			["A3L_AMXWhite",65000],
			["A3L_AMXBlue",65000],
			["A3L_AMXGL",65000],
			["A3L_VolvoS60RBlack",65000],
			["A3L_VolvoS60Rred",65000],
			["S_Skyline_Red",65000],
			["S_Skyline_Blue",65000],
			["S_Skyline_Black",65000],
			["S_Skyline_Yellow",65000],
			["S_Skyline_Purple",65000],
			["S_Skyline_White",65000],
			["S_Vantage_Red",150000],
			["S_Vantage_Blue",150000],
			["S_Vantage_Black",150000],
			["S_Vantage_Yellow",150000],
			["S_Vantage_LightBlue",150000],
			["S_Vantage_Purple",150000],
			["S_Vantage_White",150000],
			["A3L_Ferrari458black",258000],
			["A3L_Ferrari458white",258000],
			["A3L_Ferrari458blue",258000],
			["S_PorscheRS_Black",300000],
			["S_PorscheRS_Yellow",300000],
			["S_PorscheRS_White",300000],
			["S_McLarenP1_Black",350000],
			["S_McLarenP1_Blue",350000],
			["S_McLarenP1_Orange",350000],
			["S_McLarenP1_White",350000],
			["S_McLarenP1_Yellow",350000],
			["S_McLarenP1_Silver",350000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",50000],
			["A3L_SuburbanBlue",50000],
			["A3L_SuburbanRed",50000],
			["A3L_SuburbanBlack",50000],
			["A3L_SuburbanGrey",50000],
			["A3L_SuburbanOrange",50000],
			["A3L_TahoeWhite",45000],
			["A3L_TahoeRed",45000],
			["A3L_TahoeBlue",45000],
			["A3L_Camaro",75000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",13000],
			["A3L_FordKaRed",13000],
			["A3L_FordKaBlack",13000],
			["A3L_FordKaWhite",13000],
			["A3L_FordKaGrey",13000],
			["A3L_CVWhite",30000],
			["A3L_CVBlack",30000],
			["A3L_CVGrey",30000],
			["A3L_CVRed",30000],
			["A3L_CVPink",30000],
			["A3L_CVBlue",30000],
			["A3L_Taurus",35000],
			["A3L_TaurusBlack",35000],
			["A3L_TaurusBlue",35000],
			["A3L_TaurusRed",35000],
			["A3L_TaurusWhite",35000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",32000],
			["A3L_GrandCaravanBlk",32000],
			["A3L_GrandCaravanBlue",32000],
			["A3L_GrandCaravanGreen",32000],
			["A3L_GrandCaravanRed",32000],
			["A3L_GrandCaravanPurple",32000],
			["A3L_Challenger",50000],
			["A3L_ChallengerGreen",50000],
			["A3L_ChallengerRed",50000],
			["A3L_ChallengerWhite",50000],
			["A3L_ChallengerBlack",50000],
			["A3L_ChallengerBlue",50000],
			["A3L_ChargerBlack",75000],
			["A3L_ChargerWhit",75000],
			["A3L_ChargerCstm",75000],
			["Jonzie_Viper",105000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",2000],
			["B_Quadbike_01_F",2500],
			["A3L_Escort",2500],
			["A3L_EscortTaxi",2500],
			["A3L_EscortBlack",2500],
			["A3L_EscortBlue",2500],
			["A3L_EscortWhite",2500],
			["A3L_EscortPink",2500],
			["M1030",10500],
			["A3L_PuntoRed",12000],
			["A3L_PuntoBlack",12000],
			["A3L_PuntoWhite",12000],
			["A3L_PuntoGrey",12000],
			["A3L_RegalBlack",13000],
			["A3L_RegalBlue",13000],
			["A3L_RegalOrange",13000],
			["A3L_RegalRed",13000],
			["A3L_RegalWhite",13000],
			["A3L_JeepWhiteBlack",13000],
			["A3L_JeepGreenBlack",13000],
			["A3L_JeepRedTan",13000],
			["A3L_JeepRedBlack",13000],
			["A3L_JeepGrayBlack",13000],
			["A3L_VolksWagenGolfGTired",18000],
			["A3L_VolksWagenGolfGTiblack",18000],
			["A3L_VolksWagenGolfGTiblue",18000],
			["A3L_VolksWagenGolfGTiwhite",18000],
			["S_Rangerover_Black",20000],
			["S_Rangerover_Red",20000],
			["S_Rangerover_Blue",20000],
			["S_Rangerover_Green",20000],
			["S_Rangerover_Purple",20000],
			["S_Rangerover_Grey",20000],
			["S_Rangerover_Orange",20000],
			["S_Rangerover_White",20000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",20000],
			["A3L_F350Blue",20000],
			["A3L_F350Red",20000],
			["A3L_F350White",20000],
			["A3L_Dumptruck",50000],
			["C_Van_01_box_F",60000],
			["C_Van_01_transport_F",40000],
			["A3L_Bus",70000],
			["A3L_Towtruck",50000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["IVORY_PRIUS",5000],
			["IVORY_REV",100000],
			
			["A3L_TaurusFPBCSO",25000],
			["A3L_TaurusFPBLBCSO",25000],
			["A3L_CVPIFPBCSO",45000],
			["A3L_CVPIFPBLBCSO",45000],
			["A3L_GrandCaravanUC",25000],
			["A3L_GrandCaravanUCBlack",25000],
			["A3L_SuburbanCSO",55000],
			["A3L_EvoXFPBLBSO",70000],
			
			["A3L_TaurusUCBlack",25000],
			["A3L_TaurusUCGrey",25000],
			["A3L_TaurusUCWhite",25000],
			["A3L_TaurusUCBlue",25000],
			["A3L_TaurusUCRed",25000],
			
			["A3L_CVPIUC",50000],
			["A3L_CVPIUCBlack",50000],
			["A3L_CVPIUCWhite",50000],
			["A3L_CVPIGrey",50000],
			["A3L_CVPIUCRed",50000],
			["A3L_CVPIUCPink",50000],
			["A3L_CVPIUCBlue",50000],
			
			["A3L_ChargerUC",60000],
			["A3L_ChargerUCWhite",60000],
			
			["A3L_jailBus",50000]
			

		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000],
			["B_Heli_Transport_01_F",200000],
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["O_Heli_Transport_04_covered_F",300000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000],
			["B_Heli_Transport_01_F",200000],
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["IVORY_T6A_1",300000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
