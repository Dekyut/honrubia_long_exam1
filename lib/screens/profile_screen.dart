import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:honrubia_long_exam1/constants.dart';
import 'package:honrubia_long_exam1/widgets/custom_text.dart';
import 'package:honrubia_long_exam1/widgets/custom_vertical_product_card.dart';
import 'package:honrubia_long_exam1/widgets/custom_horizontal_product_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(60)),
              _buildHeader(),
              SizedBox(height: ScreenUtil().setHeight(15)),
              _buildRecommendedSection(),
              SizedBox(height: ScreenUtil().setHeight(10)),
              _buildMyItemsTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 38,
            backgroundImage: NetworkImage(
              "https://cdn.photographylife.com/wp-content/uploads/2014/06/Nikon-D810-Image-Sample-6.jpg",
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Derek Honrubia",
                fontSize: ScreenUtil().setSp(25),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(height: ScreenUtil().setHeight(3)),
              Row(
                children: [
                  CustomText(
                    text: "Coins",
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey,
                  ),
                  CustomText(
                    text: " 100000",
                    fontSize: ScreenUtil().setSp(12),
                    color: NU_YELLOW,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Recommended for you",
            fontSize: ScreenUtil().setSp(20),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          SizedBox(
            height: ScreenUtil().setHeight(300),
            child: GridView.count(
              padding: EdgeInsets.zero,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              children: const [
                // TODO: Add 5 CustomVerticalProductCard widgets
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMyItemsTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
          child: CustomText(
            text: "My Items",
            fontSize: ScreenUtil().setSp(20),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(10)),
        TabBar(
          indicatorColor: NU_BLUE,
          tabs: [
            Tab(
              child: CustomText(
                text: 'To Pay',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
              ),
            ),
            Tab(
              child: CustomText(
                text: 'To Ship',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
              ),
            ),
            Tab(
              child: CustomText(
                text: 'To Receive',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
          height: ScreenUtil().setHeight(1000),
          child: TabBarView(
            children: [
              _toPay(),
              _toShip(),
              _toReceive(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _toPay() {
    return Column(
      children: const [
        // TODO: Add 2 CustomHorizontalProductCard widgets with `isCheckout` set to true
      ],
    );
  }

  Widget _toShip() {
    return Column(
      children: const [
        // TODO: Add 3 CustomHorizontalProductCard widgets with `isCheckout` set to true
      ],
    );
  }

  Widget _toReceive() {
    return Column(
      children: const [
        // TODO: Add 4 CustomHorizontalProductCard widgets with `isCheckout` set to true
      ],
    );
  }
}
