<!DOCTYPE html>
<html>
<head>
    <title>Your Verification Code</title>
</head>
<body style="font-family: sans-serif; line-height: 1.6; color: #333;">
    <div style="max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #eee; border-radius: 10px;">
        <h2 style="color: #007bff;">Your Verification Code</h2>
        <p>Hello,</p>
        <p>Thank you for registering. Please use the following One-Time Password (OTP) to verify your account:</p>
        <div style="font-size: 24px; font-weight: bold; letter-spacing: 5px; text-align: center; padding: 20px; background: #f8f9fa; border-radius: 5px; margin: 20px 0;">
            {{ $otp }}
        </div>
        <p>This code will expire in 10 minutes.</p>
        <p>If you did not request this, please ignore this email.</p>
        <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;">
        <p style="font-size: 12px; color: #777;">This is an automated message from Project Manager.</p>
    </div>
</body>
</html>
