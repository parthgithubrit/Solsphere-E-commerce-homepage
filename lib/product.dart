import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String img;
  ProductCard(this.img);

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
       ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromRGBO(255, 224,244, 244),
            child: Stack(
              children: [
                 InkWell(
                  onTap: (){},
                  child: ClipRRect(borderRadius: BorderRadius.circular(30),
          child: Image.asset("assets/WhatsApp Image 2024-02-07 at 09.05.02_dc071776.jpg",
            width: MediaQuery.of(context).size.width/1.5,
            fit: BoxFit.cover,
          height: 190,),
                  ),

                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
          Padding(padding:EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(img,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.7),
                ),),
                SizedBox(height: 5),
                Text("\$300",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.7),
                  ),)
              ],
            ),
          ),)
      ],
    );
  }
}
