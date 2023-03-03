import 'package:flutter/material.dart';

String baconText =
    'Bacon ipsum dolor amet meatball ham hock chislic sirloin, tongue pork belly pancetta frankfurter ball tip t-bone chuck burgdoggen. Chuck chislic salami shank, ham hock tongue frankfurter fatback ball tip prosciutto pastrami. Picanha ribeye kevin prosciutto kielbasa andouille chuck. Meatball rump pork loin kielbasa andouille short ribs boudin short loin doner tongue capicola frankfurter porchetta beef ribs. Prosciutto pork belly kielbasa beef ribs biltong short ribs pork loin pancetta. Cupim buffalo ham porchetta, landjaeger ball tip leberkas salami doner tri-tip meatloaf ground round. Prosciutto burgdoggen capicola, bresaola jerky fatback t-bone pork loin. Pancetta beef andouille, shankle cupim kevin ribeye meatball strip steak pork chop tri-tip filet mignon turkey chislic. Ham hock pastrami chislic cow corned beef pork belly. Cow porchetta venison jowl, short ribs meatloaf ball tip drumstick ground round. Prosciutto beef ribs shoulder, andouille ham kevin t-bone chuck chislic brisket tenderloin rump. Cupim turkey beef ribs ham hock capicola hamburger, shankle frankfurter tri-tip t-bone meatball. Cow beef ribs filet mignon, short loin chislic porchetta turkey bresaola sirloin turducken ground round jerky swine corned beef kielbasa. T-bone hamburger tongue shank pig jowl landjaeger turkey rump beef ribs. Burgdoggen rump short ribs corned beef hamburger biltong. Corned beef kielbasa swine pig shoulder burgdoggen, buffalo flank tail cupim boudin pork filet mignon ball tip.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,   //! Receives information
    required this.imagePath,
  });

  final String title;     //! Sets information as a title
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(imagePath),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                baconText,
                style: const TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
