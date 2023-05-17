import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:designapp/Modules/sectionsScreens/describtionScreen.dart';
import 'package:designapp/Shared/Components.dart';
import 'package:designapp/Shared/Style.dart';
import 'package:flutter/material.dart';

class NewCasesScreen extends StatelessWidget {
  const NewCasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rejectionController=TextEditingController();

    final snackBarFailed = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'حدث خظأ',
        message:
        'حدث خظا عندة أضافة',

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: ContentType.failure,
      ),
    );
    final snackBarDone = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'شكراًً',
        message:
        'تمت عملية قبول بنجاح',

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: ContentType.success,
      ),
    );

    var formKey=GlobalKey<FormState>();


    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: defaultAppBar(title: "طلبات الحالات الجديدة",context: context),
        body: ListView.separated(
            itemBuilder: (context,index)=> defaultCardItem(
                image: "Assets/images/SliderImages/muslims-reading-from-quran.jpg",
                itemTitle: " صيانة اكادمية تحفيط قران",
                leftnumber: "192,493",
                textButton1: "قبول الحالة",
                textButton2: "رفض الحالة",
                buttonColor: "#45C4B0",
                buttonColor2: "#ff5c33",
                percent: 0.3,
                percentvalue: "30",
                percentcolor: "#45C4B0",
                function: ()
                {
                  if(true)
                  {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBarDone);
                  }else
                  {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBarFailed);
                  }

                },
                function2: (){
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context)=>Directionality(
                        textDirection: TextDirection.rtl,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom
                              ),
                              width: double.infinity,
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 15,),
                                    Text(
                                      "نموذج الرفض",
                                      style: TextStyle(
                                          color: AppColors.CustomGrey,
                                          fontSize: 18
                                      ),
                                    ),
                                    DefaultTextField(
                                        label: "سبب الرفض",
                                        textcontroller: rejectionController,
                                        function: (value){
                                          if(value!.isEmpty){
                                            return "رجاء ادخال سبب الرفض";
                                          }

                                        }
                                    ),
                                    const SizedBox(height: 10,),
                                    DefaultButton(
                                        Function: (){
                                          if(formKey.currentState!.validate())
                                          {
                                            Navigator.pop(context);
                                            ScaffoldMessenger.of(context)
                                              ..hideCurrentSnackBar()
                                              ..showSnackBar(snackBarDone);
                                          }
                                          else
                                          {
                                            Navigator.pop(context);
                                            ScaffoldMessenger.of(context)
                                              ..hideCurrentSnackBar()
                                              ..showSnackBar(snackBarFailed);
                                          }

                                        },
                                        ButtonText: "انهاء العملية"
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      shape: const OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                          borderSide: BorderSide(color: Colors.transparent)
                      )
                  );
                },
                ontab: () {
                  NavgatetoPage(context: context, page: const DescribtionScreen());
                },
                onlongpress: () {

                }
            ),
            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
            itemCount: 10
        ),
      ),
    );
  }
}
