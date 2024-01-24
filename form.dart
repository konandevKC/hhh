
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartifinapp/controllers/projet/form.dart';
import 'package:smartifinapp/my_app.dart';
import 'package:smartifinapp/controllers/projet/ajout.dart';


void main() {
  runApp(MyApp());
}




class Formscrenn extends StatefulWidget {
  
  String img;
  Formscrenn(this.img);


  @override
  State<Formscrenn > createState() => _FormscrennState();
}

class _FormscrennState extends State<Formscrenn > {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Contrôleurs pour récupérer les valeurs des champs de texte
  TextEditingController _nameController = TextEditingController();
  bool isChecked= false;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: EdgeInsets.only(
              top: 15,left: 15,right: 15, bottom: 15,
            ),
            child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                     IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
        
            Navigator.of(context).pop();
          },
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
                Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                  child: Text("A recuperer",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                 padding: EdgeInsets.only(top: 100,left: 30,right: 30,bottom:25, ),
               child: Container(
                height: 200,
                color: Colors.white,
                alignment: Alignment.bottomLeft,
                child: Column(children: [
                  Text(" Vous n'avez pas de supermarchés enregistrés"
                  ,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins',
       color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 30,),
                  Container( 
                     alignment: Alignment.topCenter,
                    height: 50,
                    width: 200,
                    
                 padding:EdgeInsets.all(1),
      decoration: BoxDecoration(
           color: Color(0xFF351BB6),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextButton(
       onPressed: (){
        ajoutForm(context);
       },
       child: Row(
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          Text('Ajouter',
          style: TextStyle(color: Colors.white),)
        ],
       ),

      ),

                  )
                ]),
               ),
                ),
              ],
            ),
          );
        
      
    
  }
  Future<dynamic> ajoutForm(mainContext){
return showModalBottomSheet(
  backgroundColor: Color(0xFFF5F3FF),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
  ),
  context: mainContext,
  builder: (mainContext) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(

   key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Champ de texte pour le nom
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nom du supermarché'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0), // Espacement entre les champs

              // Champ de texte pour l'e-mail
               TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Commune'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre commune';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0), // Espacement entre les champs 

            
             TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Mois'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer le mois';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color:Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    
                    ),
                    SizedBox(width:5,),
                    Text(
                      "Voulez-vous ouvrir un compte épargne \n pour ce poste de dépense?",
                       
                      style: TextStyle(fontSize: 15),
                      ),
                ],
              ),

              SizedBox(height: 16.0), 

          
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              onPressed: (){
                    Get.to(ListPro());
              },
            color: Colors.blue,
            child: Text("Ajouter",
             style:TextStyle(
              color: Colors.white,
             )),
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
              ),
            ),
            ],
        ),
      ),
      ),
    );
  },
);

  }

}