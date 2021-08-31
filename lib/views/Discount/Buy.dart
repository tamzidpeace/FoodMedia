import 'package:flutter/material.dart';
import 'package:food_media/Utils/Constants.dart';
import 'package:food_media/views/Discount/OrderSuccessProcceed.dart';
import 'package:food_media/views/profile/EditProfileTextField.dart';
import 'package:food_media/views/profile/EditProfileTextField2.dart';
import 'package:food_media/widgets/CustomButton.dart';
import 'package:food_media/widgets/app_icons.dart';

class Buy extends StatelessWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buy",
          style: TextStyle(color: black1),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 20),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                App.icon__1_,
                size: 16,
                color: black1,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                App.icon,
                size: 20,
                color: black1,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* Header Text
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 13.5),
              child: Text(
                "Second Payment:",
                textAlign: TextAlign.left,
                style: TextStyle(color: black1, fontSize: 20.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, top: 12.0, bottom: 34, right: 24),
              child: Text(
                "You was approved. Please complete the second Payemnt to issue the visa.",
                textAlign: TextAlign.left,
                style: TextStyle(color: black2),
              ),
            ),

            //* begin:: form
            EditProfileTextField(
              hintText: "Enter Name on Card",
              isObscure: false,
              label: "Name on Card",
              inputType: "text",
              isSuffixIcon: false,
            ),

            //* card number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 5),
                    child: Text(
                      "Card Number",
                      style: TextStyle(color: black2),
                    ),
                  ),
                  TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14),
                    textInputAction: TextInputAction.next,
                    maxLength: 16,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Enter Card Number",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        counter: SizedBox.shrink(),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: Image.asset(
                            "assets/images/master_card_icon.png",
                            width: 32,
                            height: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),

            //* expire date and cvv

            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 10),
              child: Row(
                children: [
                  Flexible(
                    child: EditProfileTextField2(
                      hintText: "09 / 18",
                      isObscure: false,
                      label: "Expire Date",
                      inputType: "text",
                      isSuffixIcon: false,
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Flexible(
                    child: EditProfileTextField2(
                      hintText: "****",
                      isObscure: false,
                      label: "CVV",
                      inputType: "text",
                      isSuffixIcon: false,
                    ),
                  ),
                  // TextFormField(),
                ],
              ),
            ),

            //* end::form

            //* divider
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40),
              child: Container(
                height: 2,
                width: double.infinity,
                color: Color(0xffE0E2F3),
              ),
            ),

            //* payment
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment"),
                  Text(
                    "130 \$",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            //* end:: form

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: CustomButton(
                  label: 'Submit',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderSuccessProcceed(),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
