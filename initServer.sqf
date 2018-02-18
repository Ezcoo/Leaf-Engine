/*
	author: Net_2
	description: none
	returns: nothing
*/

_commonFunctions = [
];

_serverFunctions = [
];


    // IMPORTANT: determine which mission Leaf Engine is running
MISSION_PREFIX = "REVOLUTION";


    // Compile common functions
{
    call compile preprocessFileLineNumbers _x;
} forEach _commonFunctions;


    // Compile server functions
{
    call compile preprocessFileLineNumbers _x;
} forEach _serverFunctions;


    // Delegate actual server initialization to Leaf Engine core
[] execVM "Core\Server\Init\initServer.sqf";