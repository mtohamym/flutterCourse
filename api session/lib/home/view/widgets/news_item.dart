import 'package:flutter/material.dart';
import 'package:state_mangment/core/constant/app_color.dart';
import 'package:state_mangment/home/view_model/home_cubit.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.currentIndex}) : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    HomeCubit myCubit = HomeCubit().get(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 0.96922, color: AppColor.grey5),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Stack(
              children: [
                Image.network(
                  myCubit.articlesModel!.articles![currentIndex].urlToImage ==
                              null ||
                          myCubit.articlesModel!.articles![currentIndex]
                              .urlToImage!
                              .contains(".webp")
                      ? "https://logovtor.com/wp-content/uploads/2020/04/abc-news-logo-vector.png"
                      : myCubit
                          .articlesModel!.articles![currentIndex].urlToImage!,
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                ),
                Positioned(
                  top: 22,
                  left: 14,
                  child: Text(
                      myCubit
                          .articlesModel!.articles![currentIndex].source!.name!,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
                Positioned(
                  bottom: 12,
                  left: 14,
                  child: Text("10 minutes ago",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(myCubit.articlesModel!.articles![currentIndex].title!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ))
        ],
      ),
    );
  }
}
