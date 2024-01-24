import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smartifinapp/constants/global_components.dart';

class ListPro extends StatefulWidget {
  const ListPro({super.key});

  @override
  State<ListPro> createState() => _ListProState();
}

class _ListProState extends State<ListPro> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
            
         leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Iconsax.element_3,
                    color: Colors.black,
                  ),
                ),
              ),
              title: const Center(
                child: Text(
                  'Supermarchés',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      color: Color(0xFF03041A),
                      fontWeight: FontWeight.w500),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Iconsax.message_notif),
                  onPressed:  () => launchURL('tinyurl.com',),
                  color: Colors.black,
                ),
              ],
              backgroundColor: Colors.white,
              elevation: 0,

    
    ),
    body:Container(


    )
  
            );
    
   
    
  }
}