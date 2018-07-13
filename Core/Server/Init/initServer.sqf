/*
	author: net2
	description: none
	returns: nothing
*/

_arrScriptsServer = [
// Add scripts here
"Modules\COMMANDCONQUER\Scripts\xxxx.sqf"
];


if (isServer) then {
    {
        _handle = [] execVM _x;
    } forEach _arrScriptsServer;
};


[] execVM (format ["Modules\%1\Init\Server\initServer.sqf", MISSION_PREFIX]);
