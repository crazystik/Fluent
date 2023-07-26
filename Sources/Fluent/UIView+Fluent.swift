import UIKit

extension UIView {
    @discardableResult
    public func disableTranslationAutoresizingMaskIntoConstraints() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    @discardableResult
    public func frame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult
    public func contentMode(_ contentMode: ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor?) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        layer.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor?) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func hidden(_ hidden: Bool) -> Self {
        self.isHidden = hidden
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func userInteractionEnabled(_ userInteractionEnabled: Bool) -> Self {
        isUserInteractionEnabled = userInteractionEnabled
        return self
    }
    
    @discardableResult
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        addGestureRecognizer(gestureRecognizer)
        return self
    }
}
