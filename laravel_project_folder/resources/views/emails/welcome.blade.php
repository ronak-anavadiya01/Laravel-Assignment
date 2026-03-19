<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Task Manager</title>
</head>
<body style="font-family: sans-serif; line-height: 1.6; color: #333;">
    <div style="max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #eee; border-radius: 10px;">
        <h2 style="color: #28a745;">Registration Successful!</h2>
        <p>Hello {{ $name }},</p>
        <p>Welcome to <strong>Task Manager (ER12345_Ronak)</strong>. Your email has been successfully verified.</p>
        <p>You can now start managing your tasks, uploading attachments, and more.</p>
        <div style="text-align: center; margin: 30px 0;">
            <a href="{{ route('tasks.index') }}" style="background: #007bff; color: #fff; padding: 12px 25px; text-decoration: none; border-radius: 5px; font-weight: bold;">Go to Dashboard</a>
        </div>
        <p>All the best for your Laravel Practical!</p>
        <hr style="border: 0; border-top: 1px solid #eee; margin: 20px 0;">
        <p style="font-size: 12px; color: #777;">This is an automated message from Project Manager.</p>
    </div>
</body>
</html>
