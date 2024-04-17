import 'package:flutter/material.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/widgets/google_login_btn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool? remember = false;
    ////METHODS
    void backAction() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              //onTap: backAction,
              child: const Icon(
                Icons.arrow_back,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Please enter your details to login.'),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email address',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(width: 0.2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(width: 0.2),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(width: 0.2),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(width: 0.2),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      onChanged: (value) {},
                    ),
                    const Text('Remember me'),
                  ],
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                  '------------------------ OR --------------------------'), //Coming back to this :(
            ),
            const SizedBox(height: 20),
            const GoogleloginBtn(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(color: AppColors.primary, fontSize: 18),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
