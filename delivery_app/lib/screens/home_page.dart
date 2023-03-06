import 'package:delivery_app/constants/colors.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi there!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                      Text('Hungry Now?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),

                    ],
                  ),
                  FloatingActionButton(
                    backgroundColor: kGreen,
                    onPressed: () {},
                    child: const Icon(Icons.shopping_bag_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryCard('Burger', 'assets/images/burger.png'),
                    _buildCategoryCard('Pizza', 'assets/images/pizza.png'),
                    _buildCategoryCard('Pasta', 'assets/images/pasta.png'),
                    _buildCategoryCard('wrap', 'assets/images/wrap.png'),
                    _buildCategoryCard('Salad', 'assets/images/salade.png'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Items',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('View All',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kGreen,
                  ),),
                ],
              ),
              SizedBox(height: 20,),
             /* Container(
                height: 250,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // or popularFoods.length
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/dish1.png', // or popularFoods[index].image
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Name', // or popularFoods[index].name
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '40', // or '\$${popularFoods[index].price.toStringAsFixed(2)}'
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )*/
              Container(
                height: 250,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // or popularFoods.length
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/dish1.png', // or popularFoods[index].image
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Name', // or popularFoods[index].name
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '40', // or '\$${popularFoods[index].price.toStringAsFixed(2)}'
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),

        ),
      )
    );
  }
}
Widget _buildCategoryCard(String title, String imagePath) {
  return Container(
    width: 100,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    child: Card(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 50,
            /*width: double.infinity,*/
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}