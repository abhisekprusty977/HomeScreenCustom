# Custom Home Screen Quick Actions for SwiftUI App

This project demonstrates how to implement custom Home Screen Quick Actions in a SwiftUI iOS app. These actions appear when users long-press your app icon, providing shortcuts such as “Don’t remove our app! Give us a second chance!” and “Report a Bug.”

## Features

- Static Quick Actions defined via Info.plist
- Handle Quick Actions in AppDelegate
- Integrate shortcut handling seamlessly with SwiftUI lifecycle
- Present alerts and feedback forms dynamically via Quick Actions
- Enhance user retention and gather valuable bug reports

## Getting Started

### Prerequisites

- Xcode 14 or later
- iOS 14+ device for testing (Quick Actions do not appear on Simulator)

### Installation

Clone this repository:
https://github.com/abhisekprusty977/HomeScreenCustom


Open the project in Xcode and run on a physical device.

### Info.plist Setup

Add the following `UIApplicationShortcutItems` key to your Info.plist under Custom iOS Target Properties:

<key>UIApplicationShortcutItems</key>
<array>
<dict>
<key>UIApplicationShortcutItemType</key>
<string>com.yourapp.retry</string>
<key>UIApplicationShortcutItemTitle</key>
<string>Don’t remove our app!</string>
<key>UIApplicationShortcutItemSubtitle</key>
<string>Give us a second chance!</string>
<key>UIApplicationShortcutItemIconType</key>
<string>Love</string>
</dict>
<dict>
<key>UIApplicationShortcutItemType</key>
<string>com.yourapp.reportBug</string>
<key>UIApplicationShortcutItemTitle</key>
<string>Report a Bug</string>
<key>UIApplicationShortcutItemSubtitle</key>
<string>Let us know what’s wrong</string>
<key>UIApplicationShortcutItemIconType</key>
<string>Mail</string>
</dict>
</array>


### Usage

- Long-press the app icon on your iOS device.  
- Select either **“Don’t remove our app!”** or **“Report a Bug”** from the menu.  
- The app will launch and show the corresponding alert or bug report form.

### Project Structure

- `AppDelegate.swift` — Handles Quick Action dispatching.  
- `contentView.swift` — Main SwiftUI App struct listening for shortcut notifications.  
- `BugReportView.swift` — Simple SwiftUI view for submitting bug reports.  

### Contributing

Feel free to fork this repo and open pull requests. Suggestions and improvements are welcome!

### License

**Acknowledgments:**  
Inspired by innovative UX patterns like those in the Rapido app, thanks to their development team.

---

Contact: [abhisekprusty977@gmail.com]  
GitHub: [https://github.com/abhisekprusty977]


