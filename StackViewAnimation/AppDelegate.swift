import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool { return true }
}

class ViewController1: UIViewController {

    @IBOutlet var stackHidingConstraint: NSLayoutConstraint!

    @IBAction func toggleVisibility(_ sender: Any) {
        stackHidingConstraint.isActive = !stackHidingConstraint.isActive
        UIView.animate(withDuration: 0.5, animations: { self.view.layoutIfNeeded() })
    }

}
