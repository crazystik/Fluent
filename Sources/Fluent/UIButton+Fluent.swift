import UIKit

extension UIButton {
    @discardableResult
    public func title(_ title: String?, for state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleColor(_ titleColor: UIColor?, for state: UIControl.State = .normal) -> Self {
        
        self.setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, for state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func onTap(for controlEvent: UIControl.Event = .touchUpInside, _ action: @escaping (Self) -> Void) -> Self {
        self.addTarget(for: controlEvent) { [weak self] in
            guard let self else { return }
            action(self)
        }
        return self
    }
    
    @discardableResult
    public func onTap(for controlEvent: UIControl.Event = .touchUpInside, _ action: @escaping () -> Void) -> Self {
        self.addTarget(for: controlEvent, closure: action)
        return self
    }
    
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.titleLabel?.lineBreakMode = lineBreakMode
        return self
    }
}
