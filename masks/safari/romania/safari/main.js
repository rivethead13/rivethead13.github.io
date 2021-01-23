/* 
 This file was generated by Dashcode.  
 You may edit this file to customize your widget or web page 
 according to the license.txt file included in the project.
 */

//
// Function: load()
// Called by HTML body element's onload event when the web application is ready to start
//
function load()
{
    dashcode.setupParts();
}

//
// Function: itemDescription()
// This method is a value transformer that returns the appropriate description of the selected item in the list
//
itemDescription = Class.create(DC.ValueTransformer,{
	transformedValue: function(value){
        return "The scenery in " + value + " is amazing this time of year!";        
	}
});