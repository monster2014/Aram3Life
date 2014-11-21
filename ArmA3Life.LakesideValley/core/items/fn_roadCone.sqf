private["_position","_roadcone"];
_roadCone = "RoadCone_L_F" createVehicle [0,0,0];
_roadCone setDir 90;
_roadCone setVariable["item","coneDeployed",true];
_roadCone attachTo[player,[0,5.5,0]];

life_action_roadConeDeploy = player addAction["Place",{if(!isNull life_roadcone) then {detach life_roadCone; life_roadCone = ObjNull;}; player removeAction life_action_roadConeDeploy; life_action_roadConeDeploy = nil;},"",999,false,false,"",'!isNull life_roadcone'];
life_roadcone = _roadCone;
waitUntil {isNull life_roadCone};
if(!isNil "life_action_roadConeDeploy") then {player removeAction life_action_roadConeDeploy;};
if(isNull _roadCone) exitWith {life_roadcone = ObjNull;};
_roadCone setPos [(getPos _roadCone select 0),(getPos _roadCone select 1),0];
_roadCone setDamage 1;
life_action_roadConePickup = player addAction["Pack Up",life_fnc_packupCone,"",0,false,false,"",
' _cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}'];
