import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:state_mangment/core/constant/app_assets.dart';
import 'package:state_mangment/core/constant/app_color.dart';
import 'package:state_mangment/home/view/widgets/news_item.dart';
import 'package:state_mangment/home/view_model/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 95,
          height: 33,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(
            AppAssets.logo,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search))
        ],
      ),
      body: BlocProvider(
        create: (context) => HomeCubit()..getArticls(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            HomeCubit myCubit = HomeCubit().get(context);

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Inbound Now!",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryRed,
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    ConditionalBuilder(
                      condition: state is HomeEverythingSuccess,
                      builder: (BuildContext context) =>ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: myCubit.articlesModel!.articles!.length,
                        itemBuilder: (context, index) {
                          return NewsItem(currentIndex: index,);
                        },),
                      fallback: (BuildContext context) => Center(child: CupertinoActivityIndicator()),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
