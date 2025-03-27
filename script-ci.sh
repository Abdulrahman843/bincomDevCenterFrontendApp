#!/bin/bash

#variables:
ANDROID_COMPILE_SDK= "33"
ANDROID_BUILD_TOOLS= "30.0.3"

#setting up node 
apt-get update -y 
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh
apt-get update -y 
apt-get install nodejs -y
npm install -g react-native-cli
npm install -force



# setting up java environment
apt-get install rsync -y
wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
unzip -d android-sdk-linux android-sdk.zip
mkdir -p android-sdk-linux/cmdline-tools/latest
rsync -avh --remove-source-files android-sdk-linux/cmdline-tools/ android-sdk-linux/cmdline-tools/latest/
echo y | android-sdk-linux/cmdline-tools/latest/bin/sdkmanager "platforms;android-${ANDROID_COMPILE_SDK}"
echo y | android-sdk-linux/cmdline-tools/latest/bin/sdkmanager "platform-tools"
echo y | android-sdk-linux/cmdline-tools/latest/bin/sdkmanager "build-tools;${ANDROID_BUILD_TOOLS}"

# Setting all the required environment variables using the tee command with a heredoc approach
tee -a /etc/profile << EOF

export ANDROID_SDK_ROOT=$PWD/android-sdk-linux
export ANDROID_HOME=$PWD/android-sdk-linux
export PATH=$PATH:$PWD/android-sdk-linux/platform-tools/
export PATH=$PATH:$PWD/android-sdk-linux/emulator/
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools/

EOF

source /etc/profile

# giving permission to the android sdm manager to run by accepting the licenses
yes | android-sdk-linux/cmdline-tools/latest/bin/sdkmanager --licenses

# Give the gradlew the right permissions and then build the android application
chmod +x android/gradlew
npm run build:android

