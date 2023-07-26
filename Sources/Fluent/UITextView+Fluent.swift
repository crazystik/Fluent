import UIKit

extension UITextView {
    @discardableResult
    public func delegate(_ delegate: UITextViewDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        self.textContainerInset = textContainerInset
        return self
    }
    
    @discardableResult
    public func editable(_ editable: Bool) -> Self {
        self.isEditable = editable
        return self
    }
    
    @discardableResult
    public func selectable(_ selectable: Bool) -> Self {
        self.isSelectable = selectable
        return self
    }
}
