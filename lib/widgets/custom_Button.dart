import '../core/utility/app_export.dart';

class CustomButton extends StatelessWidget {
  void Function()? onPressed;
  final String title;

  CustomButton({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kToolbarHeight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadiusDirectional.circular(15),
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.tertiary,
          ], transform: const GradientRotation(pi / 4))),
      child: SizedBox(
        width: double.infinity,
        height: kToolbarHeight,
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(backgroundColor: Colors.transparent),
            child: const Text("Save",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white))),
      ),
    );
  }
}
