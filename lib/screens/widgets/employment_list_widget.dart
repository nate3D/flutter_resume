import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/employment_widget.dart';

class EmploymentListWidget extends StatelessWidget {
  const EmploymentListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: employmentHistoryList.length,
      itemBuilder: (BuildContext context, int index) {
        return EmploymentWidget(
          employmentData: employmentHistoryList[index],
        );
      },
    );
  }
}
