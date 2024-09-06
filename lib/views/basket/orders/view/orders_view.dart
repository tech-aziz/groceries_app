import 'package:flutter/material.dart';

import '../../../../config/colors/colors.dart';
import '../../../../config/components/text_style.dart';
import '../../../widgets/custom_appbar.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
        title: 'Orders',
        style: textStyle(fontWeight: FontWeight.bold),
        centerTitle: false,
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
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/somerfield.jpg',
                      height: 50,
                    ),
                    title: const Text(
                      'Somerfield',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '23 jul 2021 at 10:37 am',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  )),
            ),
            Container(
              height: .5,
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
                  RichText(
                    text: const TextSpan(
                      text: '3 items for ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$172.75', // Second part of the text
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
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
                '\$1.33 x 1',
                style: textStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //basket item end
            const SizedBox(
              height: 5,
            ),
            Divider(
              indent: 87,
              endIndent: 12,
              height: .6,
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
                'Banana',
                style: textStyle(
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '\$2.99 x 2',
                style: textStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            //basket item end
            Container(
              height: .5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            //basket item end
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View all items',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
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
                        Text('Deliver to',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Flat 7 118',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    Text(
                      'Blackhorse Grove',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    Text(
                      'London W6 7HB',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Add special notes',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      'Lorem imsum dolar sit amet, consectetur adipiscing elit.',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: .5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Status: ', // First part of the text
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Processing', // Second part of the text
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            'Track Order',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: .7, color: Colors.black.withOpacity(0.5)),
                      ),
                      child: Image.asset(
                        'assets/images/balkes.png',
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'Balkes 10',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '13 jun 2021 at 01:43 pm',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  )),
            ),
            Container(
              height: .5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '3 items for ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$12.75', // Second part of the text
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: .7, color: Colors.black.withOpacity(0.5)),
                      ),
                      child: Image.asset(
                        'assets/images/tomato.jpg',
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'Fresh Tomatto',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'x 1',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  )),
            ),
            Container(
              height: .5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Status: ', // First part of the text
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Order Delivered', // Second part of the text
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.orange),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Reorder',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const Icon(
                          Icons.refresh_rounded,
                          color: Colors.orange,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 6,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),
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
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: .7, color: Colors.black.withOpacity(0.5)),
                      ),
                      child: Image.asset(
                        'assets/images/ecomarket.jpg',
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'Eco Market',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '12 jun 2021 at 06:21 pm',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  )),
            ),
            Container(
              height: .5,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '3 items for ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$12.75', // Second part of the text
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: .7, color: Colors.black.withOpacity(0.5)),
                      ),
                      child: Image.asset(
                        'assets/images/tomato.jpg',
                        height: 50,
                      ),
                    ),
                    title: const Text(
                      'Fresh Tomatto',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'x 1',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
