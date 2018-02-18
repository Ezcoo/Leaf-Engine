/*
	author: Net_2
	description: none
	returns: nothing
*/

_commonFunctions =
[
];

_serverFunctions =
[
];


    // IMPORTANT: determine which mission Leaf Engine is running
    // Note to self: refactor later to proper config
MISSION_PREFIX = "REVOLUTION";


    // Compile common functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _commonFunctions;


    // Compile server functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _serverFunctions;


    // Delegate actual server initialization to Leaf Engine core
[] execVM "Core\Server\Init\initServer.sqf";