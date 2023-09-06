import 'package:flutter/material.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {

  var foods =["Hamburger","Makarna", "Tost","Sushi","Baklava","Tavuk Izgara","Hamburger","Makarna"];

  int _selectedBottomNaviIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomNaviIndex = index;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("images/main_screen_image-removebg.png"),
        title: const Text("FOOD APP" ,
          style: TextStyle(
            fontSize: 40 , 
            color: Color.fromARGB(255, 128, 3, 45)),
            ),
        centerTitle: true,
            
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              

           const   Expanded(
                child:  Padding(
                  padding: EdgeInsets.only(top:10 , bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Yemek ara",
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ) ,),
                ),
              ),

            const   Expanded(
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Explore Menu" ,
                     textAlign: TextAlign.left,
                     style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),
                     )),
                ),
              ),

              
              Expanded(
                flex: 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foods.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width: 150,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("images/hamburger.jpeg"),
                              const SizedBox(height: 4),
                              Text(foods[index] ,style: const TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              ),


              const  Expanded(
                  child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Reccomendation" ,
                     textAlign: TextAlign.left,
                     style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),
                     )),
                              ),
                ),

              
                 Expanded(flex: 5,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   
                    crossAxisCount: 2,
                    childAspectRatio: 2/1,
                    
                    ),
                    itemCount: foods.length,
                   itemBuilder: (context,index){
                    return Card(
                      
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        
                        children: [
                      
                          Expanded(
                            child: Image.asset("images/hamburger.jpeg" ,/* height: 200,*/)),
                            
                           Text(foods[index] ,),
                            
                          const Row(
                            children: [
                           Text("180 TL" ,textAlign: TextAlign.left, ),
                           Spacer(),
                           Text("4.5"),
                           Icon(Icons.star , color: Color.fromARGB(1000, 244, 0, 77),),


                            ],
                          ),
                                        
                          
                        ],
                      ),
                    );
                   }
                ),
              ),

              
                
            ],
          ),


       
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            ),
        ],

          currentIndex: _selectedBottomNaviIndex,
          selectedItemColor: const Color.fromARGB(1000, 241, 0, 77),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
    );
  }
}


