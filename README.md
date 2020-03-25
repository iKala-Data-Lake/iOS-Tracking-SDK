# iKalaTracker

## Getting Started

This section shows how to start using iKala BDL iOS SDK. Before reading this section, make sure you have read this [Getting Started Document](https://github.com/iKala-Data-Lake/iOS-Tracking-SDK/wiki/Getting-started) first to have the basic understanding about iKala BDL tracking SDK.

## Add iKala BDL Tracking SDK to Your App

This section shows you how to add iKala BDL tracking SDK to your app.

iKalaTracker is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'iKalaTracker'
```

For ```AppDelegate``` import this SDK:
```
import iKalaTracker
```

and method ```didFinishLaunchingWithOptions``` add this Code:
```
Tracker.shared.configure()
```
When you set [Tracker.shared.configure()](https://ikala-data-lake.github.io/iOS-Tracking-SDK/docs/Classes/Tracker.html#/s:12iKalaTracker0B0C9configureyyFZ) in ```AppDelegate```, it will trigger the page to automatically detect the submission mechanism. 


## Set ikaid
After adding iKala BDL tracking SDK, you should set [ikaid](https://github.com/iKala-Data-Lake/iOS-Tracking-SDK/wiki/Getting-started#set-ikaid) in your project. See this page for more information about ikaid and how to get your ikaid.

The following section shows how to set [ikaid](https://github.com/iKala-Data-Lake/iOS-Tracking-SDK/wiki/Getting-started#set-ikaid) in your project:

Set ikaid in the Info.plist with key [ikaid](https://github.com/iKala-Data-Lake/iOS-Tracking-SDK/wiki/Getting-started#set-ikaid)

```
<key>ikaid</key>
<string>Your ikala id</string>
```

## Auto Tracking Configuration
By default, iKala BDL tracking SDK tracks where Activity the end users are automatically. You can disable [isAutoLogActivityPageEnabled](https://ikala-data-lake.github.io/iOS-Tracking-SDK/docs/Classes/Tracker.html#/s:12iKalaTracker0B0C28isAutoLogActivityPageEnabledSbvpZ) if you want to do it by yourself:
```
Tracker.shared.isAutoLogActivityPageEnabled = false
```

## Start Using iKala BDL Tracking SDK
### Instance
Tracker entity can be obtained using Tracker.shared
```
try! Tracker.shared.addEvent(name: .searchWord, params:[:])
```
or
```
let tracker: Tracker = Tracker.shared
try! tracker.addEvent(name: .searchWord, params:[:])
```