private ["_player","_uid","_query","_tickTime","_queryResult","_name"];

_player = _this select 0;
_uid = getplayerUID _player;
_query = format["SELECT uid,name FROM usertable WHERE uid='%1'",_uid];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if (count _queryResult == 0) exitwith {
A3L_isWL = false;
(owner _player) publicVariableClient "A3L_isWL";
};

A3L_isWL = true;
(owner _player) publicVariableClient "A3L_isWL";titleText ["Checking whitelist status...", "BLACK"];
waituntil {!isNil "A3L_isWL"};