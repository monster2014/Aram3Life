fnc_armc4 = {
_c4pic_array = ["\A3L_Client2\c4files\pic0.paa","\A3L_Client2\c4files\pic1.paa","\A3L_Client2\c4files\pic2.paa","\A3L_Client2\c4files\pic3.paa","\A3L_Client2\c4files\pic4.paa","\A3L_Client2\c4files\pic5.paa","\A3L_Client2\c4files\pic6.paa","\A3L_Client2\c4files\pic7.paa","\A3L_Client2\c4files\pic8.paa","\A3L_Client2\c4files\pic9.paa"];
_eentallenpic = ctrltext 154269;
_tientallenpic = ctrltext 154268;
_eentallen = _c4pic_array find _eentallenpic;
_tientallenold = _c4pic_array find _tientallenpic;
_tientallen = _tientallenold * 10;
_totaltime = _tientallen + _eentallen; 


if ((player distance bank) < 10) then {	
if (!(bank getVariable "canberobbed")) exitwith {};
[[player,"c4_planted"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
[[_totaltime,bank],"A3L_Fnc_Bankalarm",false,false,false] call BIS_fnc_MP;
};

if ((player distance prisondoor) < 10) then {	
if (!(prisondoor getVariable "canberobbed")) exitwith {};
[[player,"c4_planted"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
[[_totaltime,prisondoor],"A3L_Fnc_Bankalarm",false,false,false] call BIS_fnc_MP;
};
};

A3L_Fnc_SellSuitcase = {
{
if (typeOf _x == "Land_Suitcase_F") then {
detach _x;
deletevehicle _x;
_money = 5000 + (floor(random 25000));
life_cash = life_cash + _money;
if (side player == civilian) then {
[format ["You sold your suitcase and received %1",_money],30,"green"] call A3L_Fnc_Msg;
};

if (side player == west) then {
[format ["You recovered a suitcase and received %1",_money],30,"green"] call A3L_Fnc_Msg;
};			

};		
} foreach (attachedobjects player);
};