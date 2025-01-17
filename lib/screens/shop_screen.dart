import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honrubia_long_exam1/widgets/custom_vertical_product_card.dart';
import 'package:honrubia_long_exam1/widgets/custom_horizontal_product_card.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(ScreenUtil().setSp(20),
            ScreenUtil().setSp(60), ScreenUtil().setSp(20), 0),
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().setHeight(1000),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: ScreenUtil().setSp(30),
                backgroundColor: NU_YELLOW,
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setSp(12.5)),
                  child: Image.asset('assets/images/nubdexchange_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Hello, Derek',
                fontSize: ScreenUtil().setSp(20),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text:
                    'Lorem ipsum dolor amet, consectetur adipiscing elit. Egestas volutpat mattis accumsan ridiculus semper amet.',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Banked',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomVerticalProductCard(
                      prodName: 'Product 1',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱150.00',
                      numStars: 4,
                      description: 'Description for Product 1',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Product 2',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱90.00',
                      numStars: 5,
                      description: 'Description for Product 2',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Product 3',
                      prodSize: 'Size: Small',
                      prodPrice: '\₱80.00',
                      numStars: 3,
                      description: 'Description for Product 3',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Product 4',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱120.00',
                      numStars: 4,
                      description: 'Description for Product 4',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Product 5',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱20.00',
                      numStars: 5,
                      description: 'Description for Product 5',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'On Sale',
                fontSize: ScreenUtil().setSp(15),
                color: NU_YELLOW,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 1',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱150.00',
                      numStars: 4,
                      description: 'Limited offer for Sale Product 1',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 2',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱200.00',
                      numStars: 5,
                      description: 'Discounted price for Sale Product 2',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 3',
                      prodSize: 'Size: Small',
                      prodPrice: '\₱120.00',
                      numStars: 3,
                      description: 'Special deal for Sale Product 3',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 4',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱170.00',
                      numStars: 4,
                      description: 'Hot sale for Sale Product 4',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 5',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱250.00',
                      numStars: 5,
                      description: 'Exclusive price for Sale Product 5',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 6',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱180.00',
                      numStars: 4,
                      description: 'Limited-time offer for Sale Product 6',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 7',
                      prodSize: 'Size: Small',
                      prodPrice: '\₱100.00',
                      numStars: 3,
                      description: 'Amazing discount on Sale Product 7',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 8',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱300.00',
                      numStars: 5,
                      description: 'Steal price for Sale Product 8',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 9',
                      prodSize: 'Size: Medium',
                      prodPrice: '\₱140.00',
                      numStars: 4,
                      description: 'Best deal on Sale Product 9',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomHorizontalProductCard(
                      prodName: 'Sale Product 10',
                      prodSize: 'Size: Large',
                      prodPrice: '\₱350.00',
                      numStars: 5,
                      description: 'Exclusive Sale Product 10',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
