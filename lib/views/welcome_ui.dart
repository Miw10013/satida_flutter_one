import 'package:flutter/material.dart';
import 'login_ui.dart';
import 'signup_ui.dart';

class WelcomeUI extends StatelessWidget {
  const WelcomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ พื้นหลังสีฟ้าอ่อน
      backgroundColor: Colors.blue.shade50,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ✅ โลโก้ (ถ้ามี)
              Image.asset(
                'assets/images/logo.png',
                width: 120,
                height: 120,
              ),

              const SizedBox(height: 24),

              // ✅ ข้อความต้อนรับ
              const Text(
                'ยินดีต้อนรับสู่ SATIDA',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),

              const SizedBox(height: 40),

              // ✅ ปุ่ม "เข้าสู่ระบบ"
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginUI()),
                    );
                  },
                  child: const Text('เข้าสู่ระบบ'),
                ),
              ),

              const SizedBox(height: 16),

              // ✅ ปุ่ม "สมัครสมาชิก"
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupUI()),
                    );
                  },
                  child: const Text('สมัครสมาชิก'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
