git add -f ./lib/*
git add -f ./pubspec.yaml
git add -f ./android/app/src/main/AndroidManifest.xml
git add -f ./assets/*
git add -f git.sh
git add -f debug.keystore
git add -f build/app/outputs/*
echo Commit message: 
read message
git commit -m "$message"
git push
