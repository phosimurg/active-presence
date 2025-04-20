import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        if let window = NSApplication.shared.windows.first {
            window.setContentSize(NSSize(width: 400, height: 200))
            window.styleMask.remove(.resizable) // Pencerenin boyutlandırılmasını engelle
            window.title = "Teams Aktif Kalma"
        }
    }
}
