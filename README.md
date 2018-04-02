# Yellow Messebger iOS SDK
## Install using CocoaPods
Yellow Messenger SDK is currently distributed using CocoaPods. If you don't have CocoaPods, you can check out the website - https://cocoapods.org/


### Step 1
In your `Podfile` which will be located in the root directory of your project, add the following line in your build target and save

```
pod 'YM-IOS-SDK', :git => 'https://github.com/yellowmessenger/ym-ios-sdk.git', :tag => '1.0.0'
```


### Step 2
In your projects root directory, run the following command on your terminal

```bash
$ pod install
```
This might take a while to install as it fetches the dependencies from the internet and installs locally on your system


### Step 3
You can invoke the ChatController view from your code on any delegate or action. This has been left to the developer
who is integrating the SDK. To invoke the YM SDK, use the following code from your view

Import the SDK in the required Swift file using the following code snippet

```swift
import YM_IOS_SDK
```

Once the SDK has been imported to the required file, you can ivoke the ChatController using the following code

```swift
let chatViewer = ChatController()
chatViewer.botId = "BOT_ID"
chatViewer.botName = "BOT_NAME"
chatViewer.botPayload = "eyJkZXZpY2UiOiJpT1MifQ=="
window = UIWindow(frame: UIScreen.main.bounds)
window!.rootViewController = chatViewer
window!.makeKeyAndVisible()
````

The BOT_ID and BOT_NAME will be provided by Yellow Messenger for integration purpose.

### Step 4
You can go ahead and build the application. In some cases, the application building fails. In your Project Settings -> Linked Frameworks and Libraries, click on + button and select YM_IOS_SDK.framework from the list and build the application again.


### NOTE
The Navigation Controller has to be handled by the developer who is integrating the SDK. The ChatController View will be a subview of the NavigationController View.
