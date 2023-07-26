import UIKit

class ClosureWrapper: NSObject {
    let closure: () -> Void
    init(_ closure: @escaping () -> Void) {
        self.closure = closure
    }
}

extension UIControl {
    private enum AssociatedKeys {
        static var targetClosure = "targetClosure"
    }
    
    private var targetClosure: (() -> Void)? {
        get {
            guard let closureWrapper = objc_getAssociatedObject(self, &AssociatedKeys.targetClosure) as? ClosureWrapper else { return nil }
            return closureWrapper.closure
        }
        set {
            guard let newValue else { return }
            objc_setAssociatedObject(self, &AssociatedKeys.targetClosure, ClosureWrapper(newValue), objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    public func addTarget(closure: @escaping () -> Void) {
        targetClosure = closure
        addTarget(self, action: #selector(closureAction), for: .touchUpInside)
    }
    
    public func addTarget(for event: UIControl.Event, closure: @escaping () -> Void) {
        targetClosure = closure
        addTarget(self, action: #selector(closureAction), for: event)
    }
    
    @objc func closureAction() {
        guard let targetClosure = targetClosure else { return }
        targetClosure()
    }
}
