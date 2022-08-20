import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_colors.dart';
import 'package:quotes/core/utils/app_strings.dart';

class Constant
{
  static void showErrorDialog(
      {
        required BuildContext context,
        required String message,
      })
  {
    showDialog(context: context,
        builder: (context)=>CupertinoAlertDialog(
          title: Text(message,style: const TextStyle(
            color: Colors.red,
            fontSize: 14,

          ),),
          actions: [
            TextButton(onPressed: ()
            {
              Navigator.pop(context);

            },
                child: const Text(AppString.errorDialog),

            ),
          ],
        )
    );
  }

//   static void showToast (
//   {
//     required String message,
//     Color? color,
// })
//   {
//     Fluttertoast.showToast(msg: message,
//     toastLength: Toast.LENGTH_LONG,
//       fontSize: 14,
//       backgroundColor: color ?? AppColors.primary,
//       gravity: ToastGravity.BOTTOM,
//
//
//     );
//   }

}