import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:memes/presentation/controllers/home_controller.dart';
import 'package:memes/presentation/pages/widget/card_view.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(Get.find()),
      initState: (_) {
        controller.fetchData();
      },
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
              middle: Text('Memes App'),
            ),
            child: Obx(
              () {
                int cardsCount = controller.homeState.dataList.length;
                if (cardsCount < 1) {
                  return const Center(
                      child: Text(
                    'No cards to display',
                    style: TextStyle(color: Colors.black),
                  ));
                }
                return CardSwiper(
                  cardsCount: cardsCount,
                  numberOfCardsDisplayed: 2,
                  cardBuilder: (
                    context,
                    index,
                    percentThresholdX,
                    percentThresholdY,
                  ) {
                    return CardView(
                      meme: controller.homeState.dataList[index],
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
