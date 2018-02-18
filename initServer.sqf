/*
	author: Net_2
	description: none
	returns: nothing
*/

_commonFunctions = [
    "Core\Common\something.sqf"
];

_serverFunctions = [
    "Core\Server\initServer.sqf"
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


// Call just compiled server init function
[] call CORE_server_initServer;