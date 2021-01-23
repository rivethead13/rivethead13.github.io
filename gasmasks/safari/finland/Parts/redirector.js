/* 
 This file was generated by Dashcode and is covered by the 
 license.txt included in the project.  You may edit this file, 
 however it is recommended to first turn off the Dashcode 
 code generator otherwise the changes will be lost.
 */

var DCProductURLs = {
    "mobileweb": "../mobile", 
    "desktop": "../safari"
};

var DCshowiPhone = RegExp(" AppleWebKit/").test(navigator.userAgent) && RegExp(" Mobile/").test(navigator.userAgent);

// allow looking at the Safari widget (desktop) product if ?p=desktop
var DCqs = window.location.search.substring(1);
if (DCshowiPhone && DCqs.length > 0) {
    var components = DCqs.split("&");
    for (var f = 0; f < components.length; f++) {
        if (components[f] == "p=desktop") {
            DCshowiPhone = false;
            break;
        }
    }
}

// redirect to the more appropriate product
if (DCProductURLs["mobileweb"] && DCshowiPhone) {
    window.location.href = DCProductURLs["mobileweb"];
}
