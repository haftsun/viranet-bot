#!/bin/bash

echo "🚀 نصب خودکار ربات ویرا نت در حال اجراست..."

# آپدیت سیستم
apt update -y && apt upgrade -y

# نصب پیش‌نیازها
apt install -y python3 python3-pip git

# کلون پروژه از گیت‌هاب
cd /root
rm -rf viranet-bot
git clone https://github.com/haftsun/viranet-bot.git viranet-bot

# نصب کتابخانه‌های مورد نیاز
cd viranet-bot
pip3 install -r requirements.txt

echo "✅ نصب کامل شد."
echo "برای اجرای ربات دستور زیر را وارد کنید:"
echo "----------------------------------------"
echo "cd /root/viranet-bot && python3 main.py"
echo "----------------------------------------"
