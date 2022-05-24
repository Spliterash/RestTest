global function addCallback

//
void function AfterRequestCompleteCallback(/* can be null */table props, string response){
    Chat_ServerBroadcast(response)

}

ClServer_MessageStruct function callbacktest(ClServer_MessageStruct message) {
    string response = NSMakePostRequest("https://webhook.site/2ff69447-3039-4dcc-b7d6-a90d10e8cca3", message.message/*, table ,AfterRequestCompleteCallback */)
    // The request is at least fulfilled. But at what cost
    Chat_ServerBroadcast(response)

    return message;
}

void function addCallback() {
    AddCallback_OnReceivedSayTextMessage( callbacktest )
}