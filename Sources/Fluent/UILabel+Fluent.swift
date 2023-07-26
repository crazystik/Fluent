import UIKit

extension UILabel {
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        self.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        
        self.attributedText = attributedText
        
        return self
    }
}
