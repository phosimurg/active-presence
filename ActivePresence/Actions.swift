import Cocoa

class Actions {
    static func pressSpace() {
        let keyDown = CGEvent(keyboardEventSource: nil, virtualKey: 0x31, keyDown: true) // 0x31 = Space key
        let keyUp = CGEvent(keyboardEventSource: nil, virtualKey: 0x31, keyDown: false)
        
        keyDown?.post(tap: .cghidEventTap)
        keyUp?.post(tap: .cghidEventTap)
    }
    
    static func moveMouse() {
        let mouseMove = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: CGPoint(x: 500, y: 500), mouseButton: .left)
        mouseMove?.post(tap: .cghidEventTap)
    }
}
