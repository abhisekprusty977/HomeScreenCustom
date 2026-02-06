import SwiftUI
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     performActionFor shortcutItem: UIApplicationShortcutItem,
                     completionHandler: @escaping (Bool) -> Void) {
        if shortcutItem.type == "com.yourapp.retry" {
            NotificationCenter.default.post(name: .retryShortcut, object: nil)
            completionHandler(true)
        } else {
            completionHandler(false)
        }
    }
}

@main
struct CustomHomeScreenApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State private var showRetryAlert = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .alert(isPresented: $showRetryAlert) {
                    Alert(
                        title: Text("Please Give Us a Second Chance"),
                        message: Text("We’d love to hear your feedback before you uninstall."),
                        primaryButton: .default(Text("Send Feedback")) {
                            // Present feedback form or email composer
                        },
                        secondaryButton: .cancel(Text("Maybe Later"))
                    )
                }
                .onReceive(NotificationCenter.default.publisher(for: .retryShortcut)) { _ in
                    showRetryAlert = true
                }
        }
    }
}

extension Notification.Name {
    static let retryShortcut    = Notification.Name("retryShortcut")
    
}
