fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
### configure
```
fastlane configure
```

### init_platforms
```
fastlane init_platforms
```

### bump
```
fastlane bump
```

### info_plist_path
```
fastlane info_plist_path
```
Shortcut for getting the project Info.plist
### gradle_file
```
fastlane gradle_file
```
Shortcut for getting the gradle file
### ionic_build
```
fastlane ionic_build
```


----

## iOS
### ios add_device
```
fastlane ios add_device
```
Prompts for all information to register a device to an Apple Developer account
### ios prepare
```
fastlane ios prepare
```
Adds and prepares the iOS platform (also applies any project fixes)
### ios rematch
```
fastlane ios rematch
```

### ios build
```
fastlane ios build
```
Builds the iOS binary
### ios staging
```
fastlane ios staging
```
Builds and distributes the iOS staging binary from a clean state
### ios release
```
fastlane ios release
```
Builds and distributes the iOS release binary from a clean state

----

## Android
### android keystore
```
fastlane android keystore
```
Initialies the Android keystore in a hidden directory (see .env.secret)
### android copy_base64_keystore
```
fastlane android copy_base64_keystore
```

### android prepare
```
fastlane android prepare
```
Adds and prepares the Android platform (also applies any project fixes)
### android build
```
fastlane android build
```
Builds the Android binary
### android staging
```
fastlane android staging
```
Builds and distributes the Android staging binary from a clean state
### android release
```
fastlane android release
```
Builds and distributes the Android release binary from a clean state

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
