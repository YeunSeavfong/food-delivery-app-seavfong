import 'package:flutter/material.dart';
import 'package:food_delivery_app_practice/widgets/text_widget.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelText;
  final bool isObscure;
  final String label;
  final double height;
  final String type;

  const TextFieldWidget({
    super.key, 
    required this.labelText, 
    this.isObscure = false, 
    required this.label,
    this.height = 40, 
    this.type = '', 
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isVisible = false;
  IconData icon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 20,),
            TextWidget(size: 16, text: widget.label, color: Colors.grey,),
            TextWidget(size: 18, text: '*',color: Theme.of(context).primaryColor,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, ),

          child: Container(
            alignment:Alignment.centerLeft,
            height:widget.height,
            padding: const EdgeInsets.only(left: 10,),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1,color: Colors.black.withAlpha(20)),
              borderRadius: BorderRadius.circular(36),
            ),
            child: TextFormField(
              obscureText: widget.type.toLowerCase() == 'password'? !isVisible :widget.isObscure,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                isDense: true,
                prefix: const SizedBox(width: 8),
                suffixIcon: 
                  widget.type.toLowerCase() == 'password'? IconButton(
                        icon: isVisible? const Icon(Icons.visibility_outlined,size: 20,)
                                      : const Icon(Icons.visibility_off_outlined,size: 20,), 
                        onPressed: () { 
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        splashRadius: 10,
                    )
                  : null,
                hintText: widget.labelText,
                hintStyle: const TextStyle(
                  color:Colors.grey, fontSize: 16, 
                  fontWeight: FontWeight.w600
                ),
                border: InputBorder.none
              ), // get task
            ),
          ),
        ),
      ],
    );
  }
}