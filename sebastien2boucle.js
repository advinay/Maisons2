var Nightmare = require('nightmare');
var fs = require('fs');
var boucle=require ('./scrap')
// var nodemailer = require('nodemailer');
// var mandrillTransport = require('nodemailer-mandrill-transport');

// Keyword to searchs
// var search = encodeURIComponent("sennheiser momentum on ear");

var debut=1;
var fin=10;
var j=debut;
var fichier='resultats'+debut+'_'+fin+'.txt';

// while (j<(fin+1)){

//   boucle.scrap(j,fichier);
//   j++;

// }


var runNext=function (i) {
	if (i<(fin+1)) {

		boucle.scrap(i,fichier,nightmare);



	}




}



  


        

          











    



    