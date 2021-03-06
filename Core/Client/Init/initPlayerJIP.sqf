/*
	author: net2
	description: none
	returns: nothing
*/

    // HC will probably be quite inactive player, so it doesn't need player's functionality
if (hasInterface) then
{
        // Initialize local variables and scripts for player
    _initPlayerLocal = [] execVM (missionNamespace getVariable format ["Modules\%1\Init\Client\initPlayer.sqf", MISSION_PREFIX]);
    waitUntil { scriptDone _initPlayerLocal };

        // Initialize JIP player on server
    [] remoteExec [(format ["Modules\%1\Init\Server\initPlayerServer.sqf", MISSION_PREFIX]), 2];

} else
{

        // Make sure the client is HC, just a double check just in case
    if (!isServer) then
    {
            // Initialize HC
        _initHC = [] execVM "CORE\Client\Init\fnc\initHCJIP.sqf";
        waitUntil { scriptDone _initHC };
    };

};
