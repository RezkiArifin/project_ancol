import 'package:flutter/material.dart';

class SyaratKetentuanScreen extends StatelessWidget {
  const SyaratKetentuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 210, 236),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Syarat & Ketentuan'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Container(
            width: 327,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem Ipsum",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat varius ornare aliquam aliquet sem magna consectetur. Magna vitae ultrices sem nibh purus euismod neque. Cras eu tincidunt ipsum, blandit nisl, est. Sapien elementum tristique massa vitae. Ipsum a quis congue tristique mi proin. Adipiscing ac fringilla est lacus, senectus. Purus, ultricies pharetra, condimentum fames. Tortor turpis quis turpis ac eu proin pellentesque. Lorem cursus mauris, nunc aliquet dui integer pulvinar sed. Mauris, arcu consectetur tincidunt eget. Neque quis nulla gravida ut eros volutpat felis. Augue sed odio viverra lectus est. Aliquet.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Lorem Ipsum",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat varius ornare aliquam aliquet sem magna consectetur. Magna vitae ultrices sem nibh purus euismod neque. Cras eu tincidunt ipsum, blandit nisl, est. Sapien elementum tristique massa vitae. Ipsum a quis congue tristique mi proin. Adipiscing ac fringilla est lacus, senectus. Purus, ultricies pharetra, condimentum fames. Tortor turpis quis turpis ac eu proin pellentesque. Lorem cursus mauris, nunc aliquet dui integer pulvinar sed. Mauris, arcu consectetur tincidunt eget. Neque quis nulla gravida ut eros volutpat felis. Augue sed odio viverra lectus est. Aliquet.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Lorem Ipsum",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat varius ornare aliquam aliquet sem magna consectetur. Magna vitae ultrices sem nibh purus euismod neque. Cras eu tincidunt ipsum, blandit nisl, est. Sapien elementum tristique massa vitae. Ipsum a quis congue tristique mi proin. Adipiscing ac fringilla est lacus, senectus. Purus, ultricies pharetra, condimentum fames. Tortor turpis quis turpis ac eu proin pellentesque. Lorem cursus mauris, nunc aliquet dui integer pulvinar sed. Mauris, arcu consectetur tincidunt eget. Neque quis nulla gravida ut eros volutpat felis. Augue sed odio viverra lectus est. Aliquet.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
