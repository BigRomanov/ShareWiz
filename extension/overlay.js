console.log("ShareWiz overlay script running");
chrome.extension.sendMessage({enabled: "enabled"}, function(response) {
  // check the response
  if(response.enabled == "true") { // inject overlay if necessary
    console.log("ShareWiz Enabled: injecting overlay");

    $.get("http://10.0.0.4:3000/footer.html", function(data){
      console.log("Are we here?");
      $('body').html(data);
    });

    // var xhr = new XMLHttpRequest();
    // xhr.open("GET", "http://api.example.com/data.json", true);
    // xhr.onreadystatechange = function() {
    // if (xhr.readyState == 4) {
    // // WARNING! Might be evaluating an evil script!
    // var resp = eval("(" + xhr.responseText + ")");
  
    //   }
    // }
    // xhr.send();

    // $('body').append('<div id="sharewizFooter">\
    //     <input type="text" name="new_tag"> \
    //   </div>');
  }
});     