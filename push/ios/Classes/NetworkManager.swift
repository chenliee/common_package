import Foundation
import Reachability

class NetworkManager {
    static let shared = NetworkManager()
    let reachability = try! Reachability()

    func startMonitoring() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.reachabilityChanged), name: Notification.Name.reachabilityChanged, object: reachability)
        do {
            try reachability.startNotifier()
        } catch {
            print("Could not start reachability notifier")
        }
    }

    @objc func reachabilityChanged(note: Notification) {
        let reachability = note.object as! Reachability
        if reachability.connection != .none {
            print("Connected to the internet")
        } else {
            print("Not connected to the internet")
        }
    }
}