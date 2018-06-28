#  Acronis ios test for habr.com

This application crashes.
Please create a pull request which resolves this issue.

It crashes using both Swift 4 and Swift 4.2

But if you want to use XCode Version 10.0 beta 2 (10L177m) and Swift 4.2 do not forget to migrate the Swift 4.2 syntax.

Namely,
```swift
UIApplicationLaunchOptionsKey > UIApplication.LaunchOptionsKey
```
```swift
UITableViewAutomaticDimension > UITableView.automaticDimension
```

Otherwise, use XCode Version 9.4 (9F1027a) and Swift 4.
