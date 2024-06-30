import 'package:flutter/material.dart';
import 'package:res_adap/utils/styles.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Add more detail",
              style: AppStyle.styleSemiBold16(context).copyWith(
                color: const Color(0xff4EB7F2),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 62,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: const Color(0xff4EB7F2),
                  elevation: 0),
              child: Text(
                "Send Money",
                style: AppStyle.styleSemiBold16(context).copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
