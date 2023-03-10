import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMedicinePage extends StatelessWidget {
  const AddMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: GestureDetector(
        onTap: () {
          /// 포커스가 다른곳에 되어있는 경우 작동
          FocusScope.of(context).unfocus();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '어떤 약이에요?',
              style: Theme.of(context).textTheme.headline4,
            ),
            Center(
              child: CircleAvatar(
                radius: 40,
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Icon(
                    CupertinoIcons.photo_camera_solid,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              '약 이름',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextFormField(),
          ],
        ),
      ),

      /// SafeArea -> 영역 침범 방지
      bottomNavigationBar: SafeArea(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            textStyle: Theme.of(context).textTheme.subtitle1,
          ),
          child: const Text('다음'),
        ),
      ),
    );
  }
}
