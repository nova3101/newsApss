import 'package:flutter/material.dart';
import 'package:newsapp/models/news.dart';
import 'package:newsapp/widgets/secondary_card.dart';

class RecentTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recentList.length,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var recent = recentList[index];

        return InkWell(
          onTap: () {
            //put later
          },
          child: Container(
            width: double.infinity,
            height: 135.0,
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: SecondaryCard(news: recent),
          ),
        );
      },
    );
  }
}