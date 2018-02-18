/*
	author: Net_2
	description: none
	returns: nothing
*/

_clientFunctions = [
    "Core\Client\initPlayerJIP.sqf"
];

    // Compile client functions - note that common functions have been initialized in initServer.sqf already
    // - see BIKI documentation about initialization order
{
    call compile preprocessFileLineNumbers _x;
} forEach _clientFunctions;

[] call CORE_client_initClient;

hint "Juopale-justice ja Etanoli-Ezcoo rilluttelivat Georgetownin kapakassa viime yönä";

    //Remember to add remoteExecCall from client to server to activate JIP on server