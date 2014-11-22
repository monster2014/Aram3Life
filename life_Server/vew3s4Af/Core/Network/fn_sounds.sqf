fnc_playsound = {
_source = _this select 0;
_sound = _this select 1;
_location = getpos _source;
if (!isServer) then {
_thelogic = "logic" createvehiclelocal _location;
_thelogic say3D (_this select 1);
[_source,_thelogic] spawn fnc_stopsound;
}; };

fnc_stopsound = {
_source = _this select 0;
_thelogic = _this select 1;
_lockpicking = _source getVariable "lockpicking";
if (_lockpicking) exitwith {
sleep 3;
[_source,_thelogic] spawn fnc_stopsound;};
deletevehicle _thelogic;
};

A3L_fnc_AlarmHint = {
if (isDedicated) exitwith {};
if (side player == west) then {
titleText ["911 Automatic Dispatch: The bank in Lakeside is being robbed!", "PLAIN"];
["The bank is getting robbed!",30,"blue"] call A3L_Fnc_Msg;
};
};

A3L_fnc_AlarmPHint = {
if (isDedicated) exitwith {};
if (side player == west) then {
titleText ["911 Automatic Dispatch: Jailbreak in progress, all units respond!", "PLAIN"];
["Jailbreak in progress, all units respond!",30,"blue"] call A3L_Fnc_Msg;
};
};

A3L_Fnc_BankAlarm = {
private ["_timer","_object"];
_object = _this select 1;
if (_object == bank) then {
if (bank getVariable "robbed") exitwith {};
bank setVariable ["robbed",true,true];
_timer = _this select 0;
[[_timer,bank],"A3L_Fnc_PlayAlarm",true,false] call BIS_fnc_MP;
[[],"A3L_fnc_AlarmHint",true,false] call BIS_fnc_MP; 
};

if (_object == prisondoor) then {
if (prisondoor getVariable "robbed") exitwith {};
prisondoor setVariable ["robbed",true,true];
_timer = _this select 0;
[[_timer,prisondoor],"A3L_Fnc_PlayAlarm",true,false] call BIS_fnc_MP;
[[],"A3L_fnc_AlarmPHint",true,false] call BIS_fnc_MP; 
};
};

A3L_Fnc_PlayAlarm = {
private ["_timer","_object"];
_timer = _this select 0;
_object = _this select 1;
if (!isDedicated) then { 
if (_object == bank) then {
[_timer] spawn {
sleep (_this select 0);
bank say "bankAlarm" ;
};
};

if (_object == prisondoor) then {
[_timer] spawn {
sleep (_this select 0);
prisondoor say "bankAlarm" ;
};
};		

};

[_timer,_object] spawn {
_timer = _this select 0;
_object = _this select 1;

if (isServer) exitwith {
if (_object == bank) then {
_veh = createVehicle ["A3L_Bomb", [8580.33,6614.36,1.45], [], 0, "CAN_COLLIDE"]; 
_veh setDir 98.588; 
_veh setpos (getpos _veh);

sleep _timer;

deletevehicle _veh;
"R_60mm_HE" createvehicle [8580.09,6614.73,0.00143623];

bank animate ["vault_door", 1]; 
bank animate ["vault_turn", 1];
sleep 300;
sleep 1200;
bank setVariable ["robbed",false,true];
stash1 setVariable ["robbed",false,true];
stash2 setVariable ["robbed",false,true];
stash3 setVariable ["robbed",false,true];
stash4 setVariable ["robbed",false,true];
};

if (_object == prisondoor) then {

_veh = createVehicle ["A3L_Bomb", [9623.14,10052.4,1.4], [], 0, "CAN_COLLIDE"]; 
_veh setDir 310.922; 
_veh setpos (getpos _veh);
sleep _timer;
deletevehicle _veh;
"R_60mm_HE" createvehicle [9623.14,10052.4,-1];
prisondoor animate ['maindoor1', 1.6]; 
prisondoor animate ['maindoor2', -1.6];
sleep 1600;
prisondoor setVariable ["robbed",false,true];

};

};

while {_timer > 0} do {

_object say "c4_buttons";
sleep 1;
_timer = _timer - 1;
};
};
};