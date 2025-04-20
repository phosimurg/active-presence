import Foundation

class TimerManager: ObservableObject {
    @Published var isRunning = false
    private var timer: Timer?
    
    func startTimer(interval: Double, mode: String) {
        stopTimer() // Önce var olan timer'ı durdur
        isRunning = true
        
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            if mode == "Klavye" {
                Actions.pressSpace()
            } else if mode == "Fare" {
                Actions.moveMouse()
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        isRunning = false
    }
}
