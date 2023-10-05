import 'package:flutter/material.dart';

Widget buildImagePostCard(Color whiteShade) {
  return Container(
    height: 350,
    color: whiteShade.withOpacity(0.1),
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildProfileImageTile(whiteShade),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.only(left: 10, right: 30),
        ),
        const SizedBox(height: 10),
        Expanded(child: Container(color: whiteShade)),
        const SizedBox(height: 5),
        buildLikesCommentsTile(whiteShade),
        const SizedBox(height: 5),
      ],
    ),
  );
}

Widget buildTextPostCard(Color whiteShade) {
  return Container(
    color: whiteShade.withOpacity(0.1),
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildProfileImageTile(whiteShade),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.only(left: 10, right: 20),
        ),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.only(left: 10, right: 10),
        ),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.only(left: 10, right: 50),
        ),
        const SizedBox(height: 5),
        Container(
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: whiteShade),
          margin: const EdgeInsets.only(left: 10, right: 100),
        ),
        const SizedBox(height: 5),
        buildLikesCommentsTile(whiteShade),
        const SizedBox(height: 5),
      ],
    ),
  );
}

Widget buildProfileImageTile(Color whiteShade) {
  return Container(
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(shape: BoxShape.circle, color: whiteShade),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteShade),
                  margin: const EdgeInsets.all(2),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteShade),
                  margin: const EdgeInsets.all(2),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: whiteShade),
                  margin: const EdgeInsets.all(2),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildLikesCommentsTile(Color whiteShade) {
  return Container(
    height: 30,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(shape: BoxShape.circle, color: whiteShade),
        ),
        Container(
          height: 15,
          width: 15,
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(shape: BoxShape.circle, color: whiteShade),
        ),
        Container(
          height: 15,
          width: 15,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(shape: BoxShape.circle, color: whiteShade),
        ),
        Container(
          height: 15,
          width: 55,
          decoration: BoxDecoration(
            color: whiteShade,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const Spacer(),
        Container(
          height: 15,
          width: 100,
          decoration: BoxDecoration(
            color: whiteShade,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    ),
  );
}
