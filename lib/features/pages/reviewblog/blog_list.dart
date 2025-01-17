import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travelblog/features/pages/reviewblog/blog_card.dart';

class BlogList extends ConsumerWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        BlogCard(imageUrl: "https://gcs.tripi.vn/public-tripi/tripi-feed/img/474068pFP/100-hinh-nen-facebook-cute-de-thuong-dang-yeu-dep-nhat_013717067.jpg", textContent: "Bài đăng 001", time: "10:00 AM", like: 100, comment: 20, fullName: "Lương Đức", userName: "@Vduc69"),
        BlogCard(imageUrl: "https://ca.slack-edge.com/T02QFU9TCTD-U064XJS8UGH-3b52a500b766-512", textContent: "Tôi mới đi chịch chó với chịch gay, hiện đang luyện bú cu tại đảo gay", time: "11:00 PM", like: 100000, comment: 20000, fullName: "Sun Slave", userName: "Vuachoigay"),
        BlogCard(imageUrl: "https://gcs.tripi.vn/public-tripi/tripi-feed/img/474068Ehu/anh-bia-facebook-mau-hong-de-thuong_081148263.jpg", textContent: "Bài đăng 002", time: "01:PM", like: 1000, comment: 400, fullName: "Hiếu nguyễn", userName: "@hieuminh"),
        BlogCard(imageUrl: "", textContent: "", time: "", like: 100, comment: 1, fullName: "", userName: ""),
      ],
    );
  }
}
