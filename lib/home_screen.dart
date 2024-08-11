import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/product.dart';

class HomeScreen extends StatelessWidget {
  List catlist = [
    "ALL",
    "Brand1",
    "Brand2",
    "brand3",
    "brand4"
  ];

  List imgList =[
    "Shoes1",
    "Shoes2",
    "Shoes3",
    "Shoes4",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20,right:15,left: 10),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Container(
                    width: MediaQuery.of(context).size.width/1.4,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Find your product",style:TextStyle(color: Colors.white) ,),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,size: 30,color: Colors.white,)
                          
                      
                    ),
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.notifications_none_outlined,size: 30,
                        color: Colors.white
                      ,),
                  ),
                  
                ],
              ),
            ),
            Container(
            margin: EdgeInsets.only(right: 10,top: 30,left: 10),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/background.jpg",
                width: MediaQuery.of(context).size.width/0.3,
                fit: BoxFit.contain,),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i=0;i < catlist.length;i++)
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                      decoration: BoxDecoration(
                        color: catlist[i] == "ALL"
                            ?Colors.grey[500]
                            :Colors.grey[500],
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        catlist[i],
                        style: TextStyle(
                          fontSize: 16,
                          color: catlist[i] == "ALL"
                            ?Colors.white
                              :Colors.white

                        ),
                      ),
                    )
                ],
              ),
            ),
            GridView.builder(
                physics:NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.width -30 -15)/(2*258),
                  mainAxisSpacing: 45,
                  crossAxisSpacing: 15,
                ),
              itemCount: imgList.length,
              itemBuilder: (_,i){
                  if(i%2==0){
                    return ProductCard(imgList[i]);
              }
                  return OverflowBox(
                    child: ProductCard(imgList[i]),
                  );
              },
            ),


          ],),
        ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index){},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart_fill),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(Icons.camera,color: Colors.white,),
        onPressed: (){},
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,






    );
  }
}
