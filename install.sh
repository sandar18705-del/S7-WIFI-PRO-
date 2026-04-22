#!/data/data/com.termux/files/usr/bin/bash

echo -e "\033[92m[*] S7-WIFI-PRO အား ထည့်သွင်းနေပါသည်...\033[0m"

# ၁။ လိုအပ်တဲ့ Python နဲ့ Library တွေ သွင်းမယ်
pkg update && pkg upgrade -y
pkg install python -y
pip install requests

# ၂။ Folder ဆောက်ပြီး ဖိုင်တွေ ဒေါင်းမယ်
mkdir -p ~/s7wifi
cd ~/s7wifi

# ၃။ GitHub (sandar18705-del) ကနေ ဖိုင်တွေကို ဆွဲယူမယ်
curl -LO https://raw.githubusercontent.com/sandar18705-del/S7-WIFI-PRO/main/s7andar15.so
curl -LO https://raw.githubusercontent.com/sandar18705-del/S7-WIFI-PRO/main/s7andar15run.py

echo -e "\033[92m[✔] အောင်မြင်စွာ ထည့်သွင်းပြီးပါပြီ!\033[0m"
echo -e "\033[93mအသုံးပြုရန်: cd ~/s7wifi && python s7andar15run.py\033[0m"
