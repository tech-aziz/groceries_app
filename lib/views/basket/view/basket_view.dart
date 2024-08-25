import 'package:flutter/material.dart';
import '../../../config/colors/colors.dart';
import '../../../config/components/text_style.dart';
import '../../widgets/custom_appbar.dart';

class BasketView extends StatefulWidget {
  const BasketView({super.key});

  @override
  State<BasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<BasketView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
        title: 'Basket',
        style: textStyle(fontWeight: FontWeight.bold),
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
        child: Column(
          children: [
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.secondaryColor,
                        ),
                        const SizedBox(
                          width: 12,
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
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/somerfield.jpg',
                          height: 40,
                        ),
                        Text(
                          'SomerField',
                          style: textStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),

            const SizedBox(
              height: 10,
            ),
            //basket text start
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items in the Basket',
                    style: textStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            //basket text end

            //basket item start
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Image.asset(
                'assets/images/tomato.jpg',
                height: 45,
              ),
              title: Text(
                'Fresh Tomatto',
                style: textStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '\$1.33 /kg',
                style: textStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Container(
                alignment: Alignment.bottomCenter,
                width: 90,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
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
                    ],
                  ),
                ),
              ),
            ),
            //basket item end
            const SizedBox(
              height: 5,
            ),
            Divider(
              indent: 87,
              endIndent: 12,
              height: 1,
              color: Colors.grey.withOpacity(0.4),
            ),

            const SizedBox(
              height: 5,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Image.asset(
                'assets/images/banana.jpg',
                height: 40,
              ),
              title: Text(
                'Fresh Tomatto',
                style: textStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '\$1.33 /kg',
                style: textStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Container(
                alignment: Alignment.bottomCenter,
                width: 90,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
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
                    ],
                  ),
                ),
              ),
            ),
            //basket item end
            const SizedBox(
              height: 5,
            ),
            Divider(
              indent: 87,
              endIndent: 12,
              height: 1,
              color: Colors.grey.withOpacity(0.4),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Image.asset(
                'assets/images/tamarind.jpg',
                height: 70,
              ),
              title: Text(
                'Fresh Tomatto',
                style: textStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '\$1.33 /kg',
                style: textStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Container(
                alignment: Alignment.bottomCenter,
                width: 90,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
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
                        '5',
                        style: textStyle(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
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
                    ],
                  ),
                ),
              ),
            ),
            //basket item end
            const SizedBox(
              height: 5,
            ),
            Divider(
              indent: 87,
              endIndent: 12,
              height: 1,
              color: Colors.grey.withOpacity(0.4),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Promo code',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Promo code',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/somerfield.jpg',
                          height: 40,
                        ),
                        Text(
                          'SomerField',
                          style: textStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text('Totall',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promo code',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        const Text(
                          '\$1.33 /kg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taxes',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        const Text(
                          '\$2.39 /kg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                        const Text(
                          '\$1.00 /kg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          '\$14.69 /kg',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text('Delivery to',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Change to',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.blue,
                                )
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Flat 7 118',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Blackhouse Grove',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'London W6 7HB',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Add special notes',
                          hintStyle: textStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 50,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              'Checkout',
              style: textStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
