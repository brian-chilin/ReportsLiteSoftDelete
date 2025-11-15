cd ./Sqrilizz-Reports-Lite
pwd
gradle shadowJar

cd /workspaces/ReportsLiteSoftDelete
rm ./server/plugins/* -R
cp ./Sqrilizz-Reports-Lite/build/libs/Sqrilizz-Reports-Lite-1.0.jar ./server/plugins

cd ./server
sh run.sh
