console.log("ShareWiz overlay script running");
chrome.extension.sendMessage({enabled: "enabled"}, function(response) {
  // check the response
  if(response.enabled == "true") {
    console.log("ShareWiz Enabled: injecting overlay");
    $('body').append('<div id="sharewizFooter">THIS IS THE DIV </div>');
  }
});     