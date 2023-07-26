import UIKit

extension UIScrollView {
    @discardableResult
    public func scrollDelegate(_ scrollDelegate: UIScrollViewDelegate?) -> Self {
        delegate = scrollDelegate
        return self
    }
    
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        self.contentInset = contentInset
        return self
    }
    
    @discardableResult
    public func verticalScrollIndicatorInsets(_ verticalScrollIndicatorInsets: UIEdgeInsets) -> Self {
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets
        return self
    }
    
    @discardableResult
    public func horizontalScrollIndicatorInsets(_ horizontalScrollIndicatorInsets: UIEdgeInsets) -> Self {
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: KeyboardDismissMode) -> Self {
        self.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    public func refreshControl(_ refreshControl: UIRefreshControl?) -> Self {
        self.refreshControl = refreshControl
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func showsScrollIndicators(_ showsScrollIndicators: Bool) -> Self {
        showsVerticalScrollIndicator(showsScrollIndicators)
            .showsHorizontalScrollIndicator(showsScrollIndicators)
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> Self {
        self.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        self.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        self.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: ContentInsetAdjustmentBehavior) -> Self {
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    @discardableResult
    public func scrollEnabled(_ scrollEnabled: Bool) -> Self {
        self.isScrollEnabled = scrollEnabled
        return self
    }
}
