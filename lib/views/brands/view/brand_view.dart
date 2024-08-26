import 'package:flutter/material.dart';
import '../../../../config/colors/colors.dart';
import '../../../../config/components/text_style.dart';
import '../../basket/view/basket_view.dart';
import '../../home/widgets/home_screen.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_searchbar.dart';

class BrandView extends StatefulWidget {
  const BrandView({super.key});

  @override
  State<BrandView> createState() => _BrandViewState();
}

class _BrandViewState extends State<BrandView> {
  List<CategoryClass> categoryList = [
    CategoryClass(
        title: 'Vegitables',
        img: 'assets/icons/vegetable.png',
        color: Colors.green.withOpacity(0.2)),
    CategoryClass(
        title: 'Fruits',
        img: 'assets/icons/fruits.png',
        color: Colors.red.withOpacity(0.2)),
    CategoryClass(
        title: 'Sea Food',
        img: 'assets/icons/sea_food.png',
        color: Colors.orangeAccent.withOpacity(0.2)),
    CategoryClass(
        title: 'Chicken',
        img: 'assets/icons/chicken.png',
        color: Colors.amber.withOpacity(0.2)),
    CategoryClass(
        title: 'Cake',
        img: 'assets/icons/cake.png',
        color: Colors.redAccent.withOpacity(0.2))
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
        title: '',
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  // brand info start
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/somerfield.jpg',
                              fit: BoxFit.cover,
                              // height: 120,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Somerfield',
                            style: textStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            '1.6 km. Alaska',
                            style: textStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Open  ',
                                    style: textStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                                const TextSpan(
                                  text: 'Closes at 09:30 PM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // brand info end
                  const SizedBox(
                    height: 15,
                  ),
                  //search bar start
                  customSearchBar(
                    hintText: 'Search products',
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.2)),
                  ),
                  //search bar end
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  //top offer text start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top offers',
                        style: textStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          print('View all will be called');
                        },
                        child: IconButton(
                            onPressed: () {},
                            icon: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: textStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 18,
                                  color: Colors.black.withOpacity(0.5),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  //top offer text end
                  const SizedBox(
                    height: 10,
                  ),
                  //top offer item start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/tomato.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fresh Tomatto',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$3.00 /kg',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.33 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '20% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/carrot.png',
                                              fit: BoxFit.cover,
                                              height: 125,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Carrot',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$3.50 /kg',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.25 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '17% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //top offer item end
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/chicken.jpg',
                                              fit: BoxFit.cover,
                                              height: 135,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chicken Dressed',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$5.35 /kg',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$4.25 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '11% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey.withOpacity(0.3)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.blue),
                                        child: const Center(
                                            child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        )),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '2',
                                        style: textStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.blue),
                                        child: const Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/banana.jpg',
                                              fit: BoxFit.cover,
                                              height: 95,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Banana',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$3.99 /kg',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$2.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '17% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  //category text start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop by Category',
                        style: textStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          print('View all will be called');
                        },
                        child: IconButton(
                            onPressed: () {},
                            icon: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: textStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 18,
                                  color: Colors.black.withOpacity(0.5),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  //category text end
                  const SizedBox(
                    height: 10,
                  ),
                  //category item start
                  SizedBox(
                    height: 100,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final itemWidth = constraints.maxWidth /
                            categoryList.length; // Equal space for each item
                        return ListView.builder(
                          itemCount: categoryList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final data = categoryList[index];
                            return SizedBox(
                              width: itemWidth, // Assign calculated width
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 62,
                                    width: 62,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: data.color.withOpacity(
                                          0.2), // This color should now be visible
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        data.img.toString(),
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    data.title.toString(),
                                    style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  //category item end
                ],
              ),
            ),

            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            const SizedBox(
              height: 20,
            ),

            // All products start
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/tomato.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fresh Tomatto',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.33 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '20% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/carrot.png',
                                              fit: BoxFit.cover,
                                              height: 125,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Carrot',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.25 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '17% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/chicken.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chicken Dressed',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '\$4.38 /kg',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$4.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                child: Container(
                                  height: 23,
                                  width: 65,
                                  decoration: const BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(-12),
                                          bottomRight: Radius.circular(-12))),
                                  child: Center(
                                    child: Text(
                                      '20% Off',
                                      style: textStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/apple.png',
                                              fit: BoxFit.cover,
                                              height: 125,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Apple',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$4.99 /kg',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/tamarind.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Tamarind',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$3.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/avo.jpg',
                                              fit: BoxFit.cover,
                                              height: 90,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Avocado',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$6.45 /kg',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/grapes.png',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Grapes',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$4.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/banana.jpg',
                                              fit: BoxFit.cover,
                                              height: 90,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Banana',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.99 /kg',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/red_tea.jpg',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Red Label Tea',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$3.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/avo.jpg',
                                              fit: BoxFit.cover,
                                              height: 90,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Avocado',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$6.45 /kg',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/grapes.png',
                                              fit: BoxFit.cover,
                                              height: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Grapes',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$4.99 ',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const BrandView(),
                            ));
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.grey.withOpacity(0.2))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/apple.png',
                                              fit: BoxFit.cover,
                                              height: 90,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Apple',
                                              style: textStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '',
                                              style: textStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: '\$1.99 /kg',
                                                      style: textStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  const TextSpan(
                                                    text: '/kg',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Text(
              '\$4.38 /kg',
              style: textStyle(color: Colors.grey, fontSize: 15),
            ),
            // All products end
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 50,
          width: size.width,
          decoration: const BoxDecoration(color: Colors.blue),
          child: Container(
              decoration: const BoxDecoration(color: Colors.blue),
              height: 50,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$5.55',
                          style: textStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          '1 item',
                          style: textStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BasketView(),
                        ));
                      },
                      icon: Row(
                        children: [
                          Text(
                            'View Basket',
                            style: textStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                      // )
                    )
                  ],
                ),
              )
              ),
        ),
      ),
    );
  }
}
