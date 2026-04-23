#!/data/data/com.termux/files/usr/bin/bash

echo -e "\033[92m[*] S7-WIFI-PRO အား ထည့်သွင်းနေပါသည်...\033[0m"

# ၁။ လိုအပ်တဲ့ Python နဲ့ Library တွေ သွင်းမယ်
pkg update && pkg upgrade -y
pkg install python -y
pip install requests

# ၂။ Folder အဟောင်းရှိရင် ဖျက်ပြီး အသစ်ဆောက်မယ်
rm -rf ~/s7wifi
mkdir -p ~/s7wifi
cd ~/s7wifi

# ၃။ ဖုန်းရဲ့ Bit (Architecture) ကို စစ်ဆေးမယ်
ARCH=$(getprop ro.product.cpu.abi)

if [ "$ARCH" = "arm64-v8a" ]; then
    echo -e "\033[94m[*] 64-bit ဖုန်းဖြစ်ကြောင်း စစ်ဆေးတွေ့ရှိရသဖြင့် 64-bit version ကို ဒေါင်းလုဒ်ဆွဲနေသည်...\033[0m"
    curl -LO https://raw.githubusercontent.com/sandar18705-del/S7-WIFI-PRO-/main/s7andar15_64bit.so -o s7andar15.so
else
    echo -e "\033[94m[*] 32-bit ဖုန်းဖြစ်ကြောင်း စစ်ဆေးတွေ့ရှိရသဖြင့် 32-bit version ကို ဒေါင်းလုဒ်ဆွဲနေသည်...\033[0m"
    curl -LO https://raw.githubusercontent.com/sandar18705-del/S7-WIFI-PRO-/main/s7andar15.so -o s7andar15.so
fi

# ၄။ Starter ဖိုင်ကို ဒေါင်းမယ်
curl -LO https://raw.githubusercontent.com/sandar18705-del/S7-WIFI-PRO-/main/s7andar15run.py

echo -e "\033[92m[✔] အောင်မြင်စွာ ထည့်သွင်းပြီးပါပြီ!\033[0m"
echo -e "\033[93mအသုံးပြုရန်: cd ~/s7wifi && python s7andar15run.py\033[0m"
