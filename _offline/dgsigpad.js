
// this note from rental_records example.. see passenger.js

var dgoptions = {
  bgColour : '#F0FEEF'
  , drawOnly : true
};

$( document ).ready(function(){
  // if sigpad is not in a cocoon nested form.. 
  // also, without this, it won't show sigpad when edit is pressed. 2016-06-24.  
  $('.sigPad').signaturePad(dgoptions);
 });

 

