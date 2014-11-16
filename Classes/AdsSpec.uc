Class AdsSpec extends MessagingSpectator;

function InitPlayerReplicationInfo()
{
    Super.InitPlayerReplicationInfo();
    
    PlayerReplicationInfo.PlayerName = "Host";
    //PlayerReplicationInfo.CharacterName = None;
    PlayerReplicationInfo.bAdmin = True; // hide from kick list    
}

function MsgSend(string bmsg)
{
    Level.Game.Broadcast(Self, bmsg, 'Say');
}
