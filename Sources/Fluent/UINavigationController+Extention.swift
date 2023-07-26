import UIKit

extension UINavigationController {
    public func popViewController(animated: Bool, completion: (() -> Void)?) {
        popViewController(animated: animated)
        guard animated, let coordinator = transitionCoordinator else { completion?(); return }
        coordinator.animate(alongsideTransition: nil) { _ in
            completion?()
        }
    }
}
