import 'package:flutter/material.dart';
import 'package:travelblog/features/auth/widget/auth_field.dart';
import 'package:travelblog/features/pages/writeblog/widget/Dropdown_Component.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogCreate extends StatefulWidget {
  const BlogCreate({super.key});
  @override
  State<BlogCreate> createState() => _BlogCreateState();
}

class _BlogCreateState extends State<BlogCreate> {
  final location = TextEditingController();
  final content = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    location.dispose();
    content.dispose();
  }

  List<String> travelTypes = [
    'Ẩm Thực',
    'Tham quan',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(115, 115, 115, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomDropdown(items: travelTypes, hintText: "Thể loại"),
                    ],
                  )),
                ),
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(115, 115, 115, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomDropdown(items: travelTypes, hintText: "Map"),
                    ],
                  )),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(115, 115, 115, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomDropdown(
                          items: travelTypes, hintText: "Tỉnh/Thành"),
                    ],
                  )),
                ),
                Container(
                  width: 170,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(115, 115, 115, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomDropdown(
                          items: travelTypes, hintText: "Quận/Huyện"),
                    ],
                  )),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: [
                  AuthField(controller: location, hintText: "Địa chỉ ..."),
                  AuthField(controller: content, hintText: "Nội dung bài viết ..."),
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
