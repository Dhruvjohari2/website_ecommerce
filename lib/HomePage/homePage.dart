import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'All Categories';
  var items = [
    'All Categories',
    'Alexa Skills',
    'Amazon Devices',
    'Amazon Fashion',
    'Amazon Fresh',
    'Amazon Fresh Meat',
    'Amazon Pharmacy',
    'Appliances',
    'Apps & Games',
    'Audible Audiobooks',
    'Baby',
    'Beauty',
    'Books',
    'Car & Motorbike',
    'Clothing & Accessories',
    'Collectibles',
    'Computers & Accessories'
  ];
  List types = [
    "Fresh",
    "Amazon mini TV",
    "Sell",
    "Amazon Pay",
    "Gift Cards",
    "Buy Again",
    "Gift Ideas",
    "Household",
    "Health & personal Care",
    "Coupons",
    "AmazonBasics"
  ];
  List boxName = ['shoes', 'Purse', 'KeyChain', 'KeyChain'];
  List name = ["Earphones", "POCO F23", "FootWear", "ASian Shoes", "AquaGuard", "CarCharger", "Shoes", "Wood", "Smart Watches"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff232F3F),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/icons/amazonlogo.png', width: 100, height: 75),
            const Text('.in', style: TextStyle(color: Colors.white, fontSize: 15)),
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Icon(Icons.pin_drop_outlined, color: Colors.white),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Text('Delivery To', style: TextStyle(color: Colors.grey[300], fontSize: 12))),
                        const Text('Update Location', style: TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width < 500 ? screenWidth * 0.2 : screenWidth * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color:Colors.white,width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      // border: Border.all(color:Colors.white,width: 1),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        value: dropdownvalue,
                        icon: const Icon(Icons.arrow_drop_down_outlined),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(fontSize: 15),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width * 0.27,
                      // height: MediaQuery.of(context).size.height * 0.09,
                      child: const Text(
                        'Search Amazon.in',
                        style: TextStyle(fontSize: 15),
                      )
                      // child: TextField(
                      //   decoration: InputDecoration(
                      //     // border: OutlineInputBorder(),
                      //     labelText: 'Search Amazon.in',
                      //   ),
                      // ),
                      ),
                  Container(
                    alignment: Alignment.center,
                    // color:Colors.black,
                    // padding: EdgeInsets.symmetric(vertical: 5.5),
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
                    ),
                    width: MediaQuery.of(context).size.width * 0.035,
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset('assets/icons/india.png', width: 30, height: 30),
                    const Text(' EN', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                )),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // width: screenWidth * 0.5,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello, Sign in', style: TextStyle(color: Colors.white, fontSize: 12)),
                    Text('Accounts & Lists', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // width: MediaQuery.of(context).size.width * 0.1,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Returns', style: TextStyle(color: Colors.white, fontSize: 12)),
                  Text('& Orders', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            const Row(
              children: [
                Icon(Icons.shopping_cart_outlined, color: Colors.white),
                Text('Cart', style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black12,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blueGrey,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Row(
                  children: [
                    const Row(
                      children: [
                        // Icon(
                        //   Icons.line_weight,
                        //   color: Colors.white,
                        //   size: 20,
                        // ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'All',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: types.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (e, index) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(),
                            child: Text(
                              types[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // const Text(
                    //   'New Launches from Mobile, Electronics & more |Shop Now',
                    //   style: TextStyle(color: Colors.white, fontSize: 12),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1.1,
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index, int realIndex) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Image.asset('assets/images/image ($index).jpg', fit: BoxFit.cover),
                        );
                      },
                      options: CarouselOptions(
                        // height: MediaQuery.of(context).size.height * 0.7, // Adjust the height as needed
                        aspectRatio: 23 / 9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 9),
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          // Do something when the page changes
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height * 0.8,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.55,
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(top: 10),
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'Appliances for your home | Up to 55% off',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // color: Colors.purple,
                                              margin: const EdgeInsets.all(5),
                                              width: MediaQuery.of(context).size.width * 0.25,
                                              height: MediaQuery.of(context).size.height * 0.4,
                                              child: GridView.builder(
                                                  scrollDirection: Axis.vertical,
                                                  itemCount: 4,
                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisSpacing: 5,
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 125,
                                                    crossAxisSpacing: 5,
                                                  ),
                                                  itemBuilder: (e, index) {
                                                    return Container(
                                                      alignment: Alignment.bottomLeft,
                                                      decoration: BoxDecoration(
                                                        // color: Colors.red,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            'assets/images/home$index.jpg',
                                                          ),
                                                          fit: BoxFit.contain,
                                                        ),
                                                        // color: Colors.green,
                                                      ),
                                                      child: Text(boxName[index]),
                                                    );
                                                  }),
                                            ),
                                            Container(
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'See More',
                                                style: TextStyle(
                                                  color: Colors.blueAccent
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.55,
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(top: 10),
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'Categories to explore',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // color: Colors.purple,
                                              margin: const EdgeInsets.all(5),
                                              width: MediaQuery.of(context).size.width * 0.25,
                                              height: MediaQuery.of(context).size.height * 0.4,
                                              child: GridView.builder(
                                                  scrollDirection: Axis.vertical,
                                                  itemCount: 4,
                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisSpacing: 5,
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 125,
                                                    crossAxisSpacing: 5
                                                  ),
                                                  itemBuilder: (e, index) {
                                                    return Container(
                                                      alignment: Alignment.bottomLeft,
                                                      decoration: BoxDecoration(
                                                        // color: Colors.red,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            'assets/images/0$index.jpg',
                                                          ),
                                                          fit: BoxFit.contain
                                                        ),

                                                      ),
                                                      child: Text(boxName[index]),
                                                    );
                                                  }),
                                            ),
                                            Container(
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'See More',
                                                style: TextStyle(
                                                  color: Colors.blueAccent
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.55,
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(top: 10),
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'Footwear & handbags',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // color: Colors.purple,
                                              margin: const EdgeInsets.all(5),
                                              width: MediaQuery.of(context).size.width * 0.25,
                                              height: MediaQuery.of(context).size.height * 0.4,
                                              child: GridView.builder(
                                                  scrollDirection: Axis.vertical,
                                                  itemCount: 4,
                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisSpacing: 5,
                                                    crossAxisCount: 2,
                                                    mainAxisExtent: 125,
                                                    crossAxisSpacing: 5
                                                  ),
                                                  itemBuilder: (e, index) {
                                                    return Container(
                                                      alignment: Alignment.bottomLeft,
                                                      decoration: BoxDecoration(
                                                        // color: Colors.red,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            'assets/images/image$index.jpg',
                                                          ),
                                                          fit: BoxFit.contain
                                                        ),

                                                      ),
                                                      child: Text(boxName[index]),
                                                    );
                                                  }),
                                            ),
                                            Container(
                                              // color: Colors.red,
                                              width: double.infinity,
                                              child: const Text(
                                                'See More',
                                                style: TextStyle(
                                                  color: Colors.blueAccent
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.25,
                                        height: MediaQuery.of(context).size.height * 0.6,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: MediaQuery.of(context).size.height * 0.25,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: MediaQuery.of(context).size.width * 0.13,
                                                    height: MediaQuery.of(context).size.height * 0.2,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets.only(top: 12, right: 2, left: 5),
                                                          width: MediaQuery.of(context).size.width * 0.1,
                                                          height: MediaQuery.of(context).size.height * 0.1,
                                                          child: const Text(
                                                            'Save up to 28% with Gst Invoice',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: double.infinity,
                                                          padding: const EdgeInsets.only(left: 12),
                                                          alignment: Alignment.centerLeft,
                                                          child: const Text(
                                                            'Register now',
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    width: MediaQuery.of(context).size.width * 0.07,
                                                    height: MediaQuery.of(context).size.height * 0.05,
                                                    child: Image.asset(
                                                      'assets/images/images1.jpg',
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: double.infinity,
                                              height: MediaQuery.of(context).size.height * 0.3,
                                              child: Image.asset('assets/images/imag0.jpg'),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/0image0.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                            alignment: Alignment.centerLeft,
                            // color: Colors.red,
                            width: double.infinity,
                            child: const Text(
                              'Up to 60% off | Cleaning supplies, power tools & more',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            // color: Colors.purple,
                            padding: const EdgeInsets.all(10),
                            // margin: const EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 4,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  crossAxisCount: 2,
                                  mainAxisExtent: 160,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (e, index) {
                                  return Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/image$index.jpg',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                      // color: Colors.green,
                                    ),
                                    child: Text(boxName[index]),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            // color: Colors.red,
                            width: double.infinity,
                            child: const Text(
                              'Shop & Pay | Earn rewards daily',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            // color: Colors.purple,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 4,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  crossAxisCount: 2,
                                  mainAxisExtent: 160,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (e, index) {
                                  return Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/image$index.jpg',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                      // color: Colors.green,
                                    ),
                                    child: Text(boxName[index]),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                // width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      // color:Colors.red,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: const Text(
                        'Today\'s Deals',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (e, index) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    width: MediaQuery.of(context).size.width * 0.17,
                                    height: MediaQuery.of(context).size.height * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                    ),
                                    child: Image.asset('assets/images/row$index.jpg'),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                        child: const Text(
                                          'Up to 78% off',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text('Deal of the Day'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.08,
                                    alignment: Alignment.center,
                                    child: Text("${name[index]}"),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.black,
                child: const Text(
                  '©2024, website.com, Inc. or its affiliates',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
