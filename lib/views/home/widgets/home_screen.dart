import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../brands/view/brand_view.dart';
import '../../views.dart';
import '../../widgets/custom_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  final List<String> sliderImageList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
        leadingWidth: 110,
        title: '',
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.secondaryColor,
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
              ),
              const SizedBox(
                width: 4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery to',
                    style: textStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        'Home',
                        style: textStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          actions: [
            Icon(
              Icons.notifications_none,
              color: AppColors.secondaryColor,
            ),
            const SizedBox(
              width: 8,
            )
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  //search bar start
                  customSearchBar(
                    hintText: 'Search shops & products',
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.2)),
                  ),
                  //search bar end

                  const SizedBox(
                    height: 40,
                  ),

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

                  //CarouselSlider start
                  CarouselSlider(
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        // aspectRatio:  16 / 8,
                        viewportFraction: 1,
                        autoPlay: true,
                        reverse: false,
                        height: 175),
                    items: sliderImageList
                        .map(
                          (e) => ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              e,
                              height: size.height,
                              width: size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  //CarouselSlider end
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

                  //top offer item start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BrandView(),));
                          },
                          child: Container(
                            height: 170,
                              width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 1, color: Colors.grey.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/somerfield.jpg',
                                        fit: BoxFit.cover,
                                        height: 60,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Somerfield',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '30% ',
                                            style: textStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        const TextSpan(
                                          text: ' Off',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Offer for fruits and groceries',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BrandView(),));
                          },
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 1, color: Colors.grey.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/morrisons.png',
                                        fit: BoxFit.cover,
                                        height: 60,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Morrisons',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '40% ',
                                            style: textStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        const TextSpan(
                                          text: ' Off',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Offer for fruits and groceries',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BrandView(),));
                          },
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 1, color: Colors.grey.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/balkes.jpg',
                                        fit: BoxFit.cover,
                                        height: 60,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Balkes',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '40% ',
                                            style: textStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        const TextSpan(
                                          text: ' Off',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Offer for fruits and groceries',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BrandView(),));
                          },
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 1, color: Colors.grey.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/ecomarket.jpg',
                                        fit: BoxFit.cover,
                                        height: 60,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Eco Market',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '32% ',
                                            style: textStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        const TextSpan(
                                          text: ' Off',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Offer for fruits and groceries',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //top offer item end
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

            //newly added shop text start
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Newly Added Shops',
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
                  //newly added shop text start

                  //newly added item start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 100,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/1.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Elite Supermarket',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Grocery Store',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/2.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Samridhi Sweets',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Bakery',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/3.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Navya Fruits shop',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Fruits Shop',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            )
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/4.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Grofers Market',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Grocey Store',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                  //newly added item start
                ],
              ),
            ),
            //newly added shop text end


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
                  //popular stores text start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Stores',
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
                  //popular stores text end

                  //popular stores item start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/8.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Thommaanam Fruits',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Fruits Shop',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/9.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Family Supermarket',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Bakery',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          height: 105,
                                          width: 155,
                                          decoration: const BoxDecoration(
                                            image:  DecorationImage(
                                              image: AssetImage('assets/images/10.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Navya Bakery',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Bakery Shop',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          height: 105,
                                          width: 155,
                                          decoration: const BoxDecoration(
                                            image:  DecorationImage(
                                              image: AssetImage('assets/images/11.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Al AmeenButchery',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Butchery',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  //popular stores item start
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
                  //All Stores stores text start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Stores',
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
                  //All Stores text end

                  //All stores item start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/12.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Elite Supermarket',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Grocery Store',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 170,
                            width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        height: 105,
                                        width: 155,
                                        decoration: const BoxDecoration(
                                          image:  DecorationImage(
                                            image: AssetImage('assets/images/13.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  'Samridhi Sweets',
                                  style: textStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Bakery',
                                  style: textStyle(color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          height: 105,
                                          width: 155,
                                          decoration: const BoxDecoration(
                                            image:  DecorationImage(
                                              image: AssetImage('assets/images/14.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Navya Fruits shop',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Bakery ',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.2))),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Container(
                                          height: 105,
                                          width: 155,
                                          decoration: const BoxDecoration(
                                            image:  DecorationImage(
                                              image: AssetImage('assets/images/15.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Grofers Market',
                                    style: textStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Fruits Shop',
                                    style: textStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  //All stores item start
                ],
              ),
            ),


            const SizedBox(
              height: 30,
            ),


          ],
        ),
      ),
    );
  }
}

class CategoryClass {
  String title;
  String img;
  Color color;

  CategoryClass({required this.title, required this.img, required this.color});
}
