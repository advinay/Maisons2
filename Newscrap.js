var Nightmare = require('nightmare');
var fs = require('fs');


var debut=11;
var fin=15;

var fichier='resultats'+debut+'_'+fin+'.txt';

var runNext = function(i) {


  if (i<(fin+1)) {

// Bloc fixe //////////////////

  new Nightmare()
  .goto('http://www.maison-objet.com/fr/paris/exposants?q=&sector=0&country=0&sort=10&page='+i)
  .evaluate(function() {
    // NAVIGATEUR
    var urls = [];
    $('.b_title-with-image a').each(function(i, item) {
      urls.push("http://www.maison-objet.com"+$(item).attr('href'));
    });
    return urls;
  }, function(urls) {
    resultsUrls = urls;
  })


    .run(function(err, nightmare){
    if (err) { console.log(err); }
  

            for (var i = 0; i < resultsUrls.length; i++){
          
              nightmare
              .goto(resultsUrls[i])
              .wait(1000)
              .evaluate(function() {

              var contacts=$('.exhibitor-contact a')[1].href;
              console.log(contacts);
              return contacts;
              }, function(contacts){
                // emails.push(contacts);
                console.log(contacts);
                fs.appendFile(fichier, contacts+'\n', function (err) {
                if (err) throw err;
              // console.log('It\'s saved!');

              });

            })

                .run(function(err, nightmare){
                if (err) { console.log(err); }

              });
        }

        runNext(i+1);




      });


////////////// FIN BLOC FIXE //////////////////

  }

}
runNext(debut);


  


