
import UIKit
import Google

extension UIViewController {
    func trackScreenView(screenName: String) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: screenName)

        let builder = GAIDictionaryBuilder.createScreenView()
        let dict = NSDictionary.init(dictionary: (builder?.build())!)
        tracker?.send(dict as! [AnyHashable : Any])
    }
}
