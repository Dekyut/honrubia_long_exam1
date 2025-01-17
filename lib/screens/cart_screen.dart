import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honrubia_long_exam1/widgets/custom_vertical_product_card.dart';
import 'package:honrubia_long_exam1/widgets/custom_horizontal_product_card.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(ScreenUtil().setSp(20),
          ScreenUtil().setSp(60), ScreenUtil().setSp(20), 0),
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          CustomText(
            text: 'Cart',
            fontSize: ScreenUtil().setSp(25),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // TODO: Create 15 Cart Items CustomHorizontalProductCard [set isCart to true and btnName into 'Check Out']
                  ListView(
                    padding: EdgeInsets.zero,
                    children: List.generate(15, (index) {
                      return Column(
                        children: [
                          CustomHorizontalProductCard(
                            prodName: 'Cart Product ${index + 1}',
                            prodSize: 'Size: Medium',
                            prodPrice: '\₱${(index + 1) * 100}.00',
                            numStars: (index % 5) + 1,
                            description:
                                'Description for Cart Product ${index + 1}',
                            isCart: true,
                            btnName: 'Check Out',
                          ),
                          SizedBox(height: ScreenUtil().setHeight(10)),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
