import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:secondproject/core/designs/app_button.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/designs/app_input.dart';

const profileImage = "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg";
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  XFile? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Center(
              child: Container(
                height: 160,
                width: 160,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipOval(
                      child: AppImages(
                        selectedImage != null
                            ? selectedImage!.path
                            : profileImage,
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              padding: EdgeInsets.all(50).copyWith(top: 50),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pick Image From...",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 29,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () =>
                                            chooseImage(ImageSource.camera),
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Column(
                                            children: [
                                              AppImages("camera.svg"),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Camera",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 72,
                                      ),
                                      GestureDetector(
                                        onTap: () =>
                                            chooseImage(ImageSource.gallery),
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Column(
                                            children: [
                                              AppImages("gallery.svg"),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Gallery",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: AppImages("edit.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 34),
            AppInput(label: "Name"),
            SizedBox(height: 16),
            AppInput(label: "Phone"),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppInput(label: "Age"),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: AppInput(label: "Gender"),
                ),
              ],
            ),
            SizedBox(height: 33),
            AppButton(
              onPressed: () {},
              text: "Save",
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              color: Colors.transparent,
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Change Password"),
                    AppImages(
                      "edit.svg",
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  void chooseImage(ImageSource source) async {
    XFile? result = await ImagePicker().pickImage(source: source);
    print("result: ");
    print(result?.path);
    Navigator.pop(context);
    if (result != null) {
      selectedImage = result;
      setState(() {});
    }
  }
}
