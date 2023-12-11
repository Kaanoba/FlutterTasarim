import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print(ekranYuksekligi);
    print(ekranGenisligi);

    var d = AppLocalizations.of(context);

    return Scaffold(  // sayfa altyapısı için Scaffold
      appBar: AppBar(
        title: Text('Pizza',
          style: TextStyle(
            color: yaziRenk,
            fontSize: 25,
            fontFamily: 'Pacifico'
          ),
        ),
          backgroundColor: anaRenk,
          centerTitle: true,
      ),
      body:  Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d!.pizzaBaslik,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.red

            ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Image.asset('resimler/pngwing.com.png',width: 250, height: 200,),
        ),
            Padding(
             padding: EdgeInsets.only(top: 1),
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.pizzaBaslik),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),

              ],
                       ),
             
           ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(fontSize: 22,
                    color: yaziRenk2,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(
                      fontSize: 22,
                      color: anaRenk,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(
                    fontSize: 22,color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('\$ 5.98', style: TextStyle(fontSize: 44,color: anaRenk,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(width: 200, height: 50,
                child: TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  ))
                  )
                  , child: Text('Add to Card',style: TextStyle(
                  color: yaziRenk,
                    fontSize: 22
                ),),),
              )
            ],
          )
          
        ],
        
      )
      
        
    );
  }
}


class Chip extends StatelessWidget {
   String icerik;


   Chip({required this.icerik });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
    style: TextButton.styleFrom(backgroundColor: anaRenk),
    child: Text(icerik,style: TextStyle(color: yaziRenk),)
    );
  }
}

