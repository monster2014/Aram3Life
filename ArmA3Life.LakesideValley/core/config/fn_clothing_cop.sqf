#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
    case 0:
    {
        _ret set[count _ret,["cadet_uni","Cadet Uniform",150]];
		_ret set[count _ret,["A3L_Police_Uniform","Police Uniform",500]];
		_ret set[count _ret,["A3L_Sheriff_Uniform","Sheriff Uniform",500]];
		
        if(__GETC__(life_coplevel) > 1) then
        {
            _ret set[count _ret,["fto_uni","Field Training Uniform",150]];
			_ret set[count _ret,["doj_uni","DoJ Uniform",150]];
			_ret set[count _ret,["FBI_uni","FBI Uniform",150]];
			_ret set[count _ret,["police_uni3","Chief Uniform",150]];
			_ret set[count _ret,["police_uni2","Sergeant Uniform",150]];
			_ret set[count _ret,["police_uni1","Officer Uniform",150]];
			_ret set[count _ret,["SWAT1","Swat Uniform",150]];

			_ret set[count _ret,["U_B_HeliPilotCoveralls","Pilot Uniform",150]];
			
			_ret set[count _ret,["sheriff_uni1","Sheriff Uniform 1",150]];
			_ret set[count _ret,["sheriff_uni2","Sheriff Uniform 2",150]];
        };
    };
	
	
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["A3L_policehelmet",nil,50]];
		_ret set[count _ret,["A3L_sargehat",nil,50]];
		_ret set[count _ret,["H_PilotHelmetHeli_B","Pilot Helmet",50]];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["A3L_Balaclava",nil,60]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["A3L_policevest2","Black Police Vest (WF)",200]];
			_ret set[count _ret,["A3L_policevest1","Black Police Vest (YF) ",200]];
			_ret set[count _ret,["A3L_deptjvest1","DoJ Vest",200]];
			_ret set[count _ret,["A3L_fbivest1","FBI Vest",200]];
			_ret set[count _ret,["A3L_sheriffvest3","Sheriff Vest (Green)",200]];
			_ret set[count _ret,["A3L_sheriffvest2","Sheriff Vest (Grey)",200]];
			_ret set[count _ret,["A3L_sheriffvest1","Sheriff Vest (Tan)",200]];
			_ret set[count _ret,["V_Rangemaster_belt","Pilot Holster",200]];
			_ret set[count _ret,["SWATvest1","SWAT Vest",200]];
			_ret set[count _ret,["SWATvest2","SWAT Vest No Holster",200]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
