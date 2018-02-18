/*
	author: Net_2
	description: none
	returns: nothing
*/

_clientFunctions = [
];

    // Compile client functions - note that common functions have been initialized in initServer.sqf already
    // - see BIKI documentation about initialization order
{
    call compile preprocessFileLineNumbers _x;
} forEach _clientFunctions;


    // Delegate the player initialization to Leaf Engine core
    // For the sake of simplicity, all joining clients are handled like JIP
[] execVM "Core\Client\Init\initPlayerJIP.sqf";

hint "Juopale-justice ja Etanoli-Ezcoo rilluttelivat Georgetownin kapakassa viime yönä";