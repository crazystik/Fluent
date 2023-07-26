import UIKit

extension UITextField {
    @discardableResult
    public func delegate(_ delegate: UITextFieldDelegate?) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func placeholder(_ placeholder: String?) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    public func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        self.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    
    @discardableResult
    public func borderStyle(_ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    
    @discardableResult
    public func returnKeyType(_ returnKeyType: UIReturnKeyType) -> Self {
        self.returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    public func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = clearButtonMode
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    public func textStyle(_ textStyle: TextStyleProtocol) -> Self {
        self.font = textStyle.scaledFont
        return self
    }
    
    @discardableResult
    public func leftView(_ leftView: UIView?) -> Self {
        self.leftView = leftView
        return self
    }
    
    @discardableResult
    public func leftViewMode(_ leftViewMode: ViewMode) -> Self {
        self.leftViewMode = leftViewMode
        return self
    }
    
    @discardableResult
    public func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.defaultTextAttributes = defaultTextAttributes
        return self
    }
    
    @discardableResult
    public func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
        self.typingAttributes = typingAttributes
        return self
    }
    
    @discardableResult
    public func textAttributes(_ textAttributes: [NSAttributedString.Key : Any]) -> Self {
        defaultTextAttributes(textAttributes)
            .typingAttributes(textAttributes)
    }
}
