pkg install git -y
git clone "https://github.com/Zeev-x/newBot/"
cd newBot
clear
read -p "Masukan token bot : " token
read -p "Id chat kamu (jika tidak tahu masukan saja angka acak) : " id
echo '
{
  "token" : "'$token'",
  "id" : '$id'
}
' > data/conf_data_bot.json
echo "proses seting bot sudah selesai!!"
sleep 3
clear
echo "Memulai installasi bot dengan token ($token) dan id ($id)..."
sleep 3
npm install 
npm install forever -g
clear
echo "Installasi Selasai..."
echo "Memulai Bot..."
npm start
