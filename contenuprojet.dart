import 'package:flutter/material.dart';
import 'package:smartifinapp/controllers/projet/form.dart';
import 'projet.dart';
class Contenu extends StatefulWidget {
  const Contenu({super.key});

  @override
  State<Contenu> createState() => _ContenuState();
}

class _ContenuState extends State<Contenu> {
  var titleList = [
    "Supermarchés",
    "Marchés",
    "Shopping",
    "Mariage",
    "Anniversaire",
    "Baptême",
    "Voyage",
    "Autres",
  ];
  // Description List Here
  var descList = [
    "250.000",
    "100.000",
    "255.000",
    "100.000",
    "100.000",
    "255.00",
    "100.000",
    "255.000",
  ];
  // Image Name List Here
  var imgList = [
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",
    "assets/icon/gift.png",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 15,left: 15,right: 15, bottom: 15,
            ),
            child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                    ),

                    Icon(Icons.message_sharp,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Text("Projets",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    
                  ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            itemCount: imgList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2/3,
                crossAxisCount: 2,
             mainAxisSpacing: 10,
                crossAxisSpacing:10 ,
              ),
              itemBuilder:(context,index) {
return InkWell(
  onTap: (){
    Navigator.push(context, 
    MaterialPageRoute(
      builder: (context)=>
      Formscrenn(imgList[index]),
    )
    );
  
  },
  child: Container(
  height: 60,
  width: 60,
    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Color(0xFFF5F3FF),
    ),
    child: Column(
      children: [
Padding(
  padding: EdgeInsets.all(10),
child: Image.asset(imgList[index],
),
),   SizedBox(height: 20,),
Text(titleList[index],
style: TextStyle(fontSize: 16,
fontWeight: FontWeight.w500,
fontFamily:'Poppins',
color: Colors.black
),
),
SizedBox(height: 20,),
Text(descList[index],
style: TextStyle(fontSize: 15,
fontWeight: FontWeight.w500,
fontFamily:'Poppins',
color: Colors.black.withOpacity(0.5),
),
),
   

      ],
    ),
  ),
     

  


);
              }
          ),
       

        ],
      ),
    );
  }
}
