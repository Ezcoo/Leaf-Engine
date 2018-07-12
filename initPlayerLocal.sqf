/*
	author: Net_2
	description: none
	returns: nothing
*/

_commonFunctions =
[
];

_clientFunctions =
[
];


    // Compile common functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _commonFunctions;

    // Compile client functions
{
    call compileFinal preprocessFileLineNumbers _x;
} forEach _clientFunctions;


    // Delegate the player initialization to Leaf Engine core
    // For the sake of simplicity, all joining clients are handled like JIP
_initPlayerJIP = [] execVM "Core\Client\Init\initPlayerJIP.sqf";
waitUntil { scriptDone _initPlayerJIP };

hint "Player initialization complete!";